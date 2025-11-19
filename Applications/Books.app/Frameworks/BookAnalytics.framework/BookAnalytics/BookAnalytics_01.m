uint64_t sub_185EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

unint64_t sub_18630()
{
  result = qword_27E4D0;
  if (!qword_27E4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4D0);
  }

  return result;
}

uint64_t MediaEngageEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = (*(*(sub_3D68(&qword_27E498, &unk_1E5FA0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v42 = &v40 - v4;
  v5 = sub_1E1150();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  __chkstk_darwin();
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3D68(&qword_27E4D8, &qword_1E5FB8);
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = &v40 - v11;
  v13 = type metadata accessor for MediaEngageEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin();
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_18448();
  v47 = v12;
  v18 = v74;
  sub_1E1DF0();
  if (v18)
  {
    return sub_4E48(a1);
  }

  v74 = v8;
  v19 = a1;
  v20 = v16;
  LOBYTE(v60) = 0;
  sub_16720();
  v21 = v46;
  sub_1E1C20();
  v22 = v49;
  v23 = v50;
  *v20 = v48;
  *(v20 + 16) = v22;
  *(v20 + 32) = v23;
  v67 = 1;
  sub_18EA8();
  sub_1E1C20();
  v40 = v13;
  v24 = v71;
  *(v20 + 72) = v70;
  *(v20 + 88) = v24;
  v25 = v73;
  *(v20 + 104) = v72;
  *(v20 + 120) = v25;
  v26 = v69;
  *(v20 + 40) = v68;
  *(v20 + 56) = v26;
  v59 = 2;
  sub_18EFC();
  sub_1E1BB0();
  v27 = v62;
  *(v20 + 184) = v63;
  v28 = v65;
  *(v20 + 200) = v64;
  *(v20 + 216) = v28;
  *(v20 + 232) = v66;
  v29 = v61;
  *(v20 + 136) = v60;
  *(v20 + 152) = v29;
  *(v20 + 168) = v27;
  v58 = 3;
  sub_18F50();
  sub_1E1BB0();
  v30 = v45;
  v31 = v49;
  *(v20 + 248) = v48;
  *(v20 + 264) = v31;
  LOBYTE(v48) = 4;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  v32 = v44;
  sub_1E1C20();
  (*(v43 + 32))(v20 + v40[8], v74, v32);
  sub_1E11A0();
  LOBYTE(v48) = 5;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v33 = v42;
  sub_1E1BB0();
  sub_17C54(v33, v20 + v40[9]);
  v58 = 6;
  sub_18FA4();
  sub_1E1BB0();
  (*(v30 + 8))(v47, v21);
  v34 = v20 + v40[10];
  v35 = v55;
  *(v34 + 96) = v54;
  *(v34 + 112) = v35;
  *(v34 + 128) = v56;
  *(v34 + 144) = v57;
  v36 = v51;
  *(v34 + 32) = v50;
  *(v34 + 48) = v36;
  v37 = v53;
  *(v34 + 64) = v52;
  *(v34 + 80) = v37;
  v38 = v49;
  *v34 = v48;
  *(v34 + 16) = v38;
  sub_18FF8(v20, v41);
  sub_4E48(v19);
  return sub_1905C(v20);
}

uint64_t sub_18E48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3D68(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_18EA8()
{
  result = qword_27E4E0;
  if (!qword_27E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4E0);
  }

  return result;
}

unint64_t sub_18EFC()
{
  result = qword_27E4E8;
  if (!qword_27E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4E8);
  }

  return result;
}

unint64_t sub_18F50()
{
  result = qword_27E4F0;
  if (!qword_27E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4F0);
  }

  return result;
}

unint64_t sub_18FA4()
{
  result = qword_27E4F8;
  if (!qword_27E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4F8);
  }

  return result;
}

uint64_t sub_18FF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaEngageEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1905C(uint64_t a1)
{
  v2 = type metadata accessor for MediaEngageEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19158@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E468, &qword_1E5F70);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E470, &qword_1E5F78);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  (*(*(v16 - 8) + 104))(a2 + v15, v9, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v9, v18);
}

uint64_t sub_193D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E468, &qword_1E5F70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E470, &qword_1E5F78);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  v14 = sub_3D68(&qword_27E478, &unk_1E5F80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  v15 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  v17 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  v19 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[10];

  return v20(v21, a2, v19);
}

uint64_t sub_1969C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E468, &qword_1E5F70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E470, &qword_1E5F78);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_3D68(&qword_27E478, &unk_1E5F80);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  v17 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  v19 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  v21 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v22 = *(*(v21 - 8) + 56);
  v23 = a1 + a4[10];

  return v22(v23, a2, a2, v21);
}

void sub_1995C()
{
  sub_19B70(319, &qword_27E568, sub_16720, sub_16778);
  if (v0 <= 0x3F)
  {
    sub_19B70(319, &qword_27E570, sub_18EA8, sub_1849C);
    if (v1 <= 0x3F)
    {
      sub_19B70(319, &qword_27E578, sub_18EFC, sub_18544);
      if (v2 <= 0x3F)
      {
        sub_19B70(319, &qword_27E580, sub_18F50, sub_18598);
        if (v3 <= 0x3F)
        {
          sub_5684();
          if (v4 <= 0x3F)
          {
            sub_5750();
            if (v5 <= 0x3F)
            {
              sub_19B70(319, &unk_27E588, sub_18FA4, sub_18630);
              if (v6 <= 0x3F)
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

void sub_19B70(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_19C00(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v13 = sub_3D68(&qword_27E498, &unk_1E5FA0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_19D44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v13 = sub_3D68(&qword_27E498, &unk_1E5FA0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_19E74()
{
  sub_19FE0(319, &qword_27E638);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_27E640);
    if (v1 <= 0x3F)
    {
      sub_1E1150();
      if (v2 <= 0x3F)
      {
        sub_19F88();
        if (v3 <= 0x3F)
        {
          sub_19FE0(319, &unk_27E650);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_19F88()
{
  if (!qword_27E648)
  {
    sub_1E11A0();
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_27E648);
    }
  }
}

void sub_19FE0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1E1A20();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1A040()
{
  result = qword_27E698;
  if (!qword_27E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E698);
  }

  return result;
}

unint64_t sub_1A098()
{
  result = qword_27E6A0;
  if (!qword_27E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E6A0);
  }

  return result;
}

unint64_t sub_1A0F0()
{
  result = qword_27E6A8;
  if (!qword_27E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E6A8);
  }

  return result;
}

uint64_t sub_1A144(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144616964656DLL && a2 == 0xE900000000000061;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000213990 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614465676170 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000)
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

BookAnalytics::SortBy_optional __swiftcall SortBy.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25F330;
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

uint64_t SortBy.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E69646E65637361;
  v3 = 0x44657361656C6572;
  v4 = 0x6972616C75706F70;
  if (v1 != 3)
  {
    v4 = 0x656C746974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x69646E6563736564;
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

unint64_t sub_1A4C0()
{
  result = qword_27E6B0;
  if (!qword_27E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E6B0);
  }

  return result;
}

Swift::Int sub_1A514()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_1A608()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_1A6E8()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_1A7E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000067;
  v4 = 0x6E69646E65637361;
  v5 = 0xEB00000000657461;
  v6 = 0x44657361656C6572;
  v7 = 0xEA00000000007974;
  v8 = 0x6972616C75706F70;
  if (v2 != 3)
  {
    v8 = 0x656C746974;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x69646E6563736564;
    v3 = 0xEA0000000000676ELL;
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

unint64_t sub_1A954()
{
  result = qword_27E6B8;
  if (!qword_27E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E6B8);
  }

  return result;
}

uint64_t ClickData.targetType.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ClickData.targetType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t LinkData.previousSeriesID.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t LinkData.previousSeriesID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t SearchResultsItemTypeData.section.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t SearchResultsItemTypeData.section.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_1AC20(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x616C50616964656DLL;
    v6 = 0x657355616964656DLL;
    if (a1 != 2)
    {
      v6 = 0x646F4D6F65646976;
    }

    if (a1)
    {
      v5 = 0x6D6954616964656DLL;
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
    v1 = 0x64656C6961467369;
    v2 = 0xD000000000000010;
    if (a1 != 7)
    {
      v2 = 0x6E6979616C507369;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x746174536574756DLL;
    if (a1 != 4)
    {
      v3 = 0x7265666675427369;
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

uint64_t sub_1AD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ADB8(uint64_t a1)
{
  v2 = sub_1B850();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1ADF4(uint64_t a1)
{
  v2 = sub_1B850();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MediaEngagementData.encode(to:)(void *a1)
{
  v3 = *(sub_3D68(&qword_27E6C0, &qword_1E6310) - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = v23 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v30 = v1[3];
  v31 = v9;
  v10 = v1[4];
  v28 = v1[5];
  v29 = v10;
  v11 = v1[6];
  v26 = v1[7];
  v27 = v11;
  v12 = v1[8];
  v13 = *(v1 + 72);
  v23[2] = *(v1 + 73);
  v23[3] = v13;
  v23[1] = *(v1 + 74);
  v14 = v1[10];
  v15 = v1[11];
  v24 = v12;
  v25 = v14;
  v17 = a1[3];
  v16 = a1[4];
  v18 = a1;
  v20 = v19;
  sub_48B8(v18, v17);
  sub_1B850();
  sub_1E1E00();
  v41 = 0;
  v21 = v32;
  sub_1E1CB0();
  if (v21)
  {
    return (*(v3 + 8))(v6, v20);
  }

  v32 = v15;
  v40 = 1;
  sub_1E1D10();
  v39 = 2;
  sub_1E1CB0();
  v38 = 3;
  sub_1E1CB0();
  v37 = 4;
  sub_1E1CB0();
  v36 = 5;
  sub_1E1CC0();
  v35 = 6;
  sub_1E1CC0();
  v34 = 7;
  sub_1E1CC0();
  v33 = 8;
  sub_1E1CB0();
  return (*(v3 + 8))(v6, v20);
}

uint64_t MediaEngagementData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_27E6D0, &qword_1E6318);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1B850();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  LOBYTE(v44[0]) = 0;
  v11 = sub_1E1BE0();
  v13 = v12;
  LOBYTE(v44[0]) = 1;
  v35 = sub_1E1C40();
  LOBYTE(v44[0]) = 2;
  v34 = sub_1E1BE0();
  v37 = v14;
  LOBYTE(v44[0]) = 3;
  v33 = sub_1E1BE0();
  v36 = v15;
  LOBYTE(v44[0]) = 4;
  v31 = sub_1E1BE0();
  v32 = v16;
  LOBYTE(v44[0]) = 5;
  v49 = sub_1E1BF0();
  LOBYTE(v44[0]) = 6;
  v30 = sub_1E1BF0();
  LOBYTE(v44[0]) = 7;
  v28 = sub_1E1BF0();
  v50 = 8;
  *&v29 = sub_1E1BE0();
  *(&v29 + 1) = v17;
  v27 = v49 & 1;
  v49 = v30 & 1;
  v18 = v28 & 1;
  v30 = v28 & 1;
  (*(v6 + 8))(v9, v5);
  *&v38 = v11;
  *(&v38 + 1) = v13;
  *&v39 = v35;
  v19 = v37;
  *(&v39 + 1) = v34;
  *&v40 = v37;
  v20 = v36;
  *(&v40 + 1) = v33;
  *&v41 = v36;
  v21 = v32;
  *(&v41 + 1) = v31;
  *&v42 = v32;
  BYTE8(v42) = v27;
  BYTE9(v42) = v49;
  BYTE10(v42) = v18;
  v22 = v29;
  v43 = v29;
  v23 = v41;
  a2[2] = v40;
  a2[3] = v23;
  v24 = v43;
  a2[4] = v42;
  a2[5] = v24;
  v25 = v39;
  *a2 = v38;
  a2[1] = v25;
  sub_177D8(&v38, v44);
  sub_4E48(a1);
  v44[0] = v11;
  v44[1] = v13;
  v44[2] = v35;
  v44[3] = v34;
  v44[4] = v19;
  v44[5] = v33;
  v44[6] = v20;
  v44[7] = v31;
  v44[8] = v21;
  v45 = v27;
  v46 = v49;
  v47 = v30;
  v48 = __PAIR128__(*(&v29 + 1), v22);
  return sub_184F0(v44);
}

uint64_t _s13BookAnalytics19MediaEngagementDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v25 = *(a1 + 64);
  v26 = *(a1 + 56);
  v27 = *(a1 + 72);
  v28 = *(a1 + 73);
  v20 = *(a1 + 74);
  v17 = *(a1 + 88);
  v18 = *(a1 + 80);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v21 = *(a2 + 64);
  v22 = *(a2 + 56);
  v23 = *(a2 + 72);
  v24 = *(a2 + 73);
  v19 = *(a2 + 74);
  v15 = *(a2 + 88);
  v16 = *(a2 + 80);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v8)
    {
      return 0;
    }
  }

  else
  {
    v12 = sub_1E1D30();
    result = 0;
    if ((v12 & 1) == 0 || v2 != v8)
    {
      return result;
    }
  }

  if ((v4 != v7 || v3 != v10) && (sub_1E1D30() & 1) == 0 || (v5 != v9 || v6 != v11) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  v14 = v20 ^ v19;
  if (v26 != v22 || v25 != v21)
  {
    if (!((v27 ^ v23) & 1 | ((sub_1E1D30() & 1) == 0) | ((v28 ^ v24) | v14) & 1))
    {
      goto LABEL_16;
    }

    return 0;
  }

  if ((v27 ^ v23 | v28 ^ v24 | v14))
  {
    return 0;
  }

LABEL_16:
  if (v18 == v16 && v17 == v15)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_1B850()
{
  result = qword_27E6C8;
  if (!qword_27E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E6C8);
  }

  return result;
}

__n128 sub_1B8AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1B8C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1B910(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaEngagementData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaEngagementData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BACC()
{
  result = qword_27E6D8;
  if (!qword_27E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E6D8);
  }

  return result;
}

unint64_t sub_1BB24()
{
  result = qword_27E6E0;
  if (!qword_27E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E6E0);
  }

  return result;
}

unint64_t sub_1BB7C()
{
  result = qword_27E6E8;
  if (!qword_27E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E6E8);
  }

  return result;
}

uint64_t sub_1BBD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616C50616964656DLL && a2 == 0xEF646F6874654D79;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6954616964656DLL && a2 == 0xEF646579616C5065 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657355616964656DLL && a2 == 0xEF6E6F6974634172 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646F4D6F65646976 && a2 == 0xE900000000000065 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746174536574756DLL && a2 == 0xEA00000000007375 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7265666675427369 && a2 == 0xEB00000000676E69 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64656C6961467369 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000002139B0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6979616C507369 && a2 == 0xE900000000000067)
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

uint64_t YIRSourceData.longestAudiobook.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t YIRSourceData.longestAudiobook.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

unint64_t sub_1BF2C()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x65736163776F6C66;
  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0x65736163776F6C66;
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

uint64_t sub_1BFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CA98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C000(uint64_t a1)
{
  v2 = sub_1C748();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1C03C(uint64_t a1)
{
  v2 = sub_1C748();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FlowcaseData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_27E6F0, &qword_1E6588);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v20 = *(v1 + 4);
  v10 = v1[3];
  v18 = v1[4];
  v19 = v10;
  v17 = v1[5];
  v16 = *(v1 + 48);
  v11 = v1[7];
  v15[0] = v1[8];
  v15[1] = v11;
  v12 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1C748();
  sub_1E1E00();
  v26 = 0;
  v13 = v21;
  sub_1E1CB0();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v25 = 1;
  sub_1E1D00();
  v24 = 2;
  sub_1E1CB0();
  v23 = 3;
  sub_1E1CA0();
  v22 = 4;
  sub_1E1C50();
  return (*(v4 + 8))(v7, v3);
}

uint64_t FlowcaseData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_27E700, &qword_1E6590);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1C748();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  LOBYTE(v37[0]) = 0;
  v11 = sub_1E1BE0();
  v13 = v12;
  v14 = v11;
  LOBYTE(v37[0]) = 1;
  v30 = sub_1E1C30();
  LOBYTE(v37[0]) = 2;
  v15 = sub_1E1BE0();
  v31 = v16;
  v29 = v15;
  LOBYTE(v37[0]) = 3;
  v28 = sub_1E1BD0();
  v45 = v17 & 1;
  v46 = 4;
  v18 = sub_1E1B80();
  v19 = v9;
  v21 = v20;
  (*(v6 + 8))(v19, v5);
  *&v32 = v14;
  *(&v32 + 1) = v13;
  v22 = v30;
  LODWORD(v33) = v30;
  *(&v33 + 1) = v29;
  *&v34 = v31;
  v23 = v28;
  *(&v34 + 1) = v28;
  HIDWORD(v27) = v45;
  LOBYTE(v35) = v45;
  *(&v35 + 1) = v18;
  v36 = v21;
  *(a2 + 64) = v21;
  v24 = v33;
  *a2 = v32;
  *(a2 + 16) = v24;
  v25 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v25;
  sub_1C79C(&v32, v37);
  sub_4E48(a1);
  v37[0] = v14;
  v37[1] = v13;
  v38 = v22;
  v39 = v29;
  v40 = v31;
  v41 = v23;
  v42 = BYTE4(v27);
  v43 = v18;
  v44 = v21;
  return sub_1C7D4(v37);
}

uint64_t _s13BookAnalytics12FlowcaseDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 40);
  v18 = *(a1 + 64);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v15 = *(a2 + 56);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v6)
    {
      return 0;
    }

LABEL_7:
    if ((v3 != v7 || v4 != v8) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }

    if (v5)
    {
      if (!v10)
      {
        return 0;
      }
    }

    else
    {
      if (v17 == v9)
      {
        v14 = v10;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        return 0;
      }
    }

    if (v18)
    {
      if (!v11 || (v16 != v15 || v18 != v11) && (sub_1E1D30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    return 1;
  }

  v12 = sub_1E1D30();
  result = 0;
  if ((v12 & 1) != 0 && v2 == v6)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1C748()
{
  result = qword_27E6F8;
  if (!qword_27E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E6F8);
  }

  return result;
}

unint64_t sub_1C808()
{
  result = qword_27E708;
  if (!qword_27E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E708);
  }

  return result;
}

unint64_t sub_1C860()
{
  result = qword_27E710;
  if (!qword_27E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E710);
  }

  return result;
}

__n128 sub_1C8B4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C8D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1C920(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C994()
{
  result = qword_27E718;
  if (!qword_27E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E718);
  }

  return result;
}

unint64_t sub_1C9EC()
{
  result = qword_27E720;
  if (!qword_27E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E720);
  }

  return result;
}

unint64_t sub_1CA44()
{
  result = qword_27E728;
  if (!qword_27E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E728);
  }

  return result;
}

uint64_t sub_1CA98(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000002139D0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736163776F6C66 && a2 == 0xEA00000000004449 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000000002139F0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65736163776F6C66 && a2 == 0xEC00000065707954)
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

BookAnalytics::ErrorData __swiftcall ErrorData.init(errorCode:errorDescription:)(Swift::String errorCode, Swift::String errorDescription)
{
  *v2 = errorCode;
  v2[1] = errorDescription;
  result.errorDescription = errorDescription;
  result.errorCode = errorCode;
  return result;
}

uint64_t sub_1CC68()
{
  if (*v0)
  {
    result = 0x6570795465676170;
  }

  else
  {
    result = 0x444965676170;
  }

  *v0;
  return result;
}

uint64_t sub_1CCA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6570795465676170 && a2 == 0xE800000000000000)
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

uint64_t sub_1CD78(uint64_t a1)
{
  v2 = sub_1D260();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1CDB4(uint64_t a1)
{
  v2 = sub_1D260();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PageData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_27E730, &qword_1E67D8);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1D260();
  sub_1E1E00();
  v16 = 0;
  v12 = v14[3];
  sub_1E1C50();
  if (!v12)
  {
    v15 = 1;
    sub_1E1CB0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t PageData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_27E740, &qword_1E67E0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1D260();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1);
  }

  else
  {
    v21 = 0;
    v11 = sub_1E1B80();
    v13 = v12;
    v19 = v11;
    v20 = 1;
    v15 = sub_1E1BE0();
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    *a2 = v19;
    a2[1] = v13;
    a2[2] = v15;
    a2[3] = v17;

    sub_4E48(a1);
  }
}

uint64_t _s13BookAnalytics8PageDataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_1E1D30() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_1D260()
{
  result = qword_27E738;
  if (!qword_27E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E738);
  }

  return result;
}

__n128 sub_1D2BC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D2C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D310(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1D374()
{
  result = qword_27E748;
  if (!qword_27E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E748);
  }

  return result;
}

unint64_t sub_1D3CC()
{
  result = qword_27E750;
  if (!qword_27E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E750);
  }

  return result;
}

unint64_t sub_1D424()
{
  result = qword_27E758;
  if (!qword_27E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E758);
  }

  return result;
}

unint64_t sub_1D5D0(unsigned __int8 a1)
{
  v1 = 0xD000000000000016;
  if (a1 <= 4u)
  {
    v6 = 0xD000000000000018;
    v7 = 0xD000000000000011;
    if (a1 == 3)
    {
      v7 = 0xD000000000000016;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    v8 = 0xD00000000000001CLL;
    if (!a1)
    {
      v8 = 0xD000000000000012;
    }

    if (a1 <= 1u)
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
    v2 = 0xD000000000000022;
    if (a1 == 9)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0xD000000000000017;
    }

    if (a1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD00000000000001ALL;
    if (a1 != 6)
    {
      v4 = 0xD000000000000018;
    }

    if (a1 != 5)
    {
      v1 = v4;
    }

    if (a1 <= 7u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E764(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D73C(uint64_t a1)
{
  v2 = sub_1E1E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1D778(uint64_t a1)
{
  v2 = sub_1E1E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingGoalsData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_27E760, &qword_1E6A10);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = v21 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v26 = *(v1 + 2);
  v10 = v1[24];
  v11 = *(v1 + 8);
  v24 = *(v1 + 7);
  v25 = v10;
  v12 = *(v1 + 5);
  v22 = v1[48];
  v23 = v11;
  v13 = *(v1 + 7);
  v21[1] = *(v1 + 8);
  v14 = v1[72];
  v15 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1E1E8();
  v16 = v3;
  sub_1E1E00();
  v42 = v8;
  v41 = 0;
  sub_1E23C();
  v17 = v27;
  sub_1E1CF0();
  if (v17)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v18 = v25;
  v40 = 1;
  sub_1E1CD0();
  v39 = 2;
  v27 = v16;
  sub_1E1D10();
  v38 = v18;
  v37 = 3;
  sub_1E290();
  sub_1E1CF0();
  v36 = 4;
  sub_1E1D00();
  v35 = 5;
  sub_1E1D00();
  v34 = 6;
  sub_1E1CD0();
  v33 = v22;
  v32 = 7;
  sub_1E1CF0();
  v31 = 8;
  sub_1E1CD0();
  v30 = 9;
  sub_1E1D10();
  v29 = v14;
  v28 = 10;
  v19 = v27;
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v19);
}

uint64_t ReadingGoalsData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_27E780, &qword_1E6A18);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1E1E8();
  sub_1E1DF0();
  if (!v2)
  {
    v47 = 0;
    sub_1E2E4();
    sub_1E1C20();
    v11 = v48;
    v46 = 1;
    sub_1E1C00();
    v13 = v12;
    v45 = 2;
    v14 = sub_1E1C40();
    v32 = v11;
    v33 = v14;
    v43 = 3;
    v15 = sub_1E338();
    sub_1E1C20();
    v31 = v15;
    LODWORD(v15) = v44;
    v42 = 4;
    v16 = sub_1E1C30();
    v29 = v15;
    v30 = v16;
    v41 = 5;
    v28 = sub_1E1C30();
    v40 = 6;
    sub_1E1C00();
    v18 = v17;
    v38 = 7;
    sub_1E1C20();
    v19 = v39;
    v37 = 8;
    sub_1E1C00();
    v21 = v20;
    v36 = 9;
    v23 = sub_1E1C40();
    v34 = 10;
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    v24 = v35;
    *a2 = v32;
    *(a2 + 8) = v13;
    *(a2 + 16) = v33;
    v25 = v30;
    *(a2 + 24) = v29;
    v26 = v28;
    *(a2 + 28) = v25;
    *(a2 + 32) = v26;
    *(a2 + 40) = v18;
    *(a2 + 48) = v19;
    *(a2 + 56) = v21;
    *(a2 + 64) = v23;
    *(a2 + 72) = v24;
  }

  return sub_4E48(a1);
}

uint64_t _s13BookAnalytics16ReadingGoalsDataV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  v6 = *(a1 + 7);
  v35 = *(a1 + 8);
  v7 = a1[5];
  v33 = *(a1 + 48);
  v8 = a1[7];
  v32 = *(a1 + 8);
  v30 = *(a1 + 72);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 28);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = 89;
  v34 = *(a2 + 48);
  v16 = *(a2 + 56);
  if (v2 != 1)
  {
    v15 = 78;
  }

  v31 = *(a2 + 64);
  if (*a1)
  {
    v17 = v15;
  }

  else
  {
    v17 = 16718;
  }

  if (v2)
  {
    v18 = 0xE100000000000000;
  }

  else
  {
    v18 = 0xE200000000000000;
  }

  v29 = *(a2 + 72);
  v19 = 89;
  if (*a2 != 1)
  {
    v19 = 78;
  }

  if (*a2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 16718;
  }

  if (*a2)
  {
    v21 = 0xE100000000000000;
  }

  else
  {
    v21 = 0xE200000000000000;
  }

  if (v17 == v20 && v18 == v21)
  {
  }

  else
  {
    v22 = sub_1E1D30();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  if (v3 != v9 || v4 != v10 || (sub_228B4(v5, v11) & 1) == 0 || v6 != v12 || v35 != v13 || v7 != v14)
  {
    return 0;
  }

  if (!v33)
  {
    v24 = 0xE200000000000000;
    v25 = 16718;
    v23 = v34;
    if (!v34)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v23 = v34;
  v24 = 0xE100000000000000;
  if (v33 != 1)
  {
    v25 = 78;
    if (!v34)
    {
      goto LABEL_36;
    }

LABEL_32:
    v26 = 0xE100000000000000;
    if (v23 == 1)
    {
      if (v25 != 89)
      {
        goto LABEL_41;
      }
    }

    else if (v25 != 78)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v25 = 89;
  if (v34)
  {
    goto LABEL_32;
  }

LABEL_36:
  v26 = 0xE200000000000000;
  if (v25 != 16718)
  {
LABEL_41:
    v27 = sub_1E1D30();

    if (v27)
    {
      goto LABEL_42;
    }

    return 0;
  }

LABEL_39:
  if (v24 != v26)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (v8 != v16 || v32 != v31)
  {
    return 0;
  }

  return sub_228B4(v30, v29);
}

unint64_t sub_1E1E8()
{
  result = qword_27E768;
  if (!qword_27E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E768);
  }

  return result;
}

unint64_t sub_1E23C()
{
  result = qword_27E770;
  if (!qword_27E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E770);
  }

  return result;
}

unint64_t sub_1E290()
{
  result = qword_27E778;
  if (!qword_27E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E778);
  }

  return result;
}

unint64_t sub_1E2E4()
{
  result = qword_27E788;
  if (!qword_27E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E788);
  }

  return result;
}

unint64_t sub_1E338()
{
  result = qword_27E790;
  if (!qword_27E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E790);
  }

  return result;
}

unint64_t sub_1E390()
{
  result = qword_27E798;
  if (!qword_27E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E798);
  }

  return result;
}

unint64_t sub_1E3E8()
{
  result = qword_27E7A0;
  if (!qword_27E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E7A0);
  }

  return result;
}

__n128 sub_1E43C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E460(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[73])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E4A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadingGoalsData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadingGoalsData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E660()
{
  result = qword_27E7A8;
  if (!qword_27E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E7A8);
  }

  return result;
}

unint64_t sub_1E6B8()
{
  result = qword_27E7B0;
  if (!qword_27E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E7B0);
  }

  return result;
}

unint64_t sub_1E710()
{
  result = qword_27E7B8;
  if (!qword_27E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E7B8);
  }

  return result;
}

uint64_t sub_1E764(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x8000000000213A10 == a2;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000000213A30 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000000213A50 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000000213A70 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000213A90 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000000213AB0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000000213AD0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000000213AF0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000000213B10 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000000213B40 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000000213B60 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t AccountEvent.accountData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27E7F0, &qword_1E6C68);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AccountEvent.accountData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27E7F0, &qword_1E6C68);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AccountEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccountEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AccountEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccountEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AccountEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E7F0, &qword_1E6C68);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for AccountEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t AccountEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccountEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AccountEvent.Model.init(accountData:eventData:)@<X0>(_WORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for AccountEvent.Model(0) + 20);
  v6 = sub_1E1150();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_1EFFC()
{
  if (*v0)
  {
    result = 0x746144746E657665;
  }

  else
  {
    result = 0x44746E756F636361;
  }

  *v0;
  return result;
}

uint64_t sub_1F044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44746E756F636361 && a2 == 0xEB00000000617461;
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

uint64_t sub_1F12C(uint64_t a1)
{
  v2 = sub_1F360();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1F168(uint64_t a1)
{
  v2 = sub_1F360();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AccountEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_27E7F8, &qword_1E6C70);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1F360();
  sub_1E1E00();
  v14 = *v3;
  v13[13] = 0;
  sub_1F3B4();
  sub_1E1CF0();
  if (!v2)
  {
    v11 = *(type metadata accessor for AccountEvent.Model(0) + 20);
    v13[12] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1F360()
{
  result = qword_27E800;
  if (!qword_27E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E800);
  }

  return result;
}

unint64_t sub_1F3B4()
{
  result = qword_27E808;
  if (!qword_27E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E808);
  }

  return result;
}

uint64_t AccountEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_1E1150();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin();
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_3D68(&qword_27E810, &qword_1E6C78);
  v26 = *(v28 - 8);
  v7 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = type metadata accessor for AccountEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1F360();
  sub_1E1DF0();
  if (!v2)
  {
    v15 = v13;
    v23 = v10;
    v16 = v26;
    v17 = v27;
    v30 = 0;
    sub_1F704();
    v18 = v28;
    sub_1E1C20();
    v22 = v15;
    *v15 = v31;
    v29 = 1;
    sub_14E5C(&qword_27D830);
    v21 = v6;
    sub_1E1C20();
    (*(v16 + 8))(v9, v18);
    v19 = v22;
    (*(v24 + 32))(&v22[*(v23 + 20)], v21, v17);
    sub_1F758(v19, v25);
  }

  return sub_4E48(a1);
}

unint64_t sub_1F704()
{
  result = qword_27E818;
  if (!qword_27E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E818);
  }

  return result;
}

uint64_t sub_1F758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1F85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E7F0, &qword_1E6C68);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_1F948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27E7F0, &qword_1E6C68);
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

uint64_t sub_1FA64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27E7F0, &qword_1E6C68);
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

void sub_1FB78()
{
  sub_1FBFC();
  if (v0 <= 0x3F)
  {
    sub_5684();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1FBFC()
{
  if (!qword_27E888)
  {
    sub_1F704();
    sub_1F3B4();
    v0 = sub_1E0C90();
    if (!v1)
    {
      atomic_store(v0, &qword_27E888);
    }
  }
}

uint64_t sub_1FC78(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1FD30(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1FDD0()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1FE60()
{
  result = qword_27E948;
  if (!qword_27E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E948);
  }

  return result;
}

unint64_t sub_1FEB8()
{
  result = qword_27E950;
  if (!qword_27E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E950);
  }

  return result;
}

unint64_t sub_1FF10()
{
  result = qword_27E958;
  if (!qword_27E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E958);
  }

  return result;
}

uint64_t sub_1FF64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x43676E6964616572;
  v5 = 0xEF676E696863616FLL;
  if (a1 != 5)
  {
    v4 = 0x6F72446563697270;
    v5 = 0xE900000000000070;
  }

  v6 = 0xE500000000000000;
  v7 = 0x736C616F67;
  if (a1 != 3)
  {
    v7 = 0x62756C636B6F6F62;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x6C61626F6C67;
  if (a1 != 1)
  {
    v9 = 0x6E656D6D6F636572;
    v8 = 0xEF736E6F69746164;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x6C61626F6C67)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEF736E6F69746164;
        if (v10 != 0x6E656D6D6F636572)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEF676E696863616FLL;
      if (v10 != 0x43676E6964616572)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE900000000000070;
      if (v10 != 0x6F72446563697270)
      {
LABEL_39:
        v13 = sub_1E1D30();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x736C616F67)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x62756C636B6F6F62)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_201BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6570697773;
  v6 = 0xD000000000000015;
  v7 = 0x8000000000212890;
  if (a1 != 4)
  {
    v6 = 0x776F6C6C6F66;
    v7 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x696C43656C746974;
  v9 = 0xEA00000000006B63;
  if (a1 != 1)
  {
    v8 = 0x6B63696C63;
    v9 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6570697773)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0x8000000000212890;
      if (v10 != 0xD000000000000015)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x776F6C6C6F66)
      {
LABEL_34:
        v13 = sub_1E1D30();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEA00000000006B63;
      if (v10 != 0x696C43656C746974)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6B63696C63)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6E776F6E6B6E75)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_20390(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF646165526F5474;
  v3 = 0x6E61576F54646461;
  v4 = a1;
  if (a1 <= 4u)
  {
    v14 = 0xE600000000000000;
    v15 = 0x6E6F74747562;
    v16 = 0xE300000000000000;
    v17 = 7959906;
    if (a1 != 3)
    {
      v17 = 0x6574656C6564;
      v16 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v15 = v17;
      v14 = v16;
    }

    v18 = 0x6D61536F69647561;
    v19 = 0xEB00000000656C70;
    if (!a1)
    {
      v18 = 0x6E61576F54646461;
      v19 = 0xEF646165526F5474;
    }

    if (a1 <= 1u)
    {
      v12 = v18;
    }

    else
    {
      v12 = v15;
    }

    if (v4 <= 1)
    {
      v13 = v19;
    }

    else
    {
      v13 = v14;
    }
  }

  else
  {
    v5 = 0x706D615364616572;
    v6 = 0xEA0000000000656CLL;
    v7 = 0xE600000000000000;
    v8 = 0x64616F6C6572;
    if (a1 != 9)
    {
      v8 = 0xD000000000000014;
      v7 = 0x8000000000213310;
    }

    if (a1 != 8)
    {
      v5 = v8;
      v6 = v7;
    }

    v9 = 0xE700000000000000;
    v10 = 0x7373696D736964;
    v11 = 0x64616F6C6E776F64;
    if (a1 != 6)
    {
      v11 = 0x657461676976616ELL;
    }

    if (a1 != 5)
    {
      v10 = v11;
      v9 = 0xE800000000000000;
    }

    if (a1 <= 7u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }

    if (v4 <= 7)
    {
      v13 = v9;
    }

    else
    {
      v13 = v6;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE600000000000000;
        if (v12 != 0x6E6F74747562)
        {
          goto LABEL_59;
        }
      }

      else if (a2 == 3)
      {
        v2 = 0xE300000000000000;
        if (v12 != 7959906)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v12 != 0x6574656C6564)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_56;
    }

    if (a2)
    {
      v2 = 0xEB00000000656C70;
      if (v12 != 0x6D61536F69647561)
      {
        goto LABEL_59;
      }

      goto LABEL_56;
    }
  }

  else
  {
    if (a2 > 7u)
    {
      if (a2 == 8)
      {
        v2 = 0xEA0000000000656CLL;
        if (v12 != 0x706D615364616572)
        {
          goto LABEL_59;
        }
      }

      else if (a2 == 9)
      {
        v2 = 0xE600000000000000;
        if (v12 != 0x64616F6C6572)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v2 = 0x8000000000213310;
        if (v12 != 0xD000000000000014)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_56;
    }

    if (a2 == 5)
    {
      v2 = 0xE700000000000000;
      if (v12 != 0x7373696D736964)
      {
        goto LABEL_59;
      }

      goto LABEL_56;
    }

    v2 = 0xE800000000000000;
    if (a2 == 6)
    {
      if (v12 != 0x64616F6C6E776F64)
      {
        goto LABEL_59;
      }

      goto LABEL_56;
    }

    v3 = 0x657461676976616ELL;
  }

  if (v12 != v3)
  {
LABEL_59:
    v20 = sub_1E1D30();
    goto LABEL_60;
  }

LABEL_56:
  if (v13 != v2)
  {
    goto LABEL_59;
  }

  v20 = 1;
LABEL_60:

  return v20 & 1;
}

uint64_t sub_206CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 7368564;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE800000000000000;
    v4 = 0x6B72616D6B6F6F62;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x7365746F6ELL;
  }

  else
  {
    v4 = 0x6867696C68676968;
    v3 = 0xEA00000000007374;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 7368564;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x7365746F6ELL;
    if (a2 != 3)
    {
      v6 = 0x6867696C68676968;
      v5 = 0xEA00000000007374;
    }

    if (a2 == 2)
    {
      v7 = 0x6B72616D6B6F6F62;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
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
    v10 = sub_1E1D30();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_20848(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 6579297;
  v5 = 0xE600000000000000;
  if (a1 == 5)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v4 = 0x65766F6D6572;
  }

  v6 = 0x80000000002128B0;
  if (a1 == 3)
  {
    v7 = 0xD000000000000016;
  }

  else
  {
    v7 = 0x63656C6553626174;
  }

  if (a1 != 3)
  {
    v6 = 0xEC0000006E6F6974;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xD000000000000015;
  v9 = 0x8000000000212890;
  if (a1 != 1)
  {
    v8 = 0x6570697773;
    v9 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0x8000000000212890;
        if (v10 != 0xD000000000000015)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v12 = 0xE500000000000000;
        if (v10 != 0x6570697773)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_44;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE300000000000000;
      if (v10 != 6579297)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x65766F6D6572)
      {
LABEL_44:
        v13 = sub_1E1D30();
        goto LABEL_45;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0x80000000002128B0;
    if (v10 != 0xD000000000000016)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v12 = 0xEC0000006E6F6974;
    if (v10 != 0x63656C6553626174)
    {
      goto LABEL_44;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_44;
  }

  v13 = 1;
LABEL_45:

  return v13 & 1;
}

uint64_t sub_20A64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x746E65636572;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x656C746974;
  }

  else
  {
    v3 = 0xE600000000000000;
    if (a1 == 3)
    {
      v4 = 0x726F68747561;
    }

    else
    {
      v4 = 0x6C61756E616DLL;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x746E65636572;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x726F68747561;
    if (a2 != 3)
    {
      v5 = 0x6C61756E616DLL;
    }

    if (a2 == 2)
    {
      v6 = 0x656C746974;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = sub_1E1D30();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_20BCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  v4 = 0xE700000000000000;
  v5 = 0x6172447265766F63;
  if (a1 == 2)
  {
    v5 = 0x6E69626275726373;
  }

  v6 = 0x61546E6F74747562;
  v7 = 0xE900000000000070;
  if (a1)
  {
    v4 = 0xE900000000000070;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xE900000000000067;
  }

  v10 = 0x6E69626275726373;
  if (a2 != 2)
  {
    v10 = 0x6172447265766F63;
  }

  if (a2)
  {
    v2 = 0x61546E6F74747562;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v10;
  }

  if (a2 <= 1u)
  {
    v12 = v7;
  }

  else
  {
    v12 = 0xE900000000000067;
  }

  if (v8 == v11 && v9 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1E1D30();
  }

  return v13 & 1;
}

uint64_t sub_20CFC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000010;
  v5 = 0x8000000000212A80;
  v6 = 0x4C6465726564726FLL;
  v7 = 0xEF6D6F6F52747369;
  if (a1 != 4)
  {
    v6 = 0x676E6970756F7267;
    v7 = 0xEC00000065676150;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x6F6F527265707573;
  v9 = 0xE90000000000006DLL;
  if (a1 != 1)
  {
    v8 = 0x6F52656C706D6973;
    v9 = 0xEA00000000006D6FLL;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x8000000000212A80;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEF6D6F6F52747369;
      if (v10 != 0x4C6465726564726FLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEC00000065676150;
      if (v10 != 0x676E6970756F7267)
      {
LABEL_34:
        v13 = sub_1E1D30();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE90000000000006DLL;
      if (v10 != 0x6F6F527265707573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000006D6FLL;
      if (v10 != 0x6F52656C706D6973)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6E776F6E6B6E75)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_20F18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x65536E497478656ELL;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v6 = 0xEC00000073656972;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v3 = 0x48676E6964616572;
    v4 = 0xEE0079726F747369;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
      v4 = 0x8000000000212870;
    }

    if (a1 == 2)
    {
      v5 = 0x6D6F724665726F6DLL;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xEE00726F68747541;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x65536E497478656ELL;
    }

    else
    {
      v11 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v10 = 0xEC00000073656972;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x48676E6964616572;
    v8 = 0x8000000000212870;
    if (a2 == 3)
    {
      v8 = 0xEE0079726F747369;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v9 = 0x6D6F724665726F6DLL;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xEE00726F68747541;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_1E1D30();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_210E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  v4 = 0xE700000000000000;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x656D6F636C6577;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v3 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0x8000000000212480;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6553656369766564;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v6 = 0xEE0073676E697474;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  v7 = 0x656D6F636C6577;
  v8 = 0x8000000000212480;
  if (a2 == 2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (a2)
  {
    v2 = 0x6553656369766564;
    v4 = 0xEE0073676E697474;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v8;
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

uint64_t sub_21238(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x686372616573;
  if (a1 != 5)
  {
    v5 = 0x61676E616DLL;
    v4 = 0xE500000000000000;
  }

  v6 = 0x726F74736B6F6F62;
  v7 = 0xE900000000000065;
  if (a1 != 3)
  {
    v6 = 0x6F6F626F69647561;
    v7 = 0xEA0000000000736BLL;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x4E676E6964616572;
  v9 = 0xEA0000000000776FLL;
  if (a1 != 1)
  {
    v8 = 0x7972617262696CLL;
    v9 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEA0000000000776FLL;
        if (v10 != 0x4E676E6964616572)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x7972617262696CLL)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x686372616573)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x61676E616DLL)
      {
LABEL_39:
        v13 = sub_1E1D30();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE900000000000065;
    if (v10 != 0x726F74736B6F6F62)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEA0000000000736BLL;
    if (v10 != 0x6F6F626F69647561)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_21478(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000067;
  v3 = 0x6E69646E65637361;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x69646E6563736564;
    }

    else
    {
      v5 = 0x6E69646E65637361;
    }

    if (v4)
    {
      v6 = 0xEA0000000000676ELL;
    }

    else
    {
      v6 = 0xE900000000000067;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x44657361656C6572;
    v6 = 0xEB00000000657461;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6972616C75706F70;
    }

    else
    {
      v5 = 0x656C746974;
    }

    if (v4 == 3)
    {
      v6 = 0xEA00000000007974;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  v7 = 0x44657361656C6572;
  v8 = 0xEB00000000657461;
  v9 = 0x6972616C75706F70;
  v10 = 0xEA00000000007974;
  if (a2 != 3)
  {
    v9 = 0x656C746974;
    v10 = 0xE500000000000000;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a2)
  {
    v3 = 0x69646E6563736564;
    v2 = 0xEA0000000000676ELL;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1E1D30();
  }

  return v13 & 1;
}

uint64_t sub_21614(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6565726874;
  v6 = 1920298854;
  if (a1 != 4)
  {
    v6 = 1702259046;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = 0xE400000000000000;
  }

  v7 = 6647407;
  if (a1 != 1)
  {
    v7 = 7305076;
  }

  if (a1)
  {
    v3 = 0xE300000000000000;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0xE500000000000000;
      if (v8 != 0x6565726874)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v10 = 0xE400000000000000;
      if (a2 == 4)
      {
        if (v8 != 1920298854)
        {
          goto LABEL_34;
        }
      }

      else if (v8 != 1702259046)
      {
LABEL_34:
        v11 = sub_1E1D30();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v10 = 0xE300000000000000;
    if (a2 == 1)
    {
      if (v8 != 6647407)
      {
        goto LABEL_34;
      }
    }

    else if (v8 != 7305076)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v10 = 0xE700000000000000;
    if (v8 != 0x6E776F6E6B6E75)
    {
      goto LABEL_34;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_34;
  }

  v11 = 1;
LABEL_35:

  return v11 & 1;
}

uint64_t sub_217AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656C62;
  v3 = 0x6967696C45746F6ELL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x736B6F6F62;
    }

    else
    {
      v5 = 0x6F6F626F69647561;
    }

    if (v4 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEA0000000000736BLL;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x656C626967696C65;
    }

    else
    {
      v5 = 0x6967696C45746F6ELL;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000656C62;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x736B6F6F62;
  if (a2 != 2)
  {
    v8 = 0x6F6F626F69647561;
    v7 = 0xEA0000000000736BLL;
  }

  if (a2)
  {
    v3 = 0x656C626967696C65;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
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

uint64_t sub_218F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 4276809;
  if (a1 != 5)
  {
    v5 = 0x694773656E757469;
    v4 = 0xEE00647261437466;
  }

  v6 = 4605008;
  if (a1 != 3)
  {
    v6 = 5527636;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE300000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1802465122;
  if (a1 != 1)
  {
    v8 = 0x6F6F626F69647561;
    v7 = 0xE90000000000006BLL;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE400000000000000;
        if (v9 != 1802465122)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE90000000000006BLL;
        if (v9 != 0x6F6F626F69647561)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE300000000000000;
      if (v9 != 4276809)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xEE00647261437466;
      if (v9 != 0x694773656E757469)
      {
LABEL_39:
        v12 = sub_1E1D30();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE300000000000000;
    if (a2 == 3)
    {
      if (v9 != 4605008)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 5527636)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_21B00(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xE300000000000000;
    v10 = 7368564;
    if (a1 != 6)
    {
      v10 = 0xD000000000000014;
      v9 = 0x8000000000212960;
    }

    v11 = 0x6574736567677573;
    if (a1 != 4)
    {
      v11 = 0x6574636572726F63;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = 0xED00006D72655464;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xE800000000000000;
    v5 = 0x676E69646E657274;
    if (a1 != 2)
    {
      v5 = 0x64656863746566;
      v4 = 0xE700000000000000;
    }

    v6 = 0x746E65636572;
    if (a1)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v12 = 0xE300000000000000;
        if (v7 != 7368564)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v12 = 0x8000000000212960;
        if (v7 != 0xD000000000000014)
        {
LABEL_47:
          v14 = sub_1E1D30();
          goto LABEL_48;
        }
      }
    }

    else
    {
      if (a2 == 4)
      {
        v13 = 0x736567677573;
      }

      else
      {
        v13 = 0x636572726F63;
      }

      v12 = 0xED00006D72655464;
      if (v7 != (v13 & 0xFFFFFFFFFFFFLL | 0x6574000000000000))
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v12 = 0xE800000000000000;
      if (v7 != 0x676E69646E657274)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v7 != 0x64656863746566)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v12 = 0xE600000000000000;
    if (v7 != 0x746E65636572)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v7 != 0x6E776F6E6B6E75)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v12)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_21D7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x6574636572726F63;
  v5 = 0xED00006D72655464;
  if (a1 != 5)
  {
    v4 = 0xD000000000000014;
    v5 = 0x8000000000212960;
  }

  v6 = 0xE700000000000000;
  v7 = 0x64656863746566;
  if (a1 != 3)
  {
    v7 = 0x6574736567677573;
    v6 = 0xED00006D72655464;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x746E65636572;
  if (a1 != 1)
  {
    v9 = 0x676E69646E657274;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x746E65636572)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x676E69646E657274)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_37;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x64656863746566)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v13 = 0x736567677573;
LABEL_34:
    v12 = 0xED00006D72655464;
    if (v10 != (v13 & 0xFFFFFFFFFFFFLL | 0x6574000000000000))
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (a2 == 5)
  {
    v13 = 0x636572726F63;
    goto LABEL_34;
  }

  v12 = 0x8000000000212960;
  if (v10 != 0xD000000000000014)
  {
LABEL_39:
    v14 = sub_1E1D30();
    goto LABEL_40;
  }

LABEL_37:
  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v14 = 1;
LABEL_40:

  return v14 & 1;
}

uint64_t sub_21FB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x6165527472617473;
  v5 = 0xEC000000676E6964;
  if (a1 != 5)
  {
    v4 = 0x73694C7472617473;
    v5 = 0xEE00676E696E6574;
  }

  v6 = 0x7473694C746E6177;
  v7 = 0xEB00000000646441;
  if (a1 != 3)
  {
    v6 = 0x74536E4977656976;
    v7 = 0xEB0000000065726FLL;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x546567617373656DLL;
  v9 = 0xEA00000000007061;
  if (a1 != 1)
  {
    v8 = 0x6F74747542797562;
    v9 = 0xEC0000007061546ELL;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v15 = 0x6F74747542797562;
        v16 = 1885426798;
LABEL_31:
        v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v10 != v15)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

      v14 = 0xEA00000000007061;
      if (v10 != 0x546567617373656DLL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v12 = 0x7473694C746E6177;
        v13 = 6579265;
      }

      else
      {
        v12 = 0x74536E4977656976;
        v13 = 6648431;
      }

      v14 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      if (v10 != v12)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if (a2 == 5)
    {
      v15 = 0x6165527472617473;
      v16 = 1735289188;
      goto LABEL_31;
    }

    v14 = 0xEE00676E696E6574;
    if (v10 != 0x73694C7472617473)
    {
LABEL_39:
      v17 = sub_1E1D30();
      goto LABEL_40;
    }
  }

LABEL_37:
  if (v11 != v14)
  {
    goto LABEL_39;
  }

  v17 = 1;
LABEL_40:

  return v17 & 1;
}

uint64_t sub_2222C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xE300000000000000;
    v10 = 6452085;
    if (a1 != 6)
    {
      v10 = 0x6863746177;
      v9 = 0xE500000000000000;
    }

    v11 = 0x6979616C50776F6ELL;
    v12 = 0xEA0000000000676ELL;
    if (a1 != 4)
    {
      v11 = 0x746F6F5465756C62;
      v12 = 0xE900000000000068;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xD000000000000014;
    v5 = 0x80000000002130D0;
    if (a1 != 2)
    {
      v4 = 0x79616C50726163;
      v5 = 0xE700000000000000;
    }

    v6 = 0x7070416E69;
    if (a1)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE300000000000000;
        if (v7 != 6452085)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v7 != 0x6863746177)
        {
LABEL_47:
          v14 = sub_1E1D30();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEA0000000000676ELL;
      if (v7 != 0x6979616C50776F6ELL)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE900000000000068;
      if (v7 != 0x746F6F5465756C62)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0x80000000002130D0;
      if (v7 != 0xD000000000000014)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v7 != 0x79616C50726163)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE500000000000000;
    if (v7 != 0x7070416E69)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x6E776F6E6B6E75)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_2249C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x646F50656D6F68;
  if (a1 != 6)
  {
    v5 = 0x5654656C707061;
    v4 = 0xE700000000000000;
  }

  v6 = 0x6E6F687064616568;
  v7 = 0xEA00000000007365;
  if (a1 != 4)
  {
    v6 = 0x73646F50726961;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE700000000000000;
  v9 = 0x79616C50726163;
  if (a1 != 2)
  {
    v9 = 0x6F69647541726163;
    v8 = 0xE800000000000000;
  }

  v10 = 0x656369766564;
  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      v13 = 0xE700000000000000;
      if (a2 == 6)
      {
        if (v11 != 0x646F50656D6F68)
        {
          goto LABEL_45;
        }
      }

      else if (v11 != 0x5654656C707061)
      {
LABEL_45:
        v14 = sub_1E1D30();
        goto LABEL_46;
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEA00000000007365;
      if (v11 != 0x6E6F687064616568)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x73646F50726961)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x79616C50726163)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x6F69647541726163)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE600000000000000;
    if (v11 != 0x656369766564)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x6E776F6E6B6E75)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_22710(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x746867696CLL;
  v6 = 0xE400000000000000;
  v7 = 1802658148;
  if (a1 != 4)
  {
    v7 = 0xD000000000000012;
    v6 = 0x8000000000212F60;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE200000000000000;
  v9 = 28271;
  if (a1 != 1)
  {
    v9 = 6710895;
    v8 = 0xE300000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x746867696CLL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1802658148)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0x8000000000212F60;
      if (v10 != 0xD000000000000012)
      {
LABEL_34:
        v13 = sub_1E1D30();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE200000000000000;
      if (v10 != 28271)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 6710895)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6E776F6E6B6E75)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_228B4(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 1u)
  {
    v4 = a1 == 2;
    v2 = 0xEA00000000007373;
    v3 = 0xEA00000000006465;
    if (a1 == 2)
    {
      v5 = 0x6572676F72506E69;
    }

    else
    {
      v5 = 0x7472617453746F6ELL;
    }
  }

  else
  {
    v2 = 0xE200000000000000;
    v3 = 0xE700000000000000;
    v4 = a1 == 0;
    if (a1)
    {
      v5 = 0x64656863616572;
    }

    else
    {
      v5 = 16718;
    }
  }

  if (v4)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  v7 = 0xE200000000000000;
  v8 = 16718;
  v9 = 0x6572676F72506E69;
  v10 = 0xEA00000000007373;
  if (a2 != 2)
  {
    v9 = 0x7472617453746F6ELL;
    v10 = 0xEA00000000006465;
  }

  if (a2)
  {
    v8 = 0x64656863616572;
    v7 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v7;
  }

  else
  {
    v12 = v10;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1E1D30();
  }

  return v13 & 1;
}

uint64_t sub_22A04(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x7972617262696CLL;
    }

    else
    {
      v2 = 0x6E776F6E6B6E75;
    }

    v3 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0x726F74536B6F6F62;
    v3 = 0xE900000000000065;
  }

  else if (a1 == 3)
  {
    v2 = 0x6F6F626F69647561;
    v3 = 0xEE0065726F74536BLL;
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7105633;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x7972617262696CLL;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }

    v7 = 0xE700000000000000;
    if (v2 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0x6F6F626F69647561;
    v5 = 0xEE0065726F74536BLL;
    if (a2 != 3)
    {
      v4 = 7105633;
      v5 = 0xE300000000000000;
    }

    if (a2 == 2)
    {
      v6 = 0x726F74536B6F6F62;
    }

    else
    {
      v6 = v4;
    }

    if (a2 == 2)
    {
      v7 = 0xE900000000000065;
    }

    else
    {
      v7 = v5;
    }

    if (v2 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v3 != v7)
  {
LABEL_28:
    v9 = sub_1E1D30();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_22BA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000027;
    }

    else
    {
      v4 = 0x696669746E656469;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000000212EF0;
    }

    else
    {
      v5 = 0xEF74657365527265;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x756F72676B636162;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xEC0000006465646ELL;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000027;
  v8 = 0x8000000000212EF0;
  if (a2 != 2)
  {
    v7 = 0x696669746E656469;
    v8 = 0xEF74657365527265;
  }

  if (a2)
  {
    v2 = 0x756F72676B636162;
    v6 = 0xEC0000006465646ELL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

uint64_t sub_22D0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 4u)
  {
    v12 = 0xE700000000000000;
    v13 = 0xE500000000000000;
    v14 = 0x6169706573;
    v15 = 0xE400000000000000;
    v16 = 2036691559;
    if (a1 != 3)
    {
      v16 = 0x6B63616C62;
      v15 = 0xE500000000000000;
    }

    if (a1 != 2)
    {
      v14 = v16;
      v13 = v15;
    }

    v17 = 0x6574696877;
    if (a1)
    {
      v12 = 0xE500000000000000;
    }

    else
    {
      v17 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v10 = v17;
    }

    else
    {
      v10 = v14;
    }

    if (v2 <= 1)
    {
      v11 = v12;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1835819363;
    v5 = 0xE500000000000000;
    v6 = 0x7375636F66;
    if (a1 != 9)
    {
      v6 = 1684828002;
      v5 = 0xE400000000000000;
    }

    if (a1 != 8)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0xE800000000000000;
    v8 = 0x6C616E696769726FLL;
    v9 = 0x7465697571;
    if (a1 != 6)
    {
      v9 = 0x7265706170;
    }

    if (a1 != 5)
    {
      v8 = v9;
      v7 = 0xE500000000000000;
    }

    if (a1 <= 7u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }

    if (v2 <= 7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v18 = 0xE500000000000000;
        if (v10 != 0x6574696877)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v18 = 0xE700000000000000;
        if (v10 != 0x6E776F6E6B6E75)
        {
          goto LABEL_62;
        }
      }
    }

    else if (a2 == 2)
    {
      v18 = 0xE500000000000000;
      if (v10 != 0x6169706573)
      {
        goto LABEL_62;
      }
    }

    else if (a2 == 3)
    {
      v18 = 0xE400000000000000;
      if (v10 != 2036691559)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v18 = 0xE500000000000000;
      if (v10 != 0x6B63616C62)
      {
        goto LABEL_62;
      }
    }
  }

  else if (a2 > 7u)
  {
    if (a2 == 8)
    {
      v18 = 0xE400000000000000;
      if (v10 != 1835819363)
      {
        goto LABEL_62;
      }
    }

    else if (a2 == 9)
    {
      v18 = 0xE500000000000000;
      if (v10 != 0x7375636F66)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v18 = 0xE400000000000000;
      if (v10 != 1684828002)
      {
LABEL_62:
        v19 = sub_1E1D30();
        goto LABEL_63;
      }
    }
  }

  else if (a2 == 5)
  {
    v18 = 0xE800000000000000;
    if (v10 != 0x6C616E696769726FLL)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v18 = 0xE500000000000000;
    if (a2 == 6)
    {
      if (v10 != 0x7465697571)
      {
        goto LABEL_62;
      }
    }

    else if (v10 != 0x7265706170)
    {
      goto LABEL_62;
    }
  }

  if (v11 != v18)
  {
    goto LABEL_62;
  }

  v19 = 1;
LABEL_63:

  return v19 & 1;
}

uint64_t sub_22FF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E6967617473;
    }

    else
    {
      v4 = 1685025392;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 24945;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x676E6967617473;
  if (a2 != 2)
  {
    v8 = 1685025392;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 24945;
    v6 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

uint64_t sub_23114(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x656D6F636C6577;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    v2 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0xE800000000000000;
    v3 = 0x7265766F63736964;
  }

  else if (a1 == 3)
  {
    v2 = 0xE600000000000000;
    v3 = 0x657061637365;
  }

  else
  {
    v2 = 0xE400000000000000;
    v3 = 2003792487;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x656D6F636C6577;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }

    v7 = 0xE700000000000000;
    if (v3 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0xE600000000000000;
    v5 = 0x657061637365;
    if (a2 != 3)
    {
      v5 = 2003792487;
      v4 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v6 = 0x7265766F63736964;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = v4;
    }

    if (v3 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v2 != v7)
  {
LABEL_28:
    v9 = sub_1E1D30();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_23288(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v8 = 0x6574736567677573;
    if (a1 != 6)
    {
      v8 = 0x6574636572726F63;
    }

    v9 = 0x8000000000213460;
    v10 = 0xD00000000000001BLL;
    if (a1 == 4)
    {
      v10 = 0xD000000000000013;
    }

    else
    {
      v9 = 0x8000000000213480;
    }

    if (a1 <= 5u)
    {
      v6 = v10;
    }

    else
    {
      v6 = v8;
    }

    if (v2 <= 5)
    {
      v7 = v9;
    }

    else
    {
      v7 = 0xED00006D72655464;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x8000000000213420;
    if (a1 != 2)
    {
      v4 = 0x8000000000213440;
    }

    v5 = 0x7542686372616573;
    if (a1)
    {
      v3 = 0xEF7061546E6F7474;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (v2 <= 1)
    {
      v7 = v3;
    }

    else
    {
      v7 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0x736567677573;
      }

      else
      {
        v13 = 0x636572726F63;
      }

      v11 = 0xED00006D72655464;
      if (v6 != (v13 & 0xFFFFFFFFFFFFLL | 0x6574000000000000))
      {
        goto LABEL_48;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0x8000000000213460;
      if (v6 != 0xD000000000000013)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v11 = 0x8000000000213480;
      if (v6 != 0xD00000000000001BLL)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v12 = "fetchedSuggestion";
    }

    else
    {
      v12 = "noFetchSuggestion";
    }

    v11 = (v12 - 32) | 0x8000000000000000;
    if (v6 != 0xD000000000000011)
    {
      goto LABEL_48;
    }
  }

  else if (a2)
  {
    v11 = 0xEF7061546E6F7474;
    if (v6 != 0x7542686372616573)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v6 != 0x6E776F6E6B6E75)
    {
      goto LABEL_48;
    }
  }

  if (v7 != v11)
  {
LABEL_48:
    v14 = sub_1E1D30();
    goto LABEL_49;
  }

  v14 = 1;
LABEL_49:

  return v14 & 1;
}

uint64_t sub_23544(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1868785010;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE400000000000000;
    v3 = 1818324839;
  }

  else if (a1 == 3)
  {
    v3 = 0x4D64656966696E75;
    v4 = 0xEE00656761737365;
  }

  else
  {
    v3 = 0x6F72446563697270;
    v4 = 0xE900000000000070;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1868785010;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x4D64656966696E75;
    v6 = 0xEE00656761737365;
    if (a2 != 3)
    {
      v5 = 0x6F72446563697270;
      v6 = 0xE900000000000070;
    }

    if (a2 == 2)
    {
      v7 = 1818324839;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_1E1D30();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_236D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000736569;
  v3 = 0x7265536E496C6C61;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x646165726E75;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v4 == 2)
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
    if (a1)
    {
      v5 = 0x6573616863727570;
    }

    else
    {
      v5 = 0x7265536E496C6C61;
    }

    if (v4)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xEB00000000736569;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x646165726E75;
  if (a2 != 2)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x6573616863727570;
    v2 = 0xE900000000000064;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
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

uint64_t sub_23818(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0x656E6F646E616261;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000000213160;
    }

    else
    {
      v5 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x75426C65636E6163;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xEF7061546E6F7474;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000012;
  v8 = 0x8000000000213160;
  if (a2 != 2)
  {
    v7 = 0x656E6F646E616261;
    v8 = 0xE900000000000064;
  }

  if (a2)
  {
    v2 = 0x75426C65636E6163;
    v6 = 0xEF7061546E6F7474;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

uint64_t sub_2397C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEF6E6F697463656CLL;
    v4 = 0xE600000000000000;
    if (a1 == 2)
    {
      v6 = 0x6C6F436F54646461;
    }

    else
    {
      v6 = 0x65766F6D6572;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xE500000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x6572616873;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6C6F436F54646461;
  v10 = 0xEF6E6F697463656CLL;
  if (a2 != 2)
  {
    v9 = 0x65766F6D6572;
    v10 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x6572616873;
    v8 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1E1D30();
  }

  return v13 & 1;
}

uint64_t sub_23AC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6964616552626F65;
    }

    else
    {
      v4 = 0x4E676E6964616572;
    }

    if (v3 == 2)
    {
      v5 = 0xEA0000000000676ELL;
    }

    else
    {
      v5 = 0xEA0000000000776FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 16718;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x6964616552626F65;
  v8 = 0xEA0000000000676ELL;
  if (a2 != 2)
  {
    v7 = 0x4E676E6964616572;
    v8 = 0xEA0000000000776FLL;
  }

  if (a2)
  {
    v2 = 16718;
    v6 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

uint64_t sub_23C00(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x776569766572;
    }

    else
    {
      v4 = 0x6E41776569766572;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEF676E6974615264;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x676E69746172;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x776569766572;
  if (a2 != 2)
  {
    v8 = 0x6E41776569766572;
    v7 = 0xEF676E6974615264;
  }

  if (a2)
  {
    v2 = 0x676E69746172;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

uint64_t sub_23D4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000072656461;
  v3 = 0x655279646E657274;
  v4 = a1;
  v5 = 0x8000000000212530;
  v6 = 0x8000000000212550;
  v7 = 0xD000000000000011;
  if (a1 != 4)
  {
    v7 = 0x52636972656E6567;
    v6 = 0xED00007265646165;
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0x6552736569726573;
  if (a1 == 1)
  {
    v9 = 0xEC00000072656461;
  }

  else
  {
    v8 = 0xD000000000000010;
    v9 = 0x8000000000212510;
  }

  if (!a1)
  {
    v8 = 0x655279646E657274;
    v9 = 0xEC00000072656461;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x8000000000212530;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x8000000000212550;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v2 = 0xED00007265646165;
      if (v10 != 0x52636972656E6567)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (v10 != 0x6552736569726573)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      v3 = 0xD000000000000010;
      v2 = 0x8000000000212510;
    }

    if (v10 != v3)
    {
LABEL_33:
      v12 = sub_1E1D30();
      goto LABEL_34;
    }
  }

LABEL_30:
  if (v11 != v2)
  {
    goto LABEL_33;
  }

  v12 = 1;
LABEL_34:

  return v12 & 1;
}

uint64_t sub_23F2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x7550796C696D6166;
  v5 = 0xEE00657361686372;
  if (a1 != 6)
  {
    v4 = 0x646567616E616DLL;
    v5 = 0xE700000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x656C706D6173;
  if (a1 != 4)
  {
    v7 = 0x5364656E776F6E75;
    v6 = 0xEC00000065726F74;
  }

  if (a1 <= 5u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x64616F6C65646973;
  v9 = 0xEA00000000006465;
  if (a1 != 2)
  {
    v8 = 0x726564726F657270;
    v9 = 0xE800000000000000;
  }

  v10 = 0x6573616863727570;
  if (a1)
  {
    v3 = 0xE900000000000064;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEE00657361686372;
        if (v11 != 0x7550796C696D6166)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x646567616E616DLL)
        {
LABEL_45:
          v14 = sub_1E1D30();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x656C706D6173)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xEC00000065726F74;
      if (v11 != 0x5364656E776F6E75)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEA00000000006465;
      if (v11 != 0x64616F6C65646973)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x726564726F657270)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE900000000000064;
    if (v11 != 0x6573616863727570)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x6E776F6E6B6E75)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_241D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE700000000000000;
    v12 = 0x65726353656D6F68;
    v13 = 0xED00007061546E65;
    if (a1 != 2)
    {
      v12 = 0x756F546563726F66;
      v13 = 0xEA00000000006863;
    }

    v14 = 0x6C616E7265747865;
    if (a1)
    {
      v11 = 0xEC0000006B6E694CLL;
    }

    else
    {
      v14 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0x6163696669746F6ELL;
    v4 = 0xEC0000006E6F6974;
    v5 = 0xE600000000000000;
    v6 = 0x746567646977;
    if (a1 != 7)
    {
      v6 = 0x6E65746E49707061;
      v5 = 0xE900000000000074;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0x80000000002131C0;
    v8 = 0xD000000000000017;
    if (a1 != 4)
    {
      v8 = 0xD000000000000014;
      v7 = 0x80000000002131E0;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xED00007061546E65;
        if (v9 != 0x65726353656D6F68)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xEA00000000006863;
        if (v9 != 0x756F546563726F66)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    if (!a2)
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x6E776F6E6B6E75)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v16 = 0x6C616E7265747865;
    v17 = 1802398028;
    goto LABEL_43;
  }

  if (a2 > 5u)
  {
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x746567646977)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE900000000000074;
        if (v9 != 0x6E65746E49707061)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    v16 = 0x6163696669746F6ELL;
    v17 = 1852795252;
LABEL_43:
    v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v9 != v16)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 == 4)
  {
    v15 = 0x80000000002131C0;
    if (v9 != 0xD000000000000017)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0x80000000002131E0;
    if (v9 != 0xD000000000000014)
    {
LABEL_52:
      v18 = sub_1E1D30();
      goto LABEL_53;
    }
  }

LABEL_50:
  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v18 = 1;
LABEL_53:

  return v18 & 1;
}

uint64_t sub_244E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x736C616F67;
  v5 = 0xE600000000000000;
  if (a1 == 5)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v4 = 0x6573776F7262;
  }

  v6 = 0xD000000000000010;
  v7 = 0x80000000002129E0;
  if (a1 != 3)
  {
    v6 = 0x65736163776F6C66;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x68736F6F7773;
  if (a1 != 1)
  {
    v9 = 0x6B63697262;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x68736F6F7773)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xE500000000000000;
        if (v10 != 0x6B63697262)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x736C616F67)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6573776F7262)
      {
LABEL_40:
        v13 = sub_1E1D30();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0x80000000002129E0;
    if (v10 != 0xD000000000000010)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x65736163776F6C66)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_246EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x68736F6F7773;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x756B636F4C706F74;
    v4 = 0xE900000000000070;
  }

  else if (a1 == 3)
  {
    v3 = 0x6143736569726573;
    v4 = 0xEA00000000006472;
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x7465656873;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x68736F6F7773;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6143736569726573;
    v6 = 0xEA00000000006472;
    if (a2 != 3)
    {
      v5 = 0x7465656873;
      v6 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x756B636F4C706F74;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE900000000000070;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_1E1D30();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_24878(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000656C6262;
  v3 = 0x7542656E694C6E69;
  v4 = a1;
  v5 = 0x4279616C7265766FLL;
  v6 = 0xED0000656C626275;
  if (a1 != 5)
  {
    v5 = 0x6E776F6E6B6E75;
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x72656E6E6162;
  if (a1 != 3)
  {
    v8 = 0x7473616F74;
    v7 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x656C62627562;
  if (a1 != 1)
  {
    v10 = 0x6142656E694C6E69;
    v9 = 0xEC00000072656E6ELL;
  }

  if (!a1)
  {
    v10 = 0x7542656E694C6E69;
    v9 = 0xEC000000656C6262;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x656C62627562)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEC00000072656E6ELL;
        if (v11 != 0x6142656E694C6E69)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xED0000656C626275;
        if (v11 != 0x4279616C7265766FLL)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x6E776F6E6B6E75)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x72656E6E6162)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0xE500000000000000;
    v3 = 0x7473616F74;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_1E1D30();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_24AAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x79616C6465786966;
    }

    else
    {
      v4 = 0x6F69746964617274;
    }

    if (v3 == 2)
    {
      v5 = 0xEB0000000074756FLL;
    }

    else
    {
      v5 = 0xEB000000006C616ELL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 7630194;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x79616C6465786966;
  v8 = 0xEB0000000074756FLL;
  if (a2 != 2)
  {
    v7 = 0x6F69746964617274;
    v8 = 0xEB000000006C616ELL;
  }

  if (a2)
  {
    v2 = 7630194;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

uint64_t sub_24C00(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x65697265536E6F6ELL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x65726564724F6E75;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v4 == 2)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6465726564726FLL;
    }

    else
    {
      v5 = 0x65697265536E6F6ELL;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000073;
    }
  }

  v7 = 0xE900000000000073;
  v8 = 0x65726564724F6E75;
  if (a2 != 2)
  {
    v8 = 0x6E776F6E6B6E75;
    v2 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x6465726564726FLL;
    v7 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
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

uint64_t sub_24D40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000656C706DLL;
  v3 = 0x6153736569726573;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x6E776F6E6B6E75;
  if (a1 != 5)
  {
    v6 = 0xD000000000000010;
    v5 = 0x80000000002129B0;
  }

  v7 = 0x7265537472617473;
  v8 = 0xEB00000000736569;
  if (a1 != 3)
  {
    v7 = 0x65756E69746E6F63;
    v8 = 0xEE00736569726553;
  }

  if (a1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x65536E497478656ELL;
  v10 = 0xEC00000073656972;
  if (a1 != 1)
  {
    v9 = 0x7265536572616873;
    v10 = 0xEB00000000736569;
  }

  if (!a1)
  {
    v9 = 0x6153736569726573;
    v10 = 0xEC000000656C706DLL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x6E776F6E6B6E75)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0x80000000002129B0;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v13 = 0x537472617473;
      goto LABEL_29;
    }

    v3 = 0x65756E69746E6F63;
    v2 = 0xEE00736569726553;
    goto LABEL_32;
  }

  if (!a2)
  {
LABEL_32:
    if (v11 != v3)
    {
LABEL_36:
      v14 = sub_1E1D30();
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  if (a2 != 1)
  {
    v13 = 0x536572616873;
LABEL_29:
    v2 = 0xEB00000000736569;
    if (v11 != (v13 & 0xFFFFFFFFFFFFLL | 0x7265000000000000))
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  v2 = 0xEC00000073656972;
  if (v11 != 0x65536E497478656ELL)
  {
    goto LABEL_36;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v14 = 1;
LABEL_37:

  return v14 & 1;
}

uint64_t sub_24F90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7824750;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6572676F72506E69;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3 == 2)
    {
      v5 = 0xEA00000000007373;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6574656C706D6F63;
    }

    else
    {
      v4 = 7824750;
    }

    if (v3)
    {
      v5 = 0xE900000000000064;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0x6572676F72506E69;
  v8 = 0xEA00000000007373;
  if (a2 != 2)
  {
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x6574656C706D6F63;
    v6 = 0xE900000000000064;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

uint64_t sub_250DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x6163696669746F6ELL;
    v12 = 0xEC0000006E6F6974;
    v13 = 0x8000000000213590;
    v14 = 0xD000000000000021;
    if (a1 != 8)
    {
      v14 = 0x6F53736569726573;
      v13 = 0xEF726F7272457472;
    }

    if (a1 != 7)
    {
      v11 = v14;
      v12 = v13;
    }

    v15 = 0x6976655274726F73;
    if (a1 == 5)
    {
      v16 = 0xEB00000000737765;
    }

    else
    {
      v15 = 0xD000000000000015;
      v16 = 0x8000000000213570;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v11;
    }

    if (v2 <= 6)
    {
      v10 = v16;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x76616E556B6F6F62;
    v5 = 0xEF656C62616C6961;
    v6 = 0x6C70704177656976;
    v7 = 0xEB00000000444965;
    if (a1 != 3)
    {
      v6 = 0x63694E7265746E65;
      v7 = 0xED0000656D616E6BLL;
    }

    if (a1 != 2)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0xD000000000000013;
    if (a1)
    {
      v3 = 0x8000000000213520;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v17 = 0x6976655274726F73;
        v18 = 7567205;
LABEL_43:
        v19 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v9 != v17)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

      v19 = 0x8000000000213570;
      if (v9 != 0xD000000000000015)
      {
LABEL_58:
        v20 = sub_1E1D30();
        goto LABEL_59;
      }
    }

    else if (a2 == 7)
    {
      v19 = 0xEC0000006E6F6974;
      if (v9 != 0x6163696669746F6ELL)
      {
        goto LABEL_58;
      }
    }

    else if (a2 == 8)
    {
      v19 = 0x8000000000213590;
      if (v9 != 0xD000000000000021)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v19 = 0xEF726F7272457472;
      if (v9 != 0x6F53736569726573)
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v19 = 0xEF656C62616C6961;
        if (v9 != 0x76616E556B6F6F62)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

      if (a2 != 3)
      {
        v19 = 0xED0000656D616E6BLL;
        if (v9 != 0x63694E7265746E65)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

      v17 = 0x6C70704177656976;
      v18 = 4475237;
      goto LABEL_43;
    }

    if (a2)
    {
      v19 = 0x8000000000213520;
      if (v9 != 0xD000000000000013)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v19 = 0xE700000000000000;
      if (v9 != 0x6E776F6E6B6E75)
      {
        goto LABEL_58;
      }
    }
  }

LABEL_56:
  if (v10 != v19)
  {
    goto LABEL_58;
  }

  v20 = 1;
LABEL_59:

  return v20 & 1;
}

uint64_t static SearchEndData.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0xD000000000000012;
  v6 = 0x8000000000213160;
  if (v3 == 2)
  {
    v7 = 0x8000000000213160;
  }

  else
  {
    v5 = 0x656E6F646E616261;
    v7 = 0xE900000000000064;
  }

  v8 = 0x75426C65636E6163;
  if (*a1)
  {
    v4 = 0xEF7061546E6F7474;
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
    v9 = v5;
  }

  if (v3 <= 1)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  v11 = 0xE700000000000000;
  v12 = 0xD000000000000012;
  if (*a2 != 2)
  {
    v12 = 0x656E6F646E616261;
    v6 = 0xE900000000000064;
  }

  if (*a2)
  {
    v2 = 0x75426C65636E6163;
    v11 = 0xEF7061546E6F7474;
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
    v14 = v6;
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

uint64_t sub_255F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E45686372616573 && a2 == 0xEF646F6874654D64)
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

uint64_t sub_25680(uint64_t a1)
{
  v2 = sub_259EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_256BC(uint64_t a1)
{
  v2 = sub_259EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchEndData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_27E960, &qword_1E6E78);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_259EC();
  sub_1E1E00();
  v12 = v8;
  sub_25A40();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}