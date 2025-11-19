void *sub_1C1810(void *result)
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
  v7 = *v1;
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_102EC0(result, v11, 1, v3);
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

  sub_3D68(&qword_285BB0, &qword_20EAA0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t View.transformAppAnalyticsData<A>(_:for:transform:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *a2;
  v15 = a2[1];
  swift_getKeyPath();
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a8;
  v16[6] = a9;
  v16[7] = v14;
  v16[8] = v15;
  v16[9] = a3;
  v16[10] = a4;

  sub_1E1510();
}

uint64_t sub_1C1A18(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v50 = a5;
  v16 = sub_1E1A20();
  v48 = *(v16 - 8);
  v49 = v16;
  v17 = *(v48 + 64);
  v18 = __chkstk_darwin(v16);
  v51 = &v42 - v19;
  v20 = *(a7 - 8);
  v21 = *(v20 + 64);
  result = __chkstk_darwin(v18);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  if (*(*a1 + 16))
  {
    result = sub_A2F4(a2, a3);
    if (v26)
    {
      v45 = a4;
      v46 = v24;
      v47 = v20;
      v42 = a2;
      v43 = a3;
      v44 = a1;
      v27 = *(*(v25 + 56) + 8 * result);
      v28 = v27[2];
      swift_bridgeObjectRetain_n();
      if (v28)
      {
        v29 = 0;
        v52 = a10;
        for (i = 4; ; i += 6)
        {
          if (v29 >= v27[2])
          {
            __break(1u);
            goto LABEL_18;
          }

          sub_E9C4C(&v27[i], &v53);
          v31 = sub_1C1E0C(&v53, a6, a7);
          sub_4E48(&v53);
          if (v31)
          {
            break;
          }

          if (v28 == ++v29)
          {
            return swift_bridgeObjectRelease_n();
          }
        }

        if (v29 < v27[2])
        {
          sub_E9C4C(&v27[i], &v53);
          sub_3D68(&qword_285BB0, &qword_20EAA0);
          v32 = v51;
          v28 = a7;
          v33 = swift_dynamicCast();
          v34 = v47;
          v35 = *(v47 + 56);
          if (v33)
          {
            v35(v32, 0, 1, a7);
            v36 = v46;
            (*(v34 + 32))(v46, v32, v28);
            v45(v36);
            v54 = v28;
            v55 = a9;
            v56 = v52;
            v37 = sub_16305C(&v53);
            (*(v34 + 16))(v37, v36, v28);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_12;
            }

            goto LABEL_19;
          }

          v35(v32, 1, 1, a7);
          (*(v48 + 8))(v32, v49);
        }

LABEL_18:
        __break(1u);
LABEL_19:
        v27 = sub_1C2330(v27);
LABEL_12:
        if (v29 < v27[2])
        {
          sub_4E48(&v27[i]);
          sub_E9CB0(&v53, &v27[i]);
          v38 = v43;

          v39 = v44;
          v40 = *v44;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v53 = *v39;
          *v39 = 0x8000000000000000;
          sub_173E78(v27, v42, v38, isUniquelyReferenced_nonNull_native);

          *v39 = v53;
          (*(v47 + 8))(v46, v28);
        }

        __break(1u);

        result = sub_4E48(&v53);
        __break(1u);
      }

      else
      {
        return swift_bridgeObjectRelease_n();
      }
    }
  }

  return result;
}

uint64_t sub_1C1E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(a1);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_E9C4C(v6, v11);
  sub_3D68(&qword_285BB0, &qword_20EAA0);
  result = swift_dynamicCast();
  if (result)
  {
    v10 = result;
    (*(v4 + 8))(v8, a3);
    return v10;
  }

  return result;
}

uint64_t sub_1C1F10(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1E1480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v14 = a2;
    sub_1C2CA4(a2, 1);
  }

  else
  {
    sub_1C2CA4(a2, 0);
    sub_1E1990();
    v10 = sub_1E14E0();
    sub_1E1320();

    sub_1E1470();
    swift_getAtKeyPath();
    sub_A2E8(a2, 0);
    (*(v6 + 8))(v9, v5);
    a2 = v14;
  }

  v13 = a2;
  if (qword_27D770 != -1)
  {
    swift_once();
  }

  v11 = sub_3D68(&qword_28EB48, &qword_20E790);
  sub_3B2C(v11, qword_28EAD0);
  sub_1E1710();
}

uint64_t sub_1C20E4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_1C2CA4(v1, v2);
  sub_3D68(&qword_28EB80, &qword_20EA98);
  sub_EC07C(&qword_28EB88, &qword_28EB80, &qword_20EA98);
  sub_1E14F0();
}

uint64_t sub_1C21D4()
{
  v0 = sub_3D68(&qword_28EB48, &qword_20E790);
  sub_5F94(v0, qword_28EAD0);
  sub_3B2C(v0, qword_28EAD0);
  return sub_1E1700();
}

uint64_t static MetricsFieldsContext.Property<A>.dataStack.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D770 != -1)
  {
    swift_once();
  }

  v2 = sub_3D68(&qword_28EB48, &qword_20E790);
  v3 = sub_3B2C(v2, qword_28EAD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C2310@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_1BFF3C(a1, v2[2], a2);
}

uint64_t _s13BookAnalytics9DataStackV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(*a1 + 16) != *(*a2 + 16))
  {
    return 0;
  }

  v4 = v2 + 64;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 64);
  v36 = (v5 + 63) >> 6;

  v9 = 0;
  v33 = v3;
  v34 = v2;
  v32 = v2 + 64;
  v10 = v36;
  if (v7)
  {
    while (1)
    {
      v11 = v9;
LABEL_9:
      if (!*(v3 + 16))
      {
        break;
      }

      v35 = v11;
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = (*(v2 + 48) + 16 * v12);
      v14 = *(*(v2 + 56) + 8 * v12);
      v15 = *v13;
      v16 = v13[1];

      v17 = sub_A2F4(v15, v16);
      if ((v18 & 1) == 0 || (v19 = *(*(v3 + 56) + 8 * v17), , result = , v37 = *(v14 + 16), v37 != *(v19 + 16)))
      {
LABEL_24:

        break;
      }

      v20 = 0;
      v7 &= v7 - 1;
      v21 = 32;
      while (1)
      {
        if (v37 == v20)
        {

          goto LABEL_21;
        }

        if (v20 >= *(v14 + 16))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        result = sub_E9C4C(v14 + v21, v40);
        v22 = *(v19 + 16);
        if (v20 == v22)
        {
          break;
        }

        if (v20++ >= v22)
        {
          goto LABEL_28;
        }

        v39 = v21 + 48;
        sub_E9CB0(v40, &v41);
        sub_E9C4C(v19 + v21, v45);
        v23 = v42;
        v38 = v43;
        v24 = v44;
        v25 = sub_48B8(&v41, v42);
        v26 = v7;
        v27 = v46;
        v28 = v47;
        v29 = v48;
        v30 = sub_48B8(v45, v46);
        v31 = v28;
        v7 = v26;
        LOBYTE(v29) = sub_567C4(v25, v30, v23, v27, v38, v24, v31, v29);
        result = sub_18E48(&v41, &qword_28EBD0, &qword_20EAF8);
        v21 = v39;
        if ((v29 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      result = sub_4E48(v40);
LABEL_21:
      v2 = v34;
      v9 = v35;
      v4 = v32;
      v3 = v33;
      v10 = v36;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      goto LABEL_9;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1C261C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1C2660()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1C2698(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(a1, *(a1 + 16));
}

uint64_t sub_1C26CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1C2718()
{
  result = qword_28EB40;
  if (!qword_28EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EB40);
  }

  return result;
}

uint64_t sub_1C276C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_1C27E8()
{
  result = qword_28EB50;
  if (!qword_28EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EB50);
  }

  return result;
}

unint64_t sub_1C2840()
{
  result = qword_28EB58;
  if (!qword_28EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EB58);
  }

  return result;
}

unint64_t sub_1C28A4()
{
  result = qword_28EB60;
  if (!qword_28EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EB60);
  }

  return result;
}

uint64_t sub_1C2948(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  sub_1E1440();
  sub_5DE50(&qword_28EB68, &qword_20E958);
  sub_1E1440();
  sub_1C2718();
  swift_getWitnessTable();
  sub_EC07C(&qword_28EB70, &qword_28EB68, &qword_20E958);
  return swift_getWitnessTable();
}

uint64_t sub_1C2A34(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1E1440();
  sub_5DE50(&qword_28EB68, &qword_20E958);
  sub_1E1440();
  sub_1C2718();
  swift_getWitnessTable();
  sub_EC07C(&qword_28EB70, &qword_28EB68, &qword_20E958);
  return swift_getWitnessTable();
}

uint64_t sub_1C2B1C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  sub_5DE50(&qword_28EB68, &qword_20E958);
  sub_1E1440();
  sub_EC07C(&qword_28EB70, &qword_28EB68, &qword_20E958);
  return swift_getWitnessTable();
}

unint64_t sub_1C2C08()
{
  result = qword_28EB78;
  if (!qword_28EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EB78);
  }

  return result;
}

uint64_t sub_1C2C5C()
{
  sub_A2E8(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1C2CA4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1C2CB0()
{
  sub_5DE50(&qword_28EB80, &qword_20EA98);
  sub_EC07C(&qword_28EB88, &qword_28EB80, &qword_20EA98);
  return swift_getOpaqueTypeConformance2();
}

BookAnalytics::OdpSuggestionType_optional __swiftcall OdpSuggestionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261FF8;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 12;
  if (v5 < 0xC)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t OdpSuggestionType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v5 = 0x64656C706D6173;
    if (v1 != 9)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0x706D615364616572;
    v7 = 0xD00000000000001ALL;
    if (v1 == 7)
    {
      v7 = 0x6573616863727570;
    }

    if (v1 != 6)
    {
      v6 = v7;
    }

    if (*v0 <= 8u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6465776569766572;
    v3 = 1684104562;
    if (v1 != 4)
    {
      v3 = 0x64656873696E6966;
    }

    if (v1 == 3)
    {
      v3 = 0x6465776569766572;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000015;
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
}

unint64_t sub_1C2F20()
{
  result = qword_28EBD8;
  if (!qword_28EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EBD8);
  }

  return result;
}

Swift::Int sub_1C2F74()
{
  v1 = *v0;
  sub_1E1DC0();
  OdpSuggestionType.rawValue.getter();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_1C2FDC()
{
  v2 = *v0;
  OdpSuggestionType.rawValue.getter();
  sub_1E17D0();
}

Swift::Int sub_1C3040()
{
  v1 = *v0;
  sub_1E1DC0();
  OdpSuggestionType.rawValue.getter();
  sub_1E17D0();

  return sub_1E1DE0();
}

unint64_t sub_1C30B0@<X0>(unint64_t *a1@<X8>)
{
  result = OdpSuggestionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C3198()
{
  result = qword_28EBE0;
  if (!qword_28EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EBE0);
  }

  return result;
}

BookAnalytics::ContentType_optional __swiftcall ContentType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_262138;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 7;
  if (v5 < 7)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t ContentType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 4276809;
  if (v1 != 5)
  {
    v3 = 0x694773656E757469;
  }

  v4 = 4605008;
  if (v1 != 3)
  {
    v4 = 5527636;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1802465122;
  if (v1 != 1)
  {
    v5 = 0x6F6F626F69647561;
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

unint64_t sub_1C3324()
{
  result = qword_28EBE8;
  if (!qword_28EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EBE8);
  }

  return result;
}

uint64_t sub_1C3384()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

void sub_1C3498(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE300000000000000;
  v6 = 4276809;
  if (v2 != 5)
  {
    v6 = 0x694773656E757469;
    v5 = 0xEE00647261437466;
  }

  v7 = 4605008;
  if (v2 != 3)
  {
    v7 = 5527636;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE300000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1802465122;
  if (v2 != 1)
  {
    v9 = 0x6F6F626F69647561;
    v8 = 0xE90000000000006BLL;
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

unint64_t sub_1C3628()
{
  result = qword_28EBF0;
  if (!qword_28EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EBF0);
  }

  return result;
}

uint64_t ExitLinkTapEvent.externalLinkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_28EC28, &unk_20ED70);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ExitLinkTapEvent.externalLinkData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_28EC28, &unk_20ED70);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ExitLinkTapEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ExitLinkTapEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ExitLinkTapEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExitLinkTapEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ExitLinkTapEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_28EC28, &unk_20ED70);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for ExitLinkTapEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t ExitLinkTapEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ExitLinkTapEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ExitLinkTapEvent.Model.init(externalLinkData:eventData:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1[1];
  *a3 = *a1;
  *(a3 + 1) = v5;
  v6 = *(type metadata accessor for ExitLinkTapEvent.Model(0) + 20);
  v7 = sub_1E1150();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a3[v6], a2, v7);
}

unint64_t sub_1C3B9C()
{
  if (*v0)
  {
    result = 0x746144746E657665;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1C3BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000000217620 == a2 || (sub_1E1D30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E1D30();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1C3CD0(uint64_t a1)
{
  v2 = sub_1C3F18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1C3D0C(uint64_t a1)
{
  v2 = sub_1C3F18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ExitLinkTapEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28EC30, &qword_20ED80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1C3F18();
  sub_1E1E00();
  v11 = v3[1];
  v15 = *v3;
  v16 = v11;
  v14[15] = 0;
  sub_1C3F6C();

  sub_1E1CF0();

  if (!v2)
  {
    v12 = *(type metadata accessor for ExitLinkTapEvent.Model(0) + 20);
    LOBYTE(v15) = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1C3F18()
{
  result = qword_28EC38;
  if (!qword_28EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EC38);
  }

  return result;
}

unint64_t sub_1C3F6C()
{
  result = qword_28EC40;
  if (!qword_28EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EC40);
  }

  return result;
}

uint64_t ExitLinkTapEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_1E1150();
  v22 = *(v25 - 8);
  v4 = *(v22 + 64);
  __chkstk_darwin(v25);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_3D68(&qword_28EC48, &qword_20ED88);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  __chkstk_darwin(v26);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ExitLinkTapEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1C3F18();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v21 = v10;
  v15 = v13;
  v17 = v24;
  v16 = v25;
  v29 = 0;
  sub_1C42D0();
  v18 = v26;
  sub_1E1C20();
  v19 = v28;
  *v15 = v27;
  *(v15 + 1) = v19;
  LOBYTE(v27) = 1;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v9, v18);
  (*(v22 + 32))(&v15[*(v21 + 20)], v6, v16);
  sub_1C4324(v15, v23);
  sub_4E48(a1);
  return sub_1C4388(v15);
}

unint64_t sub_1C42D0()
{
  result = qword_28EC50;
  if (!qword_28EC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EC50);
  }

  return result;
}

uint64_t sub_1C4324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExitLinkTapEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4388(uint64_t a1)
{
  v2 = type metadata accessor for ExitLinkTapEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_28EC28, &unk_20ED70);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_1C4570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_28EC28, &unk_20ED70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C468C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_28EC28, &unk_20ED70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1C47A0()
{
  sub_1C4824();
  if (v0 <= 0x3F)
  {
    sub_5684();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4824()
{
  if (!qword_28ECC0)
  {
    sub_1C42D0();
    sub_1C3F6C();
    v0 = sub_1E0C90();
    if (!v1)
    {
      atomic_store(v0, &qword_28ECC0);
    }
  }
}

uint64_t sub_1C48A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C4960(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C4A04()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C4A94()
{
  result = qword_28ED80;
  if (!qword_28ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28ED80);
  }

  return result;
}

unint64_t sub_1C4AEC()
{
  result = qword_28ED88;
  if (!qword_28ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28ED88);
  }

  return result;
}

unint64_t sub_1C4B44()
{
  result = qword_28ED90;
  if (!qword_28ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28ED90);
  }

  return result;
}

uint64_t sub_1C4B98(uint64_t a1)
{
  v2 = sub_1C4DD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1C4BD4(uint64_t a1)
{
  v2 = sub_1C4DD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DragDropItemData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28ED98, &qword_20EF90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1C4DD4();
  sub_1E1E00();
  v18 = 0;
  v13 = v15[5];
  sub_1E1CB0();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_1E1CB0();
  v16 = 2;
  sub_1E1CB0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1C4DD4()
{
  result = qword_28EDA0;
  if (!qword_28EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EDA0);
  }

  return result;
}

uint64_t DragDropItemData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_28EDA8, &qword_20EF98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1C4DD4();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v27 = 0;
  v11 = sub_1E1BE0();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_1E1BE0();
  v23 = v14;
  v25 = 2;
  v15 = sub_1E1BE0();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  sub_4E48(a1);
}

unint64_t sub_1C50FC()
{
  result = qword_28EDB0;
  if (!qword_28EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EDB0);
  }

  return result;
}

unint64_t sub_1C5154()
{
  result = qword_28EDB8;
  if (!qword_28EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EDB8);
  }

  return result;
}

unint64_t sub_1C51AC()
{
  result = qword_28EDC0;
  if (!qword_28EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EDC0);
  }

  return result;
}

Swift::Int sub_1C5200()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

Swift::Int sub_1C5354()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

Swift::Int sub_1C5470()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

Swift::Int sub_1C5594()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

Swift::Int sub_1C56A8()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

Swift::Int sub_1C57DC()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

Swift::Int sub_1C58F4()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

Swift::Int sub_1C5A70()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

Swift::Int sub_1C5BCC()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

Swift::Int sub_1C5CCC()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

Swift::Int sub_1C5E08()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

Swift::Int sub_1C5F4C()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

Swift::Int sub_1C60A0()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

Swift::Int sub_1C6188()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

Swift::Int sub_1C62DC()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

Swift::Int sub_1C641C()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

Swift::Int sub_1C64FC()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

Swift::Int sub_1C6624()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

Swift::Int sub_1C6748()
{
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

BookAnalytics::SearchMethod_optional __swiftcall SearchMethod.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_262200;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t SearchMethod.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v4 = 0x6574736567677573;
    if (v1 != 6)
    {
      v4 = 0x6574636572726F63;
    }

    v5 = 0xD00000000000001BLL;
    if (v1 == 4)
    {
      v5 = 0xD000000000000013;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    if (*v0)
    {
      v2 = 0x7542686372616573;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return 0xD000000000000011;
    }
  }
}

unint64_t sub_1C6A14()
{
  result = qword_28EDC8;
  if (!qword_28EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EDC8);
  }

  return result;
}

void sub_1C6A90(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v7 = 0x6574736567677573;
    if (v2 != 6)
    {
      v7 = 0x6574636572726F63;
    }

    v8 = 0x8000000000213460;
    v9 = 0xD00000000000001BLL;
    if (v2 == 4)
    {
      v9 = 0xD000000000000013;
    }

    else
    {
      v8 = 0x8000000000213480;
    }

    if (*v1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (*v1 <= 5u)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0xED00006D72655464;
    }

    *a1 = v10;
    a1[1] = v11;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
    v5 = 0x8000000000213420;
    if (v2 != 2)
    {
      v5 = 0x8000000000213440;
    }

    if (*v1)
    {
      v4 = 0x7542686372616573;
      v3 = 0xEF7061546E6F7474;
    }

    if (*v1 <= 1u)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v6;
    a1[1] = v3;
  }
}

unint64_t sub_1C6C8C()
{
  result = qword_28EDD0;
  if (!qword_28EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EDD0);
  }

  return result;
}

BookAnalytics::UpSellVariant_optional __swiftcall UpSellVariant.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2622E0;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t UpSellVariant.rawValue.getter()
{
  v1 = 0x6E6F43664F646E65;
  if (*v0 != 1)
  {
    v1 = 0x6F6F42664F646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1C6DA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E6F43664F646E65;
  v4 = 0xEC000000746E6574;
  if (v2 != 1)
  {
    v3 = 0x6F6F42664F646E65;
    v4 = 0xE90000000000006BLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6E6F43664F646E65;
  v8 = 0xEC000000746E6574;
  if (*a2 != 1)
  {
    v7 = 0x6F6F42664F646E65;
    v8 = 0xE90000000000006BLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

unint64_t sub_1C6EC4()
{
  result = qword_28EDD8;
  if (!qword_28EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EDD8);
  }

  return result;
}

Swift::Int sub_1C6F18()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_1C6FC8()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_1C7064()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_1C711C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEC000000746E6574;
  v5 = 0x6E6F43664F646E65;
  if (v2 != 1)
  {
    v5 = 0x6F6F42664F646E65;
    v4 = 0xE90000000000006BLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1C7248()
{
  result = qword_28EDE0;
  if (!qword_28EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EDE0);
  }

  return result;
}

BookAnalytics::ViewType_optional __swiftcall ViewType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_262348;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t ViewType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6B72616D6B6F6F62;
  v4 = 0x7365746F6ELL;
  if (v1 != 3)
  {
    v4 = 0x6867696C68676968;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7368564;
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

unint64_t sub_1C739C()
{
  result = qword_28EDE8;
  if (!qword_28EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EDE8);
  }

  return result;
}

Swift::Int sub_1C73F0()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_1C74CC()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_1C7594()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_1C7678(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE800000000000000;
  v6 = 0x6B72616D6B6F6F62;
  v7 = 0xE500000000000000;
  v8 = 0x7365746F6ELL;
  if (v2 != 3)
  {
    v8 = 0x6867696C68676968;
    v7 = 0xEA00000000007374;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7368564;
    v3 = 0xE300000000000000;
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

unint64_t sub_1C77D0()
{
  result = qword_28EDF0;
  if (!qword_28EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EDF0);
  }

  return result;
}

uint64_t sub_1C7834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1D30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C78BC(uint64_t a1)
{
  v2 = sub_1C7A70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1C78F8(uint64_t a1)
{
  v2 = sub_1C7A70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DebugData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28EDF8, &qword_20F520);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1C7A70();
  sub_1E1E00();
  sub_1E1CB0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1C7A70()
{
  result = qword_28EE00;
  if (!qword_28EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EE00);
  }

  return result;
}

uint64_t DebugData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_28EE08, &qword_20F528);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1C7A70();
  sub_1E1DF0();
  if (!v2)
  {
    v11 = sub_1E1BE0();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_1C7C3C()
{
  result = qword_28EE10;
  if (!qword_28EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EE10);
  }

  return result;
}

unint64_t sub_1C7C94()
{
  result = qword_28EE18;
  if (!qword_28EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EE18);
  }

  return result;
}

unint64_t sub_1C7D24()
{
  result = qword_28EE20;
  if (!qword_28EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EE20);
  }

  return result;
}

unint64_t sub_1C7D7C()
{
  result = qword_28EE28;
  if (!qword_28EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EE28);
  }

  return result;
}

unint64_t sub_1C7DD4()
{
  result = qword_28EE30;
  if (!qword_28EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EE30);
  }

  return result;
}

unint64_t sub_1C7E2C()
{
  v1 = 0x496E6F6974636573;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x657A69536C6C6563;
  }

  if (*v0)
  {
    v1 = 0x4E6E6F6974636573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C7EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C881C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7EE0(uint64_t a1)
{
  v2 = sub_1C8598();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1C7F1C(uint64_t a1)
{
  v2 = sub_1C8598();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ExposureData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28EE38, &qword_20F750);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v16[5] = v1[3];
  v16[6] = v10;
  v11 = v1[4];
  v16[3] = v1[5];
  v16[4] = v11;
  v12 = v1[6];
  v16[1] = v1[7];
  v16[2] = v12;
  v13 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1C8598();
  sub_1E1E00();
  v20 = 0;
  v14 = v16[7];
  sub_1E1CB0();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v19 = 1;
  sub_1E1CB0();
  v18 = 2;
  sub_1E1CB0();
  v17 = 3;
  sub_1E1C50();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ExposureData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_28EE48, &qword_20F758);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1C8598();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_1E1BE0();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  v13 = sub_1E1BE0();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  v25 = sub_1E1BE0();
  v27 = v15;
  v35 = 3;
  v16 = sub_1E1B80();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  v22 = v31;
  *a2 = v30;
  a2[1] = v22;
  v23 = v33;
  a2[2] = v32;
  a2[3] = v23;
  sub_1C85EC(&v30, v34);
  sub_4E48(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  return sub_1C8624(v34);
}

uint64_t _s13BookAnalytics12ExposureDataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v13 = a2[6];
  v14 = a1[6];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_1E1D30()) && (v2 == v7 && v4 == v8 || (sub_1E1D30()) && (v3 == v9 && v5 == v10 || (sub_1E1D30()))
  {
    if (v6)
    {
      if (v11 && (v14 == v13 && v6 == v11 || (sub_1E1D30() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v11)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1C8598()
{
  result = qword_28EE40;
  if (!qword_28EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EE40);
  }

  return result;
}

uint64_t sub_1C865C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C86A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C8718()
{
  result = qword_28EE50;
  if (!qword_28EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EE50);
  }

  return result;
}

unint64_t sub_1C8770()
{
  result = qword_28EE58;
  if (!qword_28EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EE58);
  }

  return result;
}

unint64_t sub_1C87C8()
{
  result = qword_28EE60;
  if (!qword_28EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EE60);
  }

  return result;
}

uint64_t sub_1C881C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6974636573 && a2 == 0xE900000000000044;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E6E6F6974636573 && a2 == 0xEB00000000656D61 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000002139D0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A69536C6C6563 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1C89B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7079547261656C63 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1D30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C8A40(uint64_t a1)
{
  v2 = sub_1C8C04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1C8A7C(uint64_t a1)
{
  v2 = sub_1C8C04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ClearedData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28EE68, &qword_20F9A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1C8C04();
  sub_1E1E00();
  v12 = v8;
  sub_1C8C58();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1C8C04()
{
  result = qword_28EE70;
  if (!qword_28EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EE70);
  }

  return result;
}

unint64_t sub_1C8C58()
{
  result = qword_28EE78;
  if (!qword_28EE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EE78);
  }

  return result;
}

uint64_t ClearedData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28EE80, &qword_20F9A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1C8C04();
  sub_1E1DF0();
  if (!v2)
  {
    sub_1C8E18();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_1C8E18()
{
  result = qword_28EE88;
  if (!qword_28EE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EE88);
  }

  return result;
}

unint64_t sub_1C8EC8()
{
  result = qword_28EE90;
  if (!qword_28EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EE90);
  }

  return result;
}

unint64_t sub_1C8F20()
{
  result = qword_28EE98;
  if (!qword_28EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EE98);
  }

  return result;
}

unint64_t sub_1C8F78()
{
  result = qword_28EEA0;
  if (!qword_28EEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EEA0);
  }

  return result;
}

uint64_t sub_1C8FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C616E7265747865 && a2 == 0xEB000000006C7255)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1D30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C9078(uint64_t a1)
{
  v2 = sub_1C922C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1C90B4(uint64_t a1)
{
  v2 = sub_1C922C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ExternalLinkData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28EEA8, &qword_20FBD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1C922C();
  sub_1E1E00();
  sub_1E1CB0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1C922C()
{
  result = qword_28EEB0;
  if (!qword_28EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EEB0);
  }

  return result;
}

uint64_t ExternalLinkData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_28EEB8, &qword_20FBD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1C922C();
  sub_1E1DF0();
  if (!v2)
  {
    v11 = sub_1E1BE0();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_1C9438()
{
  result = qword_28EEC0;
  if (!qword_28EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EEC0);
  }

  return result;
}

unint64_t sub_1C9490()
{
  result = qword_28EEC8;
  if (!qword_28EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EEC8);
  }

  return result;
}

unint64_t sub_1C94E8()
{
  result = qword_28EED0;
  if (!qword_28EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EED0);
  }

  return result;
}

BookAnalytics::SearchSuggestionData __swiftcall SearchSuggestionData.init(suggestionsReturnedCount:searchSuggestionSummary:)(Swift::Int32 suggestionsReturnedCount, Swift::OpaquePointer searchSuggestionSummary)
{
  *v2 = suggestionsReturnedCount;
  *(v2 + 8) = searchSuggestionSummary;
  result.searchSuggestionSummary = searchSuggestionSummary;
  result.suggestionsReturnedCount = suggestionsReturnedCount;
  return result;
}

uint64_t static SearchSuggestionData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return sub_5C744(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C956C()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t sub_1C95A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000018 && 0x8000000000217640 == a2;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000000217660 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E1D30();

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

uint64_t sub_1C9684(uint64_t a1)
{
  v2 = sub_1C98CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1C96C0(uint64_t a1)
{
  v2 = sub_1C98CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchSuggestionData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28EED8, &qword_20FE10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[0] = *(v1 + 1);
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1C98CC();
  sub_1E1E00();
  v14 = 0;
  sub_1E1D00();
  if (!v2)
  {
    v12[1] = v12[0];
    v13 = 1;
    sub_3D68(&qword_28EEE8, &qword_20FE18);
    sub_1C9B24(&qword_28EEF0, sub_1370E4);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1C98CC()
{
  result = qword_28EEE0;
  if (!qword_28EEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EEE0);
  }

  return result;
}

uint64_t SearchSuggestionData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28EEF8, &qword_20FE20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v14 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1C98CC();
  sub_1E1DF0();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1E1C30();
    sub_3D68(&qword_28EEE8, &qword_20FE18);
    v15 = 1;
    sub_1C9B24(&qword_28EF00, sub_13708C);
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    v12 = v14[1];
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return sub_4E48(a1);
}

uint64_t sub_1C9B24(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_5DE50(&qword_28EEE8, &qword_20FE18);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C9BF8()
{
  result = qword_28EF08;
  if (!qword_28EF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EF08);
  }

  return result;
}

unint64_t sub_1C9C50()
{
  result = qword_28EF10;
  if (!qword_28EF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EF10);
  }

  return result;
}

unint64_t sub_1C9CA8()
{
  result = qword_28EF18;
  if (!qword_28EF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EF18);
  }

  return result;
}

uint64_t View.collectAppAnalyticsExposure(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a3;
  v41 = a1;
  v46 = a4;
  v40 = *(a2 - 8);
  v5 = *(v40 + 64);
  v6 = __chkstk_darwin(a1);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v40 - v9;
  v11 = type metadata accessor for ExposureViewModifier();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1440();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v40 - v21;
  v23 = sub_1E14D0();
  v44 = *(v23 - 8);
  v24 = *(v44 + 64);
  __chkstk_darwin(v23);
  v43 = &v40 - v25;
  sub_17AA4(v41, &v55, &qword_285BB8, &unk_210050);
  if (v56)
  {
    sub_E9CB0(&v55, v57);
    sub_E9C4C(v57, &v55);
    v26 = swift_allocObject();
    sub_E9CB0(&v55, (v26 + 16));
    sub_1CB71C(sub_1CA650, v26, 0, v14);
    v41 = v23;
    v27 = v45;
    sub_1E1530();
    sub_1CA658(v14);
    v28 = sub_1CE820(&qword_28EF20, type metadata accessor for ExposureViewModifier);
    v47 = v27;
    v48 = v28;
    swift_getWitnessTable();
    v29 = v16[2];
    v29(v22, v20, v15);
    v30 = v16[1];
    v30(v20, v15);
    v29(v20, v22, v15);
    v31 = v27;
    v23 = v41;
    v32 = v43;
    sub_1CA428(v20, v15);
    v30(v20, v15);
    v30(v22, v15);
    sub_4E48(v57);
  }

  else
  {
    sub_18E48(&v55, &qword_285BB8, &unk_210050);
    v33 = v40;
    v34 = *(v40 + 16);
    v34(v10, v42, a2);
    v34(v8, v10, a2);
    v35 = sub_1CE820(&qword_28EF20, type metadata accessor for ExposureViewModifier);
    v31 = v45;
    v53 = v45;
    v54 = v35;
    swift_getWitnessTable();
    v32 = v43;
    sub_1CA520(v8, v15, a2);
    v36 = *(v33 + 8);
    v36(v8, a2);
    v36(v10, a2);
  }

  v37 = sub_1CE820(&qword_28EF20, type metadata accessor for ExposureViewModifier);
  v51 = v31;
  v52 = v37;
  WitnessTable = swift_getWitnessTable();
  v50 = v31;
  swift_getWitnessTable();
  v38 = v44;
  (*(v44 + 16))(v46, v32, v23);
  return (*(v38 + 8))(v32, v23);
}

uint64_t type metadata accessor for ExposureViewModifier()
{
  result = qword_28EF88;
  if (!qword_28EF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA348(uint64_t a1, uint64_t a2)
{
  sub_E9C4C(a2, v8);
  swift_beginAccess();
  v3 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_102EC0(0, v3[2] + 1, 1, v3);
    *(a1 + 16) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_102EC0((v5 > 1), v6 + 1, 1, v3);
  }

  v3[2] = v6 + 1;
  sub_E9CB0(v8, &v3[6 * v6 + 4]);
  *(a1 + 16) = v3;
  return swift_endAccess();
}

uint64_t sub_1CA428(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E14B0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1E14C0();
}

uint64_t sub_1CA520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E14B0();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1E14C0();
}

uint64_t sub_1CA618()
{
  sub_4E48((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1CA658(uint64_t a1)
{
  v2 = type metadata accessor for ExposureViewModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.emitAppAnalyticsExposureEvent<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a5;
  v53 = a4;
  v54 = a6;
  v47 = *(a2 - 8);
  v48 = a3;
  v8 = *(v47 + 64);
  v9 = __chkstk_darwin(a1);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = &v45 - v11;
  v12 = type metadata accessor for ExposureViewModifier();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1440();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v45 - v22;
  v24 = sub_1E14D0();
  v52 = *(v24 - 8);
  v25 = *(v52 + 64);
  __chkstk_darwin(v24);
  v51 = &v45 - v26;
  if (a1)
  {
    v27 = swift_allocObject();
    v29 = v48;
    v28 = v49;
    v27[2] = a2;
    v27[3] = v29;
    v48 = v24;
    v30 = v53;
    v27[4] = v53;
    v27[5] = v28;
    v27[6] = a1;
    sub_1CB71C(sub_1CAE98, v27, 1, v15);
    sub_1E1530();
    sub_1CA658(v15);
    v31 = sub_1CE820(&qword_28EF20, type metadata accessor for ExposureViewModifier);
    v55 = v30;
    v56 = v31;
    swift_getWitnessTable();
    v32 = v17[2];
    v32(v23, v21, v16);
    v33 = v17[1];
    v33(v21, v16);
    v32(v21, v23, v16);
    v34 = v51;
    v35 = v30;
    v24 = v48;
    sub_1CA428(v21, v16);
    v33(v21, v16);
    v33(v23, v16);
  }

  else
  {
    v36 = v47;
    v37 = *(v47 + 16);
    v38 = v45;
    v37(v45, v50, a2);
    v39 = v46;
    v37(v46, v38, a2);
    v40 = sub_1CE820(&qword_28EF20, type metadata accessor for ExposureViewModifier);
    v35 = v53;
    v61 = v53;
    v62 = v40;
    swift_getWitnessTable();
    v34 = v51;
    sub_1CA520(v39, v16, a2);
    v41 = *(v36 + 8);
    v41(v39, a2);
    v41(v38, a2);
  }

  v42 = sub_1CE820(&qword_28EF20, type metadata accessor for ExposureViewModifier);
  v59 = v35;
  v60 = v42;
  WitnessTable = swift_getWitnessTable();
  v58 = v35;
  swift_getWitnessTable();
  v43 = v52;
  (*(v52 + 16))(v54, v34, v24);
  return (*(v43 + 8))(v34, v24);
}

uint64_t sub_1CAC24(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v41 = a8;
  v42 = a7;
  v17 = sub_1E09E0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  result = __chkstk_darwin(v17);
  v21 = &v35[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v40 = *a2;
    result = BATracker.copy()();
    if (result)
    {
      v22 = result;
      v38 = a10;
      v39 = a11;
      v37 = a9;
      (*(v18 + 16))(&v35[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)], a6, v17);
      sub_17AA4(a3, v43, &qword_283810, &unk_20EAE0);
      v23 = (*(v18 + 80) + 56) & ~*(v18 + 80);
      v24 = (v19 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
      v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
      v36 = a5;
      v26 = swift_allocObject();
      v27 = v37;
      v28 = v38;
      *(v26 + 2) = v41;
      *(v26 + 3) = v27;
      v29 = v39;
      *(v26 + 4) = v28;
      *(v26 + 5) = v29;
      *(v26 + 6) = v42;
      (*(v18 + 32))(&v26[v23], v21, v17);
      *&v26[v24] = v40;
      v30 = &v26[v25];
      *(v30 + 4) = v44;
      v31 = v43[1];
      *v30 = v43[0];
      *(v30 + 1) = v31;
      v32 = &v26[(v25 + 47) & 0xFFFFFFFFFFFFFFF8];
      *v32 = a4;
      v32[8] = v36 & 1;
      v33 = *&v22[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
      v34 = swift_allocObject();
      *(v34 + 16) = sub_1CE954;
      *(v34 + 24) = v26;

      sub_1E10C0();
    }
  }

  return result;
}

uint64_t sub_1CAF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memset(v12, 0, sizeof(v12));
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a6;
  sub_1E0C10();

  return sub_18E48(v12, &unk_281B50, &unk_1EDD70);
}

void sub_1CB060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_3D68(&unk_287EF0, &qword_1FA978);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v49 - v8;
  v10 = sub_1E0BE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v50 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v49 - v15;
  v49 = a3;
  v17 = sub_1E0DE0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v49 - v20);
  (*(v18 + 16))(&v49 - v20, a1, v17);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == enum case for EventSubmitResult.success<A>(_:))
  {
    (*(v18 + 96))(v21, v17);
    (*(v11 + 32))(v16, v21, v10);
    v23 = v16;
    v24 = v10;
    if (qword_27D378 != -1)
    {
      swift_once();
    }

    v25 = sub_3B2C(v5, qword_286B28);
    (*(v6 + 16))(v9, v25, v5);
    sub_1E1240();
    (*(v6 + 8))(v9, v5);
    if (v52 == 1)
    {
      if (qword_27D058 != -1)
      {
        swift_once();
      }

      v26 = sub_1E1360();
      sub_3B2C(v26, qword_2802F0);
      v27 = v50;
      (*(v11 + 16))(v50, v23, v10);
      v28 = sub_1E1340();
      v29 = sub_1E1970();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v52 = v31;
        *v30 = 136315138;
        v32 = sub_1E0BD0();
        v34 = v33;
        v35 = *(v11 + 8);
        v35(v27, v24);
        v36 = sub_DD91C(v32, v34, &v52);

        *(v30 + 4) = v36;
        _os_log_impl(&dword_0, v28, v29, "Reported %s", v30, 0xCu);
        sub_4E48(v31);

        v35(v23, v24);
      }

      else
      {

        v48 = *(v11 + 8);
        v48(v27, v24);
        v48(v23, v24);
      }
    }

    else
    {
      (*(v11 + 8))(v23, v10);
    }
  }

  else if (v22 == enum case for EventSubmitResult.failed<A>(_:))
  {
    (*(v18 + 96))(v21, v17);
    v37 = *v21;
    if (qword_27D058 != -1)
    {
      swift_once();
    }

    v38 = sub_1E1360();
    sub_3B2C(v38, qword_2802F0);
    swift_errorRetain();
    v39 = sub_1E1340();
    v40 = sub_1E1980();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v41 = 136315394;
      v42 = sub_1E1E30();
      v44 = sub_DD91C(v42, v43, &v52);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2080;
      v51 = v37;
      swift_errorRetain();
      sub_3D68(&qword_287758, &qword_210300);
      v45 = sub_1E1790();
      v47 = sub_DD91C(v45, v46, &v52);

      *(v41 + 14) = v47;
      _os_log_impl(&dword_0, v39, v40, "Unable to submit %s: %s", v41, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    (*(v18 + 8))(v21, v17);
  }
}

uint64_t sub_1CB71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v34 = a2;
  v6 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  LOBYTE(v36) = 0;
  sub_1E15A0();
  v13 = v38;
  *(a4 + 24) = v37;
  *(a4 + 32) = v13;
  v14 = type metadata accessor for ExposureViewModifier();
  v15 = v14[6];
  v16 = sub_1E09E0();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  sub_17AA4(v12, v10, &qword_287B10, &qword_1FCF80);
  sub_1E15A0();
  sub_18E48(v12, &qword_287B10, &qword_1FCF80);
  v17 = a4 + v14[7];
  LOBYTE(v36) = 0;
  sub_1E15A0();
  v18 = v38;
  *v17 = v37;
  *(v17 + 8) = v18;
  v19 = a4 + v14[8];
  LOBYTE(v36) = 0;
  sub_1E15A0();
  v20 = v38;
  *v19 = v37;
  *(v19 + 8) = v20;
  v21 = a4 + v14[9];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = a4 + v14[10];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = a4 + v14[11];
  *v23 = swift_getKeyPath();
  *(v23 + 40) = 0;
  v24 = a4 + v14[12];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = a4 + v14[13];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = a4 + v14[14];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = v14[15];
  v28 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v37) = 0;
  sub_1E1260();
  v29 = (a4 + v14[16]);
  v36 = sub_1E1550();
  result = sub_1E15A0();
  v31 = v38;
  *v29 = v37;
  v29[1] = v31;
  v32 = v34;
  *a4 = a1;
  *(a4 + 8) = v32;
  *(a4 + 16) = v35;
  return result;
}

uint64_t View.emitAppAnalyticsExposureEvent<A>(_:attaching:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23 = a8;
  v24 = a2;
  v25 = a3;
  type metadata accessor for ExposureViewModifier();
  sub_1E1440();
  sub_1E14D0();
  v13 = sub_1E1590();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = v22;
  v31 = a1;
  v18 = sub_1CE820(&qword_28EF20, type metadata accessor for ExposureViewModifier);
  v35 = a6;
  v36 = v18;
  WitnessTable = swift_getWitnessTable();
  v34 = a6;
  v19 = swift_getWitnessTable();
  sub_1E1580();
  v32 = v19;
  v20 = swift_getWitnessTable();
  View.appAnalyticsData(_:for:)(v24, v25, v20, v23);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1CBC44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v22 = a5;
  v23 = a6;
  type metadata accessor for ExposureViewModifier();
  sub_1E1440();
  v10 = sub_1E14D0();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  View.emitAppAnalyticsExposureEvent<A>(_:)(a1, a2, a3, a4, v22, v15);
  v18 = sub_1CE820(&qword_28EF20, type metadata accessor for ExposureViewModifier);
  v26 = a4;
  v27 = v18;
  WitnessTable = swift_getWitnessTable();
  v25 = a4;
  swift_getWitnessTable();
  v19 = v11[2];
  v19(v17, v15, v10);
  v20 = v11[1];
  v20(v15, v10);
  v19(v23, v17, v10);
  return (v20)(v17, v10);
}

uint64_t sub_1CBE68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ExposureViewModifier();
  sub_1E1440();
  sub_1E14D0();
  sub_1CE820(&qword_28EF20, type metadata accessor for ExposureViewModifier);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1CBF44(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  type metadata accessor for ExposureViewModifier();
  sub_1E1440();
  sub_1E14D0();
  sub_1CE820(&qword_28EF20, type metadata accessor for ExposureViewModifier);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1CC024(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  type metadata accessor for ExposureViewModifier();
  sub_1E1440();
  sub_1E14D0();
  sub_1E1590();
  sub_1E1440();
  sub_5DE50(&qword_28EB68, &qword_20E958);
  sub_1E1440();
  sub_1CE820(&qword_28EF20, type metadata accessor for ExposureViewModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C2718();
  swift_getWitnessTable();
  sub_EC07C(&qword_28EB70, &qword_28EB68, &qword_20E958);
  return swift_getWitnessTable();
}

uint64_t sub_1CC20C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_28EF28, &unk_210060);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_3D68(&unk_287EF0, &qword_1FA978);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[15];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[16]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1CC340(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_28EF28, &unk_210060);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_3D68(&unk_287EF0, &qword_1FA978);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[16]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[15];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_1CC45C()
{
  sub_1CC7E4(319, &qword_28EF98, &type metadata for Bool, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_1CC728(319, &qword_28EFA0, &qword_287B10, &qword_1FCF80, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_1CC728(319, &qword_28EFA8, &qword_286C30, &qword_210090, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1CC7E4(319, &qword_28EFB0, &type metadata for DataStack, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_1CC728(319, &qword_28EFB8, &qword_283810, &unk_20EAE0, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_1CC728(319, &qword_28EFC0, &qword_28C0B8, &qword_20E4D0, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_1CC728(319, &qword_28EFC8, &qword_28EFD0, &qword_210098, &type metadata accessor for Environment);
              if (v6 <= 0x3F)
              {
                sub_1CC78C();
                if (v7 <= 0x3F)
                {
                  sub_1CC7E4(319, &qword_28EFE0, &type metadata for Bool, &type metadata accessor for UserDefault);
                  if (v8 <= 0x3F)
                  {
                    sub_1CC7E4(319, &unk_28EFE8, &type metadata for Color, &type metadata accessor for State);
                    if (v9 <= 0x3F)
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
    }
  }
}

void sub_1CC728(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_5DE50(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1CC78C()
{
  if (!qword_28EFD8)
  {
    type metadata accessor for HostingControllerVisibilityStateManager();
    v0 = sub_1E13B0();
    if (!v1)
    {
      atomic_store(v0, &qword_28EFD8);
    }
  }
}

void sub_1CC7E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1CC840(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1CC888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CC904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v51 = a1;
  v5 = sub_1E1480();
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  __chkstk_darwin(v5);
  v48 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ExposureViewModifier();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E15D0();
  v14 = v13;
  v15 = a2 + *(sub_3D68(&qword_28F048, &qword_210178) + 36);
  sub_1CE12C(v3, v11);
  v16 = *(v9 + 80);
  v17 = (v16 + 16) & ~v16;
  v52 = v10;
  v53 = v16;
  v18 = swift_allocObject();
  sub_1CE1B8(v11, v18 + v17);
  sub_1E1520();

  v19 = (v15 + *(sub_3D68(&qword_28F050, &qword_210180) + 36));
  *v19 = v12;
  v19[1] = v14;
  v20 = sub_3D68(&qword_28F058, &unk_210188);
  v21 = *(*(v20 - 8) + 16);
  v54 = a2;
  v21(a2, v51, v20);
  v22 = v3 + v8[14];
  v23 = *v22;
  LOBYTE(v9) = *(v22 + 8);

  if ((v9 & 1) == 0)
  {
    sub_1E1990();
    v24 = sub_1E14E0();
    sub_1E1320();

    v25 = v48;
    sub_1E1470();
    swift_getAtKeyPath();

    (*(v49 + 8))(v25, v50);
    v23 = v55;
  }

  v55 = *(v23 + 40);

  sub_3D68(&qword_285BE8, &qword_1F80A0);
  sub_EC07C(&qword_285BF0, &qword_285BE8, &qword_1F80A0);
  v26 = sub_1E1390();

  sub_1CE12C(v3, v11);
  v27 = swift_allocObject();
  sub_1CE1B8(v11, v27 + v17);
  v28 = sub_3D68(&qword_28F060, &qword_210198);
  v29 = v54;
  *(v54 + *(v28 + 52)) = v26;
  v30 = (v29 + *(v28 + 56));
  *v30 = sub_1CE4F8;
  v30[1] = v27;
  v31 = sub_1E15D0();
  v33 = v32;
  v34 = v8[15];
  sub_3D68(&unk_287EF0, &qword_1FA978);
  sub_1E1240();
  if (v55 == 1)
  {
    v35 = (v3 + v8[16]);
    v37 = *v35;
    v36 = v35[1];
    v55 = v37;
    v56 = v36;
    sub_3D68(&qword_28F080, &qword_2101B8);
    sub_1E15B0();
    v38 = sub_1E1570();

    KeyPath = swift_getKeyPath();
  }

  else
  {
    KeyPath = 0;
    v38 = 0;
  }

  v40 = sub_3D68(&qword_28F068, &qword_2101A0);
  v41 = v54;
  v42 = v54 + *(v40 + 36);
  *v42 = KeyPath;
  *(v42 + 8) = v38;
  *(v42 + 16) = 0;
  *(v42 + 24) = v31;
  *(v42 + 32) = v33;
  sub_1CE12C(v3, v11);
  v43 = swift_allocObject();
  sub_1CE1B8(v11, v43 + v17);
  v44 = (v41 + *(sub_3D68(&qword_28F070, &qword_2101A8) + 36));
  *v44 = sub_1CE568;
  v44[1] = v43;
  v44[2] = 0;
  v44[3] = 0;
  sub_1CE12C(v3, v11);
  v45 = swift_allocObject();
  sub_1CE1B8(v11, v45 + v17);
  result = sub_3D68(&qword_28F078, &qword_2101B0);
  v47 = (v41 + *(result + 36));
  *v47 = 0;
  v47[1] = 0;
  v47[2] = sub_1CE580;
  v47[3] = v45;
  return result;
}

uint64_t sub_1CCE80(char a1, uint64_t a2)
{
  v4 = sub_1E1480();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ExposureViewModifier();
  v10 = (a2 + *(v9 + 28));
  v11 = *v10;
  v12 = *(v10 + 1);
  LOBYTE(v21) = v11;
  v22 = v12;
  v23 = a1;
  sub_3D68(&qword_28F088, &unk_2101F0);
  sub_1E15C0();
  if ((a1 & 1) == 0)
  {
    return sub_1CD0C4(a1 & 1);
  }

  v13 = *(a2 + 32);
  LOBYTE(v21) = *(a2 + 24);
  v22 = v13;
  v23 = 1;
  sub_1E15C0();
  v14 = (a2 + *(v9 + 56));
  v15 = *v14;
  v16 = *(v14 + 8);

  if ((v16 & 1) == 0)
  {
    sub_1E1990();
    v17 = sub_1E14E0();
    sub_1E1320();

    sub_1E1470();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    v15 = v21;
  }

  swift_beginAccess();
  v18 = *(v15 + 16);

  if ((v18 & 1) == 0)
  {

    return sub_1CD0C4(a1 & 1);
  }

  v19 = sub_1E1D30();

  if (v19)
  {
    return sub_1CD0C4(a1 & 1);
  }

  return result;
}

uint64_t sub_1CD0C4(char a1)
{
  v81 = sub_1E1480();
  v80 = *(v81 - 8);
  v2 = *(v80 + 64);
  __chkstk_darwin(v81);
  v79 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E09E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v93 = (&v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v92 = &v78 - v9;
  v10 = sub_1E15E0();
  v90 = *(v10 - 8);
  v91 = v10;
  v11 = *(v90 + 64);
  __chkstk_darwin(v10);
  v88 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1E1610();
  v87 = *(v89 - 8);
  v13 = *(v87 + 64);
  __chkstk_darwin(v89);
  v86 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ExposureViewModifier();
  v82 = *(v15 - 1);
  v16 = *(v82 + 64);
  __chkstk_darwin(v15);
  v17 = sub_1E1630();
  v84 = *(v17 - 8);
  v85 = v17;
  v18 = *(v84 + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v83 = &v78 - v22;
  v23 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v30 = &v78 - v29;
  __chkstk_darwin(v28);
  v32 = &v78 - v31;
  if (a1)
  {
    sub_1E09C0();
    (*(v5 + 56))(v32, 0, 1, v4);
    v33 = v15[6];
    sub_17AA4(v32, v30, &qword_287B10, &qword_1FCF80);
    sub_3D68(&qword_28EF28, &unk_210060);
    v34 = v94;
    sub_1E15C0();
    sub_18E48(v32, &qword_287B10, &qword_1FCF80);
    v35 = v15[15];
    sub_3D68(&unk_287EF0, &qword_1FA978);
    result = sub_1E1240();
    if (LOBYTE(aBlock[0]) == 1)
    {
      sub_4C270();
      v92 = sub_1E19E0();
      sub_1E1620();
      v37 = v83;
      sub_1E1650();
      v93 = *(v84 + 8);
      v38 = v21;
      v39 = v85;
      v93(v38, v85);
      sub_1CE12C(v34, &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      v40 = (*(v82 + 80) + 16) & ~*(v82 + 80);
      v41 = swift_allocObject();
      sub_1CE1B8(&v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v40);
      aBlock[4] = sub_1CE77C;
      aBlock[5] = v41;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_11AD8C;
      aBlock[3] = &unk_275FB0;
      v42 = _Block_copy(aBlock);

      v43 = v86;
      sub_1E1600();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1CE820(&qword_287740, &type metadata accessor for DispatchWorkItemFlags);
      sub_3D68(&unk_287C10, &qword_1FC390);
      sub_EC07C(&qword_287748, &unk_287C10, &qword_1FC390);
      v44 = v88;
      v45 = v91;
      sub_1E1A70();
      v46 = v92;
      sub_1E19C0();
      _Block_release(v42);

      (*(v90 + 8))(v44, v45);
      (*(v87 + 8))(v43, v89);
      return (v93)(v37, v39);
    }
  }

  else
  {
    v47 = v15[6];
    sub_3D68(&qword_28EF28, &unk_210060);
    v48 = v94;
    sub_1E15B0();
    if ((*(v5 + 48))(v27, 1, v4) == 1)
    {
      return sub_18E48(v27, &qword_287B10, &qword_1FCF80);
    }

    else
    {
      v49 = v4;
      v50 = v5;
      v51 = v92;
      (*(v5 + 32))(v92, v27, v49);
      v52 = v93;
      sub_1E09C0();
      sub_1E0960();
      if (v53 > 1.0)
      {
        v54 = *v48;
        v55 = *(v48 + 8);
        if (*(v48 + 16))
        {
          v91 = v50;
          v56 = v48 + v15[9];
          v57 = *v56;
          if (*(v56 + 8))
          {
            sub_1CE764();
            sub_1CE76C(v57, 1);
          }

          else
          {
            sub_1CE764();
            sub_1CE76C(v57, 0);
            sub_1E1990();
            v62 = sub_1E14E0();
            sub_1E1320();

            v63 = v79;
            sub_1E1470();
            swift_getAtKeyPath();
            sub_1CE19C(v57, 0);
            (*(v80 + 8))(v63, v81);
            v57 = aBlock[0];
          }

          v64 = v48 + v15[10];
          v65 = *v64;
          if (*(v64 + 8) == 1)
          {
            v98 = *v64;
          }

          else
          {

            sub_1E1990();
            v68 = sub_1E14E0();
            sub_1E1320();

            v69 = v79;
            sub_1E1470();
            swift_getAtKeyPath();
            sub_A2E8(v65, 0);
            (*(v80 + 8))(v69, v81);
            v65 = v98;
          }

          v97 = v65;
          v70 = v48 + v15[11];
          sub_1CE598(aBlock);
          v71 = v48 + v15[12];
          v72 = *v71;
          v73 = *(v71 + 8);
          if (*(v71 + 9) != 1)
          {

            sub_1E1990();
            v74 = v49;
            v75 = sub_1E14E0();
            sub_1E1320();

            v49 = v74;
            v51 = v92;
            v76 = v79;
            sub_1E1470();
            swift_getAtKeyPath();
            sub_1CE1A8(v72, v73, 0);
            (*(v80 + 8))(v76, v81);
            v72 = aBlock[6];
            LOBYTE(v73) = v96;
          }

          v52 = v93;
          (v54)(v57, &v97, aBlock, v72, v73 & 1, v51);
          sub_1CE194();

          sub_18E48(aBlock, &qword_283810, &unk_20EAE0);

          v50 = v91;
        }

        else
        {
          v58 = v48 + v15[13];
          v59 = *v58;
          v60 = *v48;
          v61 = *(v48 + 8);
          if (*(v58 + 8))
          {
            sub_1CE764();
            j__swift_retain();
          }

          else
          {
            sub_1CE764();
            j__swift_retain();
            sub_1E1990();
            v66 = sub_1E14E0();
            sub_1E1320();

            v52 = v93;
            v67 = v79;
            sub_1E1470();
            swift_getAtKeyPath();
            j__swift_release();
            (*(v80 + 8))(v67, v81);
            v59 = aBlock[0];
          }

          if (v59)
          {
            v54(v59);
          }

          sub_1CE194();
        }
      }

      sub_1CDF6C(v48);
      v77 = *(v50 + 8);
      v77(v52, v49);
      return (v77)(v51, v49);
    }
  }

  return result;
}

uint64_t sub_1CDCD0(_BYTE *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = sub_1E1D30();

    if ((v3 & 1) == 0)
    {
      v8 = 0;
      return sub_1CD0C4(v8);
    }
  }

  else
  {
  }

  v10 = *(a2 + 24);
  v13 = *(a2 + 32);
  sub_3D68(&qword_28F088, &unk_2101F0);
  result = sub_1E15B0();
  if (v9 != 1)
  {
    return result;
  }

  v5 = type metadata accessor for ExposureViewModifier();
  v6 = (a2 + *(v5 + 32));
  v11 = *v6;
  v14 = *(v6 + 1);
  sub_1E15B0();
  v7 = (a2 + *(v5 + 28));
  v12 = *v7;
  v15 = *(v7 + 1);
  sub_1E15B0();
  v8 = v9;
  return sub_1CD0C4(v8);
}

uint64_t sub_1CDE0C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ExposureViewModifier() + 32));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_3D68(&qword_28F088, &unk_2101F0);
  return sub_1E15C0();
}

uint64_t sub_1CDE80(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ExposureViewModifier() + 32));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_3D68(&qword_28F088, &unk_2101F0);
  sub_1E15C0();
  return sub_1CD0C4(0);
}

uint64_t sub_1CDEFC(uint64_t a1)
{
  sub_1E1560();
  v2 = (a1 + *(type metadata accessor for ExposureViewModifier() + 64));
  v4 = *v2;
  v5 = v2[1];
  sub_3D68(&qword_28F080, &qword_2101B8);
  return sub_1E15C0();
}

uint64_t sub_1CDF6C(uint64_t a1)
{
  v2 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v18 - v7;
  v9 = sub_1E09E0();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = type metadata accessor for ExposureViewModifier();
  v11 = v10[6];
  sub_17AA4(v8, v6, &qword_287B10, &qword_1FCF80);
  sub_3D68(&qword_28EF28, &unk_210060);
  sub_1E15C0();
  sub_18E48(v8, &qword_287B10, &qword_1FCF80);
  v12 = v10[15];
  sub_3D68(&unk_287EF0, &qword_1FA978);
  result = sub_1E1240();
  if (v19 == 1)
  {
    v14 = sub_1E1550();
    v15 = (a1 + v10[16]);
    v17 = *v15;
    v16 = v15[1];
    v19 = v17;
    v20 = v16;
    v18[1] = v14;
    sub_3D68(&qword_28F080, &qword_2101B8);
    return sub_1E15C0();
  }

  return result;
}

uint64_t sub_1CE12C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExposureViewModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1CE19C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1CE1A8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1CE1B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExposureViewModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CE21C(char a1)
{
  v3 = *(type metadata accessor for ExposureViewModifier() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1CCE80(a1, v4);
}

uint64_t sub_1CE28C()
{
  v1 = type metadata accessor for ExposureViewModifier();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = *(v0 + v4 + 16);
  sub_1CE194();
  v9 = *(v0 + v4 + 32);

  v10 = v0 + v4 + v1[6];
  v11 = sub_1E09E0();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v10, 1, v11))
  {
    (*(v12 + 8))(v10, v11);
  }

  v13 = *(v10 + *(sub_3D68(&qword_28EF28, &unk_210060) + 28));

  v14 = *(v5 + v1[7] + 8);

  v15 = *(v5 + v1[8] + 8);

  sub_1CE19C(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  sub_A2E8(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v16 = v5 + v1[11];
  if (*(v16 + 40))
  {
    if (*(v16 + 24))
    {
      sub_4E48(v16);
    }
  }

  else
  {
    v17 = *v16;
  }

  sub_1CE1A8(*(v5 + v1[12]), *(v5 + v1[12] + 8), *(v5 + v1[12] + 9));
  v18 = (v5 + v1[13]);
  v19 = *v18;
  v20 = *(v18 + 8);
  j__swift_release();
  v21 = *(v5 + v1[14]);

  v22 = v1[15];
  v23 = sub_3D68(&unk_287EF0, &qword_1FA978);
  (*(*(v23 - 8) + 8))(v5 + v22, v23);
  v24 = (v5 + v1[16]);
  v25 = *v24;

  v26 = v24[1];

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_1CE4F8(_BYTE *a1)
{
  v3 = *(type metadata accessor for ExposureViewModifier() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1CDCD0(a1, v4);
}

uint64_t sub_1CE598@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E1480();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_17AA4(v2, v12, &qword_28F090, &qword_210200);
  if (v14 == 1)
  {
    v10 = v12[1];
    *a1 = v12[0];
    *(a1 + 16) = v10;
    *(a1 + 32) = v13;
  }

  else
  {
    sub_1E1990();
    v11 = sub_1E14E0();
    sub_1E1320();

    sub_1E1470();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_1CE70C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E1450();
  *a1 = result;
  return result;
}

uint64_t sub_1CE738(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E1460();
}

id sub_1CE76C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1CE794(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ExposureViewModifier() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1CE808(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CE820(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CE898()
{
  v1 = sub_1E09E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  if (*(v0 + v6 + 24))
  {
    sub_4E48((v0 + v6));
  }

  return _swift_deallocObject(v0, ((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 9, v3 | 7);
}

uint64_t sub_1CE954(uint64_t a1)
{
  v3 = *(v1 + 16);
  v9 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(sub_1E09E0() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CAED0(a1, *(v1 + 48), v1 + v6, *(v1 + v7), v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8), *(v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CEA38()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1CEA90(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  sub_1CB060(a1, v1[2], v1[3]);
}

uint64_t sub_1CEB10(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_5DE50(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CEB94()
{
  result = qword_28F0A8;
  if (!qword_28F0A8)
  {
    sub_5DE50(&qword_28F068, &qword_2101A0);
    sub_EC07C(&qword_28F0B0, &qword_28F060, &qword_210198);
    sub_EC07C(&qword_28F0B8, &qword_28F0C0, &qword_210308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F0A8);
  }

  return result;
}

uint64_t SeriesDetailsViewEvent.exposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27F4F8, &unk_210310);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SeriesDetailsViewEvent.exposureData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27F4F8, &unk_210310);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SeriesDetailsViewEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesDetailsViewEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesDetailsViewEvent.altSeriesContentTypeExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent(0) + 24);
  v4 = sub_3D68(&qword_28F0F8, &unk_210320);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesDetailsViewEvent.altSeriesContentTypeExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent(0) + 24);
  v4 = sub_3D68(&qword_28F0F8, &unk_210320);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesDetailsViewEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent(0) + 28);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesDetailsViewEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent(0) + 28);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesDetailsViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesDetailsViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesDetailsViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesDetailsViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesDetailsViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_27F4F8, &unk_210310);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SeriesDetailsViewEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.required<A>(_:);
  v7 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_28F0F8, &unk_210320);
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v13 - 8) + 104))(a1 + v12, v6, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v6, v15);
}

uint64_t SeriesDetailsViewEvent.Model.exposureData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_17AA4(v7, &v6, &qword_27F500, &unk_210330);
}

uint64_t SeriesDetailsViewEvent.Model.seriesData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v6[0] = v1[4];
  v6[1] = v2;
  v7 = v1[6];
  v3 = v7;
  *a1 = v6[0];
  a1[1] = v2;
  a1[2] = v3;
  return sub_CF18(v6, &v5);
}

uint64_t SeriesDetailsViewEvent.Model.altSeriesContentTypeExposureData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  v6 = v1[18];
  v7 = v1[19];
  v8 = v1[20];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1CF7E0(v2, v3, v4);
}

uint64_t sub_1CF7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t SeriesDetailsViewEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  v13[2] = *(v1 + 200);
  v13[3] = v2;
  v3 = *(v1 + 248);
  v13[4] = *(v1 + 232);
  v13[5] = v3;
  v4 = *(v1 + 184);
  v13[0] = *(v1 + 168);
  v13[1] = v4;
  v5 = *(v1 + 280);
  v13[6] = *(v1 + 264);
  v13[7] = v5;
  v7 = *(v1 + 264);
  v6 = *(v1 + 280);
  v13[8] = *(v1 + 296);
  v14 = *(v1 + 312);
  *(a1 + 96) = v7;
  *(a1 + 112) = v6;
  *(a1 + 128) = *(v1 + 296);
  *(a1 + 144) = *(v1 + 312);
  v8 = *(v1 + 216);
  *(a1 + 32) = *(v1 + 200);
  *(a1 + 48) = v8;
  v9 = *(v1 + 248);
  *(a1 + 64) = *(v1 + 232);
  *(a1 + 80) = v9;
  v10 = *(v1 + 184);
  *a1 = *(v1 + 168);
  *(a1 + 16) = v10;
  return sub_17AA4(v13, v12, &qword_27E4A0, &qword_1E8860);
}

uint64_t SeriesDetailsViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesDetailsViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesDetailsViewEvent.Model(0) + 36);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesDetailsViewEvent.Model.init(exposureData:seriesData:altSeriesContentTypeExposureData:linkData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *(a3 + 6);
  v11 = a1[1];
  *a7 = *a1;
  *(a7 + 16) = v11;
  v12 = a1[3];
  *(a7 + 32) = a1[2];
  *(a7 + 48) = v12;
  v13 = a2[1];
  *(a7 + 64) = *a2;
  *(a7 + 80) = v13;
  v14 = *a3;
  v15 = a3[1];
  *(a7 + 96) = a2[2];
  *(a7 + 112) = v14;
  v16 = a3[2];
  *(a7 + 128) = v15;
  *(a7 + 144) = v16;
  *(a7 + 160) = v10;
  v17 = *a4;
  *(a7 + 184) = a4[1];
  *(a7 + 168) = v17;
  v18 = a4[4];
  *(a7 + 248) = a4[5];
  *(a7 + 232) = v18;
  v19 = a4[2];
  *(a7 + 216) = a4[3];
  *(a7 + 200) = v19;
  *(a7 + 312) = *(a4 + 18);
  v20 = a4[8];
  *(a7 + 280) = a4[7];
  *(a7 + 296) = v20;
  *(a7 + 264) = a4[6];
  v21 = type metadata accessor for SeriesDetailsViewEvent.Model(0);
  v22 = *(v21 + 32);
  v23 = sub_1E1150();
  (*(*(v23 - 8) + 32))(a7 + v22, a5, v23);
  v24 = *(v21 + 36);
  v25 = sub_1E11A0();
  v26 = *(*(v25 - 8) + 32);

  return v26(a7 + v24, a6, v25);
}

uint64_t sub_1CFB50()
{
  v1 = *v0;
  v2 = 0x657275736F707865;
  v3 = 0x617461446B6E696CLL;
  v4 = 0x746144746E657665;
  if (v1 != 4)
  {
    v4 = 0x74614464656D6974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6144736569726573;
  if (v1 != 1)
  {
    v5 = 0xD000000000000020;
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

uint64_t sub_1CFC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D19B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFC4C(uint64_t a1)
{
  v2 = sub_1D0278();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1CFC88(uint64_t a1)
{
  v2 = sub_1D0278();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SeriesDetailsViewEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28F100, &qword_210340);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v39 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1D0278();
  sub_1E1E00();
  v10 = v2[1];
  v84[0] = *v2;
  v84[1] = v10;
  v11 = v2[3];
  v13 = *v2;
  v12 = v2[1];
  v84[2] = v2[2];
  v84[3] = v11;
  v80 = v13;
  v81 = v12;
  v14 = v2[3];
  v82 = v2[2];
  v83 = v14;
  v79 = 0;
  sub_17AA4(v84, &v54, &qword_27F500, &unk_210330);
  sub_38C28();
  v15 = v85;
  sub_1E1C80();
  if (v15)
  {
    v54 = v80;
    v55 = v81;
    v56 = v82;
    v57 = v83;
    sub_18E48(&v54, &qword_27F500, &unk_210330);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v17 = v5;
    v77[0] = v80;
    v77[1] = v81;
    v77[2] = v82;
    v77[3] = v83;
    sub_18E48(v77, &qword_27F500, &unk_210330);
    v18 = v2[5];
    v78[0] = v2[4];
    v78[1] = v18;
    v20 = v2[4];
    v19 = v2[5];
    v78[2] = v2[6];
    v74 = v20;
    v75 = v19;
    v76 = v2[6];
    v73 = 1;
    sub_CF18(v78, &v54);
    sub_D57C();
    sub_1E1CF0();
    v72[0] = v74;
    v72[1] = v75;
    v72[2] = v76;
    sub_D5D0(v72);
    v21 = *(v2 + 15);
    v22 = *(v2 + 16);
    v23 = *(v2 + 17);
    v24 = *(v2 + 18);
    v25 = *(v2 + 19);
    v26 = *(v2 + 20);
    v65 = *(v2 + 14);
    v66 = v21;
    v67 = v22;
    v68 = v23;
    v69 = v24;
    v70 = v25;
    v71 = v26;
    v64 = 2;
    sub_1CF7E0(v65, v21, v22);
    sub_BC82C();
    sub_1E1C80();
    sub_1D02CC(v65, v66, v67);
    v27 = *(v2 + 280);
    v60 = *(v2 + 264);
    v61 = v27;
    v29 = *(v2 + 264);
    v28 = *(v2 + 280);
    v62 = *(v2 + 296);
    v30 = *(v2 + 216);
    v56 = *(v2 + 200);
    v57 = v30;
    v31 = *(v2 + 248);
    v58 = *(v2 + 232);
    v59 = v31;
    v32 = *(v2 + 184);
    v54 = *(v2 + 168);
    v55 = v32;
    v63 = *(v2 + 39);
    v50 = v29;
    v51 = v28;
    v52 = *(v2 + 296);
    v53 = *(v2 + 39);
    v33 = *(v2 + 216);
    v46 = *(v2 + 200);
    v47 = v33;
    v34 = *(v2 + 248);
    v48 = *(v2 + 232);
    v49 = v34;
    v35 = *(v2 + 184);
    v44 = *(v2 + 168);
    v45 = v35;
    v43 = 3;
    sub_17AA4(&v54, v41, &qword_27E4A0, &qword_1E8860);
    sub_18630();
    sub_1E1C80();
    v41[6] = v50;
    v41[7] = v51;
    v41[8] = v52;
    v42 = v53;
    v41[2] = v46;
    v41[3] = v47;
    v41[4] = v48;
    v41[5] = v49;
    v41[0] = v44;
    v41[1] = v45;
    sub_18E48(v41, &qword_27E4A0, &qword_1E8860);
    v36 = type metadata accessor for SeriesDetailsViewEvent.Model(0);
    v37 = *(v36 + 32);
    v40 = 4;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v38 = *(v36 + 36);
    v40 = 5;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
    return (*(v17 + 8))(v8, v4);
  }
}

unint64_t sub_1D0278()
{
  result = qword_28F108;
  if (!qword_28F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F108);
  }

  return result;
}

uint64_t sub_1D02CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t SeriesDetailsViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v44 = sub_1E11A0();
  v41 = *(v44 - 8);
  v3 = *(v41 + 64);
  __chkstk_darwin(v44);
  v43 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  __chkstk_darwin(v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_3D68(&qword_28F110, &qword_210348);
  v45 = *(v48 - 8);
  v9 = *(v45 + 64);
  __chkstk_darwin(v48);
  v11 = v39 - v10;
  v12 = type metadata accessor for SeriesDetailsViewEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v71 = a1;
  sub_48B8(a1, v16);
  sub_1D0278();
  v47 = v11;
  v18 = v49;
  sub_1E1DF0();
  if (v18)
  {
    return sub_4E48(v71);
  }

  v40 = v8;
  v20 = v45;
  v19 = v46;
  v49 = v15;
  v56 = 0;
  sub_393C4();
  sub_1E1BB0();
  v21 = v58;
  v22 = v49;
  *v49 = v57;
  *(v22 + 16) = v21;
  v23 = v60;
  *(v22 + 32) = v59;
  *(v22 + 48) = v23;
  v52 = 1;
  sub_DAD8();
  sub_1E1C20();
  v24 = v54;
  *(v22 + 64) = v53;
  *(v22 + 80) = v24;
  *(v22 + 96) = v55;
  v51 = 2;
  sub_BC7D4();
  sub_1E1BB0();
  v39[1] = v5;
  v25 = v64;
  v26 = v62;
  v27 = v63;
  *(v22 + 112) = v61;
  *(v22 + 128) = v26;
  *(v22 + 144) = v27;
  *(v22 + 160) = v25;
  v51 = 3;
  sub_18FA4();
  v39[0] = 0;
  sub_1E1BB0();
  v28 = v12;
  v29 = v62;
  *(v22 + 200) = v63;
  v30 = v65;
  *(v22 + 216) = v64;
  *(v22 + 232) = v30;
  v31 = v67;
  *(v22 + 248) = v66;
  *(v22 + 168) = v61;
  *(v22 + 184) = v29;
  v32 = v68;
  v33 = v69;
  *(v22 + 264) = v31;
  *(v22 + 280) = v32;
  *(v22 + 312) = v70;
  *(v22 + 296) = v33;
  v50 = 4;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  v34 = v40;
  sub_1E1C20();
  (*(v19 + 32))(v22 + *(v28 + 32), v34, v5);
  v50 = 5;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v35 = v28;
  v37 = v43;
  v36 = v44;
  sub_1E1C20();
  (*(v20 + 8))(v47, v48);
  (*(v41 + 32))(v22 + *(v35 + 36), v37, v36);
  sub_1D0A68(v22, v42);
  sub_4E48(v71);
  return sub_1D0ACC(v22);
}

uint64_t sub_1D0A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeriesDetailsViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D0ACC(uint64_t a1)
{
  v2 = type metadata accessor for SeriesDetailsViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D0BC8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_27F4F8, &unk_210310);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_28F0F8, &unk_210320);
  (*(*(v10 - 8) + 104))(a2 + v9, v4, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v14 - 8) + 104))(a2 + v13, v7, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v7, v16);
}

uint64_t sub_1D0DF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27F4F8, &unk_210310);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_3D68(&qword_28F0F8, &unk_210320);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_1D106C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27F4F8, &unk_210310);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_3D68(&qword_28F0F8, &unk_210320);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v20 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[9];

  return v21(v22, a2, a2, v20);
}

void sub_1D12D8()
{
  sub_1D149C(319, &unk_27F598, sub_393C4, sub_38C28);
  if (v0 <= 0x3F)
  {
    sub_1D149C(319, &qword_27DE18, sub_DAD8, sub_D57C);
    if (v1 <= 0x3F)
    {
      sub_1D149C(319, &unk_28F180, sub_BC7D4, sub_BC82C);
      if (v2 <= 0x3F)
      {
        sub_1D149C(319, &unk_27E588, sub_18FA4, sub_18630);
        if (v3 <= 0x3F)
        {
          sub_5684();
          if (v4 <= 0x3F)
          {
            sub_5750();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D149C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D152C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1E1150();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1E11A0();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D1670(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_1E1150();
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
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1D1794()
{
  sub_19FE0(319, &unk_27F640);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &unk_28F228);
    if (v1 <= 0x3F)
    {
      sub_19FE0(319, &unk_27E650);
      if (v2 <= 0x3F)
      {
        sub_1E1150();
        if (v3 <= 0x3F)
        {
          sub_1E11A0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1D18AC()
{
  result = qword_28F268;
  if (!qword_28F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F268);
  }

  return result;
}

unint64_t sub_1D1904()
{
  result = qword_28F270;
  if (!qword_28F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F270);
  }

  return result;
}

unint64_t sub_1D195C()
{
  result = qword_28F278;
  if (!qword_28F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F278);
  }

  return result;
}

uint64_t sub_1D19B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657275736F707865 && a2 == 0xEC00000061746144;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000020 && 0x80000000002176A0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t static NotificationOptInLocationData.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0xE700000000000000;
  v6 = 0x656D6F636C6577;
  v7 = 0x8000000000212480;
  if (v3 != 2)
  {
    v6 = 0xD000000000000012;
    v5 = 0x8000000000212480;
  }

  v8 = 0x6553656369766564;
  if (*a1)
  {
    v4 = 0xEE0073676E697474;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (*a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v3 <= 1)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  v11 = 0xE700000000000000;
  v12 = 0x656D6F636C6577;
  if (*a2 == 2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v12 = 0xD000000000000012;
  }

  if (*a2)
  {
    v2 = 0x6553656369766564;
    v11 = 0xEE0073676E697474;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v11;
  }

  else
  {
    v14 = v7;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1E1D30();
  }

  return v15 & 1;
}

uint64_t sub_1D1D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1D30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D1DC4(uint64_t a1)
{
  v2 = sub_1D1F88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1D1E00(uint64_t a1)
{
  v2 = sub_1D1F88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NotificationOptInLocationData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28F280, &qword_210580);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1D1F88();
  sub_1E1E00();
  v12 = v8;
  sub_1D1FDC();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D1F88()
{
  result = qword_28F288;
  if (!qword_28F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F288);
  }

  return result;
}

unint64_t sub_1D1FDC()
{
  result = qword_28F290;
  if (!qword_28F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F290);
  }

  return result;
}

uint64_t NotificationOptInLocationData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28F298, &qword_210588);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1D1F88();
  sub_1E1DF0();
  if (!v2)
  {
    sub_1D219C();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_1D219C()
{
  result = qword_28F2A0;
  if (!qword_28F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F2A0);
  }

  return result;
}

unint64_t sub_1D224C()
{
  result = qword_28F2A8;
  if (!qword_28F2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F2A8);
  }

  return result;
}

unint64_t sub_1D22A4()
{
  result = qword_28F2B0;
  if (!qword_28F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F2B0);
  }

  return result;
}

unint64_t sub_1D22FC()
{
  result = qword_28F2B8;
  if (!qword_28F2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F2B8);
  }

  return result;
}

uint64_t BATracker.transaction(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_1E10C0();
}

Swift::String_optional __swiftcall BATracker.contentPrivateID(for:)(Swift::String a1)
{
  v1 = sub_1D23F4(a1._countAndFlagsBits, a1._object, &selRef_contentPrivateIDForContentID_);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall BATracker.contentUserID(for:)(Swift::String a1)
{
  v1 = sub_1D23F4(a1._countAndFlagsBits, a1._object, &selRef_contentUserIDForContentID_);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_1D23F4(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_1E1770();
    v7 = [v5 *a3];

    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = sub_1E1780();

      return v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id BATracker.chain(with:)()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v3 = sub_1E1130();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v4 = objc_allocWithZone(ObjectType);
  v5 = OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory;
  sub_3D68(&qword_281B00, &unk_1EDCF8);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = _swiftEmptyArrayStorage;
  *&v4[v5] = v6;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker] = v3;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v9.receiver = v4;
  v9.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v9, "init");

  swift_unknownObjectRelease();
  return v7;
}

id BATracker.optedIn.getter()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isDiagnosticSubmissionAllowed];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t BATracker.pop<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory);

  os_unfair_lock_lock((v9 + 24));
  sub_1D4258((v9 + 16), a1, a2, a3, a4);
  os_unfair_lock_unlock((v9 + 24));

  v10 = *(v4 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  return sub_1E10F0();
}

uint64_t BATracker.push<A>(data:traits:file:line:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory);

  os_unfair_lock_lock((v1 + 24));
  sub_1D445C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));

  v2 = *(v0 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);

  sub_1E1110();
}

uint64_t BATracker.time<A>(_:startTime:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_1E09E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_103800(a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_18E48(v7, &qword_287B10, &qword_1FCF80);
    v13 = *(v2 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
    return sub_1E1120();
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v15 = *(v2 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
    sub_1E10D0();
    return (*(v9 + 8))(v12, v8);
  }
}

id BATracker.__allocating_init(tracker:sessionOperationDelegate:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory;
  sub_3D68(&qword_281B00, &unk_1EDCF8);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = _swiftEmptyArrayStorage;
  *&v4[v5] = v6;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v9.receiver = v4;
  v9.super_class = v2;

  v7 = objc_msgSendSuper2(&v9, "init");

  swift_unknownObjectRelease();
  return v7;
}

uint64_t BATracker.copy()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v4 = sub_1E10A0();
  if (v4)
  {
    v5 = sub_1E10B0();
    sub_1E0CA0();

    v6 = sub_1E1130();

    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v7 = objc_allocWithZone(ObjectType);
    v8 = OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory;
    sub_3D68(&qword_281B00, &unk_1EDCF8);
    v9 = swift_allocObject();
    *(v9 + 24) = 0;
    *(v9 + 16) = _swiftEmptyArrayStorage;
    *&v7[v8] = v9;
    swift_unknownObjectWeakInit();
    *&v7[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker] = v6;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v13.receiver = v7;
    v13.super_class = ObjectType;
    swift_retain_n();
    v4 = objc_msgSendSuper2(&v13, "init");

    v10 = swift_unknownObjectRelease();
    v11 = *(v1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory);
    __chkstk_darwin(v10);

    os_unfair_lock_lock(v11 + 6);
    sub_1D4680(&v11[4]);
    os_unfair_lock_unlock(v11 + 6);
  }

  return v4;
}

uint64_t BATracker.sessionOperationDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*BATracker.sessionOperationDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13BookAnalytics9BATracker_sessionOperationDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_11B43C;
}

id static BATracker.mock.getter()
{
  v0 = sub_1E0F50();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v32[7] = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E0F70();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v32[6] = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E0FB0();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v32[5] = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E0B70();
  v32[0] = *(v9 - 8);
  v10 = v32[0];
  v11 = *(v32[0] + 64);
  __chkstk_darwin(v9);
  v32[1] = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E0D40();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v32[4] = sub_1E0D60();
  sub_1E0E80();
  v32[3] = sub_1E0E70();
  v32[2] = dispatch_group_create();
  v35[0] = _swiftEmptyArrayStorage;
  sub_1D6864(&qword_287BA0, &type metadata accessor for SessionManager.Options);
  sub_3D68(&qword_287BA8, &qword_1FCFA0);
  sub_EC07C(&qword_287BB0, &qword_287BA8, &qword_1FCFA0);
  sub_1E1A70();
  sub_3D68(&qword_287BB8, &qword_1FCFA8);
  v15 = *(v10 + 72);
  v16 = (*(v32[0] + 80) + 32) & ~*(v32[0] + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1FCF60;
  sub_1E0B60();
  sub_1E0B40();
  sub_1E0B50();
  v35[0] = v17;
  sub_1D6864(&qword_287BC0, &type metadata accessor for FlushEvents);
  sub_3D68(&qword_287BC8, &unk_1FCFB0);
  sub_EC07C(&unk_287BD0, &qword_287BC8, &unk_1FCFB0);
  sub_1E1A70();
  v18 = sub_1E0CD0();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_1E0CC0();
  v21 = sub_1E0D90();
  v35[3] = v21;
  v35[4] = &protocol witness table for TimestampJitter;
  v22 = sub_16305C(v35);
  (*(*(v21 - 8) + 104))(v22, enum case for TimestampJitter.disabled(_:), v21);
  v23 = sub_1E1020();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_1E1010();
  sub_1E0FA0();
  sub_1E0F60();
  sub_1E0F40();
  sub_1E0CF0();
  v26 = sub_1E0D50();

  v27 = v33;
  v28 = objc_allocWithZone(v33);
  v29 = OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory;
  sub_3D68(&qword_281B00, &unk_1EDCF8);
  v30 = swift_allocObject();
  *(v30 + 24) = 0;
  *(v30 + 16) = _swiftEmptyArrayStorage;
  *&v28[v29] = v30;
  swift_unknownObjectWeakInit();
  *&v28[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker] = v26;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v34.receiver = v28;
  v34.super_class = v27;
  return objc_msgSendSuper2(&v34, "init");
}

id BATracker.init(tracker:sessionOperationDelegate:)(uint64_t a1)
{
  v1 = sub_1D6388(a1);

  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1D3474()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1D34AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void BATracker.timeRawEvent(_:properties:startTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v60 - v13;
  v15 = sub_1E09E0();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v61 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v60 - v20;
  v22 = __chkstk_darwin(v19);
  v63 = &v60 - v23;
  __chkstk_darwin(v22);
  v25 = &v60 - v24;
  v62 = a1;
  v64 = a2;
  v26 = a3;
  v28 = v27;
  v29 = sub_1D646C(a1, a2, v26);
  sub_103800(a4, v14);
  v30 = *(v28 + 48);
  if (v30(v14, 1, v15) == 1)
  {
    sub_18E48(v14, &qword_287B10, &qword_1FCF80);
    v31 = *(v65 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
    v32 = sub_1E10B0();
    [v32 timeRawEvent:v29];
  }

  else
  {
    v60 = v29;
    v33 = *(v28 + 32);
    v33(v25, v14, v15);
    BATracker.sessionStartTime.getter(v12);
    if (v30(v12, 1, v15) == 1)
    {
      sub_18E48(v12, &qword_287B10, &qword_1FCF80);
      v34 = v63;
      (*(v28 + 16))(v63, v25, v15);
      v35 = v25;
    }

    else
    {
      v36 = v28;
      v33(v21, v12, v15);
      v37 = sub_1E0980();
      v34 = v63;
      if (v37)
      {
        (*(v28 + 8))(v21, v15);
        v38 = *(v28 + 16);
        v39 = v61;
        v40 = v25;
        v38(v61, v25, v15);
      }

      else
      {
        v40 = v25;
        v39 = v61;
        v33(v61, v21, v15);
      }

      v33(v34, v39, v15);
      v28 = v36;
      v35 = v40;
    }

    sub_1D6864(&qword_28F2D8, &type metadata accessor for Date);
    v41 = sub_1E1760();
    v42 = v60;
    v43 = v64;
    if ((v41 & 1) == 0)
    {
      (*(v28 + 24))(v35, v34, v15);
      if (qword_27D030 != -1)
      {
        swift_once();
      }

      v44 = sub_1E1360();
      sub_3B2C(v44, qword_280278);

      v45 = sub_1E1340();
      v46 = sub_1E1960();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v66[0] = v48;
        *v47 = 136315138;
        *(v47 + 4) = sub_DD91C(v62, v64, v66);
        _os_log_impl(&dword_0, v45, v46, "Analytics: Timing %s attempted to use a date earlier than the sessionStartTime.", v47, 0xCu);
        sub_4E48(v48);

        v43 = v64;
      }
    }

    if (qword_27D030 != -1)
    {
      swift_once();
    }

    v49 = sub_1E1360();
    sub_3B2C(v49, qword_280278);

    v50 = sub_1E1340();
    v51 = sub_1E1960();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = v43;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v66[0] = v54;
      *v53 = 136315394;
      *(v53 + 4) = sub_DD91C(v62, v52, v66);
      *(v53 + 12) = 2048;
      swift_beginAccess();
      sub_1E09A0();
      *(v53 + 14) = v55 * 1000.0;
      _os_log_impl(&dword_0, v50, v51, "Analytics: Timing %s with startTime: %f", v53, 0x16u);
      sub_4E48(v54);
    }

    v56 = *(v65 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
    v57 = sub_1E10B0();
    swift_beginAccess();
    isa = sub_1E0970().super.isa;
    [v57 timeRawEvent:v42 startTime:isa];

    v59 = *(v28 + 8);
    v59(v34, v15);
    v59(v35, v15);
  }
}

uint64_t BATracker.sessionStartTime.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = [Strong sessionStartTime];
    swift_unknownObjectRelease();
    if (v7)
    {
      sub_1E09B0();

      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    v11 = sub_1E09E0();
    (*(*(v11 - 8) + 56))(v5, v8, 1, v11);
    return sub_1D68AC(v5, a1);
  }

  else
  {
    v9 = sub_1E09E0();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

void BATracker.pushRawDataEvent(with:data:traits:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = objc_allocWithZone(sub_1E0E40());

  v11 = sub_1E0E30();
  v12 = *(v7 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v13 = sub_1E10B0();
  v14 = v11;
  v15 = sub_1E1770();
  [v13 pushDataEvent:v14 traits:a4 file:v15 line:a7];
}

void BATracker.submitRawEvent(_:properties:endTime:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v38 - v11;
  v13 = sub_1E09E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v38 - v19;
  v21 = sub_1D646C(a1, a2, a3);
  sub_103800(a4, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_18E48(v12, &qword_287B10, &qword_1FCF80);
    v22 = *(v4 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
    v23 = sub_1E10B0();
    [v23 submitRawEvent:v21];
  }

  else
  {
    v39 = a1;
    v40 = v4;
    (*(v14 + 32))(v20, v12, v13);
    if (qword_27D030 != -1)
    {
      swift_once();
    }

    v24 = sub_1E1360();
    sub_3B2C(v24, qword_280278);
    (*(v14 + 16))(v18, v20, v13);

    v25 = sub_1E1340();
    v26 = sub_1E1960();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38 = v21;
      v29 = v28;
      v41 = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_DD91C(v39, a2, &v41);
      *(v27 + 12) = 2048;
      sub_1E09A0();
      v31 = v30;
      v32 = *(v14 + 8);
      v32(v18, v13);
      v33 = v32;
      *(v27 + 14) = v31 * 1000.0;
      _os_log_impl(&dword_0, v25, v26, "Analytics: Submitting %s with endTime: %f", v27, 0x16u);
      sub_4E48(v29);
      v21 = v38;
    }

    else
    {

      v34 = *(v14 + 8);
      v34(v18, v13);
      v33 = v34;
    }

    v35 = *(v40 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
    v36 = sub_1E10B0();
    isa = sub_1E0970().super.isa;
    [v36 explicitSubmitRawEvent:v21 submitTime:isa];

    v33(v20, v13);
  }
}

__n128 sub_1D4258(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_103008(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_103008((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[64 * v11];
  *(v12 + 4) = a2;
  *(v12 + 5) = a4;
  *(v12 + 6) = a5;
  result = v14;
  *(v12 + 72) = v15;
  *(v12 + 56) = v14;
  v12[88] = 1;
  *a1 = v9;
  return result;
}

__n128 sub_1D433C(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(&v19 + 1) = a4;
  *v20 = a5;
  *&v20[8] = a6;
  v10 = sub_16305C(&v18);
  (*(*(a4 - 8) + 16))(v10, a2, a4);
  *&v20[16] = a3;
  v20[24] = 0;
  v11 = *a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_103008(0, *(v11 + 2) + 1, 1, v11);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_103008((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[64 * v13];
  result = v18;
  v16 = v19;
  v17 = *v20;
  *(v14 + 73) = *&v20[9];
  *(v14 + 3) = v16;
  *(v14 + 4) = v17;
  *(v14 + 2) = result;
  *a1 = v11;
  return result;
}

uint64_t sub_1D4574(uint64_t result)
{
  v1 = *(*result + 16);
  if (v1)
  {
    v2 = *result + 32;
    do
    {
      sub_1D6C0C(v2, &v5);
      if (v7)
      {
        result = BATracker.pop<A>(type:)(v5, v5, *(&v5 + 1), v6);
      }

      else
      {
        sub_E9CB0(&v5, &v3);
        sub_48B8(&v3, v4);
        BATracker.push<A>(data:traits:file:line:)();

        result = sub_4E48(&v3);
      }

      v2 += 64;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t BATracker.onSessionChange(with:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_1E10E0();
}

id BATracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t BATracker.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v2 = sub_1E10B0();
  v3 = sub_1E0CA0();

  return v3;
}

uint64_t BATracker.path.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  sub_1E1100();
  sub_3D68(&qword_281BC0, &unk_1EDD80);
  sub_EC07C(&qword_28F2E0, &qword_281BC0, &unk_1EDD80);
  v2 = sub_1E1750();

  return v2;
}

Swift::Void __swiftcall BATracker.timeRawEvent(eventNameValue:propertiesValue:startTimeValue:)(JSValue eventNameValue, JSValue propertiesValue, JSValue startTimeValue)
{
  v6 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  if ([(objc_class *)eventNameValue.super.isa isString]&& (v13 = [(objc_class *)eventNameValue.super.isa toString]) != 0)
  {
    v14 = v13;
    v15 = sub_1E1780();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  if ([(objc_class *)propertiesValue.super.isa isObject]&& (v18 = [(objc_class *)propertiesValue.super.isa toDictionary]) != 0)
  {
    v19 = v18;
    v20 = sub_1E1730();

    v21 = sub_1D4EDC(v20);
  }

  else
  {
    v21 = 0;
  }

  if ([(objc_class *)startTimeValue.super.isa isDate])
  {
    v22 = [(objc_class *)startTimeValue.super.isa toDate];
    if (v22)
    {
      v23 = v22;
      sub_1E09B0();

      v24 = sub_1E09E0();
      (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
    }

    else
    {
      v26 = sub_1E09E0();
      (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
    }

    sub_1D68AC(v10, v12);
    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v25 = sub_1E09E0();
    (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
    if (!v17)
    {
      goto LABEL_18;
    }
  }

  if (v21)
  {
    BATracker.timeRawEvent(_:properties:startTime:)(v15, v17, v21, v12);

    sub_18E48(v12, &qword_287B10, &qword_1FCF80);
    return;
  }

LABEL_18:
  sub_18E48(v12, &qword_287B10, &qword_1FCF80);
}

unint64_t sub_1D4EDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_3D68(&qword_28B458, &qword_2051A0);
    v2 = sub_1E1B50();
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_A798(*(a1 + 48) + 40 * v14, v27);
        sub_326BC(*(a1 + 56) + 32 * v14, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_A798(v24, v23);
        if (!swift_dynamicCast())
        {
          sub_18E48(v24, &qword_28F310, &qword_210868);

          goto LABEL_23;
        }

        sub_326BC(v25 + 8, v23);
        sub_18E48(v24, &qword_28F310, &qword_210868);
        sub_3D68(&qword_28B468, &qword_2051D0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_A2F4(v21, v22);
        v15 = result;
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v21;
          v9[1] = v22;

          v11 = v2[7];
          v12 = *(v11 + 8 * v15);
          *(v11 + 8 * v15) = v21;

          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v21;
          v17[1] = v22;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v2[2] = v20;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

Swift::Void __swiftcall BATracker.submitRawEvent(_:properties:)(Swift::String _, Swift::OpaquePointer properties)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v5 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v10 - v7;
  v9 = sub_1E09E0();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  BATracker.submitRawEvent(_:properties:endTime:)(countAndFlagsBits, object, properties._rawValue, v8);
  sub_18E48(v8, &qword_287B10, &qword_1FCF80);
}

Swift::Void __swiftcall BATracker.submitRawEvent(_:properties:endTimeValue:)(Swift::String _, Swift::OpaquePointer properties, JSValue_optional endTimeValue)
{
  isa = endTimeValue.value.super.isa;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v7 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  if (isa && [(objc_class *)isa isDate])
  {
    v14 = [(objc_class *)isa toDate];
    if (v14)
    {
      v15 = v14;
      sub_1E09B0();

      v16 = sub_1E09E0();
      (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
    }

    else
    {
      v18 = sub_1E09E0();
      (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    }

    sub_1D68AC(v11, v13);
  }

  else
  {
    v17 = sub_1E09E0();
    (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  }

  BATracker.submitRawEvent(_:properties:endTime:)(countAndFlagsBits, object, properties._rawValue, v13);
  sub_18E48(v13, &qword_287B10, &qword_1FCF80);
}

Swift::Void __swiftcall BATracker.submitRawEvent(_:properties:onlyIfTimed:)(Swift::String _, Swift::OpaquePointer properties, Swift::Bool onlyIfTimed)
{
  v5 = sub_1D646C(_._countAndFlagsBits, _._object, properties._rawValue);
  v6 = *(v3 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v7 = sub_1E10B0();
  [v7 submitRawEvent:v5 onlyIfTimed:onlyIfTimed];
}

Swift::Void __swiftcall BATracker.pushRawDataEvent(with:data:traitValues:)(Swift::String with, Swift::OpaquePointer data, Swift::OpaquePointer traitValues)
{
  v5 = objc_allocWithZone(sub_1E0E40());

  v6 = sub_1E0E30();
  v7 = [objc_allocWithZone(sub_1E0ED0()) init];
  v17 = 0x65636E4F796C6E6FLL;
  v18 = 0xE800000000000000;
  v16 = &v17;
  v8 = sub_1D62DC(sub_1D6948, v15, traitValues._rawValue);
  if (v8)
  {
    v8 = sub_1E0EC0();
  }

  v17 = 0x657571696E75;
  v18 = 0xE600000000000000;
  __chkstk_darwin(v8);
  v14[2] = &v17;
  if (sub_1D62DC(sub_1D6C54, v14, traitValues._rawValue))
  {
    sub_1E0EB0();
  }

  v9 = *(v3 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v10 = sub_1E10B0();
  v11 = v6;
  v12 = v7;
  v13 = sub_1E1770();
  [v10 pushDataEvent:v11 traits:v12 file:v13 line:0];
}

Swift::Void __swiftcall BATracker.popRawDataEvent(with:)(Swift::String with)
{
  v2 = *(v1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v3 = sub_1E10B0();
  v4 = sub_1E1770();
  [v3 popDataEventByName:v4];
}

id sub_1D5DDC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1E1780();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
  v11 = v10;

  if (v11)
  {
    v12 = sub_1E1770();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void BATracker.performAfterPrivateDataFetched(completionHandler:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_11AD8C;
    aBlock[3] = &unk_276240;
    v6 = _Block_copy(aBlock);

    [v5 performAfterPrivateDataFetchedWithCompletionHandler:v6];
    swift_unknownObjectRelease();
    _Block_release(v6);
  }
}

id sub_1D6024(SEL *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = [Strong *a1];
  swift_unknownObjectRelease();
  return v3;
}

id sub_1D60AC(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = [Strong *a3];
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1D612C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E1A90() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1E1DC0();

      sub_1E17D0();
      v13 = sub_1E1DE0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D62DC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id sub_1D6388(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory;
  sub_3D68(&qword_281B00, &unk_1EDCF8);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = _swiftEmptyArrayStorage;
  *&v1[v4] = v5;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v7.receiver = v1;
  v7.super_class = ObjectType;

  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_1D646C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = &_swiftEmptyDictionarySingleton;
LABEL_4:
  while (2)
  {
    while (2)
    {
      v48 = v10;
      while (1)
      {
        if (!v7)
        {
          while (1)
          {
            v11 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              break;
            }

            if (v11 >= v8)
            {

              sub_1E0E60();

              sub_1E0E50();
              v45 = objc_allocWithZone(sub_1E0D80());
              return sub_1E0D70();
            }

            v7 = *(v4 + 8 * v11);
            ++v9;
            if (v7)
            {
              v9 = v11;
              goto LABEL_10;
            }
          }

          __break(1u);
          goto LABEL_38;
        }

        v12 = __clz(__rbit64(v7)) | (v9 << 6);
        v13 = (*(a3 + 48) + 16 * v12);
        v15 = *v13;
        v14 = v13[1];
        v16 = *(*(a3 + 56) + 8 * v12);
        v17 = *(v16 + 16);

        if (!v17)
        {
          goto LABEL_43;
        }

LABEL_10:
        v18 = sub_A2F4(0x6465726975716572, 0xE800000000000000);
        if (v19 & 1) != 0 && (sub_326BC(*(v16 + 56) + 32 * v18, v52), (swift_dynamicCast()) && (v51)
        {
          if (!*(v16 + 16))
          {
            goto LABEL_19;
          }
        }

        else
        {
LABEL_43:
          if (!*(v16 + 16))
          {
            goto LABEL_19;
          }
        }

        v20 = sub_A2F4(1701869940, 0xE400000000000000);
        if (v21)
        {
          sub_326BC(*(v16 + 56) + 32 * v20, v52);

          swift_dynamicCast();
          goto LABEL_20;
        }

LABEL_19:

LABEL_20:
        v7 &= v7 - 1;
        v22 = objc_allocWithZone(sub_1E0F30());
        v23 = sub_1E0F20();
        if (v23)
        {
          break;
        }

        v24 = v15;
        v10 = v48;
        v25 = sub_A2F4(v24, v14);
        v27 = v26;

        if (v27)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v52[0] = v48;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_17482C();
            v10 = v52[0];
          }

          v29 = *(v10[6] + 16 * v25 + 8);

          sub_1D612C(v25, v10);
          goto LABEL_4;
        }
      }

      v30 = v23;
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v52[0] = v48;
      v32 = sub_A2F4(v15, v14);
      v33 = v48[2];
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (v48[3] < v35)
      {
        v49 = v31;
        sub_173A58(v35, v47);
        v36 = sub_A2F4(v15, v14);
        if ((v49 & 1) != (v37 & 1))
        {
          goto LABEL_40;
        }

        v32 = v36;
        if ((v49 & 1) == 0)
        {
          goto LABEL_34;
        }

LABEL_32:

        v10 = v52[0];
        v38 = *(v52[0] + 56);
        v39 = *(v38 + 8 * v32);
        *(v38 + 8 * v32) = v30;

        continue;
      }

      break;
    }

    if (v47)
    {
      if (v31)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v50 = v31;
      sub_17482C();
      if (v50)
      {
        goto LABEL_32;
      }
    }

LABEL_34:
    v40 = v52[0];
    *(v52[0] + 8 * (v32 >> 6) + 64) |= 1 << v32;
    v41 = (v40[6] + 16 * v32);
    *v41 = v15;
    v41[1] = v14;
    *(v40[7] + 8 * v32) = v30;
    v42 = v40[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (!v43)
    {
      v10 = v40;
      v40[2] = v44;
      continue;
    }

    break;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_1E1D60();
  __break(1u);
  return result;
}

uint64_t sub_1D6864(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D68AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_287B10, &qword_1FCF80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D691C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a2);
}

uint64_t sub_1D6964(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E1D30() & 1;
  }
}

uint64_t sub_1D69BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D69D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1D6A30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D6AE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6B24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D6B74(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_1D6BC0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t HideBookEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HideBookEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HideBookEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HideBookEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HideBookEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for HideBookEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t HideBookEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HideBookEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HideBookEvent.Model.init(contentData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1[3];
  *(a3 + 2) = a1[2];
  *(a3 + 3) = v5;
  v6 = a1[5];
  *(a3 + 4) = a1[4];
  *(a3 + 5) = v6;
  v7 = a1[1];
  *a3 = *a1;
  *(a3 + 1) = v7;
  v8 = *(type metadata accessor for HideBookEvent.Model(0) + 20);
  v9 = sub_1E1150();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a3[v8], a2, v9);
}

uint64_t sub_1D70B8(uint64_t a1)
{
  v2 = sub_1D7388();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1D70F4(uint64_t a1)
{
  v2 = sub_1D7388();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HideBookEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28F348, &qword_210870);
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v5);
  v8 = &v18[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1D7388();
  sub_1E1E00();
  v10 = v3[2];
  v11 = v3[4];
  v30 = v3[3];
  v31 = v11;
  v12 = v3[4];
  v32 = v3[5];
  v13 = *v3;
  v14 = v3[2];
  v28 = v3[1];
  v29 = v14;
  v15 = *v3;
  v24 = v30;
  v25 = v12;
  v26 = v3[5];
  v27 = v15;
  v21 = v13;
  v22 = v28;
  v23 = v10;
  v20 = 0;
  sub_13A5C(&v27, v19);
  sub_143D0();
  sub_1E1CF0();
  v19[2] = v23;
  v19[3] = v24;
  v19[4] = v25;
  v19[5] = v26;
  v19[0] = v21;
  v19[1] = v22;
  sub_14424(v19);
  if (!v2)
  {
    v16 = *(type metadata accessor for HideBookEvent.Model(0) + 20);
    v18[15] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v33 + 8))(v8, v5);
}

unint64_t sub_1D7388()
{
  result = qword_28F350;
  if (!qword_28F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F350);
  }

  return result;
}

uint64_t HideBookEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1E1150();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_3D68(&qword_28F358, &qword_210878);
  v25 = *(v26 - 8);
  v8 = *(v25 + 64);
  __chkstk_darwin(v26);
  v10 = &v22 - v9;
  v11 = type metadata accessor for HideBookEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v27 = a1;
  sub_48B8(a1, v15);
  sub_1D7388();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v27);
  }

  v17 = v25;
  v35 = 0;
  sub_14CB8();
  sub_1E1C20();
  v18 = v31;
  *(v14 + 2) = v30;
  *(v14 + 3) = v18;
  v19 = v33;
  *(v14 + 4) = v32;
  *(v14 + 5) = v19;
  v20 = v29;
  *v14 = v28;
  *(v14 + 1) = v20;
  v34 = 1;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v10, v26);
  (*(v23 + 32))(&v14[*(v11 + 20)], v7, v4);
  sub_1D777C(v14, v24);
  sub_4E48(v27);
  return sub_1D77E0(v14);
}

uint64_t sub_1D777C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HideBookEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77E0(uint64_t a1)
{
  v2 = type metadata accessor for HideBookEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D78F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D7A0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D7B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7BF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1D7CAC()
{
  result = qword_28F480;
  if (!qword_28F480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F480);
  }

  return result;
}

unint64_t sub_1D7D04()
{
  result = qword_28F488;
  if (!qword_28F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F488);
  }

  return result;
}

unint64_t sub_1D7D5C()
{
  result = qword_28F490;
  if (!qword_28F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F490);
  }

  return result;
}

uint64_t sub_1D7E70(uint64_t a1)
{
  v2 = sub_1D804C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1D7EAC(uint64_t a1)
{
  v2 = sub_1D804C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PortraitOrientationLockEvent.Model.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_28F4C8, &qword_210A78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1D804C();
  sub_1E1E00();
  sub_1E1150();
  sub_14E5C(&qword_27D810);
  sub_1E1CF0();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D804C()
{
  result = qword_28F4D0;
  if (!qword_28F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F4D0);
  }

  return result;
}

uint64_t PortraitOrientationLockEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_1E1150();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  __chkstk_darwin(v3);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3D68(&qword_28F4D8, &qword_210A80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PortraitOrientationLockEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1D804C();
  v16 = v23;
  sub_1E1DF0();
  if (!v16)
  {
    v17 = v21;
    sub_14E5C(&qword_27D830);
    sub_1E1C20();
    (*(v7 + 8))(v10, v6);
    (*(v17 + 32))(v14, v22, v3);
    sub_1D832C(v14, v20);
  }

  return sub_4E48(a1);
}

uint64_t sub_1D832C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PortraitOrientationLockEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D842C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D84B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D8568(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D85E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_1D866C()
{
  result = qword_28F600;
  if (!qword_28F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F600);
  }

  return result;
}

unint64_t sub_1D86C4()
{
  result = qword_28F608;
  if (!qword_28F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F608);
  }

  return result;
}

unint64_t sub_1D871C()
{
  result = qword_28F610;
  if (!qword_28F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F610);
  }

  return result;
}

uint64_t sub_1D8770()
{
  v0 = sub_3D68(&qword_28F638, &qword_210C88);
  sub_5F94(v0, qword_28F618);
  v1 = sub_3B2C(v0, qword_28F618);
  v2 = sub_1E1680();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_1D8810@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7B8 != -1)
  {
    swift_once();
  }

  v2 = sub_3D68(&qword_28F638, &qword_210C88);
  v3 = sub_3B2C(v2, qword_28F618);

  return sub_1D8AB4(v3, a1);
}

uint64_t EnvironmentValues.pageMetrics.getter()
{
  sub_1D88DC();

  return sub_1E1490();
}

unint64_t sub_1D88DC()
{
  result = qword_28F630;
  if (!qword_28F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F630);
  }

  return result;
}

uint64_t sub_1D8930(uint64_t a1)
{
  v2 = sub_3D68(&qword_28F638, &qword_210C88);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_1D8AB4(a1, &v10 - v7);
  sub_1D8AB4(v8, v6);
  sub_1D88DC();
  sub_1E14A0();
  return sub_1D8B24(v8);
}

uint64_t EnvironmentValues.pageMetrics.setter(uint64_t a1)
{
  v2 = sub_3D68(&qword_28F638, &qword_210C88);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_1D8AB4(a1, &v6 - v4);
  sub_1D88DC();
  sub_1E14A0();
  return sub_1D8B24(a1);
}

uint64_t sub_1D8AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_28F638, &qword_210C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8B24(uint64_t a1)
{
  v2 = sub_3D68(&qword_28F638, &qword_210C88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*EnvironmentValues.pageMetrics.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_3D68(&qword_28F638, &qword_210C88) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = sub_1D88DC();
  sub_1E1490();
  return sub_1D8CA4;
}

void sub_1D8CA4(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_1D8AB4((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[1];
  v7 = v3[2];
  v8 = *v3;
  if (a2)
  {
    sub_1D8AB4(v3[2], v3[1]);
    sub_1E14A0();
    sub_1D8B24(v7);
  }

  else
  {
    v9 = v3[2];
    v10 = v3[4];
    sub_1E14A0();
  }

  sub_1D8B24(v4);
  free(v4);
  free(v7);
  free(v6);

  free(v3);
}

unint64_t sub_1D8DC8()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_1D8E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000013 && 0x8000000000217910 == a2;
  if (v5 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000217930 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E1D30();

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

uint64_t sub_1D8EE8(uint64_t a1)
{
  v2 = sub_1D90EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1D8F24(uint64_t a1)
{
  v2 = sub_1D90EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingGoalsDurationData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28F640, &qword_210CE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[1] = v1[1];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1D90EC();
  sub_1E1E00();
  v14 = 0;
  sub_1E1D10();
  if (!v2)
  {
    v13 = 1;
    sub_1E1D10();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D90EC()
{
  result = qword_28F648;
  if (!qword_28F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F648);
  }

  return result;
}

uint64_t ReadingGoalsDurationData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_28F650, &qword_210CE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1D90EC();
  sub_1E1DF0();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1E1C40();
    v15 = 1;
    v12 = sub_1E1C40();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
  }

  return sub_4E48(a1);
}

unint64_t sub_1D933C()
{
  result = qword_28F658;
  if (!qword_28F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F658);
  }

  return result;
}

unint64_t sub_1D9394()
{
  result = qword_28F660;
  if (!qword_28F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F660);
  }

  return result;
}

unint64_t sub_1D93EC()
{
  result = qword_28F668;
  if (!qword_28F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F668);
  }

  return result;
}

BookAnalytics::BackgroundColor_optional __swiftcall BackgroundColor.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2623E0;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 11;
  if (v5 < 0xB)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t BackgroundColor.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x6E776F6E6B6E75;
    v8 = 0x6169706573;
    v9 = 2036691559;
    if (v1 != 3)
    {
      v9 = 0x6B63616C62;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x6574696877;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 1835819363;
    v3 = 0x7375636F66;
    if (v1 != 9)
    {
      v3 = 1684828002;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x6C616E696769726FLL;
    v5 = 0x7465697571;
    if (v1 != 6)
    {
      v5 = 0x7265706170;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1D95CC()
{
  result = qword_28F670;
  if (!qword_28F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F670);
  }

  return result;
}

Swift::Int sub_1D9620()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1DFCB4();
  return sub_1E1DE0();
}

Swift::Int sub_1D9670()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1DFCB4();
  return sub_1E1DE0();
}

uint64_t sub_1D96C0@<X0>(uint64_t *a1@<X8>)
{
  result = BackgroundColor.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D97A8()
{
  result = qword_28F678;
  if (!qword_28F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F678);
  }

  return result;
}

uint64_t ActionModel.instrumentingAppAnalyticsClickEvent(using:refId:dataStack:sizeProvider:clickData:additionalData:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v45 = a8;
  v44 = a6;
  v43 = a2;
  v15 = sub_1E16A0();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = sub_1E16C0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a3;
  v23 = a5[1];
  v52 = *a5;
  v53 = v23;
  v24 = a5[3];
  v54 = a5[2];
  v55 = v24;
  if (a1)
  {
    v25 = a1;
    sub_1E1690();
    sub_17AA4(a4, v50, &qword_283810, &unk_20EAE0);
    sub_17AA4(v43, v48, &qword_28F680, &qword_211040);
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v27 = v53;
    *(v26 + 24) = v52;
    *(v26 + 40) = v27;
    v28 = v55;
    *(v26 + 56) = v54;
    *(v26 + 72) = v28;
    *(v26 + 88) = v22;
    v29 = v50[1];
    *(v26 + 96) = v50[0];
    *(v26 + 112) = v29;
    v30 = v44;
    *(v26 + 128) = v51;
    *(v26 + 136) = v30;
    v31 = v48[0];
    v32 = v48[1];
    *(v26 + 176) = v49;
    *(v26 + 144) = v31;
    *(v26 + 160) = v32;
    v43 = v25;
    sub_B4464(&v52, v47);

    sub_1E16B0();
    v33 = v46;
    v34 = v45;
    sub_1E1670();
    sub_3D68(&qword_28F688, &qword_211048);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1E7EA0;
    *(v35 + 56) = v17;
    *(v35 + 64) = &protocol witness table for ClosureAction;
    v36 = sub_16305C((v35 + 32));
    (*(v18 + 16))(v36, v21, v17);
    *(v35 + 96) = a7;
    *(v35 + 104) = v34;
    v37 = sub_16305C((v35 + 72));
    (*(*(a7 - 8) + 16))(v37, v33, a7);
    a9[3] = sub_1E16E0();
    a9[4] = &protocol witness table for CompoundAction;
    sub_16305C(a9);
    sub_1E16D0();

    return (*(v18 + 8))(v21, v17);
  }

  else
  {
    v39 = v45;
    a9[3] = a7;
    a9[4] = v39;
    v40 = sub_16305C(a9);
    v41 = *(*(a7 - 8) + 16);
    v42 = v46;

    return v41(v40, v42, a7);
  }
}

uint64_t sub_1D9BCC(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = BATracker.copy()();
  if (result)
  {
    v12 = result;
    sub_17AA4(a4, v24, &qword_283810, &unk_20EAE0);
    sub_17AA4(a6, v22, &qword_28F680, &qword_211040);
    v13 = swift_allocObject();
    v14 = a2[1];
    *(v13 + 16) = *a2;
    *(v13 + 32) = v14;
    v15 = a2[3];
    *(v13 + 48) = a2[2];
    *(v13 + 64) = v15;
    *(v13 + 80) = a3;
    v16 = v24[1];
    *(v13 + 88) = v24[0];
    *(v13 + 104) = v16;
    *(v13 + 120) = v25;
    *(v13 + 128) = a5;
    v17 = v22[0];
    v18 = v22[1];
    *(v13 + 168) = v23;
    *(v13 + 152) = v18;
    *(v13 + 136) = v17;
    v19 = *&v12[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1DA018;
    *(v20 + 24) = v13;
    sub_B4464(a2, &v21);

    sub_1E10C0();
  }

  return result;
}

uint64_t sub_1D9D50()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 80);

  v4 = *(v0 + 88);

  if (*(v0 + 120))
  {
    sub_4E48((v0 + 96));
  }

  v5 = *(v0 + 136);

  if (*(v0 + 168))
  {
    sub_4E48((v0 + 144));
  }

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_1D9E00(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v6 = sub_1E0CB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E9970;
  (*(v7 + 104))(v10 + v9, enum case for DataEventTrait.onlyOnce(_:), v6);
  sub_1B4058();
  sub_1E0C00();

  return sub_1C078C(a1, a4, 0, 1, sub_1DA128);
}

uint64_t sub_1D9FA0()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[9];

  v4 = v0[10];

  if (v0[14])
  {
    sub_4E48(v0 + 11);
  }

  v5 = v0[16];

  if (v0[20])
  {
    sub_4E48(v0 + 17);
  }

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_1DA030()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1DA068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = (a1 + 32);
    do
    {
      sub_1DA134(v7, a3, a4);
      v7 += 6;
      --v4;
    }

    while (v4);
  }

  type metadata accessor for ClickEvent(0);
  sub_1DA5BC();
  memset(v9, 0, 32);
  sub_1E0C10();
  return sub_18E48(v9, &unk_281B50, &unk_1EDD70);
}

uint64_t sub_1DA134(void *a1, uint64_t a2, uint64_t a3)
{
  sub_E9C4C(a1, v35);
  sub_3D68(&qword_285BB0, &qword_20EAA0);
  sub_3D68(&qword_28EBA0, &qword_20EAB8);
  if (swift_dynamicCast())
  {
    sub_7EE7C(&v32, v36);
    sub_17AA4(a2, &v32, &qword_283810, &unk_20EAE0);
    if (*(&v33 + 1))
    {
      sub_7EE7C(&v32, v35);
      sub_17AA4(a3, &v29, &qword_28F680, &qword_211040);
      if (*(&v30 + 1))
      {
        v32 = v29;
        v33 = v30;
        v34 = v31;
        v6 = v37;
        v7 = v38;
        v8 = sub_48B8(v36, v37);
        v39 = &v28;
        v28 = *(v6 - 8);
        v9 = *(v28 + 64);
        __chkstk_darwin(v8);
        v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v7 + 24))(&v32, v35, v6, v7);
        sub_3D68(&qword_2828D0, &unk_1FD120);
        v12 = sub_1E0CB0();
        v13 = *(v12 - 8);
        v14 = *(v13 + 72);
        v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1E9970;
        (*(v13 + 104))(v16 + v15, enum case for DataEventTrait.onlyOnce(_:), v12);
        v17 = *(v7 + 8);
        sub_1E0C00();

        (*(v28 + 8))(v11, v6);
        sub_A7F4(&v32);
        sub_4E48(v35);
        return sub_4E48(v36);
      }

      sub_4E48(v35);
      v19 = &qword_28F680;
      v20 = &qword_211040;
      v21 = &v29;
    }

    else
    {
      v19 = &qword_283810;
      v20 = &unk_20EAE0;
      v21 = &v32;
    }

    sub_18E48(v21, v19, v20);
    sub_4E48(v36);
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    sub_18E48(&v32, &qword_28EBA8, &qword_20EAC0);
  }

  v22 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v23 = sub_1E0CB0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1E9970;
  (*(v24 + 104))(v27 + v26, enum case for DataEventTrait.onlyOnce(_:), v23);
  sub_1E0C00();
}

unint64_t sub_1DA5BC()
{
  result = qword_28E278;
  if (!qword_28E278)
  {
    type metadata accessor for ClickEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E278);
  }

  return result;
}

uint64_t DislikeEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DislikeEvent(0) + 20);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DislikeEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DislikeEvent(0) + 20);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DislikeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DislikeEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DislikeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DislikeEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DislikeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for DislikeEvent(0);
  v5 = *(v4 + 20);
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = *(v4 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v8, v2, v9);
}

uint64_t DislikeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DislikeEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DislikeEvent.Model.init(contentData:suggestionData:eventData:)@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v7;
  v8 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v8;
  v9 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v9;
  *(a4 + 96) = v6;
  v10 = *(type metadata accessor for DislikeEvent.Model(0) + 24);
  v11 = sub_1E1150();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t sub_1DAC20(uint64_t a1)
{
  v2 = sub_1DAF30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1DAC5C(uint64_t a1)
{
  v2 = sub_1DAF30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DislikeEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28F6C0, &qword_211050);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1DAF30();
  sub_1E1E00();
  v10 = v2[2];
  v11 = v2[4];
  v37 = v2[3];
  v38 = v11;
  v12 = v2[4];
  v39 = v2[5];
  v13 = *v2;
  v14 = v2[2];
  v35 = v2[1];
  v36 = v14;
  v15 = *v2;
  v31 = v37;
  v32 = v12;
  v33 = v2[5];
  v34 = v15;
  v28 = v13;
  v29 = v35;
  v30 = v10;
  v27 = 0;
  sub_13A5C(&v34, &v21);
  sub_143D0();
  v16 = v40;
  sub_1E1CF0();
  if (v16)
  {
    v23 = v30;
    v24 = v31;
    v25 = v32;
    v26 = v33;
    v21 = v28;
    v22 = v29;
    sub_14424(&v21);
  }

  else
  {
    v23 = v30;
    v24 = v31;
    v25 = v32;
    v26 = v33;
    v21 = v28;
    v22 = v29;
    sub_14424(&v21);
    v20 = *(v2 + 96);
    v19[14] = 1;
    sub_284F8();
    sub_1E1C80();
    v17 = *(type metadata accessor for DislikeEvent.Model(0) + 24);
    v20 = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1DAF30()
{
  result = qword_28F6C8;
  if (!qword_28F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F6C8);
  }

  return result;
}

uint64_t DislikeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1E1150();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_3D68(&qword_28F6D0, &qword_211058);
  v27 = *(v28 - 8);
  v8 = *(v27 + 64);
  __chkstk_darwin(v28);
  v10 = &v24 - v9;
  v11 = type metadata accessor for DislikeEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v29 = a1;
  sub_48B8(a1, v15);
  sub_1DAF30();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v29);
  }

  v24 = v11;
  v17 = v27;
  v18 = v7;
  v38 = 0;
  sub_14CB8();
  v19 = v28;
  sub_1E1C20();
  v20 = v34;
  *(v14 + 2) = v33;
  *(v14 + 3) = v20;
  v21 = v36;
  *(v14 + 4) = v35;
  *(v14 + 5) = v21;
  v22 = v32;
  *v14 = v31;
  *(v14 + 1) = v22;
  v37 = 1;
  sub_28F9C();
  sub_1E1BB0();
  v14[96] = v30;
  v30 = 2;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v10, v19);
  (*(v25 + 32))(&v14[*(v24 + 24)], v18, v4);
  sub_1DB37C(v14, v26);
  sub_4E48(v29);
  return sub_1DB3E0(v14);
}

uint64_t sub_1DB37C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DislikeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB3E0(uint64_t a1)
{
  v2 = type metadata accessor for DislikeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1DB668(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1DB7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DB8AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1DB964()
{
  result = qword_28F808;
  if (!qword_28F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F808);
  }

  return result;
}

unint64_t sub_1DB9BC()
{
  result = qword_28F810;
  if (!qword_28F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F810);
  }

  return result;
}

unint64_t sub_1DBA14()
{
  result = qword_28F818;
  if (!qword_28F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F818);
  }

  return result;
}

BookAnalytics::AudioPlaybackSpeedData __swiftcall AudioPlaybackSpeedData.init(playbackSpeed:previousPlaybackSpeed:)(Swift::Float playbackSpeed, Swift::Float previousPlaybackSpeed)
{
  *v2 = playbackSpeed;
  v2[1] = previousPlaybackSpeed;
  result.previousPlaybackSpeed = previousPlaybackSpeed;
  result.playbackSpeed = playbackSpeed;
  return result;
}

unint64_t sub_1DBA9C()
{
  if (*v0)
  {
    result = 0xD00000000000001CLL;
  }

  else
  {
    result = 0xD00000000000001ELL;
  }

  *v0;
  return result;
}

uint64_t sub_1DBAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD00000000000001ELL && 0x80000000002179C0 == a2;
  if (v5 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000000002179E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E1D30();

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

uint64_t sub_1DBBBC(uint64_t a1)
{
  v2 = sub_1DBDBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1DBBF8(uint64_t a1)
{
  v2 = sub_1DBDBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ScrollData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28F820, &qword_211260);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v10 = *v1;
  v9 = v1[1];
  v11 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1DBDBC();
  sub_1E1E00();
  v13[15] = 0;
  sub_1E1CE0();
  if (!v2)
  {
    v13[14] = 1;
    sub_1E1CE0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1DBDBC()
{
  result = qword_28F828;
  if (!qword_28F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F828);
  }

  return result;
}

uint64_t ScrollData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_28F830, &qword_211268);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1DBDBC();
  sub_1E1DF0();
  if (!v2)
  {
    v18 = 0;
    sub_1E1C10();
    v12 = v11;
    v17 = 1;
    sub_1E1C10();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return sub_4E48(a1);
}

uint64_t getEnumTagSinglePayload for ScrollData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScrollData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1DC05C()
{
  result = qword_28F838;
  if (!qword_28F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F838);
  }

  return result;
}

unint64_t sub_1DC0B4()
{
  result = qword_28F840;
  if (!qword_28F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F840);
  }

  return result;
}

unint64_t sub_1DC10C()
{
  result = qword_28F848;
  if (!qword_28F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F848);
  }

  return result;
}

_BYTE *MessageData.init(messageType:messageIdentifier:hasActionable:actionIdentifier:placementName:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = *result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

unint64_t sub_1DC190()
{
  v1 = *v0;
  v2 = 0x546567617373656DLL;
  v3 = 0x6F69746341736168;
  v4 = 0x6E656D6563616C70;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1DC250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DC278(uint64_t a1)
{
  v2 = sub_1DCA44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1DC2B4(uint64_t a1)
{
  v2 = sub_1DCA44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MessageData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28F850, &qword_211488);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v18 = *(v1 + 2);
  v19 = v10;
  v17 = v1[24];
  v11 = *(v1 + 4);
  v15[2] = *(v1 + 5);
  v16 = v11;
  v15[1] = *(v1 + 6);
  v12 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1DCA44();
  sub_1E1E00();
  v26 = v9;
  v25 = 0;
  sub_1DCA98();
  sub_1E1CF0();
  if (!v2)
  {
    v13 = v16;
    v24 = 1;
    sub_1E1C50();
    v23 = 2;
    sub_1E1CC0();
    v20 = v13;
    v22 = 3;
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    sub_6E7F0(&qword_281190);
    sub_1E1C80();
    v21 = 4;
    sub_1E1CB0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t MessageData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28F868, &qword_211490);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1DCA44();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1);
  }

  else
  {
    v31 = 0;
    sub_1DCAEC();
    sub_1E1C20();
    v11 = v32;
    v30 = 1;
    v12 = sub_1E1B80();
    v15 = v14;
    v25 = v12;
    v29 = 2;
    v24 = sub_1E1BF0();
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    v28 = 3;
    sub_6E7F0(&qword_2811B8);
    sub_1E1BB0();
    v23 = v11;
    v16 = v26;
    v27 = 4;
    v17 = sub_1E1BE0();
    v19 = v18;
    v24 &= 1u;
    v20 = *(v6 + 8);
    v22 = v17;
    v20(v9, v5);
    *a2 = v23;
    *(a2 + 8) = v25;
    *(a2 + 16) = v15;
    *(a2 + 24) = v24;
    v21 = v22;
    *(a2 + 32) = v16;
    *(a2 + 40) = v21;
    *(a2 + 48) = v19;

    sub_4E48(a1);
  }
}

uint64_t _s13BookAnalytics11MessageDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((sub_24878(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (!v3)
  {
    result = 0;
    if (v6)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (!v6)
  {
    return 0;
  }

  if (v2 != v7 || v3 != v6)
  {
    v13 = sub_1E1D30();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }

LABEL_11:
    if ((v4 ^ v8))
    {
      return result;
    }

    goto LABEL_12;
  }

  if (v4 != v8)
  {
    return 0;
  }

LABEL_12:
  if (!v5)
  {
    if (!v10)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (!v10 || (sub_5C5F8(v5, v10) & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  if (v14 == v9 && v15 == v11)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_1DCA44()
{
  result = qword_28F858;
  if (!qword_28F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F858);
  }

  return result;
}

unint64_t sub_1DCA98()
{
  result = qword_28F860;
  if (!qword_28F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F860);
  }

  return result;
}

unint64_t sub_1DCAEC()
{
  result = qword_28F870;
  if (!qword_28F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F870);
  }

  return result;
}

uint64_t sub_1DCB48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DCB90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DCC00()
{
  result = qword_28F878;
  if (!qword_28F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F878);
  }

  return result;
}

unint64_t sub_1DCC58()
{
  result = qword_28F880;
  if (!qword_28F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F880);
  }

  return result;
}

unint64_t sub_1DCCB0()
{
  result = qword_28F888;
  if (!qword_28F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F888);
  }

  return result;
}

uint64_t sub_1DCD04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000217A00 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69746341736168 && a2 == 0xED0000656C62616ELL || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000217A20 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xED0000656D614E74)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1DCED8()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0x6B63616279616C70;
  }

  *v0;
  return result;
}

uint64_t sub_1DCF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B63616279616C70 && a2 == 0xED00006465657053;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000000217A40 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E1D30();

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

uint64_t sub_1DD010(uint64_t a1)
{
  v2 = sub_1DD210();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1DD04C(uint64_t a1)
{
  v2 = sub_1DD210();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AudioPlaybackSpeedData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28F890, &qword_2116E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v10 = *v1;
  v9 = v1[1];
  v11 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1DD210();
  sub_1E1E00();
  v13[15] = 0;
  sub_1E1CE0();
  if (!v2)
  {
    v13[14] = 1;
    sub_1E1CE0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1DD210()
{
  result = qword_28F898;
  if (!qword_28F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F898);
  }

  return result;
}

uint64_t AudioPlaybackSpeedData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_28F8A0, &qword_2116E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1DD210();
  sub_1E1DF0();
  if (!v2)
  {
    v18 = 0;
    sub_1E1C10();
    v12 = v11;
    v17 = 1;
    sub_1E1C10();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return sub_4E48(a1);
}

unint64_t sub_1DD468()
{
  result = qword_28F8A8;
  if (!qword_28F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F8A8);
  }

  return result;
}

unint64_t sub_1DD4C0()
{
  result = qword_28F8B0;
  if (!qword_28F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F8B0);
  }

  return result;
}

unint64_t sub_1DD518()
{
  result = qword_28F8B8;
  if (!qword_28F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F8B8);
  }

  return result;
}

unint64_t sub_1DD570()
{
  if (*v0)
  {
    result = 0xD00000000000001DLL;
  }

  else
  {
    result = 0xD000000000000020;
  }

  *v0;
  return result;
}

uint64_t sub_1DD5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000020 && 0x8000000000217A60 == a2;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000000216E80 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E1D30();

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

uint64_t sub_1DD68C(uint64_t a1)
{
  v2 = sub_1DDBE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1DD6C8(uint64_t a1)
{
  v2 = sub_1DDBE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CellularData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28F8C0, &qword_211910);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1DDBE8();
  sub_1E1E00();
  v17 = v9;
  v16 = 0;
  sub_144EF4();
  sub_1E1CF0();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t CellularData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28F8D0, &qword_211918);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1DDBE8();
  sub_1E1DF0();
  if (!v2)
  {
    v17 = 0;
    sub_145098();
    sub_1E1C20();
    v11 = v18;
    v15 = 1;
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return sub_4E48(a1);
}

uint64_t _s13BookAnalytics12CellularDataV2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v17 = *a1;
  v16 = *a2;
  v4 = CellularRadioAccessTechnology.rawValue.getter();
  v6 = v5;
  if (v4 == CellularRadioAccessTechnology.rawValue.getter() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1E1D30();

    v10 = 0;
    if ((v9 & 1) == 0)
    {
      return v10 & 1;
    }
  }

  v11 = CellularRadioAccessTechnology.rawValue.getter();
  v13 = v12;
  if (v11 == CellularRadioAccessTechnology.rawValue.getter() && v13 == v14)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E1D30();
  }

  return v10 & 1;
}

unint64_t sub_1DDBE8()
{
  result = qword_28F8C8;
  if (!qword_28F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F8C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CellularData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 65295 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65295 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65295;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65295;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65295;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for CellularData(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65295 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65295 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 16) + 1;
    *result = a2 - 241;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DDDAC()
{
  result = qword_28F8D8;
  if (!qword_28F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F8D8);
  }

  return result;
}

unint64_t sub_1DDE04()
{
  result = qword_28F8E0;
  if (!qword_28F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F8E0);
  }

  return result;
}

unint64_t sub_1DDE5C()
{
  result = qword_28F8E8;
  if (!qword_28F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F8E8);
  }

  return result;
}

BookAnalytics::OsInstallVariant_optional __swiftcall OsInstallVariant.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_262508;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t OsInstallVariant.rawValue.getter()
{
  v1 = 0x6C616E7265746E69;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265747865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1DDF5C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6C616E7265746E69;
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = 0x6C616E7265746E69;
  }

  else
  {
    v4 = 0x6C616E7265747865;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v3)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0x6C616E7265747865;
  }

  if (*a2)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E1D30();
  }

  return v9 & 1;
}

unint64_t sub_1DE038()
{
  result = qword_28F8F0;
  if (!qword_28F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F8F0);
  }

  return result;
}

Swift::Int sub_1DE08C()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_1DE124()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_1DE1A8()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_1DE248(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6C616E7265746E69;
  if (v2 != 1)
  {
    v4 = 0x6C616E7265747865;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1DE35C()
{
  result = qword_28F8F8;
  if (!qword_28F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F8F8);
  }

  return result;
}

unint64_t sub_1DE3F8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x546E6F6974636573;
    v6 = 1701667182;
    if (a1 != 2)
    {
      v6 = 0x657A69536C6C6563;
    }

    if (a1)
    {
      v5 = 0x657275736F707865;
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
    v1 = 0x6974636553627573;
    v2 = 0xD000000000000012;
    if (a1 != 7)
    {
      v2 = 0x496E6F6974636573;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000012;
    if (a1 != 4)
    {
      v3 = 0x6974636553627573;
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

uint64_t sub_1DE548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF478(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DE570(uint64_t a1)
{
  v2 = sub_1DF184();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1DE5AC(uint64_t a1)
{
  v2 = sub_1DF184();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SectionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28F900, &qword_211C60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - v6;
  v8 = *v1;
  v36 = *(v1 + 1);
  v9 = *(v1 + 1);
  v34 = *(v1 + 2);
  v35 = v9;
  v10 = *(v1 + 3);
  v32 = *(v1 + 4);
  v33 = v10;
  v11 = *(v1 + 6);
  v30 = *(v1 + 5);
  v31 = v11;
  v12 = *(v1 + 8);
  v28 = *(v1 + 7);
  v29 = v12;
  v13 = *(v1 + 10);
  v26 = *(v1 + 9);
  v27 = v13;
  v25 = *(v1 + 22);
  v24 = v1[92];
  v14 = *(v1 + 12);
  v15 = *(v1 + 13);
  v16 = a1[3];
  v17 = a1[4];
  v18 = a1;
  v20 = v19;
  sub_48B8(v18, v16);
  sub_1DF184();
  sub_1E1E00();
  v48 = v8;
  v47 = 0;
  sub_1DF1D8();
  v21 = v37;
  sub_1E1CF0();
  if (!v21)
  {
    v37 = v15;
    v46 = 1;
    sub_1E1D00();
    v45 = 2;
    sub_1E1CB0();
    v44 = 3;
    sub_1E1CB0();
    v43 = 4;
    sub_1E1CB0();
    v42 = 5;
    sub_1E1C50();
    v41 = 6;
    sub_1E1C50();
    v40 = 7;
    v39 = v24;
    sub_1E1C90();
    v38 = 8;
    sub_1E1CB0();
  }

  return (*(v4 + 8))(v7, v20);
}

uint64_t SectionData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_28F918, &qword_211C68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1DF184();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1);
  }

  else
  {
    LOBYTE(v46) = 0;
    sub_1DF22C();
    sub_1E1C20();
    v11 = v53[0];
    v53[0] = 1;
    v12 = sub_1E1C30();
    v53[0] = 2;
    v42 = sub_1E1BE0();
    v44 = v13;
    v53[0] = 3;
    v14 = sub_1E1BE0();
    v43 = v15;
    v39 = v14;
    v53[0] = 4;
    v41 = 0;
    v38 = sub_1E1BE0();
    v40 = v16;
    v53[0] = 5;
    v37 = sub_1E1B80();
    v36 = a2;
    v45 = v17;
    v53[0] = 6;
    v18 = sub_1E1B80();
    v20 = v19;
    v35 = v18;
    v53[0] = 7;
    v41 = sub_1E1BC0();
    v70 = BYTE4(v41) & 1;
    v71 = 8;
    v34 = sub_1E1BE0();
    v22 = v21;
    (*(v6 + 8))(v9, v5);
    LOBYTE(v46) = v11;
    DWORD1(v46) = v12;
    *(&v46 + 1) = v42;
    v23 = v44;
    *&v47 = v44;
    *(&v47 + 1) = v39;
    *&v48 = v43;
    *(&v48 + 1) = v38;
    *&v49 = v40;
    v24 = v45;
    *(&v49 + 1) = v37;
    *&v50 = v45;
    *(&v50 + 1) = v35;
    *&v51 = v20;
    DWORD2(v51) = v41;
    v69 = v70;
    BYTE12(v51) = v70;
    v25 = v34;
    *&v52 = v34;
    *(&v52 + 1) = v22;
    v26 = v47;
    v27 = v36;
    *v36 = v46;
    v27[1] = v26;
    v28 = v48;
    v29 = v49;
    v30 = v52;
    v31 = v50;
    v27[5] = v51;
    v27[6] = v30;
    v27[3] = v29;
    v27[4] = v31;
    v27[2] = v28;
    sub_274D4(&v46, v53);
    sub_4E48(a1);
    v53[0] = v11;
    v54 = v12;
    v55 = v42;
    v56 = v23;
    v57 = v39;
    v58 = v43;
    v59 = v38;
    v60 = v40;
    v61 = v37;
    v62 = v24;
    v63 = v35;
    v64 = v20;
    v65 = v41;
    v66 = v69;
    v67 = v25;
    v68 = v22;
    return sub_28354(v53);
  }
}

uint64_t _s13BookAnalytics11SectionDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v33 = *(a1 + 48);
  v34 = *(a1 + 40);
  v26 = *(a1 + 56);
  v30 = *(a1 + 64);
  v21 = *(a1 + 72);
  v28 = *(a1 + 80);
  v18 = *(a1 + 88);
  v22 = *(a1 + 92);
  v7 = *(a2 + 4);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  v32 = *(a2 + 40);
  v31 = *(a2 + 48);
  v29 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a2 + 56);
  v27 = *(a2 + 80);
  v15 = *(a2 + 88);
  v23 = *(a2 + 92);
  v19 = *(a2 + 104);
  v20 = *(a2 + 96);
  v16 = *(a1 + 104);
  v17 = *(a1 + 96);
  v12 = sub_244E0(*a1, *a2);
  result = 0;
  if ((v12 & 1) == 0 || v2 != v7)
  {
    return result;
  }

  if ((v4 != v8 || v3 != v9) && (sub_1E1D30() & 1) == 0 || (v5 != v11 || v6 != v10) && (sub_1E1D30() & 1) == 0 || (v34 != v32 || v33 != v31) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v30)
  {
    if (!v29 || (v26 != v25 || v30 != v29) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  if (v28)
  {
    if (!v27 || (v21 != v24 || v28 != v27) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_26;
  }

  if (v27)
  {
    return 0;
  }

LABEL_26:
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    v14 = v23;
    if (v18 != v15)
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (v17 == v20 && v16 == v19)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_1DF184()
{
  result = qword_28F908;
  if (!qword_28F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F908);
  }

  return result;
}

unint64_t sub_1DF1D8()
{
  result = qword_28F910;
  if (!qword_28F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F910);
  }

  return result;
}

unint64_t sub_1DF22C()
{
  result = qword_28F920;
  if (!qword_28F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F920);
  }

  return result;
}

__n128 sub_1DF288(uint64_t a1, __int128 *a2)
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

uint64_t sub_1DF2AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF2F4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1DF374()
{
  result = qword_28F928;
  if (!qword_28F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F928);
  }

  return result;
}

unint64_t sub_1DF3CC()
{
  result = qword_28F930;
  if (!qword_28F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F930);
  }

  return result;
}

unint64_t sub_1DF424()
{
  result = qword_28F938;
  if (!qword_28F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F938);
  }

  return result;
}

uint64_t sub_1DF478(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x546E6F6974636573 && a2 == 0xEB00000000657079;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657275736F707865 && a2 == 0xED00007865646E49 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A69536C6C6563 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000217A90 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6974636553627573 && a2 == 0xEC00000044496E6FLL || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6974636553627573 && a2 == 0xEE00656D614E6E6FLL || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000213FD0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x496E6F6974636573 && a2 == 0xE900000000000044)
  {

    return 8;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1DF780()
{
  sub_1E17D0();
}

uint64_t sub_1DF918()
{
  sub_1E17D0();
}

uint64_t sub_1DFA44()
{
  sub_1E17D0();
}

uint64_t sub_1DFB84()
{
  sub_1E17D0();
}

uint64_t sub_1DFCB4()
{
  sub_1E17D0();
}

uint64_t sub_1DFE14()
{
  sub_1E17D0();
}

uint64_t sub_1DFF5C()
{
  sub_1E17D0();
}

uint64_t sub_1E00C4()
{
  sub_1E17D0();
}

uint64_t sub_1E0240()
{
  sub_1E17D0();
}

BookAnalytics::DialogType_optional __swiftcall DialogType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_262570;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 10;
  if (v5 < 0xA)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t DialogType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x6163696669746F6ELL;
    v7 = 0xD000000000000021;
    if (v1 != 8)
    {
      v7 = 0x6F53736569726573;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000015;
    if (v1 == 5)
    {
      v8 = 0x6976655274726F73;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0x76616E556B6F6F62;
    v4 = 0x6C70704177656976;
    if (v1 != 3)
    {
      v4 = 0x63694E7265746E65;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD000000000000013;
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
}

unint64_t sub_1E05DC()
{
  result = qword_28F940;
  if (!qword_28F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F940);
  }

  return result;
}

Swift::Int sub_1E0630()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E0240();
  return sub_1E1DE0();
}

Swift::Int sub_1E0680()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E0240();
  return sub_1E1DE0();
}

unint64_t sub_1E06D0@<X0>(unint64_t *a1@<X8>)
{
  result = DialogType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1E07B8()
{
  result = qword_28F948;
  if (!qword_28F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28F948);
  }

  return result;
}