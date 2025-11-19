unint64_t sub_10115C1E4()
{
  result = qword_101A2B7A8;
  if (!qword_101A2B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B7A8);
  }

  return result;
}

unint64_t sub_10115C238()
{
  result = qword_101A2B7B0;
  if (!qword_101A2B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B7B0);
  }

  return result;
}

unint64_t sub_10115C28C()
{
  result = qword_101A2B7B8;
  if (!qword_101A2B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B7B8);
  }

  return result;
}

unint64_t sub_10115C2E0()
{
  result = qword_101A2B7C0;
  if (!qword_101A2B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B7C0);
  }

  return result;
}

unint64_t sub_10115C334()
{
  result = qword_101A2B7C8;
  if (!qword_101A2B7C8)
  {
    sub_1005C4E5C(&qword_101A00798);
    sub_10115C3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B7C8);
  }

  return result;
}

unint64_t sub_10115C3B8()
{
  result = qword_101A2B7D0;
  if (!qword_101A2B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B7D0);
  }

  return result;
}

unint64_t sub_10115C40C()
{
  result = qword_101A2B7D8;
  if (!qword_101A2B7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B7D8);
  }

  return result;
}

unint64_t sub_10115C460()
{
  result = qword_101A2B7E0;
  if (!qword_101A2B7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B7E0);
  }

  return result;
}

unint64_t sub_10115C4B4()
{
  result = qword_101A2B7E8;
  if (!qword_101A2B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B7E8);
  }

  return result;
}

unint64_t _s8Freeform17TSContentLanguageO6ModelsO19CharacterPropertiesV12BaselineTypeO8rawValueAISgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101878480, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t _s8Freeform17TSContentLanguageO6ModelsO19CharacterPropertiesV18CapitalizationTypeO8rawValueAISgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018784E8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10115C5A0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101878580, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10115C5EC(void *a1)
{
  v3 = sub_1005B981C(&qword_101A2B8C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - v5;
  v7 = a1[3];
  sub_100020E58(a1, v7);
  sub_10115CC48();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_35;
  }

  LOBYTE(v39) = 2;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v9)
  {
    if (v8 == 0xD000000000000047 && v9 == 0x800000010158A550)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v11[1] = 0;
        v11[2] = 0;
        *v11 = 0;
LABEL_33:
        swift_willThrow();
        goto LABEL_34;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v42) = 3;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v12 = v39;
  if (!v39)
  {
LABEL_16:
    sub_100020E58(a1, a1[3]);
    dispatch thunk of Decoder.userInfo.getter();

    v43 = 0;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v40)
    {
      v37 = v4;
      v14 = KeyedDecodingContainer.codingPath.getter();
      v7 = *(v14 + 16);
      if (v7)
      {
        v42 = _swiftEmptyArrayStorage;
        sub_100034080(0, v7, 0);
        v15 = v42;
        v36 = v14;
        v16 = v14 + 32;
        do
        {
          sub_10000630C(v16, &v39);
          sub_100020E58(&v39, v41);
          v17 = dispatch thunk of CodingKey.stringValue.getter();
          v38 = v18;
          sub_100005070(&v39);
          v42 = v15;
          v20 = v15[2];
          v19 = v15[3];
          if (v20 >= v19 >> 1)
          {
            sub_100034080((v19 > 1), v20 + 1, 1);
            v15 = v42;
          }

          v15[2] = v20 + 1;
          v21 = &v15[2 * v20];
          v22 = v38;
          v21[4] = v17;
          v21[5] = v22;
          v16 += 40;
          --v7;
        }

        while (v7);
      }

      else
      {

        v15 = _swiftEmptyArrayStorage;
      }

      sub_1007CDECC();
      swift_allocError();
      v32 = 0x65727574616566;
      v33 = 0xE700000000000000;
    }

    else
    {
      v7 = v39;
      sub_100020E58(a1, a1[3]);
      dispatch thunk of Decoder.userInfo.getter();

      v43 = 1;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      if ((v40 & 1) == 0)
      {
        (*(v4 + 8))(v6, v3);
        sub_100005070(a1);
        return v7;
      }

      v37 = v4;
      v23 = KeyedDecodingContainer.codingPath.getter();
      v7 = *(v23 + 16);
      if (v7)
      {
        v42 = _swiftEmptyArrayStorage;
        sub_100034080(0, v7, 0);
        v15 = v42;
        v36 = v23;
        v24 = v23 + 32;
        do
        {
          sub_10000630C(v24, &v39);
          sub_100020E58(&v39, v41);
          v25 = dispatch thunk of CodingKey.stringValue.getter();
          v38 = v26;
          sub_100005070(&v39);
          v42 = v15;
          v28 = v15[2];
          v27 = v15[3];
          if (v28 >= v27 >> 1)
          {
            sub_100034080((v27 > 1), v28 + 1, 1);
            v15 = v42;
          }

          v15[2] = v28 + 1;
          v29 = &v15[2 * v28];
          v30 = v38;
          v29[4] = v25;
          v29[5] = v30;
          v24 += 40;
          --v7;
        }

        while (v7);
      }

      else
      {

        v15 = _swiftEmptyArrayStorage;
      }

      sub_1007CDECC();
      swift_allocError();
      v32 = 0x726F7463656C6573;
      v33 = 0xE800000000000000;
    }

    *v31 = v32;
    v31[1] = v33;
    v31[2] = v15;
    swift_willThrow();
    v4 = v37;
    goto LABEL_33;
  }

  if (qword_1019F2920 != -1)
  {
    swift_once();
  }

  if (*(static TSContentLanguage.Models.CharacterProperties.FontFeaturesType.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) >= *&v12[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
  {

    goto LABEL_16;
  }

  sub_1007C8648();
  swift_allocError();
  *v13 = xmmword_101463530;
  *(v13 + 16) = 0;
  swift_willThrow();

LABEL_34:
  (*(v4 + 8))(v6, v3);
LABEL_35:
  sub_100005070(a1);
  return v7;
}

unint64_t sub_10115CC48()
{
  result = qword_101A2B7F8;
  if (!qword_101A2B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B7F8);
  }

  return result;
}

unint64_t _s8Freeform17TSContentLanguageO6ModelsO19CharacterPropertiesV12LigatureTypeO8rawValueAISgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101878600, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t _s8Freeform17TSContentLanguageO6ModelsO19CharacterPropertiesV17StrikethroughTypeO8rawValueAISgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101878668, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t _s8Freeform17TSContentLanguageO6ModelsO19CharacterPropertiesV13UnderlineTypeO8rawValueAISgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018786D0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10115CD80(uint64_t a1)
{
  result = sub_100B0FFFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10115CDE8()
{
  result = qword_101A2B800;
  if (!qword_101A2B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B800);
  }

  return result;
}

unint64_t sub_10115CE3C()
{
  result = qword_101A2B808;
  if (!qword_101A2B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B808);
  }

  return result;
}

unint64_t sub_10115CE90()
{
  result = qword_101A2B810;
  if (!qword_101A2B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B810);
  }

  return result;
}

unint64_t sub_10115CEE8()
{
  result = qword_101A2B818;
  if (!qword_101A2B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B818);
  }

  return result;
}

unint64_t sub_10115CF68()
{
  result = qword_101A2B820;
  if (!qword_101A2B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B820);
  }

  return result;
}

unint64_t sub_10115CFBC()
{
  result = qword_101A2B828;
  if (!qword_101A2B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B828);
  }

  return result;
}

unint64_t sub_10115D010(uint64_t a1)
{
  result = sub_100B0FFA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10115D07C()
{
  result = qword_101A2B830;
  if (!qword_101A2B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B830);
  }

  return result;
}

unint64_t sub_10115D0FC()
{
  result = qword_101A2B838;
  if (!qword_101A2B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B838);
  }

  return result;
}

unint64_t sub_10115D150()
{
  result = qword_101A2B840;
  if (!qword_101A2B840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B840);
  }

  return result;
}

unint64_t sub_10115D1A4(uint64_t a1)
{
  result = sub_100B0FF54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10115D20C(uint64_t a1)
{
  result = sub_100B0FF00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10115D274()
{
  result = qword_101A2B848;
  if (!qword_101A2B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B848);
  }

  return result;
}

unint64_t sub_10115D2CC()
{
  result = qword_101A2B850;
  if (!qword_101A2B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B850);
  }

  return result;
}

unint64_t sub_10115D34C()
{
  result = qword_101A2B858;
  if (!qword_101A2B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B858);
  }

  return result;
}

unint64_t sub_10115D3A0()
{
  result = qword_101A2B860;
  if (!qword_101A2B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B860);
  }

  return result;
}

unint64_t sub_10115D3F4(uint64_t a1)
{
  result = sub_100B0FEAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10115D460()
{
  result = qword_101A2B868;
  if (!qword_101A2B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B868);
  }

  return result;
}

unint64_t sub_10115D4E0()
{
  result = qword_101A2B870;
  if (!qword_101A2B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B870);
  }

  return result;
}

unint64_t sub_10115D534()
{
  result = qword_101A2B878;
  if (!qword_101A2B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B878);
  }

  return result;
}

unint64_t sub_10115D588(uint64_t a1)
{
  result = sub_100B0FE58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10115D5F4()
{
  result = qword_101A2B880;
  if (!qword_101A2B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B880);
  }

  return result;
}

uint64_t sub_10115D674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10115D6B0()
{
  result = qword_101A2B888;
  if (!qword_101A2B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B888);
  }

  return result;
}

unint64_t sub_10115D704()
{
  result = qword_101A2B890;
  if (!qword_101A2B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B890);
  }

  return result;
}

unint64_t sub_10115D758(uint64_t a1)
{
  result = sub_100B0FE04();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10115D7C0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[2] = a4();
  a1[3] = a5();
  result = a6();
  a1[4] = result;
  return result;
}

uint64_t sub_10115D81C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 892))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 168) >> 1;
  v4 = -2 - v3;
  if (-2 - v3 < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t sub_10115D880(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 888) = 0;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 892) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 892) = 0;
    }

    if (a2)
    {
      *(result + 152) = 0u;
      *(result + 136) = 0u;
      *(result + 120) = 0u;
      *(result + 104) = 0u;
      *(result + 88) = 0u;
      *(result + 72) = 0u;
      *(result + 56) = 0u;
      *(result + 168) = 2 * ~a2;
      *(result + 176) = 0u;
      *(result + 192) = 0u;
      *(result + 208) = 0u;
      *(result + 224) = 0u;
      *(result + 240) = 0u;
      *(result + 256) = 0u;
      *(result + 272) = 0u;
      *(result + 288) = 0u;
      *(result + 304) = 0u;
      *(result + 320) = 0u;
      *(result + 336) = 0u;
      *(result + 352) = 0u;
      *(result + 368) = 0u;
      *(result + 384) = 0u;
      *(result + 400) = 0u;
      *(result + 416) = 0u;
      *(result + 432) = 0u;
      *(result + 448) = 0;
    }
  }

  return result;
}

uint64_t _s19CharacterPropertiesV9CodingKeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDA)
  {
    goto LABEL_17;
  }

  if (a2 + 38 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 38) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 38;
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

      return (*a1 | (v4 << 8)) - 38;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 38;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x27;
  v8 = v6 - 39;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s19CharacterPropertiesV9CodingKeyOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 38 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 38) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDA)
  {
    v4 = 0;
  }

  if (a2 > 0xD9)
  {
    v5 = ((a2 - 218) >> 8) + 1;
    *result = a2 + 38;
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
    *result = a2 + 38;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10115DBE0()
{
  result = qword_101A2B898;
  if (!qword_101A2B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B898);
  }

  return result;
}

unint64_t sub_10115DC38()
{
  result = qword_101A2B8A0;
  if (!qword_101A2B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B8A0);
  }

  return result;
}

unint64_t sub_10115DC90()
{
  result = qword_101A2B8A8;
  if (!qword_101A2B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B8A8);
  }

  return result;
}

unint64_t sub_10115DCE8()
{
  result = qword_101A2B8B0;
  if (!qword_101A2B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B8B0);
  }

  return result;
}

unint64_t sub_10115DD40()
{
  result = qword_101A2B8B8;
  if (!qword_101A2B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B8B8);
  }

  return result;
}

unint64_t sub_10115DD98()
{
  result = qword_101A2B8C0;
  if (!qword_101A2B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B8C0);
  }

  return result;
}

unint64_t sub_10115DDEC()
{
  result = qword_101A2B8D0;
  if (!qword_101A2B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B8D0);
  }

  return result;
}

id sub_10115DE68()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.WritingDirectionType.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.WritingDirectionType.version.unsafeMutableAddressor()
{
  if (qword_1019F2940 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.WritingDirectionType.version;
}

id static TSContentLanguage.Models.WritingDirectionType.version.getter()
{
  if (qword_1019F2940 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.WritingDirectionType.version;

  return v1;
}

uint64_t TSContentLanguage.Models.WritingDirectionType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x5F6F745F7466656CLL;
  }

  if (a1 == 1)
  {
    return 0x6C61727574616ELL;
  }

  return 0x6F745F7468676972;
}

uint64_t sub_10115DFFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6C61727574616ELL;
  if (v2 != 1)
  {
    v4 = 0x6F745F7468676972;
    v3 = 0xED00007466656C5FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x5F6F745F7466656CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED00007468676972;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6C61727574616ELL;
  if (*a2 != 1)
  {
    v8 = 0x6F745F7468676972;
    v7 = 0xED00007466656C5FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x5F6F745F7466656CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED00007468676972;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10115E120()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10115E1DC()
{
  String.hash(into:)();
}

Swift::Int sub_10115E284()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10115E33C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform17TSContentLanguageO6ModelsO20WritingDirectionTypeO8rawValueAGSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10115E36C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00007468676972;
  v4 = 0xE700000000000000;
  v5 = 0x6C61727574616ELL;
  if (v2 != 1)
  {
    v5 = 0x6F745F7468676972;
    v4 = 0xED00007466656C5FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x5F6F745F7466656CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t _s8Freeform17TSContentLanguageO6ModelsO20WritingDirectionTypeO8rawValueAGSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101878750, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10115E4E4()
{
  result = qword_101A2B8D8;
  if (!qword_101A2B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B8D8);
  }

  return result;
}

unint64_t sub_10115E538(uint64_t a1)
{
  *(a1 + 8) = sub_10115E568();
  result = sub_10115E5BC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10115E568()
{
  result = qword_101A2B8E0;
  if (!qword_101A2B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B8E0);
  }

  return result;
}

unint64_t sub_10115E5BC()
{
  result = qword_101A2B8E8;
  if (!qword_101A2B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B8E8);
  }

  return result;
}

unint64_t sub_10115E610(uint64_t a1)
{
  result = sub_100B0FABC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10115E638(void *a1)
{
  a1[2] = sub_1007CE2A8();
  a1[3] = sub_10114D494();
  result = sub_10115E4E4();
  a1[4] = result;
  return result;
}

uint64_t *TSContentLanguage.Models.Paragraph.version.unsafeMutableAddressor()
{
  if (qword_1019F2948 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Paragraph.version;
}

uint64_t TSContentLanguage.Models.Paragraph.listStart.setter(uint64_t result, char a2)
{
  *(v2 + 1712) = result;
  *(v2 + 1720) = a2 & 1;
  return result;
}

uint64_t TSContentLanguage.Models.Paragraph.listLevel.setter(uint64_t result, char a2)
{
  *(v2 + 1728) = result;
  *(v2 + 1736) = a2 & 1;
  return result;
}

uint64_t TSContentLanguage.Models.Paragraph.runs.setter(uint64_t a1)
{

  *(v1 + 1744) = a1;
  return result;
}

void *TSContentLanguage.Models.Paragraph.init(style:listStyle:listStart:listLevel:writingDirection:runs:breakType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  __chkstk_darwin(a1);
  v26 = v9;
  v27 = v10;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_1005BC630(__src);
  memcpy(__dst, __src, 0x5C5uLL);
  sub_1005BC6F0(v31);
  *&__dst[209] = v31[12];
  *&__dst[211] = v31[13];
  *&__dst[201] = v31[8];
  *&__dst[203] = v31[9];
  *&__dst[205] = v31[10];
  *&__dst[207] = v31[11];
  *&__dst[193] = v31[4];
  *&__dst[195] = v31[5];
  *&__dst[197] = v31[6];
  *&__dst[199] = v31[7];
  *&__dst[185] = v31[0];
  *&__dst[187] = v31[1];
  *&__dst[189] = v31[2];
  *&__dst[191] = v31[3];
  LOBYTE(__dst[213]) = v32;
  sub_10002C638(v24, __dst, &qword_101A003D8);
  sub_10002C638(v22, &__dst[185], &qword_101A00730);
  __dst[214] = v20;
  LOBYTE(__dst[215]) = v18 & 1;
  __dst[216] = v16;
  LOBYTE(__dst[217]) = v14 & 1;
  BYTE1(__dst[217]) = v12;
  __dst[218] = v26;
  LOBYTE(__dst[219]) = a9;
  memcpy(v33, __dst, 0x6D9uLL);
  memcpy(v34, __dst, 0x6D9uLL);
  sub_10067F194(v33, v28);
  sub_10067F1F0(v34);
  return memcpy(v27, v33, 0x6D9uLL);
}

unint64_t sub_10115EADC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656C797473;
    v6 = 0x6174735F7473696CLL;
    if (a1 != 2)
    {
      v6 = 0x76656C5F7473696CLL;
    }

    if (a1)
    {
      v5 = 0x7974735F7473696CLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x79745F6B61657262;
    v2 = 0x6564695F65707974;
    if (a1 != 7)
    {
      v2 = 0x6E6F6973726576;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (a1 != 4)
    {
      v3 = 1936618866;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_10115EC1C()
{
  Hasher.init(_seed:)();
  sub_100CB08A8();
  return Hasher._finalize()();
}

Swift::Int sub_10115EC6C()
{
  Hasher.init(_seed:)();
  sub_100CB08A8();
  return Hasher._finalize()();
}

unint64_t sub_10115ECB0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101160B2C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10115ECE0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10115EADC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10115ED28@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_101160B2C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10115ED5C(uint64_t a1)
{
  v2 = sub_101161BC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10115ED98(uint64_t a1)
{
  v2 = sub_101161BC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *TSContentLanguage.Models.Paragraph.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_101160B78(a1);
  if (!v2)
  {
    return memcpy(a2, v5, 0x6D9uLL);
  }

  return result;
}

uint64_t TSContentLanguage.Models.Paragraph.encode(to:)(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v1;
  v5 = v4;
  v6 = sub_1005B981C(&qword_101A2B8F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - v8;
  sub_100020E58(v5, v5[3]);
  sub_101161BC8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(v62, v3, 0x5C5uLL);
  memcpy(v49, v3, sizeof(v49));
  v65 = 0;
  sub_10000BE14(v62, v48, &qword_101A003D8);
  sub_1007C8798();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    memcpy(v48, v49, 0x5C5uLL);
    sub_10000CAAC(v48, &qword_101A003D8);
  }

  else
  {
    memcpy(v48, v49, 0x5C5uLL);
    sub_10000CAAC(v48, &qword_101A003D8);
    v10 = *(v3 + 1656);
    v11 = *(v3 + 1688);
    v59 = *(v3 + 1672);
    v60 = v11;
    v12 = *(v3 + 1592);
    v13 = *(v3 + 1624);
    v55 = *(v3 + 1608);
    v56 = v13;
    v15 = *(v3 + 1624);
    v14 = *(v3 + 1640);
    v16 = v14;
    v58 = *(v3 + 1656);
    v57 = v14;
    v17 = *(v3 + 1528);
    v18 = *(v3 + 1560);
    v51 = *(v3 + 1544);
    v52 = v18;
    v20 = *(v3 + 1560);
    v19 = *(v3 + 1576);
    v21 = v19;
    v54 = *(v3 + 1592);
    v53 = v19;
    v22 = *(v3 + 1496);
    v50[0] = *(v3 + 1480);
    v50[1] = v22;
    v23 = *(v3 + 1512);
    v25 = *(v3 + 1480);
    v24 = *(v3 + 1496);
    v26 = v23;
    v50[3] = *(v3 + 1528);
    v50[2] = v23;
    v27 = *(v3 + 1688);
    v45 = v59;
    v46 = v27;
    v41 = v55;
    v42 = v15;
    v43 = v16;
    v44 = v10;
    v37 = v51;
    v38 = v20;
    v39 = v21;
    v40 = v12;
    v33 = v25;
    v34 = v24;
    v61 = *(v3 + 1704);
    v47 = *(v3 + 1704);
    v35 = v26;
    v36 = v17;
    v64 = 1;
    sub_10000BE14(v50, v31, &qword_101A00730);
    sub_10114ADBC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v31[12] = v45;
    v31[13] = v46;
    v32 = v47;
    v31[8] = v41;
    v31[9] = v42;
    v31[10] = v43;
    v31[11] = v44;
    v31[4] = v37;
    v31[5] = v38;
    v31[6] = v39;
    v31[7] = v40;
    v31[0] = v33;
    v31[1] = v34;
    v31[2] = v35;
    v31[3] = v36;
    sub_10000CAAC(v31, &qword_101A00730);
    LOBYTE(v30) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v30) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v30) = *(v3 + 1737);
    v63 = 4;
    sub_10114D494();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v30 = *(v3 + 1744);
    v63 = 5;
    sub_1005B981C(&qword_101A00750);
    sub_101161C1C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v30) = *(v3 + 1752);
    v63 = 6;
    sub_101161CA0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v30) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F2948 != -1)
    {
      swift_once();
    }

    v30 = static TSContentLanguage.Models.Paragraph.version;
    v63 = 8;
    type metadata accessor for TSCLVersion();
    sub_100969804(&qword_101A00458);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t TSContentLanguage.Models.Paragraph.isEquivalent(to:)(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v39, a1, 0x5C5uLL);
  if ((sub_1007C41A4(v39) & 1) == 0)
  {
    return 0;
  }

  v38 = *(v1 + 1704);
  v3 = *(v1 + 1688);
  v36 = *(v1 + 1672);
  v37 = v3;
  v4 = *(v1 + 1624);
  v32 = *(v1 + 1608);
  v33 = v4;
  v5 = *(v1 + 1656);
  v34 = *(v1 + 1640);
  v35 = v5;
  v6 = *(v1 + 1560);
  v28 = *(v1 + 1544);
  v29 = v6;
  v7 = *(v1 + 1592);
  v30 = *(v1 + 1576);
  v31 = v7;
  v8 = *(v1 + 1496);
  v24 = *(v1 + 1480);
  v25 = v8;
  v9 = *(v1 + 1528);
  v26 = *(v1 + 1512);
  v27 = v9;
  v10 = *(a1 + 1688);
  v22[12] = *(a1 + 1672);
  v22[13] = v10;
  v23 = *(a1 + 1704);
  v11 = *(a1 + 1624);
  v22[8] = *(a1 + 1608);
  v22[9] = v11;
  v12 = *(a1 + 1656);
  v22[10] = *(a1 + 1640);
  v22[11] = v12;
  v13 = *(a1 + 1560);
  v22[4] = *(a1 + 1544);
  v22[5] = v13;
  v14 = *(a1 + 1592);
  v22[6] = *(a1 + 1576);
  v22[7] = v14;
  v15 = *(a1 + 1496);
  v22[0] = *(a1 + 1480);
  v22[1] = v15;
  v16 = *(a1 + 1528);
  v22[2] = *(a1 + 1512);
  v22[3] = v16;
  if ((sub_1007C46B0(v22) & 1) == 0)
  {
    return 0;
  }

  v17 = *(a1 + 1720);
  if (*(v1 + 1720))
  {
    if (!*(a1 + 1720))
    {
      return 0;
    }
  }

  else
  {
    if (*(v1 + 1712) != *(a1 + 1712))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = *(a1 + 1736);
  if (*(v1 + 1736))
  {
    if (!*(a1 + 1736))
    {
      return 0;
    }
  }

  else
  {
    if (*(v1 + 1728) != *(a1 + 1728))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (!sub_1007C4E98(*(a1 + 1737), *(v1 + 1737)) || (sub_100B5E04C(*(a1 + 1744), *(v1 + 1744)) & 1) == 0)
  {
    return 0;
  }

  v19 = *(v1 + 1752);
  v20 = *(a1 + 1752);
  if (v19 == 5)
  {
    return v20 == 5;
  }

  if (v20 == 5)
  {
    return 0;
  }

  return sub_100B69940(v19, v20);
}

BOOL sub_10115F5BC(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x6D9uLL);
  memcpy(__dst, a2, sizeof(__dst));
  return _s8Freeform17TSContentLanguageO6ModelsO9ParagraphV23__derived_struct_equalsySbAG_AGtFZ_0(v4);
}

void *TSContentLanguage.Models.Paragraph.BreakType.version.unsafeMutableAddressor()
{
  if (qword_1019F2950 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Paragraph.BreakType.version;
}

uint64_t TSContentLanguage.Models.Paragraph.BreakType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E6D756C6F63;
  v2 = 0x6369706F746E6F6ELL;
  v3 = 1701273968;
  if (a1 != 3)
  {
    v3 = 1634886000;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 1701736302;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_10115F750()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10115F818()
{
  String.hash(into:)();
}

Swift::Int sub_10115F8CC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10115F990@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform17TSContentLanguageO6ModelsO9ParagraphV9BreakTypeO8rawValueAISgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10115F9C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6D756C6F63;
  v5 = 0xE800000000000000;
  v6 = 0x6369706F746E6F6ELL;
  v7 = 1701273968;
  if (v2 != 3)
  {
    v7 = 1634886000;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO9ParagraphV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  memcpy(v212, v3, 0x5C5uLL);
  memcpy(v211, v2, 0x5C5uLL);
  memcpy(v210, v4, 0x5C5uLL);
  memcpy(&v210[92] + 8, v2, 0x5C5uLL);
  memcpy(v243, v4, 0x5C5uLL);
  if (sub_1007C8620(v243) == 1)
  {
    memcpy(v209, v2, 0x5C5uLL);
    if (sub_1007C8620(v209) == 1)
    {
      memcpy(v208, v4, 0x5C5uLL);
      sub_10000BE14(v212, __dst, &qword_101A003D8);
      sub_10000BE14(v211, __dst, &qword_101A003D8);
      v5 = v208;
      goto LABEL_17;
    }

LABEL_5:
    memcpy(v209, v210, 0xB8DuLL);
    sub_10000BE14(v212, v208, &qword_101A003D8);
    sub_10000BE14(v211, v208, &qword_101A003D8);
    v6 = &qword_101A009C0;
LABEL_22:
    v88 = v209;
LABEL_47:
    sub_10000CAAC(v88, v6);
    return 0;
  }

  memcpy(v209, v2, 0x5C5uLL);
  if (sub_1007C8620(v209) == 1)
  {
    goto LABEL_5;
  }

  memcpy(__dst, v2, 0x5C5uLL);
  memcpy(v208, v4, 0x5C5uLL);
  v7 = sub_1007CF078(v208);
  if (v7)
  {
    if (v7 == 1)
    {
      v10 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v208, *&v8);
      memcpy(v241, v10, 0x5C4uLL);
      memcpy(v188, v2, sizeof(v188));
      if (sub_1007CF078(v188) == 1)
      {
        v13 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v188, *&v11);
        memcpy(v242, v13, sizeof(v242));
        sub_10000BE14(v212, &v173, &qword_101A003D8);
        sub_10000BE14(v211, &v173, &qword_101A003D8);
        v14 = _s8Freeform17TSContentLanguageO6ModelsO22ScaffoldParagraphStyleV23__derived_struct_equalsySbAG_AGtFZ_0(v241);
        goto LABEL_12;
      }
    }

    else
    {
      memcpy(v188, v2, sizeof(v188));
      if (sub_1007CF078(v188) == 2)
      {
        sub_10000BE14(v212, &v173, &qword_101A003D8);
        sub_10000BE14(v211, &v173, &qword_101A003D8);
        goto LABEL_16;
      }
    }

LABEL_23:
    sub_10000BE14(v212, &v173, &qword_101A003D8);
    sub_10000BE14(v211, &v173, &qword_101A003D8);
    sub_10000CAAC(__dst, &qword_101A003D8);
LABEL_24:
    memcpy(v188, v210, sizeof(v188));
    v6 = &qword_101A003D8;
    v88 = v188;
    goto LABEL_47;
  }

  v15 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v208, *&v8);
  memcpy(v241, v15, 0x594uLL);
  memcpy(v188, v2, sizeof(v188));
  if (sub_1007CF078(v188))
  {
    goto LABEL_23;
  }

  v18 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v188, *&v16);
  memcpy(v242, v18, 0x594uLL);
  sub_10000BE14(v212, &v173, &qword_101A003D8);
  sub_10000BE14(v211, &v173, &qword_101A003D8);
  v14 = _s8Freeform17TSContentLanguageO6ModelsO19ParagraphPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(v241);
LABEL_12:
  v19 = v14;
  sub_10000CAAC(__dst, &qword_101A003D8);
  if (!v19)
  {
    goto LABEL_24;
  }

LABEL_16:
  memcpy(v188, v210, sizeof(v188));
  v5 = v188;
LABEL_17:
  sub_10000CAAC(v5, &qword_101A003D8);
  v20 = (v4 + 1480);
  v21 = *(v4 + 1656);
  v22 = *(v4 + 1688);
  v208[12] = *(v4 + 1672);
  v208[13] = v22;
  v23 = *(v4 + 1592);
  v24 = *(v4 + 1624);
  v208[8] = *(v4 + 1608);
  v208[9] = v24;
  v26 = *(v4 + 1624);
  v25 = *(v4 + 1640);
  v27 = v25;
  v208[11] = *(v4 + 1656);
  v208[10] = v25;
  v28 = *(v4 + 1528);
  v29 = *(v4 + 1560);
  v208[4] = *(v4 + 1544);
  v208[5] = v29;
  v30 = *(v4 + 1560);
  v31 = *(v4 + 1576);
  v32 = v31;
  v208[7] = *(v4 + 1592);
  v208[6] = v31;
  v33 = *(v4 + 1496);
  v208[0] = *(v4 + 1480);
  v208[1] = v33;
  v34 = *(v4 + 1512);
  v35 = *(v4 + 1480);
  v36 = *(v4 + 1496);
  v37 = v34;
  v208[3] = *(v4 + 1528);
  v208[2] = v34;
  v38 = (v2 + 1480);
  v39 = *(v2 + 1656);
  v40 = *(v2 + 1688);
  __dst[12] = *(v2 + 1672);
  __dst[13] = v40;
  v41 = *(v2 + 1592);
  v42 = *(v2 + 1624);
  __dst[8] = *(v2 + 1608);
  __dst[9] = v42;
  v44 = *(v2 + 1624);
  v43 = *(v2 + 1640);
  v45 = v43;
  __dst[11] = *(v2 + 1656);
  __dst[10] = v43;
  v46 = *(v2 + 1528);
  v47 = *(v2 + 1560);
  __dst[4] = *(v2 + 1544);
  __dst[5] = v47;
  v49 = *(v2 + 1560);
  v48 = *(v2 + 1576);
  v50 = v48;
  __dst[7] = *(v2 + 1592);
  __dst[6] = v48;
  v51 = *(v2 + 1496);
  v52 = v51;
  __dst[0] = *(v2 + 1480);
  __dst[1] = v51;
  v53 = *(v2 + 1512);
  __dst[3] = *(v2 + 1528);
  __dst[2] = v53;
  v54 = *(v4 + 1656);
  v55 = *(v4 + 1688);
  v210[12] = *(v4 + 1672);
  v210[13] = v55;
  v56 = *(v4 + 1592);
  v57 = *(v4 + 1624);
  v210[8] = *(v4 + 1608);
  v210[9] = v57;
  v58 = *(v4 + 1640);
  v210[11] = v54;
  v210[10] = v58;
  v59 = *(v4 + 1528);
  v60 = *(v4 + 1560);
  v210[4] = *(v4 + 1544);
  v210[5] = v60;
  v61 = *(v4 + 1576);
  v210[7] = v56;
  v210[6] = v61;
  v62 = *(v4 + 1496);
  v210[0] = *(v4 + 1480);
  v210[1] = v62;
  v63 = *(v4 + 1512);
  v210[3] = v59;
  v210[2] = v63;
  v64 = *(v2 + 1688);
  *(&v210[26] + 8) = __dst[12];
  *(&v210[27] + 8) = v64;
  *(&v210[22] + 8) = __dst[8];
  *(&v210[23] + 8) = v44;
  *(&v210[24] + 8) = v45;
  *(&v210[25] + 8) = v39;
  *(&v210[18] + 8) = __dst[4];
  *(&v210[19] + 8) = v49;
  *(&v210[20] + 8) = v50;
  *(&v210[21] + 8) = v41;
  *(&v210[16] + 8) = v53;
  *(&v210[17] + 8) = v46;
  *(&v210[14] + 8) = __dst[0];
  *(&v210[15] + 8) = v52;
  v65 = *(v4 + 1688);
  *&v188[192] = v208[12];
  *&v188[208] = v65;
  *&v188[128] = v208[8];
  *&v188[144] = v26;
  *&v188[176] = v21;
  *&v188[160] = v27;
  *&v188[64] = v208[4];
  *&v188[80] = v30;
  *&v188[112] = v23;
  *&v188[96] = v32;
  *v188 = v35;
  *&v188[16] = v36;
  LOBYTE(v208[14]) = v4[1704];
  LOBYTE(__dst[14]) = *(v2 + 1704);
  LOBYTE(v210[14]) = v4[1704];
  BYTE8(v210[28]) = *(v2 + 1704);
  v188[224] = v4[1704];
  *&v188[48] = v28;
  *&v188[32] = v37;
  if (sub_1007CE5DC(v188) == 1)
  {
    v66 = *(v2 + 1688);
    v209[12] = *(v2 + 1672);
    v209[13] = v66;
    LOBYTE(v209[14]) = *(v2 + 1704);
    v67 = *(v2 + 1624);
    v209[8] = *(v2 + 1608);
    v209[9] = v67;
    v68 = *(v2 + 1640);
    v209[11] = *(v2 + 1656);
    v209[10] = v68;
    v69 = *(v2 + 1560);
    v209[4] = *(v2 + 1544);
    v209[5] = v69;
    v70 = *(v2 + 1576);
    v209[7] = *(v2 + 1592);
    v209[6] = v70;
    v71 = *(v2 + 1496);
    v209[0] = *v38;
    v209[1] = v71;
    v72 = *(v2 + 1512);
    v209[3] = *(v2 + 1528);
    v209[2] = v72;
    if (sub_1007CE5DC(v209) == 1)
    {
      v73 = *(v4 + 1688);
      v185 = *(v4 + 1672);
      v186 = v73;
      v187 = v4[1704];
      v74 = *(v4 + 1624);
      v181 = *(v4 + 1608);
      v182 = v74;
      v75 = *(v4 + 1656);
      v183 = *(v4 + 1640);
      v184 = v75;
      v76 = *(v4 + 1560);
      v177 = *(v4 + 1544);
      v178 = v76;
      v77 = *(v4 + 1592);
      v179 = *(v4 + 1576);
      v180 = v77;
      v78 = *(v4 + 1496);
      v173 = *v20;
      v174 = v78;
      v79 = *(v4 + 1528);
      v175 = *(v4 + 1512);
      v176 = v79;
      sub_10000BE14(v208, v205, &qword_101A00730);
      sub_10000BE14(__dst, v205, &qword_101A00730);
      v80 = &v173;
      goto LABEL_36;
    }

    goto LABEL_21;
  }

  v81 = *(v2 + 1688);
  v209[12] = *(v2 + 1672);
  v209[13] = v81;
  LOBYTE(v209[14]) = *(v2 + 1704);
  v82 = *(v2 + 1624);
  v209[8] = *(v2 + 1608);
  v209[9] = v82;
  v83 = *(v2 + 1640);
  v209[11] = *(v2 + 1656);
  v209[10] = v83;
  v84 = *(v2 + 1560);
  v209[4] = *(v2 + 1544);
  v209[5] = v84;
  v85 = *(v2 + 1576);
  v209[7] = *(v2 + 1592);
  v209[6] = v85;
  v86 = *(v2 + 1496);
  v209[0] = *v38;
  v209[1] = v86;
  v87 = *(v2 + 1512);
  v209[3] = *(v2 + 1528);
  v209[2] = v87;
  if (sub_1007CE5DC(v209) == 1)
  {
LABEL_21:
    memcpy(v209, v210, 0x1C9uLL);
    sub_10000BE14(v208, &v173, &qword_101A00730);
    sub_10000BE14(__dst, &v173, &qword_101A00730);
    v6 = &unk_101A00738;
    goto LABEL_22;
  }

  v89 = *(v2 + 1688);
  v205[12] = *(v2 + 1672);
  v205[13] = v89;
  v206 = *(v2 + 1704);
  v90 = *(v2 + 1624);
  v205[8] = *(v2 + 1608);
  v205[9] = v90;
  v91 = *(v2 + 1640);
  v205[11] = *(v2 + 1656);
  v205[10] = v91;
  v92 = *(v2 + 1560);
  v205[4] = *(v2 + 1544);
  v205[5] = v92;
  v93 = *(v2 + 1576);
  v205[7] = *(v2 + 1592);
  v205[6] = v93;
  v94 = *(v2 + 1496);
  v205[0] = *v38;
  v205[1] = v94;
  v95 = *(v2 + 1512);
  v205[3] = *(v2 + 1528);
  v205[2] = v95;
  v96 = *(v4 + 1688);
  v185 = *(v4 + 1672);
  v186 = v96;
  v187 = v4[1704];
  v97 = *(v4 + 1624);
  v181 = *(v4 + 1608);
  v182 = v97;
  v98 = *(v4 + 1656);
  v183 = *(v4 + 1640);
  v184 = v98;
  v99 = *(v4 + 1560);
  v177 = *(v4 + 1544);
  v178 = v99;
  v100 = *(v4 + 1592);
  v179 = *(v4 + 1576);
  v180 = v100;
  v101 = *(v4 + 1496);
  v173 = *v20;
  v174 = v101;
  v102 = *(v4 + 1528);
  v175 = *(v4 + 1512);
  v176 = v102;
  v103 = sub_1007CE5F0(&v173);
  if (v103)
  {
    if (v103 == 1)
    {
      v106 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v173, *&v104);
      v107 = v106[11];
      v223 = v106[10];
      v224 = v107;
      v108 = v106[13];
      v225 = v106[12];
      v226 = v108;
      v109 = v106[7];
      v219 = v106[6];
      v220 = v109;
      v110 = v106[9];
      v221 = v106[8];
      v222 = v110;
      v111 = v106[3];
      v215 = v106[2];
      v216 = v111;
      v112 = v106[5];
      v217 = v106[4];
      v218 = v112;
      v113 = v106[1];
      v213 = *v106;
      v214 = v113;
      v204 = *(v2 + 1704);
      v114 = *(v2 + 1672);
      v203 = *(v2 + 1688);
      v202 = v114;
      v115 = *(v2 + 1640);
      v201 = *(v2 + 1656);
      v200 = v115;
      v116 = *(v2 + 1608);
      v199 = *(v2 + 1624);
      v198 = v116;
      v117 = *(v2 + 1576);
      v197 = *(v2 + 1592);
      v196 = v117;
      v118 = *(v2 + 1544);
      v195 = *(v2 + 1560);
      v194 = v118;
      v119 = *(v2 + 1512);
      v193 = *(v2 + 1528);
      v192 = v119;
      v120 = *v38;
      v191 = *(v2 + 1496);
      v190 = v120;
      if (sub_1007CE5F0(&v190) == 1)
      {
        v123 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v190, *&v121);
        v124 = v123[11];
        v237 = v123[10];
        v238 = v124;
        v125 = v123[13];
        v239 = v123[12];
        v240 = v125;
        v126 = v123[7];
        v233 = v123[6];
        v234 = v126;
        v127 = v123[9];
        v235 = v123[8];
        v236 = v127;
        v128 = v123[3];
        v229 = v123[2];
        v230 = v128;
        v129 = v123[5];
        v231 = v123[4];
        v232 = v129;
        v130 = v123[1];
        v227 = *v123;
        v228 = v130;
        sub_10000BE14(v208, v189, &qword_101A00730);
        sub_10000BE14(__dst, v189, &qword_101A00730);
        v131 = _s8Freeform17TSContentLanguageO6ModelsO17ScaffoldListStyleV23__derived_struct_equalsySbAG_AGtFZ_0(&v213, &v227);
        goto LABEL_31;
      }
    }

    else
    {
      v154 = *(v2 + 1688);
      v202 = *(v2 + 1672);
      v203 = v154;
      v204 = *(v2 + 1704);
      v155 = *(v2 + 1624);
      v198 = *(v2 + 1608);
      v199 = v155;
      v156 = *(v2 + 1640);
      v201 = *(v2 + 1656);
      v200 = v156;
      v157 = *(v2 + 1560);
      v194 = *(v2 + 1544);
      v195 = v157;
      v158 = *(v2 + 1576);
      v197 = *(v2 + 1592);
      v196 = v158;
      v159 = *(v2 + 1496);
      v190 = *v38;
      v191 = v159;
      v160 = *(v2 + 1512);
      v193 = *(v2 + 1528);
      v192 = v160;
      if (sub_1007CE5F0(&v190) == 2)
      {
        sub_10000BE14(v208, v189, &qword_101A00730);
        sub_10000BE14(__dst, v189, &qword_101A00730);
        goto LABEL_35;
      }
    }

LABEL_45:
    sub_10000BE14(v208, v189, &qword_101A00730);
    sub_10000BE14(__dst, v189, &qword_101A00730);
    sub_10000CAAC(v205, &qword_101A00730);
LABEL_46:
    v202 = v210[12];
    v203 = v210[13];
    v204 = v210[14];
    v198 = v210[8];
    v199 = v210[9];
    v201 = v210[11];
    v200 = v210[10];
    v194 = v210[4];
    v195 = v210[5];
    v197 = v210[7];
    v196 = v210[6];
    v190 = v210[0];
    v191 = v210[1];
    v193 = v210[3];
    v192 = v210[2];
    v6 = &qword_101A00730;
    v88 = &v190;
    goto LABEL_47;
  }

  v132 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v173, *&v104);
  v133 = v132[9];
  v221 = v132[8];
  v222 = v133;
  v223 = v132[10];
  v134 = v132[5];
  v217 = v132[4];
  v218 = v134;
  v135 = v132[6];
  v220 = v132[7];
  v219 = v135;
  v136 = v132[1];
  v213 = *v132;
  v214 = v136;
  v137 = v132[2];
  v216 = v132[3];
  v215 = v137;
  v204 = *(v2 + 1704);
  v138 = *(v2 + 1672);
  v203 = *(v2 + 1688);
  v202 = v138;
  v139 = *(v2 + 1640);
  v201 = *(v2 + 1656);
  v200 = v139;
  v140 = *(v2 + 1608);
  v199 = *(v2 + 1624);
  v198 = v140;
  v141 = *(v2 + 1576);
  v197 = *(v2 + 1592);
  v196 = v141;
  v142 = *(v2 + 1544);
  v195 = *(v2 + 1560);
  v194 = v142;
  v143 = *(v2 + 1512);
  v193 = *(v2 + 1528);
  v192 = v143;
  v144 = *v38;
  v191 = *(v2 + 1496);
  v190 = v144;
  if (sub_1007CE5F0(&v190))
  {
    goto LABEL_45;
  }

  v147 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v190, *&v145);
  v148 = v147[9];
  v235 = v147[8];
  v236 = v148;
  v237 = v147[10];
  v149 = v147[5];
  v231 = v147[4];
  v232 = v149;
  v150 = v147[6];
  v234 = v147[7];
  v233 = v150;
  v151 = v147[1];
  v227 = *v147;
  v228 = v151;
  v152 = v147[2];
  v230 = v147[3];
  v229 = v152;
  sub_10000BE14(v208, v189, &qword_101A00730);
  sub_10000BE14(__dst, v189, &qword_101A00730);
  v131 = _s8Freeform17TSContentLanguageO6ModelsO14ListPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(&v213, &v227);
LABEL_31:
  v153 = v131;
  sub_10000CAAC(v205, &qword_101A00730);
  if ((v153 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_35:
  v202 = v210[12];
  v203 = v210[13];
  v204 = v210[14];
  v198 = v210[8];
  v199 = v210[9];
  v201 = v210[11];
  v200 = v210[10];
  v194 = v210[4];
  v195 = v210[5];
  v197 = v210[7];
  v196 = v210[6];
  v190 = v210[0];
  v191 = v210[1];
  v193 = v210[3];
  v192 = v210[2];
  v80 = &v190;
LABEL_36:
  sub_10000CAAC(v80, &qword_101A00730);
  v161 = *(v2 + 1720);
  if (v4[1720])
  {
    if (!*(v2 + 1720))
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 214) != *(v2 + 1712))
    {
      v161 = 1;
    }

    if (v161)
    {
      return 0;
    }
  }

  v162 = *(v2 + 1736);
  if (v4[1736])
  {
    if (!*(v2 + 1736))
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 216) != *(v2 + 1728))
    {
      v162 = 1;
    }

    if (v162)
    {
      return 0;
    }
  }

  v164 = v4[1737];
  v165 = *(v2 + 1737);
  if (v164 == 3)
  {
    if (v165 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v165 == 3)
    {
      return 0;
    }

    v166 = 0xED00007468676972;
    v167 = 0x5F6F745F7466656CLL;
    if (v4[1737])
    {
      if (v164 == 1)
      {
        v168 = 0xE700000000000000;
        v169 = 0x6C61727574616ELL;
      }

      else
      {
        v169 = 0x6F745F7468676972;
        v168 = 0xED00007466656C5FLL;
      }
    }

    else
    {
      v169 = 0x5F6F745F7466656CLL;
      v168 = 0xED00007468676972;
    }

    if (*(v2 + 1737))
    {
      if (v165 == 1)
      {
        v166 = 0xE700000000000000;
        v167 = 0x6C61727574616ELL;
      }

      else
      {
        v167 = 0x6F745F7468676972;
        v166 = 0xED00007466656C5FLL;
      }
    }

    if (v169 == v167 && v168 == v166)
    {
    }

    else
    {
      v170 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v170 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if ((sub_1006721D8(*(v4 + 218), *(v2 + 1744)) & 1) == 0)
  {
    return 0;
  }

  v171 = v4[1752];
  v172 = *(v2 + 1752);
  if (v171 == 5)
  {
    return v172 == 5;
  }

  return v172 != 5 && (sub_100B69940(v171, v172) & 1) != 0;
}

unint64_t sub_101160B2C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018787B8, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

void *sub_101160B78(uint64_t a1)
{
  __chkstk_darwin(a1);
  v61 = v1;
  v3 = v2;
  v54 = v4;
  v5 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v5 - 8);
  v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v57 = &v50 - v8;
  v9 = type metadata accessor for CodingUserInfoKey();
  v58 = *(v9 - 8);
  v59 = v9;
  __chkstk_darwin(v9);
  v55 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  v14 = sub_1005B981C(&qword_101A00740);
  v60 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  sub_1005BC630(v113);
  memcpy(v112, v113, 0x5C5uLL);
  sub_1005BC6F0(&v114);
  *&v112[209] = v126;
  *&v112[211] = v127;
  *&v112[201] = v122;
  *&v112[203] = v123;
  *&v112[205] = v124;
  *&v112[207] = v125;
  *&v112[193] = v118;
  *&v112[195] = v119;
  *&v112[197] = v120;
  *&v112[199] = v121;
  *&v112[185] = v114;
  *&v112[187] = v115;
  *&v112[189] = v116;
  *&v112[191] = v117;
  LOBYTE(v112[213]) = v128;
  v17 = v3[3];
  v129 = v3;
  sub_100020E58(v3, v17);
  sub_101161BC8();
  v18 = v61;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_15;
  }

  v61 = v13;
  LOBYTE(v63[0]) = 7;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (!v20)
  {
    goto LABEL_7;
  }

  if (v19 == 0xD000000000000029 && v20 == 0x800000010158A2E0)
  {

    goto LABEL_7;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v21 & 1) == 0)
  {
    sub_1007C8648();
    swift_allocError();
    v26[1] = 0;
    v26[2] = 0;
    *v26 = 0;
    swift_willThrow();
    (*(v60 + 8))(v16, v14);
LABEL_15:
    v25 = v129;
    goto LABEL_16;
  }

LABEL_7:
  type metadata accessor for TSCLVersion();
  LOBYTE(v62[0]) = 8;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = *&v63[0];
  v23 = v129;
  if (*&v63[0])
  {
    if (qword_1019F2948 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Paragraph.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v22[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v24 = xmmword_101463530;
      *(v24 + 16) = 0;
      swift_willThrow();

      (*(v60 + 8))(v16, v14);
      v25 = v23;
LABEL_16:
      sub_100005070(v25);
      memcpy(v63, v112, 0x5C5uLL);
      sub_10000CAAC(v63, &qword_101A003D8);
      v62[12] = *&v112[209];
      v62[13] = *&v112[211];
      LOBYTE(v62[14]) = v112[213];
      v62[8] = *&v112[201];
      v62[9] = *&v112[203];
      v62[10] = *&v112[205];
      v62[11] = *&v112[207];
      v62[4] = *&v112[193];
      v62[5] = *&v112[195];
      v62[6] = *&v112[197];
      v62[7] = *&v112[199];
      v62[0] = *&v112[185];
      v62[1] = *&v112[187];
      v62[2] = *&v112[189];
      v62[3] = *&v112[191];
      return sub_10000CAAC(v62, &qword_101A00730);
    }
  }

  sub_100020E58(v23, v23[3]);
  v53 = dispatch thunk of Decoder.userInfo.getter();
  v105[1479] = 0;
  sub_1007C85CC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  memcpy(v62, v63, 0x5C5uLL);
  v28 = sub_1007C8620(v62);
  if (v28 == 1)
  {

    memcpy(v105, v63, 0x5C5uLL);
    sub_10000CAAC(v105, &qword_101A003D8);
    v29 = v113;
  }

  else
  {

    v29 = v63;
  }

  memcpy(v106, v29, sizeof(v106));
  memcpy(v105, v112, 0x5C5uLL);
  sub_10000CAAC(v105, &qword_101A003D8);
  memcpy(v112, v106, 0x5C5uLL);
  sub_100020E58(v129, v129[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v89 = 1;
  sub_10114AD68();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v62[12] = v63[12];
  v62[13] = v63[13];
  LOBYTE(v62[14]) = v63[14];
  v62[8] = v63[8];
  v62[9] = v63[9];
  v62[10] = v63[10];
  v62[11] = v63[11];
  v62[4] = v63[4];
  v62[5] = v63[5];
  v62[6] = v63[6];
  v62[7] = v63[7];
  v62[0] = v63[0];
  v62[1] = v63[1];
  v62[2] = v63[2];
  v62[3] = v63[3];
  v30 = sub_1007CE5DC(v62);
  v51 = v14;
  v52 = v16;
  if (v30 == 1)
  {

    v86 = v63[12];
    v87 = v63[13];
    v88 = v63[14];
    v82 = v63[8];
    v83 = v63[9];
    v85 = v63[11];
    v84 = v63[10];
    v78 = v63[4];
    v79 = v63[5];
    v81 = v63[7];
    v80 = v63[6];
    v74 = v63[0];
    v75 = v63[1];
    v77 = v63[3];
    v76 = v63[2];
    sub_10000CAAC(&v74, &qword_101A00730);
    v102 = v126;
    v103 = v127;
    v104 = v128;
    v98 = v122;
    v99 = v123;
    v101 = v125;
    v100 = v124;
    v94 = v118;
    v95 = v119;
    v97 = v121;
    v96 = v120;
    v90 = v114;
    v91 = v115;
    v32 = v116;
    v31 = v117;
  }

  else
  {

    v102 = v63[12];
    v103 = v63[13];
    v104 = v63[14];
    v98 = v63[8];
    v99 = v63[9];
    v101 = v63[11];
    v100 = v63[10];
    v94 = v63[4];
    v95 = v63[5];
    v97 = v63[7];
    v96 = v63[6];
    v90 = v63[0];
    v91 = v63[1];
    v31 = v63[3];
    v32 = v63[2];
  }

  v93 = v31;
  v92 = v32;
  v86 = *&v112[209];
  v87 = *&v112[211];
  v88 = v112[213];
  v82 = *&v112[201];
  v83 = *&v112[203];
  v85 = *&v112[207];
  v84 = *&v112[205];
  v78 = *&v112[193];
  v79 = *&v112[195];
  v81 = *&v112[199];
  v80 = *&v112[197];
  v74 = *&v112[185];
  v75 = *&v112[187];
  v77 = *&v112[191];
  v76 = *&v112[189];
  sub_10000CAAC(&v74, &qword_101A00730);
  *&v112[209] = v102;
  *&v112[211] = v103;
  LOBYTE(v112[213]) = v104;
  *&v112[201] = v98;
  *&v112[203] = v99;
  *&v112[205] = v100;
  *&v112[207] = v101;
  *&v112[193] = v94;
  *&v112[195] = v95;
  *&v112[197] = v96;
  *&v112[199] = v97;
  *&v112[185] = v90;
  *&v112[187] = v91;
  *&v112[189] = v92;
  *&v112[191] = v93;
  sub_100020E58(v129, v129[3]);
  v33 = dispatch thunk of Decoder.userInfo.getter();
  v34 = v52;
  v35 = sub_1007BA4C8(2, v33, 0, 0);
  v37 = v36;
  v61 = v35;

  v111 = v37 & 1;
  v38 = v34;
  sub_100020E58(v129, v129[3]);
  v39 = dispatch thunk of Decoder.userInfo.getter();
  v40 = sub_1007BA4C8(3, v39, 0, 0);
  LOBYTE(v34) = v41;
  v59 = v40;

  v109 = v34 & 1;
  sub_100020E58(v129, v129[3]);
  v42 = dispatch thunk of Decoder.userInfo.getter();
  LODWORD(v58) = sub_1007BA4F0(4, v42, 0, 0);

  sub_100020E58(v129, v129[3]);
  v43 = dispatch thunk of Decoder.userInfo.getter();
  v44 = sub_1007C1814(5u, v43, 0, 0, 0);

  sub_100020E58(v129, v129[3]);
  v45 = dispatch thunk of Decoder.userInfo.getter();
  LODWORD(v57) = sub_1007BA534(6, v45, 0, 0);
  (*(v60 + 8))(v38, v51);

  memcpy(v62, v112, 0x6B0uLL);
  v46 = v61;
  *&v62[107] = v61;
  LODWORD(v60) = v111;
  BYTE8(v62[107]) = v111;
  *(&v62[107] + 9) = *v110;
  HIDWORD(v62[107]) = *&v110[3];
  v47 = v59;
  *&v62[108] = v59;
  v48 = v109;
  BYTE8(v62[108]) = v109;
  v49 = v58;
  BYTE9(v62[108]) = v58;
  *(&v62[108] + 10) = v107;
  HIWORD(v62[108]) = v108;
  *&v62[109] = v44;
  LOBYTE(v38) = v57;
  BYTE8(v62[109]) = v57;
  sub_10067F194(v62, v63);
  sub_100005070(v129);
  memcpy(v63, v112, sizeof(v63));
  v64 = v46;
  v65 = v60;
  *v66 = *v110;
  *&v66[3] = *&v110[3];
  v67 = v47;
  v68 = v48;
  v69 = v49;
  v70 = v107;
  v71 = v108;
  v72 = v44;
  v73 = v38;
  sub_10067F1F0(v63);
  return memcpy(v54, v62, 0x6D9uLL);
}

unint64_t sub_101161BC8()
{
  result = qword_101A2B8F8;
  if (!qword_101A2B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B8F8);
  }

  return result;
}

unint64_t sub_101161C1C()
{
  result = qword_101A2B2C8;
  if (!qword_101A2B2C8)
  {
    sub_1005C4E5C(&qword_101A00750);
    sub_1011415BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B2C8);
  }

  return result;
}

unint64_t sub_101161CA0()
{
  result = qword_101A2B900;
  if (!qword_101A2B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B900);
  }

  return result;
}

unint64_t _s8Freeform17TSContentLanguageO6ModelsO9ParagraphV9BreakTypeO8rawValueAISgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018788B0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_101161D40(uint64_t a1)
{
  result = sub_100B10248();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_101161DA8()
{
  result = qword_101A2B908;
  if (!qword_101A2B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B908);
  }

  return result;
}

unint64_t sub_101161E00()
{
  result = qword_101A2B910;
  if (!qword_101A2B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B910);
  }

  return result;
}

unint64_t sub_101161E54(uint64_t a1)
{
  *(a1 + 8) = sub_101161E84();
  result = sub_101161ED8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_101161E84()
{
  result = qword_101A2B918;
  if (!qword_101A2B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B918);
  }

  return result;
}

unint64_t sub_101161ED8()
{
  result = qword_101A2B920;
  if (!qword_101A2B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B920);
  }

  return result;
}

unint64_t sub_101161F2C(uint64_t a1)
{
  result = sub_100B101F4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_101161F94(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[2] = a4();
  a1[3] = a5();
  result = a6();
  a1[4] = result;
  return result;
}

uint64_t sub_101161FE8(uint64_t a1)
{
  v1 = *(a1 + 1476);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101161FFC(uint64_t a1)
{
  v1 = *(a1 + 224);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101162018(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1753))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 1744);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_101162060(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 1752) = 0;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1753) = 1;
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
      *(result + 1744) = (a2 - 1);
      return result;
    }

    *(result + 1753) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1011622A4()
{
  result = qword_101A2B928;
  if (!qword_101A2B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B928);
  }

  return result;
}

unint64_t sub_1011622FC()
{
  result = qword_101A2B930;
  if (!qword_101A2B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B930);
  }

  return result;
}

unint64_t sub_101162354()
{
  result = qword_101A2B938;
  if (!qword_101A2B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B938);
  }

  return result;
}

uint64_t *TSContentLanguage.Models.ListLabelType.version.unsafeMutableAddressor()
{
  if (qword_1019F2958 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ListLabelType.version;
}

__n128 TSContentLanguage.Models.ListLabelType.init(image:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) & 1;
  v4 = *(a1 + 64) & 1;
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 24) = v3;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  *(a2 + 64) = v4;
  return result;
}

uint64_t TSContentLanguage.Models.ListLabelType.init(number:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  *(a4 + 17) = HIBYTE(a3);
  *(a4 + 24) = 0;
  *(a4 + 64) = 64;
  return result;
}

__n128 TSContentLanguage.Models.ListLabelType.init(string:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = a1[2].n128_u64[0];
  v5 = a1[1].n128_u8[8] & 1;
  v6 = a1[2].n128_u8[8] & 1;
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 31) = 0;
  *(a2 + 29) = 0;
  *(a2 + 25) = 0;
  *(a2 + 32) = v4;
  *(a2 + 40) = v6;
  *(a2 + 64) = 0x80;
  return result;
}

uint64_t TSContentLanguage.Models.ListLabelType.init<A>(object:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_dynamicCast())
  {
    v18 = v20;
    v19 = 0;
    v8 = v22;
    v4 = v25;
    v9 = v28 & 1;
    v10 = v22 >> 8;
    v11 = v22 & 0xFFFFFFFFFFFF0000;
    v12 = v23 & 1;
    v3 = v27;
    v14 = v26;
    v15 = v24;
    v16 = v25 & 0xFFFFFFFFFFFFFF00;
    v17 = v21;
  }

  else if (swift_dynamicCast())
  {
    v12 = 0;
    v11 = 0;
    v18 = v20;
    v19 = 0;
    v16 = 0;
    v17 = v21;
    v8 = v22;
    LOBYTE(v10) = BYTE1(v22);
    v9 = 64;
  }

  else if (swift_dynamicCast())
  {
    v18 = v20;
    v19 = 0;
    v16 = 0;
    v17 = v21;
    v8 = v22;
    v12 = v23;
    v15 = v24;
    v4 = v25;
    v10 = v22 >> 8;
    v11 = v22 & 0xFFFFFFFFFFFF0000;
    v9 = 0x80;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v14 = 0;
    v15 = 0;
    v3 = 0;
    v9 = 0;
    v4 = 0;
    v16 = 0;
    v8 = 0;
    LOBYTE(v10) = 0;
    v11 = 0;
    v19 = 0x1FFFFFF00;
    v12 = 254;
  }

  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v18;
  *(a3 + 8) = v17;
  *(a3 + 16) = v11 | (v10 << 8) | v8;
  *(a3 + 24) = v19 | v12;
  *(a3 + 32) = v15;
  *(a3 + 40) = v16 | v4;
  *(a3 + 48) = v14;
  *(a3 + 56) = v3;
  *(a3 + 64) = v9;
  return result;
}

Swift::Int sub_101162708()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1011627EC()
{
  String.hash(into:)();
}

Swift::Int sub_1011628BC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10116299C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1011657D8(*a1);
  *a2 = result;
  return result;
}

void sub_1011629CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6567616D69;
  v5 = 0xE600000000000000;
  v6 = 0x676E69727473;
  v7 = 0xEF7265696669746ELL;
  v8 = 0x6564695F65707974;
  if (v2 != 3)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7265626D756ELL;
    v3 = 0xE600000000000000;
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

uint64_t sub_101162A6C()
{
  v1 = *v0;
  v2 = 0x6567616D69;
  v3 = 0x676E69727473;
  v4 = 0x6564695F65707974;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7265626D756ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_101162B08@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1011657D8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_101162B30(uint64_t a1)
{
  v2 = sub_101166060();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101162B6C(uint64_t a1)
{
  v2 = sub_101166060();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 TSContentLanguage.Models.ListLabelType.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_101165824(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t TSContentLanguage.Models.ListLabelType.encode(to:)(void *a1)
{
  v4 = sub_1005B981C(&qword_101A2B940);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = *v1;
  v15 = v1[2];
  v16 = v1[3];
  v17 = *(v1 + 64);
  v18 = v17 >> 6;
  if (v17 >> 6 > 1)
  {
    if (v18 != 2)
    {
      sub_100020E58(a1, a1[3]);
      dispatch thunk of Encoder.singleValueContainer()();
      sub_10002A948(&v29, *(&v30 + 1));
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      return sub_100005070(&v29);
    }

    v23 = a1[3];
    v27 = v1[1];
    v28 = v14;
    v26 = v15;
    sub_100020E58(a1, v23);
    sub_101166060();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v29 = v28;
    v30 = v27;
    *&v31 = v26;
    BYTE8(v31) = BYTE8(v26);
    v34 = 2;
    sub_1011660B4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v2)
    {
      v21 = *(v5 + 8);
      v22 = v7;
      return v21(v22, v4);
    }

    LOBYTE(v29) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F2958 != -1)
    {
      swift_once();
    }

    *&v29 = static TSContentLanguage.Models.ListLabelType.version;
    v34 = 4;
    type metadata accessor for TSCLVersion();
    sub_100969804(&qword_101A00458);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v27 = v1[1];
    v28 = v14;
    if (!v18)
    {
      v19 = v17 & 0x3F;
      v20 = a1[3];
      v25 = v16;
      v26 = v15;
      sub_100020E58(a1, v20);
      sub_101166060();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      v29 = v28;
      v30 = v27;
      v31 = v26;
      v32 = v25;
      v33 = v19;
      v34 = 0;
      sub_10116615C();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v2)
      {
        LOBYTE(v29) = 3;
        KeyedEncodingContainer.encode(_:forKey:)();
        if (qword_1019F2958 != -1)
        {
          swift_once();
        }

        *&v29 = static TSContentLanguage.Models.ListLabelType.version;
        v34 = 4;
        type metadata accessor for TSCLVersion();
        sub_100969804(&qword_101A00458);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        return (*(v5 + 8))(v13, v4);
      }

      v21 = *(v5 + 8);
      v22 = v13;
      return v21(v22, v4);
    }

    sub_100020E58(a1, a1[3]);
    sub_101166060();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v29 = v28;
    LOWORD(v30) = v27;
    v34 = 1;
    sub_101166108();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v2)
    {
      v21 = *(v5 + 8);
      v22 = v10;
      return v21(v22, v4);
    }

    LOBYTE(v29) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F2958 != -1)
    {
      swift_once();
    }

    *&v29 = static TSContentLanguage.Models.ListLabelType.version;
    v34 = 4;
    type metadata accessor for TSCLVersion();
    sub_100969804(&qword_101A00458);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v5 + 8))(v10, v4);
  }
}

BOOL sub_1011632E4(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10 = a2[4].i8[0];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return _s8Freeform17TSContentLanguageO6ModelsO13ListLabelTypeO21__derived_enum_equalsySbAG_AGtFZ_0(v7, v9);
}

uint64_t *TSContentLanguage.Models.ListLabelType.ListNumberLabel.version.unsafeMutableAddressor()
{
  if (qword_1019F2960 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ListLabelType.ListNumberLabel.version;
}

uint64_t TSContentLanguage.Models.ListLabelType.ListNumberLabel.scale.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

Swift::Int sub_10116342C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_101163520()
{
  String.hash(into:)();
}

Swift::Int sub_101163600()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1011636F0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1011661B0(*a1);
  *a2 = result;
  return result;
}

void sub_101163720(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000074616D726FLL;
  v4 = 0x665F7265626D756ELL;
  v5 = 0xE600000000000000;
  v6 = 0x646572656974;
  v7 = 0xEF7265696669746ELL;
  v8 = 0x6564695F65707974;
  if (v2 != 3)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C616373;
    v3 = 0xE500000000000000;
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

uint64_t sub_1011637D0()
{
  v1 = *v0;
  v2 = 0x665F7265626D756ELL;
  v3 = 0x646572656974;
  v4 = 0x6564695F65707974;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C616373;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10116387C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1011661B0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1011638A4(uint64_t a1)
{
  v2 = sub_101166664();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011638E0(uint64_t a1)
{
  v2 = sub_101166664();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.ListLabelType.ListNumberLabel.init(from:)(void *a1)
{
  LODWORD(result) = sub_1011661FC(a1);
  if (v1)
  {
    return v3 & 0xFF01;
  }

  else
  {
    return result;
  }
}

uint64_t TSContentLanguage.Models.ListLabelType.ListNumberLabel.encode(to:)(void *a1, int a2, uint64_t a3)
{
  v11 = a3;
  v6 = sub_1005B981C(&qword_101A2B968);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_100020E58(a1, a1[3]);
  sub_101166664();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LODWORD(v12) = a2;
  v13 = 0;
  sub_1011666B8();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v3)
  {
    return (*(v7 + 8))(v9, v6);
  }

  LOBYTE(v12) = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v12) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v12) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F2960 != -1)
  {
    swift_once();
  }

  v12 = static TSContentLanguage.Models.ListLabelType.ListNumberLabel.version;
  v13 = 4;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t TSContentLanguage.Models.ListLabelType.ListNumberLabel.isEquivalent(to:)(__int16 a1, uint64_t a2, __int16 a3, __int16 a4, uint64_t a5, __int16 a6)
{
  v6 = a1 & 0xFF00;
  if ((a4 & 0xFF00) == 0x300)
  {
    if (v6 != 768)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v6 == 768)
    {
      goto LABEL_16;
    }

    v7 = a2;
    v8 = a6;
    v9 = a3;
    v10 = a5;
    v11 = TSContentLanguage.Models.NumberFormatType.isEquivalent(to:)(a1, a4);
    a2 = v7;
    a5 = v10;
    a3 = v9;
    a6 = v8;
    if ((v11 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (a6)
  {
    if ((a3 & 1) == 0)
    {
LABEL_16:
      v15 = 0;
      return v15 & 1;
    }
  }

  else
  {
    if (a3)
    {
      goto LABEL_16;
    }

    v12 = HIBYTE(a6);
    v13 = HIBYTE(a3);
    v14 = sub_1007C87EC(*&a5, *&a2);
    HIBYTE(a3) = v13;
    HIBYTE(a6) = v12;
    if (!v14)
    {
      goto LABEL_16;
    }
  }

  v15 = HIBYTE(a6) == 2;
  if (HIBYTE(a3) != 2)
  {
    v15 = 0;
  }

  if (HIBYTE(a6) != 2 && HIBYTE(a3) != 2)
  {
    v15 = HIBYTE(a6) ^ HIBYTE(a3) ^ 1;
  }

  return v15 & 1;
}

uint64_t sub_101163CCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1011661FC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 17) = HIBYTE(v6);
  }

  return result;
}

uint64_t *TSContentLanguage.Models.ListLabelType.ListStringLabel.version.unsafeMutableAddressor()
{
  if (qword_1019F2968 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ListLabelType.ListStringLabel.version;
}

uint64_t TSContentLanguage.Models.ListLabelType.ListStringLabel.init(string:scale:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

Swift::Int sub_101163EB0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_101163F94()
{
  String.hash(into:)();
}

Swift::Int sub_101164064()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_101164144@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10116670C(*a1);
  *a2 = result;
  return result;
}

void sub_101164174(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x676E69727473;
  v5 = 0xE600000000000000;
  v6 = 0x74657366666FLL;
  v7 = 0xEF7265696669746ELL;
  v8 = 0x6564695F65707974;
  if (v2 != 3)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C616373;
    v3 = 0xE500000000000000;
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

uint64_t sub_101164214()
{
  v1 = *v0;
  v2 = 0x676E69727473;
  v3 = 0x74657366666FLL;
  v4 = 0x6564695F65707974;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C616373;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1011642B0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10116670C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1011642D8(uint64_t a1)
{
  v2 = sub_101166BE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101164314(uint64_t a1)
{
  v2 = sub_101166BE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.ListLabelType.ListStringLabel.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_101166758(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t TSContentLanguage.Models.ListLabelType.ListStringLabel.encode(to:)(void *a1)
{
  v3 = sub_1005B981C(&qword_101A2B980);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100020E58(a1, a1[3]);
  sub_101166BE0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v12 = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v11 = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v10 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F2968 != -1)
  {
    swift_once();
  }

  v9 = static TSContentLanguage.Models.ListLabelType.ListStringLabel.version;
  v8[15] = 4;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t TSContentLanguage.Models.ListLabelType.ListStringLabel.isEquivalent(to:)(uint64_t a1)
{
  v3 = *v1 == *a1 && *(v1 + 8) == *(a1 + 8);
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (*(v1 + 24) == 1)
    {
      if (*(a1 + 24))
      {
LABEL_11:
        if (*(v1 + 40) == 1)
        {
          if (*(a1 + 40))
          {
            return 1;
          }
        }

        else if (!*(a1 + 40))
        {
          return sub_1007C87EC(*(v1 + 32), *(a1 + 32));
        }
      }
    }

    else if ((*(a1 + 24) & 1) == 0)
    {
      result = sub_1007C87EC(*(v1 + 16), *(a1 + 16));
      if (!result)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  return 0;
}

BOOL sub_1011646E4(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s8Freeform17TSContentLanguageO6ModelsO13ListLabelTypeO0e6StringF0V23__derived_struct_equalsySbAI_AItFZ_0(&v5, &v7);
}

uint64_t *TSContentLanguage.Models.ListLabelType.ListImageLabel.version.unsafeMutableAddressor()
{
  if (qword_1019F2970 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ListLabelType.ListImageLabel.version;
}

__n128 TSContentLanguage.Models.ListLabelType.ListImageLabel.init(scale:offset:resource:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *(a5 + 32) & 1;
  *a6 = a1;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  result = *a5;
  v7 = *(a5 + 16);
  *(a6 + 32) = *a5;
  *(a6 + 48) = v7;
  *(a6 + 64) = v8;
  return result;
}

Swift::Int sub_101164840()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_101164928()
{
  String.hash(into:)();
}

Swift::Int sub_1011649FC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_101164AE0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101166C34(*a1);
  *a2 = result;
  return result;
}

void sub_101164B10(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C616373;
  v5 = 0xE800000000000000;
  v6 = 0x656372756F736572;
  v7 = 0xEF7265696669746ELL;
  v8 = 0x6564695F65707974;
  if (v2 != 3)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x74657366666FLL;
    v3 = 0xE600000000000000;
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

uint64_t sub_101164BB4()
{
  v1 = *v0;
  v2 = 0x656C616373;
  v3 = 0x656372756F736572;
  v4 = 0x6564695F65707974;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74657366666FLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_101164C54@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_101166C34(a1);
  *a2 = result;
  return result;
}

uint64_t sub_101164C7C(uint64_t a1)
{
  v2 = sub_101167118();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101164CB8(uint64_t a1)
{
  v2 = sub_101167118();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 TSContentLanguage.Models.ListLabelType.ListImageLabel.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_101166C80(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t TSContentLanguage.Models.ListLabelType.ListImageLabel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2B990);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100020E58(a1, a1[3]);
  sub_101167118();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v13) = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v10 = *(v3 + 48);
  v13 = *(v3 + 32);
  v14 = v10;
  v15 = *(v3 + 64);
  v12 = 2;
  sub_100B214E8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v13) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F2970 != -1)
  {
    swift_once();
  }

  *&v13 = static TSContentLanguage.Models.ListLabelType.ListImageLabel.version;
  v12 = 4;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

BOOL TSContentLanguage.Models.ListLabelType.ListImageLabel.isEquivalent(to:)(uint64_t a1)
{
  v2 = a1;
  if (*(v1 + 8) == 1)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8))
    {
      return 0;
    }

    result = sub_1007C87EC(*v1, *a1);
    v2 = a1;
    if (!result)
    {
      return result;
    }
  }

  if (*(v1 + 24) == 1)
  {
    if ((*(v2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v2 + 24))
    {
      return 0;
    }

    v5 = v2;
    result = sub_1007C87EC(*(v1 + 16), *(v2 + 16));
    v2 = v5;
    if (!result)
    {
      return result;
    }
  }

  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = *(v2 + 48);
  v13 = *(v2 + 56);
  v14 = *(v2 + 64);
  if (*(v1 + 64))
  {
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (v7)
    {
      if (!v11 || (v6 != v10 || v7 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    if (v8 == v12 && v9 == v13)
    {
      return 1;
    }
  }

  else
  {
    if ((v14 & 1) != 0 || (v6 != v10 || v7 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (v8 == v12 && v9 == v13)
    {
      return 1;
    }
  }

  return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
}

BOOL sub_101165190(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s8Freeform17TSContentLanguageO6ModelsO13ListLabelTypeO0e5ImageF0V23__derived_struct_equalsySbAI_AItFZ_0(v7, v9);
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO13ListLabelTypeO0e5ImageF0V23__derived_struct_equalsySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  if (*(a1 + 64))
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      return 0;
    }

    if (v8)
    {
      if (!v12 || (v6 != v11 || v8 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v12)
    {
      return 0;
    }

    if (v9 == v13 && v10 == v14)
    {
      return 1;
    }
  }

  else
  {
    if ((*(a2 + 64) & 1) != 0 || (v6 != v11 || v8 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (v9 == v13 && v10 == v14)
    {
      return 1;
    }
  }

  return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
}

uint64_t sub_101165330(__int16 a1, uint64_t a2, __int16 a3, __int16 a4, uint64_t a5, __int16 a6)
{
  v6 = a4 & 0xFF00;
  if ((a1 & 0xFF00) != 0x300)
  {
    if (v6 == 768)
    {
      return 0;
    }

    v7 = a2;
    v8 = a6;
    v9 = a3;
    v10 = a5;
    v11 = _s8Freeform17TSContentLanguageO6ModelsO16NumberFormatTypeV23__derived_struct_equalsySbAG_AGtFZ_0(a1, a4);
    a2 = v7;
    a5 = v10;
    a3 = v9;
    a6 = v8;
    if ((v11 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    if (a3)
    {
      if ((a6 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a6 & 1) != 0 || *&a2 != *&a5)
    {
      return 0;
    }

    if (HIBYTE(a3) == 2)
    {
      if (HIBYTE(a6) != 2)
      {
        return 0;
      }
    }

    else if (HIBYTE(a6) == 2 || ((HIBYTE(a6) ^ HIBYTE(a3)) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (v6 == 768)
  {
    goto LABEL_6;
  }

  return 0;
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO13ListLabelTypeO0e6StringF0V23__derived_struct_equalsySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(a2 + 40);
  if ((*(a1 + 40) & 1) == 0)
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v6 = 1;
    }

    return (v6 & 1) == 0;
  }

  return (*(a2 + 40) & 1) != 0;
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO13ListLabelTypeO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = v11 >> 6;
  if (v11 >> 6 > 1)
  {
    if (v12 == 2)
    {
      if ((a2[4].i8[0] & 0xC0) != 0x80)
      {
        return 0;
      }

      v17 = *a2[1].i64;
      v18 = *a2[2].i64;
      v19 = a2[2].i32[2];
      v20 = a2[1].i32[2];
      if ((*&v3 != a2->i64[0] || *&v4 != a2->i64[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      if (v7)
      {
        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v20 & 1 | (v17 != v5))
      {
        return 0;
      }

      if (v8)
      {
        if ((v19 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v19 & 1 | (v18 != v6))
      {
        return 0;
      }
    }

    else if (*&v5 | *&v4 | *&v3 | v7 | *&v6 | v8 | v9 | v10 || v11 != 192)
    {
      if (a2[4].u8[0] != 192)
      {
        return 0;
      }

      if (a2->i64[0] != 1)
      {
        return 0;
      }

      v26 = vorrq_s8(a2[2], a2[3]);
      if (*&vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL)) | a2[1].i64[1] | a2[1].i64[0] | a2->i64[1])
      {
        return 0;
      }
    }

    else
    {
      if (a2[4].u8[0] != 192)
      {
        return 0;
      }

      v25 = vorrq_s8(vorrq_s8(*a2, a2[2]), vorrq_s8(a2[1], a2[3]));
      if (vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)))
      {
        return 0;
      }
    }

    return 1;
  }

  if (v12)
  {
    if ((a2[4].i8[0] & 0xC0) != 0x40)
    {
      return 0;
    }

    v21 = *&a2->i64[1];
    v22 = a2[1].u64[0];
    v23 = a2->i32[0];
    v24 = v23 & 0xFF00;
    if ((LOWORD(v3) & 0xFF00) == 0x300)
    {
      if (v24 != 768)
      {
        return 0;
      }
    }

    else if (v24 == 768 || (_s8Freeform17TSContentLanguageO6ModelsO16NumberFormatTypeV23__derived_struct_equalsySbAG_AGtFZ_0(LODWORD(v3), v23) & 1) == 0)
    {
      return 0;
    }

    if (LOBYTE(v5))
    {
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v22 & 1 | (v21 != v4))
    {
      return 0;
    }

    if ((LOWORD(v5) & 0xFF00) == 0x200)
    {
      if (BYTE1(v22) != 2)
      {
        return 0;
      }
    }

    else if (BYTE1(v22) == 2 || ((((LOWORD(v5) & 0x100) == 0) ^ (v22 >> 8)) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  v13 = a2[4].u8[0];
  if (v13 <= 0x3F)
  {
    v14 = a2[2].i64[1];
    v16 = a2[3].i64[0];
    v15 = a2[3].i64[1];
    if (LOBYTE(v4))
    {
      if ((a2->i32[2] & 1) == 0)
      {
        return 0;
      }
    }

    else if (a2->i32[2] & 1 | (*a2->i64 != v3))
    {
      return 0;
    }

    if (v7)
    {
      if ((a2[1].i32[2] & 1) == 0)
      {
        return 0;
      }
    }

    else if (a2[1].i32[2] & 1 | (*a2[1].i64 != v5))
    {
      return 0;
    }

    if (v11)
    {
      if (v13)
      {
        if (v8)
        {
          if (!v14)
          {
            return 0;
          }

          goto LABEL_54;
        }

        if (!v14)
        {
          return v9 == v16 && v10 == v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
        }
      }
    }

    else if ((v13 & 1) == 0)
    {
LABEL_54:
      if ((*&v6 != a2[2].i64[0] || v8 != v14) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      return v9 == v16 && v10 == v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
    }
  }

  return 0;
}

unint64_t sub_1011657D8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101878948, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_101165824@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A00708);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - v7;
  sub_100020E58(a1, a1[3]);
  sub_101166060();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v46[0]) = 3;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v10)
    {
      if (v9 == 0xD00000000000002FLL && v10 == 0x800000010158AB10)
      {
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v12 & 1) == 0)
        {
          sub_1007C8648();
          swift_allocError();
          v13[1] = 0;
          v13[2] = 0;
          *v13 = 0;
          swift_willThrow();
LABEL_11:
          (*(v6 + 8))(v8, v5);
          goto LABEL_12;
        }
      }
    }

    type metadata accessor for TSCLVersion();
    v61 = 4;
    sub_100969804(&qword_101A00400);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = v46[0];
    if (v46[0])
    {
      if (qword_1019F2958 != -1)
      {
        swift_once();
      }

      if (*(static TSContentLanguage.Models.ListLabelType.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v26[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
      {
        sub_1007C8648();
        swift_allocError();
        *v27 = xmmword_101463530;
        *(v27 + 16) = 0;
        swift_willThrow();

        goto LABEL_11;
      }
    }

    sub_100020E58(a1, a1[3]);
    v29 = dispatch thunk of Decoder.userInfo.getter();
    sub_1007BA578(0, v29, 0, &v47);

    v30 = v54;
    if (v54 != 255)
    {
      v40 = v53;
      v41 = v52;
      v39 = v51;
      v42 = v50;
      LODWORD(v44) = v49;
      v18 = v48;
      v45 = *(&v47 + 1);
      v43 = v47;
      (*(v6 + 8))(v8, v5);
      v21 = v30 & 1;
      v19 = v18 >> 8;
      v20 = v18 & 0xFFFFFFFFFFFF0000;
      v17 = v44 & 1;
      LOBYTE(v5) = v39;
      v44 = v39 & 0xFFFFFFFFFFFFFF00;
      goto LABEL_16;
    }

    sub_100020E58(a1, a1[3]);
    v31 = dispatch thunk of Decoder.userInfo.getter();
    v32 = sub_1007BA8E0(1, v31, 0, 0);
    v45 = v34;
    v36 = v33;
    v43 = v32;

    if ((v36 & 0xFF00) != 0x300)
    {
      LOBYTE(v19) = HIBYTE(v36);
      (*(v6 + 8))(v8, v5);
      v44 = 0;
      v17 = 0;
      v20 = 0;
      LOBYTE(v18) = v36 & 1;
      v43 = v43;
      v21 = 64;
      goto LABEL_16;
    }

    sub_100020E58(a1, a1[3]);
    v37 = dispatch thunk of Decoder.userInfo.getter();
    sub_1007BABD0(2, v37, 0, &v55);
    (*(v6 + 8))(v8, v5);

    v45 = v56;
    if (v56)
    {
      v44 = 0;
      v42 = v59;
      LOBYTE(v18) = v57;
      v43 = v55;
      v17 = v58 & 1;
      LOBYTE(v5) = v60 & 1;
      LOBYTE(v46[0]) = v58 & 1;
      v61 = v60 & 1;
      v19 = v57 >> 8;
      v20 = v57 & 0xFFFFFFFFFFFF0000;
      v21 = 0x80;
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_12:
  sub_100020E58(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  sub_100020E58(v46, v46[3]);
  v15 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v16 = v14;
  if (v15 == 1701736302 && v14 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_100005070(v46);
    v43 = 0;
    v45 = 0;
    v42 = 0;
    v41 = 0;
    v40 = 0;
    LOBYTE(v5) = 0;
    v44 = 0;
    v17 = 0;
    LOBYTE(v18) = 0;
    LOBYTE(v19) = 0;
    v20 = 0;
    v21 = -64;
LABEL_16:
    result = sub_100005070(a1);
    v23 = v45;
    *a2 = v43;
    *(a2 + 8) = v23;
    *(a2 + 16) = v20 | v18 | (v19 << 8);
    *(a2 + 24) = v17;
    v24 = v44 | v5;
    *(a2 + 32) = v42;
    *(a2 + 40) = v24;
    v25 = v40;
    *(a2 + 48) = v41;
    *(a2 + 56) = v25;
    *(a2 + 64) = v21;
    return result;
  }

  if (v15 == 0x616D695F6C6C756ELL && v16 == 0xEA00000000006567)
  {

LABEL_26:
    sub_100005070(v46);
    v45 = 0;
    v42 = 0;
    v41 = 0;
    v40 = 0;
    LOBYTE(v5) = 0;
    v44 = 0;
    v17 = 0;
    LOBYTE(v18) = 0;
    LOBYTE(v19) = 0;
    v20 = 0;
    v21 = -64;
    v43 = 1;
    goto LABEL_16;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    goto LABEL_26;
  }

  sub_100005070(v46);
LABEL_31:
  sub_1007C8648();
  swift_allocError();
  *v35 = xmmword_101478600;
  *(v35 + 16) = 0;
  swift_willThrow();
  return sub_100005070(a1);
}

unint64_t sub_101166060()
{
  result = qword_101A2B948;
  if (!qword_101A2B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B948);
  }

  return result;
}

unint64_t sub_1011660B4()
{
  result = qword_101A2B950;
  if (!qword_101A2B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B950);
  }

  return result;
}

unint64_t sub_101166108()
{
  result = qword_101A2B958;
  if (!qword_101A2B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B958);
  }

  return result;
}

unint64_t sub_10116615C()
{
  result = qword_101A2B960;
  if (!qword_101A2B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B960);
  }

  return result;
}

unint64_t sub_1011661B0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018789E0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1011661FC(void *a1)
{
  v3 = sub_1005B981C(&qword_101A006F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - v5;
  v7 = a1[3];
  sub_100020E58(a1, v7);
  sub_101166664();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v24 = 3;
    v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v9)
    {
      if (v8 == 0xD000000000000041 && v9 == 0x800000010158AB40)
      {
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v7 & 1) == 0)
        {
          sub_1007C8648();
          swift_allocError();
          v11[1] = 0;
          v11[2] = 0;
          *v11 = 0;
          swift_willThrow();
LABEL_11:
          (*(v4 + 8))(v6, v3);
          goto LABEL_12;
        }
      }
    }

    type metadata accessor for TSCLVersion();
    v23 = 4;
    sub_100969804(&qword_101A00400);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v13 = v22;
    if (v22)
    {
      if (qword_1019F2960 != -1)
      {
        swift_once();
      }

      if (*(static TSContentLanguage.Models.ListLabelType.ListNumberLabel.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v13[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
      {
        sub_1007C8648();
        swift_allocError();
        *v14 = xmmword_101463530;
        *(v14 + 16) = 0;
        swift_willThrow();

        goto LABEL_11;
      }
    }

    sub_100020E58(a1, a1[3]);
    v15 = dispatch thunk of Decoder.userInfo.getter();
    v7 = sub_1007BAEE0(0, v15, 0);

    sub_100020E58(a1, a1[3]);
    v16 = dispatch thunk of Decoder.userInfo.getter();
    sub_1007BB194(1, v16, 0, 0);
    v20[3] = v17;

    v18 = a1[3];
    v21 = a1[4];
    sub_100020E58(a1, v18);
    v19 = dispatch thunk of Decoder.userInfo.getter();
    sub_1007BB1BC(2, v19, 0, 0);
    (*(v4 + 8))(v6, v3);
  }

LABEL_12:
  sub_100005070(a1);
  return v7;
}

unint64_t sub_101166664()
{
  result = qword_101A2B970;
  if (!qword_101A2B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B970);
  }

  return result;
}

unint64_t sub_1011666B8()
{
  result = qword_101A2B978;
  if (!qword_101A2B978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B978);
  }

  return result;
}

unint64_t sub_10116670C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101878A78, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_101166758@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A006F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  sub_100020E58(a1, a1[3]);
  sub_101166BE0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v33 = 3;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v10)
  {
    if (v9 == 0xD000000000000041 && v10 == 0x800000010158AB90)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v13[1] = 0;
        v13[2] = 0;
        *v13 = 0;
        swift_willThrow();
LABEL_11:
        (*(v6 + 8))(v8, v5);
        return sub_100005070(a1);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v32 = 4;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v15 = v30;
  if (v30)
  {
    if (qword_1019F2968 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.ListLabelType.ListStringLabel.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v15[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v16 = xmmword_101463530;
      *(v16 + 16) = 0;
      swift_willThrow();

      goto LABEL_11;
    }
  }

  sub_100020E58(a1, a1[3]);
  v17 = dispatch thunk of Decoder.userInfo.getter();
  v28 = sub_1007C1DB4(0, v17, 0, 0, 0, 0);
  v29 = v18;

  sub_100020E58(a1, a1[3]);
  v19 = dispatch thunk of Decoder.userInfo.getter();
  v20 = sub_1007BB1E4(1, v19, 0, 0);
  v31 = v21;
  v27 = v20;

  sub_100020E58(a1, a1[3]);
  v22 = dispatch thunk of Decoder.userInfo.getter();
  v23 = sub_1007BB1E4(2, v22, 0, 0);
  v25 = v24;
  (*(v6 + 8))(v8, v5);

  result = sub_100005070(a1);
  v26 = v29;
  *a2 = v28;
  *(a2 + 8) = v26;
  *(a2 + 16) = v27;
  *(a2 + 24) = v31 & 1;
  *(a2 + 32) = v23;
  *(a2 + 40) = v25 & 1;
  return result;
}

unint64_t sub_101166BE0()
{
  result = qword_101A2B988;
  if (!qword_101A2B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B988);
  }

  return result;
}

unint64_t sub_101166C34(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101878B10, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_101166C80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A006D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  sub_100020E58(a1, a1[3]);
  sub_101167118();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  LOBYTE(v37) = 3;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v10)
  {
    if (v9 == 0xD000000000000040 && v10 == 0x800000010158ABE0)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v13[1] = 0;
        v13[2] = 0;
        *v13 = 0;
        swift_willThrow();
LABEL_11:
        (*(v6 + 8))(v8, v5);
        return sub_100005070(a1);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v32 = 4;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v15 = v37;
  if (v37)
  {
    if (qword_1019F2970 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.ListLabelType.ListImageLabel.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v15[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v16 = xmmword_101463530;
      *(v16 + 16) = 0;
      swift_willThrow();

      goto LABEL_11;
    }
  }

  sub_100020E58(a1, a1[3]);
  v17 = dispatch thunk of Decoder.userInfo.getter();
  v18 = sub_1007BB20C(0, v17, 0, 0);
  v29 = v19;
  v30 = v18;

  sub_100020E58(a1, a1[3]);
  v20 = dispatch thunk of Decoder.userInfo.getter();
  v21 = sub_1007BB20C(1, v20, 0, 0);
  v27 = v22;
  v28 = v21;

  sub_100020E58(a1, a1[3]);
  v23 = dispatch thunk of Decoder.userInfo.getter();
  memset(v35, 0, sizeof(v35));
  v36 = -1;
  sub_1007C226C(2u, v23, 0, 0, v35, v33);
  v24 = v34;
  (*(v6 + 8))(v8, v5);

  LOBYTE(v37) = v29 & 1;
  v32 = v27 & 1;
  v31 = v24;
  result = sub_100005070(a1);
  *a2 = v30;
  *(a2 + 8) = v37;
  *(a2 + 16) = v28;
  *(a2 + 24) = v32;
  v25 = v33[1];
  *(a2 + 32) = v33[0];
  *(a2 + 48) = v25;
  *(a2 + 64) = v31;
  return result;
}

unint64_t sub_101167118()
{
  result = qword_101A2B998;
  if (!qword_101A2B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B998);
  }

  return result;
}

unint64_t sub_10116716C(uint64_t a1)
{
  *(a1 + 8) = sub_10116719C();
  result = sub_1011671F0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10116719C()
{
  result = qword_101A2B9A0;
  if (!qword_101A2B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B9A0);
  }

  return result;
}

unint64_t sub_1011671F0()
{
  result = qword_101A2B9A8;
  if (!qword_101A2B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B9A8);
  }

  return result;
}

unint64_t sub_101167284()
{
  result = qword_101A2B9B0;
  if (!qword_101A2B9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B9B0);
  }

  return result;
}

unint64_t sub_1011672D8()
{
  result = qword_101A2B9B8;
  if (!qword_101A2B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B9B8);
  }

  return result;
}

unint64_t sub_10116732C(uint64_t a1)
{
  result = sub_100B0F774();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_101167394()
{
  result = qword_101A2B9C0;
  if (!qword_101A2B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B9C0);
  }

  return result;
}

unint64_t sub_1011673E8(uint64_t a1)
{
  result = sub_100B0F720();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_101167450()
{
  result = qword_101A2B9C8;
  if (!qword_101A2B9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B9C8);
  }

  return result;
}

unint64_t sub_1011674A4(uint64_t a1)
{
  result = sub_100B0F6CC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10116750C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[2] = a4();
  a1[3] = a5();
  result = a6();
  a1[4] = result;
  return result;
}

unint64_t sub_101167560()
{
  result = qword_101A2B9D0;
  if (!qword_101A2B9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B9D0);
  }

  return result;
}

uint64_t sub_1011675B4(uint64_t a1)
{
  v1 = *(a1 + 64) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1011675D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_101167620(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 64) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 65) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 2 * -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0;
      return result;
    }

    *(a1 + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_101167698(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 64) & 1 | (a2 << 6);
    *(result + 24) &= 1uLL;
    *(result + 64) = v2;
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    *(result + 64) = -64;
  }

  return result;
}

uint64_t _s13ListLabelTypeO15ListNumberLabelVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 18))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 17);
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

uint64_t _s13ListLabelTypeO15ListNumberLabelVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1011677B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_101167800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

unint64_t sub_1011678AC()
{
  result = qword_101A2B9D8;
  if (!qword_101A2B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B9D8);
  }

  return result;
}

unint64_t sub_101167904()
{
  result = qword_101A2B9E0;
  if (!qword_101A2B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B9E0);
  }

  return result;
}

unint64_t sub_10116795C()
{
  result = qword_101A2B9E8;
  if (!qword_101A2B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B9E8);
  }

  return result;
}

unint64_t sub_1011679B4()
{
  result = qword_101A2B9F0;
  if (!qword_101A2B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B9F0);
  }

  return result;
}

unint64_t sub_101167A0C()
{
  result = qword_101A2B9F8;
  if (!qword_101A2B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2B9F8);
  }

  return result;
}

unint64_t sub_101167A64()
{
  result = qword_101A2BA00;
  if (!qword_101A2BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BA00);
  }

  return result;
}

unint64_t sub_101167ABC()
{
  result = qword_101A2BA08;
  if (!qword_101A2BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BA08);
  }

  return result;
}

unint64_t sub_101167B14()
{
  result = qword_101A2BA10;
  if (!qword_101A2BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BA10);
  }

  return result;
}

unint64_t sub_101167B6C()
{
  result = qword_101A2BA18;
  if (!qword_101A2BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BA18);
  }

  return result;
}

unint64_t sub_101167BC4()
{
  result = qword_101A2BA20;
  if (!qword_101A2BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BA20);
  }

  return result;
}

unint64_t sub_101167C1C()
{
  result = qword_101A2BA28;
  if (!qword_101A2BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BA28);
  }

  return result;
}

unint64_t sub_101167C74()
{
  result = qword_101A2BA30;
  if (!qword_101A2BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BA30);
  }

  return result;
}

id sub_101167CF4()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.VerticalAlignmentType.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.VerticalAlignmentType.version.unsafeMutableAddressor()
{
  if (qword_1019F2978 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.VerticalAlignmentType.version;
}

id static TSContentLanguage.Models.VerticalAlignmentType.version.getter()
{
  if (qword_1019F2978 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.VerticalAlignmentType.version;

  return v1;
}

uint64_t TSContentLanguage.Models.VerticalAlignmentType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6D6F74746F62;
  }

  if (a1 == 1)
  {
    return 0x7265746E6563;
  }

  return 7368564;
}

uint64_t sub_101167E60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7265746E6563;
  if (v2 != 1)
  {
    v5 = 7368564;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6D6F74746F62;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x7265746E6563;
  if (*a2 != 1)
  {
    v8 = 7368564;
    v3 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6D6F74746F62;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_101167F44()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_101167FD8()
{
  String.hash(into:)();
}

Swift::Int sub_101168058()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1011680E8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform17TSContentLanguageO6ModelsO21VerticalAlignmentTypeO8rawValueAGSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_101168118(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7265746E6563;
  if (v2 != 1)
  {
    v5 = 7368564;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D6F74746F62;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t _s8Freeform17TSContentLanguageO6ModelsO21VerticalAlignmentTypeO8rawValueAGSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101878BA8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_101168268()
{
  result = qword_101A2BA38;
  if (!qword_101A2BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BA38);
  }

  return result;
}

unint64_t sub_1011682BC(uint64_t a1)
{
  *(a1 + 8) = sub_1011682EC();
  result = sub_101168340();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1011682EC()
{
  result = qword_101A2BA40;
  if (!qword_101A2BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BA40);
  }

  return result;
}

unint64_t sub_101168340()
{
  result = qword_101A2BA48;
  if (!qword_101A2BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BA48);
  }

  return result;
}

unint64_t sub_101168394(uint64_t a1)
{
  result = sub_100B0F528();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1011683BC(void *a1)
{
  a1[2] = sub_1007CE914();
  a1[3] = sub_10114D440();
  result = sub_101168268();
  a1[4] = result;
  return result;
}

void TSContentLanguage.Models.CurvedShadow.init(angle:opacity:color:offset:radius:curve:)(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  TSContentLanguage.Models.CurvedShadow.validate()();
  if (!v14)
  {
    *a2 = a3;
    *(a2 + 8) = a4;
    v15 = *(a1 + 16);
    *(a2 + 16) = *a1;
    *(a2 + 32) = v15;
    *(a2 + 48) = *(a1 + 32);
    *(a2 + 56) = a5;
    *(a2 + 64) = a6;
    *(a2 + 72) = a7;
  }
}

__n128 TSContentLanguage.Models.CurvedShadow.shadow.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 48) | 0x4000000000000000;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v3;
  result = *(v1 + 56);
  *(a1 + 56) = result;
  *(a1 + 72) = v2;
  return result;
}

id sub_101168504()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.CurvedShadow.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.CurvedShadow.version.unsafeMutableAddressor()
{
  if (qword_1019F2980 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.CurvedShadow.version;
}

id static TSContentLanguage.Models.CurvedShadow.version.getter()
{
  if (qword_1019F2980 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.CurvedShadow.version;

  return v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TSContentLanguage.Models.CurvedShadow.validate()()
{
  v1 = *v0;
  if (*v0 < 0.0 || v1 > 360.0)
  {
    v20 = sub_1005B981C(&qword_101A02780);
    v21 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v19 = xmmword_10147F9B0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v4 + 40) = v1;
    sub_100050F74(&v19, v4);
    swift_willThrow();
    v5 = 0xE500000000000000;
    v6 = 1818717793;
LABEL_7:
    v7 = v6 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
LABEL_22:
    sub_100810B2C();
    swift_allocError();
    *v16 = v7;
    v16[1] = v5;
    v16[2] = v3;
    swift_willThrow();
    return;
  }

  v8 = v0[1];
  if (v8 < 0.0 || v8 > 1.0)
  {
    v20 = sub_1005B981C(&qword_101A02780);
    v21 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v19 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v10 + 40) = v8;
    sub_100050F74(&v19, v10);
    swift_willThrow();
    v5 = 0xE700000000000000;
    v7 = 0x7974696361706FLL;
    goto LABEL_22;
  }

  v11 = v0[7];
  if (fabs(v11) > 50.0)
  {
    v20 = sub_1005B981C(&qword_101A02780);
    v21 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v19 = xmmword_1014CB8B0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v12 + 40) = v11;
    sub_100050F74(&v19, v12);
    swift_willThrow();
    v5 = 0xE600000000000000;
    v7 = 0x74657366666FLL;
    goto LABEL_22;
  }

  v13 = v0[8];
  if (v13 < 0.0 || v13 > 100.0)
  {
    v20 = sub_1005B981C(&qword_101A02780);
    v21 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v19 = xmmword_101463B60;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v15 + 40) = v13;
    sub_100050F74(&v19, v15);
    swift_willThrow();
    v5 = 0xE600000000000000;
    v7 = 0x737569646172;
    goto LABEL_22;
  }

  v17 = v0[9];
  if (fabs(v17) > 1.0)
  {
    v20 = sub_1005B981C(&qword_101A02780);
    v21 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v19 = xmmword_1014CB8A0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v18 + 40) = v17;
    sub_100050F74(&v19, v18);
    swift_willThrow();
    v5 = 0xE500000000000000;
    v6 = 1987212643;
    goto LABEL_7;
  }
}

unint64_t sub_101168C04@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101169608(*a1);
  *a2 = result;
  return result;
}

void sub_101168C34(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C676E61;
  v5 = 0xEF7265696669746ELL;
  v6 = 0x6564695F65707974;
  if (v2 != 6)
  {
    v6 = 0x6E6F6973726576;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x737569646172;
  if (v2 != 4)
  {
    v8 = 0x6576727563;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x726F6C6F63;
  if (v2 != 2)
  {
    v10 = 0x74657366666FLL;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x7974696361706FLL;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_101168D2C()
{
  v1 = *v0;
  v2 = 0x656C676E61;
  v3 = 0x6564695F65707974;
  if (v1 != 6)
  {
    v3 = 0x6E6F6973726576;
  }

  v4 = 0x737569646172;
  if (v1 != 4)
  {
    v4 = 0x6576727563;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x726F6C6F63;
  if (v1 != 2)
  {
    v5 = 0x74657366666FLL;
  }

  if (*v0)
  {
    v2 = 0x7974696361706FLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_101168E20@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_101169608(a1);
  *a2 = result;
  return result;
}

uint64_t sub_101168E48(uint64_t a1)
{
  v2 = sub_10116ACF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101168E84(uint64_t a1)
{
  v2 = sub_10116ACF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 TSContentLanguage.Models.CurvedShadow.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_101169654(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t TSContentLanguage.Models.CurvedShadow.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2BA50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100020E58(a1, a1[3]);
  sub_10116ACF0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v13) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10 = *(v3 + 32);
  v13 = *(v3 + 16);
  v14 = v10;
  v15 = *(v3 + 48);
  v12 = 2;
  sub_100B64688();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v13) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v13) = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v13) = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v13) = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F2980 != -1)
  {
    swift_once();
  }

  *&v13 = static TSContentLanguage.Models.CurvedShadow.version;
  v12 = 7;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

BOOL TSContentLanguage.Models.ContactShadow.isEquivalent(to:)(uint64_t a1)
{
  result = sub_1007C87EC(*v1, *a1);
  if (result)
  {
    result = sub_1007C87EC(*(v1 + 8), *(a1 + 8));
    if (result)
    {
      v4 = *(v1 + 48);
      v5 = *(a1 + 48);
      if (v4 == 2)
      {
        if (v5 != 2)
        {
          return 0;
        }
      }

      else
      {
        if (v5 == 2)
        {
          return 0;
        }

        v6 = *(v1 + 32);
        v7 = *(a1 + 16);
        v8 = *(a1 + 32);
        v11 = *(v1 + 16);
        v12 = v6;
        v13 = v4 & 1;
        v9[0] = v7;
        v9[1] = v8;
        v10 = v5 & 1;
        if ((sub_100B1BBC8(v9) & 1) == 0)
        {
          return 0;
        }
      }

      result = sub_1007C87EC(*(v1 + 56), *(a1 + 56));
      if (result)
      {
        result = sub_1007C87EC(*(v1 + 64), *(a1 + 64));
        if (result)
        {
          return sub_1007C87EC(*(v1 + 72), *(a1 + 72));
        }
      }
    }
  }

  return result;
}

BOOL sub_101169318(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s8Freeform17TSContentLanguageO6ModelsO13ContactShadowV23__derived_struct_equalsySbAG_AGtFZ_0(v8, v9);
}

BOOL sub_101169374(uint64_t a1)
{
  v14 = *(a1 + 16);
  v15 = *(a1 + 32);
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6 = *(a1 + 72);
  v12 = *(v1 + 16);
  v13 = *(v1 + 32);
  v7 = *(v1 + 48);
  v9 = *(v1 + 56);
  v8 = *(v1 + 64);
  v10 = *(v1 + 72);
  result = sub_1007C87EC(*v1, *a1);
  if (result)
  {
    result = sub_1007C87EC(*(v1 + 8), *(a1 + 8));
    if (result)
    {
      if (v7 == 2)
      {
        if (v3 != 2)
        {
          return 0;
        }
      }

      else
      {
        if (v3 == 2)
        {
          return 0;
        }

        v18 = v12;
        v19 = v13;
        v20 = v7 & 1;
        v16[0] = v14;
        v16[1] = v15;
        v17 = v3 & 1;
        if ((sub_100B1BBC8(v16) & 1) == 0)
        {
          return 0;
        }
      }

      result = sub_1007C87EC(v9, v5);
      if (result)
      {
        result = sub_1007C87EC(v8, v4);
        if (result)
        {
          return sub_1007C87EC(v10, v6);
        }
      }
    }
  }

  return result;
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO13ContactShadowV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (v3 == 2 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))), xmmword_10148D100)) & 0xF) != 0)
    {
      return v4;
    }

    v5 = a1;
    v6 = a2;
    if (v2)
    {
      v7 = 1650946675;
    }

    else
    {
      v7 = 13168;
    }

    if (v2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE200000000000000;
    }

    if (v3)
    {
      v9 = 1650946675;
    }

    else
    {
      v9 = 13168;
    }

    if (v3)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    if (v7 == v9 && v8 == v10)
    {

      a2 = v6;
      a1 = v5;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a2 = v6;
      a1 = v5;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  return *(a1 + 72) == *(a2 + 72);
}

unint64_t sub_101169608(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101878C10, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_101169654@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v110 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v111 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v113 = &v104 - v6;
  __chkstk_darwin(v7);
  v114 = &v104 - v8;
  __chkstk_darwin(v9);
  v115 = &v104 - v10;
  __chkstk_darwin(v11);
  v116 = &v104 - v12;
  v117 = type metadata accessor for CodingUserInfoKey();
  v118 = *(v117 - 8);
  __chkstk_darwin(v117);
  v112 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v104 - v15;
  __chkstk_darwin(v17);
  v19 = &v104 - v18;
  __chkstk_darwin(v20);
  v22 = &v104 - v21;
  __chkstk_darwin(v23);
  v25 = &v104 - v24;
  v26 = sub_1005B981C(&qword_101A006D0);
  v119 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v104 - v27;
  v29 = a1[3];
  v121 = a1;
  sub_100020E58(a1, v29);
  sub_10116ACF0();
  v30 = v120;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v30)
  {
    goto LABEL_3;
  }

  v120 = v25;
  v109 = v22;
  v108 = v19;
  v107 = v16;
  LOBYTE(v122) = 6;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v106 = v28;
  v35 = v121;
  v36 = v118;
  if (v32)
  {
    if (v31 == 0xD00000000000002DLL && v32 == 0x8000000101589D10)
    {
    }

    else
    {
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v38 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v39[1] = 0;
        v39[2] = 0;
        *v39 = 0;
        swift_willThrow();
        (*(v119 + 8))(v106, v26);
LABEL_14:
        v33 = v35;
        return sub_100005070(v33);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v126 = 7;
  sub_100969804(&qword_101A00400);
  v40 = v106;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v41 = v122;
  if (v122)
  {
    if (qword_1019F2980 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.CurvedShadow.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v41[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v42 = xmmword_101463530;
      *(v42 + 16) = 0;
      swift_willThrow();

      (*(v119 + 8))(v40, v26);
      goto LABEL_14;
    }

    v105 = v26;
  }

  else
  {
    v105 = v26;
  }

  sub_100020E58(v35, v35[3]);
  v43 = dispatch thunk of Decoder.userInfo.getter();
  v126 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v122))
  {
    v44 = 270.0;
  }

  else
  {
    v44 = *&v122;
  }

  v45 = v116;
  if (v44 < 0.0 || v44 > 360.0)
  {
    v123 = sub_1005B981C(&qword_101A02780);
    v124 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v122 = xmmword_10147F9B0;
    sub_1005B981C(&qword_101A02790);
    v46 = v106;
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v47 = swift_allocError();
    *(v48 + 40) = v44;
    sub_100050F74(&v122, v48);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v49 = 0x656C676E61;
    v49[1] = 0xE500000000000000;
    v49[2] = v47;
    swift_willThrow();
    CodingUserInfoKey.init(rawValue:)();
    v50 = v117;
    result = (*(v36 + 48))(v45, 1, v117);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_98;
    }

    v51 = v120;
    (*(v36 + 32))(v120, v45, v50);
    if (*(v43 + 16) && (v52 = sub_1007C8514(v51), v50 = v117, (v53 & 1) != 0))
    {
      sub_100064288(*(v43 + 56) + 32 * v52, &v122);
      (*(v36 + 8))(v51, v50);
      if (swift_dynamicCast() && (v125 & 1) != 0)
      {

        v44 = 270.0;
        goto LABEL_34;
      }
    }

    else
    {
      (*(v36 + 8))(v51, v50);
    }

    swift_willThrow();

    (*(v119 + 8))(v46, v105);
    goto LABEL_14;
  }

LABEL_34:
  sub_100020E58(v35, v35[3]);
  v54 = dispatch thunk of Decoder.userInfo.getter();
  v126 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v122))
  {
    v55 = 1.0;
  }

  else
  {
    v55 = *&v122;
  }

  if (v55 < 0.0 || v55 > 1.0)
  {
    v123 = sub_1005B981C(&qword_101A02780);
    v124 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v122 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790);
    v57 = v106;
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v58 = swift_allocError();
    *(v59 + 40) = v55;
    sub_100050F74(&v122, v59);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v60 = 0x7974696361706FLL;
    v60[1] = 0xE700000000000000;
    v60[2] = v58;
    swift_willThrow();
    v61 = v115;
    CodingUserInfoKey.init(rawValue:)();
    v62 = v117;
    result = (*(v36 + 48))(v61, 1, v117);
    if (result != 1)
    {
      v63 = v109;
      (*(v36 + 32))();
      if (*(v54 + 16) && (v64 = sub_1007C8514(v63), v62 = v117, (v65 & 1) != 0))
      {
        sub_100064288(*(v54 + 56) + 32 * v64, &v122);
        (*(v36 + 8))(v63, v62);
        v66 = swift_dynamicCast();
        v56 = v119;
        if (v66 && (v125 & 1) != 0)
        {

          v55 = 1.0;
          goto LABEL_49;
        }
      }

      else
      {
        (*(v36 + 8))(v63, v62);
        v56 = v119;
      }

      swift_willThrow();

      (*(v56 + 8))(v57, v105);
      goto LABEL_14;
    }

LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v56 = v119;
LABEL_49:
  sub_100020E58(v35, v35[3]);
  v67 = dispatch thunk of Decoder.userInfo.getter();
  sub_1007BB234(2, v67, 0, 0, v130);

  v127 = v130[0];
  v128 = v130[1];
  v129 = v131;
  sub_100020E58(v35, v35[3]);
  v68 = dispatch thunk of Decoder.userInfo.getter();
  v126 = 3;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v122))
  {
    v69 = 1.0;
  }

  else
  {
    v69 = *&v122;
  }

  if ((BYTE8(v122) & 1) == 0 && fabs(*&v122) > 50.0)
  {
    v123 = sub_1005B981C(&qword_101A02780);
    v124 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v122 = xmmword_1014CB8B0;
    sub_1005B981C(&qword_101A02790);
    v70 = v106;
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v71 = swift_allocError();
    *(v72 + 40) = v69;
    sub_100050F74(&v122, v72);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v73 = 0x74657366666FLL;
    v73[1] = 0xE600000000000000;
    v73[2] = v71;
    swift_willThrow();
    v74 = v114;
    CodingUserInfoKey.init(rawValue:)();
    v75 = v118;
    v76 = v117;
    result = (*(v118 + 48))(v74, 1, v117);
    if (result != 1)
    {
      v77 = *(v75 + 32);
      v78 = v108;
      v77(v108, v74, v76);
      if (*(v68 + 16) && (v79 = sub_1007C8514(v78), v76 = v117, (v80 & 1) != 0))
      {
        sub_100064288(*(v68 + 56) + 32 * v79, &v122);
        (*(v118 + 8))(v78, v76);
        if (swift_dynamicCast() && (v125 & 1) != 0)
        {

          v69 = 1.0;
          goto LABEL_66;
        }
      }

      else
      {
        (*(v118 + 8))(v78, v76);
      }

      swift_willThrow();

      (*(v56 + 8))(v70, v105);
      goto LABEL_14;
    }

LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

LABEL_66:
  sub_100020E58(v35, v35[3]);
  v81 = dispatch thunk of Decoder.userInfo.getter();
  v126 = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v122))
  {
    v82 = 0.0;
  }

  else
  {
    v82 = *&v122;
  }

  if (v82 < 0.0 || v82 > 100.0)
  {
    v123 = sub_1005B981C(&qword_101A02780);
    v124 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v122 = xmmword_101463B60;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v83 = swift_allocError();
    *(v84 + 40) = v82;
    sub_100050F74(&v122, v84);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v85 = 0x737569646172;
    v85[1] = 0xE600000000000000;
    v85[2] = v83;
    swift_willThrow();
    v86 = v113;
    v87 = v107;
    CodingUserInfoKey.init(rawValue:)();
    v88 = v118;
    v89 = v117;
    result = (*(v118 + 48))(v86, 1, v117);
    if (result != 1)
    {
      (*(v88 + 32))(v87, v86, v89);
      if (*(v81 + 16) && (v90 = sub_1007C8514(v87), (v91 & 1) != 0))
      {
        sub_100064288(*(v81 + 56) + 32 * v90, &v122);
        (*(v118 + 8))(v87, v117);
        if (swift_dynamicCast())
        {
          v92 = v119;
          v93 = v106;
          if (v125)
          {

            v82 = 0.0;
            goto LABEL_78;
          }

LABEL_81:
          swift_willThrow();

          (*(v92 + 8))(v93, v105);
          goto LABEL_3;
        }
      }

      else
      {
        (*(v118 + 8))(v87, v117);
      }

      v92 = v119;
      v93 = v106;
      goto LABEL_81;
    }

LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

LABEL_78:
  sub_100020E58(v121, v121[3]);
  v94 = dispatch thunk of Decoder.userInfo.getter();
  v126 = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v122))
  {
    v95 = 1.0;
  }

  else
  {
    v95 = *&v122;
  }

  if ((BYTE8(v122) & 1) != 0 || fabs(*&v122) <= 1.0)
  {

    goto LABEL_96;
  }

  v123 = sub_1005B981C(&qword_101A02780);
  v124 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
  v122 = xmmword_1014CB8A0;
  sub_1005B981C(&qword_101A02790);
  sub_10001A2F8(&qword_101A02798, &qword_101A02790);
  v96 = swift_allocError();
  *(v97 + 40) = v95;
  sub_100050F74(&v122, v97);
  swift_willThrow();
  sub_100810B2C();
  swift_allocError();
  *v98 = 0x6576727563;
  v98[1] = 0xE500000000000000;
  v98[2] = v96;
  swift_willThrow();
  v99 = v111;
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v118 + 48))(v99, 1, v117);
  if (result != 1)
  {
    (*(v118 + 32))(v112, v111, v117);
    if (*(v94 + 16) && (v100 = sub_1007C8514(v112), (v101 & 1) != 0))
    {
      sub_100064288(*(v94 + 56) + 32 * v100, &v122);
      (*(v118 + 8))(v112, v117);
      if (swift_dynamicCast() && (v125 & 1) != 0)
      {

        v95 = 1.0;
LABEL_96:
        (*(v119 + 8))(v106, v105);
        result = sub_100005070(v121);
        v102 = v110;
        *v110 = v44;
        v102[1] = v55;
        v103 = v128;
        *(v102 + 1) = v127;
        *(v102 + 2) = v103;
        *(v102 + 48) = v129;
        v102[7] = v69;
        v102[8] = v82;
        v102[9] = v95;
        return result;
      }
    }

    else
    {
      (*(v118 + 8))(v112, v117);
    }

    swift_willThrow();

    (*(v119 + 8))(v106, v105);
LABEL_3:
    v33 = v121;
    return sub_100005070(v33);
  }

LABEL_101:
  __break(1u);
  return result;
}

unint64_t sub_10116ACF0()
{
  result = qword_101A2BA58;
  if (!qword_101A2BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BA58);
  }

  return result;
}

unint64_t sub_10116AD44(uint64_t a1)
{
  result = sub_10116AD6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10116AD6C()
{
  result = qword_101A2BA60;
  if (!qword_101A2BA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BA60);
  }

  return result;
}

unint64_t sub_10116ADC0(uint64_t a1)
{
  result = sub_100B10A7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10116ADE8(void *a1)
{
  a1[2] = sub_100BF914C();
  a1[3] = sub_100BF8C68();
  result = sub_10116AE20();
  a1[4] = result;
  return result;
}

unint64_t sub_10116AE20()
{
  result = qword_101A2BA68;
  if (!qword_101A2BA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BA68);
  }

  return result;
}

uint64_t sub_10116AE74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 80))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 48);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_10116AEC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_10116AF44()
{
  result = qword_101A2BA70;
  if (!qword_101A2BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BA70);
  }

  return result;
}

unint64_t sub_10116AF9C()
{
  result = qword_101A2BA78;
  if (!qword_101A2BA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BA78);
  }

  return result;
}

unint64_t sub_10116AFF4()
{
  result = qword_101A2BA80;
  if (!qword_101A2BA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BA80);
  }

  return result;
}

id sub_10116B070()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.ContactShadow.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.ContactShadow.version.unsafeMutableAddressor()
{
  if (qword_1019F2988 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ContactShadow.version;
}

id static TSContentLanguage.Models.ContactShadow.version.getter()
{
  if (qword_1019F2988 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.ContactShadow.version;

  return v1;
}

__n128 TSContentLanguage.Models.ContactShadow.shadow.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 72);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  result = *(v1 + 56);
  *(a1 + 56) = result;
  *(a1 + 72) = v3;
  return result;
}

void TSContentLanguage.Models.ContactShadow.init(angle:opacity:color:offset:radius:height:)(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  TSContentLanguage.Models.ContactShadow.validate()();
  if (!v14)
  {
    *a2 = a3;
    *(a2 + 8) = a4;
    v15 = *(a1 + 16);
    *(a2 + 16) = *a1;
    *(a2 + 32) = v15;
    *(a2 + 48) = *(a1 + 32);
    *(a2 + 56) = a5;
    *(a2 + 64) = a6;
    *(a2 + 72) = a7;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TSContentLanguage.Models.ContactShadow.validate()()
{
  v1 = *v0;
  if (*v0 < 0.0 || v1 > 360.0)
  {
    v19 = sub_1005B981C(&qword_101A02780);
    v20 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v18 = xmmword_10147F9B0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v4 + 40) = v1;
    sub_100050F74(&v18, v4);
    swift_willThrow();
    v5 = 0xE500000000000000;
    v6 = 0x656C676E61;
LABEL_24:
    sub_100810B2C();
    swift_allocError();
    *v17 = v6;
    v17[1] = v5;
    v17[2] = v3;
    swift_willThrow();
    return;
  }

  v7 = v0[1];
  if (v7 < 0.0 || v7 > 1.0)
  {
    v19 = sub_1005B981C(&qword_101A02780);
    v20 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v18 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v9 + 40) = v7;
    sub_100050F74(&v18, v9);
    swift_willThrow();
    v5 = 0xE700000000000000;
    v6 = 0x7974696361706FLL;
    goto LABEL_24;
  }

  v10 = v0[7];
  if (fabs(v10) > 75.0)
  {
    v19 = sub_1005B981C(&qword_101A02780);
    v20 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v18 = xmmword_1014CBB70;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v11 + 40) = v10;
    sub_100050F74(&v18, v11);
    swift_willThrow();
    v5 = 0xE600000000000000;
    v6 = 0x74657366666FLL;
    goto LABEL_24;
  }

  v12 = v0[8];
  if (v12 < 10.0 || v12 > 100.0)
  {
    v19 = sub_1005B981C(&qword_101A02780);
    v20 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v18 = xmmword_1014B0CD0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v14 + 40) = v12;
    sub_100050F74(&v18, v14);
    swift_willThrow();
    v5 = 0xE600000000000000;
    v6 = 0x737569646172;
    goto LABEL_24;
  }

  v15 = v0[9];
  if (v15 < 0.08715574 || v15 > 0.57357644)
  {
    v19 = sub_1005B981C(&qword_101A02780);
    v20 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v18 = xmmword_1014CBB60;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v16 + 40) = v15;
    sub_100050F74(&v18, v16);
    swift_willThrow();
    v5 = 0xE600000000000000;
    v6 = 0x746867696568;
    goto LABEL_24;
  }
}

unint64_t sub_10116B830@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10116BE5C(*a1);
  *a2 = result;
  return result;
}

void sub_10116B860(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C676E61;
  v5 = 0xEF7265696669746ELL;
  v6 = 0x6564695F65707974;
  if (v2 != 6)
  {
    v6 = 0x6E6F6973726576;
    v5 = 0xE700000000000000;
  }

  v7 = 0x737569646172;
  if (v2 != 4)
  {
    v7 = 0x746867696568;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  v8 = 0xE500000000000000;
  v9 = 0x726F6C6F63;
  if (v2 != 2)
  {
    v9 = 0x74657366666FLL;
    v8 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x7974696361706FLL;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_10116B954()
{
  v1 = *v0;
  v2 = 0x656C676E61;
  v3 = 0x6564695F65707974;
  if (v1 != 6)
  {
    v3 = 0x6E6F6973726576;
  }

  v4 = 0x737569646172;
  if (v1 != 4)
  {
    v4 = 0x746867696568;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x726F6C6F63;
  if (v1 != 2)
  {
    v5 = 0x74657366666FLL;
  }

  if (*v0)
  {
    v2 = 0x7974696361706FLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10116BA44@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10116BE5C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10116BA6C(uint64_t a1)
{
  v2 = sub_10116D568();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10116BAA8(uint64_t a1)
{
  v2 = sub_10116D568();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 TSContentLanguage.Models.ContactShadow.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10116BEA8(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t TSContentLanguage.Models.ContactShadow.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2BA88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100020E58(a1, a1[3]);
  sub_10116D568();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v13) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10 = *(v3 + 32);
  v13 = *(v3 + 16);
  v14 = v10;
  v15 = *(v3 + 48);
  v12 = 2;
  sub_100B64688();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v13) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v13) = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v13) = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v13) = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F2988 != -1)
  {
    swift_once();
  }

  *&v13 = static TSContentLanguage.Models.ContactShadow.version;
  v12 = 7;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10116BE5C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101878CF0, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10116BEA8@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v110 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v111 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v113 = &v104 - v6;
  __chkstk_darwin(v7);
  v114 = &v104 - v8;
  __chkstk_darwin(v9);
  v115 = &v104 - v10;
  __chkstk_darwin(v11);
  v116 = &v104 - v12;
  v117 = type metadata accessor for CodingUserInfoKey();
  v118 = *(v117 - 8);
  __chkstk_darwin(v117);
  v112 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v104 - v15;
  __chkstk_darwin(v17);
  v19 = &v104 - v18;
  __chkstk_darwin(v20);
  v22 = &v104 - v21;
  __chkstk_darwin(v23);
  v25 = &v104 - v24;
  v26 = sub_1005B981C(&qword_101A006C8);
  v119 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v104 - v27;
  v29 = a1[3];
  v121 = a1;
  sub_100020E58(a1, v29);
  sub_10116D568();
  v30 = v120;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v30)
  {
    goto LABEL_3;
  }

  v120 = v25;
  v109 = v22;
  v108 = v19;
  v107 = v16;
  LOBYTE(v122) = 6;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v106 = v28;
  v35 = v121;
  v36 = v118;
  if (v32)
  {
    if (v31 == 0xD00000000000002ELL && v32 == 0x8000000101589BA0)
    {
    }

    else
    {
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v38 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v39[1] = 0;
        v39[2] = 0;
        *v39 = 0;
        swift_willThrow();
        (*(v119 + 8))(v106, v26);
LABEL_14:
        v33 = v35;
        return sub_100005070(v33);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v126 = 7;
  sub_100969804(&qword_101A00400);
  v40 = v106;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v41 = v122;
  if (v122)
  {
    if (qword_1019F2988 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.ContactShadow.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v41[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v42 = xmmword_101463530;
      *(v42 + 16) = 0;
      swift_willThrow();

      (*(v119 + 8))(v40, v26);
      goto LABEL_14;
    }

    v105 = v26;
  }

  else
  {
    v105 = v26;
  }

  sub_100020E58(v35, v35[3]);
  v43 = dispatch thunk of Decoder.userInfo.getter();
  v126 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v122))
  {
    v44 = 270.0;
  }

  else
  {
    v44 = *&v122;
  }

  v45 = v116;
  if (v44 < 0.0 || v44 > 360.0)
  {
    v123 = sub_1005B981C(&qword_101A02780);
    v124 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v122 = xmmword_10147F9B0;
    sub_1005B981C(&qword_101A02790);
    v46 = v106;
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v47 = swift_allocError();
    *(v48 + 40) = v44;
    sub_100050F74(&v122, v48);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v49 = 0x656C676E61;
    v49[1] = 0xE500000000000000;
    v49[2] = v47;
    swift_willThrow();
    CodingUserInfoKey.init(rawValue:)();
    v50 = v117;
    result = (*(v36 + 48))(v45, 1, v117);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_98;
    }

    v51 = v120;
    (*(v36 + 32))(v120, v45, v50);
    if (*(v43 + 16) && (v52 = sub_1007C8514(v51), v50 = v117, (v53 & 1) != 0))
    {
      sub_100064288(*(v43 + 56) + 32 * v52, &v122);
      (*(v36 + 8))(v51, v50);
      if (swift_dynamicCast() && (v125 & 1) != 0)
      {

        v44 = 270.0;
        goto LABEL_34;
      }
    }

    else
    {
      (*(v36 + 8))(v51, v50);
    }

    swift_willThrow();

    (*(v119 + 8))(v46, v105);
    goto LABEL_14;
  }

LABEL_34:
  sub_100020E58(v35, v35[3]);
  v54 = dispatch thunk of Decoder.userInfo.getter();
  v126 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v122))
  {
    v55 = 1.0;
  }

  else
  {
    v55 = *&v122;
  }

  if (v55 < 0.0 || v55 > 1.0)
  {
    v123 = sub_1005B981C(&qword_101A02780);
    v124 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v122 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790);
    v57 = v106;
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v58 = swift_allocError();
    *(v59 + 40) = v55;
    sub_100050F74(&v122, v59);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v60 = 0x7974696361706FLL;
    v60[1] = 0xE700000000000000;
    v60[2] = v58;
    swift_willThrow();
    v61 = v115;
    CodingUserInfoKey.init(rawValue:)();
    v62 = v117;
    result = (*(v36 + 48))(v61, 1, v117);
    if (result != 1)
    {
      v63 = v109;
      (*(v36 + 32))();
      if (*(v54 + 16) && (v64 = sub_1007C8514(v63), v62 = v117, (v65 & 1) != 0))
      {
        sub_100064288(*(v54 + 56) + 32 * v64, &v122);
        (*(v36 + 8))(v63, v62);
        v66 = swift_dynamicCast();
        v56 = v119;
        if (v66 && (v125 & 1) != 0)
        {

          v55 = 1.0;
          goto LABEL_49;
        }
      }

      else
      {
        (*(v36 + 8))(v63, v62);
        v56 = v119;
      }

      swift_willThrow();

      (*(v56 + 8))(v57, v105);
      goto LABEL_14;
    }

LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v56 = v119;
LABEL_49:
  sub_100020E58(v35, v35[3]);
  v67 = dispatch thunk of Decoder.userInfo.getter();
  sub_1007BB25C(2, v67, 0, 0, v130);

  v127 = v130[0];
  v128 = v130[1];
  v129 = v131;
  sub_100020E58(v35, v35[3]);
  v68 = dispatch thunk of Decoder.userInfo.getter();
  v126 = 3;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v122))
  {
    v69 = 0.0;
  }

  else
  {
    v69 = *&v122;
  }

  if ((BYTE8(v122) & 1) == 0 && fabs(*&v122) > 75.0)
  {
    v123 = sub_1005B981C(&qword_101A02780);
    v124 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v122 = xmmword_1014CBB70;
    sub_1005B981C(&qword_101A02790);
    v70 = v106;
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v71 = swift_allocError();
    *(v72 + 40) = v69;
    sub_100050F74(&v122, v72);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v73 = 0x74657366666FLL;
    v73[1] = 0xE600000000000000;
    v73[2] = v71;
    swift_willThrow();
    v74 = v114;
    CodingUserInfoKey.init(rawValue:)();
    v75 = v118;
    v76 = v117;
    result = (*(v118 + 48))(v74, 1, v117);
    if (result != 1)
    {
      v77 = *(v75 + 32);
      v78 = v108;
      v77(v108, v74, v76);
      if (*(v68 + 16) && (v79 = sub_1007C8514(v78), v76 = v117, (v80 & 1) != 0))
      {
        sub_100064288(*(v68 + 56) + 32 * v79, &v122);
        (*(v118 + 8))(v78, v76);
        if (swift_dynamicCast() && (v125 & 1) != 0)
        {

          v69 = 0.0;
          goto LABEL_66;
        }
      }

      else
      {
        (*(v118 + 8))(v78, v76);
      }

      swift_willThrow();

      (*(v56 + 8))(v70, v105);
      goto LABEL_14;
    }

LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

LABEL_66:
  sub_100020E58(v35, v35[3]);
  v81 = dispatch thunk of Decoder.userInfo.getter();
  v126 = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v122))
  {
    v82 = 28.0;
  }

  else
  {
    v82 = *&v122;
  }

  if (v82 < 10.0 || v82 > 100.0)
  {
    v123 = sub_1005B981C(&qword_101A02780);
    v124 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v122 = xmmword_1014B0CD0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v83 = swift_allocError();
    *(v84 + 40) = v82;
    sub_100050F74(&v122, v84);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v85 = 0x737569646172;
    v85[1] = 0xE600000000000000;
    v85[2] = v83;
    swift_willThrow();
    v86 = v113;
    v87 = v107;
    CodingUserInfoKey.init(rawValue:)();
    v88 = v118;
    v89 = v117;
    result = (*(v118 + 48))(v86, 1, v117);
    if (result != 1)
    {
      (*(v88 + 32))(v87, v86, v89);
      if (*(v81 + 16) && (v90 = sub_1007C8514(v87), (v91 & 1) != 0))
      {
        sub_100064288(*(v81 + 56) + 32 * v90, &v122);
        (*(v118 + 8))(v87, v117);
        if (swift_dynamicCast())
        {
          v92 = v119;
          v93 = v106;
          if (v125)
          {

            v82 = 28.0;
            goto LABEL_78;
          }

LABEL_81:
          swift_willThrow();

          (*(v92 + 8))(v93, v105);
          goto LABEL_3;
        }
      }

      else
      {
        (*(v118 + 8))(v87, v117);
      }

      v92 = v119;
      v93 = v106;
      goto LABEL_81;
    }

LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

LABEL_78:
  sub_100020E58(v121, v121[3]);
  v94 = dispatch thunk of Decoder.userInfo.getter();
  v126 = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v122))
  {
    v95 = 0.17364818;
  }

  else
  {
    v95 = *&v122;
  }

  if (v95 >= 0.08715574 && v95 <= 0.57357644)
  {

LABEL_94:
    (*(v119 + 8))(v106, v105);
    result = sub_100005070(v121);
    v102 = v110;
    *v110 = v44;
    v102[1] = v55;
    v103 = v128;
    *(v102 + 1) = v127;
    *(v102 + 2) = v103;
    *(v102 + 48) = v129;
    v102[7] = v69;
    v102[8] = v82;
    v102[9] = v95;
    return result;
  }

  v123 = sub_1005B981C(&qword_101A02780);
  v124 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
  v122 = xmmword_1014CBB60;
  sub_1005B981C(&qword_101A02790);
  sub_10001A2F8(&qword_101A02798, &qword_101A02790);
  v96 = swift_allocError();
  *(v97 + 40) = v95;
  sub_100050F74(&v122, v97);
  swift_willThrow();
  sub_100810B2C();
  swift_allocError();
  *v98 = 0x746867696568;
  v98[1] = 0xE600000000000000;
  v98[2] = v96;
  swift_willThrow();
  v99 = v111;
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v118 + 48))(v99, 1, v117);
  if (result != 1)
  {
    (*(v118 + 32))(v112, v111, v117);
    if (*(v94 + 16) && (v100 = sub_1007C8514(v112), (v101 & 1) != 0))
    {
      sub_100064288(*(v94 + 56) + 32 * v100, &v122);
      (*(v118 + 8))(v112, v117);
      if (swift_dynamicCast() && (v125 & 1) != 0)
      {

        v95 = 0.17364818;
        goto LABEL_94;
      }
    }

    else
    {
      (*(v118 + 8))(v112, v117);
    }

    swift_willThrow();

    (*(v119 + 8))(v106, v105);
LABEL_3:
    v33 = v121;
    return sub_100005070(v33);
  }

LABEL_101:
  __break(1u);
  return result;
}

unint64_t sub_10116D568()
{
  result = qword_101A2BA90;
  if (!qword_101A2BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BA90);
  }

  return result;
}

unint64_t sub_10116D5BC(uint64_t a1)
{
  result = sub_10116D5E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10116D5E4()
{
  result = qword_101A2BA98;
  if (!qword_101A2BA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BA98);
  }

  return result;
}

unint64_t sub_10116D638(uint64_t a1)
{
  result = sub_100B10CC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10116D660(void *a1)
{
  a1[2] = sub_100BF90F8();
  a1[3] = sub_100BF8CBC();
  result = sub_10116D698();
  a1[4] = result;
  return result;
}

unint64_t sub_10116D698()
{
  result = qword_101A2BAA0;
  if (!qword_101A2BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BAA0);
  }

  return result;
}

unint64_t sub_10116D710()
{
  result = qword_101A2BAA8;
  if (!qword_101A2BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BAA8);
  }

  return result;
}

unint64_t sub_10116D768()
{
  result = qword_101A2BAB0;
  if (!qword_101A2BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BAB0);
  }

  return result;
}

unint64_t sub_10116D7C0()
{
  result = qword_101A2BAB8;
  if (!qword_101A2BAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BAB8);
  }

  return result;
}

void TSContentLanguage.Models.DropShadow.init(angle:opacity:color:offset:radius:)(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  TSContentLanguage.Models.DropShadow.validate()();
  if (!v12)
  {
    *a2 = a3;
    *(a2 + 8) = a4;
    v13 = *(a1 + 16);
    *(a2 + 16) = *a1;
    *(a2 + 32) = v13;
    *(a2 + 48) = *(a1 + 32);
    *(a2 + 56) = a5;
    *(a2 + 64) = a6;
  }
}

__n128 TSContentLanguage.Models.DropShadow.shadow.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48) | 0x8000000000000000;
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  result = *(v1 + 56);
  *(a1 + 56) = result;
  return result;
}

id sub_10116D8FC()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.DropShadow.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.DropShadow.version.unsafeMutableAddressor()
{
  if (qword_1019F2990 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.DropShadow.version;
}

id static TSContentLanguage.Models.DropShadow.version.getter()
{
  if (qword_1019F2990 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.DropShadow.version;

  return v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TSContentLanguage.Models.DropShadow.validate()()
{
  v1 = *v0;
  if (*v0 < 0.0 || v1 > 360.0)
  {
    v18 = sub_1005B981C(&qword_101A02780);
    v19 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v17 = xmmword_10147F9B0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v4 + 40) = v1;
    sub_100050F74(&v17, v4);
    swift_willThrow();
    v5 = 0xE500000000000000;
    v6 = 0x656C676E61;
LABEL_25:
    sub_100810B2C();
    swift_allocError();
    *v16 = v6;
    v16[1] = v5;
    v16[2] = v3;
    swift_willThrow();
    return;
  }

  v7 = v0[1];
  if (v7 < 0.0 || v7 > 1.0)
  {
    v18 = sub_1005B981C(&qword_101A02780);
    v19 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v17 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v9 + 40) = v7;
    sub_100050F74(&v17, v9);
    swift_willThrow();
    v5 = 0xE700000000000000;
    v6 = 0x7974696361706FLL;
    goto LABEL_25;
  }

  v10 = v0[7];
  if (v10 < 0.0 || v10 > 50.0)
  {
    v18 = sub_1005B981C(&qword_101A02780);
    v19 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v17 = xmmword_1014CBE00;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v12 + 40) = v10;
    sub_100050F74(&v17, v12);
    swift_willThrow();
    v5 = 0xE600000000000000;
    v6 = 0x74657366666FLL;
    goto LABEL_25;
  }

  v13 = v0[8];
  if (v13 < 0.0 || v13 > 100.0)
  {
    v18 = sub_1005B981C(&qword_101A02780);
    v19 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v17 = xmmword_101463B60;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v15 + 40) = v13;
    sub_100050F74(&v17, v15);
    swift_willThrow();
    v5 = 0xE600000000000000;
    v6 = 0x737569646172;
    goto LABEL_25;
  }
}

uint64_t sub_10116DEC0()
{
  String.hash(into:)();
}

unint64_t sub_10116DFD4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10116E948(*a1);
  *a2 = result;
  return result;
}

void sub_10116E004(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C676E61;
  v5 = 0xEF7265696669746ELL;
  v6 = 0x6564695F65707974;
  if (v2 != 5)
  {
    v6 = 0x6E6F6973726576;
    v5 = 0xE700000000000000;
  }

  v7 = 0x74657366666FLL;
  if (v2 != 3)
  {
    v7 = 0x737569646172;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  v8 = 0xE700000000000000;
  v9 = 0x7974696361706FLL;
  if (v2 != 1)
  {
    v9 = 0x726F6C6F63;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_10116E0E0()
{
  v1 = *v0;
  v2 = 0x656C676E61;
  v3 = 0x6564695F65707974;
  if (v1 != 5)
  {
    v3 = 0x6E6F6973726576;
  }

  v4 = 0x74657366666FLL;
  if (v1 != 3)
  {
    v4 = 0x737569646172;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7974696361706FLL;
  if (v1 != 1)
  {
    v5 = 0x726F6C6F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10116E1B8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10116E948(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10116E1E0(uint64_t a1)
{
  v2 = sub_10116FC28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10116E21C(uint64_t a1)
{
  v2 = sub_10116FC28();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 TSContentLanguage.Models.DropShadow.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10116E994(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t TSContentLanguage.Models.DropShadow.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2BAC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100020E58(a1, a1[3]);
  sub_10116FC28();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v13) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10 = *(v3 + 32);
  v13 = *(v3 + 16);
  v14 = v10;
  v15 = *(v3 + 48);
  v12 = 2;
  sub_100B64688();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v13) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v13) = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v13) = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F2990 != -1)
  {
    swift_once();
  }

  *&v13 = static TSContentLanguage.Models.DropShadow.version;
  v12 = 6;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

BOOL TSContentLanguage.Models.DropShadow.isEquivalent(to:)(uint64_t a1)
{
  result = sub_1007C87EC(*v1, *a1);
  if (result)
  {
    result = sub_1007C87EC(*(v1 + 8), *(a1 + 8));
    if (result)
    {
      v4 = *(v1 + 48);
      v5 = *(a1 + 48);
      if (v4 == 2)
      {
        if (v5 != 2)
        {
          return 0;
        }
      }

      else
      {
        if (v5 == 2)
        {
          return 0;
        }

        v6 = *(v1 + 32);
        v7 = *(a1 + 16);
        v8 = *(a1 + 32);
        v11 = *(v1 + 16);
        v12 = v6;
        v13 = v4 & 1;
        v9[0] = v7;
        v9[1] = v8;
        v10 = v5 & 1;
        if ((sub_100B1BBC8(v9) & 1) == 0)
        {
          return 0;
        }
      }

      result = sub_1007C87EC(*(v1 + 56), *(a1 + 56));
      if (result)
      {
        return sub_1007C87EC(*(v1 + 64), *(a1 + 64));
      }
    }
  }

  return result;
}

BOOL sub_10116E688(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s8Freeform17TSContentLanguageO6ModelsO10DropShadowV23__derived_struct_equalsySbAG_AGtFZ_0(v7, v9);
}

BOOL sub_10116E6E4(uint64_t a1)
{
  v12 = *(a1 + 16);
  v13 = *(a1 + 32);
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  v10 = *(v1 + 16);
  v11 = *(v1 + 32);
  v6 = *(v1 + 48);
  v8 = *(v1 + 56);
  v7 = *(v1 + 64);
  result = sub_1007C87EC(*v1, *a1);
  if (result)
  {
    result = sub_1007C87EC(*(v1 + 8), *(a1 + 8));
    if (result)
    {
      if (v6 == 2)
      {
        if (v3 != 2)
        {
          return 0;
        }
      }

      else
      {
        if (v3 == 2)
        {
          return 0;
        }

        v16 = v10;
        v17 = v11;
        v18 = v6 & 1;
        v14[0] = v12;
        v14[1] = v13;
        v15 = v3 & 1;
        if ((sub_100B1BBC8(v14) & 1) == 0)
        {
          return 0;
        }
      }

      result = sub_1007C87EC(v8, v5);
      if (result)
      {
        return sub_1007C87EC(v7, v4);
      }
    }
  }

  return result;
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO10DropShadowV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      return 0;
    }

    goto LABEL_24;
  }

  v4 = 0;
  if (v3 != 2 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))), xmmword_10148D100)) & 0xF) == 0)
  {
    v5 = a1;
    v6 = a2;
    if (v2)
    {
      v7 = 1650946675;
    }

    else
    {
      v7 = 13168;
    }

    if (v2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE200000000000000;
    }

    if (v3)
    {
      v9 = 1650946675;
    }

    else
    {
      v9 = 13168;
    }

    if (v3)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    if (v7 == v9 && v8 == v10)
    {

      a2 = v6;
      a1 = v5;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a2 = v6;
      a1 = v5;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_24:
    if (*(a1 + 56) == *(a2 + 56))
    {
      return *(a1 + 64) == *(a2 + 64);
    }

    return 0;
  }

  return v4;
}

unint64_t sub_10116E948(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101878DD0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10116E994@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v93 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v94 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v95 = &v89 - v6;
  __chkstk_darwin(v7);
  v96 = &v89 - v8;
  __chkstk_darwin(v9);
  v97 = &v89 - v10;
  v99 = type metadata accessor for CodingUserInfoKey();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v89 - v14;
  __chkstk_darwin(v16);
  v18 = &v89 - v17;
  __chkstk_darwin(v19);
  v21 = &v89 - v20;
  v22 = sub_1005B981C(&qword_101A006C0);
  v100 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v89 - v23;
  v25 = a1[3];
  v102 = a1;
  sub_100020E58(a1, v25);
  sub_10116FC28();
  v26 = v101;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    goto LABEL_33;
  }

  v101 = v21;
  v92 = v18;
  v91 = v15;
  v90 = v12;
  v27 = v99;
  LOBYTE(v103) = 5;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v29)
  {
    if (v28 == 0xD00000000000002BLL && v29 == 0x8000000101589BD0)
    {
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v31 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v32[1] = 0;
        v32[2] = 0;
        *v32 = 0;
        swift_willThrow();
LABEL_32:
        (*(v100 + 8))(v24, v22);
LABEL_33:
        v48 = v102;
        return sub_100005070(v48);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v112 = 6;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v33 = v103;
  if (v103)
  {
    if (qword_1019F2990 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.DropShadow.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v33[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v34 = xmmword_101463530;
      *(v34 + 16) = 0;
      swift_willThrow();

      goto LABEL_32;
    }
  }

  sub_100020E58(v102, v102[3]);
  v35 = dispatch thunk of Decoder.userInfo.getter();
  v112 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v103))
  {
    v36 = 270.0;
  }

  else
  {
    v36 = *&v103;
  }

  if (v36 >= 0.0 && v36 <= 360.0)
  {
    v37 = 0;

    goto LABEL_28;
  }

  v104 = sub_1005B981C(&qword_101A02780);
  v105 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
  v103 = xmmword_10147F9B0;
  sub_1005B981C(&qword_101A02790);
  sub_10001A2F8(&qword_101A02798, &qword_101A02790);
  v38 = swift_allocError();
  *(v39 + 40) = v36;
  sub_100050F74(&v103, v39);
  swift_willThrow();
  sub_100810B2C();
  swift_allocError();
  *v40 = 0x656C676E61;
  v40[1] = 0xE500000000000000;
  v40[2] = v38;
  swift_willThrow();
  v89 = 0;
  v41 = v97;
  CodingUserInfoKey.init(rawValue:)();
  v42 = v98;
  result = (*(v98 + 48))(v41, 1, v27);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_83;
  }

  v44 = v101;
  (*(v42 + 32))(v101, v41, v27);
  if (!*(v35 + 16) || (v45 = sub_1007C8514(v44), (v46 & 1) == 0))
  {
    (*(v42 + 8))(v44, v27);
LABEL_31:
    swift_willThrow();

    goto LABEL_32;
  }

  sub_100064288(*(v35 + 56) + 32 * v45, &v103);
  (*(v42 + 8))(v44, v27);
  if (!swift_dynamicCast() || (v111 & 1) == 0)
  {
    goto LABEL_31;
  }

  v36 = 270.0;
  v37 = v89;
LABEL_28:
  sub_100020E58(v102, v102[3]);
  v47 = dispatch thunk of Decoder.userInfo.getter();
  v112 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v101 = v22;
  if (v37)
  {
LABEL_42:
    v54 = v96;
    CodingUserInfoKey.init(rawValue:)();
    v55 = v98;
    result = (*(v98 + 48))(v54, 1, v27);
    if (result != 1)
    {
      v56 = *(v55 + 32);
      v57 = v92;
      v56(v92, v54, v27);
      if (*(v47 + 16) && (v58 = sub_1007C8514(v57), v57 = v92, (v59 & 1) != 0))
      {
        sub_100064288(*(v47 + 56) + 32 * v58, &v103);
        (*(v98 + 8))(v57, v27);
        v60 = swift_dynamicCast();
        v50 = v100;
        if (v60 && (v111 & 1) != 0)
        {

          v49 = 1.0;
          goto LABEL_48;
        }
      }

      else
      {
        (*(v98 + 8))(v57, v27);
        v50 = v100;
      }

      swift_willThrow();

      (*(v50 + 8))(v24, v101);
      goto LABEL_33;
    }

LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (BYTE8(v103))
  {
    v49 = 1.0;
  }

  else
  {
    v49 = *&v103;
  }

  if (v49 < 0.0 || v49 > 1.0)
  {
    v104 = sub_1005B981C(&qword_101A02780);
    v105 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v103 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v51 = swift_allocError();
    *(v52 + 40) = v49;
    sub_100050F74(&v103, v52);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v53 = 0x7974696361706FLL;
    v53[1] = 0xE700000000000000;
    v53[2] = v51;
    swift_willThrow();
    goto LABEL_42;
  }

  v50 = v100;
LABEL_48:
  sub_100020E58(v102, v102[3]);
  v61 = dispatch thunk of Decoder.userInfo.getter();
  sub_1007BB284(2, v61, 0, 0, v109);

  v106 = v109[0];
  v107 = v109[1];
  v108 = v110;
  sub_100020E58(v102, v102[3]);
  v62 = dispatch thunk of Decoder.userInfo.getter();
  v112 = 3;
  v97 = v24;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v103))
  {
    v63 = 2.0;
  }

  else
  {
    v63 = *&v103;
  }

  if (v63 < 0.0 || v63 > 50.0)
  {
    v104 = sub_1005B981C(&qword_101A02780);
    v105 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v103 = xmmword_1014CBE00;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v64 = swift_allocError();
    *(v65 + 40) = v63;
    sub_100050F74(&v103, v65);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v66 = 0x74657366666FLL;
    v66[1] = 0xE600000000000000;
    v66[2] = v64;
    swift_willThrow();
    v67 = v95;
    CodingUserInfoKey.init(rawValue:)();
    v68 = v98;
    result = (*(v98 + 48))(v67, 1, v27);
    if (result != 1)
    {
      v69 = *(v68 + 32);
      v70 = v91;
      v69(v91, v67, v27);
      if (*(v62 + 16) && (v71 = sub_1007C8514(v70), v70 = v91, (v72 & 1) != 0))
      {
        sub_100064288(*(v62 + 56) + 32 * v71, &v103);
        (*(v98 + 8))(v70, v27);
        if (swift_dynamicCast() && (v111 & 1) != 0)
        {

          v63 = 2.0;
          goto LABEL_63;
        }
      }

      else
      {
        (*(v98 + 8))(v70, v27);
      }

      swift_willThrow();

      (*(v50 + 8))(v97, v101);
      goto LABEL_33;
    }

LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

LABEL_63:
  sub_100020E58(v102, v102[3]);
  v73 = dispatch thunk of Decoder.userInfo.getter();
  v112 = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v103))
  {
    v74 = 5.0;
  }

  else
  {
    v74 = *&v103;
  }

  if (v74 >= 0.0 && v74 <= 100.0)
  {

LABEL_78:
    (*(v100 + 8))(v97, v101);
    result = sub_100005070(v102);
    v87 = v93;
    *v93 = v36;
    v87[1] = v49;
    v88 = v107;
    *(v87 + 1) = v106;
    *(v87 + 2) = v88;
    *(v87 + 48) = v108;
    v87[7] = v63;
    v87[8] = v74;
    return result;
  }

  v104 = sub_1005B981C(&qword_101A02780);
  v105 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
  v103 = xmmword_101463B60;
  sub_1005B981C(&qword_101A02790);
  sub_10001A2F8(&qword_101A02798, &qword_101A02790);
  v75 = swift_allocError();
  *(v76 + 40) = v74;
  sub_100050F74(&v103, v76);
  swift_willThrow();
  sub_100810B2C();
  swift_allocError();
  *v77 = 0x737569646172;
  v77[1] = 0xE600000000000000;
  v77[2] = v75;
  swift_willThrow();
  v78 = v94;
  CodingUserInfoKey.init(rawValue:)();
  v79 = v98;
  v80 = v27;
  result = (*(v98 + 48))(v78, 1, v27);
  if (result != 1)
  {
    v81 = v90;
    (*(v79 + 32))(v90, v78, v80);
    if (*(v73 + 16) && (v82 = sub_1007C8514(v81), (v83 & 1) != 0))
    {
      sub_100064288(*(v73 + 56) + 32 * v82, &v103);
      (*(v79 + 8))(v81, v80);
      if (swift_dynamicCast())
      {
        v84 = v100;
        v85 = v101;
        v86 = v102;
        if (v111)
        {

          v74 = 5.0;
          goto LABEL_78;
        }

LABEL_81:
        swift_willThrow();

        (*(v84 + 8))(v97, v85);
        v48 = v86;
        return sub_100005070(v48);
      }
    }

    else
    {
      (*(v79 + 8))(v81, v80);
    }

    v84 = v100;
    v85 = v101;
    v86 = v102;
    goto LABEL_81;
  }

LABEL_85:
  __break(1u);
  return result;
}

unint64_t sub_10116FC28()
{
  result = qword_101A2BAC8;
  if (!qword_101A2BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BAC8);
  }

  return result;
}

unint64_t sub_10116FC7C(uint64_t a1)
{
  result = sub_10116FCA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10116FCA4()
{
  result = qword_101A2BAD0;
  if (!qword_101A2BAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BAD0);
  }

  return result;
}

unint64_t sub_10116FCF8(uint64_t a1)
{
  result = sub_100B10C74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10116FD20(void *a1)
{
  a1[2] = sub_100BF91A0();
  a1[3] = sub_100BF8C14();
  result = sub_10116FD58();
  a1[4] = result;
  return result;
}

unint64_t sub_10116FD58()
{
  result = qword_101A2BAD8;
  if (!qword_101A2BAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2BAD8);
  }

  return result;
}

uint64_t sub_10116FDAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 72))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 48);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}