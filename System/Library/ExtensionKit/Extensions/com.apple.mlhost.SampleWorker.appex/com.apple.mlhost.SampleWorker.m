uint64_t sub_1000011E0()
{
  v0 = sub_10000B220();
  sub_100009F2C(v0, qword_100015050);
  sub_100009B98(v0, qword_100015050);
  return sub_10000B210();
}

uint64_t sub_1000012A8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 0xD000000000000011;
    if (v1 != 1)
    {
      v4 = 0xD000000000000014;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 0x726150776F6C6C61;
    }
  }

  else
  {
    v2 = 0xD000000000000016;
    if (v1 == 5)
    {
      v2 = 0xD000000000000013;
    }

    if (*v0 <= 4u)
    {
      return 0xD000000000000011;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1000013A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100009628(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000013E0(uint64_t a1)
{
  v2 = sub_100009B44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000141C(uint64_t a1)
{
  v2 = sub_100009B44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001458(void *a1, uint64_t a2, uint64_t a3)
{
  v12[1] = a3;
  v5 = sub_100008A34(&qword_1000140F8, &qword_10000BB18);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = v12 - v8;
  v10 = a1[4];
  sub_100009B00(a1, a1[3]);
  sub_100009B44();
  sub_10000B560();
  v19 = 0;
  sub_10000B410();
  if (v3)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v18 = 1;
  sub_10000B420();
  v17 = 2;
  sub_10000B410();
  v16 = 3;
  sub_10000B410();
  v15 = 4;
  sub_10000B410();
  v14 = 5;
  sub_10000B410();
  v13 = 6;
  sub_10000B410();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10000168C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100009878(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 17) = BYTE1(v6);
    *(a2 + 18) = BYTE2(v6);
    *(a2 + 19) = BYTE3(v6);
    *(a2 + 20) = BYTE4(v6);
    *(a2 + 21) = BYTE5(v6);
  }

  return result;
}

uint64_t sub_1000016F4(void *a1)
{
  v2 = v1[17];
  v3 = *(v1 + 18);
  v5 = v1[16] & 1;
  return sub_100001458(a1, *v1, *(v1 + 1));
}

uint64_t sub_100001740(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7075727265746E69;
  }

  else
  {
    v4 = 0x656C6C65636E6163;
  }

  if (v3)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v5 = 0xEB00000000646574;
  }

  if (*a2)
  {
    v6 = 0x7075727265746E69;
  }

  else
  {
    v6 = 0x656C6C65636E6163;
  }

  if (*a2)
  {
    v7 = 0xEB00000000646574;
  }

  else
  {
    v7 = 0xE900000000000064;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10000B470();
  }

  return v9 & 1;
}

uint64_t sub_1000017F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1684107116;
    }

    else
    {
      v4 = 0x7472617473;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x737365636F7270;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x64616F6C7075;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x64656873696E6966;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1684107116;
    }

    else
    {
      v9 = 0x7472617473;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x64616F6C7075;
    if (a2 != 3)
    {
      v6 = 0x64656873696E6966;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x737365636F7270;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_10000B470();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

Swift::Int sub_100001964()
{
  v1 = *v0;
  sub_10000B4F0();
  sub_10000B290();

  return sub_10000B510();
}

uint64_t sub_1000019F4()
{
  *v0;
  sub_10000B290();
}

Swift::Int sub_100001A70()
{
  v1 = *v0;
  sub_10000B4F0();
  sub_10000B290();

  return sub_10000B510();
}

uint64_t sub_100001AFC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100010810;
  v8._object = v3;
  v5 = sub_10000B3C0(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100001B5C(uint64_t *a1@<X8>)
{
  v2 = 0x656C6C65636E6163;
  if (*v1)
  {
    v2 = 0x7075727265746E69;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xEB00000000646574;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100001BB8(void *a1)
{
  v3 = v1;
  v5 = sub_100008A34(&unk_1000141C0, &qword_10000BF40);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_100009B00(a1, a1[3]);
  sub_10000AC18();
  sub_10000B560();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_10000B430();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v17[14] = 1;
  sub_10000B430();
  v16 = v3[4];
  v17[13] = 2;
  sub_10000B440();
  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_100001D64()
{
  v1 = *v0;
  sub_10000B4F0();
  sub_10000B290();

  return sub_10000B510();
}

uint64_t sub_100001E38()
{
  *v0;
  *v0;
  *v0;
  sub_10000B290();
}

Swift::Int sub_100001EF8()
{
  v1 = *v0;
  sub_10000B4F0();
  sub_10000B290();

  return sub_10000B510();
}

uint64_t sub_100001FC8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000A85C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100001FF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7472617473;
  v5 = 0xE700000000000000;
  v6 = 0x737365636F7270;
  v7 = 0xE600000000000000;
  v8 = 0x64616F6C7075;
  if (v2 != 3)
  {
    v8 = 0x64656873696E6966;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1684107116;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int sub_100002098()
{
  v1 = *v0;
  sub_10000B4F0();
  sub_10000B500(v1);
  return sub_10000B510();
}

Swift::Int sub_1000020E0()
{
  v1 = *v0;
  sub_10000B4F0();
  sub_10000B500(v1);
  return sub_10000B510();
}

uint64_t sub_100002124()
{
  v1 = 0x64496B736174;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74616C6572726F63;
  }
}

uint64_t sub_100002188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000A8A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000021BC(uint64_t a1)
{
  v2 = sub_10000AC18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000021F8(uint64_t a1)
{
  v2 = sub_10000AC18();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100002234@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000A9C4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_100002294()
{
  sub_10000B350(47);
  v3._countAndFlagsBits = 0xD000000000000013;
  v3._object = 0x800000010000BAC0;
  sub_10000B2A0(v3);
  v4._object = 0x800000010000C080;
  v4._countAndFlagsBits = 0xD000000000000010;
  sub_10000B2A0(v4);
  sub_10000B2A0(*v0);
  v5._countAndFlagsBits = 0x64496B736174202CLL;
  v5._object = 0xEA0000000000203ALL;
  sub_10000B2A0(v5);
  sub_10000B2A0(v0[1]);
  v6._countAndFlagsBits = 0x697461727564202CLL;
  v6._object = 0xEC000000203A6E6FLL;
  sub_10000B2A0(v6);
  countAndFlagsBits = v0[2]._countAndFlagsBits;
  sub_10000B300();
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  sub_10000B2A0(v7);
  return 0;
}

uint64_t sub_1000023AC(uint64_t a1)
{
  v2[45] = a1;
  v2[46] = v1;
  v3 = sub_10000B370();
  v2[47] = v3;
  v4 = *(v3 - 8);
  v2[48] = v4;
  v5 = *(v4 + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v6 = sub_10000B380();
  v2[51] = v6;
  v7 = *(v6 - 8);
  v2[52] = v7;
  v8 = *(v7 + 64) + 15;
  v2[53] = swift_task_alloc();
  v9 = sub_10000AFD0();
  v2[54] = v9;
  v10 = *(v9 - 8);
  v2[55] = v10;
  v11 = *(v10 + 64) + 15;
  v2[56] = swift_task_alloc();
  v12 = sub_10000AFF0();
  v2[57] = v12;
  v13 = *(v12 - 8);
  v2[58] = v13;
  v14 = *(v13 + 64) + 15;
  v2[59] = swift_task_alloc();
  v15 = sub_10000B280();
  v2[60] = v15;
  v16 = *(v15 - 8);
  v2[61] = v16;
  v17 = *(v16 + 64) + 15;
  v2[62] = swift_task_alloc();
  v18 = sub_10000B170();
  v2[63] = v18;
  v19 = *(v18 - 8);
  v2[64] = v19;
  v20 = *(v19 + 64) + 15;
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v21 = sub_10000AF60();
  v2[70] = v21;
  v22 = *(v21 - 8);
  v2[71] = v22;
  v23 = *(v22 + 64) + 15;
  v2[72] = swift_task_alloc();
  v24 = *(*(sub_100008A34(&qword_100014100, &qword_10000BB28) - 8) + 64) + 15;
  v2[73] = swift_task_alloc();
  v25 = sub_10000B1F0();
  v2[74] = v25;
  v26 = *(v25 - 8);
  v2[75] = v26;
  v27 = *(v26 + 64) + 15;
  v2[76] = swift_task_alloc();
  v28 = sub_10000B1A0();
  v2[77] = v28;
  v29 = *(v28 - 8);
  v2[78] = v29;
  v30 = *(v29 + 64) + 15;
  v2[79] = swift_task_alloc();
  v31 = *(*(sub_100008A34(&qword_100014108, &qword_10000BB30) - 8) + 64) + 15;
  v2[80] = swift_task_alloc();
  v32 = sub_100008A34(&qword_100014028, &unk_10000B930);
  v2[81] = v32;
  v33 = *(v32 - 8);
  v2[82] = v33;
  v34 = *(v33 + 64) + 15;
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v35 = sub_10000B020();
  v2[85] = v35;
  v36 = *(v35 - 8);
  v2[86] = v36;
  v37 = *(v36 + 64) + 15;
  v2[87] = swift_task_alloc();

  return _swift_task_switch(sub_1000028F4, 0, 0);
}

uint64_t sub_1000028F4()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  sub_10000B010();
  *(v0 + 704) = sub_10000B000();
  *(v0 + 712) = v4;
  (*(v2 + 8))(v1, v3);
  if (qword_1000141D0 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 360);
  v6 = sub_10000B220();
  *(v0 + 720) = sub_100009B98(v6, qword_100015050);
  v7 = v5;
  v8 = sub_10000B200();
  v9 = sub_10000B310();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 360);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v10;
    *v12 = v10;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v8, v9, "Context: %@", v11, 0xCu);
    sub_100009E70(v12, &qword_100014158, &qword_10000BB38);
  }

  v14 = *(v0 + 368);

  v15 = type metadata accessor for SampleWorker();
  *(v0 + 728) = v15;
  *(v0 + 736) = *(v14 + *(v15 + 20));
  *(v0 + 158) = 0;
  sub_10000B0B0();
  sub_100009E28(&qword_100014110, &type metadata accessor for LedgerClient);
  v16 = sub_10000B2E0();
  *(v0 + 744) = v16;
  *(v0 + 752) = v17;

  return _swift_task_switch(sub_100002B58, v16, v17);
}

uint64_t sub_100002B58()
{
  v1 = v0[92];
  v2 = v0[45];
  v0[95] = sub_100009BD0();
  sub_10000B090();
  v3 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v4 = swift_task_alloc();
  v0[96] = v4;
  v5 = sub_100009E28(&qword_1000140C8, type metadata accessor for SampleWorker);
  v6 = sub_100008C40();
  v7 = sub_100008C94();
  *v4 = v0;
  v4[1] = sub_100002CB4;
  v8 = v0[91];
  v9 = v0[80];
  v10 = v0[45];
  v11 = v0[46];

  return MLHostExtension.loadConfig<A>(context:)(v9, v10, v8, &type metadata for SampleWorkerConfig, v5, v6, v7);
}

uint64_t sub_100002CB4()
{
  v1 = *(*v0 + 768);
  v3 = *v0;

  return _swift_task_switch(sub_100002DDC, 0, 0);
}

uint64_t sub_100002DDC()
{
  v33 = v0;
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v1 + 48);
  v5 = v4(v3, 1, v2);
  v6 = *(v0 + 672);
  if (v5 == 1)
  {
    v7 = *(v1 + 16);
    v7(v6, *(v0 + 368), v2);
    if (v4(v3, 1, v2) != 1)
    {
      sub_100009E70(*(v0 + 640), &qword_100014108, &qword_10000BB30);
    }
  }

  else
  {
    (*(v1 + 32))(v6, v3, v2);
    v7 = *(v1 + 16);
  }

  v8 = *(v0 + 720);
  v7(*(v0 + 664), *(v0 + 672), *(v0 + 648));
  v9 = sub_10000B200();
  v10 = sub_10000B310();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 664);
  v13 = *(v0 + 656);
  v14 = *(v0 + 648);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v15 = 136315138;
    sub_10000A4FC(&qword_100014150, &qword_100014028, &unk_10000B930);
    v16 = sub_10000B450();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_100008FDC(v16, v18, &v32);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Configuration: %s", v15, 0xCu);
    sub_100009D20(v31);
  }

  else
  {

    v19 = *(v13 + 8);
    v19(v12, v14);
  }

  *(v0 + 776) = v19;
  v21 = *(v0 + 720);
  v22 = sub_10000B200();
  v23 = sub_10000B310();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    v25 = [objc_opt_self() sharedConnection];
    if (!v25)
    {
      __break(1u);
      return _swift_task_switch(v25, v26, v27);
    }

    v28 = v25;
    v29 = [v25 effectiveBoolValueForSetting:MCFeatureDiagnosticsSubmissionAllowed];

    *(v24 + 4) = v29 == 1;
    _os_log_impl(&_mh_execute_header, v22, v23, "D&U enabled: %{BOOL}d", v24, 8u);
  }

  *(v0 + 159) = 1;
  v27 = *(v0 + 752);
  v26 = *(v0 + 744);
  v25 = sub_100003180;

  return _swift_task_switch(v25, v26, v27);
}

uint64_t sub_100003180()
{
  v1 = v0[95];
  v2 = v0[92];
  v3 = v0[45];
  sub_10000B090();

  return _swift_task_switch(sub_100003228, 0, 0);
}

uint64_t sub_100003228()
{
  v102 = v0;
  v1 = *(v0 + 360);
  v2 = sub_10000B1B0();
  if (!v3)
  {
LABEL_9:
    if ((sub_10000B2F0() & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v4 = v2;
  v5 = v3;
  v6 = *(v0 + 720);
  v7 = sub_10000B200();
  v8 = sub_10000B310();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v101[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100008FDC(v4, v5, v101);
    _os_log_impl(&_mh_execute_header, v7, v8, "taskFolder available: %s", v9, 0xCu);
    sub_100009D20(v10);
  }

  v11 = [objc_opt_self() defaultManager];
  v12 = sub_10000B240();

  *(v0 + 352) = 0;
  v13 = [v11 contentsOfDirectoryAtPath:v12 error:v0 + 352];

  v14 = *(v0 + 352);
  if (!v13)
  {
    v25 = v14;
    sub_10000AF50();

    swift_willThrow();

    goto LABEL_9;
  }

  v15 = *(v0 + 720);
  sub_10000B2C0();
  v16 = v14;

  v17 = sub_10000B200();
  v18 = sub_10000B320();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v101[0] = v20;
    *v19 = 136315138;
    v21 = sub_10000B2D0();
    v23 = v22;

    v24 = sub_100008FDC(v21, v23, v101);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "taskFolder contents: %s", v19, 0xCu);
    sub_100009D20(v20);

    if ((sub_10000B2F0() & 1) == 0)
    {
LABEL_16:
      v57 = *(v0 + 672);
      v58 = *(v0 + 648);
      v59 = *(v0 + 624);
      v60 = *(v0 + 616);
      v61 = *(v0 + 608);
      v62 = *(v0 + 600);
      v63 = *(v0 + 592);
      v64 = *(v0 + 584);
      sub_10000B150();
      sub_10000B1E0();
      (*(v62 + 8))(v61, v63);
      if ((*(v59 + 48))(v64, 1, v60) == 1)
      {
        sub_100009E70(*(v0 + 584), &qword_100014100, &qword_10000BB28);
        *(v0 + 816) = 0;
        v65 = *(v0 + 672);
        v66 = *(v0 + 648);
        sub_10000B140();
        *(v0 + 207) = *(v0 + 154);
        sub_10000B140();
        *(v0 + 230) = *(v0 + 179);
        sub_10000B140();
        v67 = *(v0 + 201);
        if (v67 == 2 || (v67 & 1) == 0)
        {
          v85 = *(v0 + 672);
          v86 = *(v0 + 648);
          sub_10000B140();
          *(v0 + 231) = *(v0 + 228);
          v87 = sub_10000B140();
          *(v0 + 928) = *(v0 + 240);
          *(v0 + 254) = *(v0 + 248);
          sub_100009584(v87, 0.5, 2.0);
          *(v0 + 936) = v88;
          *(v0 + 182) = 2;
          v89 = *(v0 + 752);
          v90 = *(v0 + 744);

          return _swift_task_switch(sub_100004960, v90, v89);
        }

        else
        {
          v68 = *(v0 + 360);
          *(v0 + 824) = sub_10000B0D0();
          *(v0 + 832) = sub_10000B0C0();
          v69 = sub_10000B1D0();
          v71 = v70;
          *(v0 + 840) = v70;
          v72 = *(&_s20LighthouseBackground12MLHostClientC8dsGetKey5group3key14deleteOnAccess15encryptionGroup10Foundation4DataVSgSS_SSSbSSSgtYaAA0cD5ErrorOYKFTjTu + 1);
          v73 = _s20LighthouseBackground12MLHostClientC8dsGetKey5group3key14deleteOnAccess15encryptionGroup10Foundation4DataVSgSS_SSSbSSSgtYaAA0cD5ErrorOYKFTjTu;
          v74 = swift_task_alloc();
          *(v0 + 848) = v74;
          *v74 = v0;
          v74[1] = sub_1000040BC;
          v75 = *(v0 + 552);

          return ((&_s20LighthouseBackground12MLHostClientC8dsGetKey5group3key14deleteOnAccess15encryptionGroup10Foundation4DataVSgSS_SSSbSSSgtYaAA0cD5ErrorOYKFTjTu + v73))(0x6F57656C706D6153, 0xEC00000072656B72, v69, v71, 0, 0, 0, v75);
        }
      }

      else
      {
        (*(*(v0 + 624) + 32))(*(v0 + 632), *(v0 + 584), *(v0 + 616));
        sub_10000B080();
        v76 = sub_10000B190();
        v78 = v77;
        *(v0 + 784) = v77;
        v79 = sub_10000B180();
        v81 = v80;
        *(v0 + 792) = v80;
        v82 = async function pointer to static MLHostAsset.getRemoteAsset(context:assetType:assetSpecifier:)[1];
        v83 = swift_task_alloc();
        *(v0 + 800) = v83;
        *v83 = v0;
        v83[1] = sub_100003B64;
        v84 = *(v0 + 360);

        return static MLHostAsset.getRemoteAsset(context:assetType:assetSpecifier:)(v84, v76, v78, v79, v81);
      }
    }
  }

  else
  {

    if ((sub_10000B2F0() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_10:
  v26 = *(v0 + 720);
  v27 = *(v0 + 712);
  v28 = *(v0 + 360);

  v29 = v28;
  v30 = sub_10000B200();
  v31 = sub_10000B310();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v0 + 360);
    v33 = swift_slowAlloc();
    v101[0] = swift_slowAlloc();
    *v33 = 136315394;
    v34 = sub_10000B1C0();
    v36 = sub_100008FDC(v34, v35, v101);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    v37 = sub_10000B1D0();
    v39 = sub_100008FDC(v37, v38, v101);

    *(v33 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v30, v31, "TaskId: %s, TaskName: %s: asked to stop!", v33, 0x16u);
    swift_arrayDestroy();
  }

  v40 = *(v0 + 776);
  v41 = *(v0 + 672);
  v42 = *(v0 + 656);
  v43 = *(v0 + 648);
  v101[3] = &type metadata for SampleWorkerError;
  v101[4] = sub_100009C24();
  LOBYTE(v101[0]) = 0;
  v44 = objc_allocWithZone(sub_10000B100());
  v91 = sub_10000B0E0();
  v40(v41, v43);
  v45 = *(v0 + 696);
  v46 = *(v0 + 672);
  v47 = *(v0 + 664);
  v48 = *(v0 + 640);
  v49 = *(v0 + 632);
  v50 = *(v0 + 608);
  v51 = *(v0 + 584);
  v52 = *(v0 + 576);
  v53 = *(v0 + 552);
  v54 = *(v0 + 544);
  v92 = *(v0 + 536);
  v93 = *(v0 + 528);
  v94 = *(v0 + 520);
  v95 = *(v0 + 496);
  v96 = *(v0 + 472);
  v97 = *(v0 + 448);
  v98 = *(v0 + 424);
  v99 = *(v0 + 400);
  v100 = *(v0 + 392);

  v55 = *(v0 + 8);

  return v55(v91);
}

uint64_t sub_100003B64(uint64_t a1)
{
  v2 = *(*v1 + 800);
  v3 = *(*v1 + 792);
  v4 = *(*v1 + 784);
  v6 = *v1;
  *(*v1 + 808) = a1;

  return _swift_task_switch(sub_100003CD4, 0, 0);
}

uint64_t sub_100003CD4()
{
  v35 = v0;
  v1 = *(v0 + 808);
  (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));
  if (v1)
  {
    v2 = *(v0 + 808);
    v3 = *(v0 + 720);

    v4 = sub_10000B200();
    v5 = sub_10000B310();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 576);
      v7 = *(v0 + 568);
      v8 = *(v0 + 560);
      v9 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v9 = 136315138;
      sub_10000B070();
      sub_100009E28(&qword_100014148, &type metadata accessor for URL);
      v10 = sub_10000B450();
      v12 = v11;
      (*(v7 + 8))(v6, v8);
      v13 = sub_100008FDC(v10, v12, &v34);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "autoAsset available: %s", v9, 0xCu);
      sub_100009D20(v33);
    }

    else
    {
    }

    v14 = *(v0 + 808);
  }

  else
  {
    v14 = 0;
  }

  *(v0 + 816) = v14;
  v15 = *(v0 + 672);
  v16 = *(v0 + 648);
  sub_10000B140();
  *(v0 + 207) = *(v0 + 154);
  sub_10000B140();
  *(v0 + 230) = *(v0 + 179);
  sub_10000B140();
  v17 = *(v0 + 201);
  if (v17 == 2 || (v17 & 1) == 0)
  {
    v27 = *(v0 + 672);
    v28 = *(v0 + 648);
    sub_10000B140();
    *(v0 + 231) = *(v0 + 228);
    v29 = sub_10000B140();
    *(v0 + 928) = *(v0 + 240);
    *(v0 + 254) = *(v0 + 248);
    sub_100009584(v29, 0.5, 2.0);
    *(v0 + 936) = v30;
    *(v0 + 182) = 2;
    v31 = *(v0 + 752);
    v32 = *(v0 + 744);

    return _swift_task_switch(sub_100004960, v32, v31);
  }

  else
  {
    v18 = *(v0 + 360);
    *(v0 + 824) = sub_10000B0D0();
    *(v0 + 832) = sub_10000B0C0();
    v19 = sub_10000B1D0();
    v21 = v20;
    *(v0 + 840) = v20;
    v22 = *(&_s20LighthouseBackground12MLHostClientC8dsGetKey5group3key14deleteOnAccess15encryptionGroup10Foundation4DataVSgSS_SSSbSSSgtYaAA0cD5ErrorOYKFTjTu + 1);
    v23 = _s20LighthouseBackground12MLHostClientC8dsGetKey5group3key14deleteOnAccess15encryptionGroup10Foundation4DataVSgSS_SSSbSSSgtYaAA0cD5ErrorOYKFTjTu;
    v24 = swift_task_alloc();
    *(v0 + 848) = v24;
    *v24 = v0;
    v24[1] = sub_1000040BC;
    v25 = *(v0 + 552);

    return ((&_s20LighthouseBackground12MLHostClientC8dsGetKey5group3key14deleteOnAccess15encryptionGroup10Foundation4DataVSgSS_SSSbSSSgtYaAA0cD5ErrorOYKFTjTu + v23))(0x6F57656C706D6153, 0xEC00000072656B72, v19, v21, 0, 0, 0, v25);
  }
}

uint64_t sub_1000040BC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 848);
  v7 = *v3;
  v5[107] = a1;
  v5[108] = a2;

  v8 = v4[105];
  v9 = v4[104];
  if (v2)
  {
    (*(v5[64] + 8))(v5[69], v5[63]);

    v10 = sub_100006F64;
  }

  else
  {

    v10 = sub_100004278;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100004278()
{
  v46 = v0;
  v1 = *(v0 + 864);
  if (v1 >> 60 != 15)
  {
    v2 = *(v0 + 496);
    sub_100009DD4(*(v0 + 856), *(v0 + 864));
    sub_10000B270();
    v3 = sub_10000B260();
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      v7 = *(v0 + 720);
      v8 = sub_10000B200();
      v9 = sub_10000B310();
      v10 = os_log_type_enabled(v8, v9);
      v11 = *(v0 + 864);
      v12 = *(v0 + 856);
      if (v10)
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v45 = v14;
        *v13 = 136315138;
        v15 = sub_100008FDC(v6, v5, &v45);

        *(v13 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v8, v9, "dictionaryService existing value: %s", v13, 0xCu);
        sub_100009D20(v14);

        sub_100009D6C(v12, v11);
      }

      else
      {
        sub_100009D6C(*(v0 + 856), *(v0 + 864));
      }
    }

    else
    {
      sub_100009D6C(*(v0 + 856), *(v0 + 864));
    }

    v1 = *(v0 + 864);
  }

  v16 = *(v0 + 856);
  *(v0 + 880) = v1;
  v41 = v1;
  v42 = v16;
  *(v0 + 872) = v16;
  v17 = *(v0 + 488);
  v18 = *(v0 + 496);
  v19 = *(v0 + 472);
  v20 = *(v0 + 464);
  v43 = *(v0 + 456);
  v44 = *(v0 + 480);
  v21 = *(v0 + 440);
  v22 = *(v0 + 448);
  v23 = *(v0 + 432);
  sub_10000AFE0();
  sub_100007C1C(v22);
  sub_10000AF70();
  (*(v21 + 8))(v22, v23);
  (*(v20 + 8))(v19, v43);
  sub_10000B270();
  v24 = sub_10000B250();
  v26 = v25;

  *(v0 + 888) = v24;
  *(v0 + 896) = v26;
  (*(v17 + 8))(v18, v44);
  if (v26 >> 60 != 15)
  {
    v33 = *(v0 + 824);
    v34 = *(v0 + 360);
    *(v0 + 904) = sub_10000B0C0();
    sub_10000B1D0();
    *(v0 + 912) = v35;
    v36 = *(&_s20LighthouseBackground12MLHostClientC8dsSetKey5group3key5value10timeToLive15encryptionGroupSbSS_SS10Foundation4DataVs8DurationVSgSSSgtYaAA0cD5ErrorOYKFTjTu + 1);
    v37 = _s20LighthouseBackground12MLHostClientC8dsSetKey5group3key5value10timeToLive15encryptionGroupSbSS_SS10Foundation4DataVs8DurationVSgSSSgtYaAA0cD5ErrorOYKFTjTu;
    v38 = swift_task_alloc();
    *(v0 + 920) = v38;
    *v38 = v0;
    v38[1] = sub_1000046B0;
    v39 = *(v0 + 544);
    v49 = 0;
    v50 = 0;
    v51 = v39;
    v48 = 1;

    __asm { BR              X9 }
  }

  sub_100009D6C(v42, v41);
  v27 = *(v0 + 672);
  v28 = *(v0 + 648);
  sub_10000B140();
  *(v0 + 231) = *(v0 + 228);
  v29 = sub_10000B140();
  *(v0 + 928) = *(v0 + 240);
  *(v0 + 254) = *(v0 + 248);
  sub_100009584(v29, 0.5, 2.0);
  *(v0 + 936) = v30;
  *(v0 + 182) = 2;
  v31 = *(v0 + 752);
  v32 = *(v0 + 744);

  return _swift_task_switch(sub_100004960, v32, v31);
}

uint64_t sub_1000046B0()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 920);
  v5 = *v1;

  v6 = v2[114];
  v7 = v2[113];
  if (v0)
  {
    (*(v3[64] + 8))(v3[68], v3[63]);

    v8 = sub_10000AEDC;
  }

  else
  {

    v8 = sub_10000485C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10000485C()
{
  v1 = *(v0 + 896);
  v2 = *(v0 + 888);
  sub_100009D6C(*(v0 + 872), *(v0 + 880));
  sub_100009D6C(v2, v1);
  v3 = *(v0 + 672);
  v4 = *(v0 + 648);
  sub_10000B140();
  *(v0 + 231) = *(v0 + 228);
  v5 = sub_10000B140();
  *(v0 + 928) = *(v0 + 240);
  *(v0 + 254) = *(v0 + 248);
  sub_100009584(v5, 0.5, 2.0);
  *(v0 + 936) = v6;
  *(v0 + 182) = 2;
  v7 = *(v0 + 752);
  v8 = *(v0 + 744);

  return _swift_task_switch(sub_100004960, v8, v7);
}

uint64_t sub_100004960()
{
  v1 = v0[95];
  v2 = v0[92];
  v3 = v0[45];
  sub_10000B090();

  return _swift_task_switch(sub_100004A08, 0, 0);
}

uint64_t sub_100004A08()
{
  *(v0 + 944) = 0;
  if (sub_10000B2F0())
  {
    v1 = *(v0 + 712);

    *(v0 + 278) = 0;
    *(v0 + 1048) = 0;
    *(v0 + 183) = 3;
    v2 = *(v0 + 752);
    v3 = *(v0 + 744);

    return _swift_task_switch(sub_10000698C, v3, v2);
  }

  else
  {
    v4 = *(v0 + 207);
    v5 = *(v0 + 712);
    v6 = *(v0 + 360);

    v7 = sub_10000B1C0();
    v9 = v8;
    *(v0 + 952) = v7;
    *(v0 + 960) = v8;
    if (v4)
    {
      v10 = *(v0 + 712);
      v11 = *(v0 + 704);
      sub_10000B0D0();
      *(v0 + 968) = sub_10000B0C0();
      *(v0 + 96) = v11;
      *(v0 + 104) = v10;
      *(v0 + 112) = v7;
      *(v0 + 120) = v9;
      *(v0 + 128) = 0;
      v12 = *(&_s20LighthouseBackground12MLHostClientC10dsListPush5group3key5value10timeToLiveSbSS_SSxs8DurationVSgtYaAA0cD5ErrorOYKSeRzSERzlFTjTu + 1);
      v13 = _s20LighthouseBackground12MLHostClientC10dsListPush5group3key5value10timeToLiveSbSS_SSxs8DurationVSgtYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
      v14 = swift_task_alloc();
      *(v0 + 976) = v14;
      sub_100009C78();
      sub_100009CCC();
      *v14 = v0;
      v14[1] = sub_100004FF8;
      v44 = *(v0 + 536);

      __asm { BR              X9 }
    }

    if (*(v0 + 230))
    {
      sub_10000B0D0();
      *(v0 + 984) = sub_10000B0C0();
      v15 = *(&_s20LighthouseBackground12MLHostClientC9dsListPop5group3keyxSgSS_SStYaAA0cD5ErrorOYKSeRzSERzlFTjTu + 1);
      v16 = _s20LighthouseBackground12MLHostClientC9dsListPop5group3keyxSgSS_SStYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
      v17 = swift_task_alloc();
      *(v0 + 992) = v17;
      sub_100009C78();
      sub_100009CCC();
      *v17 = v0;
      v17[1] = sub_100005650;
      v43 = *(v0 + 528);

      __asm { BR              X9 }
    }

    v18 = *(v0 + 712);
    if (*(v0 + 231))
    {
      v19 = *(v0 + 944);
      v20 = *(v0 + 704);
      sub_10000B0D0();
      *(v0 + 1000) = sub_10000B0C0();
      *(v0 + 16) = v20;
      *(v0 + 24) = v18;
      *(v0 + 32) = v7;
      *(v0 + 40) = v9;
      *(v0 + 48) = v19;
      v21 = *(&_s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu + 1);
      v22 = _s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
      v23 = swift_task_alloc();
      *(v0 + 1008) = v23;
      v24 = sub_100009C78();
      v25 = sub_100009CCC();
      *v23 = v0;
      v23[1] = sub_100005D14;
      v26 = *(v0 + 520);

      return ((&_s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu + v22))(0xD000000000000023, 0x800000010000C0C0, v0 + 16, &type metadata for SampleWorkerMessage, v24, v25, v26);
    }

    else
    {
      v27 = *(v0 + 712);

      v28 = *(v0 + 424);
      v30 = *(v0 + 400);
      v29 = *(v0 + 408);
      v32 = *(v0 + 384);
      v31 = *(v0 + 392);
      v33 = *(v0 + 376);
      sub_10000B4A0();
      *(v0 + 304) = xmmword_10000B920;
      *(v0 + 280) = 0;
      *(v0 + 288) = 0;
      *(v0 + 296) = 1;
      v34 = sub_100009E28(&qword_100014120, &type metadata accessor for ContinuousClock);
      sub_10000B480();
      sub_100009E28(&qword_100014128, &type metadata accessor for ContinuousClock.Instant);
      sub_10000B390();
      v35 = *(v32 + 8);
      *(v0 + 1016) = v35;
      *(v0 + 1024) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v35(v31, v33);
      v36 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
      v37 = swift_task_alloc();
      *(v0 + 1032) = v37;
      *v37 = v0;
      v37[1] = sub_100006070;
      v38 = *(v0 + 424);
      v40 = *(v0 + 400);
      v39 = *(v0 + 408);

      return dispatch thunk of Clock.sleep(until:tolerance:)(v40, v0 + 280, v39, v34);
    }
  }
}

uint64_t sub_100004FF8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 976);
  v10 = *v2;

  if (v1)
  {
    v6 = *(v4 + 968);
    (*(*(v4 + 512) + 8))(*(v4 + 536), *(v4 + 504));

    v7 = sub_10000724C;
  }

  else
  {
    v8 = *(v4 + 968);

    *(v4 + 255) = a1 & 1;
    v7 = sub_100005174;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100005174()
{
  v1 = *(v0 + 255);
  v2 = *(v0 + 960);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);

  v5 = sub_10000B200();
  v6 = sub_10000B310();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 944);
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = v7;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Donating message %f to queue: %{BOOL}d", v8, 0x12u);
  }

  if (*(v0 + 230))
  {
    sub_10000B0D0();
    *(v0 + 984) = sub_10000B0C0();
    v9 = *(&_s20LighthouseBackground12MLHostClientC9dsListPop5group3keyxSgSS_SStYaAA0cD5ErrorOYKSeRzSERzlFTjTu + 1);
    v10 = _s20LighthouseBackground12MLHostClientC9dsListPop5group3keyxSgSS_SStYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
    v11 = swift_task_alloc();
    *(v0 + 992) = v11;
    sub_100009C78();
    sub_100009CCC();
    *v11 = v0;
    v11[1] = sub_100005650;
    v39 = *(v0 + 528);

    __asm { BR              X9 }
  }

  if (*(v0 + 231))
  {
    v12 = *(v0 + 960);
    v13 = *(v0 + 952);
    v14 = *(v0 + 944);
    v37 = *(v0 + 704);
    sub_10000B0D0();
    *(v0 + 1000) = sub_10000B0C0();
    *(v0 + 16) = v37;
    *(v0 + 32) = v13;
    *(v0 + 40) = v12;
    *(v0 + 48) = v14;
    v15 = *(&_s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu + 1);
    v16 = _s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
    v17 = swift_task_alloc();
    *(v0 + 1008) = v17;
    v18 = sub_100009C78();
    v19 = sub_100009CCC();
    *v17 = v0;
    v17[1] = sub_100005D14;
    v20 = *(v0 + 520);

    return ((&_s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu + v16))(0xD000000000000023, 0x800000010000C0C0, v0 + 16, &type metadata for SampleWorkerMessage, v18, v19, v20);
  }

  else
  {
    v22 = *(v0 + 960);
    v23 = *(v0 + 712);

    v24 = *(v0 + 424);
    v26 = *(v0 + 400);
    v25 = *(v0 + 408);
    v28 = *(v0 + 384);
    v27 = *(v0 + 392);
    v29 = *(v0 + 376);
    sub_10000B4A0();
    *(v0 + 304) = xmmword_10000B920;
    *(v0 + 280) = 0;
    *(v0 + 288) = 0;
    *(v0 + 296) = 1;
    v30 = sub_100009E28(&qword_100014120, &type metadata accessor for ContinuousClock);
    sub_10000B480();
    sub_100009E28(&qword_100014128, &type metadata accessor for ContinuousClock.Instant);
    sub_10000B390();
    v31 = *(v28 + 8);
    *(v0 + 1016) = v31;
    *(v0 + 1024) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v27, v29);
    v32 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v33 = swift_task_alloc();
    *(v0 + 1032) = v33;
    *v33 = v0;
    v33[1] = sub_100006070;
    v34 = *(v0 + 424);
    v36 = *(v0 + 400);
    v35 = *(v0 + 408);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v36, v0 + 280, v35, v30);
  }
}

uint64_t sub_100005650()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 992);
  v5 = *v1;

  v6 = v2[123];
  if (v0)
  {
    (*(v3[64] + 8))(v3[66], v3[63]);

    v7 = sub_100007724;
  }

  else
  {

    v7 = sub_1000057D8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000057D8()
{
  v42 = v0;
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 56);
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v0 + 88);
    v6 = *(v0 + 720);
    v7 = *(v0 + 64);

    v8 = sub_10000B200();
    v9 = sub_10000B310();

    if (!os_log_type_enabled(v8, v9))
    {

      if (*(v0 + 231))
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

    v38 = v4;
    v10 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = v39;
    *v10 = 136315138;
    *(v0 + 336) = 0;
    *(v0 + 344) = 0xE000000000000000;
    sub_10000B350(47);
    v11 = *(v0 + 344);
    *(v0 + 320) = *(v0 + 336);
    *(v0 + 328) = v11;
    v44._countAndFlagsBits = 0xD000000000000013;
    v44._object = 0x800000010000BAC0;
    sub_10000B2A0(v44);
    v45._object = 0x800000010000C080;
    v45._countAndFlagsBits = 0xD000000000000010;
    sub_10000B2A0(v45);
    v46._countAndFlagsBits = v2;
    v46._object = v1;
    sub_10000B2A0(v46);
    v47._countAndFlagsBits = 0x64496B736174202CLL;
    v47._object = 0xEA0000000000203ALL;
    sub_10000B2A0(v47);
    v48._countAndFlagsBits = v38;
    v48._object = v3;
    sub_10000B2A0(v48);
    v49._countAndFlagsBits = 0x697461727564202CLL;
    v49._object = 0xEC000000203A6E6FLL;
    sub_10000B2A0(v49);
    sub_10000B300();
    v50._countAndFlagsBits = 41;
    v50._object = 0xE100000000000000;
    sub_10000B2A0(v50);

    v12 = sub_100008FDC(*(v0 + 320), *(v0 + 328), &v41);

    *(v10 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Fetched message from queue: %s", v10, 0xCu);
    sub_100009D20(v39);
  }

  if (*(v0 + 231))
  {
LABEL_5:
    v13 = *(v0 + 960);
    v14 = *(v0 + 952);
    v15 = *(v0 + 944);
    v40 = *(v0 + 704);
    sub_10000B0D0();
    *(v0 + 1000) = sub_10000B0C0();
    *(v0 + 16) = v40;
    *(v0 + 32) = v14;
    *(v0 + 40) = v13;
    *(v0 + 48) = v15;
    v16 = *(&_s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu + 1);
    v17 = _s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
    v18 = swift_task_alloc();
    *(v0 + 1008) = v18;
    v19 = sub_100009C78();
    v20 = sub_100009CCC();
    *v18 = v0;
    v18[1] = sub_100005D14;
    v21 = *(v0 + 520);

    return ((&_s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu + v17))(0xD000000000000023, 0x800000010000C0C0, v0 + 16, &type metadata for SampleWorkerMessage, v19, v20, v21);
  }

LABEL_9:
  v23 = *(v0 + 960);
  v24 = *(v0 + 712);

  v25 = *(v0 + 424);
  v27 = *(v0 + 400);
  v26 = *(v0 + 408);
  v29 = *(v0 + 384);
  v28 = *(v0 + 392);
  v30 = *(v0 + 376);
  sub_10000B4A0();
  *(v0 + 304) = xmmword_10000B920;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  *(v0 + 296) = 1;
  v31 = sub_100009E28(&qword_100014120, &type metadata accessor for ContinuousClock);
  sub_10000B480();
  sub_100009E28(&qword_100014128, &type metadata accessor for ContinuousClock.Instant);
  sub_10000B390();
  v32 = *(v29 + 8);
  *(v0 + 1016) = v32;
  *(v0 + 1024) = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v28, v30);
  v33 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v34 = swift_task_alloc();
  *(v0 + 1032) = v34;
  *v34 = v0;
  v34[1] = sub_100006070;
  v35 = *(v0 + 424);
  v37 = *(v0 + 400);
  v36 = *(v0 + 408);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v37, v0 + 280, v36, v31);
}

uint64_t sub_100005D14()
{
  v2 = *v1;
  v3 = *(*v1 + 1008);
  v10 = *v1;

  if (v0)
  {
    v4 = v2[125];
    (*(v2[64] + 8))(v2[65], v2[63]);

    v5 = sub_100007A34;
  }

  else
  {
    v6 = v2[125];
    v7 = v2[120];
    v8 = v2[89];

    v5 = sub_100005E9C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100005E9C()
{
  v1 = *(v0 + 424);
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  v5 = *(v0 + 384);
  v4 = *(v0 + 392);
  v6 = *(v0 + 376);
  sub_10000B4A0();
  *(v0 + 304) = xmmword_10000B920;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  *(v0 + 296) = 1;
  v7 = sub_100009E28(&qword_100014120, &type metadata accessor for ContinuousClock);
  sub_10000B480();
  sub_100009E28(&qword_100014128, &type metadata accessor for ContinuousClock.Instant);
  sub_10000B390();
  v8 = *(v5 + 8);
  *(v0 + 1016) = v8;
  *(v0 + 1024) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  *(v0 + 1032) = v10;
  *v10 = v0;
  v10[1] = sub_100006070;
  v11 = *(v0 + 424);
  v13 = *(v0 + 400);
  v12 = *(v0 + 408);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v13, v0 + 280, v12, v7);
}

uint64_t sub_100006070()
{
  v2 = *v1;
  v3 = *(*v1 + 1032);
  v11 = *v1;
  *(*v1 + 1040) = v0;

  v4 = *(v2 + 1024);
  if (v0)
  {
    v5 = *(v2 + 712);
    (*(v2 + 1016))(*(v2 + 400), *(v2 + 376));

    v6 = sub_100006848;
  }

  else
  {
    v8 = *(v2 + 416);
    v7 = *(v2 + 424);
    v9 = *(v2 + 408);
    (*(v2 + 1016))(*(v2 + 400), *(v2 + 376));
    (*(v8 + 8))(v7, v9);
    v6 = sub_100006210;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100006210()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 928);
  if (*(v0 + 254))
  {
    v2 = 10.0;
  }

  if (v2 - *(v0 + 936) < 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2 - *(v0 + 936);
  }

  v4 = v1 + 0.25;
  if (v3 <= v1 + 0.25 || (*(v0 + 944) = v4, (sub_10000B2F0() & 1) != 0))
  {
    v5 = *(v0 + 712);

    *(v0 + 278) = v3 <= v4;
    *(v0 + 1048) = v4;
    *(v0 + 183) = 3;
    v6 = *(v0 + 752);
    v7 = *(v0 + 744);

    return _swift_task_switch(sub_10000698C, v7, v6);
  }

  else
  {
    v8 = *(v0 + 207);
    v9 = *(v0 + 712);
    v10 = *(v0 + 360);

    v11 = sub_10000B1C0();
    v13 = v12;
    *(v0 + 952) = v11;
    *(v0 + 960) = v12;
    if (v8)
    {
      v14 = *(v0 + 712);
      v15 = *(v0 + 704);
      sub_10000B0D0();
      *(v0 + 968) = sub_10000B0C0();
      *(v0 + 96) = v15;
      *(v0 + 104) = v14;
      *(v0 + 112) = v11;
      *(v0 + 120) = v13;
      *(v0 + 128) = v4;
      v16 = *(&_s20LighthouseBackground12MLHostClientC10dsListPush5group3key5value10timeToLiveSbSS_SSxs8DurationVSgtYaAA0cD5ErrorOYKSeRzSERzlFTjTu + 1);
      v17 = _s20LighthouseBackground12MLHostClientC10dsListPush5group3key5value10timeToLiveSbSS_SSxs8DurationVSgtYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
      v18 = swift_task_alloc();
      *(v0 + 976) = v18;
      sub_100009C78();
      sub_100009CCC();
      *v18 = v0;
      v18[1] = sub_100004FF8;
      v48 = *(v0 + 536);

      __asm { BR              X9 }
    }

    if (*(v0 + 230))
    {
      sub_10000B0D0();
      *(v0 + 984) = sub_10000B0C0();
      v19 = *(&_s20LighthouseBackground12MLHostClientC9dsListPop5group3keyxSgSS_SStYaAA0cD5ErrorOYKSeRzSERzlFTjTu + 1);
      v20 = _s20LighthouseBackground12MLHostClientC9dsListPop5group3keyxSgSS_SStYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
      v21 = swift_task_alloc();
      *(v0 + 992) = v21;
      sub_100009C78();
      sub_100009CCC();
      *v21 = v0;
      v21[1] = sub_100005650;
      v47 = *(v0 + 528);

      __asm { BR              X9 }
    }

    v22 = *(v0 + 712);
    if (*(v0 + 231))
    {
      v23 = *(v0 + 944);
      v24 = *(v0 + 704);
      sub_10000B0D0();
      *(v0 + 1000) = sub_10000B0C0();
      *(v0 + 16) = v24;
      *(v0 + 24) = v22;
      *(v0 + 32) = v11;
      *(v0 + 40) = v13;
      *(v0 + 48) = v23;
      v25 = *(&_s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu + 1);
      v26 = _s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
      v27 = swift_task_alloc();
      *(v0 + 1008) = v27;
      v28 = sub_100009C78();
      v29 = sub_100009CCC();
      *v27 = v0;
      v27[1] = sub_100005D14;
      v30 = *(v0 + 520);

      return ((&_s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu + v26))(0xD000000000000023, 0x800000010000C0C0, v0 + 16, &type metadata for SampleWorkerMessage, v28, v29, v30);
    }

    else
    {
      v31 = *(v0 + 712);

      v32 = *(v0 + 424);
      v34 = *(v0 + 400);
      v33 = *(v0 + 408);
      v36 = *(v0 + 384);
      v35 = *(v0 + 392);
      v37 = *(v0 + 376);
      sub_10000B4A0();
      *(v0 + 304) = xmmword_10000B920;
      *(v0 + 280) = 0;
      *(v0 + 288) = 0;
      *(v0 + 296) = 1;
      v38 = sub_100009E28(&qword_100014120, &type metadata accessor for ContinuousClock);
      sub_10000B480();
      sub_100009E28(&qword_100014128, &type metadata accessor for ContinuousClock.Instant);
      sub_10000B390();
      v39 = *(v36 + 8);
      *(v0 + 1016) = v39;
      *(v0 + 1024) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v39(v35, v37);
      v40 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
      v41 = swift_task_alloc();
      *(v0 + 1032) = v41;
      *v41 = v0;
      v41[1] = sub_100006070;
      v42 = *(v0 + 424);
      v44 = *(v0 + 400);
      v43 = *(v0 + 408);

      return dispatch thunk of Clock.sleep(until:tolerance:)(v44, v0 + 280, v43, v38);
    }
  }
}

uint64_t sub_100006848()
{
  v1 = *(v0 + 720);
  (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
  v2 = sub_10000B200();
  v3 = sub_10000B330();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 1040);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Task interrupted while sleeping.", v6, 2u);
  }

  v7 = *(v0 + 944);
  *(v0 + 278) = 0;
  *(v0 + 1048) = v7;
  *(v0 + 183) = 3;
  v8 = *(v0 + 752);
  v9 = *(v0 + 744);

  return _swift_task_switch(sub_10000698C, v9, v8);
}

uint64_t sub_10000698C()
{
  v1 = v0[95];
  v2 = v0[92];
  v3 = v0[45];
  sub_10000B090();

  return _swift_task_switch(sub_100006A34, 0, 0);
}

uint64_t sub_100006A34()
{
  v18 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 360);
  v3 = sub_10000B200();
  v4 = sub_10000B310();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1048);
    v6 = *(v0 + 360);
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136315650;
    v8 = sub_10000B1C0();
    v10 = sub_100008FDC(v8, v9, &v17);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_10000B1D0();
    v13 = sub_100008FDC(v11, v12, &v17);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2048;
    *(v7 + 24) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "TaskId: %s, TaskName: %s: currentDuration: %f", v7, 0x20u);
    swift_arrayDestroy();
  }

  *(v0 + 206) = 4;
  v14 = *(v0 + 752);
  v15 = *(v0 + 744);

  return _swift_task_switch(sub_100006C08, v15, v14);
}

uint64_t sub_100006C08()
{
  v1 = v0[95];
  v2 = v0[92];
  v3 = v0[45];
  sub_10000B090();

  return _swift_task_switch(sub_100006CB0, 0, 0);
}

uint64_t sub_100006CB0()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 648);
  sub_10000B140();
  v3 = *(v0 + 256);
  if (v3 == 2 || (v3 & 1) == 0)
  {
    v12 = *(v0 + 816);
    v5 = *(v0 + 776);
    v13 = *(v0 + 672);
    v14 = *(v0 + 656);
    v15 = *(v0 + 648);
    if (*(v0 + 278) == 1)
    {
      v16 = objc_allocWithZone(sub_10000B100());
      v17 = sub_10000B0F0();
    }

    else
    {
      sub_100009C24();
      v18 = objc_allocWithZone(sub_10000B100());
      v17 = sub_10000B0E0();
    }

    v31 = v17;

    v10 = v13;
    v11 = v15;
  }

  else
  {
    v4 = *(v0 + 816);
    v5 = *(v0 + 776);
    v6 = *(v0 + 672);
    v7 = *(v0 + 656);
    v8 = *(v0 + 648);
    *(v0 + 278);
    v9 = objc_allocWithZone(sub_10000B100());
    v31 = sub_10000B0F0();

    v10 = v6;
    v11 = v8;
  }

  v5(v10, v11);
  v19 = *(v0 + 696);
  v20 = *(v0 + 672);
  v21 = *(v0 + 664);
  v22 = *(v0 + 640);
  v23 = *(v0 + 632);
  v24 = *(v0 + 608);
  v25 = *(v0 + 584);
  v26 = *(v0 + 576);
  v27 = *(v0 + 552);
  v28 = *(v0 + 544);
  v32 = *(v0 + 536);
  v33 = *(v0 + 528);
  v34 = *(v0 + 520);
  v35 = *(v0 + 496);
  v36 = *(v0 + 472);
  v37 = *(v0 + 448);
  v38 = *(v0 + 424);
  v39 = *(v0 + 400);
  v40 = *(v0 + 392);

  v29 = *(v0 + 8);

  return v29(v31);
}

uint64_t sub_100006F64()
{
  *(v0 + 880) = 0xF000000000000000;
  *(v0 + 872) = 0;
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v3 = *(v0 + 472);
  v4 = *(v0 + 464);
  v24 = *(v0 + 456);
  v25 = *(v0 + 480);
  v5 = *(v0 + 440);
  v6 = *(v0 + 448);
  v7 = *(v0 + 432);
  sub_10000AFE0();
  sub_100007C1C(v6);
  sub_10000AF70();
  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v3, v24);
  sub_10000B270();
  v8 = sub_10000B250();
  v10 = v9;

  *(v0 + 888) = v8;
  *(v0 + 896) = v10;
  (*(v2 + 8))(v1, v25);
  if (v10 >> 60 != 15)
  {
    v17 = *(v0 + 824);
    v18 = *(v0 + 360);
    *(v0 + 904) = sub_10000B0C0();
    sub_10000B1D0();
    *(v0 + 912) = v19;
    v20 = *(&_s20LighthouseBackground12MLHostClientC8dsSetKey5group3key5value10timeToLive15encryptionGroupSbSS_SS10Foundation4DataVs8DurationVSgSSSgtYaAA0cD5ErrorOYKFTjTu + 1);
    v21 = _s20LighthouseBackground12MLHostClientC8dsSetKey5group3key5value10timeToLive15encryptionGroupSbSS_SS10Foundation4DataVs8DurationVSgSSSgtYaAA0cD5ErrorOYKFTjTu;
    v22 = swift_task_alloc();
    *(v0 + 920) = v22;
    *v22 = v0;
    v22[1] = sub_1000046B0;
    v27 = *(v0 + 544);

    __asm { BR              X9 }
  }

  sub_100009D6C(0, 0xF000000000000000);
  v11 = *(v0 + 672);
  v12 = *(v0 + 648);
  sub_10000B140();
  *(v0 + 231) = *(v0 + 228);
  v13 = sub_10000B140();
  *(v0 + 928) = *(v0 + 240);
  *(v0 + 254) = *(v0 + 248);
  sub_100009584(v13, 0.5, 2.0);
  *(v0 + 936) = v14;
  *(v0 + 182) = 2;
  v15 = *(v0 + 752);
  v16 = *(v0 + 744);

  return _swift_task_switch(sub_100004960, v16, v15);
}

uint64_t sub_10000724C()
{
  v1 = *(v0 + 960);
  v2 = *(v0 + 720);
  v3 = *(v0 + 712);

  v4 = sub_10000B200();
  v5 = sub_10000B310();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 944);
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = v6;
    *(v7 + 12) = 1024;
    *(v7 + 14) = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Donating message %f to queue: %{BOOL}d", v7, 0x12u);
  }

  if (*(v0 + 230))
  {
    sub_10000B0D0();
    *(v0 + 984) = sub_10000B0C0();
    v8 = *(&_s20LighthouseBackground12MLHostClientC9dsListPop5group3keyxSgSS_SStYaAA0cD5ErrorOYKSeRzSERzlFTjTu + 1);
    v9 = _s20LighthouseBackground12MLHostClientC9dsListPop5group3keyxSgSS_SStYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
    v10 = swift_task_alloc();
    *(v0 + 992) = v10;
    sub_100009C78();
    sub_100009CCC();
    *v10 = v0;
    v10[1] = sub_100005650;
    v38 = *(v0 + 528);

    __asm { BR              X9 }
  }

  if (*(v0 + 231))
  {
    v11 = *(v0 + 960);
    v12 = *(v0 + 952);
    v13 = *(v0 + 944);
    v36 = *(v0 + 704);
    sub_10000B0D0();
    *(v0 + 1000) = sub_10000B0C0();
    *(v0 + 16) = v36;
    *(v0 + 32) = v12;
    *(v0 + 40) = v11;
    *(v0 + 48) = v13;
    v14 = *(&_s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu + 1);
    v15 = _s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
    v16 = swift_task_alloc();
    *(v0 + 1008) = v16;
    v17 = sub_100009C78();
    v18 = sub_100009CCC();
    *v16 = v0;
    v16[1] = sub_100005D14;
    v19 = *(v0 + 520);

    return ((&_s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu + v15))(0xD000000000000023, 0x800000010000C0C0, v0 + 16, &type metadata for SampleWorkerMessage, v17, v18, v19);
  }

  else
  {
    v21 = *(v0 + 960);
    v22 = *(v0 + 712);

    v23 = *(v0 + 424);
    v25 = *(v0 + 400);
    v24 = *(v0 + 408);
    v27 = *(v0 + 384);
    v26 = *(v0 + 392);
    v28 = *(v0 + 376);
    sub_10000B4A0();
    *(v0 + 304) = xmmword_10000B920;
    *(v0 + 280) = 0;
    *(v0 + 288) = 0;
    *(v0 + 296) = 1;
    v29 = sub_100009E28(&qword_100014120, &type metadata accessor for ContinuousClock);
    sub_10000B480();
    sub_100009E28(&qword_100014128, &type metadata accessor for ContinuousClock.Instant);
    sub_10000B390();
    v30 = *(v27 + 8);
    *(v0 + 1016) = v30;
    *(v0 + 1024) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30(v26, v28);
    v31 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v32 = swift_task_alloc();
    *(v0 + 1032) = v32;
    *v32 = v0;
    v32[1] = sub_100006070;
    v33 = *(v0 + 424);
    v35 = *(v0 + 400);
    v34 = *(v0 + 408);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v35, v0 + 280, v34, v29);
  }
}

uint64_t sub_100007724()
{
  if (*(v0 + 231))
  {
    v1 = *(v0 + 960);
    v2 = *(v0 + 952);
    v3 = *(v0 + 944);
    v26 = *(v0 + 704);
    sub_10000B0D0();
    *(v0 + 1000) = sub_10000B0C0();
    *(v0 + 16) = v26;
    *(v0 + 32) = v2;
    *(v0 + 40) = v1;
    *(v0 + 48) = v3;
    v4 = *(&_s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu + 1);
    v5 = _s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu;
    v6 = swift_task_alloc();
    *(v0 + 1008) = v6;
    v7 = sub_100009C78();
    v8 = sub_100009CCC();
    *v6 = v0;
    v6[1] = sub_100005D14;
    v9 = *(v0 + 520);

    return ((&_s20LighthouseBackground12MLHostClientC13streamPublish5topic7messageSbSS_xtYaAA0cD5ErrorOYKSeRzSERzlFTjTu + v5))(0xD000000000000023, 0x800000010000C0C0, v0 + 16, &type metadata for SampleWorkerMessage, v7, v8, v9);
  }

  else
  {
    v11 = *(v0 + 960);
    v12 = *(v0 + 712);

    v13 = *(v0 + 424);
    v15 = *(v0 + 400);
    v14 = *(v0 + 408);
    v17 = *(v0 + 384);
    v16 = *(v0 + 392);
    v18 = *(v0 + 376);
    sub_10000B4A0();
    *(v0 + 304) = xmmword_10000B920;
    *(v0 + 280) = 0;
    *(v0 + 288) = 0;
    *(v0 + 296) = 1;
    v19 = sub_100009E28(&qword_100014120, &type metadata accessor for ContinuousClock);
    sub_10000B480();
    sub_100009E28(&qword_100014128, &type metadata accessor for ContinuousClock.Instant);
    sub_10000B390();
    v20 = *(v17 + 8);
    *(v0 + 1016) = v20;
    *(v0 + 1024) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v16, v18);
    v21 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v22 = swift_task_alloc();
    *(v0 + 1032) = v22;
    *v22 = v0;
    v22[1] = sub_100006070;
    v23 = *(v0 + 424);
    v25 = *(v0 + 400);
    v24 = *(v0 + 408);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v25, v0 + 280, v24, v19);
  }
}

uint64_t sub_100007A34()
{
  v1 = *(v0 + 960);
  v2 = *(v0 + 712);

  v3 = *(v0 + 424);
  v5 = *(v0 + 400);
  v4 = *(v0 + 408);
  v7 = *(v0 + 384);
  v6 = *(v0 + 392);
  v8 = *(v0 + 376);
  sub_10000B4A0();
  *(v0 + 304) = xmmword_10000B920;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  *(v0 + 296) = 1;
  v9 = sub_100009E28(&qword_100014120, &type metadata accessor for ContinuousClock);
  sub_10000B480();
  sub_100009E28(&qword_100014128, &type metadata accessor for ContinuousClock.Instant);
  sub_10000B390();
  v10 = *(v7 + 8);
  *(v0 + 1016) = v10;
  *(v0 + 1024) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v8);
  v11 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v12 = swift_task_alloc();
  *(v0 + 1032) = v12;
  *v12 = v0;
  v12[1] = sub_100006070;
  v13 = *(v0 + 424);
  v15 = *(v0 + 400);
  v14 = *(v0 + 408);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v15, v0 + 280, v14, v9);
}

uint64_t sub_100007C1C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = (*(*(sub_100008A34(&qword_100014160, &qword_10000BB40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v33 = &v28 - v2;
  v32 = sub_10000B040();
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10000AFC0();
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000AFA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000AF80();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(*(sub_10000AF90() - 8) + 64);
  __chkstk_darwin();
  (*(v22 + 104))(&v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:));
  v23 = v15;
  v24 = v32;
  (*(v16 + 104))(v19, enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:), v23);
  v25 = v9;
  v26 = v33;
  (*(v11 + 104))(v14, enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:), v10);
  (*(v6 + 104))(v25, enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:), v31);
  sub_10000B030();
  result = (*(v3 + 48))(v26, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v29, v26, v24);
    return sub_10000AFB0();
  }

  return result;
}

uint64_t sub_100008020@<X0>(uint64_t a1@<X8>)
{
  sub_100008C40();
  sub_100008C94();
  sub_10000B130();
  v2 = *(type metadata accessor for SampleWorker() + 20);
  sub_10000B0B0();
  result = sub_10000B0A0();
  *(a1 + v2) = result;
  return result;
}

uint64_t sub_1000080CC()
{
  objc_allocWithZone(sub_10000B100());
  v1 = sub_10000B0F0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100008140(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000081D4;

  return sub_1000023AC(a1);
}

uint64_t sub_1000081D4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1000082D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_1000083B4;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_1000083B4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000084A8(uint64_t a1)
{
  v2 = sub_100009E28(&qword_1000140C8, type metadata accessor for SampleWorker);

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_100008528(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000B540();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v30 + 1) = &type metadata for SampleWorkerConfig;
  LOBYTE(v29) = a1;
  *(&v29 + 1) = a2;
  WORD2(v30) = WORD2(a3);
  LODWORD(v30) = a3;
  sub_10000B520();
  v11 = sub_10000B530();
  (*(v7 + 8))(v10, v6);
  v23[1] = v11;
  sub_10000B3A0();
  sub_10000B3B0();
  if (*(&v31 + 1))
  {
    v12 = &_swiftEmptyArrayStorage;
    do
    {
      v26 = v29;
      v27 = v30;
      v28 = v31;
      v13._object = *(&v29 + 1);
      if (*(&v29 + 1))
      {
        v13._countAndFlagsBits = v26;
        v24 = 0;
        v25 = 0xE000000000000000;
        sub_10000B2A0(v13);
        v32._countAndFlagsBits = 8250;
        v32._object = 0xE200000000000000;
        sub_10000B2A0(v32);
        sub_100009B00(&v27, *(&v28 + 1));
        sub_10000B460();
        v14 = v24;
        v15 = v25;
        sub_100009E70(&v26, &qword_1000140E0, &qword_10000BB00);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_100008ECC(0, *(v12 + 2) + 1, 1, v12);
        }

        v17 = *(v12 + 2);
        v16 = *(v12 + 3);
        if (v17 >= v16 >> 1)
        {
          v12 = sub_100008ECC((v16 > 1), v17 + 1, 1, v12);
        }

        *(v12 + 2) = v17 + 1;
        v18 = &v12[16 * v17];
        *(v18 + 4) = v14;
        *(v18 + 5) = v15;
      }

      else
      {
        sub_100009E70(&v26, &qword_1000140E0, &qword_10000BB00);
      }

      sub_10000B3B0();
    }

    while (*(&v31 + 1));
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  *&v29 = 0xD000000000000013;
  *(&v29 + 1) = 0x800000010000C0A0;
  *&v26 = v12;
  sub_100008A34(&qword_1000140D0, "d\a");
  sub_10000A4FC(&qword_1000140D8, &qword_1000140D0, "d\a");
  v19 = sub_10000B230();
  v21 = v20;

  v33._countAndFlagsBits = v19;
  v33._object = v21;
  sub_10000B2A0(v33);

  v34._countAndFlagsBits = 41;
  v34._object = 0xE100000000000000;
  sub_10000B2A0(v34);
  return v29;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for SampleWorker();
  sub_100009E28(&qword_100014020, type metadata accessor for SampleWorker);
  sub_10000B050();
  return 0;
}

uint64_t type metadata accessor for SampleWorker()
{
  result = qword_1000141D8;
  if (!qword_1000141D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000896C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100008A34(&qword_100014028, &unk_10000B930);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100008A34(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100008A90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100008A34(&qword_100014028, &unk_10000B930);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100008B54()
{
  sub_100008BD8();
  if (v0 <= 0x3F)
  {
    sub_10000B0B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100008BD8()
{
  if (!qword_100014088)
  {
    sub_100008C40();
    sub_100008C94();
    v0 = sub_10000B160();
    if (!v1)
    {
      atomic_store(v0, &qword_100014088);
    }
  }
}

unint64_t sub_100008C40()
{
  result = qword_100014090;
  if (!qword_100014090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014090);
  }

  return result;
}

unint64_t sub_100008C94()
{
  result = qword_100014098;
  if (!qword_100014098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014098);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SampleWorkerConfig(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SampleWorkerConfig(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[22])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SampleWorkerConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 22) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 22) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_100008E84(uint64_t *a1, uint64_t *a2)
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

char *sub_100008ECC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008A34(&qword_1000140E8, &qword_10000BB08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100008FDC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000090A8(v11, 0, 0, 1, a1, a2);
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
    sub_100009ED0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009D20(v11);
  return v7;
}

unint64_t sub_1000090A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000091B4(a5, a6);
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
    result = sub_10000B360();
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

char *sub_1000091B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100009200(a1, a2);
  sub_100009330(&off_100010920);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100009200(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000941C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10000B360();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10000B2B0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000941C(v10, 0);
        result = sub_10000B340();
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

uint64_t sub_100009330(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100009490(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000941C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100008A34(&qword_100014168, &qword_10000BB48);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100009490(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008A34(&qword_100014168, &qword_10000BB48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100009584(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  result = swift_stdlib_random();
  if (v5 * vcvtd_n_f64_u64(0, 0x35uLL) + a2 == a3)
  {
    return sub_100009584(v6, a2, a3);
  }

  return result;
}

uint64_t sub_100009628(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726150776F6C6C61 && a2 == 0xEC0000006C616974;
  if (v4 || (sub_10000B470() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010000C110 == a2 || (sub_10000B470() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010000C130 == a2 || (sub_10000B470() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010000C150 == a2 || (sub_10000B470() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010000C170 == a2 || (sub_10000B470() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010000C190 == a2 || (sub_10000B470() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010000C1B0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_10000B470();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_100009878(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_100008A34(&qword_1000140F0, &qword_10000BB10);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = v13 - v7;
  v9 = a1[4];
  sub_100009B00(a1, a1[3]);
  sub_100009B44();
  sub_10000B550();
  if (v1)
  {
    sub_100009D20(a1);
  }

  else
  {
    v23 = 0;
    v2 = sub_10000B3D0();
    v22 = 1;
    sub_10000B3E0();
    v16 = v10 & 1;
    v21 = 2;
    sub_10000B3D0();
    v20 = 3;
    sub_10000B3D0();
    v19 = 4;
    v14 = sub_10000B3D0();
    v18 = 5;
    v13[3] = sub_10000B3D0();
    v17 = 6;
    v13[2] = sub_10000B3D0();
    (*(v5 + 8))(v8, v4);
    v12 = v16;
    sub_100009D20(a1);
    v15 = v12 & 1;
  }

  return v2;
}

void *sub_100009B00(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100009B44()
{
  result = qword_1000144F0;
  if (!qword_1000144F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144F0);
  }

  return result;
}

uint64_t sub_100009B98(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100009BD0()
{
  result = qword_100014118;
  if (!qword_100014118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014118);
  }

  return result;
}

unint64_t sub_100009C24()
{
  result = qword_100014130;
  if (!qword_100014130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014130);
  }

  return result;
}

unint64_t sub_100009C78()
{
  result = qword_100014138;
  if (!qword_100014138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014138);
  }

  return result;
}

unint64_t sub_100009CCC()
{
  result = qword_100014140;
  if (!qword_100014140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014140);
  }

  return result;
}

uint64_t sub_100009D20(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100009D6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100009D80(a1, a2);
  }

  return a1;
}

uint64_t sub_100009D80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100009DD4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100009E28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009E70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100008A34(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100009ED0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100009F2C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t getEnumTagSinglePayload for SampleWorkerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SampleWorkerError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SampleWorkerStates(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SampleWorkerStates(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SampleWorkerConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SampleWorkerConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_10000A3AC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000A3C0(uint64_t a1, int a2)
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

uint64_t sub_10000A408(uint64_t result, int a2, int a3)
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

unint64_t sub_10000A464()
{
  result = qword_100014600[0];
  if (!qword_100014600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100014600);
  }

  return result;
}

uint64_t sub_10000A4FC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008E84(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000A548()
{
  result = qword_100014180;
  if (!qword_100014180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014180);
  }

  return result;
}

unint64_t sub_10000A5A0()
{
  result = qword_100014188;
  if (!qword_100014188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014188);
  }

  return result;
}

unint64_t sub_10000A5F8()
{
  result = qword_100014190;
  if (!qword_100014190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014190);
  }

  return result;
}

unint64_t sub_10000A650()
{
  result = qword_100014198;
  if (!qword_100014198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014198);
  }

  return result;
}

unint64_t sub_10000A6A8()
{
  result = qword_1000141A0;
  if (!qword_1000141A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141A0);
  }

  return result;
}

unint64_t sub_10000A700()
{
  result = qword_1000141A8;
  if (!qword_1000141A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141A8);
  }

  return result;
}

unint64_t sub_10000A758()
{
  result = qword_1000141B0;
  if (!qword_1000141B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141B0);
  }

  return result;
}

unint64_t sub_10000A7B0()
{
  result = qword_100014D10;
  if (!qword_100014D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014D10);
  }

  return result;
}

unint64_t sub_10000A808()
{
  result = qword_100014D18[0];
  if (!qword_100014D18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100014D18);
  }

  return result;
}

uint64_t sub_10000A85C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100010860;
  v6._object = a2;
  v4 = sub_10000B3C0(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000A8A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616C6572726F63 && a2 == 0xED000064496E6F69;
  if (v4 || (sub_10000B470() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64496B736174 && a2 == 0xE600000000000000 || (sub_10000B470() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_10000B470();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10000A9C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100008A34(&qword_1000141B8, &qword_10000BF38);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_100009B00(a1, a1[3]);
  sub_10000AC18();
  sub_10000B550();
  if (v2)
  {
    return sub_100009D20(a1);
  }

  v26 = 0;
  v11 = sub_10000B3F0();
  v13 = v12;
  v22 = a2;
  v23 = v11;
  v25 = 1;
  v14 = sub_10000B3F0();
  v21 = v15;
  v24 = 2;
  sub_10000B400();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  result = sub_100009D20(a1);
  v19 = v22;
  *v22 = v23;
  v19[1] = v13;
  v20 = v21;
  v19[2] = v14;
  v19[3] = v20;
  v19[4] = v17;
  return result;
}

unint64_t sub_10000AC18()
{
  result = qword_100014DA0[0];
  if (!qword_100014DA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100014DA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SampleWorkerMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SampleWorkerMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000ADC0()
{
  result = qword_100014EB0[0];
  if (!qword_100014EB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100014EB0);
  }

  return result;
}

unint64_t sub_10000AE18()
{
  result = qword_100014FC0;
  if (!qword_100014FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014FC0);
  }

  return result;
}

unint64_t sub_10000AE70()
{
  result = qword_100014FC8[0];
  if (!qword_100014FC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100014FC8);
  }

  return result;
}

uint64_t sub_10000AEDC()
{

  return sub_10000485C();
}