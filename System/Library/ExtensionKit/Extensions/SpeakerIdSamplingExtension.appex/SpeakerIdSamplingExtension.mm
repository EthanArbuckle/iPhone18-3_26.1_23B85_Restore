uint64_t sub_1000015E8(char a1)
{
  sub_100004EA0(73);
  v5._countAndFlagsBits = 0xD00000000000002FLL;
  v5._object = 0x8000000100005890;
  sub_100004E30(v5);
  if (a1)
  {
    v2._countAndFlagsBits = 1702195828;
  }

  else
  {
    v2._countAndFlagsBits = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v2._object = v3;
  sub_100004E30(v2);

  v6._object = 0x80000001000058C0;
  v6._countAndFlagsBits = 0xD000000000000015;
  sub_100004E30(v6);
  sub_100004E50();
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  sub_100004E30(v7);
  return 0;
}

Swift::Int sub_100001700()
{
  v1 = *v0;
  sub_100004F70();
  sub_100004F80(v1);
  return sub_100004F90();
}

Swift::Int sub_100001774()
{
  v1 = *v0;
  sub_100004F70();
  sub_100004F80(v1);
  return sub_100004F90();
}

unint64_t sub_1000017B8()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x726150776F6C6C61;
  }

  *v0;
  return result;
}

uint64_t sub_100001800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726150776F6C6C61 && a2 == 0xEC0000006C616974;
  if (v6 || (sub_100004F10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000058E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100004F10();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100001900(uint64_t a1)
{
  v2 = sub_100004654();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000193C(uint64_t a1)
{
  v2 = sub_100004654();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001978(void *a1)
{
  v3 = sub_100004180(&qword_10000C0D8, &qword_100005500);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_100004610(a1, a1[3]);
  sub_100004654();
  sub_100004FB0();
  v12 = 0;
  sub_100004EE0();
  if (!v1)
  {
    v11 = 1;
    sub_100004EF0();
  }

  return (*(v4 + 8))(v7, v3);
}

void sub_100001B00(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100003B50(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_100001B34(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  return sub_100001978(a1);
}

unint64_t SpeakerIdSamplingExtensionError.rawValue.getter(char a1)
{
  result = 0x2064696C61766E49;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      return result;
    case 3:
      result = 0x74754F64656D6974;
      break;
    case 4:
      result = 0x7463657078656E75;
      break;
    case 5:
    case 13:
      result = 0xD000000000000017;
      break;
    case 6:
    case 18:
    case 20:
      result = 0xD000000000000012;
      break;
    case 7:
    case 17:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x6B72616D6B6F6F62;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x4E656C69466C7173;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x72576664556C7173;
      break;
    case 16:
      result = 0x78456664556C7173;
      break;
    case 19:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_100001E2C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = SpeakerIdSamplingExtensionError.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == SpeakerIdSamplingExtensionError.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100004F10();
  }

  return v8 & 1;
}

Swift::Int sub_100001EB4()
{
  v1 = *v0;
  sub_100004F70();
  SpeakerIdSamplingExtensionError.rawValue.getter(v1);
  sub_100004E20();

  return sub_100004F90();
}

uint64_t sub_100001F18()
{
  SpeakerIdSamplingExtensionError.rawValue.getter(*v0);
  sub_100004E20();
}

Swift::Int sub_100001F6C()
{
  v1 = *v0;
  sub_100004F70();
  SpeakerIdSamplingExtensionError.rawValue.getter(v1);
  sub_100004E20();

  return sub_100004F90();
}

uint64_t sub_100001FCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s26SpeakerIdSamplingExtension0abcD5ErrorO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

unint64_t sub_100001FFC@<X0>(unint64_t *a1@<X8>)
{
  result = SpeakerIdSamplingExtensionError.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100002038(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = sub_100004E10();
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();
  v6 = sub_100004D20();
  v2[21] = v6;
  v7 = *(v6 - 8);
  v2[22] = v7;
  v8 = *(v7 + 64) + 15;
  v2[23] = swift_task_alloc();
  v9 = *(*(sub_100004180(&qword_10000C0E0, &qword_100005510) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v10 = sub_100004180(&qword_10000C028, &qword_1000053A0);
  v2[25] = v10;
  v11 = *(v10 - 8);
  v2[26] = v11;
  v12 = *(v11 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_100002200, 0, 0);
}

uint64_t sub_100002200()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  v3 = sub_100004DF0();
  v4 = sub_100004E60();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 128);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "Context: %@", v6, 0xCu);
    sub_1000046FC(v7, &qword_10000C0F0, &qword_100005518);
  }

  v9 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v10 = swift_task_alloc();
  *(v0 + 232) = v10;
  v11 = type metadata accessor for SpeakerIdSamplingExtension();
  *(v0 + 240) = v11;
  v12 = sub_1000045CC(&qword_10000C0C8);
  v13 = sub_1000043D0();
  v14 = sub_100004424();
  *v10 = v0;
  v10[1] = sub_1000023D0;
  v15 = *(v0 + 192);
  v16 = *(v0 + 128);
  v17 = *(v0 + 136);

  return MLHostExtension.loadConfig<A>(context:)(v15, v16, v11, &type metadata for SpeakerIdSamplingExtensionConfig, v12, v13, v14);
}

uint64_t sub_1000023D0()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return _swift_task_switch(sub_1000024CC, 0, 0);
}

uint64_t sub_1000024CC()
{
  v38 = v0;
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v2 + 16);
    v5(v0[28], v0[17] + *(v0[30] + 20), v1);
    if (v4(v3, 1, v1) != 1)
    {
      sub_1000046FC(v0[24], &qword_10000C0E0, &qword_100005510);
    }
  }

  else
  {
    (*(v2 + 32))(v0[28], v3, v1);
    v5 = *(v2 + 16);
  }

  v6 = v0[17];
  v5(v0[27], v0[28], v0[25]);
  v7 = sub_100004DF0();
  v8 = sub_100004E60();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[26];
  v10 = v0[27];
  v12 = v0[25];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v13 = 136315138;
    sub_10000475C();
    v14 = sub_100004F00();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_1000035A8(v14, v16, &v37);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Configuration: %s", v13, 0xCu);
    sub_100004808(v36);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[31] = v17;
  v19 = v0[28];
  v20 = v0[25];
  v21 = v0[23];
  (*(v0[19] + 16))(v0[20], v0[17], v0[18]);
  sub_100004D10();
  v22 = sub_100004D50();
  v0[32] = v22;
  v23 = *(v22 - 8);
  v0[33] = v23;
  v0[34] = *(v23 + 64);
  v0[35] = swift_task_alloc();
  v24 = swift_task_alloc();
  v0[36] = v24;
  v25 = sub_100004D40();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_100004D30();
  v0[37] = v28;
  sub_100004DD0();
  v29 = v0[13];
  v30 = async function pointer to SpeakerIdSamplingWorker.doWork(executor:context:durationThreshold:)[1];
  v31 = swift_task_alloc();
  v0[38] = v31;
  *v31 = v0;
  v31[1] = sub_100002870;
  v32 = v0[23];
  v33 = v0[16];
  v34.n128_u64[0] = v29;

  return SpeakerIdSamplingWorker.doWork(executor:context:durationThreshold:)(v24, v28, v33, v34);
}

uint64_t sub_100002870()
{
  v2 = *(*v1 + 304);
  v3 = *(*v1 + 296);
  v6 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = sub_100002DE8;
  }

  else
  {
    v4 = sub_1000029A0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000029A0()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 256);
  (*(v2 + 32))(v1, *(v0 + 288), v3);

  v4 = swift_task_alloc();
  (*(v2 + 16))(v4, v1, v3);
  v5 = (*(v2 + 88))(v4, v3);
  if (&enum case for LighthouseRuntimeProcessorResult.error(_:) && v5 == enum case for LighthouseRuntimeProcessorResult.error(_:))
  {
    (*(*(v0 + 264) + 96))(v4, *(v0 + 256));
    v6 = *v4;
    if (*v4)
    {
      *(v0 + 112) = v6;
      swift_errorRetain();
      sub_100004180(&qword_10000C0F8, &qword_100005520);
      sub_100004180(&qword_10000C100, &qword_100005528);
      if (swift_dynamicCast())
      {
        v7 = *(v0 + 40);
        sub_1000046FC(v0 + 16, &qword_10000C108, &qword_100005530);
        if (v7)
        {
          v9 = *(v0 + 256);
          v8 = *(v0 + 264);
          v39 = *(v0 + 224);
          v41 = *(v0 + 248);
          v36 = *(v0 + 280);
          v37 = *(v0 + 208);
          v38 = *(v0 + 200);
          v10 = *(v0 + 176);
          v11 = *(v0 + 184);
          v12 = *(v0 + 168);
          *(v0 + 120) = v6;
          swift_errorRetain();
          swift_dynamicCast();
          v13 = objc_allocWithZone(sub_100004D90());
          v14 = sub_100004D70();

          (*(v8 + 8))(v36, v9);
          (*(v10 + 8))(v11, v12);
          v41(v39, v38);

          goto LABEL_20;
        }
      }

      else
      {
        *(v0 + 48) = 0;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
        sub_1000046FC(v0 + 16, &qword_10000C108, &qword_100005530);
      }
    }

    v15 = *(v0 + 136);
    v16 = sub_100004DF0();
    v17 = sub_100004E80();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "task failed with unset error", v18, 2u);
    }
  }

  else if ((!&enum case for LighthouseRuntimeProcessorResult.success(_:) || v5 != enum case for LighthouseRuntimeProcessorResult.success(_:)) && (!&enum case for LighthouseRuntimeProcessorResult.cancelled(_:) || v5 != enum case for LighthouseRuntimeProcessorResult.cancelled(_:)) && (!&enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:) || v5 != enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:)))
  {
    (*(*(v0 + 264) + 8))(v4, *(v0 + 256));
  }

  v19 = *(v0 + 280);
  v20 = *(v0 + 256);
  v21 = *(v0 + 264);
  v40 = *(v0 + 224);
  v42 = *(v0 + 248);
  v23 = *(v0 + 200);
  v22 = *(v0 + 208);
  v24 = *(v0 + 176);
  v25 = *(v0 + 184);
  v26 = *(v0 + 168);

  v27 = objc_allocWithZone(sub_100004D90());
  v14 = sub_100004D80();
  (*(v21 + 8))(v19, v20);
  (*(v24 + 8))(v25, v26);
  v42(v40, v23);
LABEL_20:
  v28 = *(v0 + 280);
  v30 = *(v0 + 216);
  v29 = *(v0 + 224);
  v32 = *(v0 + 184);
  v31 = *(v0 + 192);
  v33 = *(v0 + 160);

  v34 = *(v0 + 8);

  return v34(v14);
}

uint64_t sub_100002DE8()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[17];

  swift_errorRetain();
  v4 = sub_100004DF0();
  v5 = sub_100004E80();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[39];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "unexpected error throws: %@", v7, 0xCu);
    sub_1000046FC(v8, &qword_10000C0F0, &qword_100005518);
  }

  v10 = v0[39];
  v11 = v0[31];
  v12 = v0[28];
  v13 = v0[25];
  v14 = v0[26];
  v16 = v0[22];
  v15 = v0[23];
  v17 = v0[21];

  sub_1000046A8();
  v18 = objc_allocWithZone(sub_100004D90());
  v19 = sub_100004D70();

  (*(v16 + 8))(v15, v17);
  v11(v12, v13);
  v20 = v0[35];
  v22 = v0[27];
  v21 = v0[28];
  v24 = v0[23];
  v23 = v0[24];
  v25 = v0[20];

  v26 = v0[1];

  return v26(v19);
}

uint64_t sub_100003014()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100004CBC;

  return sub_1000048B4();
}

uint64_t sub_1000030B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003148;

  return sub_100002038(a1);
}

uint64_t sub_100003148(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100003244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100003328;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100003328()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000341C(uint64_t a1)
{
  v2 = sub_1000045CC(&qword_10000C0C8);

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_100003484(uint64_t a1)
{
  sub_100004E00();
  v2 = *(a1 + 20);
  sub_1000043D0();
  sub_100004424();
  return sub_100004DC0();
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for SpeakerIdSamplingExtension();
  sub_1000045CC(&qword_10000C000);
  sub_100004D60();
  return 0;
}

uint64_t sub_1000035A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003674(v11, 0, 0, 1, a1, a2);
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
    sub_100004854(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004808(v11);
  return v7;
}

unint64_t sub_100003674(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003780(a5, a6);
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
    result = sub_100004EB0();
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

char *sub_100003780(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000037CC(a1, a2);
  sub_1000038FC(&off_1000087C0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000037CC(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000039E8(v5, 0);
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

  result = sub_100004EB0();
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
        v10 = sub_100004E40();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000039E8(v10, 0);
        result = sub_100004E90();
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

uint64_t sub_1000038FC(uint64_t result)
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

  result = sub_100003A5C(result, v12, 1, v3);
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

void *sub_1000039E8(uint64_t a1, uint64_t a2)
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

  sub_100004180(&qword_10000C118, &qword_100005538);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003A5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004180(&qword_10000C118, &qword_100005538);
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

double sub_100003B50(uint64_t *a1)
{
  v2 = sub_100004180(&qword_10000C0D0, &qword_1000054F8);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = a1[4];
  sub_100004610(a1, a1[3]);
  sub_100004654();
  sub_100004FA0();
  v13 = 0;
  sub_100004EC0();
  v12 = 1;
  sub_100004ED0();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  sub_100004808(a1);
  return v9;
}

uint64_t _s26SpeakerIdSamplingExtension0abcD5ErrorO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_100004F20();

  if (v0 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for SpeakerIdSamplingExtension()
{
  result = qword_10000C3B0;
  if (!qword_10000C3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100003DA0()
{
  result = qword_10000C008;
  if (!qword_10000C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C008);
  }

  return result;
}

unint64_t sub_100003DF8()
{
  result = qword_10000C010;
  if (!qword_10000C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C010);
  }

  return result;
}

unint64_t sub_100003E50()
{
  result = qword_10000C018;
  if (!qword_10000C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C018);
  }

  return result;
}

unint64_t sub_100003EA8()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpeakerIdSamplingExtensionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SpeakerIdSamplingExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100004084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004E10();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100004180(&qword_10000C028, &qword_1000053A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100004180(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000041DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100004E10();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100004180(&qword_10000C028, &qword_1000053A0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1000042E4()
{
  sub_100004E10();
  if (v0 <= 0x3F)
  {
    sub_100004368();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100004368()
{
  if (!qword_10000C088)
  {
    sub_1000043D0();
    sub_100004424();
    v0 = sub_100004DE0();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C088);
    }
  }
}

unint64_t sub_1000043D0()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_100004424()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SpeakerIdSamplingExtensionConfig(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SpeakerIdSamplingExtensionConfig(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SpeakerIdSamplingExtensionConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000045CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SpeakerIdSamplingExtension();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100004610(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100004654()
{
  result = qword_10000C640[0];
  if (!qword_10000C640[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C640);
  }

  return result;
}

unint64_t sub_1000046A8()
{
  result = qword_10000C0E8;
  if (!qword_10000C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E8);
  }

  return result;
}

uint64_t sub_1000046FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004180(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_10000475C()
{
  result = qword_10000C110;
  if (!qword_10000C110)
  {
    sub_1000047C0(&qword_10000C028, &qword_1000053A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C110);
  }

  return result;
}

uint64_t sub_1000047C0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004808(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004854(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000048D4()
{
  if (!sub_100004CC0())
  {
    v1 = *(v0 + 16);
    v2 = sub_100004DF0();
    v3 = sub_100004E70();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_12;
    }

    v4 = "Siri on device metrics disabled. Not continuing.";
LABEL_11:
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, v4, v7, 2u);

    goto LABEL_12;
  }

  sub_100004CF0();
  if ((sub_100004CE0() & 1) == 0)
  {
    v5 = *(v0 + 16);
    v2 = sub_100004DF0();
    v3 = sub_100004E70();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_12;
    }

    v4 = "Neither assistant nor dictation enabled. Not allowed to process.";
    goto LABEL_11;
  }

  if ((sub_100004CD0() & 1) == 0)
  {
    v6 = *(v0 + 16);
    v2 = sub_100004DF0();
    v3 = sub_100004E70();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = "Siri Data Sharing status is not Opted-In. Not allowed to process.";
      goto LABEL_11;
    }

LABEL_12:
  }

  objc_allocWithZone(sub_100004D90());
  v8 = sub_100004D80();
  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t getEnumTagSinglePayload for SpeakerIdSamplingExtensionConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SpeakerIdSamplingExtensionConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100004BB8()
{
  result = qword_10000C750[0];
  if (!qword_10000C750[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C750);
  }

  return result;
}

unint64_t sub_100004C10()
{
  result = qword_10000C860;
  if (!qword_10000C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C860);
  }

  return result;
}

unint64_t sub_100004C68()
{
  result = qword_10000C868[0];
  if (!qword_10000C868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C868);
  }

  return result;
}