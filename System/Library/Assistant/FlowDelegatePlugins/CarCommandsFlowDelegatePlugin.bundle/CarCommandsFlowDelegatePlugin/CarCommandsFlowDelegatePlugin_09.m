unint64_t sub_E1D74()
{
  result = qword_1EB9D8;
  if (!qword_1EB9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9D8);
  }

  return result;
}

unint64_t sub_E1DCC()
{
  result = qword_1EB9E0;
  if (!qword_1EB9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9E0);
  }

  return result;
}

unint64_t sub_E1E24()
{
  result = qword_1EB9E8;
  if (!qword_1EB9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9E8);
  }

  return result;
}

unint64_t sub_E1E7C()
{
  result = qword_1EB9F0;
  if (!qword_1EB9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9F0);
  }

  return result;
}

unint64_t sub_E1ED4()
{
  result = qword_1EB9F8;
  if (!qword_1EB9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9F8);
  }

  return result;
}

unint64_t sub_E1F2C()
{
  result = qword_1EBA00;
  if (!qword_1EBA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA00);
  }

  return result;
}

unint64_t sub_E1F84()
{
  result = qword_1EBA08;
  if (!qword_1EBA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA08);
  }

  return result;
}

uint64_t sub_E2008(uint64_t a1)
{

  return sub_9E2C(v1, 1, a1);
}

__n128 *sub_E2028(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656C746954707061;
  result[2].n128_u64[1] = 0xE800000000000000;
  return result;
}

uint64_t sub_E2048()
{

  return sub_9E2C(v1, 1, v0);
}

double sub_E208C()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t sub_E2134(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2F868(v4, v5, a3, a4);
}

uint64_t *sub_E214C()
{
  *(v1 + 72) = v0;

  return sub_10888((v1 + 48));
}

uint64_t sub_E2188()
{

  return swift_allocObject();
}

uint64_t type metadata accessor for CarCommandsGetSignalActivationStatusCATsSimple()
{
  result = qword_1EBA10;
  if (!qword_1EBA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E2258(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 81) = a3;
  *(v5 + 80) = a2;
  *(v5 + 16) = a1;
  v6 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_E230C, 0, 0);
}

uint64_t sub_E230C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  *(v3 + 16) = xmmword_176380;
  *(v3 + 32) = 0x656D614E726163;
  *(v3 + 40) = 0xE700000000000000;
  sub_4EA90(v2, v1, &qword_1E6300, &qword_16ECE0);
  v4 = sub_16A0C4();
  v5 = sub_9E2C(v1, 1, v4);
  v6 = *(v0 + 48);
  if (v5 == 1)
  {
    sub_4EAF4(*(v0 + 48), &qword_1E6300, &qword_16ECE0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    sub_10888((v3 + 48));
    sub_4EB50(v4);
    (*(v7 + 32))();
  }

  v8 = *(v0 + 40);
  v9 = *(v0 + 24);
  v10 = *(v0 + 81);
  v11 = *(v0 + 80);
  *(v3 + 80) = 0x6E4F6C616E676973;
  *(v3 + 88) = 0xE800000000000000;
  *(v3 + 96) = v11;
  *(v3 + 120) = &type metadata for Bool;
  *(v3 + 128) = 0x6C62697369567369;
  *(v3 + 136) = 0xE900000000000065;
  *(v3 + 144) = v10;
  *(v3 + 168) = &type metadata for Bool;
  strcpy((v3 + 176), "appIdentifer");
  *(v3 + 189) = 0;
  *(v3 + 190) = -5120;
  sub_4EA90(v9, v8, &qword_1E6300, &qword_16ECE0);
  v12 = sub_9E2C(v8, 1, v4);
  v13 = *(v0 + 40);
  if (v12 == 1)
  {
    sub_4EAF4(*(v0 + 40), &qword_1E6300, &qword_16ECE0);
    *(v3 + 192) = 0u;
    *(v3 + 208) = 0u;
  }

  else
  {
    *(v3 + 216) = v4;
    sub_10888((v3 + 192));
    sub_4EB50(v4);
    (*(v14 + 32))();
  }

  v15 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v19 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v16 = swift_task_alloc();
  *(v0 + 64) = v16;
  *v16 = v0;
  v16[1] = sub_4E5D8;
  v17 = *(v0 + 32);

  return v19(0xD00000000000003ALL, 0x800000000018C110, v3);
}

uint64_t sub_E25D8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_E262C(a1, a2);
}

uint64_t sub_E262C(uint64_t a1, uint64_t a2)
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
  sub_4EA90(a1, &v18 - v15, &qword_1E5B48, &unk_16DDB0);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_4EAF4(a1, &qword_1E5B48, &unk_16DDB0);
  return v16;
}

uint64_t sub_E27A8(uint64_t a1, uint64_t a2)
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

unint64_t sub_E28B0@<X0>(void *a1@<X8>)
{
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = sub_E2B94(0xD00000000000001ALL, 0x800000000018C150);
  if (!v3)
  {
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v4 = sub_16A584();
    sub_9DA0(v4, qword_1E65C0);
    v5 = sub_16A9A4();
    sub_386D8(v5, 2uLL, 0xD00000000000009ALL, 0x800000000018C170, 0xD00000000000001DLL, 0x800000000018C210, 23, 0xD00000000000004BLL, 0x800000000018C230);
    v3 = [objc_opt_self() standardUserDefaults];
  }

  v6 = v3;
  result = sub_E2BF8();
  a1[3] = result;
  a1[4] = &off_1D8EA8;
  *a1 = v6;
  return result;
}

id sub_E2A74()
{
  v1 = sub_16A644();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

void sub_E2ADC(char a1)
{
  v3 = sub_16A644();
  [v1 setBool:a1 & 1 forKey:v3];
}

id sub_E2B94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_16A644();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

unint64_t sub_E2BF8()
{
  result = qword_1EBA60;
  if (!qword_1EBA60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA60);
  }

  return result;
}

uint64_t type metadata accessor for CarCommandsChangeStationByFrequencyCATsSimple()
{
  result = qword_1EBA68;
  if (!qword_1EBA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E2CE8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_E2D3C(a1, a2);
}

uint64_t sub_E2D3C(uint64_t a1, uint64_t a2)
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

uint64_t sub_E2E98(uint64_t a1, uint64_t a2)
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

uint64_t sub_E2FAC()
{
  sub_EAC54();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_93F70();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_E3024(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  sub_EAC54();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C();
  }

  return v8 & 1;
}

uint64_t sub_E30B0()
{
  sub_D434();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 0xD00000000000001FLL;
  }

  else
  {
    v4 = 0x656D614E726163;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = v1;
  }

  if (v0)
  {
    v6 = 0xD00000000000001FLL;
  }

  else
  {
    v6 = 0x656D614E726163;
  }

  if (v0)
  {
    v7 = v1;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_EAB2C();
  }

  return v9 & 1;
}

uint64_t sub_E3144(char a1, char a2)
{
  v2 = 0x656D614E726163;
  if (a1)
  {
    sub_EAC60();
    if (v4 == 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    if (v4 == 1)
    {
      v9 = v5;
    }

    else
    {
      v9 = (v3 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
    v8 = 0x656D614E726163;
  }

  if (a2)
  {
    sub_EAC60();
    sub_D434();
    if (v11 == 1)
    {
      v2 = v13;
    }

    else
    {
      v2 = v14;
    }

    if (v11 == 1)
    {
      v15 = v12;
    }

    else
    {
      v15 = v10;
    }
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  if (v8 == v2 && v9 == v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_EAB2C();
  }

  return v17 & 1;
}

uint64_t sub_E3200(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xEB00000000737574;
  }

  sub_EAC54();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C();
  }

  return v8 & 1;
}

uint64_t sub_E3298()
{
  sub_EAE0C();
  switch(v2)
  {
    case 1:
      v0 = 0xE800000000000000;
      break;
    case 2:
      v0 = 0xE700000000000000;
      break;
    case 3:
      v0 = 0xE900000000000079;
      break;
    default:
      break;
  }

  sub_EADF4();
  switch(v5)
  {
    case 1:
      v1 = 0xE800000000000000;
      v4 = 0x6E6769736C6C6163;
      break;
    case 2:
      v1 = 0xE700000000000000;
      v4 = 0x6C656E6E616863;
      break;
    case 3:
      v4 = 0x636E657571657266;
      v1 = 0xE900000000000079;
      break;
    case 4:
      v4 = 1701667182;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_EAB2C();
  }

  return v7 & 1;
}

uint64_t sub_E342C(unsigned __int8 a1, char a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 1952540019;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2 == 1)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0x800000000017F060;
    }
  }

  else
  {
    v4 = 0x800000000017F040;
    v3 = 0xD000000000000015;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 1952540019;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0x800000000017F060;
    }
  }

  else
  {
    v6 = 0x800000000017F040;
    v5 = 0xD000000000000015;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C();
  }

  return v8 & 1;
}

uint64_t sub_E3500(unsigned __int8 a1, char a2)
{
  v2 = 0x6D72616C41726163;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x6D72616C41726163;
  switch(v4)
  {
    case 1:
      v5 = 0x616D696C43726163;
      v3 = 0xEA00000000006574;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x6B636F4C726163;
      break;
    case 3:
      v5 = 0x6B6E757254726163;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x616D696C43726163;
      v6 = 0xEA00000000006574;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x6B636F4C726163;
      break;
    case 3:
      v2 = 0x6B6E757254726163;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C();
  }

  return v8 & 1;
}

uint64_t sub_E3660(unsigned __int8 a1, char a2)
{
  v2 = 0x656C746974;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x646E616D6D6F63;
    }

    else
    {
      v4 = 0x4449707061;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x656C746974;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x646E616D6D6F63;
    }

    else
    {
      v2 = 0x4449707061;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C();
  }

  return v8 & 1;
}

uint64_t sub_E3744(unsigned __int8 a1, char a2)
{
  v2 = 0x7265707075;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7265707075;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x656C6464696DLL;
      break;
    case 2:
      v5 = 0x7265776F6CLL;
      break;
    case 3:
      v5 = 0x646E417265707075;
      v3 = 0xED00007265776F4CLL;
      break;
    case 4:
      v5 = 0x6E41656C6464696DLL;
      v3 = 0xEE007265776F4C64;
      break;
    case 5:
      v5 = 0x726F707075736E75;
      v3 = 0xEB00000000646574;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x656C6464696DLL;
      break;
    case 2:
      v2 = 0x7265776F6CLL;
      break;
    case 3:
      v2 = 0x646E417265707075;
      v6 = 0xED00007265776F4CLL;
      break;
    case 4:
      v2 = 0x6E41656C6464696DLL;
      v6 = 0xEE007265776F4C64;
      break;
    case 5:
      v2 = 0x726F707075736E75;
      v6 = 0xEB00000000646574;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C();
  }

  return v8 & 1;
}

uint64_t sub_E3938()
{
  sub_EAE0C();
  switch(v2)
  {
    case 1:
      sub_851F8();
      v0 = 0xEA00000000006E6FLL;
      break;
    case 3:
      sub_EAE40();
      break;
    case 4:
      sub_EABBC();
      break;
    case 5:
      v0 = 0xE500000000000000;
      break;
    default:
      break;
  }

  sub_EADF4();
  switch(v5)
  {
    case 1:
      sub_EAC30();
      v1 = 0xEA00000000006E6FLL;
      break;
    case 2:
      v4 = 1769105779;
      break;
    case 3:
      v1 = 0xE500000000000000;
      sub_EAD18();
      break;
    case 4:
      sub_EABA8();
      break;
    case 5:
      v1 = 0xE500000000000000;
      v4 = 0x726568746FLL;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_EAB2C();
  }

  return v7 & 1;
}

uint64_t sub_E3AA8(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 28271;
  switch(a1)
  {
    case 1:
      v3 = 0xE300000000000000;
      v4 = sub_EAC04();
      break;
    case 2:
      v3 = 0xE600000000000000;
      v4 = sub_EACF8();
      break;
    case 3:
      v3 = 0xE800000000000000;
      v4 = sub_EAB04();
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 28271;
  switch(a2)
  {
    case 1:
      v5 = 0xE300000000000000;
      v6 = 6710895;
      break;
    case 2:
      v5 = 0xE600000000000000;
      sub_EACC8();
      break;
    case 3:
      v5 = 0xE800000000000000;
      sub_EAB18();
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C();
  }

  return v8 & 1;
}

uint64_t sub_E3BBC(unsigned __int8 a1, char a2)
{
  v2 = 7562617;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7562617;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C();
  }

  return v8 & 1;
}

uint64_t sub_E3CB8(unsigned __int8 a1, char a2)
{
  v2 = 0x7473756A6461;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x7473756A6461;
  switch(v4)
  {
    case 1:
      v5 = 0x74736575516B7361;
      v3 = 0xEB000000006E6F69;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x65736F6C63;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1953069157;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1801678700;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 1852141679;
      break;
    case 6:
      v3 = 0xE400000000000000;
      v5 = 1802658160;
      break;
    case 7:
      v3 = 0xE700000000000000;
      v5 = 0x66664F6E727574;
      break;
    case 8:
      v5 = 0x6E4F6E727574;
      break;
    case 9:
      v3 = 0xE400000000000000;
      v5 = 1702257011;
      break;
    case 10:
      v5 = 0x61636F4C646E6573;
      v3 = 0xEC0000006E6F6974;
      break;
    case 11:
      v5 = 0x6B636F6C6E75;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x74736575516B7361;
      v6 = 0xEB000000006E6F69;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x65736F6C63;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1953069157;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1801678700;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v2 = 1852141679;
      break;
    case 6:
      v6 = 0xE400000000000000;
      v2 = 1802658160;
      break;
    case 7:
      v6 = 0xE700000000000000;
      v2 = 0x66664F6E727574;
      break;
    case 8:
      v2 = 0x6E4F6E727574;
      break;
    case 9:
      v6 = 0xE400000000000000;
      v2 = 1702257011;
      break;
    case 10:
      v2 = 0x61636F4C646E6573;
      v6 = 0xEC0000006E6F6974;
      break;
    case 11:
      v2 = 0x6B636F6C6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C();
  }

  return v8 & 1;
}

uint64_t sub_E3FC4()
{
  sub_EAD18();
  v3 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v4 = 0x656E6F687069;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = v2;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0x656E6F687069;
    }

    else
    {
      v2 = 0x6E776F6E6B6E75;
    }

    if (v1 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C();
  }

  return v8 & 1;
}

uint64_t sub_E40B8(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_EAC54();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C();
  }

  return v8 & 1;
}

uint64_t sub_E4140(unsigned __int8 a1, char a2)
{
  v2 = 0x6563696F76;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6563696F76;
  switch(v4)
  {
    case 1:
      v5 = sub_EAC44(21);
      break;
    case 2:
      v5 = sub_EABBC();
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x656D756C6F76;
      break;
    case 4:
      v5 = sub_EAE8C();
      v3 = 0xE900000000000065;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = sub_93B08();
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      sub_EAC10();
      break;
    case 2:
      sub_EABA8();
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x656D756C6F76;
      break;
    case 4:
      sub_EAE6C();
      v6 = 0xE900000000000065;
      break;
    case 5:
      v6 = 0xE700000000000000;
      sub_EAAF0();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C();
  }

  return v8 & 1;
}

uint64_t sub_E42AC(unsigned __int8 a1, char a2)
{
  v2 = 0x737569736C6563;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x737569736C6563;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x6E69766C656BLL;
      break;
    case 2:
      v5 = 0x65686E6572686166;
      v3 = 0xEA00000000007469;
      break;
    case 3:
      v5 = sub_EAC44(21);
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x6E69766C656BLL;
      break;
    case 2:
      v2 = 0x65686E6572686166;
      v6 = 0xEA00000000007469;
      break;
    case 3:
      sub_EAC10();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C();
  }

  return v8 & 1;
}

uint64_t sub_E43FC(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xEB00000000656D75;
  }

  sub_EAC54();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C();
  }

  return v8 & 1;
}

uint64_t sub_E4494(unsigned __int8 a1, char a2)
{
  v2 = 0xEE00676E69747465;
  v3 = 0x535F6E6F6D6D6F63;
  v4 = a1;
  v5 = "common_Measurement";
  v6 = "common_RadioStation";
  v7 = 0x535F6E6F6D6D6F63;
  v8 = 0xEE00676E69747465;
  v9 = "common_UserEntity";
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v8 = 0x800000000017E350;
      v7 = 0xD000000000000013;
      break;
    case 3:
      v7 = 0x415F6E6F6D6D6F63;
      v8 = 0xEA00000000007070;
      break;
    case 4:
      v8 = 0x800000000017E370;
      v7 = 0xD000000000000012;
      break;
    case 5:
      v8 = 0xE700000000000000;
      v7 = sub_93B08();
      break;
    default:
      v7 = 0xD000000000000011;
      v8 = 0x800000000017E320;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v2 = (v6 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000013;
      break;
    case 3:
      v3 = 0x415F6E6F6D6D6F63;
      v2 = 0xEA00000000007070;
      break;
    case 4:
      v2 = (v5 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000012;
      break;
    case 5:
      v2 = 0xE700000000000000;
      sub_EAAF0();
      break;
    default:
      v3 = 0xD000000000000011;
      v2 = (v9 - 32) | 0x8000000000000000;
      break;
  }

  if (v7 == v3 && v8 == v2)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_EAB50();
  }

  return v11 & 1;
}

uint64_t sub_E4670(unsigned __int8 a1, char a2)
{
  v2 = 0x726564756F6CLL;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x726564756F6CLL;
  switch(v4)
  {
    case 1:
      v5 = 0x7942726564756F6CLL;
      v3 = 0xEF746E6563726550;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x74736564756F6CLL;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x72657465697571;
      break;
    case 4:
      v5 = sub_EAC44(16);
      break;
    case 5:
      v3 = 0xE800000000000000;
      v5 = 0x7473657465697571;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x7942726564756F6CLL;
      v6 = 0xEF746E6563726550;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x74736564756F6CLL;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x72657465697571;
      break;
    case 4:
      sub_EAC10();
      break;
    case 5:
      v6 = 0xE800000000000000;
      v2 = 0x7473657465697571;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C();
  }

  return v8 & 1;
}

uint64_t sub_E485C()
{
  sub_EAE0C();
  switch(v2)
  {
    case 2:
      sub_851F8();
      v0 = 0xEA00000000006E6FLL;
      break;
    case 3:
      sub_EAE40();
      break;
    case 4:
      sub_EABBC();
      break;
    default:
      break;
  }

  sub_EADF4();
  switch(v5)
  {
    case 1:
      v4 = 1769105779;
      break;
    case 2:
      sub_EAC30();
      v1 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v1 = 0xE500000000000000;
      sub_EAD18();
      break;
    case 4:
      sub_EABA8();
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_EAB2C();
  }

  return v7 & 1;
}

uint64_t sub_E49B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_EAB2C();
  }

  return v10 & 1;
}

uint64_t sub_E4A38(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6C61756E616DLL;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v4 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0x6974616D6F747561;
    v6 = 0xE900000000000063;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6C61756E616DLL;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (a2 == 1)
    {
      v2 = 0xE600000000000000;
    }

    else
    {
      v2 = 0xE700000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB50();
  }

  return v8 & 1;
}

uint64_t sub_E4B24(unsigned __int8 a1, char a2)
{
  v2 = 0x7265646C6F63;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x7265646C6F63;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v6 = 1684828003;
      goto LABEL_5;
    case 2:
      v5 = 0x72656D726177;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v6 = 1836212599;
LABEL_5:
      v5 = v6 | 0x74736500000000;
      break;
    default:
      break;
  }

  v7 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE700000000000000;
      v8 = 1684828003;
      goto LABEL_10;
    case 2:
      v2 = 0x72656D726177;
      break;
    case 3:
      v7 = 0xE700000000000000;
      v8 = 1836212599;
LABEL_10:
      v2 = v8 | 0x74736500000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_EAB2C();
  }

  return v10 & 1;
}

uint64_t sub_E4C60(char a1)
{
  if (a1)
  {
    v1 = 0xE400000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  sub_EAC54();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C();
  }

  return v8 & 1;
}

uint64_t sub_E4CE0()
{
  sub_EAE0C();
  switch(v2)
  {
    case 1:
      v0 = 0xE500000000000000;
      break;
    case 2:
      v0 = 0xEC000000726F6F6CLL;
      break;
    case 3:
      v0 = 0xEA0000000000646CLL;
      break;
    case 4:
      sub_EAC44(18);
      break;
    default:
      break;
  }

  sub_EADF4();
  switch(v5)
  {
    case 1:
      v1 = 0xE500000000000000;
      v4 = 0x726F6F6C66;
      break;
    case 2:
      v4 = 0x46646E4165636166;
      v1 = 0xEC000000726F6F6CLL;
      break;
    case 3:
      v4 = 0x65696873646E6977;
      v1 = 0xEA0000000000646CLL;
      break;
    case 4:
      sub_EAC10();
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_EAB2C();
  }

  return v7 & 1;
}

uint64_t sub_E4E6C()
{
  sub_EAE18();
  v3 = 7105633;
  switch(v4)
  {
    case 1:
      v0 = 0xE600000000000000;
      v3 = 0x726576697264;
      break;
    case 2:
      v3 = 0x65676E6573736170;
      v0 = 0xE900000000000072;
      break;
    case 3:
      v0 = 0xE500000000000000;
      v3 = sub_EAE00() & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
      break;
    case 4:
      v3 = sub_EAE00() | 0x66654C7400000000;
      goto LABEL_10;
    case 5:
      v3 = sub_EAE00() | 0x6769527400000000;
      v0 = 0xEA00000000007468;
      break;
    case 6:
      v0 = 0xE800000000000000;
      v3 = 0x7466654C72616572;
      break;
    case 7:
      v3 = 0x6867695272616572;
LABEL_10:
      v0 = 0xE900000000000074;
      break;
    case 8:
      v0 = 0xE400000000000000;
      v3 = 1918985586;
      break;
    case 9:
      v3 = sub_EABD0();
      v0 = 0xEC0000007466654CLL;
      break;
    case 10:
      v3 = sub_EABD0();
      v0 = 0xED00007468676952;
      break;
    case 11:
      v0 = 0xE800000000000000;
      v3 = sub_EABD0();
      break;
    case 12:
      v0 = 0xE700000000000000;
      v3 = sub_93B08();
      break;
    default:
      break;
  }

  v5 = 0xE300000000000000;
  switch(v1)
  {
    case 1:
      v5 = 0xE600000000000000;
      v2 = 0x726576697264;
      break;
    case 2:
      v2 = 0x65676E6573736170;
      v5 = 0xE900000000000072;
      break;
    case 3:
      v5 = 0xE500000000000000;
      sub_EACE8();
      break;
    case 4:
      v2 = 0x66654C746E6F7266;
      goto LABEL_24;
    case 5:
      v2 = 0x676952746E6F7266;
      v5 = 0xEA00000000007468;
      break;
    case 6:
      v5 = 0xE800000000000000;
      v2 = 0x7466654C72616572;
      break;
    case 7:
      v2 = 0x6867695272616572;
LABEL_24:
      v5 = 0xE900000000000074;
      break;
    case 8:
      v5 = 0xE400000000000000;
      v2 = 1918985586;
      break;
    case 9:
      sub_EAB94();
      v5 = 0xEC0000007466654CLL;
      break;
    case 10:
      sub_EAB94();
      v5 = 0xED00007468676952;
      break;
    case 11:
      v5 = 0xE800000000000000;
      sub_EAB94();
      break;
    case 12:
      v5 = 0xE700000000000000;
      sub_EAAF0();
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_EAB2C();
  }

  return v7 & 1;
}

uint64_t sub_E5160(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  sub_EAC54();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C();
  }

  return v8 & 1;
}

uint64_t sub_E51EC()
{
  sub_EAE18();
  v3 = 7105633;
  switch(v4)
  {
    case 1:
      v0 = 0xE500000000000000;
      v3 = sub_EAE00() & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
      break;
    case 2:
      v0 = 0xE400000000000000;
      v3 = 1918985586;
      break;
    case 3:
      v0 = 0xE700000000000000;
      v3 = sub_93B08();
      break;
    default:
      break;
  }

  v5 = 0xE300000000000000;
  switch(v1)
  {
    case 1:
      v5 = 0xE500000000000000;
      sub_EACE8();
      break;
    case 2:
      v5 = 0xE400000000000000;
      v2 = 1918985586;
      break;
    case 3:
      v5 = 0xE700000000000000;
      sub_EAAF0();
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_EAB2C();
  }

  return v7 & 1;
}

uint64_t sub_E5300(char a1)
{
  if (a1)
  {
    v1 = "appDisambiguationTitle";
  }

  else
  {
    v1 = "climateStoppingLabel";
  }

  v2 = v1 | 0x8000000000000000;
  sub_EAC54();
  if (v8)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = v3 == v4 && v2 == (v7 | 0x8000000000000000);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_EAB2C();
  }

  return v9 & 1;
}

uint64_t sub_E5394()
{
  sub_EAAD0();
  v4 = v3;
  v5 = "climateStoppingLabel";
  v6 = v2;
  v7 = v0;
  v8 = "climateStartingLabel";
  switch(v4)
  {
    case 1:
      v6 = sub_EAD08() & 0xFFFFFFFFFFFFLL | 0x4F65000000000000;
      v7 = 0xEF6C6562614C6666;
      break;
    case 2:
      sub_EAD08();
      v7 = 19566;
      sub_EAC20();
      break;
    case 3:
      v6 = 0xD000000000000014;
      v9 = "l";
      goto LABEL_6;
    case 4:
      v6 = 0xD000000000000014;
      v9 = "climateStartingLabel";
LABEL_6:
      v7 = v9 | 0x8000000000000000;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      sub_EACB8();
      v2 = v10 & 0xFFFFFFFFFFFFLL | 0x4F65000000000000;
      v0 = 0xEF6C6562614C6666;
      break;
    case 2:
      sub_EACB8();
      v0 = 19566;
      sub_9FDC();
      break;
    case 3:
      v2 = 0xD000000000000014;
      v11 = v8 - 32;
      goto LABEL_12;
    case 4:
      v2 = 0xD000000000000014;
      v11 = v5 - 32;
LABEL_12:
      v0 = v11 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v6 == v2 && v7 == v0)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_EAB50();
  }

  return v13 & 1;
}

uint64_t sub_E5514()
{
  sub_EAAD0();
  v4 = v3;
  v5 = "signalStoppingLabel";
  v6 = v2;
  v7 = v0;
  v8 = "signalStartingLabel";
  switch(v4)
  {
    case 1:
      v7 = 19558;
      sub_EAC20();
      break;
    case 2:
      sub_EAE2C();
      break;
    case 3:
      v6 = 0xD000000000000013;
      v9 = "alOffLabel";
      goto LABEL_6;
    case 4:
      v6 = 0xD000000000000013;
      v9 = "signalStartingLabel";
LABEL_6:
      v7 = v9 | 0x8000000000000000;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 19558;
      sub_9FDC();
      break;
    case 2:
      sub_A234();
      break;
    case 3:
      v2 = 0xD000000000000013;
      v10 = v8 - 32;
      goto LABEL_12;
    case 4:
      v2 = 0xD000000000000013;
      v10 = v5 - 32;
LABEL_12:
      v0 = v10 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v6 == v2 && v7 == v0)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_EAB50();
  }

  return v12 & 1;
}

uint64_t sub_E569C()
{
  sub_EAAD0();
  v4 = v3;
  v5 = "trunkOpeningLabel";
  v6 = v2;
  v7 = v0;
  v8 = "trunkClosedLabel";
  switch(v4)
  {
    case 1:
      v6 = 0xD000000000000010;
      v7 = 0x800000000017F1D0;
      break;
    case 2:
      v7 = 19566;
      sub_EAC20();
      break;
    case 3:
      v7 = 0x800000000017F1F0;
      v6 = 0xD000000000000011;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v2 = 0xD000000000000010;
      v0 = (v8 - 32) | 0x8000000000000000;
      break;
    case 2:
      v0 = 19566;
      sub_9FDC();
      break;
    case 3:
      v0 = (v5 - 32) | 0x8000000000000000;
      sub_A1A8();
      v2 = v9 | 1;
      break;
    default:
      break;
  }

  if (v6 == v2 && v7 == v0)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_EAB50();
  }

  return v11 & 1;
}

uint64_t sub_E57F8()
{
  sub_EAAD0();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x4C7972616D697270;
    }

    else
    {
      v5 = 0x7261646E6F636573;
    }

    if (v4 == 1)
    {
      v6 = v0;
    }

    else
    {
      v6 = 0xEE006C6562614C79;
    }
  }

  else
  {
    v5 = v3;
    v6 = v0;
  }

  if (v2)
  {
    v3 = v2 == 1 ? 0x4C7972616D697270 : 0x7261646E6F636573;
    if (v2 != 1)
    {
      v0 = 0xEE006C6562614C79;
    }
  }

  if (v5 == v3 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB50();
  }

  return v8 & 1;
}

uint64_t sub_E58E4()
{
  sub_EAAD0();
  v4 = v3;
  v5 = v2;
  v6 = v0;
  switch(v4)
  {
    case 1:
      v5 = sub_EACF8() & 0xFFFFFFFFFFFFLL | 0x614C000000000000;
      v6 = 0xEB000000006C6562;
      break;
    case 2:
      v5 = 0x4C676E696B636F6CLL;
      v6 = v0;
      break;
    case 3:
      sub_EAB04();
      sub_EAE2C();
      break;
    case 4:
      v6 = 19559;
      sub_EAC20();
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      sub_EACC8();
      v2 = v7 & 0xFFFFFFFFFFFFLL | 0x614C000000000000;
      v0 = 0xEB000000006C6562;
      break;
    case 2:
      v2 = 0x4C676E696B636F6CLL;
      break;
    case 3:
      sub_EAB18();
      sub_A234();
      break;
    case 4:
      v0 = 19559;
      sub_9FDC();
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_EAB50();
  }

  return v9 & 1;
}

uint64_t sub_E5A58()
{
  sub_EACE8();
  v3 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v4 = 1918985586;
    }

    else
    {
      v4 = 7105633;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = v2;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1918985586;
    }

    else
    {
      v2 = 7105633;
    }

    if (v1 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C();
  }

  return v8 & 1;
}

uint64_t sub_E5B1C(unsigned __int8 a1, char a2)
{
  v2 = 0x616964656DLL;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x616964656DLL;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v6 = sub_EAD08();
      goto LABEL_4;
    case 2:
      v5 = 0x6574736F72666564;
      v3 = 0xE900000000000072;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1701996916;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v6 = 0x6C6369686576;
LABEL_4:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 2036625250;
      break;
    case 6:
      v5 = 0x7465536F69647561;
      v3 = 0xED000073676E6974;
      break;
    case 7:
      v5 = 0x6979616C50776F6ELL;
      v3 = 0xEA0000000000676ELL;
      break;
    case 8:
      v3 = 0xE400000000000000;
      v5 = 1701736302;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE700000000000000;
      sub_EACB8();
      goto LABEL_14;
    case 2:
      v2 = 0x6574736F72666564;
      v7 = 0xE900000000000072;
      break;
    case 3:
      v7 = 0xE400000000000000;
      v2 = 1701996916;
      break;
    case 4:
      v7 = 0xE700000000000000;
      v8 = 0x6C6369686576;
LABEL_14:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 5:
      v7 = 0xE400000000000000;
      v2 = 2036625250;
      break;
    case 6:
      v2 = 0x7465536F69647561;
      v7 = 0xED000073676E6974;
      break;
    case 7:
      v2 = 0x6979616C50776F6ELL;
      v7 = 0xEA0000000000676ELL;
      break;
    case 8:
      v7 = 0xE400000000000000;
      v2 = 1701736302;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_EAB2C();
  }

  return v10 & 1;
}

uint64_t sub_E5D70(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 28006;
  switch(a1)
  {
    case 1:
      v4 = 28001;
      break;
    case 2:
      v4 = 28024;
      break;
    case 3:
      v3 = 0xE300000000000000;
      v4 = 6447460;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v4 = 0x6261646D66;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v4 = sub_93B08();
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 28006;
  switch(a2)
  {
    case 1:
      v6 = 28001;
      break;
    case 2:
      v6 = 28024;
      break;
    case 3:
      v5 = 0xE300000000000000;
      v6 = 6447460;
      break;
    case 4:
      v5 = 0xE500000000000000;
      v6 = 0x6261646D66;
      break;
    case 5:
      v5 = 0xE700000000000000;
      sub_EAAF0();
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB2C();
  }

  return v8 & 1;
}

uint64_t sub_E5F58(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_EAA7C(a4, a5);
  sub_16A7A4();
  sub_16A7A4();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_EAB50();
  }

  return v8 & 1;
}

uint64_t sub_E6024()
{

  v0 = 0;
  while (v0 != 30)
  {
    v1 = *(&off_1D0038 + v0++ + 32);
    if (sub_E902C())
    {
      goto LABEL_6;
    }
  }

  v1 = 29;
LABEL_6:

  return v1;
}

BOOL sub_E60A8(char a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = (a2 + 32);
  sub_D434();
  v21 = v6;
  do
  {
    v7 = v4;
    if (v4-- == 0)
    {
      break;
    }

    v9 = 0xE600000000000000;
    v10 = 0x64656B636F6CLL;
    switch(*v5)
    {
      case 1:
        v9 = 0xE800000000000000;
        v11 = 0x696873616C66;
        goto LABEL_12;
      case 2:
        v10 = 0x746E656C6973;
        break;
      case 3:
        v9 = 0xE800000000000000;
        v11 = 0x69646E756F73;
LABEL_12:
        v10 = v11 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
        break;
      case 4:
        v9 = 0xE800000000000000;
        v10 = sub_EAB04();
        break;
      case 5:
        v9 = 0xE400000000000000;
        v10 = 1802658160;
        break;
      case 6:
        v9 = 0xE700000000000000;
        v10 = sub_93B08();
        break;
      case 7:
        v10 = 0x61635F7075746573;
        v9 = 0xED000079616C7072;
        break;
      case 8:
        v9 = 0xE300000000000000;
        v10 = 7827308;
        break;
      case 9:
        v9 = 0xE400000000000000;
        v10 = 1751607656;
        break;
      case 0xA:
        sub_A1A8();
        v10 = v13 + 1;
        v9 = 0x800000000017E3D0;
        break;
      case 0xB:
        sub_A1A8();
        v10 = v12 + 3;
        v9 = 0x800000000017E3F0;
        break;
      case 0xC:
        v10 = sub_851F8();
        v9 = 0xEE006574754D6E6FLL;
        break;
      case 0xD:
        v10 = 0xD000000000000010;
        v9 = v21;
        break;
      default:
        break;
    }

    v14 = 0xE600000000000000;
    v15 = 0x64656B636F6CLL;
    switch(a1)
    {
      case 1:
        v14 = 0xE800000000000000;
        v16 = 0x696873616C66;
        goto LABEL_27;
      case 2:
        v15 = 0x746E656C6973;
        break;
      case 3:
        v14 = 0xE800000000000000;
        v16 = 0x69646E756F73;
LABEL_27:
        v15 = v16 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
        break;
      case 4:
        v14 = 0xE800000000000000;
        sub_EAB18();
        break;
      case 5:
        v14 = 0xE400000000000000;
        v15 = 1802658160;
        break;
      case 6:
        v14 = 0xE700000000000000;
        sub_EAAF0();
        break;
      case 7:
        v15 = 0x61635F7075746573;
        v14 = 0xED000079616C7072;
        break;
      case 8:
        v14 = 0xE300000000000000;
        v15 = 7827308;
        break;
      case 9:
        v14 = 0xE400000000000000;
        v15 = 1751607656;
        break;
      case 10:
        sub_A1A8();
        v15 = v18 + 1;
        v14 = 0x800000000017E3D0;
        break;
      case 11:
        sub_A1A8();
        v15 = v17 + 3;
        v14 = 0x800000000017E3F0;
        break;
      case 12:
        sub_EAC30();
        v14 = 0xEE006574754D6E6FLL;
        break;
      case 13:
        v15 = 0xD000000000000010;
        v14 = v21;
        break;
      default:
        break;
    }

    if (v10 == v15 && v9 == v14)
    {

      return v7 != 0;
    }

    sub_EAC80();
    sub_93E14();

    ++v5;
  }

  while ((v2 & 1) == 0);
  return v7 != 0;
}

BOOL sub_E6420(char a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = (a2 + 32);
  do
  {
    v6 = v4;
    if (v4-- == 0)
    {
      break;
    }

    v8 = 0xE500000000000000;
    v9 = 0x6563696F76;
    switch(*v5)
    {
      case 1:
        v9 = 0xD000000000000015;
        v8 = 0x800000000017E7D0;
        break;
      case 2:
        v8 = 0xE600000000000000;
        v9 = 0x7265676E6972;
        break;
      case 3:
        v8 = 0xE600000000000000;
        v9 = 0x656D756C6F76;
        break;
      case 4:
        v9 = sub_EAE8C();
        v8 = 0xE900000000000065;
        break;
      case 5:
        v8 = 0xE700000000000000;
        v9 = sub_93B08();
        break;
      default:
        break;
    }

    v10 = 0xE500000000000000;
    v11 = 0x6563696F76;
    switch(a1)
    {
      case 1:
        v11 = 0xD000000000000015;
        v10 = 0x800000000017E7D0;
        break;
      case 2:
        v10 = 0xE600000000000000;
        v11 = 0x7265676E6972;
        break;
      case 3:
        v10 = 0xE600000000000000;
        v11 = 0x656D756C6F76;
        break;
      case 4:
        sub_EAE6C();
        v10 = 0xE900000000000065;
        break;
      case 5:
        v10 = 0xE700000000000000;
        sub_EAAF0();
        break;
      default:
        break;
    }

    if (v9 == v11 && v8 == v10)
    {

      return v6 != 0;
    }

    sub_EAC80();
    sub_93E14();

    ++v5;
  }

  while ((v2 & 1) == 0);
  return v6 != 0;
}

BOOL sub_E65F4(unsigned __int8 a1, uint64_t a2)
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

BOOL sub_E6624(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  v4 = a1;
  do
  {
    v5 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v7 = *v3++;
    sub_76D10();
    isa = sub_16AAB4(qword_177030[v7]).super.super.isa;
    v9 = sub_16AAB4(qword_177030[v4]).super.super.isa;
    sub_37740();
    v10 = sub_16AAD4();
  }

  while ((v10 & 1) == 0);
  return v5 != 0;
}

BOOL sub_E66C0(char a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = (a2 + 32);
  sub_D434();
  v22 = v6;
  v23 = v7;
  sub_D434();
  v20 = v8;
  v21 = v9;
  do
  {
    v10 = v4;
    if (v4-- == 0)
    {
      break;
    }

    v12 = 0xE700000000000000;
    v13 = 0x656D614E726163;
    switch(*v5)
    {
      case 1:
        v13 = sub_EAE80();
        v12 = v21;
        break;
      case 2:
        v13 = sub_EAE80();
        v12 = 0x800000000017EDE0;
        break;
      case 3:
        v13 = 0xD000000000000018;
        v12 = 0x800000000017EE00;
        break;
      case 4:
        v13 = 0xD000000000000018;
        v12 = v22;
        break;
      case 5:
        v13 = sub_EAE80();
        v12 = v23;
        break;
      case 6:
        v13 = 0xD000000000000019;
        v12 = 0x800000000017EE60;
        break;
      case 7:
        v13 = 0xD000000000000010;
        v12 = 0x800000000017EE80;
        break;
      case 8:
        break;
      case 9:
        v12 = 0xEB00000000657079;
        v13 = 0x5474616553726163;
        break;
      case 0xA:
        v13 = 0x6D6572757361656DLL;
        v14 = 1433693797;
        goto LABEL_16;
      case 0xB:
        v13 = 0x74617265706D6574;
        v14 = 1432711797;
LABEL_16:
        v12 = v14 | 0xEF74696E00000000;
        break;
      case 0xC:
        v13 = 0x4D746E6556726163;
        v12 = 0xEB0000000065646FLL;
        break;
      default:
        v13 = 0xD000000000000015;
        v12 = v20;
        break;
    }

    v15 = 0xE700000000000000;
    v16 = 0x656D614E726163;
    switch(a1)
    {
      case 1:
        v16 = 0xD000000000000017;
        v15 = v21;
        break;
      case 2:
        v16 = 0xD000000000000017;
        v15 = 0x800000000017EDE0;
        break;
      case 3:
        v16 = 0xD000000000000018;
        v15 = 0x800000000017EE00;
        break;
      case 4:
        v16 = 0xD000000000000018;
        v15 = v22;
        break;
      case 5:
        v16 = 0xD000000000000017;
        v15 = v23;
        break;
      case 6:
        v16 = 0xD000000000000019;
        v15 = 0x800000000017EE60;
        break;
      case 7:
        v16 = 0xD000000000000010;
        v15 = 0x800000000017EE80;
        break;
      case 8:
        break;
      case 9:
        v15 = 0xEB00000000657079;
        v16 = 0x5474616553726163;
        break;
      case 10:
        v16 = 0x6D6572757361656DLL;
        v17 = 1433693797;
        goto LABEL_30;
      case 11:
        v16 = 0x74617265706D6574;
        v17 = 1432711797;
LABEL_30:
        v15 = v17 | 0xEF74696E00000000;
        break;
      case 12:
        v16 = 0x4D746E6556726163;
        v15 = 0xEB0000000065646FLL;
        break;
      default:
        v16 = 0xD000000000000015;
        v15 = v20;
        break;
    }

    if (v13 == v16 && v12 == v15)
    {

      return v10 != 0;
    }

    sub_EAC80();
    sub_93E14();

    ++v5;
  }

  while ((v2 & 1) == 0);
  return v10 != 0;
}

BOOL sub_E6A8C(char a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = (a2 + 32);
  sub_D434();
  v21 = v6;
  do
  {
    v7 = v4;
    if (v4-- == 0)
    {
      break;
    }

    v9 = 0xEE0065636E657473;
    v10 = 0x6978456B63656863;
    switch(*v5)
    {
      case 1:
        v9 = 0xE600000000000000;
        v11 = 1650552421;
        goto LABEL_27;
      case 2:
        v10 = 0x6573616572636564;
        goto LABEL_22;
      case 3:
        v10 = 0xD000000000000015;
        v9 = 0x800000000017E250;
        break;
      case 4:
        v9 = 0xE700000000000000;
        v10 = 0x656C6261736964;
        break;
      case 5:
        v10 = 0x7461636F4C746567;
        v12 = 7237481;
        goto LABEL_19;
      case 6:
        sub_EAEA0();
        v10 = v13 + 2309;
LABEL_22:
        v9 = 0xEA00000000007942;
        break;
      case 7:
        v10 = 0xD000000000000015;
        v9 = v21;
        break;
      case 8:
        v9 = 0xE600000000000000;
        v10 = 0x627265566F6ELL;
        break;
      case 9:
        v9 = 0xE400000000000000;
        v10 = 1852141679;
        break;
      case 0xA:
        v9 = 0xE400000000000000;
        v10 = 2036427888;
        break;
      case 0xB:
        v9 = 0xE700000000000000;
        v10 = 0x74736575716572;
        break;
      case 0xC:
        v9 = 0xE400000000000000;
        v10 = 1851876211;
        break;
      case 0xD:
        v9 = 0xE300000000000000;
        v10 = 7628147;
        break;
      case 0xE:
        v10 = 0x757361654D746573;
        v9 = 0xEE00746E656D6572;
        break;
      case 0xF:
        v9 = 0xE900000000000072;
        v10 = 0x65626D754E746573;
        break;
      case 0x10:
        v10 = 0x6B63614270696B73;
        v9 = 0xEC00000064726177;
        break;
      case 0x11:
        v10 = 0x77726F4670696B73;
        v12 = 6582881;
LABEL_19:
        v9 = v12 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 0x12:
        v10 = 0x736972616D6D7573;
        v9 = 0xE900000000000065;
        break;
      case 0x13:
        v9 = 0xE600000000000000;
        v11 = 1734831988;
LABEL_27:
        v10 = v11 & 0xFFFF0000FFFFFFFFLL | 0x656C00000000;
        break;
      case 0x14:
        v9 = 0xE700000000000000;
        v10 = sub_93B08();
        break;
      default:
        break;
    }

    v14 = 0x6978456B63656863;
    v15 = 0xEE0065636E657473;
    switch(a1)
    {
      case 1:
        v15 = 0xE600000000000000;
        v16 = 1650552421;
        goto LABEL_51;
      case 2:
        v14 = 0x6573616572636564;
        goto LABEL_46;
      case 3:
        v14 = 0xD000000000000015;
        v15 = 0x800000000017E250;
        break;
      case 4:
        v15 = 0xE700000000000000;
        v14 = 0x656C6261736964;
        break;
      case 5:
        v14 = 0x7461636F4C746567;
        v17 = 7237481;
        goto LABEL_43;
      case 6:
        sub_EAEA0();
        v14 = v18 + 2309;
LABEL_46:
        v15 = 0xEA00000000007942;
        break;
      case 7:
        v14 = 0xD000000000000015;
        v15 = v21;
        break;
      case 8:
        v15 = 0xE600000000000000;
        v14 = 0x627265566F6ELL;
        break;
      case 9:
        v15 = 0xE400000000000000;
        v14 = 1852141679;
        break;
      case 10:
        v15 = 0xE400000000000000;
        v14 = 2036427888;
        break;
      case 11:
        v15 = 0xE700000000000000;
        v14 = 0x74736575716572;
        break;
      case 12:
        v15 = 0xE400000000000000;
        v14 = 1851876211;
        break;
      case 13:
        v15 = 0xE300000000000000;
        v14 = 7628147;
        break;
      case 14:
        v14 = 0x757361654D746573;
        v15 = 0xEE00746E656D6572;
        break;
      case 15:
        v15 = 0xE900000000000072;
        v14 = 0x65626D754E746573;
        break;
      case 16:
        v14 = 0x6B63614270696B73;
        v15 = 0xEC00000064726177;
        break;
      case 17:
        v14 = 0x77726F4670696B73;
        v17 = 6582881;
LABEL_43:
        v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 18:
        v14 = 0x736972616D6D7573;
        v15 = 0xE900000000000065;
        break;
      case 19:
        v15 = 0xE600000000000000;
        v16 = 1734831988;
LABEL_51:
        v14 = v16 & 0xFFFF0000FFFFFFFFLL | 0x656C00000000;
        break;
      case 20:
        v15 = 0xE700000000000000;
        sub_EAAF0();
        break;
      default:
        break;
    }

    if (v10 == v14 && v9 == v15)
    {

      return v7 != 0;
    }

    sub_EAC80();
    sub_93E14();

    ++v5;
  }

  while ((v2 & 1) == 0);
  return v7 != 0;
}

BOOL sub_E6FD0(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xE200000000000000;
    v8 = 28271;
    switch(*v4)
    {
      case 1:
        v7 = 0xE300000000000000;
        v8 = 6710895;
        break;
      case 2:
        v7 = 0xE600000000000000;
        v8 = 0x64656B636F6CLL;
        break;
      case 3:
        v7 = 0xE800000000000000;
        v8 = 0x64656B636F6C6E75;
        break;
      default:
        break;
    }

    v9 = 0xE200000000000000;
    v10 = 28271;
    switch(a1)
    {
      case 1:
        v9 = 0xE300000000000000;
        v10 = 6710895;
        break;
      case 2:
        v9 = 0xE600000000000000;
        v10 = 0x64656B636F6CLL;
        break;
      case 3:
        v9 = 0xE800000000000000;
        v10 = 0x64656B636F6C6E75;
        break;
      default:
        break;
    }

    if (v8 == v10 && v7 == v9)
    {

      return v5 != 0;
    }

    v12 = sub_16AE54();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

BOOL sub_E7154(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(a2 + 16);
  v6 = (a2 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v9 = a3(*v6);
    v11 = v10;
    if (v9 == a3(a1) && v11 == v12)
    {

      return v7 != 0;
    }

    v14 = sub_16AE54();

    ++v6;
  }

  while ((v14 & 1) == 0);
  return v7 != 0;
}

BOOL sub_E7224(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xE600000000000000;
    v8 = 0x7473756A6461;
    switch(*v4)
    {
      case 1:
        v8 = 0x74736575516B7361;
        v7 = 0xEB000000006E6F69;
        break;
      case 2:
        v7 = 0xE500000000000000;
        v8 = 0x65736F6C63;
        break;
      case 3:
        v7 = 0xE400000000000000;
        v8 = 1953069157;
        break;
      case 4:
        v7 = 0xE400000000000000;
        v8 = 1801678700;
        break;
      case 5:
        v7 = 0xE400000000000000;
        v8 = 1852141679;
        break;
      case 6:
        v7 = 0xE400000000000000;
        v8 = 1802658160;
        break;
      case 7:
        v7 = 0xE700000000000000;
        v8 = 0x66664F6E727574;
        break;
      case 8:
        v8 = 0x6E4F6E727574;
        break;
      case 9:
        v7 = 0xE400000000000000;
        v8 = 1702257011;
        break;
      case 0xA:
        v8 = 0x61636F4C646E6573;
        v7 = 0xEC0000006E6F6974;
        break;
      case 0xB:
        v8 = 0x6B636F6C6E75;
        break;
      default:
        break;
    }

    v9 = 0xE600000000000000;
    v10 = 0x7473756A6461;
    switch(a1)
    {
      case 1:
        v10 = 0x74736575516B7361;
        v9 = 0xEB000000006E6F69;
        break;
      case 2:
        v9 = 0xE500000000000000;
        v10 = 0x65736F6C63;
        break;
      case 3:
        v9 = 0xE400000000000000;
        v10 = 1953069157;
        break;
      case 4:
        v9 = 0xE400000000000000;
        v10 = 1801678700;
        break;
      case 5:
        v9 = 0xE400000000000000;
        v10 = 1852141679;
        break;
      case 6:
        v9 = 0xE400000000000000;
        v10 = 1802658160;
        break;
      case 7:
        v9 = 0xE700000000000000;
        v10 = 0x66664F6E727574;
        break;
      case 8:
        v10 = 0x6E4F6E727574;
        break;
      case 9:
        v9 = 0xE400000000000000;
        v10 = 1702257011;
        break;
      case 10:
        v10 = 0x61636F4C646E6573;
        v9 = 0xEC0000006E6F6974;
        break;
      case 11:
        v10 = 0x6B636F6C6E75;
        break;
      default:
        break;
    }

    if (v8 == v10 && v7 == v9)
    {

      return v5 != 0;
    }

    v12 = sub_16AE54();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_E7578()
{
  sub_5758(&qword_1EBC08, &qword_176FB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_16D3A0;
  if (qword_1E5918 != -1)
  {
    swift_once();
  }

  v1 = qword_1F0CE0;
  v2 = sub_5758(&qword_1EBC70, &qword_176FE8);
  *(v0 + 56) = v2;
  v3 = sub_EAA28(&qword_1EBC78, &qword_1EBC70, &qword_176FE8);
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_1E5910;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_1F0CD8;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  *(v0 + 72) = v5;
  v6 = sub_169654();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  result = sub_169634();
  qword_1F0CE8 = result;
  return result;
}

uint64_t sub_E76D8()
{
  v0 = sub_5758(&qword_1EBC10, &qword_176FB8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1696C4();
  qword_1F0CF0 = result;
  return result;
}

uint64_t sub_E7748()
{
  v0 = sub_5758(&qword_1EBC20, &qword_176FC0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_EAE80();
  result = sub_1696C4();
  qword_1F0CF8 = result;
  return result;
}

uint64_t sub_E77AC()
{
  v0 = sub_5758(&qword_1EBC30, &qword_176FC8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1696C4();
  qword_1F0D00 = result;
  return result;
}

uint64_t sub_E781C()
{
  v0 = sub_5758(&qword_1EBC40, &qword_176FD0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1696C4();
  qword_1F0D08 = result;
  return result;
}

uint64_t sub_E788C()
{
  v0 = sub_5758(&qword_1EBC50, &qword_176FD8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1696C4();
  qword_1F0D10 = result;
  return result;
}

uint64_t sub_E78F4()
{
  v0 = sub_5758(&qword_1EBC60, &qword_176FE0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1696C4();
  qword_1F0D18 = result;
  return result;
}

uint64_t sub_E7970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_5758(&qword_1EBC70, &qword_176FE8);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = sub_1696C4();
  *a4 = result;
  return result;
}

uint64_t sub_E79DC()
{
  sub_5758(&qword_1EBC08, &qword_176FB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_175690;
  if (qword_1E5920 != -1)
  {
    swift_once();
  }

  v1 = qword_1F0CE8;
  *(v0 + 56) = sub_169654();
  *(v0 + 64) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 32) = v1;
  v2 = qword_1E5928;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1F0CF0;
  *(v0 + 96) = sub_EAD58();
  *(v0 + 104) = sub_EAD40(&qword_1EBC18);
  *(v0 + 72) = v3;
  v4 = qword_1E5930;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_1F0CF8;
  *(v0 + 136) = sub_EAD58();
  *(v0 + 144) = sub_EAD40(&qword_1EBC28);
  *(v0 + 112) = v5;
  v6 = qword_1E5938;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_1F0D00;
  *(v0 + 176) = sub_EAD58();
  *(v0 + 184) = sub_EAD40(&qword_1EBC38);
  *(v0 + 152) = v7;
  v8 = qword_1E5940;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_1F0D08;
  *(v0 + 216) = sub_EAD58();
  *(v0 + 224) = sub_EAD40(&qword_1EBC48);
  *(v0 + 192) = v9;
  v10 = qword_1E5948;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_1F0D10;
  *(v0 + 256) = sub_EAD58();
  *(v0 + 264) = sub_EAD40(&qword_1EBC58);
  *(v0 + 232) = v11;
  v12 = qword_1E5950;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_1F0D18;
  *(v0 + 296) = sub_EAD58();
  *(v0 + 304) = sub_EAD40(&qword_1EBC68);
  *(v0 + 272) = v13;
  v14 = qword_1E5958;

  if (v14 != -1)
  {
    sub_EABE4();
  }

  v15 = qword_1F0D20;
  *(v0 + 336) = sub_EAD58();
  *(v0 + 344) = sub_EAD40(&qword_1EBC78);
  *(v0 + 312) = v15;
  v16 = sub_1696B4();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();

  result = sub_1696A4();
  qword_1F0D28 = result;
  return result;
}

uint64_t sub_E7DB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv3Intent_domainOntologyNode;
  if (qword_1E5960 != -1)
  {
    swift_once();
  }

  *(v1 + v3) = qword_1F0D28;
  v4 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv3Intent_intent;
  v5 = sub_169D24();
  sub_10AFC(v5);
  (*(v6 + 32))(v1 + v4, a1);

  return v1;
}

uint64_t sub_E7ED8(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
  type metadata accessor for CarCommandsNLv3Intent();
  sub_EAB6C();
  sub_EAA7C(v4, v5);
  sub_37740();
  sub_169944();
  return v7;
}

uint64_t sub_E8000(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
  type metadata accessor for CarCommandsNLv3Intent();
  sub_EAB6C();
  sub_EAA7C(v4, v5);
  sub_37740();
  sub_169944();
  return v7;
}

uint64_t sub_E80BC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a1;
  v118 = a2;
  v5 = sub_5758(&qword_1EBC90, &qword_176FF8);
  sub_D414(v5);
  v7 = *(v6 + 64);
  sub_CA380();
  __chkstk_darwin(v8);
  v111 = &v103 - v9;
  v10 = sub_5758(&qword_1EBC98, &unk_177000);
  sub_D414(v10);
  v12 = *(v11 + 64);
  sub_CA380();
  __chkstk_darwin(v13);
  sub_EACD8(&v103 - v14);
  v108 = sub_169894();
  v15 = sub_9F48(v108);
  v110 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_A138();
  sub_EACD8(v20 - v19);
  v21 = sub_169D24();
  v22 = sub_9F48(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  sub_A138();
  v29 = v28 - v27;
  v30 = sub_5758(&qword_1E5F60, &qword_16D388);
  sub_D414(v30);
  v32 = *(v31 + 64);
  sub_CA380();
  __chkstk_darwin(v33);
  v35 = &v103 - v34;
  v36 = sub_5758(&qword_1EBCA0, &qword_177010);
  v37 = sub_D414(v36);
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v37);
  v42 = &v103 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  sub_EACD8(&v103 - v43);
  v44 = sub_169924();
  v45 = sub_9F48(v44);
  v106 = v46;
  v48 = *(v47 + 64);
  __chkstk_darwin(v45);
  sub_A138();
  v105 = v50 - v49;
  (*(v24 + 16))(v29, v3 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv3Intent_intent, v21);
  sub_169D14();
  (*(v24 + 8))(v29, v21);
  v51 = sub_169974();
  sub_EAEC0(v35);
  if (v64)
  {
    sub_109A0(v35, &qword_1E5F60, &qword_16D388);
LABEL_17:
    v123 = 0;
    v121 = 0u;
    v122 = 0u;
    v69 = v112;
LABEL_18:
    sub_109A0(&v121, &qword_1EBCA8, &qword_177018);
    sub_3CFE4();
    sub_5370(v70, v71, v72, v44);
LABEL_19:
    sub_109A0(v69, &qword_1EBCA0, &qword_177010);
    sub_169844();
    goto LABEL_20;
  }

  v52 = sub_169964();
  result = (*(*(v51 - 8) + 8))(v35, v51);
  v54 = *(v52 + 16);
  if (!v54)
  {
LABEL_16:

    goto LABEL_17;
  }

  v104 = a3;
  v55 = 0;
  v56 = v52 + 32;
  v115 = v52;
  v116 = (v106 + 8);
  v57 = &qword_1EBCB0;
  v58 = &unk_177020;
  v114 = v54;
  while (1)
  {
    if (v55 >= *(v52 + 16))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

    sub_10824(v56, v120);
    sub_10824(v120, v119);
    sub_5758(v57, v58);
    if (!swift_dynamicCast())
    {
      sub_3CFE4();
      sub_5370(v66, v67, v68, v44);
      sub_109A0(v42, &qword_1EBCA0, &qword_177010);
      goto LABEL_15;
    }

    v59 = v58;
    v60 = v57;
    sub_5370(v42, 0, 1, v44);
    v61 = sub_169904();
    v63 = v62;
    v113 = *v116;
    v113(v42, v44);
    v64 = v61 == v117 && v63 == v118;
    if (v64)
    {
      break;
    }

    v65 = sub_16AE54();

    v57 = v60;
    v58 = v59;
    v54 = v114;
    v52 = v115;
    if (v65)
    {

      goto LABEL_23;
    }

LABEL_15:
    ++v55;
    result = sub_D13C(v120);
    v56 += 40;
    if (v54 == v55)
    {
      goto LABEL_16;
    }
  }

LABEL_23:
  sub_D124(v120, &v121);
  v77 = v111;
  v69 = v112;
  if (!*(&v122 + 1))
  {
    goto LABEL_18;
  }

  sub_5758(&qword_1EBCB0, &unk_177020);
  v78 = swift_dynamicCast();
  sub_5370(v69, v78 ^ 1u, 1, v44);
  if (sub_9E2C(v69, 1, v44) == 1)
  {
    goto LABEL_19;
  }

  (*(v106 + 32))(v105, v69, v44);
  result = sub_169914();
  v79 = result;
  v80 = *(result + 16);
  if (v80)
  {
    v81 = 0;
    v118 = result + ((*(v110 + 80) + 32) & ~*(v110 + 80));
    v117 = v110 + 16;
    LODWORD(v115) = enum case for TerminalElement.OriginDetail.matchingSpan(_:);
    v82 = v110;
    while (1)
    {
      if (v81 >= *(v79 + 16))
      {
        goto LABEL_39;
      }

      v83 = v107;
      v84 = v108;
      (*(v82 + 16))(v107, v118 + *(v82 + 72) * v81, v108);
      sub_169884();
      (*(v82 + 8))(v83, v84);
      v85 = sub_169874();
      sub_EAEC0(v77);
      if (v64)
      {
        break;
      }

      v90 = v77;
      v91 = v109;
      sub_169864();
      (*(*(v85 - 8) + 8))(v90, v85);
      v92 = sub_169854();
      v93 = sub_9E2C(v91, 1, v92);
      if (v93 == 1)
      {
        goto LABEL_32;
      }

      v94 = *(v92 - 8);
      v95 = (*(v94 + 88))(v91, v92);
      if (v95 == v115)
      {
        v98 = sub_EAD28();
        v99(v98);

        (*(v94 + 96))(v91, v92);
        v100 = sub_169844();
        sub_10AFC(v100);
        v102 = v104;
        (*(v101 + 32))(v104, v91, v100);
        v73 = v102;
        v74 = 0;
        v75 = 1;
        v76 = v100;
        return sub_5370(v73, v74, v75, v76);
      }

      result = (*(v94 + 8))(v91, v92);
LABEL_35:
      ++v81;
      v77 = v111;
      if (v80 == v81)
      {
        goto LABEL_36;
      }
    }

    sub_109A0(v77, &qword_1EBC90, &qword_176FF8);
    sub_169854();
    v91 = v109;
    sub_3CFE4();
    sub_5370(v86, v87, v88, v89);
LABEL_32:
    result = sub_109A0(v91, &qword_1EBC98, &unk_177000);
    goto LABEL_35;
  }

LABEL_36:

  v96 = sub_EAD28();
  v97(v96);
  sub_169844();
LABEL_20:
  sub_3CFE4();
  return sub_5370(v73, v74, v75, v76);
}

uint64_t sub_E89D8()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv3Intent_intent;
  v2 = sub_169D24();
  sub_10AFC(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv3Intent_domainOntologyNode);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for CarCommandsNLv3Intent()
{
  result = qword_1EBAE0;
  if (!qword_1EBAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E8AD0()
{
  result = sub_169D24();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_E8B6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv3Intent_intent;
  v5 = sub_169D24();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_E8BFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.traversableIntentNode.getter(a1, WitnessTable);
}

uint64_t sub_E8C60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.traversableOntologyNode.getter(a1, WitnessTable);
}

uint64_t sub_E8CB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.description.getter(a1, WitnessTable);
}

uint64_t sub_E8D08()
{
  v0 = sub_E7FDC();
  if (!v1)
  {
    return sub_E7FDC();
  }

  if (v0 == 0x726143796DLL && v1 == 0xE500000000000000)
  {
  }

  else
  {
    v3 = sub_16AE54();

    if ((v3 & 1) == 0)
    {
      return sub_E7FDC();
    }
  }

  return 0;
}

uint64_t sub_E8D8C()
{
  v0 = sub_5758(&qword_1EBC88, &qword_176FF0);
  sub_D414(v0);
  v2 = *(v1 + 64);
  sub_CA380();
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  v6 = sub_E8D08();
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v6;
  v9 = v7;
  if (qword_1E5958 != -1)
  {
    sub_EABE4();
  }

  v10 = sub_1696D4();
  sub_E80BC(v10, v11, v5);

  v12 = sub_169844();
  if (sub_9E2C(v5, 1, v12) == 1)
  {

    sub_109A0(v5, &qword_1EBC88, &qword_176FF0);
LABEL_11:
    sub_E7E6C();
    return sub_37740();
  }

  sub_169834();
  v14 = v13;
  (*(*(v12 - 8) + 8))(v5, v12);
  if (!v14)
  {

    goto LABEL_11;
  }

  v21 = 0;
  v22 = 0xE000000000000000;

  sub_16ACF4(37);

  sub_D434();
  v21 = 0xD000000000000013;
  v22 = v15;
  v23._countAndFlagsBits = sub_37740();
  sub_16A744(v23);

  v24._countAndFlagsBits = 0x72616320726F6620;
  v24._object = 0xEE00203A656D614ELL;
  sub_16A744(v24);
  v25._countAndFlagsBits = v8;
  v25._object = v9;
  sub_16A744(v25);

  v16 = v21;
  v17 = v22;
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v18 = sub_16A584();
  sub_9DA0(v18, qword_1E65C0);
  v19 = sub_16A9A4();
  sub_386D8(v19, 1uLL, 0xD000000000000077, 0x800000000018C3D0, 0x4449707061, 0xE500000000000000, 127, v16, v17);

  return sub_37740();
}

BOOL sub_E902C()
{
  v0 = sub_E7F70();
  v1 = sub_E7F94();
  v2 = sub_E7FB8();
  v3 = sub_E7E90();
  v4 = &off_1D00F0;
  v5 = &_swiftEmptyArrayStorage;
  v6 = &off_1D00C8;
  switch(&_swiftEmptyArrayStorage)
  {
    case 0u:
      v4 = &off_1D0208;
      v6 = &off_1D01E0;
      v5 = &off_1D0230;
      goto LABEL_26;
    case 1u:
      if (v0 == 39)
      {
        return 0;
      }

      if (sub_77154(v0) == 7496035 && v9 == 0xE300000000000000)
      {

        if (v1 != 12)
        {
LABEL_38:
          if (sub_494D4(v1) != 0x7473756A6461 || v15 != 0xE600000000000000)
          {
            v17 = sub_16AE54();

            if (v17)
            {
              goto LABEL_73;
            }

            if (sub_494D4(v1) != 0x6E4F6E727574 || v18 != 0xE600000000000000)
            {
              v20 = sub_16AE54();

              if (v20)
              {
                goto LABEL_73;
              }

              if (sub_494D4(v1) != 0x66664F6E727574 || v21 != 0xE700000000000000)
              {
                v23 = sub_16AE54();

                if ((v23 & 1) == 0)
                {
LABEL_77:
                  if (sub_494D4(v1) != 1801678700 || v32 != 0xE400000000000000)
                  {
                    v34 = sub_16AE54();

                    if (v34)
                    {
                      return 1;
                    }

                    if (sub_494D4(v1) != 0x6B636F6C6E75 || v35 != 0xE600000000000000)
                    {
                      v37 = sub_16AE54();

                      return v37 & 1;
                    }
                  }

LABEL_87:

                  return 1;
                }

LABEL_73:
                switch(v2)
                {
                  case 2:
                    goto LABEL_87;
                  case 4:
                    goto LABEL_77;
                  default:
                    v30 = sub_16AE54();

                    if ((v30 & 1) == 0)
                    {
                      switch(v2)
                      {
                        case 3:
                          goto LABEL_87;
                        default:
                          v31 = sub_16AE54();

                          if ((v31 & 1) == 0)
                          {
                            goto LABEL_77;
                          }

                          return 1;
                      }
                    }

                    return 1;
                }
              }
            }
          }

          goto LABEL_73;
        }

        return 0;
      }

      v11 = sub_16AE54();

      result = 0;
      if ((v11 & 1) != 0 && v1 != 12)
      {
        goto LABEL_38;
      }

      return result;
    case 2u:
      goto LABEL_26;
    case 3u:
      v4 = &off_1D0280;
      v6 = &off_1D0258;
      goto LABEL_26;
    case 4u:
      v4 = &off_1D01B8;
      v6 = &off_1D0190;
      goto LABEL_26;
    case 5u:
      v4 = &off_1D0320;
      v6 = &off_1D02F8;
      goto LABEL_26;
    case 6u:
      v4 = &off_1D0140;
      v6 = &off_1D0118;
      v5 = &off_1D0168;
      goto LABEL_26;
    case 7u:
      v4 = &off_1D02D0;
      v6 = &off_1D02A8;
      goto LABEL_26;
    case 9u:
      if (v0 == 39)
      {
        goto LABEL_28;
      }

      if (sub_77154(v0) == 7496035 && v12 == 0xE300000000000000)
      {

        if (v1 == 12)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v14 = sub_16AE54();

        v5 = &_swiftEmptyArrayStorage;
        v6 = &off_1D0078;
        v4 = &off_1D00A0;
        if ((v14 & 1) == 0 || v1 == 12)
        {
LABEL_27:
          if (v1 == 12)
          {
LABEL_28:

            goto LABEL_69;
          }

          goto LABEL_61;
        }
      }

      if (sub_494D4(v1) == 0x7473756A6461 && v24 == 0xE600000000000000)
      {
        goto LABEL_69;
      }

      v26 = sub_16AE54();

      if (v26)
      {
        return 0;
      }

      v4 = &off_1D00A0;
      v5 = &_swiftEmptyArrayStorage;
      v6 = &off_1D0078;
LABEL_61:
      if (v5[2])
      {
        if (v2 == 4)
        {

LABEL_68:

LABEL_69:

          return 0;
        }

        v27 = sub_E6FD0(v2, v5);

        if (!v27)
        {
          goto LABEL_68;
        }
      }

      else
      {
      }

      v28 = sub_E7154(v0, v6, sub_77154);

      if (v28)
      {
        v29 = sub_E7224(v1, v4);

        return v29;
      }

      goto LABEL_69;
    case 0xAu:
      v4 = &off_1D0348;
      v6 = &off_1D0078;
      goto LABEL_26;
    case 0xDu:
      v4 = &off_1D03E8;
      v6 = &off_1D03C0;
      v5 = &off_1D0410;
      goto LABEL_26;
    case 0x10u:
      v4 = &off_1D0398;
      v6 = &off_1D0370;
      goto LABEL_26;
    case 0x1Bu:
      return v0 != 39 || v3 != 21;
    default:
      v5 = &_swiftEmptyArrayStorage;
      v6 = &_swiftEmptyArrayStorage;
      v4 = &_swiftEmptyArrayStorage;
LABEL_26:
      if (v0 != 39)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
  }
}

uint64_t sub_E9774()
{
  v1 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv3Intent_domainOntologyNode);

  v2 = sub_169644();
  v4 = v3;

  if (v2 == 0x616D6D6F43726163 && v4 == 0xEB0000000073646ELL)
  {

    return 1;
  }

  else
  {
    v6 = sub_16AE54();

    return v6 & 1;
  }
}

uint64_t sub_E98A0()
{
  v0 = sub_E7F70();
  if (v0 == 1 || v0 == 16)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_E98F0()
{
  v0 = sub_E7F94();
  result = 2;
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
      return result;
    case 7:
      result = 0;
      break;
    case 8:
      result = 1;
      break;
    default:
      result = 0x2020001u >> (8 * sub_E7EB4());
      break;
  }

  return result;
}

uint64_t sub_E99E8()
{
  sub_E7F94();
  sub_EAEB4();
  if (v5)
  {
    return 2;
  }

  sub_EAEE0(v3);
  sub_93B6C();
  if (v5)
  {
    v7 = v6 == 0xE400000000000000;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
LABEL_15:

    return 1;
  }

  sub_EAD70();
  sub_93E14();
  if (v1)
  {
    return 1;
  }

  if (sub_494D4(v0) == 0x6E4F6E727574 && v8 == 0xE600000000000000)
  {
  }

  else
  {
    sub_93E2C();
    sub_EADB8();
    if ((v2 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  sub_EAE60();
  switch(v10)
  {
    case 1:
      sub_EAC04();
      break;
    case 2:
      goto LABEL_15;
    case 3:
      sub_EAB04();
      break;
    case 4:
      goto LABEL_22;
    default:
      break;
  }

  sub_EAC9C();
  sub_EADB8();
  if (v2)
  {
    return 1;
  }

LABEL_22:
  if (sub_494D4(v0) == 0x66664F6E727574 && v11 == 0xE700000000000000)
  {
  }

  else
  {
    v13 = sub_93F70();

    if ((v13 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  sub_EAE54();
  switch(v14)
  {
    case 1:
      sub_EAC04();
      break;
    case 3:
      goto LABEL_15;
    case 4:
      goto LABEL_32;
    default:
      break;
  }

  sub_EAB18();
  v15 = sub_93FA0();

  if (v15)
  {
    return 1;
  }

LABEL_32:
  if (sub_494D4(v0) == 0x6B636F6C6E75 && v16 == 0xE600000000000000)
  {
LABEL_43:
  }

  else
  {
    v18 = sub_93E2C();

    if ((v18 & 1) == 0)
    {
      if (sub_494D4(v0) == 0x6E4F6E727574 && v19 == 0xE600000000000000)
      {
      }

      else
      {
        v21 = sub_93E2C();

        if ((v21 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      sub_EAE54();
      switch(v22)
      {
        case 1:
          sub_EAC04();
          break;
        case 3:
          goto LABEL_43;
        case 4:
          goto LABEL_49;
        default:
          break;
      }

      sub_EAB18();
      v23 = sub_93FA0();

      if (v23)
      {
        return 0;
      }

LABEL_49:
      if (sub_494D4(v0) == 0x66664F6E727574 && v24 == 0xE700000000000000)
      {
      }

      else
      {
        v26 = sub_93F70();

        if ((v26 & 1) == 0)
        {
          return 2;
        }
      }

      sub_EAE60();
      switch(v27)
      {
        case 1:
          sub_EAC04();
          break;
        case 2:
          goto LABEL_43;
        case 3:
          sub_EAB04();
          break;
        case 4:
          return 2;
        default:
          break;
      }

      v28 = sub_EAC9C();

      if (v28)
      {
        return 0;
      }

      return 2;
    }
  }

  return 0;
}

uint64_t sub_E9DD0()
{
  sub_E7F94();
  sub_EAEB4();
  if (v4)
  {
    return 0;
  }

  sub_EAEE0(v2);
  sub_93B6C();
  if (v4)
  {
    v6 = v5 == 0xE400000000000000;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    goto LABEL_14;
  }

  sub_EAD70();
  sub_93E14();
  if ((v1 & 1) == 0)
  {
    sub_494D4(v0);
    sub_93B6C();
    if (v4)
    {
      v8 = v7 == 0xE500000000000000;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      sub_93BC4();
      sub_16AE54();
      sub_93E14();
      return 2;
    }

LABEL_14:
  }

  return 2;
}

Class sub_EA21C()
{
  sub_E7F94();
  sub_EAEB4();
  if (v6)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_E7F70();
  if (v2 == 39)
  {
    return 0;
  }

  v4 = v2;
  sub_494D4(v1);
  sub_93B6C();
  v6 = v6 && v5 == 0xEB000000006E6F69;
  if (v6)
  {
  }

  else
  {
    sub_93BC4();
    v7 = sub_16AE54();

    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (sub_77154(v4) == 7496035 && v8 == 0xE300000000000000)
  {

    goto LABEL_18;
  }

  v10 = sub_EAD94();

  if (v10)
  {
LABEL_18:
    v11 = 1;
    goto LABEL_19;
  }

LABEL_16:
  v11 = 0;
LABEL_19:
  sub_76D10();
  return sub_16AAA4(v11).super.super.isa;
}

Class sub_EA354()
{
  v0 = sub_E7F94();
  v1 = 0;
  result = 0;
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
      return result;
    case 7:
      goto LABEL_6;
    case 8:
      v1 = 1;
      goto LABEL_6;
    default:
      v3 = sub_E7EB4();
      if ((v3 - 2) < 2)
      {
        return 0;
      }

      v1 = v3 == 0;
LABEL_6:
      sub_76D10();
      return sub_16AAA4(v1).super.super.isa;
  }
}

Class sub_EA420()
{
  sub_E7F94();
  sub_EAEB4();
  if (v6)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_E7F70();
  if (v2 == 39)
  {
    return 0;
  }

  v4 = v2;
  sub_494D4(v1);
  sub_93B6C();
  v6 = v6 && v5 == 0xE600000000000000;
  if (v6 || ((sub_93BC4(), sub_93E2C(), sub_93E14(), sub_EADD0(), sub_93B6C(), v6) ? (v8 = v7 == 0xE700000000000000) : (v8 = 0), v8))
  {
  }

  else
  {
    sub_93BC4();
    v9 = sub_93F70();

    if ((v9 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (sub_77154(v4) == 7496035 && v10 == 0xE300000000000000)
  {

    goto LABEL_22;
  }

  v12 = sub_EAD94();

  if (v12)
  {
LABEL_22:
    v13 = 1;
    goto LABEL_23;
  }

LABEL_20:
  v13 = 0;
LABEL_23:
  sub_76D10();
  return sub_16AAA4(v13).super.super.isa;
}

uint64_t sub_EA588()
{
  sub_5758(&qword_1E76A0, &qword_172B00);
  sub_3CFE4();

  return sub_5370(v0, v1, v2, v3);
}

uint64_t sub_EA668@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_E7EB4();
  if ((v2 - 1) < 2)
  {
    v3 = &enum case for ConfirmationResponse.rejected(_:);
LABEL_5:
    v4 = *v3;
    v5 = sub_169004();
    sub_10AFC(v5);
    (*(v6 + 104))(a1, v4, v5);
    v7 = a1;
    v8 = 0;
    v9 = 1;
    v10 = v5;
    goto LABEL_7;
  }

  if (!v2)
  {
    v3 = &enum case for ConfirmationResponse.confirmed(_:);
    goto LABEL_5;
  }

  sub_169004();
  sub_3CFE4();
LABEL_7:

  return sub_5370(v7, v8, v9, v10);
}

uint64_t sub_EA730(unsigned int *a1)
{
  v2 = sub_5758(&qword_1E6048, &qword_16D890);
  sub_D414(v2);
  v4 = *(v3 + 64);
  sub_CA380();
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = sub_169004();
  v9 = sub_9F48(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v9);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  sub_EA668(v7);
  sub_EAEC0(v7);
  if (v19)
  {
    sub_109A0(v7, &qword_1E6048, &qword_16D890);
    v20 = 0;
  }

  else
  {
    (*(v11 + 32))(v18, v7, v8);
    (*(v11 + 104))(v16, *a1, v8);
    v20 = sub_168FF4();
    v21 = *(v11 + 8);
    v21(v16, v8);
    v21(v18, v8);
  }

  return v20 & 1;
}

uint64_t sub_EAA28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_37130(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_EAA7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_EAB2C()
{

  return sub_16AE54();
}

uint64_t sub_EAB50()
{

  return sub_16AE54();
}

uint64_t sub_EABE4()
{

  return swift_once();
}

uint64_t sub_EAC80()
{

  return sub_16AE54();
}

uint64_t sub_EAC9C()
{

  return sub_16AE54();
}

uint64_t sub_EAD28()
{
  result = *(v0 - 320);
  v2 = *(v0 - 232);
  v3 = *(v0 - 256);
  return result;
}

uint64_t sub_EAD40(unint64_t *a1)
{

  return sub_EAA28(a1, v1, v2);
}

uint64_t sub_EAD58()
{

  return sub_5758(v0, v1);
}

uint64_t sub_EAD70()
{

  return sub_16AE54();
}

uint64_t sub_EAD94()
{

  return sub_16AE54();
}

uint64_t sub_EADB8()
{
}

uint64_t sub_EADD0()
{

  return sub_494D4(v0);
}

uint64_t sub_EAEE0(char a1)
{
  sub_E7FB8();

  return sub_494D4(a1);
}

uint64_t sub_EAF2C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_5758(&qword_1EA368, &unk_1741F0);
    v9 = &a1[*(a3 + 24)];

    return sub_9E2C(v9, a2, v8);
  }
}

_BYTE *sub_EAFCC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v7 = sub_5758(&qword_1EA368, &unk_1741F0);
    v8 = &v5[*(a4 + 24)];

    return sub_5370(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CarTire()
{
  result = qword_1EBD18;
  if (!qword_1EBD18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_EB0A0()
{
  sub_EB124();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_EB124()
{
  if (!qword_1EBD28)
  {
    sub_B9C38();
    v0 = sub_168354();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD28);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for TirePressureState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0xEB248);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_EB280(uint64_t result)
{
  if (result >= 6u)
  {
    return 6;
  }

  else
  {
    return result;
  }
}

uint64_t sub_EB2AC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_EB280(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_EB2E8()
{
  result = qword_1EBD60;
  if (!qword_1EBD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD60);
  }

  return result;
}

uint64_t sub_EB33C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_EB35C, 0, 0);
}

uint64_t sub_EB35C()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v2[3] = type metadata accessor for MockDigitalCarKeySession();
  v2[4] = &off_1DA428;
  *v2 = v3;

  swift_errorRetain();
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_EB40C@<X0>(void *a1@<X8>)
{
  if (*(v1 + 80))
  {
    v2 = *(v1 + 80);
    swift_willThrow();
    return swift_errorRetain();
  }

  else
  {
    v5 = *(v1 + 88);
    a1[3] = type metadata accessor for MockDigitalCarKeyAssertion();
    a1[4] = &off_1DA6B8;
    *a1 = v5;
  }
}

void *sub_EB480()
{
  sub_EB6C8((v0 + 2));
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  return v0;
}

uint64_t sub_EB4C8()
{
  sub_EB480();

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_EB520(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_EB658(a1, v3 + 16);
  return swift_endAccess();
}

uint64_t sub_EB574(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_4D714;

  return sub_EB33C(a1);
}

uint64_t sub_EB658(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA1E0, &qword_173FE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_EB6C8(uint64_t a1)
{
  v2 = sub_5758(&qword_1EA1E0, &qword_173FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_EB730(uint64_t result)
{
  *(v1 + 16) = 1;
  *(v1 + 17) = result & 1;
  return result;
}

uint64_t sub_EB744(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_EB758()
{
  v1 = v0[2];
  v2 = v0[3];
  *(v2 + 73) = 1;
  v3 = v1[1];
  v4 = *(v2 + 88);
  *(v2 + 80) = *v1;
  *(v2 + 88) = v3;

  if (*(v2 + 104))
  {
    v5 = *(v2 + 104);
    swift_willThrow();
    swift_errorRetain();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_EB7F4(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 40) = a3;
  *(v4 + 16) = a1;
  return sub_D2B0();
}

uint64_t sub_EB810()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  *(v2 + 72) = 1;
  v5 = *(v2 + 88);
  *(v2 + 80) = v4;
  *(v2 + 88) = v1;

  *(v2 + 96) = v3;
  *(v2 + 100) = 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_EB8B8()
{
  v1 = *(*(v0 + 16) + 64);
  v4 = *(v0 + 8);

  return v4(v2);
}

void *sub_EB940()
{
  sub_EBC5C((v0 + 3));
  v1 = v0[8];

  v2 = v0[11];

  v3 = v0[13];

  return v0;
}

uint64_t sub_EB978()
{
  sub_EB940();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t sub_EB9D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_4D8D0;

  return sub_EB928();
}

uint64_t sub_EBA5C(uint64_t a1, uint64_t a2, int a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_EBCC4;

  return sub_EB7F4(a1, a2, a3);
}

uint64_t sub_EBB0C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_EBCC4;

  return sub_EB744(a1);
}

uint64_t sub_EBBA4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_31D84;

  return sub_EB8A4();
}

uint64_t sub_EBC5C(uint64_t a1)
{
  v2 = sub_5758(&qword_1EC0B8, &unk_177290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_EBCC8()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 96);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      sub_48134();
    }

    v4 = sub_ECCCC(v3);
    v5 = *(v0 + 96);
    *(v0 + 96) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_EBD4C()
{
  v0 = sub_1693E4();
  sub_37404();
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  sub_A138();
  v8 = (v7 - v6);
  sub_169384();
  sub_8F624();
  sub_86E4(v8, &_swiftEmptySetSingleton, v13);

  (*(v2 + 8))(v8, v0);
  v9 = v13[3];
  sub_57A80(v13);
  if (v9)
  {
    return sub_168C64();
  }

  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v11 = sub_16A584();
  sub_9DA0(v11, qword_1E65C0);
  v12 = sub_16A9A4();
  sub_386D8(v12, 0x8000uLL, 0xD0000000000000A1, 0x800000000018C690, 0xD000000000000016, 0x800000000017FD50, 30, 0xD00000000000001FLL, 0x800000000017F910);
  return sub_168C74();
}

uint64_t sub_EBF18()
{
  sub_D2DC();
  v0[2] = v1;
  v2 = sub_1693E4();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_EBFD4, 0, 0);
}

uint64_t sub_EBFD4()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_16A524();
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  v6 = sub_D55F8(v1);
  v7 = v0[5];
  if (v6)
  {
    v8 = v6;
    v9 = v0[5];

    v10 = v0[1];

    return v10(v8);
  }

  else
  {
    v13 = v0[2];
    v12 = v0[3];
    type metadata accessor for CarCommandsError();
    sub_ED0BC(&qword_1E92F0, 255, type metadata accessor for CarCommandsError);
    swift_allocError();
    v5(v14, v13, v12);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_EC180()
{
  v0 = sub_16A164();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_A138();
  v2 = sub_5758(&qword_1EC1F0, &qword_177490);
  sub_37404();
  v4 = v3;
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v7);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21[-1] - v11;
  if (qword_1E5908 != -1)
  {
    sub_48134();
  }

  v13 = qword_1F0C70;
  v21[3] = type metadata accessor for WalletService();
  v21[4] = &off_1D7C28;
  v21[0] = v13;
  type metadata accessor for CarCommandsCATs();

  sub_16A154();
  sub_16A094();
  sub_16383C();

  sub_D13C(v21);
  sub_1693F4();
  type metadata accessor for FeatureFlagHelper();
  v14 = swift_allocObject();
  v15 = sub_168E34();
  sub_483C8(v15);

  sub_168E24();
  type metadata accessor for SnippetManager();
  *(swift_allocObject() + 16) = 0;
  v16 = sub_ECE08(v21, v14);

  v21[0] = v16;
  type metadata accessor for GetSignalActivationStatusHandleIntentFlowStrategy();
  sub_ED0BC(&qword_1EC1F8, 255, type metadata accessor for GetSignalActivationStatusHandleIntentFlowStrategy);
  sub_1687E4();

  sub_168884();
  (*(v4 + 16))(v10, v12, v2);
  v17 = sub_5758(&qword_1EC200, &qword_177498);
  sub_483C8(v17);
  v18 = sub_168914();
  (*(v4 + 8))(v12, v2);
  return v18;
}

uint64_t sub_EC4A4(uint64_t a1, uint64_t a2)
{
  result = sub_ED0BC(&qword_1EC1D8, a2, type metadata accessor for GetSignalActivationStatusRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

void *sub_EC4FC()
{
  v1 = sub_16A164();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  sub_A138();
  v3 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v4 = sub_16A094();
  v0[5] = v3;
  v0[6] = &off_1DA7E8;
  v0[2] = v4;
  v5 = sub_168E34();
  sub_483C8(v5);
  v6 = sub_168E24();
  v0[10] = v5;
  v0[11] = &protocol witness table for ResponseFactory;
  v0[7] = v6;
  v0[12] = 0;
  return v0;
}

uint64_t sub_EC5E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_EBF18();
}

uint64_t sub_EC674()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F850;

  return sub_40600();
}

uint64_t sub_EC74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  SignalActivationStatusRCHFlowStrategy = type metadata accessor for GetSignalActivationStatusRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, SignalActivationStatusRCHFlowStrategy, a5);
}

uint64_t sub_EC818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  SignalActivationStatusRCHFlowStrategy = type metadata accessor for GetSignalActivationStatusRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, SignalActivationStatusRCHFlowStrategy, a5);
}

uint64_t sub_EC8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  SignalActivationStatusRCHFlowStrategy = type metadata accessor for GetSignalActivationStatusRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, SignalActivationStatusRCHFlowStrategy, a5);
}

uint64_t sub_EC9B0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F428;

  return sub_43114();
}

uint64_t sub_ECA88()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_79DCC;

  return sub_45FF4();
}

uint64_t sub_ECC1C(uint64_t a1, uint64_t a2)
{
  result = sub_ED0BC(&qword_1EC1E0, a2, type metadata accessor for GetSignalActivationStatusRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_ECC74(uint64_t a1, uint64_t a2)
{
  result = sub_ED0BC(&qword_1EACA0, a2, type metadata accessor for GetSignalActivationStatusRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

id sub_ECCCC(uint64_t a1)
{
  v2 = type metadata accessor for WalletService();
  v17[3] = v2;
  v17[4] = &off_1D7C28;
  v17[0] = a1;
  v3 = type metadata accessor for SEGetSignalActivationStatusIntentHandler();
  v4 = objc_allocWithZone(v3);
  sub_2F8D0(v17, v2);
  sub_37404();
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  sub_A138();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8);
  v12 = *v10;
  v16[3] = v2;
  v16[4] = &off_1D7C28;
  v16[0] = v12;
  sub_10824(v16, v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40SEGetSignalActivationStatusIntentHandler_carKeyService);
  v15.receiver = v4;
  v15.super_class = v3;
  v13 = objc_msgSendSuper2(&v15, "init");
  sub_D13C(v16);
  sub_D13C(v17);
  return v13;
}

uint64_t sub_ECE08(uint64_t *a1, uint64_t a2)
{
  v4 = sub_16A164();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for FeatureFlagHelper();
  v34[3] = v6;
  v34[4] = &off_1D9AF0;
  v34[0] = a2;
  SignalActivationStatusHandleIntentFlowStrategy = type metadata accessor for GetSignalActivationStatusHandleIntentFlowStrategy();
  v8 = *(SignalActivationStatusHandleIntentFlowStrategy + 48);
  v9 = *(SignalActivationStatusHandleIntentFlowStrategy + 52);
  v10 = swift_allocObject();
  v11 = sub_2F8D0(v34, v6);
  v12 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v33[3] = v6;
  v33[4] = &off_1D9AF0;
  v33[0] = v16;
  v17 = (v10 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin49GetSignalActivationStatusHandleIntentFlowStrategy_commonPatterns);
  v18 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v19 = sub_16A094();
  v17[3] = v18;
  v17[4] = &off_1DA7E8;
  *v17 = v19;
  *(v10 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin49GetSignalActivationStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(a1, v32);
  sub_10824(v33, v30);
  v20 = v31;
  v21 = sub_2F8D0(v30, v31);
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  sub_1668CC();
  v28 = v27;
  sub_D13C(a1);
  sub_D13C(v33);
  sub_D13C(v30);
  sub_D13C(v34);
  return v28;
}

uint64_t sub_ED0BC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_ED104(char *a1)
{
  v3 = type metadata accessor for CarCommandsError();
  v4 = sub_10AFC(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_A138();
  v9 = v8 - v7;
  sub_86E4(a1, &_swiftEmptySetSingleton, v32);
  if (v32[3])
  {
    sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&qword_1EC210, &qword_1774B8);
    if (swift_dynamicCast())
    {
      if (*(&v34 + 1))
      {
        sub_D124(&v33, v36);
        v10 = [objc_allocWithZone(v1) init];
        v12 = v37;
        v11 = v38;
        sub_D084(v36, v37);
        v13 = *(v11 + 8);
        v14 = *(v13 + 8);
        v15 = v10;
        v14(v12, v13);
        if (v16)
        {
          sub_95578();
          v17 = sub_99BFC();
        }

        else
        {
          v17 = 0;
        }

        [v15 setCarName:v17];

        v26 = v37;
        v27 = v38;
        sub_D084(v36, v37);
        v28 = (*(v27 + 16))(v26, v27);
        if (v29)
        {
          v28 = [v15 trunkStatus];
        }

        [v15 setTrunkStatus:v28];

        v30 = sub_1693E4();
        sub_10AFC(v30);
        (*(v31 + 8))(a1);
        sub_D13C(v36);
        return v15;
      }
    }

    else
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
    }
  }

  else
  {
    sub_109A0(v32, &qword_1E5F80, &unk_16E7E0);
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
  }

  sub_109A0(&v33, &qword_1EC208, &qword_1774B0);
  v18 = sub_1693E4();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v9, a1, v18);
  swift_storeEnumTagMultiPayload();
  sub_11D28();
  swift_allocError();
  sub_548D0(v9, v20);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v21 = sub_16A584();
  sub_9DA0(v21, qword_1E65C0);
  v22 = sub_16A9A4();
  swift_getErrorValue();
  v23 = sub_16AEB4();
  sub_386D8(v22, 0x1000uLL, 0xD0000000000000A1, 0x800000000018C740, 0x293A5F2874696E69, 0xE800000000000000, 69, v23, v24);

  (*(v19 + 8))(a1, v18);
  sub_5A09C(v9);
  return 0;
}

void *sub_ED4F4(char *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for CarCommandsError();
  v7 = sub_10AFC(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_A138();
  v12 = (v11 - v10);
  if ((a2 & 0xF0) != 0x60)
  {
    LOBYTE(v43[0]) = a2;
    *v12 = sub_16A694();
    v12[1] = v17;
    swift_storeEnumTagMultiPayload();
    sub_11D28();
    sub_5A144();
    sub_548D0(v12, v18);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v19 = sub_16A584();
    sub_9DA0(v19, qword_1E65C0);
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v20 = sub_EDC04();
    v27 = 18;
    goto LABEL_16;
  }

  sub_86E4(a1, &_swiftEmptySetSingleton, v39);
  if (!v39[3])
  {
    sub_109A0(v39, &qword_1E5F80, &unk_16E7E0);
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
    goto LABEL_13;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1EC210, &qword_1774B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    goto LABEL_13;
  }

  if (!*(&v41 + 1))
  {
LABEL_13:
    sub_109A0(&v40, &qword_1EC208, &qword_1774B0);
    v28 = sub_1693E4();
    sub_10AFC(v28);
    (*(v29 + 16))(v12, a1);
    swift_storeEnumTagMultiPayload();
    sub_11D28();
    sub_5A144();
    sub_548D0(v12, v30);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v31 = sub_16A584();
    sub_9DA0(v31, qword_1E65C0);
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v20 = sub_EDC04();
    v27 = 24;
LABEL_16:
    sub_386D8(v20, v21, v22, v23, v24, v25, v27, v26, v38);

    sub_5A09C(v12);
    v32 = v2;
    return v3;
  }

  sub_D124(&v40, v43);
  v13 = v44;
  v14 = v45;
  sub_D084(v43, v44);
  if (a2)
  {
    (*(*(v14 + 8) + 8))(v13);
    if (v15)
    {
      sub_95578();
      v16 = sub_99BFC();
    }

    else
    {
      v16 = [v2 carName];
    }

    v36 = v16;
    [v3 setCarName:v16];
  }

  else
  {
    v34 = (*(v14 + 16))(v13, v14);
    if (v35)
    {
      v34 = [v2 trunkStatus];
    }

    [v2 setTrunkStatus:v34];
  }

  v37 = v3;
  sub_D13C(v43);
  return v3;
}

id sub_ED900(uint64_t a1, char a2)
{
  v4 = type metadata accessor for CarCommandsError();
  v5 = sub_10AFC(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_A138();
  v10 = (v9 - v8);
  if ((a2 & 0xF0) == 0x60)
  {
    if (a2)
    {
      sub_16138(a1, v24);
      sub_95578();
      if (sub_5B33C())
      {
        v11 = v22;
        v12 = v23;
      }

      else
      {
        v20 = [v22 carName];
        v11 = v22;
        v12 = v20;
      }

      [v11 setCarName:v12];
    }

    else
    {
      sub_16138(a1, v24);
      if (sub_5B33C())
      {
        v19 = v23;
      }

      else
      {
        v19 = [v22 trunkStatus];
      }

      [v22 setTrunkStatus:v19];
    }
  }

  else
  {
    v24[0] = a2;
    *v10 = sub_16A694();
    v10[1] = v13;
    swift_storeEnumTagMultiPayload();
    sub_11D28();
    sub_5A144();
    sub_548D0(v10, v14);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v15 = sub_16A584();
    sub_9DA0(v15, qword_1E65C0);
    v16 = sub_16A9A4();
    swift_getErrorValue();
    v17 = sub_16AEB4();
    sub_386D8(v16, 0x1000uLL, 0xD0000000000000A1, 0x800000000018C740, 0xD000000000000018, 0x8000000000183260, 41, v17, v18);

    sub_5A09C(v10);
  }

  return v22;
}

unint64_t sub_EDB68@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0xF0) != 0x60)
  {
LABEL_5:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  if (result)
  {
    result = [v2 carName];
    if (result)
    {
      v4 = result;
      result = sub_95578();
      *(a2 + 24) = result;
      *a2 = v4;
      return result;
    }

    goto LABEL_5;
  }

  result = [v2 trunkStatus];
  *(a2 + 24) = &type metadata for IntentTrunkStatus;
  *a2 = result;
  return result;
}

uint64_t SetCarPlayClimateIntentHandler.handle(intent:)()
{
  sub_D2DC();
  v1[44] = v2;
  v1[45] = v0;
  v3 = sub_5758(&qword_1E76A0, &qword_172B00);
  v1[46] = v3;
  v4 = *(v3 - 8);
  v1[47] = v4;
  v5 = *(v4 + 64) + 15;
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v6 = sub_5758(&qword_1EA178, &unk_1774D0);
  v1[51] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();

  return _swift_task_switch(sub_EDD6C, 0, 0);
}

uint64_t sub_EDD6C()
{
  v1 = *(v0 + 352);
  sub_37474();
  sub_16ACF4(19);

  v2 = [v1 description];
  v3 = sub_16A664();
  v5 = v4;

  v26._countAndFlagsBits = v3;
  v26._object = v5;
  sub_16A744(v26);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v6 = *(v0 + 352);
  v7 = sub_16A584();
  *(v0 + 440) = sub_9DA0(v7, qword_1E65C0);
  sub_16A9A4();
  sub_F0330();
  sub_386D8(v8, v9, v10, v11, 0x6928656C646E6168, 0xEF293A746E65746ELL, 26, 0xD000000000000011, 0x800000000018C890);

  v12 = [v6 enableClimateControl];
  if (v12)
  {
    v13 = v12;
    v14 = *(v0 + 360);
    *(v0 + 481) = [v12 BOOLValue];

    v15 = *sub_D084((v14 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetCarPlayClimateIntentHandler_service), *(v14 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetCarPlayClimateIntentHandler_service + 24));
    v16 = swift_task_alloc();
    *(v0 + 448) = v16;
    *v16 = v0;
    v16[1] = sub_EE040;

    return sub_13AB58(v0 + 88, 1);
  }

  else
  {
    sub_16A9A4();
    sub_F0330();
    sub_386D8(v18, v19, v20, v21, 0x6928656C646E6168, 0xEF293A746E65746ELL, 29, v22, 0x800000000018CA40);
    sub_16A424();
    sub_F0370();
    sub_F033C();

    v23 = sub_120EC();

    return v24(v23);
  }
}

uint64_t sub_EE040()
{
  sub_D2DC();
  sub_D358();
  v3 = *(v2 + 448);
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 456) = v0;

  if (v0)
  {
    v7 = sub_EE370;
  }

  else
  {
    v7 = sub_EE144;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_EE144()
{
  v1 = v0[14];
  v2 = v0[15];
  sub_30A9C(v0 + 11, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[58] = v5;
  *v5 = v0;
  v5[1] = sub_EE26C;

  return (v7)(v0 + 21, v1, v2);
}

uint64_t sub_EE26C()
{
  sub_D2DC();
  sub_D358();
  v3 = *(v2 + 464);
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 472) = v0;

  if (v0)
  {
    v7 = sub_EEEA0;
  }

  else
  {
    v7 = sub_EE488;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_EE370()
{
  v1 = v0[57];
  v2 = v0[55];
  swift_errorRetain();
  sub_16A9A4();
  sub_F03EC();
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[38];
  sub_16AEB4();
  v17 = v6;
  sub_1207C();
  sub_F0330();
  sub_386D8(v7, v8, v9, v10, v11, v12, 92, v13, v17);

  sub_16A424();
  sub_F0370();
  sub_67C60();

  sub_F033C();

  v14 = sub_120EC();

  return v15(v14);
}

uint64_t sub_EE488()
{
  sub_F035C();
  if (!*(v0 + 192))
  {
    v18 = *(v0 + 440);
    sub_D188(v0 + 168, &qword_1E83D0, &qword_174EE0);
    sub_16A9A4();
    sub_F0330();
    sub_386D8(v19, v20, v21, v22, 0x6928656C646E6168, v1, 36, v23, 0x800000000018C8B0);
    sub_16A424();
    sub_16A414();
LABEL_13:
    sub_D13C((v0 + 88));
    goto LABEL_33;
  }

  v2 = *(v0 + 360);
  sub_D124((v0 + 168), v0 + 128);
  sub_30A9C(&v2[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetCarPlayClimateIntentHandler_serviceAvailabilityGate], *&v2[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetCarPlayClimateIntentHandler_serviceAvailabilityGate + 24]);
  sub_5758(&qword_1E83E0, &unk_170410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_16D9A0;
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = sub_D084((v0 + 128), v5);
  *(inited + 56) = v5;
  *(inited + 64) = *(v4 + 8);
  v7 = sub_10888((inited + 32));
  v8.n128_f64[0] = (*(*(v5 - 8) + 16))(v7, v6, v5);
  v9 = sub_948E4(inited, *v2, v8);
  swift_setDeallocating();
  sub_EFFF4();
  v10 = v9[2];

  if (!v10)
  {
    v24 = *(v0 + 440);
    sub_16A9A4();
    sub_F0330();
    sub_386D8(v25, v26, v27, v28, 0x6928656C646E6168, v1, 41, v29, 0x800000000018C9F0);
    sub_16A424();
    sub_16A414();
    sub_D13C((v0 + 128));
    goto LABEL_13;
  }

  v11 = *(v0 + 481);
  v12 = *(v0 + 352);
  sub_37474();
  sub_16ACF4(139);
  *(v0 + 312) = v108;
  *(v0 + 320) = v109;
  sub_F03E0();
  sub_16A744(v111);
  if (v11)
  {
    v13._countAndFlagsBits = 1702195828;
  }

  else
  {
    v13._countAndFlagsBits = 0x65736C6166;
  }

  if (v11)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  v13._object = v14;
  sub_16A744(v13);

  v112._countAndFlagsBits = 0x656C62616E65202CLL;
  v112._object = 0xEC000000203A4341;
  sub_16A744(v112);
  v15 = [v12 enableAirConditioner];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 BOOLValue];
  }

  else
  {
    v17 = 2;
  }

  v30 = *(v0 + 352);
  *(v0 + 480) = v17;
  sub_5758(&qword_1EC228, &unk_177DC0);
  v113._countAndFlagsBits = sub_16A694();
  sub_16A744(v113);

  sub_F03E0();
  v114._countAndFlagsBits = 0xD000000000000015;
  sub_16A744(v114);
  v31 = [v30 targetTemperature];
  if (v31)
  {
    v32 = v31;
    v33 = v1;
    v34 = *(v0 + 432);
    sub_55158();
    sub_1682E4();

    v35 = 0;
  }

  else
  {
    v33 = v1;
    v35 = 1;
  }

  v36 = *(v0 + 440);
  v37 = *(v0 + 408);
  v38 = *(v0 + 352);
  v39 = "mandsIntent.swift";
  sub_5370(*(v0 + 432), v35, 1, *(v0 + 368));
  v115._countAndFlagsBits = sub_16A694();
  sub_16A744(v115);

  sub_F03E0();
  sub_16A744(v116);
  *(v0 + 336) = [v38 relativeTemperatureChange];
  sub_16AD84();
  sub_F03E0();
  v117._countAndFlagsBits = 0xD000000000000015;
  sub_16A744(v117);
  *(v0 + 344) = [v38 extremeTemperatureChange];
  sub_16AD84();
  v118._countAndFlagsBits = 0x74616D696C63202CLL;
  v118._object = 0xEF203A656E6F5A65;
  sub_16A744(v118);
  [v38 climateZone];
  v119._countAndFlagsBits = sub_AFE80();
  sub_16A744(v119);

  v40 = *(v0 + 312);
  v41 = *(v0 + 320);
  sub_16A9A4();
  sub_F0330();
  sub_386D8(v42, v43, v44, v45, 0x6928656C646E6168, v33, 44, v40, v41);

  if ((sub_EFB60((v0 + 128)) & 1) == 0 && ![*(v0 + 352) climateZone])
  {
    [*(v0 + 352) setClimateZone:2];
  }

  v46 = *(v0 + 352);
  v47 = sub_EFC28(v46, (v0 + 128));
  if ([v46 relativeTemperatureChange] || objc_msgSend(*(v0 + 352), "extremeTemperatureChange"))
  {
    v48 = *(v0 + 472);
    v49 = *(v0 + 440);
    v50 = *(v0 + 416);
    v51 = *(v0 + 424);
    v38 = *(v0 + 368);
    v39 = *(v0 + 352);
    sub_16A9A4();
    sub_F0318();
    sub_1207C();
    sub_386D8(v52, v53, v54, v55, v56, v57, 53, v58, 0x800000000018C980);
    v60 = *(v0 + 152);
    v59 = *(v0 + 160);
    sub_30A9C((v0 + 128), v60);
    (*(v59 + 96))(1, v60, v59);
    sub_5370(v51, 1, 1, v38);
    sub_EF334(v47, v51, v39);

    sub_F0054(v51, v50);
    v61 = sub_9E2C(v50, 1, v38);
    v62 = *(v0 + 416);
    if (v61 == 1)
    {
      sub_D188(*(v0 + 416), &qword_1EA178, &unk_1774D0);
    }

    else
    {
      v63 = *(v0 + 400);
      v64 = *(v0 + 368);
      v65 = *(v0 + 376);
      v66 = *(v0 + 352);
      (*(v65 + 32))(v63, *(v0 + 416), v64);
      v67 = sub_1682D4();
      v69 = v68;
      [v66 setTargetTemperature:{v68, v67}];

      v70 = *(v65 + 8);
      v39 = (v65 + 8);
      v70(v63, v64);
    }

    sub_D188(*(v0 + 424), &qword_1EA178, &unk_1774D0);
  }

  else
  {
    v89 = [*(v0 + 352) targetTemperature];
    if (!v89)
    {
      v98 = *(v0 + 481);
      v99 = *(v0 + 440);

      sub_16A9A4();
      sub_F0318();
      sub_F03B8();
      sub_F035C();
      sub_386D8(v100, v101, v102, v103, v104, "mandsIntent.swift", 78, v105, 0x800000000018C9D0);
      v106 = *(v0 + 152);
      v107 = *(v0 + 160);
      sub_30A9C((v0 + 128), v106);
      (*(v107 + 96))(v98, v106, v107);
      goto LABEL_28;
    }

    v90 = v89;
    v91 = *(v0 + 472);
    v92 = *(v0 + 384);
    v38 = *(v0 + 392);
    v93 = *(v0 + 368);
    v94 = *(v0 + 376);
    v39 = *(v0 + 352);
    sub_55158();
    sub_1682E4();

    (*(v94 + 32))(v38, v92, v93);
    v95 = *(v0 + 152);
    v96 = *(v0 + 160);
    sub_30A9C((v0 + 128), v95);
    (*(v96 + 96))(1, v95, v96);
    v97 = swift_task_alloc();
    *(v97 + 16) = v38;
    *(v97 + 24) = v39;
    sub_EF3A8(sub_F00C4, v97, v47);

    (*(v94 + 8))(v38, v93);
  }

  sub_F035C();
  sub_F03B8();
LABEL_28:
  v71 = [*(v0 + 352) enableAirConditioner];
  if (v71)
  {
    v72 = v71;
    v73 = [v71 BOOLValue];

    v74 = *(v0 + 160);
    sub_D084((v0 + 128), *(v0 + 152));
    v75 = *(v74 + 40);
    v76 = sub_67C60();
    v77(v76, v74);
    if (*(v0 + 272))
    {
      v78 = *(v0 + 440);
      sub_D124((v0 + 248), v0 + 208);
      sub_16A9A4();
      sub_F0318();
      sub_386D8(v79, v80, v81, v82, v38, v39, 86, v83, 0x800000000018C9B0);
      v84 = *(v0 + 232);
      v85 = *(v0 + 240);
      sub_30A9C((v0 + 208), v84);
      (*(v85 + 40))(v73, v84, v85);
      sub_D13C((v0 + 208));
    }

    else
    {
      sub_D188(v0 + 248, &qword_1EAC28, &qword_1774E0);
    }
  }

  sub_D13C((v0 + 128));
  sub_D13C((v0 + 88));
  sub_16A424();
  sub_16A414();
LABEL_33:
  sub_F033C();

  v86 = sub_120EC();

  return v87(v86);
}

uint64_t sub_EEEA0()
{
  sub_D13C(v0 + 11);
  v1 = v0[59];
  v2 = v0[55];
  swift_errorRetain();
  sub_16A9A4();
  sub_F03EC();
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[38];
  sub_16AEB4();
  v17 = v6;
  sub_1207C();
  sub_F0330();
  sub_386D8(v7, v8, v9, v10, v11, v12, 92, v13, v17);

  sub_16A424();
  sub_F0370();
  sub_67C60();

  sub_F033C();

  v14 = sub_120EC();

  return v15(v14);
}

uint64_t sub_EEFC0(void *a1, uint64_t a2, void *a3)
{
  v32 = a2;
  v31 = sub_5758(&qword_1EA178, &unk_1774D0);
  v5 = *(*(v31 - 8) + 64);
  v6 = __chkstk_darwin(v31);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v30 - v10;
  __chkstk_darwin(v9);
  v13 = v30 - v12;
  v15 = a1[3];
  v14 = a1[4];
  v30[1] = sub_D084(a1, v15);
  v16 = [a3 relativeTemperatureChange];
  v17 = [a3 targetTemperature];
  if (v17)
  {
    v18 = v17;
    sub_55158();
    sub_1682E4();

    v19 = sub_5758(&qword_1E76A0, &qword_172B00);
    v20 = v11;
    v21 = 0;
  }

  else
  {
    v19 = sub_5758(&qword_1E76A0, &qword_172B00);
    v20 = v11;
    v21 = 1;
  }

  sub_5370(v20, v21, 1, v19);
  (*(v14 + 32))(v16, v11, [a3 extremeTemperatureChange], v15, v14);
  sub_D188(v11, &qword_1EA178, &unk_1774D0);
  v22 = v32;
  sub_F02A4(v13, v32);
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_16ACF4(28);

  v33 = 0x2064657461647055;
  v34 = 0xE800000000000000;
  v23 = a1[3];
  v24 = a1[4];
  sub_D084(a1, v23);
  v35._countAndFlagsBits = (*(v24 + 16))(v23, v24);
  sub_16A744(v35);

  v36._object = 0x800000000018CBD0;
  v36._countAndFlagsBits = 0xD000000000000010;
  sub_16A744(v36);
  sub_F0054(v22, v8);
  v37._countAndFlagsBits = sub_16A694();
  sub_16A744(v37);

  v26 = v33;
  v25 = v34;
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v27 = sub_16A584();
  sub_9DA0(v27, qword_1E65C0);
  v28 = sub_16A9A4();
  sub_386D8(v28, 0x4000uLL, 0xD00000000000009ELL, 0x800000000018C7F0, 0x6928656C646E6168, 0xEF293A746E65746ELL, 62, v26, v25);
}

void sub_EF334(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 16);
  v7 = (a1 + 32);
  v8 = v6 + 1;
  do
  {
    if (!--v8)
    {
      break;
    }

    v9 = v7 + 5;
    sub_EEFC0(v7, a2, a3);
    v7 = v9;
  }

  while (!v3);
}

uint64_t sub_EF3A8(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  result = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = result + 40;
    a1();
    result = v7;
  }

  while (!v3);
  return result;
}

uint64_t sub_EF3FC(void *a1, uint64_t a2, void *a3)
{
  v23 = a3;
  v5 = sub_5758(&qword_1E76A0, &qword_172B00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_16ACF4(29);

  v24 = 0x676E697461647055;
  v25 = 0xE900000000000020;
  v10 = a1[3];
  v11 = a1[4];
  sub_D084(a1, v10);
  v26._countAndFlagsBits = (*(v11 + 16))(v10, v11);
  sub_16A744(v26);

  v27._object = 0x800000000018CBD0;
  v27._countAndFlagsBits = 0xD000000000000010;
  sub_16A744(v27);
  sub_F0240();
  v28._countAndFlagsBits = sub_16AE24();
  sub_16A744(v28);

  v12 = v24;
  v13 = v25;
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v14 = sub_16A584();
  sub_9DA0(v14, qword_1E65C0);
  v15 = sub_16A9A4();
  sub_386D8(v15, 0x4000uLL, 0xD00000000000009ELL, 0x800000000018C7F0, 0x6928656C646E6168, 0xEF293A746E65746ELL, 73, v12, v13);

  v16 = a1[3];
  v17 = a1[4];
  sub_D084(a1, v16);
  (*(v17 + 24))(a2, v16, v17);
  v18 = sub_1682D4();
  v20 = v19;
  [v23 setTargetTemperature:{v19, v18}];

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_EF6DC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_11884;

  return SetCarPlayClimateIntentHandler.handle(intent:)();
}

uint64_t sub_EF7C0()
{
  v1 = [*(v0 + 16) enableClimateControl];
  if (v1)
  {
    v2 = v1;
    sub_16ACF4(42);

    v3 = [v2 BOOLValue];
    v4 = v3 == 0;
    if (v3)
    {
      v5._countAndFlagsBits = 1702195828;
    }

    else
    {
      v5._countAndFlagsBits = 0x65736C6166;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    v5._object = v6;
    sub_16A744(v5);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v7 = sub_16A584();
    sub_9DA0(v7, qword_1E65C0);
    sub_16A9A4();
    sub_F038C();
    sub_386D8(v8, v9, v10, v11, v12, v13, 105, 0xD000000000000028, 0x800000000018CAB0);

    sub_16A424();
    sub_16A414();
  }

  else
  {
    v14 = *(v0 + 16);
    sub_16ACF4(56);
    v31._countAndFlagsBits = 0xD000000000000036;
    v31._object = 0x800000000018CA70;
    sub_16A744(v31);
    v15 = v14;
    v16 = [v15 description];
    v17 = sub_16A664();
    v19 = v18;

    v32._countAndFlagsBits = v17;
    v32._object = v19;
    sub_16A744(v32);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v20 = sub_16A584();
    sub_9DA0(v20, qword_1E65C0);
    sub_16A9A4();
    sub_F038C();
    sub_386D8(v21, v22, v23, v24, v25, v26, 101, 0, 0xE000000000000000);

    sub_16A424();
    sub_F0370();
  }

  v27 = sub_120EC();

  return v28(v27);
}

uint64_t sub_EFAA0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_12070;

  return SetCarPlayClimateIntentHandler.confirm(intent:)(v6);
}

uint64_t sub_EFB60(void *a1)
{
  v1 = a1[4];
  sub_D084(a1, a1[3]);
  v2 = *(v1 + 72);
  v3 = sub_67C60();
  v5 = v4(v3, v1);
  sub_93A6C(v5);

  v6 = v13;
  if (v13)
  {
    v7 = v14;
    sub_D084(v12, v13);
    v8 = *(v7 + 24);
    v9 = sub_67C60();
    v6 = v10(v9, v7);
    sub_D13C(v12);
  }

  else
  {
    sub_D188(v12, qword_1EC260, &unk_177530);
  }

  return v6 & 1;
}

uint64_t sub_EFC28(void *a1, void *a2)
{
  v4 = [a1 climateZone];
  v5 = *(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetCarPlayClimateIntentHandler_isRHD);
  switch(v4)
  {
    case 0uLL:
      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v6 = sub_16A584();
      sub_9DA0(v6, qword_1E65C0);
      sub_16A9A4();
      sub_F03CC();
      sub_F03A8();
      sub_386D8(v7, v8, v9, v10, v11, v12, 120, v13, v32);
      v4 = &dword_0 + 2;
      goto LABEL_17;
    case 1uLL:
      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v21 = sub_16A584();
      sub_9DA0(v21, qword_1E65C0);
      sub_16A9A4();
      sub_F03CC();
      sub_F03A8();
      sub_386D8(v22, v23, v24, v25, v26, v27, 123, v28, v32);
      v4 = &dword_0 + 1;
      goto LABEL_17;
    case 2uLL:
      if (*(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetCarPlayClimateIntentHandler_isRHD))
      {
        v4 = &dword_0 + 3;
      }

      else
      {
        v4 = &dword_0 + 2;
      }

      goto LABEL_11;
    case 3uLL:
      if (*(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetCarPlayClimateIntentHandler_isRHD))
      {
        v4 = &dword_0 + 2;
      }

      else
      {
        v4 = &dword_0 + 3;
      }

      goto LABEL_11;
    default:
LABEL_11:
      sub_37474();
      sub_16ACF4(40);

      v33._countAndFlagsBits = sub_AFE80();
      sub_16A744(v33);

      v34._countAndFlagsBits = 46;
      v34._object = 0xE100000000000000;
      sub_16A744(v34);
      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v14 = sub_16A584();
      sub_9DA0(v14, qword_1E65C0);
      sub_16A9A4();
      sub_F03A8();
      sub_386D8(v15, v16, v17, v18, v19, v20, 126, 0xD000000000000025, 0x800000000018CC20);

LABEL_17:
      v29 = a2[3];
      v30 = a2[4];
      sub_30A9C(a2, v29);
      return (*(v30 + 120))(v4, v29, v30);
  }
}

id SetCarPlayClimateIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetCarPlayClimateIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_EFFB0()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_EFFF4()
{
  v1 = *(v0 + 16);
  sub_5758(&qword_1E91C0, &qword_172C40);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_F0054(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA178, &unk_1774D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F0108()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_120FC(v5);

  return v7(v6);
}

uint64_t sub_F01A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_120FC(v5);

  return v7(v6);
}

unint64_t sub_F0240()
{
  result = qword_1EA180;
  if (!qword_1EA180)
  {
    sub_37130(&qword_1E76A0, &qword_172B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA180);
  }

  return result;
}

uint64_t sub_F02A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA178, &unk_1774D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_F033C()
{
  v3 = v0[53];
  v2 = v0[54];
  v4 = v0[52];
  v6 = v0[49];
  v5 = v0[50];
  v7 = v0[48];
}

uint64_t sub_F0370()
{

  return sub_16A414();
}

uint64_t sub_F03EC()
{

  return swift_getErrorValue();
}

uint64_t sub_F0478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = *(a3 + 80);
  v12 = *(a3 + 88);
  v13 = type metadata accessor for DefaultContinueInAppDialogFlowStrategy();
  *v10 = v4;
  v10[1] = sub_10A9C;

  return ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)(a1, a2, v13, a4);
}

uint64_t sub_F0548(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v3[25] = *v2;
  return sub_16620(sub_F058C);
}

uint64_t sub_F058C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  sub_16ACF4(39);

  v56 = *(v1 + 80);
  v57 = *(v1 + 88);
  sub_1690B4();
  sub_169094();
  v3 = sub_16A1B4();
  v5 = v4;

  *(v0 + 88) = v3;
  *(v0 + 96) = v5;
  sub_5758(&qword_1E5FA0, &qword_172DD0);
  v58._countAndFlagsBits = sub_16A694();
  sub_16A744(v58);

  v59._countAndFlagsBits = 46;
  v59._object = 0xE100000000000000;
  sub_16A744(v59);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v6 = *(v0 + 184);
  v7 = sub_16A584();
  sub_9DA0(v7, qword_1E65C0);
  v8 = sub_16A9A4();
  sub_386D8(v8, 2uLL, 0xD00000000000008BLL, 0x800000000018CD60, 0xD000000000000032, 0x800000000018CE20, 38, 0xD000000000000024, 0x800000000018CE60);

  sub_169094();
  v9 = sub_11F404();

  if ((v9 & 1) == 0)
  {
    goto LABEL_18;
  }

  v10 = *(v0 + 184);
  sub_16ACF4(44);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  v60._countAndFlagsBits = 0xD00000000000002ALL;
  v60._object = 0x800000000018CE90;
  sub_16A744(v60);
  v11 = sub_169084();
  v12 = [v11 userActivity];

  if (v12)
  {
    v13 = [v12 userInfo];

    if (v13)
    {
      v12 = sub_16A5B4();
    }

    else
    {
      v12 = 0;
    }
  }

  v14 = *(v0 + 184);
  *(v0 + 160) = v12;
  sub_5758(&qword_1EC378, &unk_177720);
  sub_16AD84();

  v15 = *(v0 + 104);
  v16 = *(v0 + 112);
  v17 = sub_16A9A4();
  sub_386D8(v17, 2uLL, 0xD00000000000008BLL, 0x800000000018CD60, 0xD000000000000032, 0x800000000018CE20, 41, v15, v16);

  v18 = sub_169084();
  v19 = [v18 userActivity];

  if (!v19 || (v20 = [v19 userInfo], v19, !v20))
  {
LABEL_18:
    type metadata accessor for DefaultContinueInAppDialogFlowStrategy();
    v25 = sub_BDE3C();
    *(v0 + 280) = v25;
    *(v0 + 152) = v25;
    v26 = async function pointer to ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)[1];
    v27 = swift_task_alloc();
    *(v0 + 288) = v27;
    sub_F2D90();
    *v27 = v0;
    v28 = sub_F1194;
LABEL_19:
    v27[1] = v28;
    v29 = *(v0 + 176);
    v30 = *(v0 + 184);
    sub_D2C0();

    return ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)(v31, v32, v33, v34);
  }

  v21 = sub_16A5B4();
  *(v0 + 208) = v21;

  *(v0 + 120) = 0x707954726F727265;
  *(v0 + 128) = 0xE900000000000065;
  sub_16AC84();
  sub_13F658(v0 + 16, v21, (v0 + 56));
  sub_472B0(v0 + 16);
  if (!*(v0 + 80))
  {
    sub_D188(v0 + 56, &qword_1E6A10, &unk_1744D0);
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    v23 = 0;
    v22 = 0xE000000000000000;
    goto LABEL_24;
  }

  v23 = *(v0 + 136);
  v22 = *(v0 + 144);
  if (v23 == 0x6C6E4F43464E7369 && v22 == 0xE900000000000079)
  {
    goto LABEL_25;
  }

LABEL_24:
  if (sub_F2DCC())
  {
LABEL_25:

    v36 = *(v0 + 184);
    *(v0 + 216) = sub_1690A4();
    swift_task_alloc();
    sub_D3E0();
    *(v0 + 224) = v37;
    *v37 = v38;
    sub_F2DB8(v37);
    sub_D2C0();

    return sub_F12D8(v39, v40);
  }

  v42 = v23 == 0xD000000000000023 && 0x80000000001806E0 == v22;
  if (v42 || (sub_F2DCC() & 1) != 0)
  {

    swift_task_alloc();
    sub_D3E0();
    *(v0 + 232) = v43;
    *v43 = v44;
    sub_F2DB8(v43);
    sub_D2C0();

    return sub_F1768(v45);
  }

  if (v23 == 0x74754F656D6974 && v22 == 0xE700000000000000)
  {
  }

  else
  {
    v48 = sub_F2DCC();

    if ((v48 & 1) == 0)
    {

      type metadata accessor for DefaultContinueInAppDialogFlowStrategy();
      v49 = sub_BDE3C();
      *(v0 + 256) = v49;
      *(v0 + 168) = v49;
      v50 = async function pointer to ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)[1];
      v27 = swift_task_alloc();
      *(v0 + 264) = v27;
      sub_F2D90();
      *v27 = v0;
      v28 = sub_F1060;
      goto LABEL_19;
    }
  }

  v51 = *(v0 + 184);
  *(v0 + 240) = sub_1690A4();
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 248) = v52;
  *v52 = v53;
  sub_F2DB8(v52);
  sub_D2C0();

  return sub_F1B2C();
}

uint64_t sub_F0CF0()
{
  sub_D3A4();
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  sub_D254();
  *v5 = v4;

  v6 = *(v2 + 216);
  v7 = *(v2 + 208);
  if (v0)
  {
  }

  else
  {
  }

  v8 = *(v4 + 8);

  return v8();
}

uint64_t sub_F0E38()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 232);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_D37C();

  return v5();
}

uint64_t sub_F0F18()
{
  sub_D3A4();
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  sub_D254();
  *v5 = v4;

  v6 = *(v2 + 240);
  v7 = *(v2 + 208);
  if (v0)
  {
  }

  else
  {
  }

  v8 = *(v4 + 8);

  return v8();
}

uint64_t sub_F1060()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *(v4 + 256);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 272) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    sub_D37C();

    return v13();
  }
}

uint64_t sub_F1194()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *(v4 + 280);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 296) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    sub_D37C();

    return v13();
  }
}

uint64_t sub_F12D8(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  return sub_16620(sub_F12F4);
}

uint64_t sub_F12F4()
{
  sub_1696C();
  *(v0 + 88) = 0xD000000000000012;
  v1 = *(v0 + 112);
  *(v0 + 96) = 0x80000000001807C0;
  sub_16AC84();
  sub_13F658(v0 + 16, v1, (v0 + 56));
  sub_472B0(v0 + 16);
  if (*(v0 + 80))
  {
    if (swift_dynamicCast())
    {
      v2 = *(v0 + 160);
      goto LABEL_6;
    }
  }

  else
  {
    sub_D188(v0 + 56, &qword_1E6A10, &unk_1744D0);
  }

  v2 = 0;
LABEL_6:
  v3 = *(*(v0 + 120) + 96);
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = sub_F1448;

  return sub_DF380(v2);
}

uint64_t sub_F1448()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v8 = *(v7 + 128);
  v9 = *v1;
  sub_D254();
  *v10 = v9;
  v5[17] = v3;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    v5[18] = v13;
    *v13 = v9;
    v13[1] = sub_F15B4;
    v14 = v5[15];
    v15 = v5[13];

    return sub_F24D0();
  }
}

uint64_t sub_F15B4()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 152) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_F16B0()
{
  sub_D2DC();

  sub_D37C();

  return v1();
}

uint64_t sub_F170C()
{
  sub_D2DC();

  v1 = *(v0 + 152);
  sub_D37C();

  return v2();
}

uint64_t sub_F1768(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_16620(sub_F1780);
}

uint64_t sub_F1780()
{
  sub_D2DC();
  v1 = *(*(v0 + 24) + 96);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_F1810;

  return sub_E09EC();
}

uint64_t sub_F1810()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  sub_D254();
  *v10 = v9;
  v5[5] = v3;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    v5[6] = v13;
    *v13 = v9;
    v13[1] = sub_F1978;
    v14 = v5[2];
    v15 = v5[3];

    return sub_F24D0();
  }
}

uint64_t sub_F1978()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 56) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_F1A74()
{
  sub_D2DC();

  sub_D37C();

  return v1();
}

uint64_t sub_F1AD0()
{
  sub_D2DC();

  v1 = *(v0 + 56);
  sub_D37C();

  return v2();
}

uint64_t sub_F1B2C()
{
  sub_D2DC();
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  v5 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_F1BD0()
{
  v1 = [*(v0 + 176) parametersByName];
  if (!v1)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_6;
  }

  v2 = v1;
  v3 = sub_16A5B4();

  sub_13F530(0x656D614E726163, 0xE700000000000000, v3, (v0 + 56));

  if (!*(v0 + 80))
  {
LABEL_6:
    sub_D188(v0 + 56, &qword_1E6A10, &unk_1744D0);
    goto LABEL_7;
  }

  sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 152);
    goto LABEL_8;
  }

LABEL_7:
  v4 = 0;
LABEL_8:
  *(v0 + 208) = v4;
  sub_16ACF4(17);

  *(v0 + 136) = v4;
  v5 = v4;
  sub_5758(&qword_1EC370, &unk_177710);
  v34._countAndFlagsBits = sub_16A694();
  sub_16A744(v34);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v6 = *(v0 + 168);
  v7 = sub_16A584();
  sub_9DA0(v7, qword_1E65C0);
  v8 = sub_16A9A4();
  sub_386D8(v8, 0x20000uLL, 0xD00000000000008BLL, 0x800000000018CD60, 0xD000000000000028, 0x800000000018CDF0, 81, 0x4364656972657571, 0xEF20656D614E7261);

  sub_F30B0();
  v10 = v9;
  *(v0 + 120) = 0x664F7265626D756ELL;
  *(v0 + 128) = 0xEF7379654B726143;
  sub_16AC84();
  sub_13F658(v0 + 16, v6, (v0 + 88));
  sub_472B0(v0 + 16);
  if (!*(v0 + 112))
  {
    sub_D188(v0 + 88, &qword_1E6A10, &unk_1744D0);
LABEL_15:
    if (!v4)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v11 = *(v0 + 144) > 1;
  if (!v4)
  {
    goto LABEL_25;
  }

LABEL_16:
  v12 = [v5 spokenPhrase];
  v13 = sub_16A664();
  v15 = v14;

  sub_15B48(v13, v15);
  v17 = v16;

  if (v17)
  {
    v18 = sub_16A5D4();
    v20 = v19;

    if (v18 != 115 || v20 != 0xE100000000000000)
    {
      sub_16AE54();
    }
  }

LABEL_25:
  v22 = *(*(v0 + 184) + 96);
  if (v10)
  {
    v23 = *(v0 + 200);
    sub_16A6E4();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = *(v0 + 200);
  v26 = sub_16A0C4();
  v27 = 1;
  sub_5370(v25, v24, 1, v26);
  if (v4)
  {
    v28 = *(v0 + 192);
    sub_99C94();
    v27 = 0;
  }

  sub_5370(*(v0 + 192), v27, 1, v26);
  v29 = swift_task_alloc();
  *(v0 + 216) = v29;
  *v29 = v0;
  v29[1] = sub_F207C;
  v30 = *(v0 + 192);
  v31 = *(v0 + 200);

  return sub_DEEF0();
}

uint64_t sub_F207C()
{
  sub_D3A4();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  v7 = v4[27];
  v8 = *v1;
  *v6 = *v1;
  v5[28] = v3;
  v5[29] = v0;

  v9 = v4[25];
  v10 = v4[24];
  if (v0)
  {
    sub_F2DE8(v10);
    sub_F2DE8(v9);
    sub_10B4C();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    sub_F2DE8(v10);
    sub_F2DE8(v9);
    v14 = swift_task_alloc();
    v5[30] = v14;
    *v14 = v8;
    v14[1] = sub_F225C;
    v15 = v5[23];
    v16 = v5[20];

    return sub_F24D0();
  }
}

uint64_t sub_F225C()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 248) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_F2358()
{
  sub_1696C();
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);

  sub_D37C();

  return v4();
}

uint64_t sub_F23D8()
{
  sub_1696C();
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = *(v0 + 192);

  sub_D37C();

  return v4();
}

uint64_t sub_F2450()
{
  sub_1696C();

  v1 = *(v0 + 248);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);

  sub_D37C();

  return v4();
}

uint64_t sub_F24D0()
{
  sub_D2DC();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_F2568()
{
  sub_1696C();
  v1 = v0[9];
  sub_F30B0();
  v2 = *(v1 + 96);
  if (v3)
  {
    v4 = v0[10];
    sub_16A6E4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v0[10];
  v7 = sub_16A0C4();
  sub_5370(v6, v5, 1, v7);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_F2650;
  v9 = v0[10];

  return sub_DED20();
}

uint64_t sub_F2650()
{
  sub_D3A4();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  v7 = *(v4 + 88);
  *v6 = *v1;
  *(v5 + 96) = v0;

  v8 = *(v4 + 80);
  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  sub_D188(v8, &qword_1E6300, &qword_16ECE0);
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_F27A8()
{
  sub_D3A4();
  v1 = v0[13];
  v2 = [v1 dialog];

  sub_16484(0, &qword_1EC368, DialogElement_ptr);
  v3 = sub_16A7D4();

  if (sub_11B48C(v3))
  {
    sub_1487EC(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = sub_16AD04();
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;
    v6 = v0[9];

    v7 = [v5 fullPrint];

    v8 = sub_16A664();
    v10 = v9;

    v0[14] = v10;
    type metadata accessor for AppPunchoutSnippetFactory();
    sub_10824(v6 + 56, (v0 + 2));
    swift_task_alloc();
    sub_D3E0();
    v0[15] = v11;
    *v11 = v12;
    v11[1] = sub_F29FC;
    v13 = v0[7];
    v14 = v0[8];

    return sub_4EB90(v13, v8, v10, 0xD000000000000012, 0x800000000017F6B0, v14, (v0 + 2));
  }

  else
  {

    type metadata accessor for CarCommandsError();
    sub_11D28();
    swift_allocError();
    *v16 = 0xD000000000000027;
    v16[1] = 0x800000000018CD30;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v17 = v0[10];

    sub_D37C();

    return v18();
  }
}

uint64_t sub_F29FC()
{
  sub_1696C();
  v2 = *v1;
  v3 = *v1;
  sub_D254();
  *v4 = v3;
  v5 = v2[15];
  v6 = *v1;
  *v4 = *v1;
  v3[16] = v0;

  v7 = v2[14];
  if (v0)
  {
    sub_D13C(v3 + 2);

    sub_10B4C();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {
    v11 = v3[10];
    sub_D13C(v3 + 2);

    v12 = v6[1];

    return v12();
  }
}

uint64_t sub_F2B74()
{
  sub_D2DC();
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);

  sub_D37C();

  return v3();
}

uint64_t sub_F2BD0()
{
  sub_D2DC();
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);

  sub_D37C();

  return v3();
}

uint64_t *sub_F2C2C()
{
  sub_D13C(v0 + 2);
  sub_D13C(v0 + 7);
  v1 = v0[12];

  return v0;
}

uint64_t sub_F2C5C()
{
  sub_F2C2C();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_F2CC4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1039C;

  return sub_F0548(a1, a2);
}

uint64_t sub_F2D90()
{

  return swift_getWitnessTable();
}

uint64_t sub_F2DB8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 192);
  return *(v2 + 176);
}

uint64_t sub_F2DCC()
{

  return sub_16AE54();
}

uint64_t sub_F2DE8(uint64_t a1)
{

  return sub_D188(a1, v1, v2);
}

uint64_t sub_F2E00()
{
  sub_5758(&qword_1E5F70, &unk_16F3F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_177730;
  sub_16484(0, &qword_1E6A18, INGetCarLockStatusIntent_ptr);
  v3 = [swift_getObjCClassFromMetadata() description];
  sub_16A664();
  sub_F31FC();
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  sub_16484(0, &qword_1E6A50, INSetCarLockStatusIntent_ptr);
  v4 = [swift_getObjCClassFromMetadata() description];
  sub_16A664();
  sub_F31FC();
  *(v2 + 48) = v0;
  *(v2 + 56) = v1;
  sub_16484(0, &qword_1E62F8, INActivateCarSignalIntent_ptr);
  v5 = [swift_getObjCClassFromMetadata() description];
  sub_16A664();
  sub_F31FC();
  *(v2 + 64) = v0;
  *(v2 + 72) = v1;
  sub_16A4A4();
  v6 = [swift_getObjCClassFromMetadata() description];
  sub_16A664();
  sub_F31FC();
  *(v2 + 80) = v0;
  *(v2 + 88) = v1;
  sub_16A494();
  v7 = [swift_getObjCClassFromMetadata() description];
  sub_16A664();
  sub_F31FC();
  *(v2 + 96) = v0;
  *(v2 + 104) = v1;
  sub_16A524();
  v8 = [swift_getObjCClassFromMetadata() description];
  sub_16A664();
  sub_F31FC();
  *(v2 + 112) = v0;
  *(v2 + 120) = v1;
  sub_16A3B4();
  v9 = [swift_getObjCClassFromMetadata() description];
  sub_16A664();
  sub_F31FC();
  *(v2 + 128) = v0;
  *(v2 + 136) = v1;
  sub_16A384();
  v10 = [swift_getObjCClassFromMetadata() description];
  sub_16A664();
  sub_F31FC();
  *(v2 + 144) = v0;
  *(v2 + 152) = v1;
  sub_16A484();
  v11 = [swift_getObjCClassFromMetadata() description];
  sub_16A664();
  sub_F31FC();
  *(v2 + 160) = v0;
  *(v2 + 168) = v1;
  return v2;
}

uint64_t sub_F3020()
{
  v0 = sub_16A1C4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_16A194();
}

uint64_t sub_F30B0()
{
  v0 = sub_168454();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_16A1C4();
  sub_16A1A4();
  v5 = sub_169074();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  sub_169064();
  sub_168444();
  v8 = sub_169054();

  (*(v1 + 8))(v4, v0);
  return v8;
}

void sub_F31FC()
{
}

void sub_F3214()
{
  sub_CA350();
  v1 = v0;
  v2 = sub_1695B4();
  v3 = sub_9F48(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_A128();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  v13 = v75 - v12;
  v14 = sub_169454();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  sub_A138();
  v88 = v17 - v16;
  sub_F573C();
  v87 = sub_169564();
  v18 = sub_9F48(v87);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_A128();
  v86 = v23 - v24;
  sub_6CF04();
  __chkstk_darwin(v25);
  sub_F5784();
  v85 = v26;
  sub_F573C();
  v27 = sub_169504();
  v28 = sub_9F48(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  __chkstk_darwin(v28);
  sub_A128();
  v84 = v33 - v34;
  sub_6CF04();
  __chkstk_darwin(v35);
  sub_F5784();
  v90 = v36;
  v37 = sub_11B48C(v1);
  if (v37)
  {
    v38 = v37;
    v79 = v27;
    v80 = v10;
    v81 = v13;
    v82 = v5;
    v83 = v2;
    v39 = 0;
    v76 = (v20 + 8);
    v77 = (v20 + 16);
    v78 = v30;
    v89 = (v30 + 32);
    v91 = _swiftEmptyArrayStorage;
    while (v38 != v39)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        sub_16AD04();
      }

      else
      {
        if (v39 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_23;
        }

        v40 = *(v1 + 8 * v39 + 32);
      }

      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      sub_16A1B4();
      if (v42)
      {
        v43 = sub_169B04();
        sub_483C8(v43);
        v44 = sub_169AF4();
        sub_169AE4();

        v45 = sub_169694();
        sub_483C8(v45);
        v46 = sub_169684();
        v75[2] = v44;

        sub_169A84();

        v47 = sub_169CB4();
        sub_483C8(v47);
        v48 = sub_169CA4();
        v75[1] = v46;

        sub_169C34();

        v75[0] = v48;

        v49 = v85;
        sub_169554();
        sub_BE5EC();
        sub_169544();
        v50 = v84;
        sub_1694F4();
        v51 = v87;
        (*v77)(v86, v49, v87);
        sub_1694E4();
        (*v76)(v49, v51);

        v52 = *v89;
        v53 = v79;
        (*v89)(v90, v50, v79);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = v91[2];
          sub_108684();
          v91 = v58;
        }

        v54 = v91[2];
        if (v54 >= v91[3] >> 1)
        {
          sub_108684();
          v91 = v59;
        }

        v55 = v90;
        v56 = v91;
        v91[2] = v54 + 1;
        v52(v56 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v54, v55, v53);
        v39 = v41;
      }

      else
      {

        ++v39;
      }
    }

    v60 = v81;
    sub_F471C();

    v92 = 0;
    v93 = 0xE000000000000000;
    sub_16ACF4(35);

    sub_D434();
    v92 = 0xD000000000000021;
    v93 = v61;
    v62 = v80;
    (*(v82 + 16))(v80, v60, v83);
    v94._countAndFlagsBits = sub_14C6B0(v62);
    sub_16A744(v94);

    v38 = v93;
    if (qword_1E58E8 == -1)
    {
      goto LABEL_17;
    }

LABEL_24:
    sub_9ED4();
LABEL_17:
    v63 = sub_16A584();
    sub_9F450(v63, qword_1E65C0);
    sub_F5678();
    sub_F5760(v64, v65, v66, v67, 0xD00000000000001ELL, v68, 42, v69, v38);
    sub_F5748();
    sub_5758(&qword_1EC380, &unk_177740);
    v70 = sub_F56FC();
    v71 = sub_F5724(v70, xmmword_16D9A0);
    v72(v71);
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v73 = sub_16A584();
    sub_9DA0(v73, qword_1E65C0);
    v74 = sub_16A9A4();
    sub_386D8(v74, 8uLL, 0xD000000000000078, 0x800000000018CF20, 0xD00000000000001ELL, 0x800000000018CFA0, 35, 0xD000000000000024, 0x800000000018CFF0);
  }

  sub_CA368();
}

void sub_F38BC()
{
  sub_CA350();
  v2 = v1;
  v3 = sub_1695B4();
  v4 = sub_9F48(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_A128();
  sub_F56DC();
  __chkstk_darwin(v7);
  sub_F5688();
  v8 = sub_F54E4;
  switch(v2)
  {
    case 2:
    case 5:
      goto LABEL_7;
    case 18:
LABEL_8:
      (v8)(v36);
      sub_F57B8();
      v10 = sub_169BC4();
      sub_483C8(v10);
      sub_169BB4();
      sub_F564C();
      v12 = sub_F5790(v11);
      v13(v12);
      sub_F5620();
      sub_F5778();
      sub_F50FC();
      sub_F5638();
      sub_16ACF4(32);

      sub_D434();
      v15 = sub_F55C4(v14);
      v16(v15);
      v39._countAndFlagsBits = sub_14C6B0(v0);
      sub_16A744(v39);

      v17 = v36[0];
      v18 = v36[1];
      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v19 = sub_16A584();
      sub_9DA0(v19, qword_1E65C0);
      sub_16A9A4();
      sub_F56EC();
      sub_386D8(v20, v21, v22, v23, 0xD00000000000001FLL, v24, 69, v17, v18);

      sub_5758(&qword_1EC380, &unk_177740);
      v25 = sub_F55F8();
      v26 = sub_F55E0(v25, xmmword_16D9A0);
      v27(v26);

      sub_D13C(&v37);
      goto LABEL_11;
    case 9:
LABEL_7:
      v8 = sub_F55C0;
      goto LABEL_8;
  }

  sub_F5698();

  sub_D434();
  v37 = 0xD000000000000024;
  v38 = v28;
  LOBYTE(v36[0]) = v2;
  v40._countAndFlagsBits = sub_16A694();
  sub_16A744(v40);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v29 = sub_16A584();
  sub_9F450(v29, qword_1E65C0);
  sub_F5678();
  sub_F5760(v30, v31, v32, v33, 0xD00000000000001FLL, v34, 60, v35, v38);
  sub_F5748();
LABEL_11:
  sub_CA23C();
  sub_CA368();
}

void sub_F3C00()
{
  sub_CA350();
  v2 = v1;
  v3 = sub_1695B4();
  v4 = sub_9F48(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_A128();
  sub_F56DC();
  __chkstk_darwin(v7);
  sub_F5688();
  v8 = sub_F3F2C(v2);
  if (v8)
  {
    v9 = v8;
    (v8)(v36);
    sub_F55B0(v9);
    sub_F57B8();
    v10 = sub_169BC4();
    sub_483C8(v10);
    sub_169BB4();
    sub_F564C();
    v12 = sub_F5790(v11);
    v13(v12);
    sub_F5620();
    sub_F5778();
    sub_F50FC();
    sub_F5638();
    sub_16ACF4(32);

    sub_D434();
    v15 = sub_F55C4(v14);
    v16(v15);
    v39._countAndFlagsBits = sub_14C6B0(v0);
    sub_16A744(v39);

    v17 = v36[0];
    v18 = v36[1];
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v19 = sub_16A584();
    sub_9DA0(v19, qword_1E65C0);
    sub_16A9A4();
    sub_F56EC();
    sub_386D8(v20, v21, v22, v23, 0xD000000000000022, v24, 95, v17, v18);

    sub_5758(&qword_1EC380, &unk_177740);
    v25 = sub_F55F8();
    v26 = sub_F55E0(v25, xmmword_16D9A0);
    v27(v26);

    sub_D13C(&v37);
  }

  else
  {
    sub_F5698();

    sub_D434();
    v37 = 0xD000000000000024;
    v38 = v28;
    LOBYTE(v36[0]) = v2;
    sub_5758(&qword_1EA2A8, &unk_174150);
    v40._countAndFlagsBits = sub_16A694();
    sub_16A744(v40);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v29 = sub_16A584();
    sub_9F450(v29, qword_1E65C0);
    sub_F5678();
    sub_F5760(v30, v31, v32, v33, 0xD000000000000022, v34, 86, v35, v38);
    sub_F5748();
  }

  sub_CA23C();
  sub_CA368();
}

uint64_t (*sub_F3F2C(unsigned __int8 a1))()
{
  if (a1 > 0xF7u)
  {
    return 0;
  }

  v3 = a1 >> 4;
  result = sub_F55C0;
  switch(v3)
  {
    case 0:
    case 3:
      return result;
    case 1:
    case 4:
      v4 = sub_F54B0;
      if (a1)
      {
        return 0;
      }

      goto LABEL_14;
    case 2:
      v4 = sub_F547C;
      if (a1)
      {
        return 0;
      }

      goto LABEL_14;
    case 5:
      v4 = sub_F55C0;
      if ((a1 & 0xE) != 0)
      {
        return 0;
      }

      goto LABEL_14;
    case 6:
      v4 = sub_F55C0;
      if ((a1 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_14;
    case 10:
      v4 = sub_F54B0;
      if ((a1 + 96) >= 3u)
      {
        return 0;
      }

LABEL_14:
      result = v4;
      break;
    default:
      return 0;
  }

  return result;
}

void sub_F4044()
{
  sub_CA350();
  v1 = v0;
  v3 = v2;
  v4 = sub_169454();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_A138();
  v99 = v7 - v6;
  sub_F573C();
  v98 = sub_169564();
  v8 = sub_9F48(v98);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_A128();
  v97 = v13 - v14;
  sub_6CF04();
  __chkstk_darwin(v15);
  sub_F5784();
  v96 = v16;
  sub_F573C();
  v95 = sub_169504();
  v17 = sub_9F48(v95);
  v100 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_A138();
  v23 = v22 - v21;
  v24 = sub_1695B4();
  v25 = sub_9F48(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_A128();
  v32 = v30 - v31;
  __chkstk_darwin(v33);
  v35 = &v86 - v34;
  v36 = sub_F3F2C(v3);
  v101 = v37;
  v102 = v36;
  if (v36)
  {
    v89 = v32;
    v90 = v35;
    v38 = *(v1 + 16);
    if (v38)
    {
      v94 = v10;
      v39 = v27;
      v103 = _swiftEmptyArrayStorage;
      sub_16AD54();
      v40 = sub_169694();
      v41 = (v1 + 40);
      do
      {
        v42 = *(v41 - 1);
        v43 = *v41;
        v44 = *(v40 + 48);
        v45 = *(v40 + 52);
        swift_allocObject();

        sub_169684();
        sub_169674();

        sub_16AD34();
        v46 = v103[2];
        sub_16AD64();
        sub_16AD74();
        sub_16AD44();
        v41 += 2;
        --v38;
      }

      while (v38);
      v47 = v103;
      v27 = v39;
      v10 = v94;
    }

    else
    {
      v47 = _swiftEmptyArrayStorage;
    }

    v57 = v47[2];
    if (v57)
    {
      v94 = v47;
      v87 = v27;
      v88 = v24;
      v107 = _swiftEmptyArrayStorage;
      sub_146A68();
      v58 = v107;
      v92 = (v10 + 1);
      v93 = (v10 + 2);
      v91 = v100 + 32;
      v59 = 4;
      do
      {
        v60 = v23;
        v61 = v94[v59];

        (v102)(&v103, v62);
        if (v61)
        {
          v63 = v105;
          v64 = v106;
          sub_D084(&v103, v105);
          v65 = *(v64 + 8);

          v65(v66, &protocol witness table for UsoEntityBuilder_common_UserEntity, v63, v64);
        }

        v67 = v96;
        sub_169554();
        v68 = v105;
        v69 = v106;
        sub_D084(&v103, v105);
        (*(v69 + 24))(v68, v69);
        sub_169544();
        v23 = v60;
        sub_1694F4();
        v70 = v98;
        (*v93)(v97, v67, v98);
        sub_1694E4();

        (*v92)(v67, v70);
        sub_D13C(&v103);
        v107 = v58;
        v71 = v58[2];
        if (v71 >= v58[3] >> 1)
        {
          sub_146A68();
          v58 = v107;
        }

        v58[2] = v71 + 1;
        (*(v100 + 32))(v58 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v71, v60, v95);
        ++v59;
        --v57;
      }

      while (v57);

      v24 = v88;
      v27 = v87;
    }

    else
    {
    }

    v72 = v90;
    sub_F471C();

    sub_F57A4();
    sub_16ACF4(39);

    sub_D434();
    v103 = 0xD000000000000025;
    v104 = v73;
    v74 = v89;
    (*(v27 + 16))(v89, v72, v24);
    v109._countAndFlagsBits = sub_14C6B0(v74);
    sub_16A744(v109);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v75 = sub_16A584();
    sub_9F450(v75, qword_1E65C0);
    sub_F56BC();
    sub_F5760(v76, v77, v78, v79, v80, v81, 133, v82, v86);
    sub_F5748();
    sub_5758(&qword_1EC380, &unk_177740);
    v83 = sub_F56FC();
    v84 = sub_F5724(v83, xmmword_16D9A0);
    v85(v84);
    sub_F55B0(v102);
  }

  else
  {
    sub_F57A4();
    sub_16ACF4(38);

    sub_D434();
    v103 = 0xD000000000000024;
    v104 = v48;
    LOBYTE(v107) = v3;
    sub_5758(&qword_1EA2A8, &unk_174150);
    v108._countAndFlagsBits = sub_16A694();
    sub_16A744(v108);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v49 = sub_16A584();
    sub_9F450(v49, qword_1E65C0);
    sub_F56BC();
    sub_F5760(v50, v51, v52, v53, v54, v55, 118, v56, v86);
    sub_F5748();
  }

  sub_CA368();
}

uint64_t sub_F471C()
{
  v0 = sub_1695E4();
  v1 = sub_9F48(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_A128();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = &v13 - v10;
  sub_1695A4();
  sub_1695D4();

  sub_1695C4();
  (*(v3 + 16))(v8, v11, v0);
  sub_169574();
  return (*(v3 + 8))(v11, v0);
}

void sub_F483C()
{
  sub_CA350();
  v3 = v2;
  v4 = sub_1695B4();
  v5 = sub_9F48(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_A128();
  sub_F56DC();
  __chkstk_darwin(v8);
  sub_F5688();
  v9 = sub_F3F2C(v3);
  if (v9)
  {
    v10 = v9;
    (v9)(v36);
    sub_F55B0(v10);
    sub_F57B8();
    v11 = sub_169694();
    sub_483C8(v11);
    sub_169684();
    sub_F564C();
    (*(v12 + 8))(v3, &protocol witness table for UsoEntityBuilder_common_UserEntity, v10, v1);
    v13 = sub_F5778();
    sub_F4B3C(v13);
    sub_F5638();
    sub_16ACF4(31);

    sub_D434();
    v15 = sub_F55C4(v14);
    v16(v15);
    v39._countAndFlagsBits = sub_14C6B0(v0);
    sub_16A744(v39);

    v17 = v36[0];
    v18 = v36[1];
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v19 = sub_16A584();
    sub_9DA0(v19, qword_1E65C0);
    sub_16A9A4();
    sub_F56EC();
    sub_386D8(v20, v21, v22, v23, 0xD000000000000020, v24, 160, v17, v18);

    sub_5758(&qword_1EC380, &unk_177740);
    v25 = sub_F55F8();
    v26 = sub_F55E0(v25, xmmword_16D9A0);
    v27(v26);

    sub_D13C(&v37);
  }

  else
  {
    sub_F5698();

    sub_D434();
    v37 = 0xD000000000000024;
    v38 = v28;
    LOBYTE(v36[0]) = v3;
    sub_5758(&qword_1EA2A8, &unk_174150);
    v40._countAndFlagsBits = sub_16A694();
    sub_16A744(v40);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v29 = sub_16A584();
    sub_9F450(v29, qword_1E65C0);
    sub_F5678();
    sub_F5760(v30, v31, v32, v33, 0xD000000000000020, v34, 151, v35, v38);
    sub_F5748();
  }

  sub_CA23C();
  sub_CA368();
}

uint64_t sub_F4B3C(void *a1)
{
  v2 = sub_169454();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_169534();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  sub_169524();
  v12 = a1[3];
  v13 = a1[4];
  sub_D084(a1, v12);
  (*(v13 + 24))(v12, v13);
  sub_169514();
  sub_1695A4();
  (*(v5 + 16))(v9, v11, v4);
  sub_169594();
  return (*(v5 + 8))(v11, v4);
}

void sub_F4CF4()
{
  sub_CA350();
  v1 = sub_1695B4();
  v2 = sub_9F48(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_A128();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  sub_F5688();
  sub_16A1B4();
  if (v11)
  {
    v12 = sub_169C54();
    sub_483C8(v12);
    v13 = sub_169C44();
    v14 = sub_169B04();
    sub_483C8(v14);
    sub_169AF4();
    sub_169AE4();

    v15 = sub_169694();
    sub_483C8(v15);
    sub_169684();

    sub_169A84();

    sub_169C94();

    v29 = v12;
    v30 = &off_1D76A0;
    v27 = v13;

    sub_F5778();
    sub_F50FC();
    sub_D13C(&v27);
    v27 = 0;
    v16 = v1;
    v28 = 0xE000000000000000;
    sub_16ACF4(37);

    sub_D434();
    v27 = 0xD000000000000023;
    v28 = v17;
    (*(v4 + 16))(v9, v0, v1);
    v31._countAndFlagsBits = sub_14C6B0(v9);
    sub_16A744(v31);

    v18 = v27;
    v19 = v28;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v20 = sub_16A584();
    sub_9DA0(v20, qword_1E65C0);
    v21 = sub_16A9A4();
    sub_386D8(v21, 8uLL, 0xD000000000000078, 0x800000000018CF20, 0xD00000000000001CLL, 0x800000000018D170, 191, v18, v19);

    sub_5758(&qword_1EC380, &unk_177740);
    v22 = *(v4 + 72);
    v23 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_16D9A0;
    (*(v4 + 32))(v24 + v23, v0, v16);
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v25 = sub_16A584();
    sub_9DA0(v25, qword_1E65C0);
    v26 = sub_16A9A4();
    sub_386D8(v26, 8uLL, 0xD000000000000078, 0x800000000018CF20, 0xD00000000000001CLL, 0x800000000018D170, 178, 0xD000000000000021, 0x800000000018D190);
  }

  sub_CA23C();
  sub_CA368();
}

void sub_F50FC()
{
  sub_CA350();
  v54 = v0;
  v52 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v56 = v8;
  v57 = sub_1694A4();
  v9 = sub_9F48(v57);
  v55 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_A128();
  v53 = v13 - v14;
  sub_6CF04();
  __chkstk_darwin(v15);
  sub_F5784();
  v50 = v16;
  sub_F573C();
  v51 = sub_169504();
  v17 = sub_9F48(v51);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_A128();
  v49 = v22 - v23;
  sub_6CF04();
  __chkstk_darwin(v24);
  v26 = &v48 - v25;
  v27 = sub_169454();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  sub_A138();
  v31 = v30 - v29;
  v32 = v5(0);
  v48 = v32;
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  sub_A128();
  v37 = v35 - v36;
  v39 = __chkstk_darwin(v38);
  v41 = &v48 - v40;
  v3(v39);
  v42 = v7[3];
  v43 = v7[4];
  sub_D084(v7, v42);
  (*(v43 + 24))(v42, v43);
  v52(v31);
  sub_1694F4();
  (*(v33 + 16))(v37, v41, v32);
  v54(v37);
  v44 = v50;
  sub_169494();
  v45 = v51;
  (*(v19 + 16))(v49, v26, v51);
  sub_169484();
  sub_1695A4();
  v46 = v55;
  v47 = v57;
  (*(v55 + 16))(v53, v44, v57);
  sub_169584();
  (*(v46 + 8))(v44, v47);
  (*(v19 + 8))(v26, v45);
  (*(v33 + 8))(v41, v48);
  sub_CA368();
}

uint64_t sub_F554C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  sub_483C8(v7);
  result = a2();
  a4[3] = v7;
  a4[4] = a3;
  *a4 = result;
  return result;
}

uint64_t sub_F55B0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_F55C4@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 160) = v1;
  *(v4 - 152) = a1;
  v5 = *(v3 + 16);
  return v2;
}

char *sub_F55E0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v3 + 32);
  return a1 + v2;
}

uint64_t sub_F55F8()
{
  v2 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72);

  return swift_allocObject();
}

void sub_F5698()
{
  *(v0 - 120) = 0;
  *(v0 - 112) = 0xE000000000000000;

  sub_16ACF4(38);
}

uint64_t sub_F56FC()
{
  v2 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72);

  return swift_allocObject();
}

char *sub_F5724(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v3 + 32);
  return a1 + v2;
}

uint64_t sub_F5748()
{
}

void sub_F5760(os_log_type_t a1, Swift::UInt64 a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unint64_t a9)
{

  sub_386D8(a1, a2, a3, a4, a5, a6, a7, v9, a9);
}

void sub_F57D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = [objc_opt_self() sharedInstance];
  if (!v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  v9 = sub_F7094(a1, a2, v7);

  if (!v9)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v12 = [v9 secureElementPass];

  if (v12)
  {
    if ([v12 isCarKeyPass])
    {
      swift_beginAccess();
      sub_D8400(v3 + 16, v14);
      sub_F5958(v13);
      v10 = type metadata accessor for WalletCarKey();
      swift_allocObject();
      v11 = sub_10F754(v14, v13);
      *(a3 + 24) = v10;
      *(a3 + 32) = &off_1D9928;

      *a3 = v11;
    }

    else
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

uint64_t sub_F5958@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  result = [v1 devicePrimaryPaymentApplication];
  if (!result)
  {
    goto LABEL_78;
  }

  v6 = sub_F6CE8(result);
  v72 = a1;
  if (v6)
  {
    v62 = v1;
    if ((v6 & 0xC000000000000001) != 0)
    {

      sub_16ABC4();
      v3 = PKAppletSubcredential_ptr;
      sub_16484(0, &qword_1EC468, PKAppletSubcredential_ptr);
      sub_F6FE8(&qword_1EC470, &qword_1EC468, PKAppletSubcredential_ptr);
      sub_16A944();
      v8 = v77;
      v7 = v78;
      v10 = v79;
      v9 = v80;
      v11 = v81;
    }

    else
    {
      v12 = -1 << *(v6 + 32);
      v7 = v6 + 56;
      v10 = ~v12;
      v13 = -v12;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v11 = v14 & *(v6 + 56);
      v9 = 0;
    }

    v73 = v10;
    v15 = (v10 + 64) >> 6;
    v75 = _swiftEmptyArrayStorage;
    if (v8 < 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v16 = v9;
    v17 = v11;
    for (i = v9; !v17; ++v16)
    {
      i = v16 + 1;
      if (__OFADD__(v16, 1))
      {
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        v59 = sub_16AD04();
        goto LABEL_69;
      }

      if (i >= v15)
      {
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * i);
    }

    v2 = (v17 - 1) & v17;
    v10 = *(*(v8 + 48) + ((i << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v10)
    {
LABEL_26:
      sub_4A004();

      v3 = v62;
      goto LABEL_27;
    }

    while (1)
    {
      result = sub_5BAFC(v10, &selRef_identifier);
      if (!v20)
      {
        break;
      }

      v21 = result;
      v22 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = v75[2];
        sub_1084D8();
        v75 = v25;
      }

      v3 = v75[2];
      if (v3 >= v75[3] >> 1)
      {
        sub_1084D8();
        v75 = v26;
      }

      v75[2] = v3 + 1;
      v23 = &v75[2 * v3];
      v23[4] = v21;
      v23[5] = v22;
      v9 = i;
      v11 = v2;
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      v19 = sub_16AC34();
      if (v19)
      {
        v76 = v19;
        sub_16484(0, &qword_1EC468, PKAppletSubcredential_ptr);
        swift_dynamicCast();
        v10 = v82;
        i = v9;
        v2 = v11;
        if (v82)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v75 = _swiftEmptyArrayStorage;
LABEL_27:
  v27 = sub_F6D8C(v3);
  v28 = &_swiftEmptySetSingleton;
  if (v27)
  {
    v29 = sub_F6A04(v27);

    if (v29)
    {
      v28 = v29;
    }
  }

  v30 = sub_F6F7C(v3, &selRef_storeIdentifiers);
  v31 = _swiftEmptyArrayStorage;
  if (v30)
  {
    sub_F6724(v30);
    v33 = v32;

    if (v33)
    {
      v31 = v33;
    }
  }

  v34 = [v3 supportedSiriIntents];
  if (v34)
  {
    v35 = v34;
    v36 = sub_F6F7C(v34, &selRef_supportedCarKeyIntents);
    if (v36)
    {
      sub_138ED4(v36);
      v10 = v37;
    }

    else
    {
      v10 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  v38 = [v3 passActivationState];
  result = sub_F6DEC(v3);
  if (!result)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v11 = result;
  v70 = v10;
  v71 = v31;
  v68 = v38;
  v69 = v28;
  if ((result & 0xC000000000000001) != 0)
  {
    sub_16ABC4();
    v10 = &qword_1EC458;
    sub_16484(0, &qword_1EC458, PKPaymentApplication_ptr);
    sub_F6FE8(&qword_1EC460, &qword_1EC458, PKPaymentApplication_ptr);
    sub_16A944();
    v11 = v82;
    v2 = v83;
    v39 = v84;
    v15 = v85;
    v7 = v86;
  }

  else
  {
    v15 = 0;
    v40 = -1 << *(result + 32);
    v2 = result + 56;
    v39 = ~v40;
    v41 = -v40;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v7 = v42 & *(result + 56);
  }

  v73 = 0;
  v74 = 0;
  v43 = (v39 + 64) >> 6;
  while (1)
  {
    i = v7;
    if ((v11 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_16AC34())
    {
      goto LABEL_61;
    }

    sub_16484(0, &qword_1EC458, PKPaymentApplication_ptr);
    swift_dynamicCast();
    v10 = v76;
    if (!v76)
    {
      goto LABEL_61;
    }

LABEL_56:
    if (![v10 supportsUWB])
    {
      goto LABEL_57;
    }

    v46 = [v10 applicationIdentifier];
    if (v46)
    {
      v47 = v46;
      v73 = sub_16A664();
      v74 = v48;

LABEL_57:
    }

    else
    {

      v73 = 0;
      v74 = 0;
    }
  }

  v44 = v15;
  v45 = v7;
  if (!v7)
  {
    while (1)
    {
      v15 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v15 >= v43)
      {
        goto LABEL_61;
      }

      v45 = *(v2 + 8 * v15);
      ++v44;
      if (v45)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
    goto LABEL_74;
  }

LABEL_52:
  v7 = (v45 - 1) & v45;
  v10 = *(*(v11 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v45)))));
  if (v10)
  {
    goto LABEL_56;
  }

LABEL_61:
  sub_4A004();
  LOBYTE(v2) = [v3 isCarKeyPass];
  result = sub_5BAFC(v3, &selRef_speakableMake);
  if (!v49)
  {
    goto LABEL_80;
  }

  v11 = result;
  i = v49;
  result = sub_5BAFC(v3, &selRef_speakableModel);
  if (!v50)
  {
    goto LABEL_81;
  }

  v7 = v50;
  v67 = result;

  v51 = [v3 localizedDescription];
  v52 = sub_16A664();
  v66 = v53;
  result = sub_5BAFC(v3, &selRef_uniqueID);
  v65 = result;
  if (!v54)
  {
    goto LABEL_82;
  }

  v10 = v54;
  v55 = [v3 organizationName];
  v56 = sub_16A664();
  v63 = v57;
  v64 = v56;
  result = sub_F6E88(v3);
  if (!result)
  {
LABEL_83:
    __break(1u);
    return result;
  }

  v15 = result;

  if (!*(v15 + 16))
  {
    goto LABEL_75;
  }

  v62 = v52;
  v58 = *(v15 + 32);

  if (!sub_11B48C(v58))
  {

    v61 = 0;
    v3 = v68;
    v15 = v74;
    goto LABEL_72;
  }

  sub_1487EC(0, (v58 & 0xC000000000000001) == 0, v58);
  v3 = v68;
  v15 = v74;
  if ((v58 & 0xC000000000000001) != 0)
  {
    goto LABEL_76;
  }

  v59 = *(v58 + 32);
LABEL_69:
  v60 = v59;

  v61 = [v60 value];

  if (v61)
  {
    sub_16A654();

    v61 = 0;
  }

LABEL_72:
  v72[3] = &type metadata for CarKeyPass;
  v72[4] = &off_1D3ED8;
  result = swift_allocObject();
  *v72 = result;
  *(result + 16) = v2;
  *(result + 17) = v3 != 0;
  *(result + 24) = v11;
  *(result + 32) = i;
  *(result + 40) = v67;
  *(result + 48) = v7;
  *(result + 56) = v75;
  *(result + 64) = v69;
  *(result + 72) = v62;
  *(result + 80) = v66;
  *(result + 88) = v65;
  *(result + 96) = v10;
  *(result + 104) = v64;
  *(result + 112) = v63;
  *(result + 120) = v61;
  *(result + 128) = 0xE000000000000000;
  *(result + 136) = v71;
  *(result + 144) = v70;
  *(result + 152) = v73;
  *(result + 160) = v15;
  return result;
}