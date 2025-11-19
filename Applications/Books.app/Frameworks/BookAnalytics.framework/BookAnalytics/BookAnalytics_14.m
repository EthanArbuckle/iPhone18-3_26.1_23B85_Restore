unint64_t sub_1576C4()
{
  result = qword_28A0D0;
  if (!qword_28A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A0D0);
  }

  return result;
}

uint64_t sub_157718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedownloadFailEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15777C(uint64_t a1)
{
  v2 = type metadata accessor for RedownloadFailEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_157878@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_28A0A8, &qword_202678);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

uint64_t sub_157AA8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
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

  v14 = sub_3D68(&qword_27E478, &unk_1E5F80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_3D68(&qword_28A0A8, &qword_202678);
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

uint64_t sub_157D1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
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

  v16 = sub_3D68(&qword_27E478, &unk_1E5F80);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = sub_3D68(&qword_28A0A8, &qword_202678);
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

void sub_157F88()
{
  sub_15814C(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_15814C(319, &qword_2800D8, sub_4FB64, sub_4F01C);
    if (v1 <= 0x3F)
    {
      sub_15814C(319, &qword_27E578, sub_18EFC, sub_18544);
      if (v2 <= 0x3F)
      {
        sub_15814C(319, &unk_28A140, sub_1576C4, sub_156F6C);
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

void sub_15814C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_1581DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_158314(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
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

void sub_158438()
{
  sub_19FE0(319, &qword_2801C0);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_27E638);
    if (v1 <= 0x3F)
    {
      sub_1E1150();
      if (v2 <= 0x3F)
      {
        sub_1E11A0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_158538()
{
  result = qword_28A220;
  if (!qword_28A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A220);
  }

  return result;
}

unint64_t sub_158590()
{
  result = qword_28A228;
  if (!qword_28A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A228);
  }

  return result;
}

unint64_t sub_1585E8()
{
  result = qword_28A230;
  if (!qword_28A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A230);
  }

  return result;
}

uint64_t sub_15863C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000213F30 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000216FD0 == a2 || (sub_1E1D30() & 1) != 0)
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

unint64_t DataEventType.metricsFields.getter(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E0840();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1E0830();
  v6 = *(a2 + 16);
  v16 = sub_1E0820();
  v18 = v17;

  v19 = objc_opt_self();
  isa = sub_1E0940().super.isa;
  v26[0] = 0;
  v21 = [v19 JSONObjectWithData:isa options:0 error:v26];

  if (v21)
  {
    v22 = v26[0];
    sub_1E1A60();
    swift_unknownObjectRelease();
    sub_3D68(&qword_28A238, &qword_2028C0);
    if (swift_dynamicCast())
    {
      v15 = sub_158B90(v25);
    }

    else
    {
      v15 = sub_322DC(_swiftEmptyArrayStorage);
    }

    sub_158E5C(v16, v18);
  }

  else
  {
    v23 = v26[0];
    sub_1E08C0();

    swift_willThrow();
    sub_158E5C(v16, v18);
    if (qword_27D068 != -1)
    {
      swift_once();
    }

    v7 = sub_1E1360();
    sub_3B2C(v7, qword_280320);
    swift_errorRetain();
    v8 = sub_1E1340();
    v9 = sub_1E1980();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26[0] = v11;
      *v10 = 136315138;
      swift_errorRetain();
      sub_3D68(&qword_287758, &qword_210300);
      v12 = sub_1E1790();
      v14 = sub_DD91C(v12, v13, v26);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_0, v8, v9, "Unable to serialize DataEventType to JSON: %s", v10, 0xCu);
      sub_4E48(v11);
    }

    v15 = sub_322DC(_swiftEmptyArrayStorage);
  }

  return v15;
}

uint64_t sub_158B90(uint64_t a1)
{
  v2 = &_swiftEmptyDictionarySingleton;
  v40 = &_swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_12:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_158EB0(*(a1 + 56) + 32 * v13, v39);
    *&v38 = v16;
    *(&v38 + 1) = v15;
    v35 = v38;
    v36 = v39[0];
    v37 = v39[1];
    sub_158EB0(&v36, &v29);
    if (v30)
    {
      sub_326AC(&v29, v34);
      v32 = v35;
      v33[0] = v36;
      v33[1] = v37;
      sub_326AC(v34, v31);
      v17 = v2[2];
      if (v2[3] <= v17)
      {

        sub_173250(v17 + 1, 1);
        v2 = v40;
      }

      else
      {
      }

      v18 = v32;
      v19 = v2[5];
      sub_1E1DC0();
      sub_1E17D0();
      result = sub_1E1DE0();
      v20 = (v2 + 8);
      v21 = -1 << *(v2 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~v2[(v22 >> 6) + 8]) == 0)
      {
        v25 = 0;
        v26 = (63 - v21) >> 6;
        while (++v23 != v26 || (v25 & 1) == 0)
        {
          v27 = v23 == v26;
          if (v23 == v26)
          {
            v23 = 0;
          }

          v25 |= v27;
          v28 = *&v20[8 * v23];
          if (v28 != -1)
          {
            v24 = __clz(__rbit64(~v28)) + (v23 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~v2[(v22 >> 6) + 8])) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *&v20[(v24 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v24;
      *(v2[6] + 16 * v24) = v18;
      sub_326AC(v31, (v2[7] + 32 * v24));
      ++v2[2];
      v10 = v33;
    }

    else
    {

      sub_18E48(&v35, &qword_28A240, &unk_2028D0);
      v10 = &v29;
    }

    result = sub_18E48(v10, &unk_281B50, &unk_1EDD70);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_158E5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_158EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&unk_281B50, &unk_1EDD70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_158F50()
{
  v1 = *v0;
  v2 = 0x55746E65746E6F63;
  v3 = 0x54746E65746E6F63;
  v4 = 0x49746E65746E6F63;
  if (v1 != 3)
  {
    v4 = 0x656C706D61537369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_159008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1599E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_159030(uint64_t a1)
{
  v2 = sub_1597BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15906C(uint64_t a1)
{
  v2 = sub_1597BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LibraryItemTypeData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28A248, &qword_2028E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v20 = v1[3];
  v21 = v10;
  v19 = *(v1 + 32);
  v11 = v1[5];
  v17 = v1[6];
  v18 = v11;
  v16[3] = *(v1 + 56);
  v12 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1597BC();
  sub_1E1E00();
  v28 = 0;
  v13 = v22;
  sub_1E1CB0();
  if (!v13)
  {
    v15 = v19;
    v27 = 1;
    sub_1E1CB0();
    v26 = v15;
    v25 = 2;
    sub_C480();
    sub_1E1CF0();
    v24 = 3;
    sub_1E1CB0();
    v23 = 4;
    sub_1E1CC0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t LibraryItemTypeData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_28A258, &qword_2028E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1597BC();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_1E1BE0();
  v30 = v12;
  LOBYTE(v34[0]) = 1;
  v13 = sub_1E1BE0();
  v29 = v14;
  v27 = v13;
  LOBYTE(v31) = 2;
  sub_C4D4();
  sub_1E1C20();
  v39 = LOBYTE(v34[0]);
  LOBYTE(v34[0]) = 3;
  v26 = sub_1E1BE0();
  v28 = v15;
  v40 = 4;
  v16 = sub_1E1BF0();
  (*(v6 + 8))(v9, v5);
  v25 = v16 & 1;
  v18 = v29;
  v17 = v30;
  *&v31 = v11;
  *(&v31 + 1) = v30;
  v19 = v27;
  *&v32 = v27;
  *(&v32 + 1) = v29;
  v20 = v39;
  v33[0] = v39;
  v21 = v28;
  *&v33[8] = v26;
  *&v33[16] = v28;
  v33[24] = v25;
  v22 = v32;
  *a2 = v31;
  a2[1] = v22;
  a2[2] = *v33;
  *(a2 + 41) = *&v33[9];
  sub_5E360(&v31, v34);
  sub_4E48(a1);
  v34[0] = v11;
  v34[1] = v17;
  v34[2] = v19;
  v34[3] = v18;
  v35 = v20;
  v36 = v26;
  v37 = v21;
  v38 = v25;
  return sub_5E3BC(v34);
}

uint64_t _s13BookAnalytics19LibraryItemTypeDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v13 = *(a2 + 56);
  v14 = *(a1 + 56);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (sub_1E1D30()) && (v2 == v7 && v3 == v8 || (sub_1E1D30()) && (sub_218F4(v4, v9) & 1) != 0 && (v5 == v10 && v6 == v11 || (sub_1E1D30()))
  {
    return v14 ^ v13 ^ 1u;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1597BC()
{
  result = qword_28A250;
  if (!qword_28A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A250);
  }

  return result;
}

unint64_t sub_159814()
{
  result = qword_28A260;
  if (!qword_28A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A260);
  }

  return result;
}

unint64_t sub_15986C()
{
  result = qword_28A268;
  if (!qword_28A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A268);
  }

  return result;
}

unint64_t sub_1598E4()
{
  result = qword_28A270;
  if (!qword_28A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A270);
  }

  return result;
}

unint64_t sub_15993C()
{
  result = qword_28A278;
  if (!qword_28A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A278);
  }

  return result;
}

unint64_t sub_159994()
{
  result = qword_28A280;
  if (!qword_28A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A280);
  }

  return result;
}

uint64_t sub_1599E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000000002138D0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x55746E65746E6F63 && a2 == 0xED00004449726573 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000044 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C706D61537369 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t SeriesFilterEvent.formatFilterData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesFilterEvent(0) + 20);
  v4 = sub_3D68(&qword_28A2B8, &unk_202B38);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesFilterEvent.formatFilterData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesFilterEvent(0) + 20);
  v4 = sub_3D68(&qword_28A2B8, &unk_202B38);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesFilterEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesFilterEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesFilterEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesFilterEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesFilterEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SeriesFilterEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_28A2B8, &unk_202B38);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t SeriesFilterEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesFilterEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesFilterEvent.Model.init(seriesData:formatFilterData:eventData:)@<X0>(_OWORD *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v7;
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v6;
  v8 = *(type metadata accessor for SeriesFilterEvent.Model(0) + 24);
  v9 = sub_1E1150();
  v10 = *(*(v9 - 8) + 32);

  return v10(a4 + v8, a3, v9);
}

uint64_t sub_15A1B4()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x746144746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6144736569726573;
  }
}

uint64_t sub_15A21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_15B334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_15A244(uint64_t a1)
{
  v2 = sub_15A528();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15A280(uint64_t a1)
{
  v2 = sub_15A528();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SeriesFilterEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28A2C0, &qword_202B48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_15A528();
  sub_1E1E00();
  v11 = v3[1];
  v26[0] = *v3;
  v12 = *v3;
  v13 = v3[1];
  v14 = v3[2];
  v26[1] = v11;
  v26[2] = v14;
  v23 = v12;
  v24 = v13;
  v25 = v3[2];
  v22 = 0;
  sub_CF18(v26, &v19);
  sub_D57C();
  sub_1E1CF0();
  if (v2)
  {
    v19 = v23;
    v20 = v24;
    v21 = v25;
    sub_D5D0(&v19);
  }

  else
  {
    v19 = v23;
    v20 = v24;
    v21 = v25;
    sub_D5D0(&v19);
    v18 = *(v3 + 24);
    v17[13] = 1;
    sub_E22EC();
    sub_1E1CF0();
    v15 = *(type metadata accessor for SeriesFilterEvent.Model(0) + 24);
    LOBYTE(v18) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_15A528()
{
  result = qword_28A2C8;
  if (!qword_28A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A2C8);
  }

  return result;
}

uint64_t SeriesFilterEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1E1150();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_28A2D0, &qword_202B50);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for SeriesFilterEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v30 = a1;
  sub_48B8(a1, v16);
  sub_15A528();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v30);
  }

  v18 = v28;
  v19 = v15;
  v25 = v7;
  v36 = 0;
  sub_DAD8();
  v20 = v29;
  sub_1E1C20();
  v21 = v33;
  v22 = v19;
  *v19 = v32;
  *(v19 + 1) = v21;
  *(v19 + 2) = v34;
  v35 = 1;
  sub_E2294();
  sub_1E1C20();
  *(v19 + 24) = v31;
  LOBYTE(v31) = 2;
  sub_14E5C(&qword_27D830);
  v23 = v25;
  sub_1E1C20();
  (*(v18 + 8))(v11, v20);
  (*(v26 + 32))(v22 + *(v12 + 24), v23, v4);
  sub_15A90C(v22, v27);
  sub_4E48(v30);
  return sub_15A970(v22);
}

uint64_t sub_15A90C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeriesFilterEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15A970(uint64_t a1)
{
  v2 = type metadata accessor for SeriesFilterEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_15AA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_28A2B8, &unk_202B38);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_15ABA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_28A2B8, &unk_202B38);
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

uint64_t sub_15AD1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_28A2B8, &unk_202B38);
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

void sub_15AE8C()
{
  sub_15AF98(319, &qword_27DE18, sub_DAD8, sub_D57C);
  if (v0 <= 0x3F)
  {
    sub_15AF98(319, &unk_28A340, sub_E2294, sub_E22EC);
    if (v1 <= 0x3F)
    {
      sub_5684();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_15AF98(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_15B028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
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
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_15B0F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
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

uint64_t sub_15B198()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_15B230()
{
  result = qword_28A410;
  if (!qword_28A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A410);
  }

  return result;
}

unint64_t sub_15B288()
{
  result = qword_28A418;
  if (!qword_28A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A418);
  }

  return result;
}

unint64_t sub_15B2E0()
{
  result = qword_28A420;
  if (!qword_28A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A420);
  }

  return result;
}

uint64_t sub_15B334(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144736569726573 && a2 == 0xEA00000000006174;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000216FF0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E1D30();

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

uint64_t sub_15B538(uint64_t a1)
{
  v2 = sub_15B714();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15B574(uint64_t a1)
{
  v2 = sub_15B714();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FilterBarEvent.Model.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_28A458, &qword_202D80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_15B714();
  sub_1E1E00();
  sub_1E1150();
  sub_14E5C(&qword_27D810);
  sub_1E1CF0();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_15B714()
{
  result = qword_28A460;
  if (!qword_28A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A460);
  }

  return result;
}

uint64_t FilterBarEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_1E1150();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  __chkstk_darwin(v3);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3D68(&qword_28A468, &qword_202D88);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for FilterBarEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_15B714();
  v16 = v23;
  sub_1E1DF0();
  if (!v16)
  {
    v17 = v21;
    sub_14E5C(&qword_27D830);
    sub_1E1C20();
    (*(v7 + 8))(v10, v6);
    (*(v17 + 32))(v14, v22, v3);
    sub_15B9F4(v14, v20);
  }

  return sub_4E48(a1);
}

uint64_t sub_15B9F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilterBarEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_15BAF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_15BB80(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_15BC30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_15BCB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_15BD34()
{
  result = qword_28A590;
  if (!qword_28A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A590);
  }

  return result;
}

unint64_t sub_15BD8C()
{
  result = qword_28A598;
  if (!qword_28A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A598);
  }

  return result;
}

unint64_t sub_15BDE4()
{
  result = qword_28A5A0;
  if (!qword_28A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A5A0);
  }

  return result;
}

uint64_t UPPContentBrickExposureEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UPPContentBrickExposureEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UPPContentBrickExposureEvent.genreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UPPContentBrickExposureEvent.genreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UPPContentBrickExposureEvent.uppParentContentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UPPContentBrickExposureEvent.uppParentContentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UPPContentBrickExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UPPContentBrickExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UPPContentBrickExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UPPContentBrickExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UPPContentBrickExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for UPPContentBrickExposureEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_281D70, &unk_1F06C0);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t UPPContentBrickExposureEvent.Model.genreData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[18];
  v3 = v1[19];
  v4 = v1[20];
  v5 = v1[21];
  v6 = v1[22];
  v7 = v1[23];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_815A0(v2, v3);
}

uint64_t UPPContentBrickExposureEvent.Model.uppParentContentData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 208);
  v4 = *(v1 + 216);
  v5 = *(v1 + 224);
  v6 = *(v1 + 232);
  v7 = *(v1 + 240);
  *a1 = *(v1 + 192);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
}

uint64_t UPPContentBrickExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UPPContentBrickExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UPPContentBrickExposureEvent.Model(0) + 36);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UPPContentBrickExposureEvent.Model.init(contentData:seriesData:genreData:uppParentContentData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a4;
  v11 = a4[1];
  v12 = *(a4 + 4);
  v13 = *(a4 + 5);
  v14 = *(a4 + 48);
  v15 = a1[3];
  *(a7 + 32) = a1[2];
  *(a7 + 48) = v15;
  v16 = a1[5];
  *(a7 + 64) = a1[4];
  *(a7 + 80) = v16;
  v17 = a1[1];
  *a7 = *a1;
  *(a7 + 16) = v17;
  v18 = a2[1];
  *(a7 + 96) = *a2;
  *(a7 + 112) = v18;
  v19 = *a3;
  v20 = a3[1];
  *(a7 + 128) = a2[2];
  *(a7 + 144) = v19;
  v21 = a3[2];
  *(a7 + 160) = v20;
  *(a7 + 176) = v21;
  *(a7 + 192) = v10;
  *(a7 + 208) = v11;
  *(a7 + 224) = v12;
  *(a7 + 232) = v13;
  *(a7 + 240) = v14;
  v22 = type metadata accessor for UPPContentBrickExposureEvent.Model(0);
  v23 = *(v22 + 32);
  v24 = sub_1E1150();
  (*(*(v24 - 8) + 32))(a7 + v23, a5, v24);
  v25 = *(v22 + 36);
  v26 = sub_1E11A0();
  v27 = *(*(v26 - 8) + 32);

  return v27(a7 + v25, a6, v26);
}

unint64_t sub_15CAA8()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0xD000000000000014;
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
    v5 = 0x74614465726E6567;
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

uint64_t sub_15CB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_15E804(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_15CBA0(uint64_t a1)
{
  v2 = sub_15D0D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15CBDC(uint64_t a1)
{
  v2 = sub_15D0D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UPPContentBrickExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28A5D8, &qword_202F80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v40 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_15D0D8();
  sub_1E1E00();
  v10 = *(v2 + 48);
  v11 = *(v2 + 16);
  v58 = *(v2 + 32);
  v59 = v10;
  v12 = *(v2 + 48);
  v13 = *(v2 + 80);
  v60 = *(v2 + 64);
  v61 = v13;
  v14 = *(v2 + 16);
  v57[0] = *v2;
  v57[1] = v14;
  v53 = v58;
  v54 = v12;
  v15 = *(v2 + 80);
  v55 = v60;
  v56 = v15;
  v51 = v57[0];
  v52 = v11;
  v50 = 0;
  sub_13A5C(v57, v49);
  sub_143D0();
  v16 = v62;
  sub_1E1CF0();
  v49[2] = v53;
  v49[3] = v54;
  v49[4] = v55;
  v49[5] = v56;
  v49[0] = v51;
  v49[1] = v52;
  sub_14424(v49);
  if (v16)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v17 = *(v2 + 104);
  v18 = *(v2 + 112);
  v19 = *(v2 + 120);
  v20 = *(v2 + 128);
  v21 = *(v2 + 136);
  v41 = *(v2 + 96);
  v42 = v17;
  v43 = v18;
  v44 = v19;
  v45 = v20;
  v46 = v21;
  v48 = 1;
  sub_13BDC(v41, v17, v18, v19, v20, v21);
  sub_D57C();
  sub_1E1C80();
  sub_1461C(v41, v42, v43, v44, v45, v46);
  v23 = *(v2 + 152);
  v24 = *(v2 + 160);
  v25 = *(v2 + 168);
  v26 = *(v2 + 176);
  v27 = *(v2 + 184);
  v41 = *(v2 + 144);
  v42 = v23;
  v43 = v24;
  v44 = v25;
  v45 = v26;
  v46 = v27;
  v48 = 2;
  sub_815A0(v41, v23);
  sub_81F40();
  sub_1E1C80();
  v28 = v5;
  sub_4F16C(v41, v42);
  v29 = *(v2 + 192);
  v30 = *(v2 + 200);
  v31 = *(v2 + 208);
  v32 = *(v2 + 216);
  v62 = v4;
  v33 = *(v2 + 224);
  v34 = *(v2 + 232);
  v35 = *(v2 + 240);
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v45 = v33;
  v46 = v34;
  v47 = v35;
  v48 = 3;
  sub_4F118();

  sub_1E1CF0();

  v36 = type metadata accessor for UPPContentBrickExposureEvent.Model(0);
  v37 = *(v36 + 32);
  LOBYTE(v41) = 4;
  sub_1E1150();
  sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
  v38 = v62;
  sub_1E1CF0();
  v39 = *(v36 + 36);
  LOBYTE(v41) = 5;
  sub_1E11A0();
  sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
  sub_1E1CF0();
  return (*(v28 + 8))(v8, v38);
}

unint64_t sub_15D0D8()
{
  result = qword_28A5E0;
  if (!qword_28A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A5E0);
  }

  return result;
}

uint64_t UPPContentBrickExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v41 = sub_1E11A0();
  v37 = *(v41 - 8);
  v3 = *(v37 + 64);
  __chkstk_darwin(v41);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1150();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  __chkstk_darwin(v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_3D68(&qword_28A5E8, &qword_202F88);
  v39 = *(v42 - 8);
  v10 = *(v39 + 64);
  __chkstk_darwin(v42);
  v12 = v35 - v11;
  v13 = type metadata accessor for UPPContentBrickExposureEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v45 = a1;
  sub_48B8(a1, v17);
  sub_15D0D8();
  v43 = v12;
  v19 = v44;
  sub_1E1DF0();
  if (v19)
  {
    return sub_4E48(v45);
  }

  v44 = v9;
  v20 = v39;
  v36 = v5;
  v21 = v41;
  v22 = v16;
  v23 = v40;
  v57 = 0;
  sub_14CB8();
  sub_1E1C20();
  v24 = v53;
  *(v22 + 32) = v52;
  *(v22 + 48) = v24;
  v25 = v55;
  *(v22 + 64) = v54;
  *(v22 + 80) = v25;
  v26 = v51;
  *v22 = v50;
  *(v22 + 16) = v26;
  v56 = 1;
  sub_DAD8();
  sub_1E1BB0();
  v27 = v47;
  *(v22 + 96) = v46;
  *(v22 + 112) = v27;
  *(v22 + 128) = v48;
  v56 = 2;
  sub_827D8();
  sub_1E1BB0();
  v28 = v47;
  *(v22 + 144) = v46;
  *(v22 + 160) = v28;
  *(v22 + 176) = v48;
  v56 = 3;
  sub_4FC60();
  v35[1] = 0;
  sub_1E1C20();
  v29 = v47;
  v30 = v48;
  v31 = v49;
  *(v22 + 192) = v46;
  *(v22 + 208) = v29;
  *(v22 + 224) = v30;
  *(v22 + 240) = v31;
  LOBYTE(v46) = 4;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  v32 = v44;
  v35[0] = v6;
  sub_1E1C20();
  (*(v23 + 32))(v22 + *(v13 + 32), v32, v35[0]);
  LOBYTE(v46) = 5;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v33 = v36;
  sub_1E1C20();
  (*(v20 + 8))(v43, v42);
  (*(v37 + 32))(v22 + *(v13 + 36), v33, v21);
  sub_15D8E0(v22, v38);
  sub_4E48(v45);
  return sub_15D944(v22);
}

uint64_t sub_15D8E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UPPContentBrickExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15D944(uint64_t a1)
{
  v2 = type metadata accessor for UPPContentBrickExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_15DA40@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_281D70, &unk_1F06C0);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

uint64_t sub_15DC70(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
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

  v14 = sub_3D68(&qword_281D70, &unk_1F06C0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
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

uint64_t sub_15DEE4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
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

  v16 = sub_3D68(&qword_281D70, &unk_1F06C0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
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

void sub_15E150()
{
  sub_15E314(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_15E314(319, &qword_27DE18, sub_DAD8, sub_D57C);
    if (v1 <= 0x3F)
    {
      sub_15E314(319, &unk_281E50, sub_827D8, sub_81F40);
      if (v2 <= 0x3F)
      {
        sub_15E314(319, &unk_2800F8, sub_4FC60, sub_4F118);
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

void sub_15E314(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_15E3A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_15E4DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
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

void sub_15E600()
{
  sub_19FE0(319, &qword_27E398);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &unk_281F00);
    if (v1 <= 0x3F)
    {
      sub_1E1150();
      if (v2 <= 0x3F)
      {
        sub_1E11A0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_15E700()
{
  result = qword_28A730;
  if (!qword_28A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A730);
  }

  return result;
}

unint64_t sub_15E758()
{
  result = qword_28A738;
  if (!qword_28A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A738);
  }

  return result;
}

unint64_t sub_15E7B0()
{
  result = qword_28A740;
  if (!qword_28A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A740);
  }

  return result;
}

uint64_t sub_15E804(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614465726E6567 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000213F90 == a2 || (sub_1E1D30() & 1) != 0)
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

uint64_t ReadingSettingsContextualViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingSettingsContextualViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingSettingsContextualViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingSettingsContextualViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingSettingsContextualViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for ReadingSettingsContextualViewEvent(0) + 20);
  v5 = enum case for EventProperty.required<A>(_:);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v7 = *(*(v6 - 8) + 104);

  return v7(a1 + v4, v5, v6);
}

uint64_t ReadingSettingsContextualViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingSettingsContextualViewEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingSettingsContextualViewEvent.Model.init(contentData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
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
  v8 = *(type metadata accessor for ReadingSettingsContextualViewEvent.Model(0) + 20);
  v9 = sub_1E1150();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a3[v8], a2, v9);
}

uint64_t sub_15EE78()
{
  if (*v0)
  {
    result = 0x746144746E657665;
  }

  else
  {
    result = 0x44746E65746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_15EEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
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

uint64_t sub_15EFA8(uint64_t a1)
{
  v2 = sub_15F278();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15EFE4(uint64_t a1)
{
  v2 = sub_15F278();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingSettingsContextualViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28A778, &qword_2031C8);
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v5);
  v8 = &v18[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_15F278();
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
  sub_437B4(&v27, v19);
  sub_143D0();
  sub_1E1C80();
  v19[2] = v23;
  v19[3] = v24;
  v19[4] = v25;
  v19[5] = v26;
  v19[0] = v21;
  v19[1] = v22;
  sub_440C0(v19);
  if (!v2)
  {
    v16 = *(type metadata accessor for ReadingSettingsContextualViewEvent.Model(0) + 20);
    v18[15] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v33 + 8))(v8, v5);
}

unint64_t sub_15F278()
{
  result = qword_28A780;
  if (!qword_28A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A780);
  }

  return result;
}

uint64_t ReadingSettingsContextualViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1E1150();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_3D68(&qword_28A788, &qword_2031D0);
  v25 = *(v26 - 8);
  v8 = *(v25 + 64);
  __chkstk_darwin(v26);
  v10 = &v22 - v9;
  v11 = type metadata accessor for ReadingSettingsContextualViewEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v27 = a1;
  sub_48B8(a1, v15);
  sub_15F278();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v27);
  }

  v17 = v25;
  v35 = 0;
  sub_14CB8();
  sub_1E1BB0();
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
  sub_15F66C(v14, v24);
  sub_4E48(v27);
  return sub_15F6D0(v14);
}

uint64_t sub_15F66C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingSettingsContextualViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15F6D0(uint64_t a1)
{
  v2 = type metadata accessor for ReadingSettingsContextualViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_15F7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a2 + v6, v7, v8);
}

uint64_t sub_15F8C4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_15F9E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_15FB34(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_15FC00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
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

uint64_t sub_15FCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_15FD74()
{
  result = qword_28A8B0;
  if (!qword_28A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A8B0);
  }

  return result;
}

unint64_t sub_15FDCC()
{
  result = qword_28A8B8;
  if (!qword_28A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A8B8);
  }

  return result;
}

unint64_t sub_15FE24()
{
  result = qword_28A8C0;
  if (!qword_28A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A8C0);
  }

  return result;
}

uint64_t RemoveSuggestionCardEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RemoveSuggestionCardEvent.suggestionData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RemoveSuggestionCardEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveSuggestionCardEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveSuggestionCardEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveSuggestionCardEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveSuggestionCardEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveSuggestionCardEvent(0) + 24);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveSuggestionCardEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveSuggestionCardEvent(0) + 24);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveSuggestionCardEvent.genreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveSuggestionCardEvent(0) + 28);
  v4 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveSuggestionCardEvent.genreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveSuggestionCardEvent(0) + 28);
  v4 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveSuggestionCardEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveSuggestionCardEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveSuggestionCardEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveSuggestionCardEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveSuggestionCardEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RemoveSuggestionCardEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_281D70, &unk_1F06C0);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t RemoveSuggestionCardEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 56);
  v10 = *(v1 + 40);
  v11 = v2;
  v4 = *(v1 + 88);
  v12 = *(v1 + 72);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 24);
  v9[0] = *(v1 + 8);
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_437B4(v9, &v8);
}

uint64_t RemoveSuggestionCardEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[16];
  v6 = v1[17];
  v7 = v1[18];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t RemoveSuggestionCardEvent.Model.genreData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[19];
  v3 = v1[20];
  v4 = v1[21];
  v5 = v1[22];
  v6 = v1[23];
  v7 = v1[24];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_815A0(v2, v3);
}

uint64_t RemoveSuggestionCardEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveSuggestionCardEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveSuggestionCardEvent.Model.init(suggestionData:contentData:seriesData:genreData:eventData:)@<X0>(_BYTE *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a2[3];
  *(a6 + 40) = a2[2];
  *(a6 + 56) = v8;
  v9 = a2[5];
  *(a6 + 72) = a2[4];
  *(a6 + 88) = v9;
  v10 = a2[1];
  *(a6 + 8) = *a2;
  *(a6 + 24) = v10;
  v11 = a3[1];
  *(a6 + 104) = *a3;
  *(a6 + 120) = v11;
  *(a6 + 136) = a3[2];
  v12 = a4[1];
  *(a6 + 152) = *a4;
  *a6 = *a1;
  *(a6 + 168) = v12;
  *(a6 + 184) = a4[2];
  v13 = *(type metadata accessor for RemoveSuggestionCardEvent.Model(0) + 32);
  v14 = sub_1E1150();
  v15 = *(*(v14 - 8) + 32);

  return v15(a6 + v13, a5, v14);
}

uint64_t sub_160978()
{
  v1 = *v0;
  v2 = 0x6974736567677573;
  v3 = 0x6144736569726573;
  v4 = 0x74614465726E6567;
  if (v1 != 3)
  {
    v4 = 0x746144746E657665;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x44746E65746E6F63;
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

uint64_t sub_160A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_162198(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_160A5C(uint64_t a1)
{
  v2 = sub_160E68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_160A98(uint64_t a1)
{
  v2 = sub_160E68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RemoveSuggestionCardEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28A8F8, &qword_2033E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_160E68();
  sub_1E1E00();
  v47 = *v3;
  v46 = 0;
  sub_284F8();
  sub_1E1CF0();
  if (!v2)
  {
    v11 = *(v3 + 56);
    v45[2] = *(v3 + 40);
    v45[3] = v11;
    v12 = *(v3 + 88);
    v45[4] = *(v3 + 72);
    v45[5] = v12;
    v13 = *(v3 + 24);
    v45[0] = *(v3 + 8);
    v45[1] = v13;
    v14 = *(v3 + 56);
    v41 = *(v3 + 40);
    v42 = v14;
    v15 = *(v3 + 88);
    v43 = *(v3 + 72);
    v44 = v15;
    v16 = *(v3 + 24);
    v39 = *(v3 + 8);
    v40 = v16;
    v38 = 1;
    sub_437B4(v45, v37);
    sub_143D0();
    sub_1E1C80();
    v37[2] = v41;
    v37[3] = v42;
    v37[4] = v43;
    v37[5] = v44;
    v37[0] = v39;
    v37[1] = v40;
    sub_440C0(v37);
    v17 = *(v3 + 14);
    v18 = *(v3 + 15);
    v19 = *(v3 + 16);
    v20 = *(v3 + 17);
    v21 = *(v3 + 18);
    v31 = *(v3 + 13);
    v32 = v17;
    v33 = v18;
    v34 = v19;
    v35 = v20;
    v36 = v21;
    v30 = 2;
    sub_13BDC(v31, v17, v18, v19, v20, v21);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v31, v32, v33, v34, v35, v36);
    v22 = *(v3 + 20);
    v23 = *(v3 + 21);
    v24 = *(v3 + 22);
    v25 = *(v3 + 23);
    v26 = *(v3 + 24);
    v31 = *(v3 + 19);
    v32 = v22;
    v33 = v23;
    v34 = v24;
    v35 = v25;
    v36 = v26;
    v30 = 3;
    sub_815A0(v31, v22);
    sub_81F40();
    sub_1E1C80();
    sub_4F16C(v31, v32);
    v27 = *(type metadata accessor for RemoveSuggestionCardEvent.Model(0) + 32);
    LOBYTE(v31) = 4;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_160E68()
{
  result = qword_28A900;
  if (!qword_28A900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28A900);
  }

  return result;
}

uint64_t RemoveSuggestionCardEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_1E1150();
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  __chkstk_darwin(v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_3D68(&qword_28A908, &qword_2033E8);
  v34 = *(v36 - 8);
  v7 = *(v34 + 64);
  __chkstk_darwin(v36);
  v9 = v31 - v8;
  v10 = type metadata accessor for RemoveSuggestionCardEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  v49 = a1;
  sub_48B8(a1, v14);
  sub_160E68();
  v16 = v37;
  sub_1E1DF0();
  if (v16)
  {
    return sub_4E48(v49);
  }

  v37 = v6;
  v17 = v34;
  v18 = v13;
  v19 = v35;
  LOBYTE(v39) = 0;
  sub_28F9C();
  sub_1E1C20();
  *v18 = v43;
  v42 = 1;
  sub_14CB8();
  sub_1E1BB0();
  v20 = v46;
  *(v18 + 40) = v45;
  *(v18 + 56) = v20;
  v21 = v48;
  *(v18 + 72) = v47;
  *(v18 + 88) = v21;
  v22 = v44;
  *(v18 + 8) = v43;
  *(v18 + 24) = v22;
  v38 = 2;
  sub_DAD8();
  sub_1E1BB0();
  v23 = *(&v39 + 1);
  v24 = v40;
  v25 = v41;
  v32 = v39;
  *(v18 + 104) = v39;
  *(v18 + 112) = v23;
  v31[0] = v23;
  v31[1] = v24;
  *(v18 + 120) = v24;
  v31[2] = *(&v24 + 1);
  v31[3] = v25;
  *(v18 + 136) = v25;
  v31[4] = *(&v25 + 1);
  v38 = 3;
  sub_827D8();
  sub_1E1BB0();
  v26 = v40;
  *(v18 + 152) = v39;
  *(v18 + 168) = v26;
  *(v18 + 184) = v41;
  LOBYTE(v39) = 4;
  sub_14E5C(&qword_27D830);
  v27 = v37;
  v28 = v3;
  v29 = v36;
  v32 = v28;
  sub_1E1C20();
  (*(v17 + 8))(v9, v29);
  (*(v33 + 32))(v18 + *(v10 + 32), v27, v32);
  sub_161464(v18, v19);
  sub_4E48(v49);
  return sub_1614C8(v18);
}

uint64_t sub_161464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveSuggestionCardEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1614C8(uint64_t a1)
{
  v2 = type metadata accessor for RemoveSuggestionCardEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1615C4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_281D70, &unk_1F06C0);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_1617A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_281D70, &unk_1F06C0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_1619C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_281D70, &unk_1F06C0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_161BE0()
{
  sub_161D8C(319, &unk_27EAF8, sub_28F9C, sub_284F8);
  if (v0 <= 0x3F)
  {
    sub_161D8C(319, &qword_27E2C8, sub_14CB8, sub_143D0);
    if (v1 <= 0x3F)
    {
      sub_161D8C(319, &qword_27DE18, sub_DAD8, sub_D57C);
      if (v2 <= 0x3F)
      {
        sub_161D8C(319, &unk_281E50, sub_827D8, sub_81F40);
        if (v3 <= 0x3F)
        {
          sub_5684();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_161D8C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_161E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
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
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_161EE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_161F8C()
{
  sub_19FE0(319, &qword_27FE30);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_27E398);
    if (v1 <= 0x3F)
    {
      sub_19FE0(319, &unk_281F00);
      if (v2 <= 0x3F)
      {
        sub_1E1150();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_162094()
{
  result = qword_28AA50;
  if (!qword_28AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AA50);
  }

  return result;
}

unint64_t sub_1620EC()
{
  result = qword_28AA58;
  if (!qword_28AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AA58);
  }

  return result;
}

unint64_t sub_162144()
{
  result = qword_28AA60;
  if (!qword_28AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AA60);
  }

  return result;
}

uint64_t sub_162198(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614465726E6567 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
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

uint64_t ContentData.init(from:with:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v121 = a2;
  v122 = a3;
  v120 = sub_1E1300();
  v115 = *(v120 - 8);
  v4 = *(v115 + 64);
  __chkstk_darwin(v120);
  v118 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1E1280();
  countAndFlagsBits = *(v123 - 8);
  v6 = *(countAndFlagsBits + 64);
  __chkstk_darwin(v123);
  v8 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3D68(&qword_28AA68, &qword_203618);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v113 - v11;
  v13 = sub_1E11F0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E12A0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 104))(v22, enum case for BooksFeatureFlag.unifiedProductPage(_:), v18);
  sub_162F38();
  sub_162F90();
  LODWORD(v119) = sub_1E1880();
  (*(v19 + 8))(v22, v18);
  sub_4C2BC(a1, v130);
  sub_3D68(&qword_28AA88, &qword_203628);
  v23 = swift_dynamicCast();
  v24 = *(v14 + 56);
  if (v23)
  {
    v24(v12, 0, 1, v13);
    (*(v14 + 32))(v17, v12, v13);
    v25 = sub_1E11E0();
    (*(v14 + 8))(v17, v13);
    if (v25)
    {
      v26 = 5;
    }

    else
    {
      v26 = 1;
    }

    goto LABEL_9;
  }

  v24(v12, 1, 1, v13);
  sub_162FF4(v12);
  sub_4C2BC(a1, v130);
  v27 = v123;
  if (swift_dynamicCast())
  {
    (*(countAndFlagsBits + 8))(v8, v27);
    v26 = 2;
LABEL_9:
    LODWORD(v120) = v26;
    goto LABEL_10;
  }

  sub_4C2BC(a1, v130);
  v28 = v118;
  v29 = v120;
  if (swift_dynamicCast())
  {
    (*(v115 + 8))(v28, v29);
    v26 = 3;
    goto LABEL_9;
  }

  LODWORD(v120) = 0;
LABEL_10:
  v30 = a1[4];
  sub_48B8(a1, a1[3]);
  v31 = *(v30 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = sub_1E1A20();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = &v113 - v36;
  sub_1E1200();
  v38 = *(AssociatedTypeWitness - 8);
  if ((*(v38 + 48))(v37, 1, AssociatedTypeWitness) == 1)
  {
    (*(v34 + 8))(v37, v33);
    LODWORD(v123) = 3;
    v39 = v121;
  }

  else
  {
    *(&v125 + 1) = AssociatedTypeWitness;
    *&v126 = swift_getAssociatedConformanceWitness();
    v40 = sub_16305C(&v124);
    (*(v38 + 32))(v40, v37, AssociatedTypeWitness);
    sub_7EE7C(&v124, v130);
    v41 = v134;
    sub_48B8(v130, v133);
    v42 = v41[1];
    sub_1E12B0();
    if (v43)
    {

      v44 = 1;
    }

    else
    {
      v44 = 2;
    }

    LODWORD(v123) = v44;
    v39 = v121;
    sub_4E48(v130);
  }

  v45 = a1[4];
  sub_48B8(a1, a1[3]);
  v46 = *(v45 + 8);
  v47 = sub_1E1220();
  if (v47)
  {
    v48 = v47;
    if ([v47 isSG])
    {

      v49 = 1;
    }

    else
    {
      v50 = sub_1E12D0();

      if (v50)
      {
        v49 = 2;
      }

      else
      {
        v49 = 3;
      }
    }
  }

  else
  {
    v49 = 3;
  }

  LODWORD(v121) = v49;
  v51 = a1[4];
  sub_48B8(a1, a1[3]);
  v52 = *(v51 + 8);
  v53 = sub_1E1220();
  if (v53 && (v54 = v53, v55 = sub_1E12E0(), v54, v55))
  {
    v56 = sub_1E12F0();

    if (v56)
    {
      v57 = 1;
    }

    else
    {
      v57 = 2;
    }
  }

  else
  {
    v58 = a1[4];
    sub_48B8(a1, a1[3]);
    v59 = sub_1E1310();
    if (v59 == 2 || (v59 & 1) == 0)
    {
      LODWORD(v118) = 0;
      goto LABEL_33;
    }

    v57 = 3;
  }

  LODWORD(v118) = v57;
LABEL_33:
  v60 = a1[4];
  sub_48B8(a1, a1[3]);
  v61 = *(v60 + 8);
  v62 = sub_1E1210();
  v64 = v63;
  v65 = a1[4];
  sub_48B8(a1, a1[3]);
  v66 = *(v65 + 8);
  v67._countAndFlagsBits = sub_1E1210();
  v68 = BATracker.contentPrivateID(for:)(v67);
  countAndFlagsBits = v68.value._countAndFlagsBits;
  object = v68.value._object;

  v70 = a1[4];
  sub_48B8(a1, a1[3]);
  v71 = *(v70 + 8);
  v72._countAndFlagsBits = sub_1E1210();
  v73 = BATracker.contentUserID(for:)(v72);
  v74 = v73.value._countAndFlagsBits;

  v75 = a1[4];
  sub_48B8(a1, a1[3]);
  v76 = *(v75 + 8);
  v77 = sub_1E1220();
  v80 = 0;
  if (v77)
  {
    v78 = v77;
    v79 = [v77 hasSupplementalContent];

    if (v79)
    {
      v80 = 1;
    }
  }

  v116 = a1;
  if (v119)
  {
    v119 = v73.value._countAndFlagsBits;
    v81 = a1[4];
    sub_48B8(a1, a1[3]);
    v82 = *(v81 + 8);
    v83 = sub_1E1220();
    if (v83)
    {
      v84 = v83;
      v85 = [v83 supportsUnifiedProductPage];
    }

    else
    {
      v85 = 0;
    }

    v89 = a1[4];
    sub_48B8(a1, a1[3]);
    v90 = *(v89 + 8);
    v91 = sub_1E1220();
    if (v91)
    {
      v92 = v64;
      v93 = v91;
      v94 = [v91 editionKind];

      if (v94)
      {
        v95 = sub_1E1780();
        v97 = v96;

        v87 = v97;
        v86 = v95;
      }

      else
      {

        v86 = 0;
        v87 = 0;
      }

      v64 = v92;
    }

    else
    {

      v86 = 0;
      v87 = 0;
    }

    v88 = v85;
    v74 = v119;
  }

  else
  {

    v86 = 0;
    v87 = 0;
    v88 = 2;
  }

  v115 = v64;
  v155 = 1;
  v152 = 0;
  if (v73.value._object)
  {
    v98 = v73.value._object;
  }

  else
  {
    v98 = 0xE000000000000000;
  }

  v119 = v98;
  if (v73.value._object)
  {
    v99 = v74;
  }

  else
  {
    v99 = 0;
  }

  v113 = v99;
  if (!v68.value._object)
  {
    object = 0xE000000000000000;
  }

  *&v124 = v62;
  *(&v124 + 1) = v64;
  v114 = v62;
  if (v68.value._object)
  {
    v100 = countAndFlagsBits;
  }

  else
  {
    v100 = 0;
  }

  v101 = v120;
  LOBYTE(v125) = v120;
  *(&v125 + 1) = *v156;
  DWORD1(v125) = *&v156[3];
  *(&v125 + 1) = v100;
  *&v126 = object;
  *(&v126 + 1) = v99;
  *&v127 = v98;
  WORD4(v127) = v123;
  HIDWORD(v127) = 0;
  LOBYTE(v128) = 1;
  BYTE3(v128) = v154;
  *(&v128 + 1) = v153;
  DWORD1(v128) = v80;
  BYTE8(v128) = 0;
  v102 = v118;
  BYTE9(v128) = v118;
  v103 = v121;
  BYTE10(v128) = v121;
  BYTE11(v128) = 3;
  BYTE12(v128) = v88;
  BYTE13(v128) = 2;
  *&v129 = v86;
  *(&v129 + 1) = v87;
  v104 = v125;
  v105 = v122;
  *v122 = v124;
  v105[1] = v104;
  v106 = v126;
  v107 = v127;
  v108 = v129;
  v105[4] = v128;
  v105[5] = v108;
  v105[2] = v106;
  v105[3] = v107;
  v109 = v88;
  v110 = v86;
  v111 = v87;
  sub_13A5C(&v124, v130);
  sub_4E48(v116);
  v130[0] = v114;
  v130[1] = v115;
  v131 = v101;
  *v132 = *v156;
  *&v132[3] = *&v156[3];
  v133 = v100;
  v134 = object;
  v135 = v113;
  v136 = v119;
  v137 = v123;
  v138 = 0;
  v139 = 0;
  v140 = 1;
  v141 = v153;
  v142 = v154;
  v143 = v80;
  v144 = 0;
  v145 = v102;
  v146 = v103;
  v147 = 3;
  v148 = v109;
  v149 = 2;
  v150 = v110;
  v151 = v111;
  return sub_14424(v130);
}

unint64_t sub_162F38()
{
  result = qword_28AA70;
  if (!qword_28AA70)
  {
    sub_1E12A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AA70);
  }

  return result;
}

unint64_t sub_162F90()
{
  result = qword_28AA78;
  if (!qword_28AA78)
  {
    sub_5DE50(&qword_28AA80, &qword_203620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AA78);
  }

  return result;
}

uint64_t sub_162FF4(uint64_t a1)
{
  v2 = sub_3D68(&qword_28AA68, &qword_203618);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_16305C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

__n128 ContentData.obscureID(using:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(v3 + 48);
  v22 = *(v3 + 32);
  v23 = v6;
  v7 = *(v3 + 16);
  v20 = *v3;
  v21 = v7;
  v8 = *(v3 + 80);
  v24 = *(v3 + 64);
  v25 = v8;
  countAndFlagsBits = *(&v7 + 1);
  v12 = *(&v22 + 1);
  object = v22;
  v11 = v23;
  v13 = BYTE7(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v13 = *(&v21 + 1) & 0xFFFFFFFFFFFFLL;
  }

  v14 = v20;
  if (v13)
  {

    sub_13A5C(&v20, v19);
    goto LABEL_10;
  }

  if (a1)
  {

    sub_13A5C(&v20, v19);
    v15 = BATracker.contentPrivateID(for:)(v14);
    if (v15.value._object)
    {
      countAndFlagsBits = v15.value._countAndFlagsBits;

      object = v15.value._object;
      goto LABEL_10;
    }
  }

  else
  {

    sub_13A5C(&v20, v19);
  }

  countAndFlagsBits = 0;
  object = 0xE000000000000000;
LABEL_10:

  v16 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v16 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    if (a1 && (v17 = BATracker.contentUserID(for:)(v14), v17.value._object))
    {
      v12 = v17.value._countAndFlagsBits;

      v11 = v17.value._object;
    }

    else
    {

      v12 = 0;
      v11 = 0xE000000000000000;
    }
  }

  *a2 = *v3;
  *(a2 + 16) = *(v3 + 16);
  *(a2 + 24) = countAndFlagsBits;
  *(a2 + 32) = object;
  *(a2 + 40) = v12;
  *(a2 + 48) = v11;
  *(a2 + 56) = *(v3 + 56);
  result = *(v3 + 72);
  *(a2 + 72) = result;
  *(a2 + 88) = *(v3 + 88);
  return result;
}

BookAnalytics::EditActionResult_optional __swiftcall EditActionResult.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261370;
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

uint64_t EditActionResult.rawValue.getter()
{
  v1 = 0x73736563637573;
  if (*v0 != 1)
  {
    v1 = 0x6C65636E6163;
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

uint64_t sub_163308(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x73736563637573;
  if (v2 != 1)
  {
    v5 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x73736563637573;
  if (*a2 != 1)
  {
    v8 = 0x6C65636E6163;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

unint64_t sub_163404()
{
  result = qword_28AA90;
  if (!qword_28AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AA90);
  }

  return result;
}

Swift::Int sub_163458()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_1634F8()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_163584()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_16362C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x73736563637573;
  if (v2 != 1)
  {
    v5 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
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

unint64_t sub_163748()
{
  result = qword_28AA98;
  if (!qword_28AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AA98);
  }

  return result;
}

uint64_t AddToCollectionEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddToCollectionEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AddToCollectionEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AddToCollectionEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AddToCollectionEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddToCollectionEvent(0) + 24);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AddToCollectionEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AddToCollectionEvent(0) + 24);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AddToCollectionEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddToCollectionEvent(0) + 28);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AddToCollectionEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AddToCollectionEvent(0) + 28);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AddToCollectionEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddToCollectionEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AddToCollectionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AddToCollectionEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AddToCollectionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27EC78, &unk_1E7460);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AddToCollectionEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t RemoveFromCollectionEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v10 = v1[4];
  v11 = v2;
  v4 = v1[7];
  v12 = v1[6];
  v3 = v12;
  v13 = v4;
  v6 = v1[3];
  v9[0] = v1[2];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_13A5C(v9, &v8);
}

uint64_t AddToCollectionEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddToCollectionEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AddToCollectionEvent.Model.init(collectionData:contentData:seriesData:suggestionData:eventData:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *(a1 + 16);
  v9 = a2[2];
  v10 = a2[4];
  v11 = a2[5];
  *(a6 + 80) = a2[3];
  *(a6 + 96) = v10;
  v12 = *a2;
  v13 = a2[1];
  *(a6 + 16) = v8;
  *(a6 + 32) = v12;
  v14 = *(a1 + 8);
  v15 = *a4;
  *a6 = *a1;
  *(a6 + 8) = v14;
  *(a6 + 48) = v13;
  *(a6 + 64) = v9;
  v16 = *a3;
  v17 = a3[1];
  *(a6 + 112) = v11;
  *(a6 + 128) = v16;
  v18 = a3[2];
  *(a6 + 144) = v17;
  *(a6 + 160) = v18;
  *(a6 + 176) = v15;
  v19 = *(type metadata accessor for AddToCollectionEvent.Model(0) + 32);
  v20 = sub_1E1150();
  v21 = *(*(v20 - 8) + 32);

  return v21(a6 + v19, a5, v20);
}

uint64_t sub_164164()
{
  v1 = *v0;
  v2 = 0x697463656C6C6F63;
  v3 = 0x6144736569726573;
  v4 = 0x6974736567677573;
  if (v1 != 3)
  {
    v4 = 0x746144746E657665;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x44746E65746E6F63;
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

uint64_t sub_164218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_165918(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_164240(uint64_t a1)
{
  v2 = sub_164688();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16427C(uint64_t a1)
{
  v2 = sub_164688();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AddToCollectionEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28AAD0, &qword_203758);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_164688();
  sub_1E1E00();
  v10 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  v49 = *v2;
  v50 = v10;
  v51 = v11;
  v52 = v12;
  v48 = 0;
  sub_2B314();

  v13 = v53;
  sub_1E1CF0();

  if (!v13)
  {
    v15 = *(v2 + 5);
    v16 = *(v2 + 3);
    v44 = *(v2 + 4);
    v45 = v15;
    v17 = *(v2 + 5);
    v18 = *(v2 + 7);
    v46 = *(v2 + 6);
    v47 = v18;
    v19 = *(v2 + 3);
    v43[0] = *(v2 + 2);
    v43[1] = v19;
    v39 = v44;
    v40 = v17;
    v20 = *(v2 + 7);
    v41 = v46;
    v42 = v20;
    v37 = v43[0];
    v38 = v16;
    v36 = 1;
    sub_13A5C(v43, v35);
    sub_143D0();
    sub_1E1CF0();
    v35[2] = v39;
    v35[3] = v40;
    v35[4] = v41;
    v35[5] = v42;
    v35[0] = v37;
    v35[1] = v38;
    sub_14424(v35);
    v21 = v2[17];
    v22 = v2[18];
    v23 = v2[19];
    v24 = v2[20];
    v25 = v2[21];
    v29 = v2[16];
    v30 = v21;
    v31 = v22;
    v32 = v23;
    v33 = v24;
    v34 = v25;
    v28 = 2;
    sub_13BDC(v29, v21, v22, v23, v24, v25);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v29, v30, v31, v32, v33, v34);
    LOBYTE(v29) = *(v2 + 176);
    v28 = 3;
    sub_284F8();
    sub_1E1C80();
    v26 = *(type metadata accessor for AddToCollectionEvent.Model(0) + 32);
    LOBYTE(v29) = 4;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_164688()
{
  result = qword_28AAD8;
  if (!qword_28AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AAD8);
  }

  return result;
}

uint64_t AddToCollectionEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_1E1150();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_3D68(&qword_28AAE0, &qword_203760);
  v31 = *(v34 - 8);
  v8 = *(v31 + 64);
  __chkstk_darwin(v34);
  v10 = &v28 - v9;
  v11 = type metadata accessor for AddToCollectionEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v46 = a1;
  sub_48B8(a1, v15);
  sub_164688();
  v33 = v10;
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v46);
  }

  v29 = v7;
  v17 = v31;
  v18 = v14;
  v19 = v32;
  LOBYTE(v36) = 0;
  sub_2B68C();
  sub_1E1C20();
  v20 = *(&v40 + 1);
  *v18 = v40;
  *(v18 + 8) = v20;
  *(v18 + 16) = v41;
  v39 = 1;
  sub_14CB8();
  sub_1E1C20();
  v21 = v43;
  *(v18 + 64) = v42;
  *(v18 + 80) = v21;
  v22 = v45;
  *(v18 + 96) = v44;
  *(v18 + 112) = v22;
  v23 = v41;
  *(v18 + 32) = v40;
  *(v18 + 48) = v23;
  v35 = 2;
  sub_DAD8();
  v24 = v33;
  sub_1E1BB0();
  v25 = v37;
  *(v18 + 128) = v36;
  *(v18 + 144) = v25;
  *(v18 + 160) = v38;
  v35 = 3;
  sub_28F9C();
  sub_1E1BB0();
  *(v18 + 176) = v36;
  LOBYTE(v36) = 4;
  sub_14E5C(&qword_27D830);
  v26 = v29;
  sub_1E1C20();
  (*(v17 + 8))(v24, v34);
  (*(v19 + 32))(v18 + *(v11 + 32), v26, v4);
  sub_164C10(v18, v30);
  sub_4E48(v46);
  return sub_164C74(v18);
}

uint64_t sub_164C10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddToCollectionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_164C74(uint64_t a1)
{
  v2 = type metadata accessor for AddToCollectionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_164D70@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27EC78, &unk_1E7460);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_164F54(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27EC78, &unk_1E7460);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_165174(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27EC78, &unk_1E7460);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_16538C()
{
  sub_165538(319, &qword_27ED10, sub_2B68C, sub_2B314);
  if (v0 <= 0x3F)
  {
    sub_165538(319, &qword_27E2C8, sub_14CB8, sub_143D0);
    if (v1 <= 0x3F)
    {
      sub_165538(319, &qword_27DE18, sub_DAD8, sub_D57C);
      if (v2 <= 0x3F)
      {
        sub_165538(319, &unk_27EAF8, sub_28F9C, sub_284F8);
        if (v3 <= 0x3F)
        {
          sub_5684();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_165538(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_1655C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_165688(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_16572C()
{
  sub_19FE0(319, &qword_27E398);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_27EBD8);
    if (v1 <= 0x3F)
    {
      sub_1E1150();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_165814()
{
  result = qword_28AC28;
  if (!qword_28AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AC28);
  }

  return result;
}

unint64_t sub_16586C()
{
  result = qword_28AC30;
  if (!qword_28AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AC30);
  }

  return result;
}

unint64_t sub_1658C4()
{
  result = qword_28AC38;
  if (!qword_28AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AC38);
  }

  return result;
}

uint64_t sub_165918(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463656C6C6F63 && a2 == 0xEE00617461446E6FLL;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
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

uint64_t static SearchSuggestionSelectionData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = *(a2 + 16);
  v5 = *(a2 + 20);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_1E1D30() & 1) == 0 || v2 != v4)
  {
    return 0;
  }

  return sub_21B00(v3, v5);
}

unint64_t sub_165B80()
{
  v1 = 0xD000000000000016;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t sub_165BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1662F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_165C00(uint64_t a1)
{
  v2 = sub_165E74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_165C3C(uint64_t a1)
{
  v2 = sub_165E74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchSuggestionSelectionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28AC40, &qword_203990);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v16 = *(v1 + 4);
  HIDWORD(v14) = *(v1 + 20);
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_165E74();
  sub_1E1E00();
  v20 = 0;
  v11 = v15;
  sub_1E1CB0();
  if (!v11)
  {
    v13 = BYTE4(v14);
    v19 = 1;
    sub_1E1D00();
    v18 = v13;
    v17 = 2;
    sub_165EC8();
    sub_1E1CF0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_165E74()
{
  result = qword_28AC48;
  if (!qword_28AC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AC48);
  }

  return result;
}

unint64_t sub_165EC8()
{
  result = qword_28AC50;
  if (!qword_28AC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AC50);
  }

  return result;
}

uint64_t SearchSuggestionSelectionData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28AC58, &qword_203998);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_165E74();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v22 = 0;
  v11 = sub_1E1BE0();
  v13 = v12;
  v14 = v11;
  v21 = 1;
  v18 = sub_1E1C30();
  v19 = 2;
  sub_166140();
  sub_1E1C20();
  (*(v6 + 8))(v9, v5);
  v16 = v20;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v18;
  *(a2 + 20) = v16;

  sub_4E48(a1);
}

unint64_t sub_166140()
{
  result = qword_28AC60;
  if (!qword_28AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AC60);
  }

  return result;
}

unint64_t sub_1661F0()
{
  result = qword_28AC68;
  if (!qword_28AC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AC68);
  }

  return result;
}

unint64_t sub_166248()
{
  result = qword_28AC70;
  if (!qword_28AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AC70);
  }

  return result;
}

unint64_t sub_1662A0()
{
  result = qword_28AC78;
  if (!qword_28AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AC78);
  }

  return result;
}

uint64_t sub_1662F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x8000000000217010 == a2;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000000217030 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000000217050 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E1D30();

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

unint64_t sub_166438()
{
  v1 = *v0;
  v2 = 0x6F4D656369766564;
  v3 = 0xD000000000000010;
  v4 = 0x6F6973726556736FLL;
  if (v1 != 3)
  {
    v4 = 0x656C646E7542736FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C50656369766564;
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

uint64_t sub_1664FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_167094(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_166524(uint64_t a1)
{
  v2 = sub_166D88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_166560(uint64_t a1)
{
  v2 = sub_166D88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DeviceData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28AC80, &qword_203BD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v19 = v1[3];
  v20 = v10;
  v18 = *(v1 + 32);
  v11 = v1[5];
  v17[2] = v1[6];
  v17[3] = v11;
  v12 = v1[7];
  v17[0] = v1[8];
  v17[1] = v12;
  v13 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_166D88();
  sub_1E1E00();
  v27 = 0;
  v14 = v21;
  sub_1E1CB0();
  if (!v14)
  {
    v16 = v18;
    v26 = 1;
    sub_1E1CB0();
    v25 = v16;
    v24 = 2;
    sub_166DDC();
    sub_1E1CF0();
    v23 = 3;
    sub_1E1CB0();
    v22 = 4;
    sub_1E1CB0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t DeviceData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28AC98, &qword_203BE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_166D88();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  LOBYTE(v36[0]) = 0;
  v11 = sub_1E1BE0();
  v30 = v12;
  LOBYTE(v36[0]) = 1;
  v13 = sub_1E1BE0();
  v29 = v14;
  v27 = v13;
  LOBYTE(v31) = 2;
  sub_166E30();
  sub_1E1C20();
  v42 = LOBYTE(v36[0]);
  LOBYTE(v36[0]) = 3;
  v26 = sub_1E1BE0();
  v28 = v15;
  v43 = 4;
  v16 = sub_1E1BE0();
  v18 = v17;
  v19 = v16;
  (*(v6 + 8))(v9, v5);
  v20 = v29;
  *&v31 = v11;
  *(&v31 + 1) = v30;
  v21 = v27;
  *&v32 = v27;
  *(&v32 + 1) = v29;
  LOBYTE(v33) = v42;
  v22 = v28;
  *(&v33 + 1) = v26;
  *&v34 = v28;
  *(&v34 + 1) = v19;
  v35 = v18;
  *(a2 + 64) = v18;
  v23 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v23;
  v24 = v32;
  *a2 = v31;
  *(a2 + 16) = v24;
  sub_166E84(&v31, v36);
  sub_4E48(a1);
  v36[0] = v11;
  v36[1] = v30;
  v36[2] = v21;
  v36[3] = v20;
  v37 = v42;
  v38 = v26;
  v39 = v22;
  v40 = v19;
  v41 = v18;
  return sub_127634(v36);
}

uint64_t _s13BookAnalytics10DeviceDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v22 = *(a1 + 64);
  v23 = *(a1 + 56);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v20 = *(a2 + 64);
  v21 = *(a2 + 56);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1E1D30() & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  v12 = 0x6C616E7265746E69;
  if (v4 == 1)
  {
    v13 = 0x6C616E7265746E69;
  }

  else
  {
    v13 = 0x6C616E7265747865;
  }

  if (v4)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x6E776F6E6B6E75;
  }

  if (v4)
  {
    v15 = 0xE800000000000000;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  if (v9 != 1)
  {
    v12 = 0x6C616E7265747865;
  }

  if (v9)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0x6E776F6E6B6E75;
  }

  if (v9)
  {
    v17 = 0xE800000000000000;
  }

  else
  {
    v17 = 0xE700000000000000;
  }

  if (v14 == v16 && v15 == v17)
  {
  }

  else
  {
    v18 = sub_1E1D30();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if ((v5 != v10 || v6 != v11) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v23 == v21 && v22 == v20)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_166D88()
{
  result = qword_28AC88;
  if (!qword_28AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AC88);
  }

  return result;
}

unint64_t sub_166DDC()
{
  result = qword_28AC90;
  if (!qword_28AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AC90);
  }

  return result;
}

unint64_t sub_166E30()
{
  result = qword_28ACA0;
  if (!qword_28ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28ACA0);
  }

  return result;
}

unint64_t sub_166EC0()
{
  result = qword_28ACA8;
  if (!qword_28ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28ACA8);
  }

  return result;
}

unint64_t sub_166F18()
{
  result = qword_28ACB0;
  if (!qword_28ACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28ACB0);
  }

  return result;
}

unint64_t sub_166F90()
{
  result = qword_28ACB8;
  if (!qword_28ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28ACB8);
  }

  return result;
}

unint64_t sub_166FE8()
{
  result = qword_28ACC0;
  if (!qword_28ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28ACC0);
  }

  return result;
}

unint64_t sub_167040()
{
  result = qword_28ACC8;
  if (!qword_28ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28ACC8);
  }

  return result;
}

uint64_t sub_167094(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000217070 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C646E7542736FLL && a2 == 0xEF6E6F6973726556)
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

uint64_t sub_16728C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
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

uint64_t sub_167314(uint64_t a1)
{
  v2 = sub_167530();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_167350(uint64_t a1)
{
  v2 = sub_167530();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UserEmbeddingData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28ACD0, &qword_203E30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_167530();

  sub_1E1E00();
  v11[1] = v8;
  sub_3D68(&qword_28ACE0, &qword_203E38);
  sub_167734(&qword_28ACE8, sub_E75D8);
  sub_1E1CF0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_167530()
{
  result = qword_28ACD8;
  if (!qword_28ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28ACD8);
  }

  return result;
}

uint64_t UserEmbeddingData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_3D68(&qword_28ACF0, &qword_203E40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_167530();
  sub_1E1DF0();
  if (!v2)
  {
    sub_3D68(&qword_28ACE0, &qword_203E38);
    sub_167734(&qword_28ACF8, sub_E7580);
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_4E48(a1);
}

uint64_t sub_167734(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_5DE50(&qword_28ACE0, &qword_203E38);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_167808()
{
  result = qword_28AD00;
  if (!qword_28AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AD00);
  }

  return result;
}

unint64_t sub_167860()
{
  result = qword_28AD08;
  if (!qword_28AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AD08);
  }

  return result;
}

unint64_t sub_1678B8()
{
  result = qword_28AD10;
  if (!qword_28AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AD10);
  }

  return result;
}

unint64_t sub_16790C()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x646F43726F727265;
  }

  *v0;
  return result;
}

uint64_t sub_167950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000215550 == a2)
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

uint64_t sub_167A3C(uint64_t a1)
{
  v2 = sub_167C48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_167A78(uint64_t a1)
{
  v2 = sub_167C48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ErrorData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28AD18, &qword_204068);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_167C48();
  sub_1E1E00();
  v16 = 0;
  v12 = v14[3];
  sub_1E1CB0();
  if (!v12)
  {
    v15 = 1;
    sub_1E1CB0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_167C48()
{
  result = qword_28AD20;
  if (!qword_28AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AD20);
  }

  return result;
}

uint64_t ErrorData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_28AD28, &qword_204070);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_167C48();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v21 = 0;
  v11 = sub_1E1BE0();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1E1BE0();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  sub_4E48(a1);
}

unint64_t sub_167EF8()
{
  result = qword_28AD30;
  if (!qword_28AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AD30);
  }

  return result;
}

unint64_t sub_167F50()
{
  result = qword_28AD38;
  if (!qword_28AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AD38);
  }

  return result;
}

unint64_t sub_167FA8()
{
  result = qword_28AD40;
  if (!qword_28AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AD40);
  }

  return result;
}

uint64_t sub_16809C()
{
  v1 = *v0;
  v2 = 0x626967696C457369;
  v3 = 0x6564726F65527369;
  if (v1 != 5)
  {
    v3 = 0x6E4964656B636F6CLL;
  }

  v4 = 0xD000000000000021;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E4964656B636F6CLL;
  if (v1 != 1)
  {
    v5 = 0x64656B636F4C7369;
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

uint64_t sub_16819C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_168B88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1681C4(uint64_t a1)
{
  v2 = sub_1688C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_168200(uint64_t a1)
{
  v2 = sub_1688C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t OnDevicePersonalizationPropertyData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28AD48, &qword_2042A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v22 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v10 = v1[16];
  v23 = v1[17];
  v24 = v10;
  v11 = v1[18];
  v22[2] = v1[19];
  v22[3] = v11;
  v12 = *(v1 + 5);
  v13 = v1[24];
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = v17;
  sub_48B8(v16, v14);
  sub_1688C0();
  sub_1E1E00();
  v34 = 0;
  v19 = v25;
  sub_1E1CC0();
  if (!v19)
  {
    v20 = v23;
    v33 = 1;
    sub_1E1CD0();
    v32 = 2;
    sub_1E1CC0();
    v31 = v20;
    v30 = 3;
    sub_168914();
    sub_1E1CF0();
    v29 = 4;
    sub_1E1C60();
    v28 = 5;
    sub_1E1C60();
    v27 = 6;
    v26 = v13;
    sub_1E1C90();
  }

  return (*(v4 + 8))(v7, v18);
}

uint64_t OnDevicePersonalizationPropertyData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28AD60, &qword_2042A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1688C0();
  sub_1E1DF0();
  if (!v2)
  {
    v30 = 0;
    v11 = sub_1E1BF0();
    v29 = 1;
    sub_1E1C00();
    v14 = v13;
    v28 = 2;
    v15 = sub_1E1BF0();
    v26 = 3;
    sub_168968();
    sub_1E1C20();
    v16 = v27;
    v25 = 4;
    v22 = sub_1E1B90();
    v24 = 5;
    v17 = sub_1E1B90();
    HIDWORD(v20) = v16;
    v21 = v17;
    v23 = 6;
    v18 = sub_1E1BC0();
    (*(v6 + 8))(v9, v5);
    v31 = BYTE4(v18) & 1;
    *a2 = v11 & 1;
    *(a2 + 8) = v14;
    *(a2 + 16) = v15 & 1;
    *(a2 + 17) = BYTE4(v20);
    v19 = v21;
    *(a2 + 18) = v22;
    *(a2 + 19) = v19;
    *(a2 + 20) = v18;
    *(a2 + 24) = BYTE4(v18) & 1;
  }

  return sub_4E48(a1);
}

BOOL _s13BookAnalytics35OnDevicePersonalizationPropertyDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1) && ((a1[16] ^ a2[16]) & 1) == 0)
  {
    v4 = a1[18];
    v5 = a1[19];
    v6 = *(a1 + 5);
    v7 = a1[24];
    v8 = a2[18];
    v9 = a2[19];
    v10 = *(a2 + 5);
    v11 = a2[24];
    if ((sub_217AC(a1[17], a2[17]) & 1) == 0)
    {
      return 0;
    }

    if (v4 == 2)
    {
      if (v8 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v8 == 2 || ((v8 ^ v4) & 1) != 0)
      {
        return result;
      }
    }

    if (v5 == 2)
    {
      if (v9 != 2)
      {
        return 0;
      }

      goto LABEL_15;
    }

    result = 0;
    if (v9 != 2 && ((v9 ^ v5) & 1) == 0)
    {
LABEL_15:
      if ((v7 & 1) == 0)
      {
        if (v6 == v10)
        {
          v12 = v11;
        }

        else
        {
          v12 = 1;
        }

        return (v12 & 1) == 0;
      }

      return (v11 & 1) != 0;
    }
  }

  return result;
}

unint64_t sub_1688C0()
{
  result = qword_28AD50;
  if (!qword_28AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AD50);
  }

  return result;
}

unint64_t sub_168914()
{
  result = qword_28AD58;
  if (!qword_28AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AD58);
  }

  return result;
}

unint64_t sub_168968()
{
  result = qword_28AD68;
  if (!qword_28AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AD68);
  }

  return result;
}

uint64_t sub_1689C4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[25])
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

uint64_t sub_168A18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_168A84()
{
  result = qword_28AD70;
  if (!qword_28AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AD70);
  }

  return result;
}

unint64_t sub_168ADC()
{
  result = qword_28AD78;
  if (!qword_28AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AD78);
  }

  return result;
}

unint64_t sub_168B34()
{
  result = qword_28AD80;
  if (!qword_28AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AD80);
  }

  return result;
}

uint64_t sub_168B88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x626967696C457369 && a2 == 0xEA0000000000656CLL;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E4964656B636F6CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656B636F4C7369 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000000217090 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000000002170C0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6564726F65527369 && a2 == 0xEB00000000646572 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E4964656B636F6CLL && a2 == 0xED0000746E756F43)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E1D30();

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

void __swiftcall ThemesData.init(previousThemeName:themeName:isCustomized:)(BookAnalytics::ThemesData *__return_ptr retstr, Swift::String_optional previousThemeName, Swift::String themeName, Swift::Bool_optional isCustomized)
{
  retstr->previousThemeName = previousThemeName;
  retstr->themeName = themeName;
  retstr->isCustomized = isCustomized;
}

unint64_t sub_168DFC()
{
  v1 = 0x6D614E656D656874;
  if (*v0 != 1)
  {
    v1 = 0x6D6F747375437369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_168E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_169634(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_168E90(uint64_t a1)
{
  v2 = sub_169424();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_168ECC(uint64_t a1)
{
  v2 = sub_169424();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ThemesData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28AD88, &qword_2044F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v15 = *(v1 + 32);
  v11 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_169424();
  sub_1E1E00();
  v18 = 0;
  v12 = v14[3];
  sub_1E1C50();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_1E1CB0();
  v16 = 2;
  sub_1E1C60();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ThemesData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28AD98, &qword_204500);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_169424();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1);
  }

  else
  {
    v26 = 0;
    v11 = sub_1E1B80();
    v14 = v13;
    v15 = v11;
    v25 = 1;
    v16 = sub_1E1BE0();
    v18 = v17;
    v22 = v16;
    v24 = 2;
    v19 = sub_1E1B90();
    v20 = *(v6 + 8);
    v23 = v19;
    v20(v9, v5);
    *a2 = v15;
    *(a2 + 8) = v14;
    *(a2 + 16) = v22;
    *(a2 + 24) = v18;
    *(a2 + 32) = v23;

    sub_4E48(a1);
  }
}

uint64_t _s13BookAnalytics10ThemesDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }

LABEL_10:
    v12 = v4 == v8 && v5 == v9;
    if (!v12 && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }

    if (v6 == 2)
    {
      if (v10 != 2)
      {
        return 0;
      }
    }

    else if (v10 == 2 || ((v10 ^ v6) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  return 0;
}

unint64_t sub_169424()
{
  result = qword_28AD90;
  if (!qword_28AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AD90);
  }

  return result;
}

uint64_t sub_169480(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1694C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_169530()
{
  result = qword_28ADA0;
  if (!qword_28ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28ADA0);
  }

  return result;
}

unint64_t sub_169588()
{
  result = qword_28ADA8;
  if (!qword_28ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28ADA8);
  }

  return result;
}

unint64_t sub_1695E0()
{
  result = qword_28ADB0;
  if (!qword_28ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28ADB0);
  }

  return result;
}

uint64_t sub_169634(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000000002170E0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E656D656874 && a2 == 0xE900000000000065 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F747375437369 && a2 == 0xEC00000064657A69)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t ReadingFontSizeChangeEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingFontSizeChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingFontSizeChangeEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingFontSizeChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingFontSizeChangeEvent.fontSizeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingFontSizeChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_28ADE8, &unk_204740);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingFontSizeChangeEvent.fontSizeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingFontSizeChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_28ADE8, &unk_204740);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingFontSizeChangeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingFontSizeChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingFontSizeChangeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingFontSizeChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingFontSizeChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReadingFontSizeChangeEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_28ADE8, &unk_204740);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

float ReadingFontSizeChangeEvent.Model.fontSizeData.getter@<S0>(float *a1@<X8>)
{
  result = *(v1 + 112);
  *a1 = result;
  return result;
}

uint64_t ReadingFontSizeChangeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingFontSizeChangeEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingFontSizeChangeEvent.Model.init(readingSessionData:contentData:fontSizeData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 4);
  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  v10 = *(a1 + 13);
  v11 = *(a1 + 14);
  v12 = *a3;
  *a5 = *a1;
  *(a5 + 4) = v7;
  *(a5 + 8) = v8;
  *(a5 + 12) = v9;
  *(a5 + 13) = v10;
  *(a5 + 14) = v11;
  v13 = a2[1];
  *(a5 + 16) = *a2;
  *(a5 + 32) = v13;
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[5];
  *(a5 + 80) = a2[4];
  *(a5 + 96) = v16;
  *(a5 + 48) = v14;
  *(a5 + 64) = v15;
  *(a5 + 112) = v12;
  v17 = *(type metadata accessor for ReadingFontSizeChangeEvent.Model(0) + 28);
  v18 = sub_1E1150();
  v19 = *(*(v18 - 8) + 32);

  return v19(a5 + v17, a4, v18);
}

unint64_t sub_169F3C()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0x657A6953746E6F66;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_169FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_16B3DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_169FF8(uint64_t a1)
{
  v2 = sub_16A370();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16A034(uint64_t a1)
{
  v2 = sub_16A370();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingFontSizeChangeEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28ADF0, &qword_204750);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_16A370();
  sub_1E1E00();
  v10 = *(v2 + 4);
  v11 = v2[2];
  v12 = *(v2 + 12);
  v13 = *(v2 + 13);
  v14 = *(v2 + 14);
  v41 = *v2;
  v42 = v10;
  v43 = v11;
  v44 = v12;
  v45 = v13;
  v46 = v14;
  v40 = 0;
  sub_67BE8();
  v15 = v47;
  sub_1E1CF0();
  if (!v15)
  {
    v16 = *(v2 + 3);
    v17 = *(v2 + 5);
    v37 = *(v2 + 4);
    v38 = v17;
    v18 = *(v2 + 5);
    v39 = *(v2 + 6);
    v19 = *(v2 + 1);
    v20 = *(v2 + 3);
    v35 = *(v2 + 2);
    v36 = v20;
    v21 = *(v2 + 1);
    v31 = v37;
    v32 = v18;
    v33 = *(v2 + 6);
    v34 = v21;
    v28 = v19;
    v29 = v35;
    v30 = v16;
    v27 = 1;
    sub_13A5C(&v34, v26);
    sub_143D0();
    sub_1E1CF0();
    v26[2] = v30;
    v26[3] = v31;
    v26[4] = v32;
    v26[5] = v33;
    v26[0] = v28;
    v26[1] = v29;
    sub_14424(v26);
    v25 = v2[28];
    v24[11] = 2;
    sub_16A3C4();
    sub_1E1CF0();
    v22 = *(type metadata accessor for ReadingFontSizeChangeEvent.Model(0) + 28);
    LOBYTE(v25) = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_16A370()
{
  result = qword_28ADF8;
  if (!qword_28ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28ADF8);
  }

  return result;
}

unint64_t sub_16A3C4()
{
  result = qword_28AE00;
  if (!qword_28AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AE00);
  }

  return result;
}

uint64_t ReadingFontSizeChangeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_1E1150();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_28AE08, &qword_204758);
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for ReadingFontSizeChangeEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v34 = a1;
  sub_48B8(a1, v16);
  sub_16A370();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v34);
  }

  v29 = v12;
  v18 = v32;
  LOBYTE(v41) = 0;
  sub_686E8();
  sub_1E1C20();
  v19 = BYTE4(v35);
  v20 = DWORD2(v35);
  v21 = BYTE12(v35);
  v22 = BYTE13(v35);
  v23 = BYTE14(v35);
  *v15 = v35;
  v15[4] = v19;
  *(v15 + 2) = v20;
  v15[12] = v21;
  v15[13] = v22;
  v15[14] = v23;
  v43 = 1;
  sub_14CB8();
  sub_1E1C20();
  v24 = v38;
  *(v15 + 3) = v37;
  *(v15 + 4) = v24;
  v25 = v40;
  *(v15 + 5) = v39;
  *(v15 + 6) = v25;
  v26 = v36;
  *(v15 + 1) = v35;
  *(v15 + 2) = v26;
  v42 = 2;
  sub_16A818();
  sub_1E1C20();
  *(v15 + 28) = v41;
  LOBYTE(v41) = 3;
  sub_14E5C(&qword_27D830);
  v27 = v33;
  sub_1E1C20();
  (*(v18 + 8))(v11, v27);
  (*(v30 + 32))(&v15[*(v29 + 28)], v7, v4);
  sub_16A86C(v15, v31);
  sub_4E48(v34);
  return sub_16A8D0(v15);
}

unint64_t sub_16A818()
{
  result = qword_28AE10;
  if (!qword_28AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AE10);
  }

  return result;
}

uint64_t sub_16A86C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingFontSizeChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_16A8D0(uint64_t a1)
{
  v2 = type metadata accessor for ReadingFontSizeChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_16A9CC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_28ADE8, &unk_204740);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

uint64_t sub_16AB50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_3D68(&qword_28ADE8, &unk_204740);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_16AD1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_28ADE8, &unk_204740);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_16AEE0()
{
  sub_16B03C(319, &qword_280E40, sub_686E8, sub_67BE8);
  if (v0 <= 0x3F)
  {
    sub_16B03C(319, &qword_27E2C8, sub_14CB8, sub_143D0);
    if (v1 <= 0x3F)
    {
      sub_16B03C(319, &unk_28AE80, sub_16A818, sub_16A3C4);
      if (v2 <= 0x3F)
      {
        sub_5684();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_16B03C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_16B0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
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
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_16B18C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_16B230()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_16B2D8()
{
  result = qword_28AF50;
  if (!qword_28AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AF50);
  }

  return result;
}

unint64_t sub_16B330()
{
  result = qword_28AF58;
  if (!qword_28AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AF58);
  }

  return result;
}

unint64_t sub_16B388()
{
  result = qword_28AF60;
  if (!qword_28AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AF60);
  }

  return result;
}

uint64_t sub_16B3DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000000214400 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657A6953746E6F66 && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t ShareEvent.shareContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 20);
  v4 = sub_3D68(&qword_28AF98, &qword_204978);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareEvent.shareContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 20);
  v4 = sub_3D68(&qword_28AF98, &qword_204978);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ShareEvent(0);
  v5 = *(v4 + 20);
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_28AF98, &qword_204978);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = *(v4 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v8, v2, v9);
}

uint64_t ShareEvent.Model.shareContextData.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 96);
  a1[1] = v2;
}

uint64_t ShareEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareEvent.Model.init(contentData:shareContextData:eventData:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v6 = a1[3];
  *(a4 + 2) = a1[2];
  *(a4 + 3) = v6;
  v7 = a1[5];
  *(a4 + 4) = a1[4];
  *(a4 + 5) = v7;
  v8 = a1[1];
  *a4 = *a1;
  *(a4 + 1) = v8;
  *(a4 + 6) = *a2;
  v9 = *(type metadata accessor for ShareEvent.Model(0) + 24);
  v10 = sub_1E1150();
  v11 = *(*(v10 - 8) + 32);

  return v11(&a4[v9], a3, v10);
}

uint64_t sub_16BB74()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x746144746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44746E65746E6F63;
  }
}

uint64_t sub_16BBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_16CE20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_16BC08(uint64_t a1)
{
  v2 = sub_16BF20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16BC44(uint64_t a1)
{
  v2 = sub_16BF20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShareEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28AFA0, &qword_204980);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_16BF20();
  sub_1E1E00();
  v10 = *(v2 + 48);
  v11 = *(v2 + 16);
  v37 = *(v2 + 32);
  v38 = v10;
  v12 = *(v2 + 48);
  v13 = *(v2 + 80);
  v39 = *(v2 + 64);
  v40 = v13;
  v14 = *(v2 + 16);
  v36[0] = *v2;
  v36[1] = v14;
  v32 = v37;
  v33 = v12;
  v15 = *(v2 + 80);
  v34 = v39;
  v35 = v15;
  v30 = v36[0];
  v31 = v11;
  v29 = 0;
  sub_13A5C(v36, &v23);
  sub_143D0();
  v16 = v41;
  sub_1E1CF0();
  if (v16)
  {
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v23 = v30;
    v24 = v31;
    sub_14424(&v23);
  }

  else
  {
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v23 = v30;
    v24 = v31;
    sub_14424(&v23);
    v17 = *(v2 + 104);
    v21 = *(v2 + 96);
    v22 = v17;
    v20[15] = 1;
    sub_FFB8C();

    sub_1E1C80();

    v18 = *(type metadata accessor for ShareEvent.Model(0) + 24);
    LOBYTE(v21) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_16BF20()
{
  result = qword_28AFA8;
  if (!qword_28AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28AFA8);
  }

  return result;
}

uint64_t ShareEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1E1150();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_3D68(&qword_28AFB0, &qword_204988);
  v26 = *(v27 - 8);
  v8 = *(v26 + 64);
  __chkstk_darwin(v27);
  v10 = &v23 - v9;
  v11 = type metadata accessor for ShareEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v28 = a1;
  sub_48B8(a1, v15);
  sub_16BF20();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v28);
  }

  v17 = v26;
  v23 = v7;
  v37 = 0;
  sub_14CB8();
  v18 = v27;
  sub_1E1C20();
  v19 = v33;
  *(v14 + 2) = v32;
  *(v14 + 3) = v19;
  v20 = v35;
  *(v14 + 4) = v34;
  *(v14 + 5) = v20;
  v21 = v31;
  *v14 = v30;
  *(v14 + 1) = v21;
  v36 = 1;
  sub_FFB34();
  sub_1E1BB0();
  *(v14 + 6) = v29;
  LOBYTE(v29) = 2;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v10, v18);
  (*(v24 + 32))(&v14[*(v11 + 24)], v23, v4);
  sub_16C390(v14, v25);
  sub_4E48(v28);
  return sub_16C3F4(v14);
}

uint64_t sub_16C390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_16C3F4(uint64_t a1)
{
  v2 = type metadata accessor for ShareEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_16C4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_28AF98, &qword_204978);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = *(a1 + 24);
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v9, v4, v10);
}

uint64_t sub_16C63C(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v11 = sub_3D68(&qword_28AF98, &qword_204978);
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

uint64_t sub_16C7B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

  v13 = sub_3D68(&qword_28AF98, &qword_204978);
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

void sub_16C924()
{
  sub_16CA30(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_16CA30(319, &unk_28B020, sub_FFB34, sub_FFB8C);
    if (v1 <= 0x3F)
    {
      sub_5684();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_16CA30(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_16CAC0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_16CB80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void sub_16CC24()
{
  sub_16CCB8();
  if (v0 <= 0x3F)
  {
    sub_1E1150();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_16CCB8()
{
  if (!qword_28B0C0)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_28B0C0);
    }
  }
}

unint64_t sub_16CD1C()
{
  result = qword_28B0F8;
  if (!qword_28B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B0F8);
  }

  return result;
}

unint64_t sub_16CD74()
{
  result = qword_28B100;
  if (!qword_28B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B100);
  }

  return result;
}

unint64_t sub_16CDCC()
{
  result = qword_28B108;
  if (!qword_28B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B108);
  }

  return result;
}

uint64_t sub_16CE20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000217100 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E1D30();

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

uint64_t PurchaseAttemptEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseAttemptEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseAttemptEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseAttemptEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseAttemptEvent.contentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 28);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseAttemptEvent.contentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 28);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseAttemptEvent.prevAltContentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 32);
  v4 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseAttemptEvent.prevAltContentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 32);
  v4 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseAttemptEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 36);
  v4 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseAttemptEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 36);
  v4 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseAttemptEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseAttemptEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseAttemptEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseAttemptEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseAttemptEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 48);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseAttemptEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 48);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseAttemptEvent.uppParentContentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 52);
  v4 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseAttemptEvent.uppParentContentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 52);
  v4 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseAttemptEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 56);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseAttemptEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent(0) + 56);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseAttemptEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PurchaseAttemptEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.required<A>(_:);
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  (*(*(v15 - 8) + 104))(a1 + v14, v6, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  v23 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  v25 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v6, v25);
}

uint64_t PurchaseAttemptEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseAttemptEvent.Model(0) + 56);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseAttemptEvent.Model.init(altContentTypeExposureData:contentData:contentStoreData:contentExposureData:prevAltContentExposureData:purchaseData:upSellData:seriesData:suggestionData:uppParentContentData:eventData:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int16 *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12)
{
  v13 = *a5;
  v14 = *a6;
  v15 = a6[1];
  v16 = *(a6 + 16);
  v17 = *(a6 + 17);
  v18 = a6[3];
  v19 = a6[4];
  v20 = *(a7 + 16);
  v21 = *a10;
  v22 = *(a11 + 48);
  v23 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v23;
  *(a9 + 32) = a1[2];
  *(a9 + 41) = *(a1 + 41);
  v24 = a2[3];
  *(a9 + 96) = a2[2];
  *(a9 + 112) = v24;
  v25 = a2[5];
  *(a9 + 128) = a2[4];
  *(a9 + 144) = v25;
  v26 = a2[1];
  *(a9 + 64) = *a2;
  *(a9 + 80) = v26;
  *(a9 + 221) = *(a3 + 61);
  v27 = *(a3 + 48);
  *(a9 + 192) = *(a3 + 32);
  *(a9 + 208) = v27;
  v28 = *(a3 + 16);
  *(a9 + 160) = *a3;
  *(a9 + 176) = v28;
  v29 = a4[3];
  *(a9 + 264) = a4[2];
  *(a9 + 280) = v29;
  v30 = *a4;
  *(a9 + 248) = a4[1];
  *(a9 + 232) = v30;
  *(a9 + 342) = *(a4 + 110);
  v31 = a4[6];
  *(a9 + 312) = a4[5];
  *(a9 + 328) = v31;
  *(a9 + 296) = a4[4];
  *(a9 + 350) = v13;
  *(a9 + 352) = v14;
  *(a9 + 360) = v15;
  *(a9 + 368) = v16;
  *(a9 + 369) = v17;
  *(a9 + 376) = v18;
  *(a9 + 384) = v19;
  *(a9 + 392) = *a7;
  *(a9 + 408) = v20;
  v32 = a8[1];
  *(a9 + 416) = *a8;
  *(a9 + 432) = v32;
  *(a9 + 448) = a8[2];
  *(a9 + 464) = v21;
  v33 = *(a11 + 16);
  *(a9 + 472) = *a11;
  *(a9 + 488) = v33;
  *(a9 + 504) = *(a11 + 32);
  *(a9 + 520) = v22;
  v34 = *(type metadata accessor for PurchaseAttemptEvent.Model(0) + 56);
  v35 = sub_1E1150();
  v36 = *(*(v35 - 8) + 32);

  return v36(a9 + v34, a12, v35);
}

uint64_t sub_16E340(uint64_t a1)
{
  v2 = sub_16EBF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16E37C(uint64_t a1)
{
  v2 = sub_16EBF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PurchaseAttemptEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28B140, &qword_204B90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v49 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_16EBF4();
  sub_1E1E00();
  v11 = v3[1];
  v103[0] = *v3;
  v103[1] = v11;
  v13 = *v3;
  v12 = v3[1];
  v104[0] = v3[2];
  *(v104 + 9) = *(v3 + 41);
  v100 = v13;
  v101 = v12;
  v102[0] = v3[2];
  *(v102 + 9) = *(v3 + 41);
  v99 = 0;
  sub_17AA4(v103, &v70, &qword_27FFE8, &qword_1FC3D0);
  sub_4EFC8();
  sub_1E1C80();
  if (v2)
  {
    v70 = v100;
    v71 = v101;
    v72[0] = v102[0];
    *(v72 + 9) = *(v102 + 9);
    sub_18E48(&v70, &qword_27FFE8, &qword_1FC3D0);
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    v92[0] = v100;
    v92[1] = v101;
    v93[0] = v102[0];
    *(v93 + 9) = *(v102 + 9);
    sub_18E48(v92, &qword_27FFE8, &qword_1FC3D0);
    v15 = v3[7];
    v16 = v3[5];
    v95 = v3[6];
    v96 = v15;
    v17 = v3[7];
    v18 = v3[9];
    v97 = v3[8];
    v98 = v18;
    v19 = v3[5];
    v94[0] = v3[4];
    v94[1] = v19;
    v88 = v95;
    v89 = v17;
    v20 = v3[9];
    v90 = v97;
    v91 = v20;
    v86 = v94[0];
    v87 = v16;
    v85 = 1;
    sub_13A5C(v94, &v70);
    sub_143D0();
    sub_1E1CF0();
    v81[2] = v88;
    v81[3] = v89;
    v81[4] = v90;
    v81[5] = v91;
    v81[0] = v86;
    v81[1] = v87;
    sub_14424(v81);
    v21 = v3[11];
    v22 = v3[13];
    v83 = v3[12];
    *v84 = v22;
    v23 = v3[11];
    v82[0] = v3[10];
    v82[1] = v23;
    v24 = v3[13];
    v79 = v83;
    v80[0] = v24;
    *&v84[13] = *(v3 + 221);
    *(v80 + 13) = *(v3 + 221);
    v77 = v82[0];
    v78 = v21;
    v76 = 2;
    sub_17AA4(v82, &v70, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    v105 = v5;
    sub_1E1C80();
    v68[2] = v79;
    v69[0] = v80[0];
    *(v69 + 13) = *(v80 + 13);
    v68[0] = v77;
    v68[1] = v78;
    sub_18E48(v68, &qword_27FFF0, &unk_1E9C00);
    v25 = *(v3 + 312);
    v26 = *(v3 + 280);
    v73 = *(v3 + 296);
    v74 = v25;
    v27 = *(v3 + 312);
    *v75 = *(v3 + 328);
    v28 = *(v3 + 248);
    v70 = *(v3 + 232);
    v71 = v28;
    v29 = *(v3 + 280);
    v72[0] = *(v3 + 264);
    v72[1] = v29;
    v65 = v73;
    v66 = v27;
    v67[0] = *(v3 + 328);
    v30 = *(v3 + 248);
    v61 = *(v3 + 232);
    v62 = v30;
    *&v75[14] = *(v3 + 342);
    *(v67 + 14) = *(v3 + 342);
    v63 = v72[0];
    v64 = v26;
    v60 = 3;
    sub_17AA4(&v70, v58, &qword_27FFF8, &qword_1F06D0);
    sub_4F070();
    sub_1E1C80();
    v58[4] = v65;
    v58[5] = v66;
    *v59 = v67[0];
    *&v59[14] = *(v67 + 14);
    v58[0] = v61;
    v58[1] = v62;
    v58[2] = v63;
    v58[3] = v64;
    sub_18E48(v58, &qword_27FFF8, &qword_1F06D0);
    LOWORD(v51) = *(v3 + 175);
    v57 = 4;
    sub_4F0C4();
    sub_1E1C80();
    v31 = *(v3 + 45);
    v32 = *(v3 + 368);
    v33 = *(v3 + 369);
    v34 = *(v3 + 47);
    v35 = *(v3 + 48);
    *&v51 = *(v3 + 44);
    *(&v51 + 1) = v31;
    LOBYTE(v52) = v32;
    BYTE1(v52) = v33;
    v53 = v34;
    v54 = v35;
    v57 = 5;
    sub_2C904();

    v50 = v9;
    sub_1E1CF0();

    v36 = *(v3 + 51);
    v51 = *(v3 + 392);
    v52 = v36;
    v57 = 6;
    sub_28450();

    sub_1E1C80();

    v37 = *(v3 + 53);
    v38 = *(v3 + 54);
    v39 = *(v3 + 55);
    v40 = *(v3 + 56);
    v41 = *(v3 + 57);
    *&v51 = *(v3 + 52);
    *(&v51 + 1) = v37;
    v52 = v38;
    v53 = v39;
    v54 = v40;
    v55 = v41;
    v57 = 7;
    sub_13BDC(v51, v37, v38, v39, v40, v41);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v51, *(&v51 + 1), v52, v53, v54, v55);
    LOBYTE(v51) = *(v3 + 464);
    v57 = 8;
    sub_284F8();
    sub_1E1C80();
    v42 = *(v3 + 60);
    v43 = *(v3 + 61);
    v44 = *(v3 + 62);
    v45 = *(v3 + 63);
    v46 = *(v3 + 64);
    v47 = *(v3 + 520);
    *&v51 = *(v3 + 59);
    *(&v51 + 1) = v42;
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v56 = v47;
    v57 = 9;
    sub_4E2A0(v51, v42);
    sub_4F118();
    sub_1E1C80();
    sub_4F16C(v51, *(&v51 + 1));
    v48 = *(type metadata accessor for PurchaseAttemptEvent.Model(0) + 56);
    LOBYTE(v51) = 10;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
    return (*(v6 + 8))(v50, v105);
  }
}

unint64_t sub_16EBF4()
{
  result = qword_28B148;
  if (!qword_28B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B148);
  }

  return result;
}

uint64_t PurchaseAttemptEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_1E1150();
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  __chkstk_darwin(v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_3D68(&qword_28B150, &qword_204B98);
  v44 = *(v46 - 8);
  v7 = *(v44 + 64);
  __chkstk_darwin(v46);
  v9 = v39 - v8;
  v10 = type metadata accessor for PurchaseAttemptEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  v71 = a1;
  sub_48B8(a1, v14);
  sub_16EBF4();
  v45 = v9;
  v16 = v47;
  sub_1E1DF0();
  if (v16)
  {
    return sub_4E48(v71);
  }

  v40 = v6;
  v41 = v3;
  v47 = v13;
  v17 = v44;
  v66 = 0;
  sub_4FB10();
  sub_1E1BB0();
  v18 = v68;
  v19 = v47;
  *v47 = v67;
  *(v19 + 1) = v18;
  *(v19 + 2) = v69[0];
  *(v19 + 41) = *(v69 + 9);
  v59 = 1;
  sub_14CB8();
  sub_1E1C20();
  v20 = v63;
  *(v19 + 6) = v62;
  *(v19 + 7) = v20;
  v21 = v65;
  *(v19 + 8) = v64;
  *(v19 + 9) = v21;
  v22 = v61;
  *(v19 + 4) = v60;
  *(v19 + 5) = v22;
  v54 = 2;
  sub_4FB64();
  v39[1] = 0;
  sub_1E1BB0();
  v23 = *v58;
  *(v19 + 12) = v57;
  *(v19 + 13) = v23;
  *(v19 + 221) = *&v58[13];
  v24 = v56;
  *(v19 + 10) = v55;
  *(v19 + 11) = v24;
  v53 = 3;
  sub_4FBB8();
  sub_1E1BB0();
  v25 = v69[3];
  *(v19 + 232) = v69[2];
  *(v19 + 248) = v25;
  v26 = v69[7];
  *(v19 + 296) = v69[6];
  *(v19 + 312) = v26;
  *(v19 + 328) = v70[0];
  *(v19 + 342) = *(v70 + 14);
  v27 = v69[5];
  *(v19 + 264) = v69[4];
  *(v19 + 280) = v27;
  v52 = 4;
  sub_4FC0C();
  sub_1E1BB0();
  *(v19 + 175) = v48;
  v52 = 5;
  sub_2C8AC();
  sub_1E1C20();
  v28 = *(&v48 + 1);
  v29 = v49;
  v30 = BYTE1(v49);
  v31 = *(&v49 + 1);
  v32 = v50;
  *(v19 + 44) = v48;
  *(v19 + 45) = v28;
  v19[368] = v29;
  v19[369] = v30;
  *(v19 + 47) = v31;
  *(v19 + 48) = v32;
  v52 = 6;
  sub_28EF4();
  sub_1E1BB0();
  v33 = v49;
  *(v19 + 392) = v48;
  *(v19 + 51) = v33;
  v52 = 7;
  sub_DAD8();
  sub_1E1BB0();
  v34 = v49;
  *(v19 + 26) = v48;
  *(v19 + 27) = v34;
  *(v19 + 28) = v50;
  v52 = 8;
  sub_28F9C();
  sub_1E1BB0();
  v19[464] = v48;
  v52 = 9;
  sub_4FC60();
  sub_1E1BB0();
  v35 = v51;
  v36 = v49;
  *(v19 + 472) = v48;
  *(v19 + 488) = v36;
  *(v19 + 504) = v50;
  v47[520] = v35;
  LOBYTE(v48) = 10;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v45, v46);
  v37 = v47;
  (*(v42 + 32))(&v47[*(v10 + 56)], v40, v41);
  sub_16F59C(v37, v43);
  sub_4E48(v71);
  return sub_16F600(v37);
}

uint64_t sub_16F59C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseAttemptEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_16F600(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseAttemptEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_16F710(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_22:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_21:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_22;
  }

  v14 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_21;
  }

  v15 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_21;
  }

  v16 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_21;
  }

  v17 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_21;
  }

  v18 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_21;
  }

  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_21;
  }

  v20 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_21;
  }

  v21 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_21;
  }

  v23 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v24 = *(*(v23 - 8) + 48);
  v25 = a1 + a3[14];

  return v24(v25, a2, v23);
}

uint64_t sub_16FB28(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_22:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_21:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_22;
  }

  v16 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_21;
  }

  v17 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_21;
  }

  v18 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_21;
  }

  v19 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_21;
  }

  v20 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_21;
  }

  v21 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_21;
  }

  v22 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_21;
  }

  v23 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_21;
  }

  v25 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v26 = *(*(v25 - 8) + 56);
  v27 = a1 + a4[14];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_16FF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 72);
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
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_17000C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1700C4()
{
  result = qword_28B2C8;
  if (!qword_28B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B2C8);
  }

  return result;
}

unint64_t sub_17011C()
{
  result = qword_28B2D0;
  if (!qword_28B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B2D0);
  }

  return result;
}

unint64_t sub_170174()
{
  result = qword_28B2D8;
  if (!qword_28B2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B2D8);
  }

  return result;
}

BookAnalytics::PurchaseFailureReason_optional __swiftcall PurchaseFailureReason.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2613D8;
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

uint64_t PurchaseFailureReason.rawValue.getter()
{
  v1 = 0x726F727265;
  if (*v0 != 1)
  {
    v1 = 0x64656C65636E6163;
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

uint64_t sub_17027C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x726F727265;
  if (v2 != 1)
  {
    v4 = 0x64656C65636E6163;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x726F727265;
  if (*a2 != 1)
  {
    v8 = 0x64656C65636E6163;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
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

unint64_t sub_17037C()
{
  result = qword_28B2E0;
  if (!qword_28B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B2E0);
  }

  return result;
}

Swift::Int sub_1703D0()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_170470()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_1704FC()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_1705A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x726F727265;
  if (v2 != 1)
  {
    v5 = 0x64656C65636E6163;
    v4 = 0xE800000000000000;
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

unint64_t sub_1706C0()
{
  result = qword_28B2E8;
  if (!qword_28B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B2E8);
  }

  return result;
}

BookAnalytics::ContentAcquisitionType_optional __swiftcall ContentAcquisitionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261440;
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

uint64_t ContentAcquisitionType.rawValue.getter()
{
  v1 = 0x756F4265726F7473;
  if (*v0 != 1)
  {
    v1 = 0x65726F74536E6F6ELL;
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

uint64_t sub_1707F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x756F4265726F7473;
  v4 = 0xEB00000000746867;
  if (v2 != 1)
  {
    v3 = 0x65726F74536E6F6ELL;
    v4 = 0xEE00746867756F42;
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

  v7 = 0x756F4265726F7473;
  v8 = 0xEB00000000746867;
  if (*a2 != 1)
  {
    v7 = 0x65726F74536E6F6ELL;
    v8 = 0xEE00746867756F42;
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

unint64_t sub_170924()
{
  result = qword_28B2F0;
  if (!qword_28B2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B2F0);
  }

  return result;
}

Swift::Int sub_170978()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_170A30()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_170AD4()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_170B94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEB00000000746867;
  v5 = 0x756F4265726F7473;
  if (v2 != 1)
  {
    v5 = 0x65726F74536E6F6ELL;
    v4 = 0xEE00746867756F42;
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

unint64_t sub_170CC8()
{
  result = qword_28B2F8;
  if (!qword_28B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B2F8);
  }

  return result;
}

uint64_t sub_170D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_3D68(&qword_287EC0, &qword_205170);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_D0B34(a3, v27 - v11);
  v13 = sub_1E1900();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_172E38(v12);
  }

  else
  {
    sub_1E18F0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1E18D0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1E17A0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_172E38(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_172E38(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_170FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_3D68(&qword_287EC0, &qword_205170);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_D0B34(a3, v27 - v11);
  v13 = sub_1E1900();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_172E38(v12);
  }

  else
  {
    sub_1E18F0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1E18D0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1E17A0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_3D68(&qword_28B480, &qword_205200);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_172E38(a3);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_172E38(a3);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_3D68(&qword_28B480, &qword_205200);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1712B0()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_171310()
{
  type metadata accessor for SessionActor.ActorType();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_28B300 = v0;
  return result;
}

void *sub_171350()
{
  v1 = v0;
  sub_171660();
  v0[2] = v2;
  v0[3] = v3;
  v0[4] = &_swiftEmptyDictionarySingleton;
  if (qword_27D048 != -1)
  {
    swift_once();
  }

  v4 = sub_1E1360();
  sub_3B2C(v4, qword_2802C0);

  v5 = sub_1E1340();
  v6 = sub_1E1960();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = v1[2];
    v10 = v1[3];

    v11 = sub_DD91C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "file path: %s", v7, 0xCu);
    sub_4E48(v8);
  }

  sub_1714D4();
  return v1;
}

void sub_1714D4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = objc_opt_self();

  v10 = [v3 defaultManager];
  v4 = sub_1E1770();
  v5 = [v10 fileExistsAtPath:v4];

  if (v5)
  {
    v6 = sub_1E1770();

    v11 = 0;
    v7 = [v10 removeItemAtPath:v6 error:&v11];

    if (v7)
    {
      v8 = v11;
    }

    else
    {
      v9 = v11;
      sub_1E08C0();

      swift_willThrow();
    }
  }

  else
  {
  }
}

void sub_171660()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v1 = sub_1E18C0();

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 16 + 16 * v2);
    v4 = *v3;
    v5 = v3[1];

    v10._object = 0x80000000002171E0;
    v10._countAndFlagsBits = 0xD000000000000016;
    sub_1E17B0(v10);

    v6 = [objc_opt_self() defaultManager];
    v7 = sub_1E1770();
    v8 = [v6 fileExistsAtPath:v7];

    if ((v8 & 1) == 0)
    {
      v9 = sub_1E1770();
      [v6 createFileAtPath:v9 contents:0 attributes:0];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1717A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  if (qword_27D5A8 != -1)
  {
    swift_once();
  }

  v6 = qword_28B300;

  return _swift_task_switch(sub_171840, v6, 0);
}

uint64_t sub_171840()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_1E1060();
  v5 = v4;
  v6 = sub_1E1070();
  swift_beginAccess();
  v7 = *(v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + 32);
  *(v2 + 32) = 0x8000000000000000;
  sub_173CFC(v6, v3, v5, isUniquelyReferenced_nonNull_native);

  *(v2 + 32) = v11;
  swift_endAccess();
  v9 = v0[1];

  return v9();
}

void sub_17191C()
{
  v1 = objc_opt_self();
  isa = sub_1E1720().super.isa;
  v35 = 0;
  v3 = [v1 dataWithJSONObject:isa options:8 error:&v35];

  v4 = v35;
  if (v3)
  {
    v5 = sub_1E0950();
    v7 = v6;

    v9 = *(v0 + 16);
    v8 = *(v0 + 24);

    v10 = sub_1E1770();
    v11 = objc_opt_self();
    v12 = [v11 fileHandleForWritingAtPath:v10];

    if (v12)
    {
    }

    else
    {
      v22 = [objc_opt_self() defaultManager];
      v23 = sub_1E1770();
      [v22 createFileAtPath:v23 contents:0 attributes:0];

      v24 = sub_1E1770();

      v12 = [v11 fileHandleForWritingAtPath:v24];

      if (!v12)
      {
LABEL_11:
        sub_158E5C(v5, v7);
        return;
      }
    }

    sub_1E1950();
    v25 = sub_1E0940().super.isa;
    [v12 writeData:v25];

    v35 = 0;
    if ([v12 closeAndReturnError:&v35])
    {
      v26 = v35;

      goto LABEL_11;
    }

    v27 = v35;
    sub_1E08C0();

    swift_willThrow();
    if (qword_27D048 != -1)
    {
      swift_once();
    }

    v28 = sub_1E1360();
    sub_3B2C(v28, qword_2802C0);
    swift_errorRetain();
    v15 = sub_1E1340();
    v29 = sub_1E1980();

    if (os_log_type_enabled(v15, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35 = v31;
      *v30 = 136315138;
      swift_getErrorValue();
      v32 = sub_1E1D70();
      v34 = sub_DD91C(v32, v33, &v35);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_0, v15, v29, "error while writing to disk: %s", v30, 0xCu);
      sub_4E48(v31);

      sub_158E5C(v5, v7);

      goto LABEL_17;
    }

    sub_158E5C(v5, v7);
  }

  else
  {
    v13 = v4;
    sub_1E08C0();

    swift_willThrow();
    if (qword_27D048 != -1)
    {
      swift_once();
    }

    v14 = sub_1E1360();
    sub_3B2C(v14, qword_2802C0);
    swift_errorRetain();
    v15 = sub_1E1340();
    v16 = sub_1E1980();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35 = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_1E1D70();
      v21 = sub_DD91C(v19, v20, &v35);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_0, v15, v16, "error serializing json data: %s", v17, 0xCu);
      sub_4E48(v18);

LABEL_17:

      return;
    }
  }
}

uint64_t sub_171E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v5 = sub_1E0BE0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = sub_3D68(&qword_287EC0, &qword_205170);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v24 - v12;
  v14 = sub_1E1900();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v6 + 16))(v9, a1, v5);
  v15 = qword_27D5A8;
  v16 = v3;

  if (v15 != -1)
  {
    swift_once();
  }

  v17 = qword_28B300;
  v18 = sub_172CE4();
  v19 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v20 = (v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = v17;
  *(v21 + 3) = v18;
  v22 = v25;
  *(v21 + 4) = v24;
  *(v21 + 5) = v22;
  (*(v6 + 32))(&v21[v19], v9, v5);
  *&v21[v20] = v16;

  sub_170D1C(0, 0, v13, &unk_2051C0, v21);
}

uint64_t sub_1720A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[89] = a7;
  v7[88] = a6;
  v7[87] = a5;
  v7[86] = a4;
  if (qword_27D5A8 != -1)
  {
    swift_once();
  }

  v8 = qword_28B300;

  return _swift_task_switch(sub_172178, v8, 0);
}

uint64_t sub_172178()
{
  v1 = v0[89];
  v2 = v0[88];
  v3 = v0[86];
  sub_1E0BE0();
  v4 = sub_1E0BC0();
  v5 = sub_1E1030();
  v7 = v6;

  v8 = objc_opt_self();
  isa = sub_1E0940().super.isa;
  v0[84] = 0;
  v10 = [v8 JSONObjectWithData:isa options:0 error:v0 + 84];

  v11 = v0[84];
  if (v10)
  {
    v12 = v11;
    sub_1E1A60();
    swift_unknownObjectRelease();
    sub_3D68(&qword_28B470, &unk_2051D8);
    if (swift_dynamicCast())
    {
      v13 = v0[85];
    }

    else
    {
      v13 = sub_3246C(_swiftEmptyArrayStorage);
    }

    sub_158E5C(v5, v7);
  }

  else
  {
    v14 = v11;
    sub_1E08C0();

    swift_willThrow();
    sub_158E5C(v5, v7);
    v13 = sub_3246C(_swiftEmptyArrayStorage);
  }

  v0[67] = 0x746144746E657665;
  v0[68] = 0xE900000000000061;

  sub_1E1AC0();
  if (!*(v13 + 16) || (v15 = sub_A5D4((v0 + 42)), (v16 & 1) == 0))
  {

    v27 = (v0 + 42);
LABEL_17:
    sub_A7F4(v27);
    goto LABEL_18;
  }

  sub_326BC(*(v13 + 56) + 32 * v15, (v0 + 52));
  sub_A7F4((v0 + 42));

  sub_3D68(&qword_28B470, &unk_2051D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v26 = &_swiftEmptyDictionarySingleton;
    goto LABEL_19;
  }

  v17 = v0[83];
  v0[79] = 0x496E6F6973736573;
  v0[80] = 0xE900000000000044;
  sub_1E1AC0();
  if (!*(v17 + 16) || (v18 = sub_A5D4((v0 + 47)), (v19 & 1) == 0))
  {

    v27 = (v0 + 47);
    goto LABEL_17;
  }

  sub_326BC(*(v17 + 56) + 32 * v18, (v0 + 56));
  sub_A7F4((v0 + 47));

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v20 = v0[87];
  v21 = v0[81];
  v22 = v0[82];
  swift_beginAccess();
  v23 = *(v20 + 32);
  if (*(v23 + 16) && (v24 = sub_A2F4(v21, v22), (v25 & 1) != 0))
  {
    v26 = *(*(v23 + 56) + 8 * v24);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    v26 = sub_322DC(_swiftEmptyArrayStorage);
  }

LABEL_19:
  v28 = v0[86];
  v29 = sub_1E0BD0();
  v31 = v30;
  v0[69] = v29;
  v0[70] = v30;
  sub_12758C();
  if (sub_1E1930())
  {
    v32 = v0[87];
    sub_3D68(&qword_28B460, &qword_2051C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_205090;
    v0[71] = 1701667182;
    v0[72] = 0xE400000000000000;
    sub_1E1AC0();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v29;
    *(inited + 80) = v31;
    v0[73] = 1701869940;
    v0[74] = 0xE400000000000000;
    sub_1E1AC0();
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = 0x746E657665;
    *(inited + 152) = 0xE500000000000000;
    v0[75] = 0x446E6F6973736573;
    v0[76] = 0xEB00000000617461;
    sub_1E1AC0();
    *(inited + 240) = sub_3D68(&qword_28B468, &qword_2051D0);
    *(inited + 216) = v26;
    v0[77] = 1635017060;
    v0[78] = 0xE400000000000000;
    sub_1E1AC0();
    *(inited + 312) = sub_3D68(&qword_28B470, &unk_2051D8);
    *(inited + 288) = v13;
    sub_3246C(inited);
    swift_setDeallocating();
    sub_3D68(&qword_27F0F8, &qword_1E7F10);
    swift_arrayDestroy();
    sub_17191C();
  }

  else
  {
  }

  v34 = v0[1];

  return v34();
}