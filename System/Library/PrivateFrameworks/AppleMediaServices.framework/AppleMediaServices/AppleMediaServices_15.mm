void AvroSchema.init()(uint64_t a1@<X8>)
{
  *(&v39 + 1) = 0xE000000000000000;
  sub_10016923C();
  v40[0] = 0;
  v40[1] = v2;
  v41 = v3;
  sub_10000B8B0(v4, v5, v6, v7, v8, v9, v10, v11, v23, v25, v27, v29, v31, v33, v35, v37, 0);
  v12 = sub_100161A78(v40);
  sub_10000D0B4(v12, v13, v14, v15, v16, v17, v18, v19, v24, v26, v28, v30, v32, v34, v36, v38, v39, xmmword_10023D520, v20);
  *(a1 + 48) = v21;
  *(a1 + 56) = v22;
  *(a1 + 80) = 0;
  *(a1 + 96) = -16384;
}

unint64_t sub_10016176C(char a1)
{
  result = 1819047278;
  switch(a1)
  {
    case 1:
      result = 0x6E61656C6F6F62;
      break;
    case 2:
      result = 7630441;
      break;
    case 3:
      result = 1735290732;
      break;
    case 4:
      result = 0x74616F6C66;
      break;
    case 5:
      result = 0x656C62756F64;
      break;
    case 6:
      result = 0x7365747962;
      break;
    case 7:
      result = 0x676E69727473;
      break;
    case 8:
      result = 0x64726F636572;
      break;
    case 9:
      result = 1836412517;
      break;
    case 10:
      result = 0x7961727261;
      break;
    case 11:
      result = 7364973;
      break;
    case 12:
      result = 0x6E6F696E75;
      break;
    case 13:
      v3 = 1702390118;
      goto LABEL_16;
    case 14:
      result = 0x6C6F636F746F7270;
      break;
    case 15:
      result = 0x6567617373656DLL;
      break;
    case 16:
      result = 0x73726F727265;
      break;
    case 17:
      v3 = 1818585446;
LABEL_16:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6400000000;
      break;
    case 18:
      result = 0x726F727265;
      break;
    case 19:
      result = 0x64696C61766E69;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100161910(char a1)
{
  result = 0x6C616D69636564;
  switch(a1)
  {
    case 1:
      result = 1702125924;
      break;
    case 2:
      result = 0x6C696D2D656D6974;
      break;
    case 3:
      result = 0x63696D2D656D6974;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6E6F697461727564;
      break;
    default:
      return result;
  }

  return result;
}

__n128 sub_1001619E8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(&v39 + 1) = 0xE000000000000000;
  *&v40 = a1;
  *(&v40 + 1) = a2;
  sub_10016923C();
  v42[0] = 0;
  v42[1] = v4;
  v42[2] = v5;
  v42[3] = v6;
  sub_10000B8B0(v5, v6, v7, v8, v9, v10, v11, v12, v23, v25, v27, v29, v31, v33, v35, v37, 0);
  v13 = sub_100161A78(v42);
  sub_10000D0B4(v13, v14, v15, v16, v17, v18, v19, v20, v24, v26, v28, v30, v32, v34, v36, v38, v39, v40, v21);
  result = v41;
  *(a3 + 41) = v41;
  return result;
}

void AvroSchema.RecordSchema.init(from:)()
{
  sub_100004868();
  sub_1000AC3AC();
  v4 = sub_100099DF4(&qword_1002DEEF0, &qword_10023D530);
  sub_100003724(v4);
  v6 = *(v5 + 64);
  sub_100003774();
  __chkstk_darwin(v7);
  sub_100004880();
  v8 = v0[4];
  sub_100008B3C(v0, v0[3]);
  sub_100161E10();
  sub_100169230();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000C0C0();
    sub_100004118(v0);

    if (v1)
    {
    }
  }

  else
  {
    sub_1000073DC();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_1000073DC();
    KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v17[0]) = 2;
    sub_1000073DC();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100099DF4(&qword_1002DEE98, &qword_10023D238);
    sub_10000BF3C();
    sub_1001692FC(v9);
    sub_100007D58(&qword_1002DEF00);
    sub_10000679C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10 = sub_100099DF4(&qword_1002DED88, &qword_10023CCE0);
    sub_1001692FC(4);
    sub_100162F54(&qword_1002DEF08, &qword_1002DED88, &qword_10023CCE0, sub_100161E64);
    sub_10000679C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10000B08C();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11 = sub_100004258();
    v12(v11, v4);
    sub_10000EE9C();
    v16 = *(v13 - 256);
    v14 = sub_100002AA4();
    sub_10015BE18(v14, v15);
    sub_100004118(v0);
    sub_10000D580();
    v17[6] = v17[0];
    v17[7] = v17[0];
    v17[8] = v10;
    v17[9] = v3;
    v18 = 0;
    sub_10015BE74(v17);
    sub_100169344();
  }

  sub_1000109FC();
  sub_100005074();
}

unint64_t sub_100161E10()
{
  result = qword_1002DEEF8;
  if (!qword_1002DEEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEEF8);
  }

  return result;
}

unint64_t sub_100161E64()
{
  result = qword_1002DEF10;
  if (!qword_1002DEF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEF10);
  }

  return result;
}

void AvroSchema.EnumSchema.init(from:)()
{
  sub_100004868();
  sub_1000AC3AC();
  v3 = sub_100099DF4(&qword_1002DEF18, &unk_10023D538);
  sub_100003724(v3);
  v5 = *(v4 + 64);
  sub_100003774();
  __chkstk_darwin(v6);
  sub_100004880();
  v7 = v0[4];
  sub_100008B3C(v0, v0[3]);
  sub_1001621FC();
  sub_100169230();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000C0C0();
    sub_100004118(v0);

    if (v1)
    {
    }
  }

  else
  {
    sub_1000073DC();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_1000073DC();
    KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v18[0]) = 2;
    sub_1000073DC();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100099DF4(&qword_1002DEE98, &qword_10023D238);
    sub_10000BF3C();
    sub_1001692FC(v8);
    sub_100007D58(&qword_1002DEF00);
    sub_10000679C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v9 = sub_100099DF4(&qword_1002DA600, &qword_10022E490);
    sub_1001692FC(4);
    sub_100162250();
    sub_10000679C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10000B08C();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v10 = sub_100004258();
    v16 = v11;
    v12(v10, v3);
    sub_10000EE9C();
    v17 = *(v13 - 256);
    v14 = sub_100002AA4();
    sub_10015C048(v14, v15);
    sub_100004118(v0);
    sub_10000D580();
    v18[6] = v18[0];
    v18[7] = v9;
    v18[8] = v16;
    v18[9] = v18[0];
    v19 = 0;
    sub_10015C0A4(v18);
    sub_100169344();
  }

  sub_1000109FC();
  sub_100005074();
}

unint64_t sub_1001621FC()
{
  result = qword_1002DEF20;
  if (!qword_1002DEF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEF20);
  }

  return result;
}

unint64_t sub_100162250()
{
  result = qword_1002DEE10;
  if (!qword_1002DEE10)
  {
    sub_10009A468(&qword_1002DA600, &qword_10022E490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEE10);
  }

  return result;
}

void AvroSchema.ArraySchema.init(from:)()
{
  sub_100004868();
  v2 = v1;
  v13 = v3;
  v4 = sub_100099DF4(&qword_1002DEF28, &qword_10023D548);
  sub_100003724(v4);
  v6 = *(v5 + 64);
  sub_100003774();
  __chkstk_darwin(v7);
  sub_100005244();
  v8 = v2[4];
  sub_100008B3C(v2, v2[3]);
  sub_100162460();
  sub_1001692C4();
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    sub_10000DF5C();
    sub_100169364();
    sub_10000DBF4();
    v9 = sub_100003780();
    v10(v9);
    memcpy(v17, v16, sizeof(v17));
    sub_1001692A0();
    v11 = sub_1000028E0();
    sub_100150F70(v11, v12);
    sub_100004118(v2);
    sub_100008BC0();
    v15[114] = 0;
    sub_100150FCC(v15);
    memcpy(v13, v14, 0x73uLL);
  }

  sub_10000A7AC();
  sub_100005074();
}

unint64_t sub_100162460()
{
  result = qword_1002DEF30;
  if (!qword_1002DEF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEF30);
  }

  return result;
}

void AvroSchema.MapSchema.init(from:)()
{
  sub_100004868();
  v2 = v1;
  v13 = v3;
  v4 = sub_100099DF4(&qword_1002DEF38, &qword_10023D550);
  sub_100003724(v4);
  v6 = *(v5 + 64);
  sub_100003774();
  __chkstk_darwin(v7);
  sub_100005244();
  v8 = v2[4];
  sub_100008B3C(v2, v2[3]);
  sub_100162648();
  sub_1001692C4();
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    sub_10000DF5C();
    sub_100169364();
    sub_10000DBF4();
    v9 = sub_100003780();
    v10(v9);
    memcpy(v17, v16, sizeof(v17));
    sub_1001692A0();
    v11 = sub_1000028E0();
    sub_10014EA68(v11, v12);
    sub_100004118(v2);
    sub_100008BC0();
    v15[114] = 0;
    sub_10014EAC4(v15);
    memcpy(v13, v14, 0x73uLL);
  }

  sub_10000A7AC();
  sub_100005074();
}

unint64_t sub_100162648()
{
  result = qword_1002DEF40;
  if (!qword_1002DEF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEF40);
  }

  return result;
}

void AvroSchema.FixedSchema.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004868();
  sub_1000AC3AC();
  v15 = v14;
  v16 = sub_100099DF4(&qword_1002DEF48, &qword_10023D558);
  sub_100003724(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  sub_100003774();
  __chkstk_darwin(v21);
  sub_100005244();
  v64 = 1;
  v62 = 1;
  v22 = v10[3];
  v42 = v10;
  sub_100008B3C(v10, v22);
  sub_100162C54();
  sub_100169230();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    sub_100169224();
    sub_10000BB74();
    sub_100004118(v10);
    v47 = 0;
    v48 = 0;
    v49 = v22;
    v50 = v15;
    v51 = 0x6465786966;
    v52 = 0xE500000000000000;
    v53 = v12;
    v54 = 7;
    *v55 = *v65;
    *&v55[3] = *&v65[3];
    v56 = v43;
    v57 = a10;
    v58 = v64;
    *v59 = *v63;
    *&v59[3] = *&v63[3];
    v60 = 0;
    v61 = v62;
    sub_100162CA8(&v47);
  }

  else
  {
    LOBYTE(v47) = 0;
    v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40 = v23;
    sub_10000A644(1);
    v24 = KeyedDecodingContainer.decode(_:forKey:)();
    v38 = v25;
    v39 = v24;
    sub_10000A644(2);
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = v27;
    sub_100099DF4(&qword_1002DEE98, &qword_10023D238);
    sub_10000BF3C();
    sub_100007D58(&qword_1002DEF00);
    sub_100008C30();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v29 = v15;
    sub_10000A644(4);
    v44 = KeyedDecodingContainer.decode(_:forKey:)();
    v45[0] = 5;
    sub_10015D03C();
    sub_100008C30();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10000A644(6);
    v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v30 = v47;
    v64 = v31 & 1;
    v46 = 7;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100169224();
    v33 = v32;
    v34 = v13;
    v36 = v35;
    (*(v18 + 8))(v34, v16);
    v62 = v36 & 1;
    *v45 = v41;
    *&v45[8] = v40;
    *&v45[16] = v26;
    *&v45[24] = v28;
    *&v45[32] = v39;
    *&v45[40] = v38;
    *&v45[48] = v47;
    v45[56] = 0;
    *&v45[64] = v44;
    *&v45[72] = v66;
    v37 = v64;
    v45[80] = v64;
    *&v45[88] = v33;
    *&v45[96] = v36 & 1;
    sub_10014EA0C(v45, &v47);
    sub_100004118(v42);
    v47 = v41;
    v48 = v40;
    v49 = v26;
    v50 = v28;
    v51 = v39;
    v52 = v38;
    v53 = v30;
    v54 = 0;
    v56 = v44;
    v57 = v66;
    v58 = v37;
    v60 = v33;
    v61 = v36 & 1;
    sub_100162CA8(&v47);
    memcpy(v29, v45, 0x62uLL);
  }

  sub_100005074();
}

unint64_t sub_100162C54()
{
  result = qword_1002DEF50;
  if (!qword_1002DEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEF50);
  }

  return result;
}

void AvroSchema.UnionSchema.init(from:)()
{
  sub_100004868();
  sub_1000AC3AC();
  v3 = v2;
  v4 = sub_100099DF4(&qword_1002DEF58, &unk_10023D560);
  sub_100003724(v4);
  v6 = *(v5 + 64);
  sub_100003774();
  __chkstk_darwin(v7);
  sub_100005244();
  v8 = v0[4];
  sub_100008B3C(v0, v0[3]);
  sub_100162F00();
  sub_100169230();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004118(v0);
  }

  else
  {
    sub_100008C30();
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11 = v10;
    v18 = v9;
    sub_100008C30();
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = v13;
    v17 = v12;
    sub_100099DF4(&qword_1002DED58, &unk_10023CCC8);
    sub_100162F54(&qword_1002DED60, &qword_1002DED58, &unk_10023CCC8, sub_100157420);
    sub_100008C30();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = sub_100010D1C();
    v16(v15);
    sub_100004118(v0);
    *v3 = v18;
    v3[1] = v11;
    v3[2] = v17;
    v3[3] = v14;
    v3[4] = v19;
  }

  sub_1000109FC();
  sub_100005074();
}

unint64_t sub_100162F00()
{
  result = qword_1002DEF60;
  if (!qword_1002DEF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEF60);
  }

  return result;
}

uint64_t sub_100162F54(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10009A468(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_100162FD0@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  LOBYTE(v40) = a1;
  *(&v40 + 1) = a2;
  *&v41 = a3;
  *(&v41 + 1) = a4;
  sub_10016923C();
  v43[0] = v6;
  v43[1] = v7;
  v43[2] = v8;
  v43[3] = v9;
  sub_10000B8B0(v6, v7, v8, v9, v10, v11, v12, v13, v24, v26, v28, v30, v32, v34, v36, v38, v40);
  v14 = sub_100161A78(v43);
  sub_10000D0B4(v14, v15, v16, v17, v18, v19, v20, v21, v25, v27, v29, v31, v33, v35, v37, v39, v40, v41, v22);
  result = v42;
  *(a5 + 41) = v42;
  return result;
}

uint64_t AvroSchema.BytesSchema.encode(to:)()
{
  v2 = sub_100099DF4(&qword_1002DEF68, &qword_10023D570);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_10000AF24();
  sub_100002810();
  sub_100163184();
  sub_10000A484();
  v6 = *v0;
  v7 = v0[1];
  sub_1000040DC();
  sub_100003B48();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v15 = *(v0 + 16);
    sub_100008AD0();
    sub_10015C14C();
    sub_10016927C();
    v8 = v0[3];
    v9 = *(v0 + 32);
    sub_100003B48();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = v0[5];
    v11 = *(v0 + 48);
    sub_100003B48();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v12 = sub_10000EF58();
  return v13(v12);
}

unint64_t sub_100163184()
{
  result = qword_1002DEF70;
  if (!qword_1002DEF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEF70);
  }

  return result;
}

void sub_100163260()
{
  sub_100004868();
  v3 = v2;
  v4 = v0;
  v6 = v5;
  v9 = sub_100099DF4(v7, v8);
  sub_100003724(v9);
  v22 = v10;
  v12 = *(v11 + 64);
  sub_100003774();
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  v16 = v6[4];
  v17 = sub_100008B3C(v6, v6[3]);
  v3(v17);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = *v4;
  v19 = v4[1];
  v24[0] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    (*(v22 + 8))(v15, v9);
  }

  else
  {
    memcpy(v25, v4 + 2, 0x62uLL);
    memcpy(v24, v4 + 2, sizeof(v24));
    sub_10014416C(v25, v23);
    sub_100157620();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = (v22 + 8);
    memcpy(v23, v24, 0x62uLL);
    sub_1001441C8(v23);
    (*v20)(v15, v9);
  }

  sub_10000A7AC();
  sub_100005074();
}

uint64_t AvroSchema.FixedSchema.encode(to:)()
{
  v2 = sub_100099DF4(&qword_1002DEF88, &unk_10023D588);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_10000AF24();
  sub_100002810();
  sub_100162C54();
  sub_10000A484();
  v6 = *v0;
  v7 = v0[1];
  sub_1000083D8();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    v8 = v0[4];
    v9 = v0[5];
    sub_100003158(1);
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = v0[2];
    v11 = v0[3];
    sub_100003158(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = v0[6];
    sub_100099DF4(&qword_1002DEE98, &qword_10023D238);
    sub_10000B478(&qword_1002DEEA0);
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = v0[8];
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v0 + 56);
    sub_10015C14C();
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = v0[9];
    v14 = *(v0 + 80);
    sub_100003158(6);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v0[11];
    v16 = *(v0 + 96);
    sub_100003158(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v17 = sub_10000EF58();
  return v18(v17);
}

uint64_t sub_100163640(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10009A468(&qword_1002DEE98, &qword_10023D238);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001636AC()
{
  v1 = 1;
  switch(*(v0 + 56))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v3 & 1) == 0)
      {
        return 1;
      }

      goto LABEL_4;
    case 7:
      return v1;
    default:

LABEL_4:
      v1 = 0;
      if (*(v0 + 80))
      {
        return v1;
      }

      v4 = *(v0 + 72);
      if (v4 < 1)
      {
        return v1;
      }

      if ((*(v0 + 96) & 1) == 0 && *(v0 + 88) > v4)
      {
        return 0;
      }

      v5 = *(v0 + 64);
      if (v5 >= v4)
      {
        return 0;
      }

      v6 = __OFSUB__(v5, 1);
      v7 = v5 - 1;
      if (!v6)
      {
        v8 = 8 * v7;
        v9 = 3 * (v8 / 10);
        if (v9 >= v4)
        {
          return 1;
        }

        v10 = v8 % 10;
        if (v10 >= 1)
        {
          v11 = ~(-1 << (v10 & 0x3E));
          v1 = 1;
          while (v11 >= 0xB)
          {
            ++v9;
            v11 /= 0xAuLL;
            if (v9 >= v4)
            {
              return v1;
            }
          }
        }

        return v9 >= v4;
      }

      __break(1u);
      return result;
  }
}

Swift::String __swiftcall AvroSchema.getTypeName()()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 96);
  v6 = 0xE500000000000000;
  v7 = 0x6E6F696E75;
  switch(v5 >> 12)
  {
    case 1u:
      sub_10000811C();
      switch(v10)
      {
        case 1:
          goto LABEL_14;
        case 2:
          goto LABEL_27;
        case 3:
          goto LABEL_28;
        case 4:
          goto LABEL_26;
        case 5:
          goto LABEL_29;
        case 6:
          goto LABEL_31;
        case 7:
          v6 = 0xE400000000000000;
          v7 = 1735290732;
          break;
        default:
          goto LABEL_5;
      }

      break;
    case 2u:
      sub_10000811C();
      switch(v11)
      {
        case 1:
          goto LABEL_14;
        case 2:
          goto LABEL_27;
        case 3:
          goto LABEL_28;
        case 4:
          goto LABEL_26;
        case 5:
          goto LABEL_29;
        case 6:
          goto LABEL_31;
        case 7:
          sub_10016931C();
          break;
        default:
          goto LABEL_5;
      }

      break;
    case 3u:
    case 4u:
    case 9u:
      v7 = *(v1 + 48);
      v6 = *(v1 + 56);
      goto LABEL_4;
    case 5u:
    case 6u:
      v7 = *(v1 + 16);
      v6 = *(v1 + 24);
LABEL_4:

      break;
    case 7u:
      break;
    case 8u:
      v7 = *(v0 + 32);

      break;
    case 0xAu:
      sub_100169330();
      break;
    case 0xBu:
      v7 = 0x646C656966;
      break;
    case 0xCu:
      v6 = 0xE700000000000000;
      v7 = 0x64696C61766E69;
      break;
    case 0xDu:
      v13 = *(v0 + 80);
      v14 = *(v0 + 88);
      v16 = *(v0 + 64);
      v15 = *(v0 + 72);
      v18 = *(v0 + 48);
      v17 = *(v0 + 56);
      v19 = *(v0 + 24);
      v20 = *(v0 + 8);
      if (v5 != 53248 || v2 | v1 | v4 | v3 | v14 | v13 | v15 | v16 | v17 | v18 | v19 | v20)
      {
        v21 = v4 | v2 | v3 | v14 | v13 | v15 | v16 | v17 | v18 | v19 | v20;
        v22 = v5 == 53248 && v1 == 1;
        if (!v22 || v21)
        {
          v24 = v5 == 53248 && v1 == 2;
          if (!v24 || v21)
          {
            if (v21)
            {
              v25 = 0;
            }

            else
            {
              v25 = v1 == 3;
            }

            if (v25 && v5 == 53248)
            {
              v7 = 0x656C62756F64;
            }

            else
            {
              v7 = 0x676E69727473;
            }

            v6 = 0xE600000000000000;
          }

          else
          {
            v7 = 0x74616F6C66;
          }
        }

        else
        {
          sub_10000F3EC();
        }
      }

      else
      {
        v6 = 0xE400000000000000;
        v7 = 1819047278;
      }

      break;
    default:
      sub_10000811C();
      switch(v12)
      {
        case 1:
LABEL_14:
          v6 = 0xE400000000000000;
          v7 = 1702125924;
          break;
        case 2:
LABEL_27:
          sub_100169214();
          v7 = 0x6C69006E6F696E75;
          v6 = 0xEB0000000073696CLL;
          break;
        case 3:
LABEL_28:
          sub_100169214();
          sub_100169264();
          break;
        case 4:
LABEL_26:
          sub_10000AE78();
          v23 = "timestamp-millis";
          goto LABEL_30;
        case 5:
LABEL_29:
          sub_10000AE78();
          v23 = "timestamp-micros";
LABEL_30:
          v6 = (v23 - 32) | 0x8000000000000000;
          break;
        case 6:
LABEL_31:
          sub_10016924C();
          break;
        case 7:
          v6 = 0xE300000000000000;
          v7 = 7630441;
          break;
        default:
          goto LABEL_5;
      }

      break;
  }

LABEL_5:
  v8 = v7;
  v9 = v6;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t static AvroSchema.UnionSchema.__derived_struct_equals(_:_:)(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1[3];
  v9 = a2[3];
  if (v8)
  {
    if (v9)
    {
      v10 = a1[2] == a2[2] && v8 == v9;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_17;
      }
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_17:
  v11 = a1[4];
  v12 = a2[4];

  return sub_100143B9C(v11, v12);
}

Swift::Int AvroSchema.hashValue.getter()
{
  Hasher.init(_seed:)();
  AvroSchema.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100163C34()
{
  sub_100002DDC();
  v1._object = v0;
  v2 = _findStringSwitchCase(cases:string:)(&off_1002B4160, v1);

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100163C7C()
{
  sub_100002DDC();
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_100163CF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100163C34();
  *a2 = result;
  return result;
}

unint64_t sub_100163D20@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100161910(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100163DEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100163C7C();
  *a2 = result;
  return result;
}

unint64_t sub_100163E1C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10016176C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::String_optional __swiftcall AvroSchema.getFullname()()
{
  v2 = *v1;
  switch(*(v1 + 96) >> 12)
  {
    case 3:
    case 9:
      memcpy(__dst, v2 + 2, 0x51uLL);
      v0 = __dst[1];
      if (!__dst[1])
      {
        v2 = __dst[4];
        v0 = __dst[5];
        goto LABEL_23;
      }

      v2 = __dst[0];
      v26[0] = __dst[0];
      v26[1] = __dst[1];
      __dst[15] = 46;
      __dst[16] = 0xE100000000000000;
      sub_10015BE18(__dst, &v23);
      sub_1000BBBB0();

      if ((StringProtocol.contains<A>(_:)() & 1) == 0)
      {
        v3 = __dst[3];
        if (__dst[3])
        {
          v4 = __dst[2];
          sub_100099DF4(&qword_1002DD538, &unk_100238260);
          v5 = swift_allocObject();
          *(v5 + 16) = xmmword_1002329F0;
          *(v5 + 32) = v4;
          *(v5 + 40) = v3;
          *(v5 + 48) = v2;
          *(v5 + 56) = v0;
          v23 = v5;

          v0 = sub_100099DF4(&qword_1002DA600, &qword_10022E490);
          sub_100010288();
          BidirectionalCollection<>.joined(separator:)();
          sub_100013E30();
        }
      }

      sub_10015BE74(__dst);
      break;
    case 4:
      v6 = v2[3];
      v0 = v2[7];
      if (v6)
      {
        v7 = v2[2];
        v9 = v2[4];
        v8 = v2[5];
        v10 = v2[10];
        v11 = v2[11];
        v12 = v2[8];
        __dst[0] = v7;
        __dst[1] = v6;
        v23 = 46;
        v24 = 0xE100000000000000;
        sub_1000BBBB0();
        swift_bridgeObjectRetain_n();

        if ((StringProtocol.contains<A>(_:)() & 1) != 0 || !v8)
        {

          v0 = v6;
        }

        else
        {
          sub_100099DF4(&qword_1002DD538, &unk_100238260);
          v13 = swift_allocObject();
          *(v13 + 16) = xmmword_1002329F0;
          *(v13 + 32) = v9;
          *(v13 + 40) = v8;
          *(v13 + 48) = v7;
          *(v13 + 56) = v6;
          __dst[0] = v13;

          sub_100099DF4(&qword_1002DA600, &qword_10022E490);
          sub_100010288();
          sub_100169308();
          v7 = BidirectionalCollection<>.joined(separator:)();
          v15 = v14;

          v0 = v15;
        }
      }

      else
      {
        v7 = v2[6];
        v19 = v2[7];
      }

      v2 = v7;
      break;
    case 5:
      memcpy(__dst, v2 + 2, 0x73uLL);
      memcpy(v26, v2 + 4, 0x62uLL);
      sub_100150F70(__dst, &v23);
      AvroSchema.getFullname()();
      sub_100013E30();
      sub_100150FCC(__dst);
      break;
    case 6:
      memcpy(__dst, v2 + 2, 0x73uLL);
      memcpy(v26, v2 + 4, 0x62uLL);
      sub_10014EA68(__dst, &v23);
      AvroSchema.getFullname()();
      sub_100013E30();
      sub_10014EAC4(__dst);
      break;
    case 8:
      v0 = *(v1 + 8);
      if (v0)
      {
        v17 = *(v1 + 16);
        v16 = *(v1 + 24);
        __dst[0] = *v1;
        __dst[1] = v0;
        v23 = 46;
        v24 = 0xE100000000000000;
        sub_1000BBBB0();

        if ((StringProtocol.contains<A>(_:)() & 1) == 0 && v16)
        {
          sub_100099DF4(&qword_1002DD538, &unk_100238260);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_1002329F0;
          *(v18 + 32) = v17;
          *(v18 + 40) = v16;
          *(v18 + 48) = v2;
          *(v18 + 56) = v0;
          __dst[0] = v18;

          v0 = sub_100099DF4(&qword_1002DA600, &qword_10022E490);
          sub_100010288();
          sub_100169308();
          BidirectionalCollection<>.joined(separator:)();
          sub_100013E30();
        }
      }

      else
      {
        v2 = *(v1 + 32);
        v0 = *(v1 + 40);
LABEL_23:
      }

      break;
    default:
      AvroSchema.getName()();
      sub_100013E30();
      break;
  }

  v20 = v2;
  v21 = v0;
  result.value._object = v21;
  result.value._countAndFlagsBits = v20;
  return result;
}

uint64_t sub_10016438C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73657361696C61 && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x73646C656966 && a2 == 0xE600000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 6516580 && a2 == 0xE300000000000000)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100164580(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x63617073656D616ELL;
      break;
    case 3:
      result = 0x73657361696C61;
      break;
    case 4:
      result = 0x73646C656966;
      break;
    case 5:
      result = 6516580;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100164638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10016438C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100164660(uint64_t a1)
{
  v2 = sub_100161E10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016469C(uint64_t a1)
{
  v2 = sub_100161E10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AvroSchema.RecordSchema.addField(_:)(void *__src)
{
  v2 = v1;
  memcpy(__dst, __src, sizeof(__dst));
  v5 = AvroSchema.getName()();
  result = v5.value._countAndFlagsBits;
  if (v5.value._object)
  {
    sub_10014416C(__src, &v9);
    sub_1001671A0(sub_10013C3D0);
    v6 = *(*(v2 + 48) + 16);
    sub_100167214(v6, sub_10013C3D0);
    v7 = *(v2 + 48);
    *(v7 + 16) = v6 + 1;
    v8 = v7 + 184 * v6;
    *(v8 + 32) = v5;
    result = memcpy((v8 + 48), __dst, 0x62uLL);
    *(v8 + 152) = 0u;
    *(v8 + 168) = 0u;
    *(v8 + 184) = 0u;
    *(v8 + 200) = 0;
    *(v8 + 208) = 2;
    *(v2 + 48) = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001647CC(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x51uLL);
  memcpy(__dst, a2, 0x51uLL);
  return static AvroSchema.RecordSchema.== infix(_:_:)(v4, __dst) & 1;
}

void sub_100164824(void *a1@<X8>)
{
  AvroSchema.RecordSchema.init(from:)();
  if (!v1)
  {
    memcpy(a1, __src, 0x51uLL);
  }
}

uint64_t sub_1001648C4()
{
  sub_100002DDC();
  memcpy(v3, v1, 0xB2uLL);
  memcpy(__dst, v0, 0xB2uLL);
  return static AvroSchema.FieldSchema.== infix(_:_:)(v3, __dst) & 1;
}

void sub_100164918(void *a1@<X8>)
{
  AvroSchema.FieldSchema.init(from:)();
  if (!v1)
  {
    memcpy(a1, __src, 0xB2uLL);
  }
}

uint64_t sub_1001649B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73657361696C61 && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x736C6F626D7973 && a2 == 0xE700000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 6516580 && a2 == 0xE300000000000000)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100164BB0(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x63617073656D616ELL;
      break;
    case 3:
      v3 = 0x657361696C61;
      goto LABEL_6;
    case 4:
      v3 = 0x6C6F626D7973;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    case 5:
      result = 6516580;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100164C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001649B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100164C78(uint64_t a1)
{
  v2 = sub_1001621FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100164CB4(uint64_t a1)
{
  v2 = sub_1001621FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_100164CF0(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x51uLL);
  memcpy(__dst, a2, 0x51uLL);
  return static AvroSchema.EnumSchema.== infix(_:_:)(v4, __dst);
}

void sub_100164D48(void *a1@<X8>)
{
  AvroSchema.EnumSchema.init(from:)();
  if (!v1)
  {
    memcpy(a1, __src, 0x51uLL);
  }
}

uint64_t sub_100164DE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100164EAC(char a1)
{
  if (a1)
  {
    return 0x736D657469;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_100164EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100164DE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100164F20(uint64_t a1)
{
  v2 = sub_100162460();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100164F5C(uint64_t a1)
{
  v2 = sub_100162460();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100164F98(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x73uLL);
  memcpy(__dst, a2, 0x73uLL);
  return static AvroSchema.ArraySchema.== infix(_:_:)(v4, __dst) & 1;
}

uint64_t sub_100165034(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1001650F8(char a1)
{
  if (a1)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_10016512C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100165034(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100165154(uint64_t a1)
{
  v2 = sub_100162648();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100165190(uint64_t a1)
{
  v2 = sub_100162648();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001651CC(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x73uLL);
  memcpy(__dst, a2, 0x73uLL);
  return static AvroSchema.MapSchema.== infix(_:_:)(v4, __dst) & 1;
}

void *sub_100165250@<X0>(void *(*a1)(void *__return_ptr)@<X3>, void *a2@<X8>)
{
  result = a1(__src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x73uLL);
  }

  return result;
}

uint64_t sub_1001652B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73657361696C61 && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1702521203 && a2 == 0xE400000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x546C616369676F6CLL && a2 == 0xEB00000000657079;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F69736963657270 && a2 == 0xE90000000000006ELL;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10016553C(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x63617073656D616ELL;
      break;
    case 3:
      result = 0x73657361696C61;
      break;
    case 4:
      result = 1702521203;
      break;
    case 5:
      result = 0x546C616369676F6CLL;
      break;
    case 6:
      result = 0x6F69736963657270;
      break;
    case 7:
      result = 0x656C616373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100165618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001652B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100165640(uint64_t a1)
{
  v2 = sub_100162C54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016567C(uint64_t a1)
{
  v2 = sub_100162C54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001656B8(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x62uLL);
  memcpy(__dst, a2, 0x62uLL);
  return static AvroSchema.FixedSchema.== infix(_:_:)(v4, __dst) & 1;
}

void sub_100165710(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  AvroSchema.FixedSchema.init(from:)(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0]);
  if (!v9)
  {
    memcpy(a9, __src, 0x62uLL);
  }
}

uint64_t sub_100165774(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x546C616369676F6CLL && a2 == 0xEB00000000657079;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F69736963657270 && a2 == 0xE90000000000006ELL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1001658D4(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x546C616369676F6CLL;
      break;
    case 2:
      result = 0x6F69736963657270;
      break;
    case 3:
      result = 0x656C616373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100165960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100165774(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100165988(uint64_t a1)
{
  v2 = sub_100163184();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001659C4(uint64_t a1)
{
  v2 = sub_100163184();

  return CodingKey.debugDescription.getter(a1, v2);
}

void AvroSchema.BytesSchema.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, unsigned __int8 a12)
{
  sub_100004868();
  v14 = v13;
  v16 = v15;
  v17 = sub_100099DF4(&qword_1002DEF90, &qword_10023D598);
  sub_100003724(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  sub_100003774();
  __chkstk_darwin(v22);
  v24 = &v35 - v23;
  v25 = v14[4];
  sub_100008B3C(v14, v14[3]);
  sub_100163184();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    sub_100004118(v14);
  }

  else
  {
    sub_100005D54();
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    v28 = v27;
    sub_100008AD0();
    sub_10015D03C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v38 = a12;
    sub_100005D54();
    v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = v30;
    v37 = v29;
    sub_100005D54();
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32 = v24;
    v34 = v33;
    (*(v19 + 8))(v32, v17);
    sub_100004118(v14);
    *v16 = v26;
    *(v16 + 8) = v28;
    *(v16 + 16) = v38;
    *(v16 + 24) = v37;
    *(v16 + 32) = v36 & 1;
    *(v16 + 40) = v31;
    *(v16 + 48) = v34 & 1;
  }

  sub_10000A7AC();
  sub_100005074();
}

uint64_t sub_100165C10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return static AvroSchema.BytesSchema.== infix(_:_:)(v5, v7) & 1;
}

double sub_100165C6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  AvroSchema.BytesSchema.init(from:)(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, SWORD2(v13), BYTE6(v13));
  if (!v9)
  {
    *a9 = v13;
    *(a9 + 16) = v14;
    result = *&v15;
    *(a9 + 32) = v15;
    *(a9 + 48) = v16;
  }

  return result;
}

uint64_t sub_100165CD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C616E6F6974706FLL && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736568636E617262 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_100165DEC(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x6C616E6F6974706FLL;
  }

  return 0x736568636E617262;
}

uint64_t sub_100165E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100165CD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100165E6C(uint64_t a1)
{
  v2 = sub_100162F00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100165EA8(uint64_t a1)
{
  v2 = sub_100162F00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AvroSchema.UnionSchema.encode(to:)()
{
  v2 = sub_100099DF4(&qword_1002DEF98, &qword_10023D5A0);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_10000AF24();
  sub_100002810();
  sub_100162F00();
  sub_10000A484();
  v6 = *v0;
  v7 = v0[1];
  sub_1000040DC();
  sub_100003B48();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    v8 = v0[2];
    v9 = v0[3];
    sub_100003B48();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = v0[4];
    sub_100099DF4(&qword_1002DED58, &unk_10023CCC8);
    sub_10016725C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v10 = sub_10000EF58();
  return v11(v10);
}

double sub_10016604C@<D0>(uint64_t a1@<X8>)
{
  AvroSchema.UnionSchema.init(from:)();
  if (!v1)
  {
    result = *&v4;
    *a1 = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  return result;
}

uint64_t sub_1001660AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x546C616369676F6CLL && a2 == 0xEB00000000657079)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100166178(char a1)
{
  if (a1)
  {
    return 0x546C616369676F6CLL;
  }

  else
  {
    return 1701869940;
  }
}

Swift::Int sub_1001661B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t sub_100166204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001660AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10016622C(uint64_t a1)
{
  v2 = sub_1001672E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100166268(uint64_t a1)
{
  v2 = sub_1001672E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void AvroSchema.IntSchema.encode(to:)()
{
  sub_100004868();
  v3 = v2;
  v4 = sub_100099DF4(&qword_1002DEFA8, &qword_10023D5A8);
  sub_100003724(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100003774();
  __chkstk_darwin(v9);
  sub_10000AF24();
  v10 = v3[4];
  sub_100008B3C(v3, v3[3]);
  sub_1001672E0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000040DC();
  sub_100003B48();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_100008AD0();
    sub_10015C14C();
    sub_10016927C();
  }

  (*(v6 + 8))(v1, v4);
  sub_10000A7AC();
  sub_100005074();
}

uint64_t AvroSchema.IntSchema.init(from:)()
{
  sub_1000AC3AC();
  v2 = sub_100099DF4(&qword_1002DEFB8, &qword_10023D5B0);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100004880();
  v6 = v0[4];
  sub_100008B3C(v0, v0[3]);
  sub_1001672E0();
  sub_100169230();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_10000B08C();
    v6 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100008AD0();
    sub_10015D03C();
    sub_10000B08C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v8 = sub_10000BD0C();
    v9(v8);
  }

  sub_100004118(v0);
  return v6;
}

uint64_t sub_1001665A0@<X0>(uint64_t a1@<X8>)
{
  result = AvroSchema.IntSchema.init(from:)();
  if (!v1)
  {
    *a1 = result;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }

  return result;
}

void sub_1001665D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  AvroSchema.IntSchema.encode(to:)();
}

uint64_t sub_1001665F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73657361696C61 && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6974756C6F736572 && a2 == 0xEA00000000006E6FLL)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1001667A8(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x63617073656D616ELL;
      break;
    case 3:
      result = 0x73657361696C61;
      break;
    case 4:
      result = 0x6974756C6F736572;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_100166838(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t sub_10016688C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001665F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001668B4(uint64_t a1)
{
  v2 = sub_100167334();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001668F0(uint64_t a1)
{
  v2 = sub_100167334();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AvroSchema.UnknownSchema.encode(to:)()
{
  v2 = sub_100099DF4(&qword_1002DEFC0, &qword_10023D5B8);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_10000AF24();
  sub_100002810();
  sub_100167334();
  sub_10000A484();
  v6 = *v0;
  v7 = v0[1];
  sub_1000040DC();
  sub_1000083D8();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8 = v0[2];
    v9 = v0[3];
    sub_1000083D8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = v0[4];
    v11 = v0[5];
    sub_1000083D8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = v0[6];
    sub_100099DF4(&qword_1002DEE98, &qword_10023D238);
    sub_10000B478(&qword_1002DEEA0);
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = *(v0 + 56);
    sub_100167388();
    sub_100003B2C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v12 = sub_10000EF58();
  return v13(v12);
}

void AvroSchema.UnknownSchema.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_100004868();
  sub_1000AC3AC();
  v16 = v15;
  v17 = sub_100099DF4(&qword_1002DEFD8, &qword_10023D5C0);
  sub_100003724(v17);
  v19 = *(v18 + 64);
  sub_100003774();
  __chkstk_darwin(v20);
  sub_100005244();
  v21 = v13[4];
  sub_100008B3C(v13, v13[3]);
  sub_100167334();
  sub_100169230();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    sub_100004118(v13);
  }

  else
  {
    sub_100008C30();
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v35 = v23;
    sub_100008C30();
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v34 = v25;
    LOBYTE(v39[0]) = 2;
    sub_100008C30();
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = v26;
    sub_100099DF4(&qword_1002DEE98, &qword_10023D238);
    sub_10000BF3C();
    sub_100007D58(&qword_1002DEF00);
    sub_100008C30();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v31 = v24;
    v27 = v39[0];
    sub_1001673DC();
    sub_100008C30();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28 = sub_100003780();
    v29(v28);
    *&v36 = v22;
    *(&v36 + 1) = v35;
    *&v37 = v31;
    *(&v37 + 1) = v34;
    *v38 = v32;
    *&v38[8] = v33;
    *&v38[16] = v39[0];
    v38[24] = a13;
    sub_100161A40(&v36, v39);
    sub_100004118(v13);
    v39[0] = v22;
    v39[1] = v35;
    v39[2] = v31;
    v39[3] = v34;
    v39[4] = v32;
    v39[5] = v33;
    v39[6] = v27;
    v40 = a13;
    sub_100161A78(v39);
    v30 = v37;
    *v16 = v36;
    v16[1] = v30;
    v16[2] = *v38;
    *(v16 + 41) = *&v38[9];
  }

  sub_1000109FC();
  sub_100005074();
}

double sub_100166E20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  AvroSchema.UnknownSchema.init(from:)(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14));
  if (!v9)
  {
    *a9 = v13;
    a9[1] = v15;
    a9[2] = *v16;
    result = *&v16[9];
    *(a9 + 41) = *&v16[9];
  }

  return result;
}

amsaccountsd::AvroSchemaEncodingOption_optional __swiftcall AvroSchemaEncodingOption.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

amsaccountsd::AvroSchemaEncodingOption_optional sub_100166EB4@<W0>(Swift::Int *a1@<X0>, amsaccountsd::AvroSchemaEncodingOption_optional *a2@<X8>)
{
  result.value = AvroSchemaEncodingOption.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100166EE0@<X0>(uint64_t *a1@<X8>)
{
  result = AvroSchemaEncodingOption.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

void sub_100166FBC(void *a1@<X8>)
{
  AvroSchema.init(from:)();
  if (!v1)
  {
    memcpy(a1, __src, 0x62uLL);
  }
}

Swift::Int sub_1001670DC()
{
  memcpy(__dst, v0, sizeof(__dst));
  Hasher.init(_seed:)();
  AvroSchema.hash(into:)(&v2);
  return Hasher._finalize()();
}

uint64_t sub_100167134()
{
  sub_100002DDC();
  memcpy(v3, v1, 0x62uLL);
  memcpy(__dst, v0, 0x62uLL);
  return static AvroSchema.== infix(_:_:)(v3, __dst) & 1;
}

uint64_t sub_1001671A0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_100167214(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

unint64_t sub_10016725C()
{
  result = qword_1002DEFA0;
  if (!qword_1002DEFA0)
  {
    sub_10009A468(&qword_1002DED58, &unk_10023CCC8);
    sub_100157620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEFA0);
  }

  return result;
}

unint64_t sub_1001672E0()
{
  result = qword_1002DEFB0;
  if (!qword_1002DEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEFB0);
  }

  return result;
}

unint64_t sub_100167334()
{
  result = qword_1002DEFC8;
  if (!qword_1002DEFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEFC8);
  }

  return result;
}

unint64_t sub_100167388()
{
  result = qword_1002DEFD0;
  if (!qword_1002DEFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEFD0);
  }

  return result;
}

unint64_t sub_1001673DC()
{
  result = qword_1002DEFE0;
  if (!qword_1002DEFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEFE0);
  }

  return result;
}

unint64_t sub_10016745C()
{
  result = qword_1002DEFE8;
  if (!qword_1002DEFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEFE8);
  }

  return result;
}

unint64_t sub_1001674B0()
{
  result = qword_1002DEFF0;
  if (!qword_1002DEFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEFF0);
  }

  return result;
}

unint64_t sub_100167530()
{
  result = qword_1002DEFF8;
  if (!qword_1002DEFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEFF8);
  }

  return result;
}

unint64_t sub_100167584()
{
  result = qword_1002DF000;
  if (!qword_1002DF000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF000);
  }

  return result;
}

unint64_t sub_100167604()
{
  result = qword_1002DF008;
  if (!qword_1002DF008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF008);
  }

  return result;
}

unint64_t sub_100167658()
{
  result = qword_1002DF010;
  if (!qword_1002DF010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF010);
  }

  return result;
}

uint64_t sub_1001676D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100167714()
{
  result = qword_1002DF018;
  if (!qword_1002DF018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF018);
  }

  return result;
}

unint64_t sub_100167768()
{
  result = qword_1002DF020;
  if (!qword_1002DF020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF020);
  }

  return result;
}

unint64_t sub_1001677C0()
{
  result = qword_1002DF028;
  if (!qword_1002DF028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF028);
  }

  return result;
}

uint64_t sub_10016781C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 98))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 57);
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_100167860(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 96) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 98) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 0;
      *(a1 + 56) = -a2 << 8;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0;
      return result;
    }

    *(a1 + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001678E4(uint64_t result, unsigned int a2)
{
  if (a2 < 0xD)
  {
    v3 = *(result + 80) & 1;
    v2 = *(result + 96) & 0x301 | (a2 << 12);
    *(result + 56) = *(result + 56);
    *(result + 80) = v3;
  }

  else
  {
    *result = a2 - 13;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    v2 = -12288;
    *(result + 88) = 0;
  }

  *(result + 96) = v2;
  return result;
}

uint64_t sub_100167968(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 178))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1001679A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 178) = 1;
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

    *(result + 178) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100167A24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_100167A64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100167ADC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 115))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_100167B1C(uint64_t result, int a2, int a3)
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
    *(result + 114) = 0;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 115) = 1;
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

    *(result + 115) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100167B8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 98))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_100167BCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 98) = 1;
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

    *(result + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100167C34(uint64_t a1, uint64_t a2)
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

uint64_t sub_100167C50(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_100167C90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100167CEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100167D2C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

__n128 sub_100167D80(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100167D94(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_100167DD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AvroSchema.UnknownSchema.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AvroSchema.BytesSchema.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t sub_100168000(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_100168088(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
        break;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100168160(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100004918(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return sub_100004918((*a1 | (v4 << 8)) - 3);
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

      return sub_100004918((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_100004918((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_100004918(v8);
}

_BYTE *sub_1001681E4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_10000512C(result, v6);
        break;
      case 2:
        result = sub_100008B94(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100004FA8(result, v6);
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
          result = sub_100006284(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001682B0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        break;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AvroSchema.FixedSchema.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        break;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100168474(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100004918(-1);
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
      return sub_100004918((*a1 | (v4 << 8)) - 2);
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

      return sub_100004918((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_100004918((*a1 | (v4 << 8)) - 2);
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

  return sub_100004918(v8);
}

_BYTE *sub_1001684F8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = sub_10000512C(result, v6);
        break;
      case 2:
        result = sub_100008B94(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100004FA8(result, v6);
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
          result = sub_100006284(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001685D4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_10000512C(result, v6);
        break;
      case 2:
        result = sub_100008B94(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100004FA8(result, v6);
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
          result = sub_100006284(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001686A4()
{
  result = qword_1002DF030;
  if (!qword_1002DF030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF030);
  }

  return result;
}

unint64_t sub_1001686FC()
{
  result = qword_1002DF038;
  if (!qword_1002DF038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF038);
  }

  return result;
}

unint64_t sub_100168754()
{
  result = qword_1002DF040;
  if (!qword_1002DF040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF040);
  }

  return result;
}

unint64_t sub_1001687AC()
{
  result = qword_1002DF048;
  if (!qword_1002DF048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF048);
  }

  return result;
}

unint64_t sub_100168804()
{
  result = qword_1002DF050;
  if (!qword_1002DF050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF050);
  }

  return result;
}

unint64_t sub_10016885C()
{
  result = qword_1002DF058;
  if (!qword_1002DF058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF058);
  }

  return result;
}

unint64_t sub_1001688B4()
{
  result = qword_1002DF060;
  if (!qword_1002DF060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF060);
  }

  return result;
}

unint64_t sub_10016890C()
{
  result = qword_1002DF068;
  if (!qword_1002DF068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF068);
  }

  return result;
}

unint64_t sub_100168964()
{
  result = qword_1002DF070;
  if (!qword_1002DF070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF070);
  }

  return result;
}

unint64_t sub_1001689BC()
{
  result = qword_1002DF078;
  if (!qword_1002DF078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF078);
  }

  return result;
}

unint64_t sub_100168A14()
{
  result = qword_1002DF080;
  if (!qword_1002DF080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF080);
  }

  return result;
}

unint64_t sub_100168A6C()
{
  result = qword_1002DF088;
  if (!qword_1002DF088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF088);
  }

  return result;
}

unint64_t sub_100168AC4()
{
  result = qword_1002DF090;
  if (!qword_1002DF090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF090);
  }

  return result;
}

unint64_t sub_100168B1C()
{
  result = qword_1002DF098;
  if (!qword_1002DF098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF098);
  }

  return result;
}

unint64_t sub_100168B74()
{
  result = qword_1002DF0A0;
  if (!qword_1002DF0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF0A0);
  }

  return result;
}

unint64_t sub_100168BCC()
{
  result = qword_1002DF0A8;
  if (!qword_1002DF0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF0A8);
  }

  return result;
}

unint64_t sub_100168C24()
{
  result = qword_1002DF0B0;
  if (!qword_1002DF0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF0B0);
  }

  return result;
}

unint64_t sub_100168C7C()
{
  result = qword_1002DF0B8;
  if (!qword_1002DF0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF0B8);
  }

  return result;
}

unint64_t sub_100168CD4()
{
  result = qword_1002DF0C0;
  if (!qword_1002DF0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF0C0);
  }

  return result;
}

unint64_t sub_100168D2C()
{
  result = qword_1002DF0C8;
  if (!qword_1002DF0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF0C8);
  }

  return result;
}

unint64_t sub_100168D84()
{
  result = qword_1002DF0D0;
  if (!qword_1002DF0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF0D0);
  }

  return result;
}

unint64_t sub_100168DDC()
{
  result = qword_1002DF0D8;
  if (!qword_1002DF0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF0D8);
  }

  return result;
}

unint64_t sub_100168E34()
{
  result = qword_1002DF0E0;
  if (!qword_1002DF0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF0E0);
  }

  return result;
}

unint64_t sub_100168E8C()
{
  result = qword_1002DF0E8;
  if (!qword_1002DF0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF0E8);
  }

  return result;
}

unint64_t sub_100168EE4()
{
  result = qword_1002DF0F0;
  if (!qword_1002DF0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF0F0);
  }

  return result;
}

unint64_t sub_100168F3C()
{
  result = qword_1002DF0F8;
  if (!qword_1002DF0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF0F8);
  }

  return result;
}

unint64_t sub_100168F94()
{
  result = qword_1002DF100;
  if (!qword_1002DF100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF100);
  }

  return result;
}

unint64_t sub_100168FEC()
{
  result = qword_1002DF108;
  if (!qword_1002DF108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF108);
  }

  return result;
}

unint64_t sub_100169044()
{
  result = qword_1002DF110;
  if (!qword_1002DF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF110);
  }

  return result;
}

unint64_t sub_10016909C()
{
  result = qword_1002DF118;
  if (!qword_1002DF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF118);
  }

  return result;
}

unint64_t sub_1001690F0()
{
  result = qword_1002DF120;
  if (!qword_1002DF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF120);
  }

  return result;
}

unint64_t sub_100169144()
{
  result = qword_1002DF128;
  if (!qword_1002DF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF128);
  }

  return result;
}

unint64_t sub_100169198()
{
  result = qword_1002DF130;
  if (!qword_1002DF130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF130);
  }

  return result;
}

uint64_t sub_10016927C()
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

void *sub_1001692A0()
{
  v0[1] = v1;
  v0[2] = v2;

  return memcpy(v0 + 3, v0 + 31, 0x62uLL);
}

uint64_t sub_1001692C4()
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

void *sub_100169344()
{
  v2 = *(v0 - 304);

  return memcpy(v2, (v0 - 264), 0x51uLL);
}

unint64_t sub_100169364()
{
  *(v0 - 65) = 1;

  return sub_100157420();
}

uint64_t sub_100169384()
{
  sub_100004194();
  v1[213] = v0;
  v1[212] = v2;
  v3 = type metadata accessor for BagValueType();
  v1[214] = v3;
  v4 = *(v3 - 8);
  v1[215] = v4;
  v5 = *(v4 + 64) + 15;
  v1[216] = swift_task_alloc();
  sub_10000381C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100169440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000AF64();
  sub_100002E38();
  v11 = *(v10 + 1696);
  v12 = Dictionary.init(dictionaryLiteral:)();
  v13 = *(v11 + 16);
  *(v10 + 1736) = v13;
  v14 = enum case for BagValueType.array(_:);
  *(v10 + 2024) = enum case for BagValueType.array(_:);
  *(v10 + 2028) = enum case for BagValueType.BOOL(_:);
  *(v10 + 2032) = enum case for BagValueType.double(_:);
  *(v10 + 2036) = enum case for BagValueType.integer(_:);
  *(v10 + 2040) = enum case for BagValueType.string(_:);
  *(v10 + 2044) = enum case for BagValueType.url(_:);
  *(v10 + 2048) = enum case for BagValueType.dictionary(_:);
  *(v10 + 1792) = v12;
  *(v10 + 1784) = v12;
  *(v10 + 1776) = v12;
  *(v10 + 1768) = v12;
  *(v10 + 1760) = v12;
  *(v10 + 1752) = 0;
  *(v10 + 1744) = v12;
  v15 = *(v10 + 1728);
  if (v13)
  {
    v16 = *(v10 + 1720);
    v17 = *(v10 + 1712);
    (*(v16 + 16))(*(v10 + 1728), *(v10 + 1696) + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v17);
    if ((*(v16 + 88))(v15, v17) == v14)
    {
      sub_10000D5A0();
      v19 = sub_100013E3C(v18);
      v20(v19);
      v21 = sub_10000DC1C();
      v22 = sub_100170534(v21, "arrayForKey:");

      sub_1001705E8([v22 valuePromise]);
      sub_100170468();
      *(v10 + 272) = v23;
      *(v10 + 312) = v10 + 1640;
      *(v10 + 280) = sub_100169C20;
      sub_100006320();
      v24 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
      sub_1000039E8(v24);
      sub_100003D30(COERCE_DOUBLE(1107296256));
      *(v10 + 680) = &unk_1002BB360;
LABEL_25:
      sub_100170600(v25, "resultWithCompletion:");
      sub_1000041E0();

      return _swift_continuation_await(v82);
    }

    sub_100002ED4();
    if (v42)
    {
      sub_10000D5A0();
      v36 = sub_100013E3C(v35);
      v37(v36);
      v38 = sub_10000BD1C();
      v39 = sub_100170534(v38, "BOOLForKey:");

      sub_1001705A0([v39 valuePromise]);
      sub_100170468();
      *(v10 + 208) = v40;
      *(v10 + 248) = v10 + 1592;
      *(v10 + 216) = sub_10016A498;
      sub_100006320();
      v41 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_10000C0D0(v41);
      *(v10 + 472) = 1107296256;
      sub_1000083E8(&unk_1002BB338);
      goto LABEL_25;
    }

    sub_1001704C8();
    if (v42)
    {
      sub_10000D5A0();
      v44 = sub_100013E3C(v43);
      v45(v44);
      v46 = sub_1001703E4();
      v47 = sub_100170534(v46, "doubleForKey:");

      sub_1001705B8([v47 valuePromise]);
      sub_100170468();
      *(v10 + 400) = v48;
      *(v10 + 440) = v10 + 1608;
      *(v10 + 408) = sub_10016ACC8;
      sub_100006320();
      v49 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_100007D7C(v49);
      sub_100007794(COERCE_DOUBLE(1107296256));
      *(v10 + 808) = &unk_1002BB310;
      goto LABEL_25;
    }

    sub_1000040E8();
    if (v50)
    {
      sub_10000D5A0();
      v52 = sub_100013E3C(v51);
      v53(v52);
      v54 = sub_100170424();
      v55 = sub_100170534(v54, "integerForKey:");

      sub_100170588([v55 valuePromise]);
      sub_100170468();
      *(v10 + 336) = v56;
      *(v10 + 376) = v10 + 1624;
      *(v10 + 344) = sub_10016B504;
      sub_100006320();
      v57 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_1000067C0(v57);
      sub_10000329C(COERCE_DOUBLE(1107296256));
      *(v10 + 872) = &unk_1002BB2E8;
      goto LABEL_25;
    }

    sub_1001704BC();
    if (v58)
    {
      sub_10000D5A0();
      v60 = sub_100013E3C(v59);
      v61(v60);
      v62 = sub_100170404();
      v63 = sub_100170534(v62, "stringForKey:");

      sub_100003ED0([v63 valuePromise]);
      sub_100170468();
      *(v10 + 144) = v64;
      *(v10 + 184) = v10 + 1656;
      *(v10 + 152) = sub_10016BD3C;
      sub_100006320();
      v65 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
      sub_100006F30(v65);
      sub_1000073F0(COERCE_DOUBLE(1107296256));
      *(v10 + 744) = &unk_1002BB2C0;
      goto LABEL_25;
    }

    sub_100002AB8();
    if (v66)
    {
      sub_10000D5A0();
      v68 = sub_100013E3C(v67);
      v69(v68);
      v70 = sub_100005D64();
      v71 = sub_100170534(v70, "URLForKey:");

      sub_1001705D0([v71 valuePromise]);
      sub_100170468();
      *(v10 + 80) = v72;
      *(v10 + 120) = v10 + 1672;
      *(v10 + 88) = sub_10016C560;
      sub_100006320();
      v73 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
      sub_100008134(v73);
      sub_10000BB90(COERCE_DOUBLE(1107296256));
      *(v10 + 616) = &unk_1002BB298;
      goto LABEL_25;
    }

    sub_100004944();
    if (v74)
    {
      sub_10000D5A0();
      v76 = sub_100013E3C(v75);
      v77(v76);
      v78 = sub_100010E90();
      v79 = sub_100170534(v78, "dictionaryForKey:");

      sub_100170570([v79 valuePromise]);
      sub_100170468();
      *(v10 + 16) = v80;
      *(v10 + 56) = v10 + 1584;
      *(v10 + 24) = sub_10016CD84;
      sub_100006320();
      v81 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
      sub_100006B24(v81);
      sub_10000A658(COERCE_DOUBLE(1107296256));
      *(v10 + 552) = &unk_1002BB270;
      goto LABEL_25;
    }

    sub_10000AE84();
    sub_1000041E0();

    return _diagnoseUnexpectedEnumCase<A>(type:)(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10);
  }

  else
  {
    Dictionary._bridgeToObjectiveC()();

    sub_10000F404();
    sub_1000041E0();

    return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
  }
}

uint64_t sub_100169C20()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1824) = *(v3 + 304);
  sub_10000381C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100169D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  sub_10000AF64();
  sub_100002E38();
  v12 = *(v11 + 1640);

  v13 = *(v11 + 1808);
  v14 = *(v11 + 1800);
  if (v12)
  {
    v15 = *(v11 + 1744);
    *(v11 + 1096) = sub_100003AE0(0, &qword_1002DF188, NSArray_ptr);
    *(v11 + 1072) = v12;
    sub_1001514B8((v11 + 1072), (v11 + 1040));
    v16 = v12;
    sub_1001706B8();
    *(v11 + 1688) = v15;
    v17 = sub_10014EB30(v14, v13);
    sub_1001703D0(v17, v18);
    if (v27)
    {
      __break(1u);
    }

    else
    {
      sub_10017054C();
      sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
      if (sub_1001706A0())
      {
        v28 = *(v11 + 1688);
        sub_10014EB30(*(v11 + 1800), *(v11 + 1808));
        sub_100170474();
        if (!v70)
        {
          sub_1000041E0();

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        LODWORD(v13) = v29;
      }

      v38 = *(v11 + 1688);
      v39 = *(v11 + 1808);
      if (v14)
      {
        sub_1001704E0();
        sub_1000035E4((v11 + 1040));
LABEL_17:

        v33 = v38;
        goto LABEL_18;
      }

      sub_10000A2C0(*(v11 + 1800));
      v19 = sub_100170518((v11 + 1040), v40);
      if (!v27)
      {
        *(v38 + 16) = v41;
        goto LABEL_17;
      }
    }

    __break(1u);
    return _diagnoseUnexpectedEnumCase<A>(type:)(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }

  v32 = *(v11 + 1792);
  v33 = sub_10014EB30(*(v11 + 1800), *(v11 + 1808));
  v35 = v34;

  if (v35)
  {
    LODWORD(v13) = sub_100170638();
    a9 = v35;
    v36 = v35[3];
    sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v13, v36);
    v37 = *(v35[6] + 16 * v33 + 8);

    sub_1001514B8((v35[7] + 32 * v33), (v11 + 944));
    _NativeDictionary._delete(at:)();
    v33 = v35;
  }

  else
  {
    sub_100170700();
  }

  sub_100009DF4(v11 + 944);
LABEL_18:
  sub_100008AF8();
  *(v11 + 1792) = v33;
  *(v11 + 1784) = v33;
  *(v11 + 1776) = v33;
  *(v11 + 1768) = v33;
  *(v11 + 1760) = v33;
  sub_100170398(v42);
  if (!v70)
  {
    v53 = sub_100004C74(v43);
    v54(v53);
    v55 = sub_1001703C0();
    if (v56(v55) == v13)
    {
      v57 = sub_10000F0F4();
      v58(v57);
      v59 = sub_10000DC1C();
      v60 = sub_100170534(v59, "arrayForKey:");

      sub_1001705E8([v60 valuePromise]);
      sub_100170468();
      *(v11 + 272) = v61;
      sub_100170364();
      v62 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
      sub_1000039E8(v62);
      sub_100003D30(COERCE_DOUBLE(1107296256));
      *(v11 + 680) = &unk_1002BB360;
LABEL_43:
      sub_100170600(v63, "resultWithCompletion:");
      sub_1000041E0();

      return _swift_continuation_await(v105);
    }

    sub_100002ED4();
    if (v70)
    {
      v64 = sub_10000B098();
      v65(v64);
      v66 = sub_10000BD1C();
      v67 = sub_100170534(v66, "BOOLForKey:");

      sub_1001705A0([v67 valuePromise]);
      sub_100170468();
      *(v11 + 208) = v68;
      sub_100170330();
      v69 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_10000C0D0(v69);
      *(v11 + 472) = 1107296256;
      sub_1000083E8(&unk_1002BB338);
      goto LABEL_43;
    }

    sub_1001704C8();
    if (v70)
    {
      v71 = sub_100004668();
      v72(v71);
      v73 = sub_1001703E4();
      v74 = sub_100170534(v73, "doubleForKey:");

      sub_1001705B8([v74 valuePromise]);
      sub_100170468();
      *(v11 + 400) = v75;
      sub_10000B49C();
      v76 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_100007D7C(v76);
      sub_100007794(COERCE_DOUBLE(1107296256));
      *(v11 + 808) = &unk_1002BB310;
      goto LABEL_43;
    }

    sub_1000040E8();
    if (v77)
    {
      v78 = sub_100170300();
      v79(v78);
      v80 = sub_100170424();
      v81 = sub_100170534(v80, "integerForKey:");

      sub_100170588([v81 valuePromise]);
      sub_100170468();
      *(v11 + 336) = v82;
      sub_10000B8D4();
      v83 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_1000067C0(v83);
      sub_10000329C(COERCE_DOUBLE(1107296256));
      *(v11 + 872) = &unk_1002BB2E8;
      goto LABEL_43;
    }

    sub_1001704BC();
    if (v84)
    {
      v85 = sub_1000053C8();
      v86(v85);
      v87 = sub_100170404();
      v88 = sub_100170534(v87, "stringForKey:");

      sub_100003ED0([v88 valuePromise]);
      sub_100170468();
      *(v11 + 144) = v89;
      sub_10000D0C8();
      v90 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
      sub_100006F30(v90);
      sub_1000073F0(COERCE_DOUBLE(1107296256));
      *(v11 + 744) = &unk_1002BB2C0;
      goto LABEL_43;
    }

    sub_100002AB8();
    if (v91)
    {
      v92 = sub_10000ABFC();
      v93(v92);
      v94 = sub_100005D64();
      v95 = sub_100170534(v94, "URLForKey:");

      sub_1001705D0([v95 valuePromise]);
      sub_100170468();
      *(v11 + 80) = v96;
      sub_100008E74();
      v97 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
      sub_100008134(v97);
      sub_10000BB90(COERCE_DOUBLE(1107296256));
      *(v11 + 616) = &unk_1002BB298;
      goto LABEL_43;
    }

    sub_100004944();
    if (v98)
    {
      v99 = sub_10000EECC();
      v100(v99);
      v101 = sub_100010E90();
      v102 = sub_100170534(v101, "dictionaryForKey:");

      sub_100170570([v102 valuePromise]);
      sub_100170468();
      *(v11 + 16) = v103;
      sub_100013CE8();
      v104 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
      sub_100006B24(v104);
      sub_10000A658(COERCE_DOUBLE(1107296256));
      *(v11 + 552) = &unk_1002BB270;
      goto LABEL_43;
    }

    sub_10000AE84();
    sub_1000041E0();

    return _diagnoseUnexpectedEnumCase<A>(type:)(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }

  v44 = *(v11 + 1728);
  Dictionary._bridgeToObjectiveC()();
  sub_1001706E8();

  sub_10000F404();
  sub_1000041E0();

  return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10);
}

uint64_t sub_10016A498()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1856) = *(v3 + 240);
  sub_10000381C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10016A594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000AF64();
  sub_100002E38();
  v12 = *(v11 + 1592);

  v13 = *(v11 + 1840);
  v14 = *(v11 + 1832);
  if (v12)
  {
    v15 = *(v11 + 1744);
    *(v11 + 1384) = sub_100003AE0(0, &qword_1002DA6C8, NSNumber_ptr);
    *(v11 + 1360) = v12;
    sub_1001514B8((v11 + 1360), (v11 + 1168));
    v16 = v12;
    sub_1001706B8();
    *(v11 + 1632) = v15;
    v17 = sub_100003EC4();
    v19 = sub_10014EB30(v17, v18);
    sub_1001703D0(v19, v20);
    if (v29)
    {
      __break(1u);
    }

    else
    {
      sub_10017054C();
      sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
      if (sub_1001706A0())
      {
        v30 = *(v11 + 1632);
        sub_10014EB30(*(v11 + 1832), *(v11 + 1840));
        sub_100170474();
        if (!v70)
        {
          sub_1000041E0();

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v14 = v31;
      }

      v38 = *(v11 + 1632);
      v39 = *(v11 + 1840);
      if (v13)
      {
        sub_1001704E0();
        sub_1000035E4((v11 + 1168));
LABEL_17:

        sub_1000028F4();
        goto LABEL_18;
      }

      sub_10000A2C0(*(v11 + 1832));
      v21 = sub_100170518((v11 + 1168), v40);
      if (!v29)
      {
        *(v38 + 16) = v41;
        goto LABEL_17;
      }
    }

    __break(1u);
    return _diagnoseUnexpectedEnumCase<A>(type:)(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }

  v34 = *(v11 + 1784);
  v35 = sub_100003EC4();
  sub_10014EB30(v35, v36);
  sub_100170484();
  if (v34)
  {
    sub_100170638();
    sub_100170650();
    sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
    sub_100170618();
    sub_100004FF8();
    sub_1001704A0();
    sub_100008BE0();
    sub_1000028F4();
  }

  else
  {
    sub_1001704D4();
    v13 = *(v11 + 1792);
    v14 = *(v11 + 1784);
    v37 = *(v11 + 1744);
  }

  sub_100009DF4(v11 + 1328);
LABEL_18:
  sub_100008AF8();
  *(v11 + 1792) = v13;
  *(v11 + 1784) = v14;
  *(v11 + 1776) = v14;
  *(v11 + 1768) = v14;
  *(v11 + 1760) = v14;
  sub_100170398(v42);
  if (!v70)
  {
    v53 = sub_100004C74(v43);
    v54(v53);
    v55 = sub_1001703C0();
    if (v56(v55) == v14)
    {
      v57 = sub_10000F0F4();
      v58(v57);
      v59 = sub_10000DC1C();
      v60 = sub_100170534(v59, "arrayForKey:");

      sub_1001705E8([v60 valuePromise]);
      sub_100170468();
      *(v11 + 272) = v61;
      sub_100170364();
      v62 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
      sub_1000039E8(v62);
      sub_100003D30(COERCE_DOUBLE(1107296256));
      *(v11 + 680) = &unk_1002BB360;
LABEL_43:
      sub_100170600(v63, "resultWithCompletion:");
      sub_1000041E0();

      return _swift_continuation_await(v105);
    }

    sub_100002ED4();
    if (v70)
    {
      v64 = sub_10000B098();
      v65(v64);
      v66 = sub_10000BD1C();
      v67 = sub_100170534(v66, "BOOLForKey:");

      sub_1001705A0([v67 valuePromise]);
      sub_100170468();
      *(v11 + 208) = v68;
      sub_100170330();
      v69 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_10000C0D0(v69);
      *(v11 + 472) = 1107296256;
      sub_1000083E8(&unk_1002BB338);
      goto LABEL_43;
    }

    sub_1001704C8();
    if (v70)
    {
      v71 = sub_100004668();
      v72(v71);
      v73 = sub_1001703E4();
      v74 = sub_100170534(v73, "doubleForKey:");

      sub_1001705B8([v74 valuePromise]);
      sub_100170468();
      *(v11 + 400) = v75;
      sub_10000B49C();
      v76 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_100007D7C(v76);
      sub_100007794(COERCE_DOUBLE(1107296256));
      *(v11 + 808) = &unk_1002BB310;
      goto LABEL_43;
    }

    sub_1000040E8();
    if (v77)
    {
      v78 = sub_100170300();
      v79(v78);
      v80 = sub_100170424();
      v81 = sub_100170534(v80, "integerForKey:");

      sub_100170588([v81 valuePromise]);
      sub_100170468();
      *(v11 + 336) = v82;
      sub_10000B8D4();
      v83 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_1000067C0(v83);
      sub_10000329C(COERCE_DOUBLE(1107296256));
      *(v11 + 872) = &unk_1002BB2E8;
      goto LABEL_43;
    }

    sub_1001704BC();
    if (v84)
    {
      v85 = sub_1000053C8();
      v86(v85);
      v87 = sub_100170404();
      v88 = sub_100170534(v87, "stringForKey:");

      sub_100003ED0([v88 valuePromise]);
      sub_100170468();
      *(v11 + 144) = v89;
      sub_10000D0C8();
      v90 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
      sub_100006F30(v90);
      sub_1000073F0(COERCE_DOUBLE(1107296256));
      *(v11 + 744) = &unk_1002BB2C0;
      goto LABEL_43;
    }

    sub_100002AB8();
    if (v91)
    {
      v92 = sub_10000ABFC();
      v93(v92);
      v94 = sub_100005D64();
      v95 = sub_100170534(v94, "URLForKey:");

      sub_1001705D0([v95 valuePromise]);
      sub_100170468();
      *(v11 + 80) = v96;
      sub_100008E74();
      v97 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
      sub_100008134(v97);
      sub_10000BB90(COERCE_DOUBLE(1107296256));
      *(v11 + 616) = &unk_1002BB298;
      goto LABEL_43;
    }

    sub_100004944();
    if (v98)
    {
      v99 = sub_10000EECC();
      v100(v99);
      v101 = sub_100010E90();
      v102 = sub_100170534(v101, "dictionaryForKey:");

      sub_100170570([v102 valuePromise]);
      sub_100170468();
      *(v11 + 16) = v103;
      sub_100013CE8();
      v104 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
      sub_100006B24(v104);
      sub_10000A658(COERCE_DOUBLE(1107296256));
      *(v11 + 552) = &unk_1002BB270;
      goto LABEL_43;
    }

    sub_10000AE84();
    sub_1000041E0();

    return _diagnoseUnexpectedEnumCase<A>(type:)(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }

  v44 = *(v11 + 1728);
  sub_1001706D0();
  sub_100010FA8();

  sub_10000DF84();
  sub_1000041E0();

  return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10);
}

uint64_t sub_10016ACC8()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1888) = *(v3 + 432);
  sub_10000381C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10016ADC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000AF64();
  sub_100002E38();
  v12 = *(v11 + 1608);

  v13 = *(v11 + 1872);
  v14 = *(v11 + 1864);
  if (v12)
  {
    v15 = *(v11 + 1744);
    *(v11 + 1480) = sub_100003AE0(0, &qword_1002DA6C8, NSNumber_ptr);
    *(v11 + 1456) = v12;
    sub_1001514B8((v11 + 1456), (v11 + 1520));
    v16 = v12;
    sub_1001706B8();
    *(v11 + 1600) = v15;
    v17 = sub_100003EC4();
    v19 = sub_10014EB30(v17, v18);
    sub_1001703D0(v19, v20);
    if (v29)
    {
      __break(1u);
    }

    else
    {
      sub_10017054C();
      sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
      if (sub_1001706A0())
      {
        v30 = *(v11 + 1600);
        sub_10014EB30(*(v11 + 1864), *(v11 + 1872));
        sub_100170474();
        if (!v71)
        {
          sub_1000041E0();

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v14 = v31;
      }

      v39 = *(v11 + 1600);
      v40 = *(v11 + 1872);
      if (v13)
      {
        sub_1001704E0();
        sub_1000035E4((v11 + 1520));
LABEL_17:

        sub_1000028F4();
        v37 = v39;
        goto LABEL_18;
      }

      sub_10000A2C0(*(v11 + 1864));
      v21 = sub_100170518((v11 + 1520), v41);
      if (!v29)
      {
        *(v39 + 16) = v42;
        goto LABEL_17;
      }
    }

    __break(1u);
    return _diagnoseUnexpectedEnumCase<A>(type:)(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }

  v34 = *(v11 + 1776);
  v35 = sub_100003EC4();
  sub_10014EB30(v35, v36);
  sub_100170484();
  if (v34)
  {
    sub_100170638();
    sub_100170650();
    sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
    sub_100170618();
    sub_100004FF8();
    sub_1001704A0();
    sub_100008BE0();
    sub_1000028F4();
    v37 = a9;
  }

  else
  {
    sub_1001704D4();
    v37 = *(v11 + 1792);
    v13 = *(v11 + 1784);
    v14 = *(v11 + 1776);
    v38 = *(v11 + 1744);
  }

  sub_100009DF4(v11 + 1488);
LABEL_18:
  sub_100008AF8();
  *(v11 + 1792) = v37;
  *(v11 + 1784) = v13;
  *(v11 + 1776) = v14;
  *(v11 + 1768) = v14;
  *(v11 + 1760) = v14;
  sub_100170398(v43);
  if (!v71)
  {
    v54 = sub_100004C74(v44);
    v55(v54);
    v56 = sub_1001703C0();
    if (v57(v56) == v14)
    {
      v58 = sub_10000F0F4();
      v59(v58);
      v60 = sub_10000DC1C();
      v61 = sub_100170534(v60, "arrayForKey:");

      sub_1001705E8([v61 valuePromise]);
      sub_100170468();
      *(v11 + 272) = v62;
      sub_100170364();
      v63 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
      sub_1000039E8(v63);
      sub_100003D30(COERCE_DOUBLE(1107296256));
      *(v11 + 680) = &unk_1002BB360;
LABEL_43:
      sub_100170600(v64, "resultWithCompletion:");
      sub_1000041E0();

      return _swift_continuation_await(v106);
    }

    sub_100002ED4();
    if (v71)
    {
      v65 = sub_10000B098();
      v66(v65);
      v67 = sub_10000BD1C();
      v68 = sub_100170534(v67, "BOOLForKey:");

      sub_1001705A0([v68 valuePromise]);
      sub_100170468();
      *(v11 + 208) = v69;
      sub_100170330();
      v70 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_10000C0D0(v70);
      *(v11 + 472) = 1107296256;
      sub_1000083E8(&unk_1002BB338);
      goto LABEL_43;
    }

    sub_1001704C8();
    if (v71)
    {
      v72 = sub_100004668();
      v73(v72);
      v74 = sub_1001703E4();
      v75 = sub_100170534(v74, "doubleForKey:");

      sub_1001705B8([v75 valuePromise]);
      sub_100170468();
      *(v11 + 400) = v76;
      sub_10000B49C();
      v77 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_100007D7C(v77);
      sub_100007794(COERCE_DOUBLE(1107296256));
      *(v11 + 808) = &unk_1002BB310;
      goto LABEL_43;
    }

    sub_1000040E8();
    if (v78)
    {
      v79 = sub_100170300();
      v80(v79);
      v81 = sub_100170424();
      v82 = sub_100170534(v81, "integerForKey:");

      sub_100170588([v82 valuePromise]);
      sub_100170468();
      *(v11 + 336) = v83;
      sub_10000B8D4();
      v84 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_1000067C0(v84);
      sub_10000329C(COERCE_DOUBLE(1107296256));
      *(v11 + 872) = &unk_1002BB2E8;
      goto LABEL_43;
    }

    sub_1001704BC();
    if (v85)
    {
      v86 = sub_1000053C8();
      v87(v86);
      v88 = sub_100170404();
      v89 = sub_100170534(v88, "stringForKey:");

      sub_100003ED0([v89 valuePromise]);
      sub_100170468();
      *(v11 + 144) = v90;
      sub_10000D0C8();
      v91 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
      sub_100006F30(v91);
      sub_1000073F0(COERCE_DOUBLE(1107296256));
      *(v11 + 744) = &unk_1002BB2C0;
      goto LABEL_43;
    }

    sub_100002AB8();
    if (v92)
    {
      v93 = sub_10000ABFC();
      v94(v93);
      v95 = sub_100005D64();
      v96 = sub_100170534(v95, "URLForKey:");

      sub_1001705D0([v96 valuePromise]);
      sub_100170468();
      *(v11 + 80) = v97;
      sub_100008E74();
      v98 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
      sub_100008134(v98);
      sub_10000BB90(COERCE_DOUBLE(1107296256));
      *(v11 + 616) = &unk_1002BB298;
      goto LABEL_43;
    }

    sub_100004944();
    if (v99)
    {
      v100 = sub_10000EECC();
      v101(v100);
      v102 = sub_100010E90();
      v103 = sub_100170534(v102, "dictionaryForKey:");

      sub_100170570([v103 valuePromise]);
      sub_100170468();
      *(v11 + 16) = v104;
      sub_100013CE8();
      v105 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
      sub_100006B24(v105);
      sub_10000A658(COERCE_DOUBLE(1107296256));
      *(v11 + 552) = &unk_1002BB270;
      goto LABEL_43;
    }

    sub_10000AE84();
    sub_1000041E0();

    return _diagnoseUnexpectedEnumCase<A>(type:)(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }

  v45 = *(v11 + 1728);
  sub_1001706D0();
  sub_100010FA8();

  sub_10000DF84();
  sub_1000041E0();

  return v48(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10);
}

uint64_t sub_10016B504()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1920) = *(v3 + 368);
  sub_10000381C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10016B600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000AF64();
  sub_100002E38();
  v14 = *(v11 + 1624);

  v15 = *(v11 + 1904);
  v16 = *(v11 + 1896);
  if (v14)
  {
    v13 = *(v11 + 1744);
    *(v11 + 1256) = sub_100003AE0(0, &qword_1002DA6C8, NSNumber_ptr);
    *(v11 + 1232) = v14;
    sub_1001514B8((v11 + 1232), (v11 + 1296));
    v17 = v14;
    sub_1001706B8();
    *(v11 + 1616) = v13;
    v18 = sub_100003EC4();
    v20 = sub_10014EB30(v18, v19);
    sub_1001703D0(v20, v21);
    if (v30)
    {
      __break(1u);
    }

    else
    {
      sub_10017054C();
      sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
      if (sub_1001706A0())
      {
        v31 = *(v11 + 1616);
        sub_10014EB30(*(v11 + 1896), *(v11 + 1904));
        sub_100170474();
        if (!v70)
        {
          sub_1000041E0();

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v16 = v32;
      }

      v39 = *(v11 + 1616);
      v12 = *(v11 + 1904);
      if (v15)
      {
        sub_1001704E0();
        sub_1000035E4((v11 + 1296));
LABEL_17:

        sub_1001703AC();
        goto LABEL_18;
      }

      sub_10000A2C0(*(v11 + 1896));
      v22 = sub_100170518((v11 + 1296), v40);
      if (!v30)
      {
        *(v39 + 16) = v41;
        goto LABEL_17;
      }
    }

    __break(1u);
    return _diagnoseUnexpectedEnumCase<A>(type:)(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }

  v35 = *(v11 + 1768);
  v36 = sub_100003EC4();
  sub_10014EB30(v36, v37);
  sub_100170484();
  if (v35)
  {
    sub_100170638();
    sub_100170650();
    sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
    sub_100170618();
    sub_100004FF8();
    sub_1001704A0();
    sub_100008BE0();
    sub_1001703AC();
  }

  else
  {
    sub_1001704D4();
    v13 = *(v11 + 1792);
    v12 = *(v11 + 1784);
    v15 = *(v11 + 1776);
    v16 = *(v11 + 1768);
    v38 = *(v11 + 1744);
  }

  sub_100009DF4(v11 + 1264);
LABEL_18:
  sub_100008AF8();
  *(v11 + 1792) = v13;
  *(v11 + 1784) = v12;
  *(v11 + 1776) = v15;
  *(v11 + 1768) = v16;
  *(v11 + 1760) = v16;
  sub_100170398(v42);
  if (!v70)
  {
    v53 = sub_100004C74(v43);
    v54(v53);
    v55 = sub_1001703C0();
    if (v56(v55) == v16)
    {
      v57 = sub_10000F0F4();
      v58(v57);
      v59 = sub_10000DC1C();
      v60 = sub_100170534(v59, "arrayForKey:");

      sub_1001705E8([v60 valuePromise]);
      sub_100170468();
      *(v11 + 272) = v61;
      sub_100170364();
      v62 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
      sub_1000039E8(v62);
      sub_100003D30(COERCE_DOUBLE(1107296256));
      *(v11 + 680) = &unk_1002BB360;
LABEL_43:
      sub_100170600(v63, "resultWithCompletion:");
      sub_1000041E0();

      return _swift_continuation_await(v105);
    }

    sub_100002ED4();
    if (v70)
    {
      v64 = sub_10000B098();
      v65(v64);
      v66 = sub_10000BD1C();
      v67 = sub_100170534(v66, "BOOLForKey:");

      sub_1001705A0([v67 valuePromise]);
      sub_100170468();
      *(v11 + 208) = v68;
      sub_100170330();
      v69 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_10000C0D0(v69);
      *(v11 + 472) = 1107296256;
      sub_1000083E8(&unk_1002BB338);
      goto LABEL_43;
    }

    sub_1001704C8();
    if (v70)
    {
      v71 = sub_100004668();
      v72(v71);
      v73 = sub_1001703E4();
      v74 = sub_100170534(v73, "doubleForKey:");

      sub_1001705B8([v74 valuePromise]);
      sub_100170468();
      *(v11 + 400) = v75;
      sub_10000B49C();
      v76 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_100007D7C(v76);
      sub_100007794(COERCE_DOUBLE(1107296256));
      *(v11 + 808) = &unk_1002BB310;
      goto LABEL_43;
    }

    sub_1000040E8();
    if (v77)
    {
      v78 = sub_100170300();
      v79(v78);
      v80 = sub_100170424();
      v81 = sub_100170534(v80, "integerForKey:");

      sub_100170588([v81 valuePromise]);
      sub_100170468();
      *(v11 + 336) = v82;
      sub_10000B8D4();
      v83 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_1000067C0(v83);
      sub_10000329C(COERCE_DOUBLE(1107296256));
      *(v11 + 872) = &unk_1002BB2E8;
      goto LABEL_43;
    }

    sub_1001704BC();
    if (v84)
    {
      v85 = sub_1000053C8();
      v86(v85);
      v87 = sub_100170404();
      v88 = sub_100170534(v87, "stringForKey:");

      sub_100003ED0([v88 valuePromise]);
      sub_100170468();
      *(v11 + 144) = v89;
      sub_10000D0C8();
      v90 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
      sub_100006F30(v90);
      sub_1000073F0(COERCE_DOUBLE(1107296256));
      *(v11 + 744) = &unk_1002BB2C0;
      goto LABEL_43;
    }

    sub_100002AB8();
    if (v91)
    {
      v92 = sub_10000ABFC();
      v93(v92);
      v94 = sub_100005D64();
      v95 = sub_100170534(v94, "URLForKey:");

      sub_1001705D0([v95 valuePromise]);
      sub_100170468();
      *(v11 + 80) = v96;
      sub_100008E74();
      v97 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
      sub_100008134(v97);
      sub_10000BB90(COERCE_DOUBLE(1107296256));
      *(v11 + 616) = &unk_1002BB298;
      goto LABEL_43;
    }

    sub_100004944();
    if (v98)
    {
      v99 = sub_10000EECC();
      v100(v99);
      v101 = sub_100010E90();
      v102 = sub_100170534(v101, "dictionaryForKey:");

      sub_100170570([v102 valuePromise]);
      sub_100170468();
      *(v11 + 16) = v103;
      sub_100013CE8();
      v104 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
      sub_100006B24(v104);
      sub_10000A658(COERCE_DOUBLE(1107296256));
      *(v11 + 552) = &unk_1002BB270;
      goto LABEL_43;
    }

    sub_10000AE84();
    sub_1000041E0();

    return _diagnoseUnexpectedEnumCase<A>(type:)(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }

  v44 = *(v11 + 1728);
  sub_1001706D0();
  sub_100010FA8();

  sub_10000DF84();
  sub_1000041E0();

  return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10);
}

uint64_t sub_10016BD3C()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1952) = *(v3 + 176);
  sub_10000381C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10016C560()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1984) = *(v3 + 112);
  sub_10000381C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10016CD84()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 2016) = *(v3 + 48);
  sub_10000381C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10016D5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000051E0();
  v11 = *(v10 + 1824);
  v12 = *(v10 + 1816);
  swift_willThrow();

  v13 = *(v10 + 1808);
  v14 = *(v10 + 1792);
  v15 = sub_10014EB30(*(v10 + 1800), v13);
  v17 = v16;

  if (v17)
  {
    LODWORD(v13) = sub_100170638();
    v18 = v17[3];
    sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v13, v18);
    v19 = *(v17[6] + 16 * v15 + 8);

    sub_1001514B8((v17[7] + 32 * v15), (v10 + 944));
    _NativeDictionary._delete(at:)();
    v15 = v17;
  }

  else
  {
    sub_100170700();
  }

  sub_100009DF4(v10 + 944);
  sub_100008AF8();
  *(v10 + 1792) = v15;
  *(v10 + 1784) = v15;
  *(v10 + 1776) = v15;
  *(v10 + 1768) = v15;
  *(v10 + 1760) = v15;
  sub_100170398(v20);
  if (v42)
  {
    v22 = *(v10 + 1728);
    Dictionary._bridgeToObjectiveC()();
    sub_1001706E8();

    sub_10000F404();
    sub_100170688();

    __asm { BRAA            X2, X16 }
  }

  v25 = sub_100004C74(v21);
  v26(v25);
  v27 = sub_1001703C0();
  if (v28(v27) == v13)
  {
    v29 = sub_10000F0F4();
    v30(v29);
    v31 = sub_10000DC1C();
    v32 = sub_100170534(v31, "arrayForKey:");

    sub_1001705E8([v32 valuePromise]);
    sub_100170468();
    *(v10 + 272) = v33;
    sub_100170364();
    v34 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
    sub_1000039E8(v34);
    sub_100003D30(COERCE_DOUBLE(1107296256));
    *(v10 + 680) = &unk_1002BB360;
LABEL_29:
    sub_100170600(v35, "resultWithCompletion:");
    sub_100170688();

    return _swift_continuation_await(v77);
  }

  sub_100002ED4();
  if (v42)
  {
    v36 = sub_10000B098();
    v37(v36);
    v38 = sub_10000BD1C();
    v39 = sub_100170534(v38, "BOOLForKey:");

    sub_1001705A0([v39 valuePromise]);
    sub_100170468();
    *(v10 + 208) = v40;
    sub_100170330();
    v41 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_10000C0D0(v41);
    *(v10 + 472) = 1107296256;
    sub_1000083E8(&unk_1002BB338);
    goto LABEL_29;
  }

  sub_1001704C8();
  if (v42)
  {
    v43 = sub_100004668();
    v44(v43);
    v45 = sub_1001703E4();
    v46 = sub_100170534(v45, "doubleForKey:");

    sub_1001705B8([v46 valuePromise]);
    sub_100170468();
    *(v10 + 400) = v47;
    sub_10000B49C();
    v48 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_100007D7C(v48);
    sub_100007794(COERCE_DOUBLE(1107296256));
    *(v10 + 808) = &unk_1002BB310;
    goto LABEL_29;
  }

  sub_1000040E8();
  if (v49)
  {
    v50 = sub_100170300();
    v51(v50);
    v52 = sub_100170424();
    v53 = sub_100170534(v52, "integerForKey:");

    sub_100170588([v53 valuePromise]);
    sub_100170468();
    *(v10 + 336) = v54;
    sub_10000B8D4();
    v55 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_1000067C0(v55);
    sub_10000329C(COERCE_DOUBLE(1107296256));
    *(v10 + 872) = &unk_1002BB2E8;
    goto LABEL_29;
  }

  sub_1001704BC();
  if (v56)
  {
    v57 = sub_1000053C8();
    v58(v57);
    v59 = sub_100170404();
    v60 = sub_100170534(v59, "stringForKey:");

    sub_100003ED0([v60 valuePromise]);
    sub_100170468();
    *(v10 + 144) = v61;
    sub_10000D0C8();
    v62 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
    sub_100006F30(v62);
    sub_1000073F0(COERCE_DOUBLE(1107296256));
    *(v10 + 744) = &unk_1002BB2C0;
    goto LABEL_29;
  }

  sub_100002AB8();
  if (v63)
  {
    v64 = sub_10000ABFC();
    v65(v64);
    v66 = sub_100005D64();
    v67 = sub_100170534(v66, "URLForKey:");

    sub_1001705D0([v67 valuePromise]);
    sub_100170468();
    *(v10 + 80) = v68;
    sub_100008E74();
    v69 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
    sub_100008134(v69);
    sub_10000BB90(COERCE_DOUBLE(1107296256));
    *(v10 + 616) = &unk_1002BB298;
    goto LABEL_29;
  }

  sub_100004944();
  if (v70)
  {
    v71 = sub_10000EECC();
    v72(v71);
    v73 = sub_100010E90();
    v74 = sub_100170534(v73, "dictionaryForKey:");

    sub_100170570([v74 valuePromise]);
    sub_100170468();
    *(v10 + 16) = v75;
    sub_100013CE8();
    v76 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
    sub_100006B24(v76);
    sub_10000A658(COERCE_DOUBLE(1107296256));
    *(v10 + 552) = &unk_1002BB270;
    goto LABEL_29;
  }

  sub_10000AE84();
  sub_100170688();

  return _diagnoseUnexpectedEnumCase<A>(type:)(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10);
}

uint64_t sub_10016DC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000051E0();
  v11 = v10[231];
  v12 = v10[232];
  swift_willThrow();

  v13 = v10[230];
  v14 = v10[223];
  sub_10014EB30(v10[229], v13);
  sub_100170484();
  if (v14)
  {
    sub_100170638();
    sub_10000BF48();
    v15 = sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
    sub_100006B48(v15, v16, v17, v18, v19, v20, v21, v22, v92, v93);
    sub_100004FF8();
    sub_1001704A0();
    sub_1001704FC();
    sub_1000028F4();
  }

  else
  {
    sub_1001704D4();
    v13 = v10[224];
    v12 = v10[223];
    v23 = v10[218];
  }

  sub_100009DF4((v10 + 166));
  sub_100008AF8();
  v10[224] = v13;
  v10[223] = v12;
  v10[222] = v12;
  v10[221] = v12;
  v10[220] = v12;
  sub_100170398(v24);
  if (v46)
  {
    v26 = v10[216];
    Dictionary._bridgeToObjectiveC()();
    sub_100010FA8();

    sub_10000DF84();
    sub_100170688();

    __asm { BRAA            X2, X16 }
  }

  v29 = sub_100004C74(v25);
  v30(v29);
  v31 = sub_1001703C0();
  if (v32(v31) == v12)
  {
    v33 = sub_10000F0F4();
    v34(v33);
    v35 = sub_10000DC1C();
    v36 = sub_100170534(v35, "arrayForKey:");

    sub_1001705E8([v36 valuePromise]);
    sub_100170468();
    v10[34] = v37;
    sub_100170364();
    v38 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
    sub_1000039E8(v38);
    sub_100003D30(COERCE_DOUBLE(1107296256));
    v10[85] = &unk_1002BB360;
LABEL_29:
    sub_100170600(v39, "resultWithCompletion:");
    sub_100170688();

    return _swift_continuation_await(v81);
  }

  sub_100002ED4();
  if (v46)
  {
    v40 = sub_10000B098();
    v41(v40);
    v42 = sub_10000BD1C();
    v43 = sub_100170534(v42, "BOOLForKey:");

    sub_1001705A0([v43 valuePromise]);
    sub_100170468();
    v10[26] = v44;
    sub_100170330();
    v45 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_10000C0D0(v45);
    v10[59] = 1107296256;
    sub_1000083E8(&unk_1002BB338);
    goto LABEL_29;
  }

  sub_1001704C8();
  if (v46)
  {
    v47 = sub_100004668();
    v48(v47);
    v49 = sub_1001703E4();
    v50 = sub_100170534(v49, "doubleForKey:");

    sub_1001705B8([v50 valuePromise]);
    sub_100170468();
    v10[50] = v51;
    sub_10000B49C();
    v52 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_100007D7C(v52);
    sub_100007794(COERCE_DOUBLE(1107296256));
    v10[101] = &unk_1002BB310;
    goto LABEL_29;
  }

  sub_1000040E8();
  if (v53)
  {
    v54 = sub_100170300();
    v55(v54);
    v56 = sub_100170424();
    v57 = sub_100170534(v56, "integerForKey:");

    sub_100170588([v57 valuePromise]);
    sub_100170468();
    v10[42] = v58;
    sub_10000B8D4();
    v59 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_1000067C0(v59);
    sub_10000329C(COERCE_DOUBLE(1107296256));
    v10[109] = &unk_1002BB2E8;
    goto LABEL_29;
  }

  sub_1001704BC();
  if (v60)
  {
    v61 = sub_1000053C8();
    v62(v61);
    v63 = sub_100170404();
    v64 = sub_100170534(v63, "stringForKey:");

    sub_100003ED0([v64 valuePromise]);
    sub_100170468();
    v10[18] = v65;
    sub_10000D0C8();
    v66 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
    sub_100006F30(v66);
    sub_1000073F0(COERCE_DOUBLE(1107296256));
    v10[93] = &unk_1002BB2C0;
    goto LABEL_29;
  }

  sub_100002AB8();
  if (v67)
  {
    v68 = sub_10000ABFC();
    v69(v68);
    v70 = sub_100005D64();
    v71 = sub_100170534(v70, "URLForKey:");

    sub_1001705D0([v71 valuePromise]);
    sub_100170468();
    v10[10] = v72;
    sub_100008E74();
    v73 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
    sub_100008134(v73);
    sub_10000BB90(COERCE_DOUBLE(1107296256));
    v10[77] = &unk_1002BB298;
    goto LABEL_29;
  }

  sub_100004944();
  if (v74)
  {
    v75 = sub_10000EECC();
    v76(v75);
    v77 = sub_100010E90();
    v78 = sub_100170534(v77, "dictionaryForKey:");

    sub_100170570([v78 valuePromise]);
    sub_100170468();
    v10[2] = v79;
    sub_100013CE8();
    v80 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
    sub_100006B24(v80);
    sub_10000A658(COERCE_DOUBLE(1107296256));
    v10[69] = &unk_1002BB270;
    goto LABEL_29;
  }

  sub_10000AE84();
  sub_100170688();

  return _diagnoseUnexpectedEnumCase<A>(type:)(v83, v84, v85, v86, v87, v88, v89, v90, a9, a10);
}

uint64_t sub_10016E270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10[118].i64[0];
  v12 = v10[117].i64[1];
  swift_willThrow();

  v13 = v10[111].i64[0];
  sub_10014EB30(v10[116].i64[1], v10[117].i64[0]);
  sub_100170484();
  if (v13)
  {
    sub_100170638();
    v14 = *(v13 + 24);
    v15 = sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
    sub_100170714(v15, v16, v17, v18, v19, v20, v21, v22, v93, v95, v96, v13);
    sub_100004FF8();
    sub_1001704A0();
    sub_1001704FC();
    v94 = vdupq_n_s64(v97);
    v23 = v97;
  }

  else
  {
    sub_1001704D4();
    v23 = v10[112].u64[0];
    v94 = v10[111];
    v24 = v10[109].i64[0];
  }

  sub_100009DF4(v10[93].i64);
  sub_100008AF8();
  v10[112].i64[0] = v23;
  v10[111] = v94;
  v10[110] = vdupq_lane_s64(v94.i64[0], 0);
  sub_100170398(v25);
  if (v47)
  {
    v27 = v10[108].i64[0];
    Dictionary._bridgeToObjectiveC()();

    sub_10000F404();
    sub_100170670();

    __asm { BRAA            X2, X16 }
  }

  v30 = sub_100004C74(v26);
  v31(v30);
  v32 = sub_1001703C0();
  if (v33(v32) == v23)
  {
    v34 = sub_10000F0F4();
    v35(v34);
    v36 = sub_10000DC1C();
    v37 = sub_100170534(v36, "arrayForKey:");

    sub_1001705E8([v37 valuePromise]);
    sub_100170468();
    v10[17].i64[0] = v38;
    sub_100170364();
    v39 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
    sub_1000039E8(v39);
    sub_100003D30(COERCE_DOUBLE(1107296256));
    v10[42].i64[1] = &unk_1002BB360;
LABEL_29:
    sub_100170600(v40, "resultWithCompletion:");
    sub_100170670();

    return _swift_continuation_await(v82);
  }

  sub_100002ED4();
  if (v47)
  {
    v41 = sub_10000B098();
    v42(v41);
    v43 = sub_10000BD1C();
    v44 = sub_100170534(v43, "BOOLForKey:");

    sub_1001705A0([v44 valuePromise]);
    sub_100170468();
    v10[13].i64[0] = v45;
    sub_100170330();
    v46 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_10000C0D0(v46);
    v10[29].i64[1] = 1107296256;
    sub_1000083E8(&unk_1002BB338);
    goto LABEL_29;
  }

  sub_1001704C8();
  if (v47)
  {
    v48 = sub_100004668();
    v49(v48);
    v50 = sub_1001703E4();
    v51 = sub_100170534(v50, "doubleForKey:");

    sub_1001705B8([v51 valuePromise]);
    sub_100170468();
    v10[25].i64[0] = v52;
    sub_10000B49C();
    v53 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_100007D7C(v53);
    sub_100007794(COERCE_DOUBLE(1107296256));
    v10[50].i64[1] = &unk_1002BB310;
    goto LABEL_29;
  }

  sub_1000040E8();
  if (v54)
  {
    v55 = sub_100170300();
    v56(v55);
    v57 = sub_100170424();
    v58 = sub_100170534(v57, "integerForKey:");

    sub_100170588([v58 valuePromise]);
    sub_100170468();
    v10[21].i64[0] = v59;
    sub_10000B8D4();
    v60 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_1000067C0(v60);
    sub_10000329C(COERCE_DOUBLE(1107296256));
    v10[54].i64[1] = &unk_1002BB2E8;
    goto LABEL_29;
  }

  sub_1001704BC();
  if (v61)
  {
    v62 = sub_1000053C8();
    v63(v62);
    v64 = sub_100170404();
    v65 = sub_100170534(v64, "stringForKey:");

    sub_100003ED0([v65 valuePromise]);
    sub_100170468();
    v10[9].i64[0] = v66;
    sub_10000D0C8();
    v67 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
    sub_100006F30(v67);
    sub_1000073F0(COERCE_DOUBLE(1107296256));
    v10[46].i64[1] = &unk_1002BB2C0;
    goto LABEL_29;
  }

  sub_100002AB8();
  if (v68)
  {
    v69 = sub_10000ABFC();
    v70(v69);
    v71 = sub_100005D64();
    v72 = sub_100170534(v71, "URLForKey:");

    sub_1001705D0([v72 valuePromise]);
    sub_100170468();
    v10[5].i64[0] = v73;
    sub_100008E74();
    v74 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
    sub_100008134(v74);
    sub_10000BB90(COERCE_DOUBLE(1107296256));
    v10[38].i64[1] = &unk_1002BB298;
    goto LABEL_29;
  }

  sub_100004944();
  if (v75)
  {
    v76 = sub_10000EECC();
    v77(v76);
    v78 = sub_100010E90();
    v79 = sub_100170534(v78, "dictionaryForKey:");

    sub_100170570([v79 valuePromise]);
    sub_100170468();
    v10[1].i64[0] = v80;
    sub_100013CE8();
    v81 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
    sub_100006B24(v81);
    sub_10000A658(COERCE_DOUBLE(1107296256));
    v10[34].i64[1] = &unk_1002BB270;
    goto LABEL_29;
  }

  sub_10000AE84();
  sub_100170670();

  return _diagnoseUnexpectedEnumCase<A>(type:)(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10);
}

uint64_t sub_10016E8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10[119].i64[1];
  v12 = v10[120].i64[0];
  swift_willThrow();

  v13 = v10[110].i64[1];
  sub_10014EB30(v10[118].i64[1], v10[119].i64[0]);
  sub_100170484();
  if (v13)
  {
    v14 = sub_100170638();
    v15 = *(v13 + 24);
    v16 = sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
    sub_100170714(v16, v17, v18, v19, v20, v21, v22, v23, v93, v95, v96, v13);
    sub_100004FF8();
    sub_1001704A0();
    sub_1001704FC();
    v94 = vdupq_n_s64(v97);
    sub_1000028F4();
  }

  else
  {
    sub_1001704D4();
    v14 = v10[112].i64[0];
    v94 = v10[111];
    v12 = v10[110].i64[1];
    v24 = v10[109].i64[0];
  }

  sub_100009DF4(v10[79].i64);
  sub_100008AF8();
  v10[112].i64[0] = v14;
  v10[111] = v94;
  v10[110].i64[1] = v12;
  v10[110].i64[0] = v12;
  sub_100170398(v25);
  if (v47)
  {
    v27 = v10[108].i64[0];
    Dictionary._bridgeToObjectiveC()();
    sub_100010FA8();

    sub_10000DF84();
    sub_100170670();

    __asm { BRAA            X2, X16 }
  }

  v30 = sub_100004C74(v26);
  v31(v30);
  v32 = sub_1001703C0();
  if (v33(v32) == v12)
  {
    v34 = sub_10000F0F4();
    v35(v34);
    v36 = sub_10000DC1C();
    v37 = sub_100170534(v36, "arrayForKey:");

    sub_1001705E8([v37 valuePromise]);
    sub_100170468();
    v10[17].i64[0] = v38;
    sub_100170364();
    v39 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
    sub_1000039E8(v39);
    sub_100003D30(COERCE_DOUBLE(1107296256));
    v10[42].i64[1] = &unk_1002BB360;
LABEL_29:
    sub_100170600(v40, "resultWithCompletion:");
    sub_100170670();

    return _swift_continuation_await(v82);
  }

  sub_100002ED4();
  if (v47)
  {
    v41 = sub_10000B098();
    v42(v41);
    v43 = sub_10000BD1C();
    v44 = sub_100170534(v43, "BOOLForKey:");

    sub_1001705A0([v44 valuePromise]);
    sub_100170468();
    v10[13].i64[0] = v45;
    sub_100170330();
    v46 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_10000C0D0(v46);
    v10[29].i64[1] = 1107296256;
    sub_1000083E8(&unk_1002BB338);
    goto LABEL_29;
  }

  sub_1001704C8();
  if (v47)
  {
    v48 = sub_100004668();
    v49(v48);
    v50 = sub_1001703E4();
    v51 = sub_100170534(v50, "doubleForKey:");

    sub_1001705B8([v51 valuePromise]);
    sub_100170468();
    v10[25].i64[0] = v52;
    sub_10000B49C();
    v53 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_100007D7C(v53);
    sub_100007794(COERCE_DOUBLE(1107296256));
    v10[50].i64[1] = &unk_1002BB310;
    goto LABEL_29;
  }

  sub_1000040E8();
  if (v54)
  {
    v55 = sub_100170300();
    v56(v55);
    v57 = sub_100170424();
    v58 = sub_100170534(v57, "integerForKey:");

    sub_100170588([v58 valuePromise]);
    sub_100170468();
    v10[21].i64[0] = v59;
    sub_10000B8D4();
    v60 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_1000067C0(v60);
    sub_10000329C(COERCE_DOUBLE(1107296256));
    v10[54].i64[1] = &unk_1002BB2E8;
    goto LABEL_29;
  }

  sub_1001704BC();
  if (v61)
  {
    v62 = sub_1000053C8();
    v63(v62);
    v64 = sub_100170404();
    v65 = sub_100170534(v64, "stringForKey:");

    sub_100003ED0([v65 valuePromise]);
    sub_100170468();
    v10[9].i64[0] = v66;
    sub_10000D0C8();
    v67 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
    sub_100006F30(v67);
    sub_1000073F0(COERCE_DOUBLE(1107296256));
    v10[46].i64[1] = &unk_1002BB2C0;
    goto LABEL_29;
  }

  sub_100002AB8();
  if (v68)
  {
    v69 = sub_10000ABFC();
    v70(v69);
    v71 = sub_100005D64();
    v72 = sub_100170534(v71, "URLForKey:");

    sub_1001705D0([v72 valuePromise]);
    sub_100170468();
    v10[5].i64[0] = v73;
    sub_100008E74();
    v74 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
    sub_100008134(v74);
    sub_10000BB90(COERCE_DOUBLE(1107296256));
    v10[38].i64[1] = &unk_1002BB298;
    goto LABEL_29;
  }

  sub_100004944();
  if (v75)
  {
    v76 = sub_10000EECC();
    v77(v76);
    v78 = sub_100010E90();
    v79 = sub_100170534(v78, "dictionaryForKey:");

    sub_100170570([v79 valuePromise]);
    sub_100170468();
    v10[1].i64[0] = v80;
    sub_100013CE8();
    v81 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
    sub_100006B24(v81);
    sub_10000A658(COERCE_DOUBLE(1107296256));
    v10[34].i64[1] = &unk_1002BB270;
    goto LABEL_29;
  }

  sub_10000AE84();
  sub_100170670();

  return _diagnoseUnexpectedEnumCase<A>(type:)(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10);
}

uint64_t sub_10016EF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 1944);
  v12 = *(v10 + 1952);
  swift_willThrow();

  v13 = *(v10 + 1760);
  sub_10014EB30(*(v10 + 1928), *(v10 + 1936));
  sub_100170484();
  if (v13)
  {
    sub_100170638();
    sub_100003044();
    v14 = sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
    sub_10000AD84(v14, v15, v16, v17, v18, v19, v20, v21, v90, *(&v90 + 1), v91, *(&v91 + 1), v92, v93);
    sub_100004FF8();
    sub_1001704A0();
    sub_1001704FC();
    sub_100170660();
  }

  else
  {
    sub_10000A880();
  }

  sub_100009DF4(v10 + 1104);
  sub_100008AF8();
  *(v10 + 1792) = v12;
  *(v10 + 1776) = v90;
  *(v10 + 1760) = v91;
  sub_100170398(v22);
  if (v44)
  {
    v24 = *(v10 + 1728);
    Dictionary._bridgeToObjectiveC()();
    sub_1001706E8();

    sub_10000F404();
    sub_100170558();

    __asm { BRAA            X2, X16 }
  }

  v27 = sub_100004C74(v23);
  v28(v27);
  v29 = sub_1001703C0();
  if (v30(v29) == v12)
  {
    v31 = sub_10000F0F4();
    v32(v31);
    v33 = sub_10000DC1C();
    v34 = sub_100170534(v33, "arrayForKey:");

    sub_1001705E8([v34 valuePromise]);
    sub_100170468();
    *(v10 + 272) = v35;
    sub_100170364();
    v36 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
    sub_1000039E8(v36);
    sub_100003D30(COERCE_DOUBLE(1107296256));
    *(v10 + 680) = &unk_1002BB360;
LABEL_29:
    sub_100170600(v37, "resultWithCompletion:");
    sub_100170558();

    return _swift_continuation_await(v79);
  }

  sub_100002ED4();
  if (v44)
  {
    v38 = sub_10000B098();
    v39(v38);
    v40 = sub_10000BD1C();
    v41 = sub_100170534(v40, "BOOLForKey:");

    sub_1001705A0([v41 valuePromise]);
    sub_100170468();
    *(v10 + 208) = v42;
    sub_100170330();
    v43 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_10000C0D0(v43);
    *(v10 + 472) = 1107296256;
    sub_1000083E8(&unk_1002BB338);
    goto LABEL_29;
  }

  sub_1001704C8();
  if (v44)
  {
    v45 = sub_100004668();
    v46(v45);
    v47 = sub_1001703E4();
    v48 = sub_100170534(v47, "doubleForKey:");

    sub_1001705B8([v48 valuePromise]);
    sub_100170468();
    *(v10 + 400) = v49;
    sub_10000B49C();
    v50 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_100007D7C(v50);
    sub_100007794(COERCE_DOUBLE(1107296256));
    *(v10 + 808) = &unk_1002BB310;
    goto LABEL_29;
  }

  sub_1000040E8();
  if (v51)
  {
    v52 = sub_100170300();
    v53(v52);
    v54 = sub_100170424();
    v55 = sub_100170534(v54, "integerForKey:");

    sub_100170588([v55 valuePromise]);
    sub_100170468();
    *(v10 + 336) = v56;
    sub_10000B8D4();
    v57 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_1000067C0(v57);
    sub_10000329C(COERCE_DOUBLE(1107296256));
    *(v10 + 872) = &unk_1002BB2E8;
    goto LABEL_29;
  }

  sub_1001704BC();
  if (v58)
  {
    v59 = sub_1000053C8();
    v60(v59);
    v61 = sub_100170404();
    v62 = sub_100170534(v61, "stringForKey:");

    sub_100003ED0([v62 valuePromise]);
    sub_100170468();
    *(v10 + 144) = v63;
    sub_10000D0C8();
    v64 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
    sub_100006F30(v64);
    sub_1000073F0(COERCE_DOUBLE(1107296256));
    *(v10 + 744) = &unk_1002BB2C0;
    goto LABEL_29;
  }

  sub_100002AB8();
  if (v65)
  {
    v66 = sub_10000ABFC();
    v67(v66);
    v68 = sub_100005D64();
    v69 = sub_100170534(v68, "URLForKey:");

    sub_1001705D0([v69 valuePromise]);
    sub_100170468();
    *(v10 + 80) = v70;
    sub_100008E74();
    v71 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
    sub_100008134(v71);
    sub_10000BB90(COERCE_DOUBLE(1107296256));
    *(v10 + 616) = &unk_1002BB298;
    goto LABEL_29;
  }

  sub_100004944();
  if (v72)
  {
    v73 = sub_10000EECC();
    v74(v73);
    v75 = sub_100010E90();
    v76 = sub_100170534(v75, "dictionaryForKey:");

    sub_100170570([v76 valuePromise]);
    sub_100170468();
    *(v10 + 16) = v77;
    sub_100013CE8();
    v78 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
    sub_100006B24(v78);
    sub_10000A658(COERCE_DOUBLE(1107296256));
    *(v10 + 552) = &unk_1002BB270;
    goto LABEL_29;
  }

  sub_10000AE84();
  sub_100170558();

  return _diagnoseUnexpectedEnumCase<A>(type:)(v81, v82, v83, v84, v85, v86, v87, v88, a9, a10);
}

uint64_t sub_10016F574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 1976);
  v12 = *(v10 + 1984);
  swift_willThrow();

  v13 = *(v10 + 1760);
  sub_10014EB30(*(v10 + 1960), *(v10 + 1968));
  sub_100170484();
  if (v13)
  {
    sub_100170638();
    sub_100003044();
    v14 = sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
    sub_10000AD84(v14, v15, v16, v17, v18, v19, v20, v21, v90, *(&v90 + 1), v91, *(&v91 + 1), v92, v93);
    sub_100004FF8();
    sub_1001704A0();
    sub_1001704FC();
    sub_100170660();
  }

  else
  {
    sub_10000A880();
  }

  sub_100009DF4(v10 + 1008);
  sub_100008AF8();
  *(v10 + 1792) = v12;
  *(v10 + 1776) = v90;
  *(v10 + 1760) = v91;
  sub_100170398(v22);
  if (v44)
  {
    v24 = *(v10 + 1728);
    Dictionary._bridgeToObjectiveC()();
    sub_1001706E8();

    sub_10000F404();
    sub_100170558();

    __asm { BRAA            X2, X16 }
  }

  v27 = sub_100004C74(v23);
  v28(v27);
  v29 = sub_1001703C0();
  if (v30(v29) == v12)
  {
    v31 = sub_10000F0F4();
    v32(v31);
    v33 = sub_10000DC1C();
    v34 = sub_100170534(v33, "arrayForKey:");

    sub_1001705E8([v34 valuePromise]);
    sub_100170468();
    *(v10 + 272) = v35;
    sub_100170364();
    v36 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
    sub_1000039E8(v36);
    sub_100003D30(COERCE_DOUBLE(1107296256));
    *(v10 + 680) = &unk_1002BB360;
LABEL_29:
    sub_100170600(v37, "resultWithCompletion:");
    sub_100170558();

    return _swift_continuation_await(v79);
  }

  sub_100002ED4();
  if (v44)
  {
    v38 = sub_10000B098();
    v39(v38);
    v40 = sub_10000BD1C();
    v41 = sub_100170534(v40, "BOOLForKey:");

    sub_1001705A0([v41 valuePromise]);
    sub_100170468();
    *(v10 + 208) = v42;
    sub_100170330();
    v43 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_10000C0D0(v43);
    *(v10 + 472) = 1107296256;
    sub_1000083E8(&unk_1002BB338);
    goto LABEL_29;
  }

  sub_1001704C8();
  if (v44)
  {
    v45 = sub_100004668();
    v46(v45);
    v47 = sub_1001703E4();
    v48 = sub_100170534(v47, "doubleForKey:");

    sub_1001705B8([v48 valuePromise]);
    sub_100170468();
    *(v10 + 400) = v49;
    sub_10000B49C();
    v50 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_100007D7C(v50);
    sub_100007794(COERCE_DOUBLE(1107296256));
    *(v10 + 808) = &unk_1002BB310;
    goto LABEL_29;
  }

  sub_1000040E8();
  if (v51)
  {
    v52 = sub_100170300();
    v53(v52);
    v54 = sub_100170424();
    v55 = sub_100170534(v54, "integerForKey:");

    sub_100170588([v55 valuePromise]);
    sub_100170468();
    *(v10 + 336) = v56;
    sub_10000B8D4();
    v57 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_1000067C0(v57);
    sub_10000329C(COERCE_DOUBLE(1107296256));
    *(v10 + 872) = &unk_1002BB2E8;
    goto LABEL_29;
  }

  sub_1001704BC();
  if (v58)
  {
    v59 = sub_1000053C8();
    v60(v59);
    v61 = sub_100170404();
    v62 = sub_100170534(v61, "stringForKey:");

    sub_100003ED0([v62 valuePromise]);
    sub_100170468();
    *(v10 + 144) = v63;
    sub_10000D0C8();
    v64 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
    sub_100006F30(v64);
    sub_1000073F0(COERCE_DOUBLE(1107296256));
    *(v10 + 744) = &unk_1002BB2C0;
    goto LABEL_29;
  }

  sub_100002AB8();
  if (v65)
  {
    v66 = sub_10000ABFC();
    v67(v66);
    v68 = sub_100005D64();
    v69 = sub_100170534(v68, "URLForKey:");

    sub_1001705D0([v69 valuePromise]);
    sub_100170468();
    *(v10 + 80) = v70;
    sub_100008E74();
    v71 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
    sub_100008134(v71);
    sub_10000BB90(COERCE_DOUBLE(1107296256));
    *(v10 + 616) = &unk_1002BB298;
    goto LABEL_29;
  }

  sub_100004944();
  if (v72)
  {
    v73 = sub_10000EECC();
    v74(v73);
    v75 = sub_100010E90();
    v76 = sub_100170534(v75, "dictionaryForKey:");

    sub_100170570([v76 valuePromise]);
    sub_100170468();
    *(v10 + 16) = v77;
    sub_100013CE8();
    v78 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
    sub_100006B24(v78);
    sub_10000A658(COERCE_DOUBLE(1107296256));
    *(v10 + 552) = &unk_1002BB270;
    goto LABEL_29;
  }

  sub_10000AE84();
  sub_100170558();

  return _diagnoseUnexpectedEnumCase<A>(type:)(v81, v82, v83, v84, v85, v86, v87, v88, a9, a10);
}

uint64_t sub_10016FBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 2008);
  v12 = *(v10 + 2016);
  swift_willThrow();

  v13 = *(v10 + 1760);
  sub_10014EB30(*(v10 + 1992), *(v10 + 2000));
  sub_100170484();
  if (v13)
  {
    sub_100170638();
    sub_100003044();
    v14 = sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
    sub_10000AD84(v14, v15, v16, v17, v18, v19, v20, v21, v90, *(&v90 + 1), v91, *(&v91 + 1), v92, v93);
    sub_100004FF8();
    sub_1001704A0();
    sub_1001704FC();
    sub_100170660();
  }

  else
  {
    sub_10000A880();
  }

  sub_100009DF4(v10 + 1392);
  sub_100008AF8();
  *(v10 + 1792) = v12;
  *(v10 + 1776) = v90;
  *(v10 + 1760) = v91;
  sub_100170398(v22);
  if (v44)
  {
    v24 = *(v10 + 1728);
    Dictionary._bridgeToObjectiveC()();
    sub_1001706E8();

    sub_10000F404();
    sub_100170558();

    __asm { BRAA            X2, X16 }
  }

  v27 = sub_100004C74(v23);
  v28(v27);
  v29 = sub_1001703C0();
  if (v30(v29) == v12)
  {
    v31 = sub_10000F0F4();
    v32(v31);
    v33 = sub_10000DC1C();
    v34 = sub_100170534(v33, "arrayForKey:");

    sub_1001705E8([v34 valuePromise]);
    sub_100170468();
    *(v10 + 272) = v35;
    sub_100170364();
    v36 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
    sub_1000039E8(v36);
    sub_100003D30(COERCE_DOUBLE(1107296256));
    *(v10 + 680) = &unk_1002BB360;
LABEL_29:
    sub_100170600(v37, "resultWithCompletion:");
    sub_100170558();

    return _swift_continuation_await(v79);
  }

  sub_100002ED4();
  if (v44)
  {
    v38 = sub_10000B098();
    v39(v38);
    v40 = sub_10000BD1C();
    v41 = sub_100170534(v40, "BOOLForKey:");

    sub_1001705A0([v41 valuePromise]);
    sub_100170468();
    *(v10 + 208) = v42;
    sub_100170330();
    v43 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_10000C0D0(v43);
    *(v10 + 472) = 1107296256;
    sub_1000083E8(&unk_1002BB338);
    goto LABEL_29;
  }

  sub_1001704C8();
  if (v44)
  {
    v45 = sub_100004668();
    v46(v45);
    v47 = sub_1001703E4();
    v48 = sub_100170534(v47, "doubleForKey:");

    sub_1001705B8([v48 valuePromise]);
    sub_100170468();
    *(v10 + 400) = v49;
    sub_10000B49C();
    v50 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_100007D7C(v50);
    sub_100007794(COERCE_DOUBLE(1107296256));
    *(v10 + 808) = &unk_1002BB310;
    goto LABEL_29;
  }

  sub_1000040E8();
  if (v51)
  {
    v52 = sub_100170300();
    v53(v52);
    v54 = sub_100170424();
    v55 = sub_100170534(v54, "integerForKey:");

    sub_100170588([v55 valuePromise]);
    sub_100170468();
    *(v10 + 336) = v56;
    sub_10000B8D4();
    v57 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_1000067C0(v57);
    sub_10000329C(COERCE_DOUBLE(1107296256));
    *(v10 + 872) = &unk_1002BB2E8;
    goto LABEL_29;
  }

  sub_1001704BC();
  if (v58)
  {
    v59 = sub_1000053C8();
    v60(v59);
    v61 = sub_100170404();
    v62 = sub_100170534(v61, "stringForKey:");

    sub_100003ED0([v62 valuePromise]);
    sub_100170468();
    *(v10 + 144) = v63;
    sub_10000D0C8();
    v64 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
    sub_100006F30(v64);
    sub_1000073F0(COERCE_DOUBLE(1107296256));
    *(v10 + 744) = &unk_1002BB2C0;
    goto LABEL_29;
  }

  sub_100002AB8();
  if (v65)
  {
    v66 = sub_10000ABFC();
    v67(v66);
    v68 = sub_100005D64();
    v69 = sub_100170534(v68, "URLForKey:");

    sub_1001705D0([v69 valuePromise]);
    sub_100170468();
    *(v10 + 80) = v70;
    sub_100008E74();
    v71 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
    sub_100008134(v71);
    sub_10000BB90(COERCE_DOUBLE(1107296256));
    *(v10 + 616) = &unk_1002BB298;
    goto LABEL_29;
  }

  sub_100004944();
  if (v72)
  {
    v73 = sub_10000C6B8();
    v74(v73);
    v75 = sub_100010E90();
    v76 = sub_100170534(v75, "dictionaryForKey:");

    sub_100170570([v76 valuePromise]);
    sub_100170468();
    *(v10 + 16) = v77;
    sub_100013CE8();
    v78 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
    sub_100006B24(v78);
    sub_10000A658(COERCE_DOUBLE(1107296256));
    *(v10 + 552) = &unk_1002BB270;
    goto LABEL_29;
  }

  sub_10000AE84();
  sub_100170558();

  return _diagnoseUnexpectedEnumCase<A>(type:)(v81, v82, v83, v84, v85, v86, v87, v88, a9, a10);
}

uint64_t *sub_100170220(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = sub_10000C4FC((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a3)
  {
    v9 = a3;
    v10 = v8;
    v11 = a4;

    return v11(v10, v9);
  }

  if (a2)
  {
    v9 = a2;
    v10 = v8;
    v11 = a5;

    return v11(v10, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_100170300()
{
  v1 = v0[214];
  v2 = v0[213];
  v3 = *(v0[215] + 96);
  return v0[216];
}

uint64_t sub_100170330()
{
  *(v0 + 248) = v1;
  *(v0 + 216) = sub_10016A498;

  return swift_continuation_init();
}

uint64_t sub_100170364()
{
  *(v0 + 312) = v1;
  *(v0 + 280) = sub_100169C20;

  return swift_continuation_init();
}

void sub_100170398(uint64_t a1@<X8>)
{
  v2[219] = a1;
  v2[218] = v1;
  v3 = v2[217];
}

NSString sub_1001703E4()
{
  *(v1 + 1864) = *v0;
  *(v1 + 1872) = v0[1];

  return String._bridgeToObjectiveC()();
}

NSString sub_100170404()
{
  *(v1 + 1928) = *v0;
  *(v1 + 1936) = v0[1];

  return String._bridgeToObjectiveC()();
}

NSString sub_100170424()
{
  *(v1 + 1896) = *v0;
  *(v1 + 1904) = v0[1];

  return String._bridgeToObjectiveC()();
}

double sub_100170444()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  v3 = v1[224];
  v4 = v1[223];
  v5 = v1[222];
  v6 = v1[221];
  v7 = v1[220];
  v8 = v1[218];
  return result;
}

uint64_t sub_100170484()
{
}

_OWORD *sub_1001704A0()
{
  v4 = (*(v1 + 56) + 32 * v2);

  return sub_1001514B8(v4, v0);
}

double sub_1001704D4()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t sub_1001704E0()
{
  v3 = (*(v0 + 56) + 32 * v1);

  return sub_100004118(v3);
}

uint64_t sub_1001704FC()
{

  return _NativeDictionary._delete(at:)();
}

_OWORD *sub_100170518(_OWORD *a1, _OWORD *a2)
{
  result = sub_1001514B8(a1, a2);
  v4 = *(v2 + 16);
  return result;
}

id sub_100170534(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void sub_100170570(uint64_t a1)
{
  *(v1 + 2008) = a1;
}

void sub_100170588(uint64_t a1)
{
  *(v1 + 1912) = a1;
}

void sub_1001705A0(uint64_t a1)
{
  *(v1 + 1848) = a1;
}

void sub_1001705B8(uint64_t a1)
{
  *(v1 + 1880) = a1;
}

void sub_1001705D0(uint64_t a1)
{
  *(v1 + 1976) = a1;
}

void sub_1001705E8(uint64_t a1)
{
  *(v1 + 1816) = a1;
}

id sub_100170600(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

BOOL sub_100170618()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

uint64_t sub_100170638()
{
  v2 = *(v0 + 1744);

  return swift_isUniquelyReferenced_nonNull_native();
}

BOOL sub_1001706A0()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

uint64_t sub_1001706B8()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

NSDictionary sub_1001706D0()
{

  return Dictionary._bridgeToObjectiveC()();
}

uint64_t sub_1001706E8()
{
}

double sub_100170700()
{
  result = 0.0;
  *(v0 + 944) = 0u;
  *(v0 + 960) = 0u;
  v2 = *(v0 + 1792);
  v3 = *(v0 + 1744);
  return result;
}

BOOL sub_100170714(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13);
}

uint64_t sub_100170734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v131 = a5;
  v16 = v15;
  v134 = a6;
  v135 = a7;
  *&v128 = a2;
  v127 = a1;
  v136 = a15;
  v137 = a14;
  v133 = a12;
  v129 = a9;
  v130 = a10;
  v115 = type metadata accessor for URL();
  v20 = sub_100003724(v115);
  v114 = v21;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  sub_1000030E4();
  sub_100008280(v24);
  v124 = type metadata accessor for FileStoreError();
  v25 = sub_100003724(v124);
  v116 = v26;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  sub_1000030E4();
  sub_100008280(v29);
  v30 = type metadata accessor for LogInterpolation.StringInterpolation();
  v31 = sub_1000030B8(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_1000030E4();
  sub_100008280(v34);
  v125 = type metadata accessor for Log();
  v35 = sub_100003724(v125);
  v126 = v36;
  v38 = *(v37 + 64);
  __chkstk_darwin(v35);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v39);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v40);
  sub_10000D478();
  v42 = sub_100008280(v41);
  v43 = type metadata accessor for TSDataSyncDeviceState(v42);
  v44 = sub_10000307C(v43);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v47);
  v49 = (&v113 - v48);
  __chkstk_darwin(v50);
  v52 = &v113 - v51;
  swift_defaultActor_initialize();
  v53 = (v16 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_store);
  *v53 = a3;
  v53[1] = a4;
  v121 = v53;
  v54 = (v16 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_requester);
  v55 = v128;
  *v54 = v127;
  v54[1] = v55;
  v56 = (v16 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_accountFinder);
  v58 = v134;
  v57 = v135;
  *v56 = v131;
  v56[1] = v58;
  v59 = (v16 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_transactionStore);
  *v59 = v57;
  v59[1] = a8;
  v60 = (v16 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_deviceInformation);
  v61 = v130;
  *v60 = v129;
  v60[1] = v61;
  v131 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_defaults;
  v135 = a11;
  sub_1001512EC(a11, v16 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_defaults);
  v62 = v133;
  v129 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_bag;
  *(v16 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_bag) = v133;
  v130 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_generator;
  v134 = a13;
  sub_1001512EC(a13, v16 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_generator);
  *&v128 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_coordinator;
  sub_1001512EC(v137, v16 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_coordinator);
  v127 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_metrics;
  sub_1001512EC(v136, v16 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_metrics);
  v63 = *(a4 + 8);
  v133 = v62;
  v64 = v132;
  v63(a3, a4);
  if (v64)
  {
    v141[6] = v64;
    swift_errorRetain();
    sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
    v65 = v123;
    v66 = v124;
    if (swift_dynamicCast())
    {
      v67 = v116;
      v68 = (*(v116 + 88))(v65, v66);
      if (v68 == enum case for FileStoreError.fileIsLockedAwaitingFirstDeviceUnlock(_:))
      {
        v69 = v68;

        (*(v67 + 96))(v65, v66);
        v70 = v114;
        v71 = v115;
        (*(v114 + 32))(v117, v65, v115);
        sub_100177164(&qword_1002DB900, &type metadata accessor for FileStoreError);
        sub_100004950();
        v132 = swift_allocError();
        v73 = v72;
        v74 = *(sub_100099DF4(&qword_1002DB908, &unk_100232B00) + 48);
        v75 = v117;
        (*(v70 + 16))(v73, v117, v71);
        *(v73 + v74) = default argument 1 of FileStoreError.fileIsLockedAwaitingFirstDeviceUnlock(_:)();
        (*(v67 + 104))(v73, v69, v66);
        swift_willThrow();
        (*(v70 + 8))(v75, v71);

        sub_100004118((v16 + v131));

        sub_100004118((v16 + v130));
        sub_100004118((v16 + v128));
        sub_100004118((v16 + v127));
        type metadata accessor for TSDataSyncConfigAccessActor();
        swift_defaultActor_destroy();

        sub_10000AC2C();
        v76 = *(*v16 + 48);
        v77 = *(*v16 + 52);
        sub_1000050CC();
        swift_deallocPartialClassInstance();
        return v16;
      }

      (*(v67 + 8))(v65, v66);
    }

    v85 = v43[6];
    v86 = type metadata accessor for Date();
    sub_100002728(v49 + v85, 1, 1, v86);
    v87 = v49 + v43[7];
    static Date.distantPast.getter();
    sub_100177478(v43[8]);
    sub_100177478(v43[9]);
    sub_100177478(v43[15]);
    sub_100177478(v43[16]);
    v49[1] = 0;
    v49[2] = 0;
    *v49 = &_swiftEmptySetSingleton;
    *(v49 + v43[10]) = 0;
    *(v49 + v43[11]) = 0;
    *(v49 + v43[12]) = 2;
    *(v49 + v43[13]) = 0;
    *(v49 + v43[14]) = 0;
    *(v49 + v43[17]) = 0;
    v88 = (v49 + v43[18]);
    *v88 = xmmword_100234820;
    v88[1] = 0u;
    v88[2] = 0u;
    v88[3] = 0u;
    v89 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_state;
    sub_10000F124();
    sub_10017710C(v49, v16 + v89);
    v90 = *v121;
    v91 = v121[1];
    sub_1000109B8();
    swift_beginAccess();
    sub_100008158();
    v92 = v16 + v89;
    v93 = v122;
    sub_1001771AC(v92, v122);
    (*(v91 + 16))(v93, v90, v91);
    sub_100004CB4();
    sub_100177204();
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v94 = type metadata accessor for LogInterpolation();
    sub_100003B78(v94);
    v96 = *(v95 + 72);
    v98 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v131 = v90;
    v132 = v96;
    v129 = v98 + 2 * v96;
    v99 = swift_allocObject();
    v128 = xmmword_1002329F0;
    *(v99 + 16) = xmmword_1002329F0;
    v130 = v98;
    v127 = type metadata accessor for TSDataSyncConfigAccessActor();
    v141[0] = v127;
    v140 = v16;

    v100 = AMSLogKey();
    if (v100)
    {
      v101 = v100;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(&v140);
    sub_100177554(v141);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v102._countAndFlagsBits = 0xD000000000000017;
    v102._object = 0x8000000100274BE0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v102);
    swift_getErrorValue();
    v104 = v138;
    v103 = v139;
    v141[0] = v139;
    v105 = sub_100007914(&v140);
    (*(*(v103 - 8) + 16))(v105, v104, v103);
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E24(&v140, &unk_1002DFC10, &qword_10022E6D0);
    v106._countAndFlagsBits = sub_10000286C();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v106);
    LogInterpolation.init(stringInterpolation:)();
    v107 = v118;
    Log.error(_:)();

    v108 = *(v126 + 8);
    v126 += 8;
    v108(v107, v125);
    static Log.tsDataSync.getter();
    *(swift_allocObject() + 16) = v128;
    v141[0] = v127;
    v140 = v16;

    v109 = AMSLogKey();
    if (v109)
    {
      v110 = v109;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(&v140);
    LogInterpolation.init(stringLiteral:)();
    v111 = v119;
    Log.default(_:)();

    sub_10000AC2C();
    v108(v111, v125);
  }

  else
  {
    sub_10000F124();
    sub_10017710C(v52, v16 + v78);
    v79 = v120;
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v80 = type metadata accessor for LogInterpolation();
    sub_100003B78(v80);
    v82 = *(v81 + 72);
    sub_10000A1F0();
    *(swift_allocObject() + 16) = xmmword_1002329F0;
    v141[0] = type metadata accessor for TSDataSyncConfigAccessActor();
    v140 = v16;

    v83 = AMSLogKey();
    if (v83)
    {
      v84 = v83;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(&v140);
    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();

    sub_10000AC2C();
    (*(v126 + 8))(v79, v125);
  }

  return v16;
}

uint64_t sub_10017139C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = type metadata accessor for TSDataSyncConfigScheduleAction(0);
  v9 = sub_1000030B8(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v12);
  sub_10000D478();
  v14 = sub_100008280(v13);
  v115 = type metadata accessor for TSDataSyncConfigSchedule(v14);
  v15 = sub_10000307C(v115);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000030E4();
  v118 = v18;
  v19 = sub_100099DF4(&qword_1002DF3C0, &qword_10023F058);
  v20 = sub_1000030B8(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v23);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v24);
  sub_10000D478();
  sub_100008280(v25);
  v26 = type metadata accessor for LogInterpolation.StringInterpolation();
  v27 = sub_1000030B8(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v30);
  sub_10000D478();
  sub_100008280(v31);
  v128 = type metadata accessor for Log();
  v32 = sub_100003724(v128);
  v117 = v33;
  v35 = *(v34 + 64);
  __chkstk_darwin(v32);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v36);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v37);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v38);
  sub_10000D478();
  v40 = sub_100008280(v39);
  v41 = type metadata accessor for TSDataSyncDeviceState(v40);
  v42 = (v41 - 8);
  v43 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  sub_10000306C();
  v46 = (v45 - v44);
  v47 = type metadata accessor for TSDataSyncConfigScheduleInput(0);
  v48 = sub_10000307C(v47);
  v50 = *(v49 + 64);
  __chkstk_darwin(v48);
  sub_10000306C();
  v53 = v52 - v51;
  v54 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_state;
  v136 = v6;
  sub_1000109B8();
  swift_beginAccess();
  sub_100008158();
  sub_1001771AC(v6 + v54, v46);
  v123 = *(a3 + 8);
  v55 = *(a3 + 24);
  v56 = *(a3 + 32);
  v57 = *(a3 + 40);
  v58 = *(a3 + 64);
  v132 = *(a3 + 48);
  v133 = v58;
  *v134 = *(a3 + 80);
  v111 = a3;
  *&v134[16] = *(a3 + 96);
  v59 = sub_1000102EC(0xD000000000000028);
  v61 = v60;
  v62 = v47[10];
  sub_100177560(v42[8]);
  v63 = v47[11];
  sub_100177560(v42[11]);
  v64 = v42[9];
  v65 = v47[12];
  v66 = type metadata accessor for Date();
  v110 = *(v66 - 8);
  v121 = v66;
  (*(v110 + 16))(v53 + v65, &v46[v64]);
  v67 = *&v46[v42[12]];
  v68 = *(v46 + 1);
  v69 = *(v46 + 2);
  v135 = *&v134[8];
  v70 = *(*v46 + 16) == 0;
  *v53 = v59;
  *(v53 + 8) = v61;
  *(v53 + 16) = v123;
  *(v53 + 32) = v55;
  *(v53 + 40) = v56;
  *(v53 + 48) = v57;
  *(v53 + v47[13]) = v67;
  v71 = (v53 + v47[14]);
  *v71 = v68;
  v71[1] = v69;
  v72 = (v53 + v47[15]);
  *v72 = a1;
  v72[1] = a2;
  *(v53 + v47[16]) = *&v134[8];
  *(v53 + v47[17]) = v70;

  sub_1000C68A8(&v135, &v130, &qword_1002DCC48, &qword_100238200);
  sub_100004CB4();
  sub_100177204();
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100002834();
  v73 = type metadata accessor for LogInterpolation();
  sub_100003B78(v73);
  v75 = *(v74 + 72);
  v77 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  *(&v131 + 1) = type metadata accessor for TSDataSyncConfigAccessActor();
  *&v130 = v136;

  v78 = AMSLogKey();
  if (v78)
  {
    v79 = v78;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000F414();
  }

  else
  {
    sub_100013E48();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(&v130);
  sub_100177554(&v134[16]);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v80._object = 0xEF207475706E6920;
  v80._countAndFlagsBits = 0x656C756465686353;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v80);
  *(&v131 + 1) = v47;
  v81 = sub_100007914(&v130);
  sub_1001771AC(v53, v81);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(&v130, &unk_1002DFC10, &qword_10022E6D0);
  v82._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v82);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v83 = *(v117 + 8);
  v83(v127, v128);
  sub_1000AC40C(v53, a5, v129);
  static Log.tsDataSync.getter();
  v84 = sub_1000140E4();
  sub_100004698(v84);
  sub_10000A2F4();
  v85 = AMSLogKey();
  if (v85)
  {
    v86 = v85;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000F414();
  }

  else
  {
    sub_100013E48();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(&v130);
  sub_100177554(&v137);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v87._countAndFlagsBits = 0x656C756465686353;
  v87._object = 0xE900000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v87);
  sub_1000C68A8(v129, v114, &qword_1002DF3C0, &qword_10023F058);
  if (sub_100004DFC(v114, 1, v115) == 1)
  {
    sub_100004E24(v114, &qword_1002DF3C0, &qword_10023F058);
    v130 = 0u;
    v131 = 0u;
  }

  else
  {
    *(&v131 + 1) = v115;
    sub_100007914(&v130);
    sub_100013D1C();
    sub_10017710C(v114, v88);
  }

  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(&v130, &unk_1002DFC10, &qword_10022E6D0);
  v89._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v89);
  sub_100002AC4();
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v90 = sub_1001774E8();
  (v83)(v90);
  sub_1000C68A8(v129, v116, &qword_1002DF3C0, &qword_10023F058);
  if (sub_100004DFC(v116, 1, v115) == 1)
  {
    sub_100004E24(v129, &qword_1002DF3C0, &qword_10023F058);
    sub_100008400();
    sub_100004E24(v116, &qword_1002DF3C0, &qword_10023F058);
    v91 = 1;
LABEL_12:
    v92 = v121;
    return sub_100002728(a6, v91, 1, v92);
  }

  sub_100013D1C();
  sub_10017710C(v116, v118);
  sub_100177164(&qword_1002DB968, &type metadata accessor for Date);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v93 = v119;
    sub_1000040F4();
    v94();
    v95 = 0;
  }

  else
  {
    v95 = 1;
    v93 = v119;
  }

  v96 = sub_100099DF4(&qword_1002DB1C0, &unk_100231900);
  sub_100002728(v93, v95, 1, v96);
  sub_1001771AC(v93, v113);
  v97 = sub_100099DF4(&qword_1002DB1C0, &unk_100231900);
  if (sub_100004DFC(v113, 1, v97) != 1)
  {
    (*(v110 + 32))(a6, v113, v121);
    static Log.tsDataSync.getter();
    v101 = sub_1000140E4();
    sub_100004698(v101);
    sub_10000A2F4();
    v102 = AMSLogKey();
    if (v102)
    {
      v103 = v102;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000F414();
    }

    else
    {
      sub_100013E48();
    }

    sub_100177538();

    sub_100004118(&v130);
    sub_100177554(&v134[16]);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_100002860();
    v106._countAndFlagsBits = 0xD000000000000013;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v106);
    v92 = v121;
    *(&v131 + 1) = v121;
    sub_100007914(&v130);
    sub_1000040F4();
    v107();
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E24(&v130, &unk_1002DFC10, &qword_10022E6D0);
    v108._countAndFlagsBits = 0xD000000000000014;
    v108._object = 0x8000000100272D40;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v108);
    sub_100002AC4();
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    v109 = sub_1001774E8();
    (v83)(v109);
    sub_10000D0FC();
    sub_100008EA8();
    sub_100004E24(v129, &qword_1002DF3C0, &qword_10023F058);
    sub_100008400();
    v91 = 0;
    return sub_100002728(a6, v91, 1, v92);
  }

  static Log.tsDataSync.getter();
  v98 = sub_1000140E4();
  sub_100004698(v98);
  sub_10000A2F4();
  v99 = AMSLogKey();
  if (v99)
  {
    v100 = v99;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(&v130);
  sub_100002AC4();
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  v104 = sub_1001774E8();
  (v83)(v104);
  sub_1001720BC(v111, a4, a5, 0);
  sub_10000D0FC();
  sub_100008EA8();
  sub_100004E24(v129, &qword_1002DF3C0, &qword_10023F058);
  result = sub_100008400();
  if (!v120)
  {
    v91 = 1;
    goto LABEL_12;
  }

  return result;
}

void sub_1001720BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v7 = type metadata accessor for Log();
  v8 = sub_100003724(v7);
  v24 = v9;
  v25 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_1000030E4();
  v28 = v12;
  v13 = *(v4 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_deviceInformation + 8);
  v14 = *(v4 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_deviceInformation);
  if (dispatch thunk of static DeviceInformation.deviceIsRunningInternalBuild()() & 1) != 0 && (v15 = *(v5 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_defaults + 32), sub_10000C4FC((v5 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_defaults), *(v5 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_defaults + 24)), v16 = dispatch thunk of TSDataSyncDefaults.autoSyncDisabledForTSDataSync.getter(), (v16) && (a4 & 1) == 0)
  {
    v17 = v16;
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    v18 = type metadata accessor for LogInterpolation();
    sub_100003B78(v18);
    v20 = *(v19 + 72);
    sub_10000A1F0();
    *(swift_allocObject() + 16) = xmmword_10023EF50;
    v27 = type metadata accessor for TSDataSyncConfigAccessActor();
    v26[0] = v5;

    v21 = AMSLogKey();
    if (v21)
    {
      v22 = v21;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(v26);
    LogInterpolation.init(stringLiteral:)();
    v27 = &type metadata for Bool;
    LOBYTE(v26[0]) = 1;
    static LogInterpolation.safe(_:)();
    sub_10017751C();
    LogInterpolation.init(stringLiteral:)();
    v27 = &type metadata for Bool;
    LOBYTE(v26[0]) = v17 & 1;
    static LogInterpolation.safe(_:)();
    sub_10017751C();
    LogInterpolation.init(stringLiteral:)();
    v27 = &type metadata for Bool;
    LOBYTE(v26[0]) = 0;
    static LogInterpolation.safe(_:)();
    sub_10017751C();
    v23 = v28;
    Log.default(_:)();

    (*(v24 + 8))(v23, v25);
  }

  else
  {
    sub_1001723F4();
  }
}

void sub_1001723F4()
{
  sub_100002A08();
  v165 = v1;
  v163 = v0;
  v158 = v3;
  v159 = v4;
  v157 = v5;
  v6 = type metadata accessor for Date();
  v7 = sub_100003724(v6);
  v160 = v8;
  v161 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v145 = v11;
  v149 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  sub_1000030B8(v12);
  v14 = *(v13 + 64);
  sub_100003774();
  __chkstk_darwin(v15);
  v150 = &v136 - v16;
  v17 = sub_100013FAC();
  v18 = type metadata accessor for TSDataSyncConfigServerRequest(v17);
  v19 = sub_100003B78(v18);
  v146 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  v147 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  sub_10000D478();
  v148 = v24;
  sub_100013FAC();
  v156 = type metadata accessor for LogInterpolation.StringInterpolation();
  v25 = sub_100003724(v156);
  v154 = v26;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  sub_1000037D4();
  v151 = v29;
  __chkstk_darwin(v30);
  sub_10000D478();
  v152 = v31;
  sub_100013FAC();
  v155 = type metadata accessor for Log();
  v32 = sub_100003724(v155);
  v153 = v33;
  v35 = *(v34 + 64);
  __chkstk_darwin(v32);
  sub_1000030E4();
  v162 = v36;
  v37 = sub_100013FAC();
  v38 = type metadata accessor for TSDataSyncDeviceState(v37);
  v39 = sub_10000307C(v38);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  sub_10000308C();
  v44 = (v42 - v43);
  __chkstk_darwin(v45);
  v47 = &v136 - v46;
  v48 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v48);
  v50 = *(v49 + 64);
  sub_100003774();
  __chkstk_darwin(v51);
  v53 = &v136 - v52;
  v54 = type metadata accessor for AccountIdentity();
  v55 = sub_100003724(v54);
  v164 = v56;
  v58 = *(v57 + 64);
  __chkstk_darwin(v55);
  sub_10000308C();
  sub_10000DE68();
  __chkstk_darwin(v59);
  sub_10000D478();
  v61 = v60;
  v62 = v165;
  sub_100172FD8(v166);
  if (!v62)
  {
    v143 = v53;
    v144 = v47;
    v139 = v2;
    v140 = v22;
    v141 = v38;
    v142 = v44;
    v63 = sub_10000C4FC(v166, v167);
    v64 = v164;
    v65 = v164 + 16;
    v66 = *(v164 + 16);
    v67 = v61;
    v66(v61, v63, v54);
    sub_100172FD8(v168);
    v165 = 0;
    v68 = v64;
    v137 = v66;
    v138 = v65;
    sub_10000C4FC(v168, v169);
    v69 = v143;
    sub_10009B8B0();
    v70 = v163 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_state;
    sub_1000109B8();
    swift_beginAccess();
    sub_100008158();
    v71 = v144;
    sub_1001771AC(v70, v144);
    v72 = sub_100123DD0(v67, v69, v71);
    sub_100004CB4();
    sub_100177204();
    sub_100004E24(v69, &qword_1002DA970, &qword_1002318B0);
    v73 = *(v68 + 8);
    v143 = v54;
    v73(v67, v54);
    sub_100004118(v168);
    sub_100004118(v166);
    if (v72)
    {
      static Log.tsDataSync.getter();
      sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
      sub_100003F9C();
      v74 = type metadata accessor for LogInterpolation();
      sub_100003724(v74);
      v76 = v75;
      v78 = *(v77 + 72);
      v79 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_1002329F0;
      v81 = v80 + v79;
      v167 = type metadata accessor for TSDataSyncConfigAccessActor();
      v166[0] = v163;

      v82 = AMSLogKey();
      if (v82)
      {
        v83 = v82;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v107 = v156;
      static LogInterpolation.prefix(_:_:)();

      sub_100004118(v166);
      v108 = v152;
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      sub_100002860();
      v109._countAndFlagsBits = 0xD000000000000019;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v109);
      v110 = v165;
      sub_100172FD8(v166);
      if (v110)
      {
        (*(v154 + 8))(v108, v107);
        (*(v153 + 8))(v162, v155);
        (*(v76 + 8))(v81, v74);
        *(v80 + 16) = 0;
      }

      else
      {
        v113 = sub_10000C4FC(v166, v167);
        v114 = v143;
        v169 = v143;
        v115 = sub_100007914(v168);
        v137(v115, v113, v114);
        LogInterpolation.StringInterpolation.appendInterpolation(_:)();
        sub_100004E24(v168, &unk_1002DFC10, &qword_10022E6D0);
        sub_100004118(v166);
        v116._countAndFlagsBits = 0xD000000000000012;
        v116._object = 0x8000000100274DB0;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v116);
        (*(v154 + 32))(v151, v108, v107);
        LogInterpolation.init(stringInterpolation:)();
        v117 = v162;
        Log.default(_:)();

        (*(v153 + 8))(v117, v155);
      }
    }

    else
    {
      sub_100008158();
      sub_1001771AC(v70, v71);
      v84 = v141;
      v85 = v142;
      v86 = v141[9];
      v88 = v160 + 16;
      v87 = *(v160 + 16);
      v89 = v161;
      v87(v142 + v86, v159, v161);
      sub_100002728(v85 + v86, 0, 1, v89);
      v90 = *v71;
      v162 = v71[1];
      v91 = v71[2];
      v155 = v90;
      v156 = v91;
      v92 = v84[6];
      v153 = v70;
      sub_1001774AC(v92);
      v93 = v84[7];
      v152 = v87;
      v87(v85 + v93, v71 + v93, v89);
      sub_1001774AC(v84[8]);
      v94 = *(v71 + v84[10]);
      v95 = *(v71 + v84[11]);
      v96 = v84[13];
      v154 = *(v71 + v84[12]);
      v97 = *(v71 + v96);
      v98 = *(v71 + v84[14]);
      sub_1000C68A8(v71 + v84[15], v85 + v84[15], &qword_1002DA970, &qword_1002318B0);
      sub_1001774AC(v84[16]);
      v99 = *(v71 + v84[17]);
      sub_100177498(v71 + v84[18]);

      v100 = v155;

      v101 = v156;

      sub_1000C68A8(v168, v166, &qword_1002DB2E0, &unk_10023F030);
      sub_100004CB4();
      sub_100177204();
      v102 = v162;
      *v85 = v100;
      v85[1] = v102;
      v85[2] = v101;
      *(v85 + v84[10]) = v94;
      *(v85 + v84[11]) = v95;
      *(v85 + v84[12]) = v154;
      *(v85 + v84[13]) = v97;
      *(v85 + v84[14]) = v98;
      *(v85 + v84[17]) = v99;
      sub_100002EE0(v85 + v84[18]);
      v104 = v157;
      v103 = v158;
      v105 = v163;
      v106 = v165;
      sub_100175464(v85, 0xD000000000000019, 0x8000000100274D70, v157, v158);
      if (!v106)
      {
        v162 = v88;
        v111 = v153;
        v112 = *(v105 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_transactionStore);
        (*(*(v105 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_transactionStore + 8) + 8))(11);
        sub_100172FD8(v166);
        v165 = 0;
        v118 = sub_10000C4FC(v166, v167);
        v119 = v139;
        v120 = v143;
        v137(v139, v118, v143);
        v121 = *(v111 + v141[10]);
        v122 = v148;
        (*(v164 + 32))(v148, v119, v120);
        *(v122 + *(type metadata accessor for TSDataSyncConfigServerRequest.Get(0) + 20)) = v121;
        sub_100004118(v166);
        v123 = type metadata accessor for TaskPriority();
        sub_100002728(v150, 1, 1, v123);
        sub_1000032B4();
        sub_1001771AC(v122, v147);
        v152(v149, v159, v161);
        v162 = sub_100177164(&qword_1002DF3B0, type metadata accessor for TSDataSyncConfigAccessActor);
        v124 = (*(v146 + 80) + 40) & ~*(v146 + 80);
        v125 = v103;
        v126 = (v140 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
        v127 = v104;
        v164 = (v126 + 199) & 0xFFFFFFFFFFFFFFF8;
        v128 = v105;
        v129 = v160;
        v130 = (*(v160 + 80) + v164 + 64) & ~*(v160 + 80);
        v131 = swift_allocObject();
        v132 = v162;
        *(v131 + 2) = v128;
        *(v131 + 3) = v132;
        *(v131 + 4) = v128;
        sub_10017710C(v147, &v131[v124]);
        memcpy(&v131[v126], v127, 0xC0uLL);
        v133 = &v131[v164];
        v134 = v125[1];
        *v133 = *v125;
        *(v133 + 1) = v134;
        v135 = v125[3];
        *(v133 + 2) = v125[2];
        *(v133 + 3) = v135;
        (*(v129 + 32))(&v131[v130], v149, v161);
        swift_retain_n();
        sub_10009FF70(v127, v166);
        sub_1000C68A8(v125, v166, &qword_1002DF3B8, &qword_10023F050);
        sub_10013ABD4(0, 0, v150, &unk_10023F048, v131);

        sub_100177204();
      }

      sub_100004CB4();
      sub_100177204();
    }
  }

  sub_1000048F8();
}

void sub_100172FD8(uint64_t *a1@<X8>)
{
  v2 = sub_100099DF4(&qword_1002DA6C0, &unk_100232C60);
  sub_1000030B8(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = [objc_opt_self() ams_sharedAccountStore];
  v9 = [v8 ams_activeiTunesAccount];

  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = v9;
  sub_100176D64(v10);
  if (!v11)
  {
    goto LABEL_5;
  }

  sub_10009AB58();
  v12 = type metadata accessor for AMPAccount();
  if (sub_100004DFC(v7, 1, v12) == 1)
  {
    sub_100004E24(v7, &qword_1002DA6C0, &unk_100232C60);
LABEL_5:
    sub_100176D10();
    sub_100004950();
    swift_allocError();
    *v13 = 1;
    *(v13 + 8) = 0;
    swift_willThrow();

    return;
  }

  a1[3] = v12;
  a1[4] = &off_1002B4510;
  v14 = sub_100007914(a1);
  sub_10017710C(v7, v14);
}

uint64_t sub_100173160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[14] = a4;
  v11 = type metadata accessor for MetricsEvent();
  v7[17] = v11;
  v12 = *(v11 - 8);
  v7[18] = v12;
  v13 = *(v12 + 64) + 15;
  v7[19] = swift_task_alloc();
  v14 = type metadata accessor for FlagKeys();
  v7[20] = v14;
  v15 = *(v14 - 8);
  v7[21] = v15;
  v16 = *(v15 + 64) + 15;
  v7[22] = swift_task_alloc();
  v17 = type metadata accessor for Date();
  v7[23] = v17;
  v18 = *(v17 - 8);
  v7[24] = v18;
  v19 = *(v18 + 64) + 15;
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v20 = type metadata accessor for Log();
  v7[27] = v20;
  v21 = *(v20 - 8);
  v7[28] = v21;
  v22 = *(v21 + 64) + 15;
  v7[29] = swift_task_alloc();
  v23 = swift_task_alloc();
  v7[30] = v23;
  *v23 = v7;
  v23[1] = sub_1001733A0;

  return sub_100173978(a5, a6, a7);
}

uint64_t sub_1001733A0()
{
  sub_1000030F8();
  v3 = v2;
  sub_10000452C();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  v3[31] = v0;

  if (v0)
  {
    v9 = v3[14];

    return _swift_task_switch(sub_100173500, v9, 0);
  }

  else
  {
    v10 = v3[29];
    v12 = v3[25];
    v11 = v3[26];
    v13 = v3[22];
    v14 = v3[19];

    sub_100002E08();

    return v15();
  }
}

uint64_t sub_100173500()
{
  v50 = v0;
  v1 = v0[29];
  v2 = v0[14];
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  v5 = *(v4 + 72);
  sub_10000A1F0();
  *(swift_allocObject() + 16) = xmmword_1002329D0;
  v6 = type metadata accessor for TSDataSyncConfigAccessActor();
  v0[2] = v2;
  v0[5] = v6;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = v0[31];
  v10 = v0[28];
  v43 = v0[27];
  v44 = v0[26];
  v11 = v0[21];
  v45 = v0[20];
  v47 = v0[22];
  v41 = v0[29];
  v42 = v0[15];
  v40 = v0[14];
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v0 + 2);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v12 = v0[10];
  v13 = v0[11];
  v0[9] = v13;
  v14 = sub_100007914(v0 + 6);
  (*(*(v13 - 8) + 16))(v14, v12, v13);
  static LogInterpolation.sensitive(_:)();
  sub_100004E24((v0 + 6), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  (*(v10 + 8))(v41, v43);
  v15 = *(v42 + 176);
  v16 = *(v42 + 184);
  v17 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_metrics;
  static Date.now.getter();
  (*(v11 + 104))(v47, enum case for FlagKeys.TSDataSyncMetricsErrorEnhancements(_:), v45);
  v18 = FlagKeys.isEnabled.getter();
  (*(v11 + 8))(v47, v45);
  if (v18)
  {
    v19 = v0[25];
    static Date.now.getter();
    if (v16)
    {
      v20 = (v40 + v17);
      v21 = v0[31];
      v23 = v0[24];
      v22 = v0[25];
      v25 = v0[18];
      v24 = v0[19];
      v26 = v0[16];
      v46 = v0[17];
      v48 = v0[23];
      sub_10011DE50();
      v49[3] = &type metadata for String;
      v49[0] = 0xD000000000000011;
      v49[1] = 0x8000000100274DF0;
      sub_100006F54();
      sub_1001A8ED8(v49);
      static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

      v27 = v20[4];
      sub_10000C4FC(v20, v20[3]);
      dispatch thunk of MetricsQueue.enqueue(event:)();
      (*(v25 + 8))(v24, v46);
      v28 = *(v23 + 8);
      v28(v22, v48);
    }

    else
    {
      v28 = *(v0[24] + 8);
      v28(v0[25], v0[23]);
    }
  }

  else
  {
    v28 = *(v0[24] + 8);
  }

  v29 = v0[31];
  v30 = v0[14];
  v28(v0[26], v0[23]);
  v31 = sub_10000DC3C(OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_transactionStore);
  v32(v31);

  v33 = v0[29];
  v34 = v0[25];
  v35 = v0[26];
  v36 = v0[22];
  v37 = v0[19];

  sub_100002E08();

  return v38();
}

uint64_t sub_100173978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Date();
  v4[6] = v5;
  sub_100003B78(v5);
  v4[7] = v6;
  v8 = *(v7 + 64);
  v4[8] = sub_100003FA8();
  v9 = sub_100099DF4(&qword_1002DF3A8, &qword_10023F1F0);
  sub_1000030B8(v9);
  v11 = *(v10 + 64);
  v4[9] = sub_100003FA8();
  v12 = swift_task_alloc();
  v4[10] = v12;
  *v12 = v4;
  v12[1] = sub_100173AB8;

  return sub_100173ED4();
}

uint64_t sub_100173AB8()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *(v1 + 80);
  v3 = *(v1 + 40);
  v4 = *v0;
  sub_100004504();
  *v5 = v4;

  v6 = sub_10000AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100173BB0()
{
  sub_100004194();
  v1 = v0[8];
  static Date.now.getter();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_100173C50;
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return sub_1001748C8();
}

uint64_t sub_100173C50()
{
  v2 = *v1;
  sub_10000452C();
  *v4 = v3;
  v5 = v2[11];
  v6 = v2[8];
  v7 = v2[7];
  v8 = v2[6];
  *v4 = *v1;
  *(v3 + 96) = v0;

  (*(v7 + 8))(v6, v8);
  v9 = v2[5];
  if (v0)
  {
    v10 = sub_100173E54;
  }

  else
  {
    v10 = sub_100173DD4;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100173DD4()
{
  sub_100004194();
  v1 = *(v0 + 64);
  sub_100004E24(*(v0 + 72), &qword_1002DF3A8, &qword_10023F1F0);

  sub_100002E08();

  return v2();
}

uint64_t sub_100173E54()
{
  sub_100004194();
  v1 = v0[8];
  sub_100004E24(v0[9], &qword_1002DF3A8, &qword_10023F1F0);

  sub_100002E08();
  v3 = v0[12];

  return v2();
}

uint64_t sub_100173ED4()
{
  sub_100004194();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v1[21] = v5;
  v6 = type metadata accessor for MetricsEvent();
  v1[26] = v6;
  sub_100003B78(v6);
  v1[27] = v7;
  v9 = *(v8 + 64);
  v1[28] = sub_100003FA8();
  v10 = type metadata accessor for Date();
  v1[29] = v10;
  sub_100003B78(v10);
  v1[30] = v11;
  v13 = *(v12 + 64);
  v1[31] = sub_100003FA8();
  v14 = type metadata accessor for TSDataSyncDeviceState(0);
  v1[32] = v14;
  sub_1000030B8(v14);
  v16 = *(v15 + 64);
  v1[33] = sub_100003FA8();
  v17 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v17);
  v19 = *(v18 + 64);
  v1[34] = sub_100003FA8();
  v20 = type metadata accessor for Log();
  v1[35] = v20;
  sub_100003B78(v20);
  v1[36] = v21;
  v23 = *(v22 + 64) + 15;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v24 = sub_10000AA8C();

  return _swift_task_switch(v24, v25, v26);
}

uint64_t sub_100174070()
{
  v54 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 200);
  static Log.tsDataSync.getter();
  *(v0 + 312) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  *(v0 + 320) = *(v4 + 72);
  *(v0 + 360) = *(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v6 = type metadata accessor for TSDataSyncConfigAccessActor();
  *(v0 + 16) = v2;
  *(v0 + 328) = v6;
  *(v0 + 40) = v6;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = *(v0 + 288);
  v44 = *(v0 + 304);
  v45 = *(v0 + 280);
  v10 = *(v0 + 272);
  v47 = *(v0 + 264);
  v48 = *(v0 + 248);
  v46 = *(v0 + 200);
  v12 = *(v0 + 176);
  v11 = *(v0 + 184);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 16));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100002860();
  v13._countAndFlagsBits = 0xD000000000000011;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  *(v0 + 72) = type metadata accessor for TSDataSyncConfigServerRequest(0);
  sub_100007914((v0 + 48));
  sub_1000032B4();
  sub_1001771AC(v12, v14);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(v0 + 48, &unk_1002DFC10, &qword_10022E6D0);
  v15._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v16 = *(v9 + 8);
  *(v0 + 336) = v16;
  *(v0 + 344) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v44, v45);
  v18 = *(v11 + 176);
  v17 = *(v11 + 184);
  v19 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_100008158();
  sub_1001771AC(v46 + v19, v47);
  v20 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_metrics;
  static Date.now.getter();
  if (v17)
  {
    v21 = (v46 + v20);
    v22 = *(v0 + 264);
    v23 = *(v0 + 248);
    v24 = *(v0 + 192);
    sub_10011DE50();
    v25 = *(v22 + 16);
    if (v25)
    {
      v26 = *(*(v0 + 264) + 8);
      v53 = &type metadata for String;
      v52[0] = v26;
      v52[1] = v25;

      sub_1001A8ED8(v52);
    }

    v27 = *(v0 + 240);
    v28 = *(v0 + 224);
    v49 = *(v0 + 232);
    v50 = *(v0 + 248);
    v30 = *(v0 + 208);
    v29 = *(v0 + 216);
    v31 = *(*(v0 + 264) + *(*(v0 + 256) + 40));
    v53 = &type metadata for UInt64;
    v52[0] = v31;
    sub_1001A8ED8(v52);
    static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

    v32 = v21[4];
    sub_10000C4FC(v21, v21[3]);
    dispatch thunk of MetricsQueue.enqueue(event:)();
    (*(v29 + 8))(v28, v30);
    (*(v27 + 8))(v50, v49);
  }

  else
  {
    v33 = *(v0 + 264);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  }

  sub_100177204();
  v34 = *(v0 + 200);
  v36 = *(v34 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_requester);
  v35 = *(v34 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_requester + 8);
  v37 = *(v34 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_bag);
  v51 = (*(v35 + 8) + **(v35 + 8));
  v38 = *(*(v35 + 8) + 4);
  v39 = swift_task_alloc();
  *(v0 + 352) = v39;
  *v39 = v0;
  v39[1] = sub_1001745A0;
  v40 = *(v0 + 176);
  v41 = *(v0 + 184);
  v42 = *(v0 + 168);

  return v51(v42, v40, v41, v37, v36, v35);
}

uint64_t sub_1001745A0()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *(v1 + 352);
  v3 = *(v1 + 200);
  v4 = *v0;
  sub_100004504();
  *v5 = v4;

  v6 = sub_10000AA8C();

  return _swift_task_switch(v6, v7, v8);
}

void sub_100174698()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 360);
  v4 = *(v0 + 312);
  v5 = *(v0 + 296);
  v6 = *(v0 + 200);
  static Log.tsDataSync.getter();
  v7 = swift_allocObject();
  *(v0 + 80) = v6;
  *(v7 + 16) = xmmword_1002329D0;
  *(v0 + 104) = v1;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v19 = *(v0 + 336);
  v20 = *(v0 + 344);
  v10 = *(v0 + 320);
  v11 = *(v0 + 296);
  v18 = *(v0 + 304);
  v12 = *(v0 + 280);
  v21 = *(v0 + 272);
  v22 = *(v0 + 264);
  v23 = *(v0 + 248);
  v24 = *(v0 + 224);
  v13 = *(v0 + 168);
  v14 = v7 + ((*(v0 + 360) + 32) & ~*(v0 + 360));
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 80));
  LogInterpolation.init(stringLiteral:)();
  *(v0 + 136) = sub_100099DF4(&qword_1002DF3A8, &qword_10023F1F0);
  v15 = sub_100007914((v0 + 112));
  sub_1000C68A8(v13, v15, &qword_1002DF3A8, &qword_10023F1F0);
  static LogInterpolation.sensitive(_:)();
  sub_100004E24(v0 + 112, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v19(v11, v12);

  sub_100002E08();
  sub_100008A70();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1001748C8()
{
  sub_100004194();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v7 = type metadata accessor for MetricsEvent();
  v1[11] = v7;
  sub_100003B78(v7);
  v1[12] = v8;
  v10 = *(v9 + 64);
  v1[13] = sub_100003FA8();
  v11 = type metadata accessor for Date();
  v1[14] = v11;
  sub_100003B78(v11);
  v1[15] = v12;
  v14 = *(v13 + 64);
  v1[16] = sub_100003FA8();
  v15 = type metadata accessor for TSDataSyncConfigServerResponse(0);
  sub_1000030B8(v15);
  v17 = *(v16 + 64);
  v1[17] = sub_100003FA8();
  v18 = sub_100099DF4(&qword_1002DF3A8, &qword_10023F1F0);
  v1[18] = v18;
  sub_1000030B8(v18);
  v20 = *(v19 + 64);
  v1[19] = sub_100003FA8();
  v21 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);
  sub_1000030B8(v21);
  v23 = *(v22 + 64);
  v1[20] = sub_100003FA8();
  v24 = type metadata accessor for TSDataSyncConfigServerRequest(0);
  sub_1000030B8(v24);
  v26 = *(v25 + 64);
  v1[21] = sub_100003FA8();
  v27 = type metadata accessor for AccountIdentity();
  v1[22] = v27;
  sub_100003B78(v27);
  v1[23] = v28;
  v30 = *(v29 + 64);
  v1[24] = sub_100003FA8();
  v31 = type metadata accessor for TSDataSyncDeviceState(0);
  sub_1000030B8(v31);
  v33 = *(v32 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v34 = sub_10000AA8C();

  return _swift_task_switch(v34, v35, v36);
}

uint64_t sub_100174AF4()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v45 = *(v0 + 176);
  v46 = *(v0 + 192);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v47 = *(v0 + 144);
  v6 = *(v0 + 80);
  v7 = *(v0 + 48);
  v44 = *(v0 + 40);
  v8 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_100008158();
  v43 = v6;
  sub_1001771AC(v6 + v8, v1);
  sub_1000032B4();
  sub_1001771AC(v7, v3);
  sub_10017710C(v3, v5);
  (*(v2 + 32))(v46, v5, v45);
  sub_1000C68A8(v44, v4, &qword_1002DF3A8, &qword_10023F1F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(v0 + 232);
  v11 = *(v0 + 224);
  if (EnumCaseMultiPayload == 1)
  {
    sub_1000AF1EC(**(v0 + 152), *(v0 + 224), *(v0 + 192), *(v0 + 72), *(v0 + 232));
  }

  else
  {
    v12 = *(v0 + 136);
    v13 = *(v0 + 72);
    sub_10017710C(*(v0 + 152), v12);
    sub_1000B0098(v12, v11, v13, v10);
    sub_10000B0C8();
    sub_100177204();
  }

  v14 = *(v0 + 224);
  v15 = *(v0 + 232);
  v16 = *(v0 + 216);
  v17 = *(v0 + 80);
  v19 = *(v0 + 56);
  v18 = *(v0 + 64);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  sub_100004CB4();
  sub_100177204();
  sub_100175328(v15, v16);
  sub_100175464(v16, 0x7220726576726573, 0xEF65736E6F707365, v19, v18);
  v20 = *(v0 + 208);
  v21 = *(v0 + 128);
  v22 = *(v0 + 56);
  v24 = *(v22 + 176);
  v23 = *(v22 + 184);
  sub_100008158();
  sub_1001771AC(v43 + v8, v25);
  v26 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_metrics;
  static Date.now.getter();
  if (v23)
  {
    v28 = *(v0 + 96);
    v27 = *(v0 + 104);
    v29 = *(v0 + 88);
    v30 = (*(v0 + 80) + v26);
    sub_10011E324(v24, v23, *(v0 + 208), *(v0 + 64), *(v0 + 128));
    v31 = v30[4];
    sub_10000C4FC(v30, v30[3]);
    dispatch thunk of MetricsQueue.enqueue(event:)();
    (*(v28 + 8))(v27, v29);
  }

  v32 = *(v0 + 200);
  v33 = *(v0 + 208);
  v34 = *(v0 + 80);
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  sub_100004CB4();
  sub_100177204();
  v35 = sub_10000DC3C(OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_transactionStore);
  v36(v35);
  v37 = sub_10000C4FC((v34 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_coordinator), *(v34 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_coordinator + 24));
  sub_100008158();
  sub_1001771AC(v43 + v8, v32);
  v38 = *v37;
  v39 = swift_task_alloc();
  *(v0 + 240) = v39;
  *v39 = v0;
  v39[1] = sub_100174F7C;
  v40 = *(v0 + 200);
  sub_100008A70();

  return sub_100189088();
}

uint64_t sub_100174F7C()
{
  v2 = *v1;
  sub_10000452C();
  *v4 = v3;
  v5 = v2[30];
  *v4 = *v1;
  *(v3 + 248) = v0;

  v6 = v2[25];
  v7 = v2[10];
  sub_100177204();
  if (v0)
  {
    v8 = sub_1001751F8;
  }

  else
  {
    v8 = sub_1001750D4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1001750D4()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[20];
  v7 = v0[21];
  v11 = v0[19];
  v12 = v0[17];
  v13 = v0[16];
  v14 = v0[13];
  sub_100177204();
  sub_1000050CC();
  sub_100177204();

  sub_100002E08();

  return v9();
}

uint64_t sub_1001751F8()
{
  v1 = v0[27];
  sub_100177204();
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[20];
  v9 = v0[21];
  v12 = v0[19];
  v13 = v0[17];
  v14 = v0[16];
  v15 = v0[13];
  v16 = v0[31];
  sub_100177204();

  sub_100002E08();

  return v10();
}

void sub_100175328(char *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for TSDataSyncDeviceState(0);
  v6 = *&a1[*(v5 + 44)];
  if (*&a1[*(v5 + 52)] != v6 && v6 != 0.0)
  {
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v6 > -1.0)
    {
      if (v6 < 1.84467441e19)
      {
        v7 = v2 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_generator;
        swift_beginAccess();
        v8 = *(v7 + 32);
        sub_100008494(v7, *(v7 + 24));
        sub_100176EEC();
        sub_100176F40();
        RandomNumberGenerator.next<A>(upperBound:)();
        swift_endAccess();
        sub_1000B1778(a1, a2, v9);
        return;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  sub_100008158();
  sub_1001771AC(a1, a2);
}

uint64_t sub_100175464(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v103 = a5;
  v108 = a4;
  v111 = a2;
  v112 = a3;
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  v9 = sub_1000030B8(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_1000030E4();
  v113 = v12;
  sub_100013FAC();
  v13 = type metadata accessor for Log();
  v14 = sub_100003724(v13);
  v114 = v15;
  v115 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_1000037D4();
  v116 = v18;
  __chkstk_darwin(v19);
  sub_10000D478();
  v110 = v20;
  sub_100013FAC();
  v104 = type metadata accessor for MetricsEvent();
  v21 = sub_100003724(v104);
  v102 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  sub_1000030E4();
  v101 = v25;
  sub_100013FAC();
  v26 = type metadata accessor for FlagKeys();
  v106 = sub_100003724(v26);
  v107 = v27;
  v29 = *(v28 + 64);
  __chkstk_darwin(v106);
  sub_1000030E4();
  v105 = v30;
  sub_100013FAC();
  v31 = type metadata accessor for Date();
  v32 = sub_100003724(v31);
  v109 = v33;
  v35 = *(v34 + 64);
  __chkstk_darwin(v32);
  sub_10000308C();
  sub_10000DE68();
  __chkstk_darwin(v36);
  v38 = v95 - v37;
  v39 = type metadata accessor for TSDataSyncDeviceState(0);
  v40 = sub_10000307C(v39);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  sub_10000306C();
  v45 = (v44 - v43);
  v46 = v5;
  v47 = v5 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_store;
  v48 = *(v5 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_store);
  v49 = *(v47 + 8);
  v50 = v117;
  result = (*(v49 + 16))(a1, v48, v49);
  if (!v50)
  {
    v97 = v6;
    v99 = v38;
    v98 = v31;
    v100 = a1;
    v117 = v46;
    (*(v49 + 8))(v48, v49);
    v95[2] = 0;
    v52 = sub_1000B4B58(v45, v100);
    v53 = &unk_100232000;
    v54 = v117;
    v96 = v45;
    if (!v52)
    {
      v55 = *(v108 + 184);
      v95[0] = *(v108 + 176);
      v95[1] = v55;
      sub_100176D10();
      sub_100004950();
      v108 = swift_allocError();
      *v56 = 2;
      *(v56 + 8) = 1;
      v57 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_metrics;
      v58 = v99;
      static Date.now.getter();
      v59 = v106;
      v60 = v107;
      v61 = v105;
      (*(v107 + 104))(v105, enum case for FlagKeys.TSDataSyncMetricsErrorEnhancements(_:), v106);
      v62 = FlagKeys.isEnabled.getter();
      (*(v60 + 8))(v61, v59);
      if (v62)
      {
        v63 = v97;
        static Date.now.getter();
        sub_100002AC4();
        if (v64)
        {
          v65 = (v54 + v57);
          sub_10011DE50();
          v121 = v66;
          v120 = &type metadata for String;
          v118 = 0xD000000000000014;
          v119 = 0x8000000100274D30;
          sub_100006F54();
          sub_1001A8ED8(&v118);
          v67 = v101;
          static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

          v68 = v65[4];
          sub_10000C4FC(v65, v65[3]);
          dispatch thunk of MetricsQueue.enqueue(event:)();
          (*(v102 + 8))(v67, v104);
          v69 = *(v109 + 8);
          v70 = v98;
          v69(v97, v98);
          v71 = v99;
        }

        else
        {
          v69 = *(v109 + 8);
          v70 = v98;
          v69(v63, v98);
          v71 = v58;
        }

        v69(v71, v70);
        v73 = v114;
        v72 = v115;
      }

      else
      {
        (*(v109 + 8))(v58, v98);
        v73 = v114;
        v72 = v115;
      }

      static Log.tsDataSync.getter();
      sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
      sub_100002834();
      v74 = type metadata accessor for LogInterpolation();
      sub_100003B78(v74);
      v76 = *(v75 + 72);
      sub_10000A1F0();
      *(sub_1001774F8() + 16) = xmmword_1002329D0;
      v120 = type metadata accessor for TSDataSyncConfigAccessActor();
      v118 = v54;

      v77 = AMSLogKey();
      if (v77)
      {
        v78 = v77;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10000F414();
      }

      else
      {
        sub_100013E48();
      }

      sub_100177538();

      sub_100004118(&v118);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v79._countAndFlagsBits = 0xD00000000000001DLL;
      v79._object = 0x8000000100274D50;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v79);
      v120 = &type metadata for String;
      v118 = v111;
      v119 = v112;

      LogInterpolation.StringInterpolation.appendInterpolation(_:)();
      sub_1001774CC();
      v80._countAndFlagsBits = 58;
      v80._object = 0xE100000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v80);
      LogInterpolation.init(stringInterpolation:)();
      v120 = v39;
      sub_100007914(&v118);
      sub_100008158();
      sub_1001771AC(v100, v81);
      static LogInterpolation.sensitive(_:)();
      sub_1001774CC();
      v82 = v110;
      Log.fault(_:)();

      (*(v73 + 8))(v82, v72);
      v54 = v117;
      sub_1001765AC();
      v45 = v96;
      v53 = &unk_100232000;
    }

    v83 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_state;
    swift_beginAccess();
    sub_100176E88(v45, v54 + v83);
    swift_endAccess();
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100002834();
    v84 = type metadata accessor for LogInterpolation();
    sub_100003B78(v84);
    v86 = *(v85 + 72);
    sub_10000A1F0();
    *(sub_1001774F8() + 16) = v53[157];
    v120 = type metadata accessor for TSDataSyncConfigAccessActor();
    v118 = v54;

    v87 = AMSLogKey();
    if (v87)
    {
      v88 = v87;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000F414();
    }

    else
    {
      sub_100013E48();
    }

    v90 = v114;
    v89 = v115;
    sub_100177538();

    sub_100004118(&v118);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v91._countAndFlagsBits = 0x61206465726F7453;
    v91._object = 0xED00002072657466;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v91);
    v120 = &type metadata for String;
    v118 = v111;
    v119 = v112;

    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_1001774CC();
    v92._countAndFlagsBits = 58;
    v92._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v92);
    LogInterpolation.init(stringInterpolation:)();
    v120 = v39;
    sub_100007914(&v118);
    sub_100008158();
    sub_1001771AC(v96, v93);
    static LogInterpolation.sensitive(_:)();
    sub_1001774CC();
    v94 = v116;
    Log.default(_:)();

    (*(v90 + 8))(v94, v89);
    sub_100004CB4();
    return sub_100177204();
  }

  return result;
}