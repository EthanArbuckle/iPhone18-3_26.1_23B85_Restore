uint64_t sub_B8F58(uint64_t result, char **a2, __int128 *a3)
{
  v16 = a3;
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v14 = *v16;
      v15 = v14;

      sub_9FF94(&v15, v13);
      v17._countAndFlagsBits = 64;
      v17._object = 0xE100000000000000;
      sub_D66D0(v17);

      v18._countAndFlagsBits = v7;
      v18._object = v6;
      sub_D66D0(v18);

      v8 = v14;
      v9 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_A5A6C(0, *(v9 + 2) + 1, 1, v9);
        *a2 = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_A5A6C((v11 > 1), v12 + 1, 1, v9);
        *a2 = v9;
      }

      *(v9 + 2) = v12 + 1;
      *&v9[16 * v12 + 32] = v8;

      v5 += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_B90A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1682535268 && a2 == 0xE400000000000000;
  if (v3 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64496C69616D65 && a2 == 0xE700000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000E9EB0 == a2 || (sub_D6C20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73657361696C61 && a2 == 0xE700000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F446D6F74737563 && a2 == 0xED0000736E69616DLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_D6C20();

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

uint64_t sub_B92B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_66D4(&qword_129590, &unk_E4D10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_BAC40();
  sub_D6CF0();
  if (v2)
  {
    return sub_67D4(a1);
  }

  LOBYTE(v36[0]) = 0;
  v11 = sub_D6B40();
  v13 = v12;
  LOBYTE(v36[0]) = 1;
  v28 = sub_D6B00();
  v30 = v14;
  LOBYTE(v36[0]) = 2;
  v27 = sub_D6B40();
  v29 = v15;
  sub_66D4(&qword_129560, &qword_E4D00);
  LOBYTE(v31) = 3;
  sub_BAA90();
  sub_D6B70();
  v26 = v36[0];
  sub_66D4(&qword_128A58, qword_E2FB0);
  LOBYTE(v31) = 4;
  sub_BAC94();
  sub_D6B70();
  v25 = v36[0];
  sub_66D4(&qword_128A60, &qword_E4D20);
  v37 = 5;
  sub_BAD6C();
  sub_D6B30();
  (*(v6 + 8))(v9, v5);
  v24 = v38;
  *&v31 = v11;
  *(&v31 + 1) = v13;
  v16 = v28;
  v18 = v29;
  v17 = v30;
  *&v32 = v28;
  *(&v32 + 1) = v30;
  *&v33 = v27;
  *(&v33 + 1) = v29;
  v19 = v26;
  *&v34 = v26;
  *(&v34 + 1) = v25;
  v35 = v38;
  sub_63AE8(&v31, v36);
  sub_67D4(a1);
  v36[0] = v11;
  v36[1] = v13;
  v36[2] = v16;
  v36[3] = v17;
  v36[4] = v27;
  v36[5] = v18;
  v36[6] = v19;
  v36[7] = v25;
  v36[8] = v24;
  result = sub_80370(v36);
  v21 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v21;
  *(a2 + 64) = v35;
  v22 = v32;
  *a2 = v31;
  *(a2 + 16) = v22;
  return result;
}

uint64_t sub_B9774(uint64_t *a1)
{
  v3 = sub_66D4(&qword_129778, &qword_E5860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_6648(a1, a1[3]);
  sub_BCB9C();
  sub_D6CF0();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_D6B40();
    v10[14] = 1;
    sub_D6B50();
    (*(v4 + 8))(v7, v3);
  }

  sub_67D4(a1);
  return v8;
}

uint64_t sub_B994C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C69616D65 && a2 == 0xE700000000000000;
  if (v4 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6553776F6C6C61 && a2 == 0xED00006D6F724664 || (sub_D6C20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_D6C20();

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

uint64_t sub_B9AFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_66D4(&qword_129630, &qword_E4D60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_BBD04();
  sub_D6CF0();
  if (v2)
  {
    return sub_67D4(a1);
  }

  LOBYTE(v38[0]) = 0;
  v11 = sub_D6B40();
  v32 = v12;
  LOBYTE(v38[0]) = 1;
  *&v31 = sub_D6B40();
  *(&v31 + 1) = v13;
  LOBYTE(v38[0]) = 2;
  v44 = sub_D6B50();
  LOBYTE(v38[0]) = 3;
  v29 = sub_D6B00();
  v30 = v14;
  v45 = 4;
  v15 = sub_D6B00();
  v44 &= 1u;
  v16 = v44;
  v17 = *(v6 + 8);
  v18 = v15;
  v28 = v19;
  v17(v9, v5);
  v21 = *(&v31 + 1);
  v20 = v32;
  *&v33 = v11;
  *(&v33 + 1) = v32;
  v22 = v31;
  v34 = v31;
  LOBYTE(v35) = v16;
  *(&v35 + 1) = v29;
  *&v36 = v30;
  v23 = v28;
  *(&v36 + 1) = v18;
  v37 = v28;
  sub_13E98(&v33, v38);
  sub_67D4(a1);
  v38[0] = v11;
  v38[1] = v20;
  v38[2] = v22;
  v38[3] = v21;
  v39 = v44;
  v40 = v29;
  v41 = v30;
  v42 = v18;
  v43 = v23;
  result = sub_1409C(v38);
  v25 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v25;
  *(a2 + 64) = v37;
  v26 = v34;
  *a2 = v33;
  *(a2 + 16) = v26;
  return result;
}

uint64_t sub_B9E68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C69616D65 && a2 == 0xE700000000000000;
  if (v4 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000E9EB0 == a2 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6576697463417369 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_D6C20();

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

uint64_t sub_BA01C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_66D4(&qword_129550, &qword_E4CF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_BAA3C();
  sub_D6CF0();
  if (v2)
  {
    return sub_67D4(a1);
  }

  LOBYTE(v33[0]) = 0;
  v11 = sub_D6B40();
  v29 = v12;
  sub_66D4(&qword_129560, &qword_E4D00);
  LOBYTE(v30) = 1;
  sub_BAA90();
  sub_D6B70();
  v28 = v33[0];
  LOBYTE(v33[0]) = 2;
  v26 = sub_D6B00();
  v27 = v13;
  LOBYTE(v33[0]) = 3;
  v24 = sub_D6B00();
  v25 = v14;
  v36 = 4;
  v15 = sub_D6B50();
  (*(v6 + 8))(v9, v5);
  v35 = v15 & 1;
  v17 = v28;
  v16 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v18 = v26;
  v19 = v27;
  *&v31 = v28;
  *(&v31 + 1) = v26;
  *v32 = v27;
  *&v32[8] = v24;
  v20 = v25;
  *&v32[16] = v25;
  v32[24] = v35;
  sub_5842C(&v30, v33);
  sub_67D4(a1);
  v33[0] = v11;
  v33[1] = v16;
  v33[2] = v17;
  v33[3] = v18;
  v33[4] = v19;
  v33[5] = v24;
  v33[6] = v20;
  v34 = v35;
  result = sub_584E0(v33);
  v22 = v31;
  *a2 = v30;
  a2[1] = v22;
  a2[2] = *v32;
  *(a2 + 41) = *&v32[9];
  return result;
}

uint64_t sub_BA3BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4564726177726F66 && a2 == 0xEC0000006C69616DLL;
  if (v4 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000000000E9E70 == a2 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000000000E9E90 == a2 || (sub_D6C20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461636176 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_D6C20();

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

uint64_t sub_BA530@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_66D4(&qword_129528, &qword_E4CE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_BA924();
  sub_D6CF0();
  if (v2)
  {
    v55 = v2;
    v11 = 0;
    v12 = 0;
    v13 = 2;
    v14 = 2;
LABEL_4:
    sub_67D4(a1);
    v46[0] = v14;
    v47 = v12;
    v48 = v11;
    v49 = v13;
    v50 = 0;
    v51 = 0;
    v52 = 1;
    v53 = 0u;
    v54 = 0u;
    return sub_B43D4(v46);
  }

  v46[0] = 0;
  v14 = sub_D6B10();
  v46[0] = 1;
  v12 = sub_D6B00();
  v11 = v16;
  v31 = a2;
  v46[0] = 2;
  v17 = sub_D6B10();
  v55 = 0;
  v13 = v17;
  v38 = 3;
  sub_BA978();
  v18 = v55;
  sub_D6B30();
  v55 = v18;
  if (v18)
  {
    (*(v6 + 8))(v9, v5);
    goto LABEL_4;
  }

  (*(v6 + 8))(v9, v5);
  v19 = v39;
  v20 = v40;
  v27 = v39;
  v22 = v41;
  v21 = v42;
  v30 = v43;
  v28 = v44;
  v29 = v45;
  sub_31650(0, 0, 1);
  LOBYTE(v32) = v14;
  *(&v32 + 1) = v12;
  *&v33 = v11;
  BYTE8(v33) = v13;
  *&v34 = v19;
  *(&v34 + 1) = v20;
  *&v35 = v22;
  *(&v35 + 1) = v21;
  *&v36 = v30;
  v23 = v28;
  *(&v36 + 1) = v28;
  v37 = v29;
  sub_B4294(&v32, v46);
  sub_67D4(a1);
  v46[0] = v14;
  v47 = v12;
  v48 = v11;
  v49 = v13;
  v50 = v27;
  v51 = v20;
  v52 = v22;
  *&v53 = v21;
  *(&v53 + 1) = v30;
  v54 = __PAIR128__(v29, v23);
  result = sub_B43D4(v46);
  v24 = v35;
  v25 = v31;
  *(v31 + 32) = v34;
  *(v25 + 48) = v24;
  *(v25 + 64) = v36;
  *(v25 + 80) = v37;
  v26 = v33;
  *v25 = v32;
  *(v25 + 16) = v26;
  return result;
}

unint64_t sub_BA924()
{
  result = qword_129530;
  if (!qword_129530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129530);
  }

  return result;
}

unint64_t sub_BA978()
{
  result = qword_129538;
  if (!qword_129538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129538);
  }

  return result;
}

uint64_t sub_BA9CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_129548, &qword_E4CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_BAA3C()
{
  result = qword_129558;
  if (!qword_129558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129558);
  }

  return result;
}

unint64_t sub_BAA90()
{
  result = qword_129568;
  if (!qword_129568)
  {
    sub_6110(&qword_129560, &qword_E4D00);
    sub_BAB14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129568);
  }

  return result;
}

unint64_t sub_BAB14()
{
  result = qword_129570;
  if (!qword_129570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129570);
  }

  return result;
}

unint64_t sub_BAB68()
{
  result = qword_129580;
  if (!qword_129580)
  {
    sub_6110(&qword_129560, &qword_E4D00);
    sub_BABEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129580);
  }

  return result;
}

unint64_t sub_BABEC()
{
  result = qword_129588;
  if (!qword_129588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129588);
  }

  return result;
}

unint64_t sub_BAC40()
{
  result = qword_129598;
  if (!qword_129598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129598);
  }

  return result;
}

unint64_t sub_BAC94()
{
  result = qword_1295A0;
  if (!qword_1295A0)
  {
    sub_6110(&qword_128A58, qword_E2FB0);
    sub_BAD18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1295A0);
  }

  return result;
}

unint64_t sub_BAD18()
{
  result = qword_1295A8;
  if (!qword_1295A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1295A8);
  }

  return result;
}

unint64_t sub_BAD6C()
{
  result = qword_1295B0;
  if (!qword_1295B0)
  {
    sub_6110(&qword_128A60, &qword_E4D20);
    sub_BADF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1295B0);
  }

  return result;
}

unint64_t sub_BADF0()
{
  result = qword_1295B8;
  if (!qword_1295B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1295B8);
  }

  return result;
}

unint64_t sub_BAE44()
{
  result = qword_1295C8;
  if (!qword_1295C8)
  {
    sub_6110(&qword_128A58, qword_E2FB0);
    sub_469C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1295C8);
  }

  return result;
}

unint64_t sub_BAEC8()
{
  result = qword_1295D0;
  if (!qword_1295D0)
  {
    sub_6110(&qword_128A60, &qword_E4D20);
    sub_13D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1295D0);
  }

  return result;
}

uint64_t sub_BAF4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7541656C62616E65 && a2 == 0xEF796C7065526F74;
  if (v4 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000000E9EF0 == a2 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461636176 && a2 == 0xEF65746144646E45 || (sub_D6C20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000E9F10 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_D6C20();

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

uint64_t sub_BB0D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_66D4(&qword_1295F0, &qword_E4D40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_BB6EC();
  sub_D6CF0();
  if (v2)
  {
    sub_67D4(a1);
  }

  else
  {
    v32 = 0;
    v11 = sub_D6B10();
    v31 = 1;
    v12 = sub_D6B00();
    v14 = v13;
    v28 = v12;
    v30 = 2;
    v15 = sub_D6B00();
    v17 = v16;
    v27 = v15;
    v29 = 3;
    v18 = sub_D6B00();
    v19 = *(v6 + 8);
    v26 = v18;
    v20 = v9;
    v22 = v21;
    v19(v20, v5);

    sub_67D4(a1);

    *a2 = v11;
    v24 = v27;
    *(a2 + 8) = v28;
    *(a2 + 16) = v14;
    *(a2 + 24) = v24;
    *(a2 + 32) = v17;
    *(a2 + 40) = v26;
    *(a2 + 48) = v22;
  }

  return result;
}

uint64_t sub_BB360(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000000000E9ED0 == a2 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69614D6873617274 && a2 == 0xEE004449786F626CLL || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C69614D746E6573 && a2 == 0xEF656D614E786F62)
  {

    return 2;
  }

  else
  {
    v5 = sub_D6C20();

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

uint64_t sub_BB494@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_66D4(&qword_1295D8, &qword_E4D30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_BB698();
  sub_D6CF0();
  if (v2)
  {
    return sub_67D4(a1);
  }

  v27 = 0;
  v11 = sub_D6B00();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v14 = sub_D6B00();
  v16 = v15;
  v23 = v14;
  v25 = 2;
  v17 = sub_D6B00();
  v18 = v9;
  v20 = v19;
  (*(v6 + 8))(v18, v5);
  result = sub_67D4(a1);
  v22 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v16;
  a2[4] = v17;
  a2[5] = v20;
  return result;
}

unint64_t sub_BB698()
{
  result = qword_1295E0;
  if (!qword_1295E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1295E0);
  }

  return result;
}

unint64_t sub_BB6EC()
{
  result = qword_1295F8;
  if (!qword_1295F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1295F8);
  }

  return result;
}

uint64_t sub_BB740(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449626F6ALL && a2 == 0xE500000000000000;
  if (v4 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (sub_D6C20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_D6C20();

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

uint64_t sub_BB8EC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_66D4(&qword_129608, &qword_E4D50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_BBC08();
  sub_D6CF0();
  if (v2)
  {
    return sub_67D4(a1);
  }

  LOBYTE(v31[0]) = 0;
  v11 = sub_D6B40();
  v13 = v12;
  v27 = v11;
  LOBYTE(v31[0]) = 1;
  *&v26 = sub_D6B40();
  *(&v26 + 1) = v14;
  LOBYTE(v28) = 2;
  sub_BBC5C();
  sub_D6B70();
  v25 = LOBYTE(v31[0]);
  LOBYTE(v31[0]) = 3;
  v24 = sub_D6B60();
  v37 = 4;
  v15 = sub_D6B20();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v17 &= 1u;
  v36 = v17;
  v20 = *(&v26 + 1);
  v19 = v27;
  *&v28 = v27;
  *(&v28 + 1) = v13;
  v29 = v26;
  v21 = v25;
  v30[0] = v25;
  *&v30[8] = v24;
  *&v30[16] = v18;
  v30[24] = v17;
  sub_15C4C(&v28, v31);
  sub_67D4(a1);
  v31[0] = v19;
  v31[1] = v13;
  v31[2] = v26;
  v31[3] = v20;
  v32 = v21;
  v33 = v24;
  v34 = v18;
  v35 = v17;
  result = sub_3C4F8(v31);
  v23 = v29;
  *a2 = v28;
  a2[1] = v23;
  a2[2] = *v30;
  *(a2 + 41) = *&v30[9];
  return result;
}

unint64_t sub_BBC08()
{
  result = qword_129610;
  if (!qword_129610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129610);
  }

  return result;
}

unint64_t sub_BBC5C()
{
  result = qword_129618;
  if (!qword_129618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129618);
  }

  return result;
}

unint64_t sub_BBCB0()
{
  result = qword_129628;
  if (!qword_129628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129628);
  }

  return result;
}

unint64_t sub_BBD04()
{
  result = qword_129638;
  if (!qword_129638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129638);
  }

  return result;
}

unint64_t sub_BBD58()
{
  result = qword_129650;
  if (!qword_129650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129650);
  }

  return result;
}

uint64_t sub_BBDAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_BBDF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportProviderImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_BBE58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_BBEB8()
{
  result = qword_129688;
  if (!qword_129688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129688);
  }

  return result;
}

uint64_t sub_BBF0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_BC014(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_BC05C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ImportStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImportStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_BC200()
{
  result = qword_129698;
  if (!qword_129698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129698);
  }

  return result;
}

unint64_t sub_BC258()
{
  result = qword_1296A0;
  if (!qword_1296A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296A0);
  }

  return result;
}

unint64_t sub_BC2B0()
{
  result = qword_1296A8;
  if (!qword_1296A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296A8);
  }

  return result;
}

unint64_t sub_BC308()
{
  result = qword_1296B0;
  if (!qword_1296B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296B0);
  }

  return result;
}

unint64_t sub_BC360()
{
  result = qword_1296B8;
  if (!qword_1296B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296B8);
  }

  return result;
}

unint64_t sub_BC3B8()
{
  result = qword_1296C0;
  if (!qword_1296C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296C0);
  }

  return result;
}

unint64_t sub_BC410()
{
  result = qword_1296C8;
  if (!qword_1296C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296C8);
  }

  return result;
}

unint64_t sub_BC468()
{
  result = qword_1296D0;
  if (!qword_1296D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296D0);
  }

  return result;
}

unint64_t sub_BC4C0()
{
  result = qword_1296D8;
  if (!qword_1296D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296D8);
  }

  return result;
}

unint64_t sub_BC518()
{
  result = qword_1296E0;
  if (!qword_1296E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296E0);
  }

  return result;
}

unint64_t sub_BC570()
{
  result = qword_1296E8;
  if (!qword_1296E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296E8);
  }

  return result;
}

unint64_t sub_BC5C8()
{
  result = qword_1296F0;
  if (!qword_1296F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296F0);
  }

  return result;
}

unint64_t sub_BC620()
{
  result = qword_1296F8;
  if (!qword_1296F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1296F8);
  }

  return result;
}

unint64_t sub_BC678()
{
  result = qword_129700;
  if (!qword_129700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129700);
  }

  return result;
}

unint64_t sub_BC6D0()
{
  result = qword_129708;
  if (!qword_129708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129708);
  }

  return result;
}

unint64_t sub_BC728()
{
  result = qword_129710;
  if (!qword_129710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129710);
  }

  return result;
}

unint64_t sub_BC780()
{
  result = qword_129718;
  if (!qword_129718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129718);
  }

  return result;
}

unint64_t sub_BC7D8()
{
  result = qword_129720;
  if (!qword_129720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129720);
  }

  return result;
}

unint64_t sub_BC830()
{
  result = qword_129728;
  if (!qword_129728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129728);
  }

  return result;
}

unint64_t sub_BC888()
{
  result = qword_129730;
  if (!qword_129730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129730);
  }

  return result;
}

unint64_t sub_BC8E0()
{
  result = qword_129738;
  if (!qword_129738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129738);
  }

  return result;
}

unint64_t sub_BC938()
{
  result = qword_129740;
  if (!qword_129740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129740);
  }

  return result;
}

unint64_t sub_BC990()
{
  result = qword_129748;
  if (!qword_129748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129748);
  }

  return result;
}

unint64_t sub_BC9E8()
{
  result = qword_129750;
  if (!qword_129750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129750);
  }

  return result;
}

unint64_t sub_BCA40()
{
  result = qword_129758;
  if (!qword_129758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129758);
  }

  return result;
}

unint64_t sub_BCA98()
{
  result = qword_129760;
  if (!qword_129760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129760);
  }

  return result;
}

unint64_t sub_BCAF0()
{
  result = qword_129768;
  if (!qword_129768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129768);
  }

  return result;
}

unint64_t sub_BCB48()
{
  result = qword_129770;
  if (!qword_129770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129770);
  }

  return result;
}

unint64_t sub_BCB9C()
{
  result = qword_129780;
  if (!qword_129780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129780);
  }

  return result;
}

unint64_t sub_BCBF0()
{
  result = qword_129790;
  if (!qword_129790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129790);
  }

  return result;
}

uint64_t sub_BCC44(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1141A0;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_BCC90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000E9F30 == a2 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
  {

    return 3;
  }

  else
  {
    v6 = sub_D6C20();

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

unint64_t sub_BCE10()
{
  result = qword_129798;
  if (!qword_129798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129798);
  }

  return result;
}

unint64_t sub_BCE68()
{
  result = qword_1297A0;
  if (!qword_1297A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1297A0);
  }

  return result;
}

unint64_t sub_BCEC0()
{
  result = qword_1297A8;
  if (!qword_1297A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1297A8);
  }

  return result;
}

uint64_t sub_BCFF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = a1;
  v48 = a2;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v47 - v9;
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v11 = sub_6610(v4, qword_137988);
  v49 = v5[2];
  v49(v10, v11, v4);
  v12 = sub_D5320();
  v13 = sub_D68A0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "[Add Alias] create started", v14, 2u);
  }

  v15 = v5[1];
  v52 = v5 + 1;
  v50 = v15;
  v15(v10, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v16 = v3;
  v17 = *(v3 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_rules);

  v19 = sub_14E94(v18);
  v21 = v20;

  if (v21)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *&v58 = v19;
    *(&v58 + 1) = v21;
    v59 = xmmword_DBAE0;
    *&v60[0] = 0;
    BYTE8(v60[0]) = 1;

    sub_D5580();
    v22 = v51;
    v49(v51, v11, v4);

    v23 = sub_D5320();
    v24 = sub_D68A0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v58 = v26;
      *v25 = 136315138;
      v27 = sub_558F0(v19, v21, &v58);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_0, v23, v24, "%s", v25, 0xCu);
      sub_67D4(v26);
    }

    else
    {
    }

    return v50(v22, v4);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v58) = 1;

    sub_D5580();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v28 = v58;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v29 = v58;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v30 = v58;

    v31 = HIBYTE(*(&v30 + 1)) & 0xFLL;
    if ((*(&v30 + 1) & 0x2000000000000000) == 0)
    {
      v31 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_D5570();

      v32 = *(&v58 + 1);
      v31 = v58;
    }

    else
    {
      v32 = 0;
    }

    v56 = v28;
    *v57 = &off_113610;
    *&v57[8] = v29;
    *&v57[24] = v31;
    *&v57[32] = v32;
    v57[40] = 1;
    v58 = v28;
    v59 = *v57;
    v60[0] = *&v57[16];
    *(v60 + 9) = *&v57[25];
    v34 = sub_6648((v16 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_repository), *(v16 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_repository + 24));
    v35 = *(*v34 + 16);
    v36 = *(*v34 + 24);
    v55[3] = &type metadata for Alias;
    v55[4] = sub_469C8();
    v37 = swift_allocObject();
    v55[0] = v37;
    v38 = v59;
    v37[1] = v58;
    v37[2] = v38;
    v37[3] = v60[0];
    *(v37 + 57) = *(v60 + 9);
    objc_allocWithZone(type metadata accessor for CreateAliasAPIRequest());
    sub_13E28(v55, v54);
    v39 = v35;
    v40 = v36;
    sub_5842C(&v56, v53);
    v41 = sub_45BC4(v35, v40, v54);

    sub_13EF4(v55);
    v42 = sub_1EB80();

    v53[0] = v42;
    v43 = swift_allocObject();
    swift_weakInit();
    v44 = swift_allocObject();
    v45 = v59;
    *(v44 + 16) = v58;
    *(v44 + 32) = v45;
    *(v44 + 48) = v60[0];
    *(v44 + 57) = *(v60 + 9);
    *(v44 + 80) = v43;
    v46 = swift_allocObject();
    *(v46 + 16) = v47;
    *(v46 + 24) = v48;

    sub_66D4(&qword_121F38, &qword_D9CA0);
    sub_BED48(&qword_121F40, &qword_121F38, &qword_D9CA0);
    sub_D55D0();

    swift_beginAccess();
    sub_D54B0();
    swift_endAccess();
  }
}

double sub_BD7B8@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_BD844()
{
  v1 = v0;
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v21) = 1;

  sub_D5580();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v7 = sub_6610(v2, qword_137988);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_D5320();
  v9 = sub_D68A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "[Add Alias] Fetch validation rules", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v11 = sub_6648((v1 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_repository), *(v1 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_repository + 24));
  v12 = *(*v11 + 16);
  v13 = *(*v11 + 24);
  v14 = objc_allocWithZone(type metadata accessor for iCloudMailValidationRulesAPIRequest());
  v15 = v12;
  v16 = v13;
  v17 = sub_324A0(v12, v16, 0, 0xF000000000000000);

  v18 = sub_1FA1C();
  v21 = v18;
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  sub_66D4(&qword_129900, qword_E5BA0);
  sub_BED48(qword_129908, &qword_129900, qword_E5BA0);
  sub_D55D0();

  swift_beginAccess();
  sub_D54B0();
  swift_endAccess();
}

uint64_t sub_BDBA0(uint64_t a1)
{
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 8))
  {
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v7 = sub_6610(v2, qword_137988);
    (*(v3 + 16))(v6, v7, v2);
    v8 = sub_D5320();
    v9 = sub_D68B0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "[Add Alias] Unable to fetch email validation rules", v10, 2u);
    }

    (*(v3 + 8))(v6, v2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v12[7] = 0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_BDDA0(uint64_t *a1)
{
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v8 = sub_6610(v2, qword_137988);
  (*(v3 + 16))(v6, v8, v2);

  v9 = sub_D5320();
  v10 = sub_D68A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(v7 + 16);

    _os_log_impl(&dword_0, v9, v10, "[Add Alias] Email validation rules count: %ld", v11, 0xCu);
  }

  else
  {
  }

  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(result + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_rules);
    *(result + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_rules) = v7;
  }

  return result;
}

uint64_t sub_BDFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v42 - v11;
  v14 = *a1;
  v13 = *(a1 + 8);
  v15 = *(a1 + 16);
  v45 = *(a1 + 24);
  v47 = *(a1 + 32);
  v48 = v15;
  v44 = *(a1 + 40);
  v16 = sub_3E120();
  v49 = v13;
  if (v16)
  {
    v43 = sub_D6550();
    v18 = v17;

    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v19 = sub_6610(v5, qword_137988);
    (*(v6 + 16))(v12, v19, v5);

    v20 = sub_D5320();
    v21 = sub_D68B0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v42 = a3;
      v23 = v22;
      v24 = swift_slowAlloc();
      v46 = v14;
      v25 = v24;
      v51 = v24;
      *v23 = 136642819;
      v26 = sub_558F0(v43, v18, &v51);

      *(v23 + 4) = v26;
      v13 = v49;
      _os_log_impl(&dword_0, v20, v21, "[Add Alias] params: %{sensitive}s", v23, 0xCu);
      sub_67D4(v25);
      v14 = v46;
    }

    else
    {
    }

    (*(v6 + 8))(v12, v5);
  }

  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v27 = sub_6610(v5, qword_137988);
  (*(v6 + 16))(v10, v27, v5);

  v28 = sub_D5320();
  v29 = sub_D68B0();

  if (os_log_type_enabled(v28, v29))
  {
    v46 = v14;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v57 = v31;
    *v30 = 136315138;
    if (v13)
    {
      v51 = v46;
      v52 = v13;
      v53 = v48;
      LOBYTE(v54) = v45 & 1;
      v55 = v47;
      v56 = v44 & 1;
      sub_6780();
      v32 = sub_D6C60();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0xE000000000000000;
    }

    v35 = sub_558F0(v32, v34, &v57);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_0, v28, v29, "[Add Alias] create failed: %s", v30, 0xCu);
    sub_67D4(v31);

    (*(v6 + 8))(v10, v5);
    v13 = v49;
    v14 = v46;
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v38 = v47;
  v37 = v48;
  if (Strong)
  {
    if (v13)
    {
      v39 = v45 & 1;
      v40 = v44 & 1;
    }

    else
    {
      v14 = 0;
      v37 = 0;
      v39 = 0;
      v38 = 0;
      v40 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v51 = v14;
    v52 = v49;
    v53 = v37;
    v54 = v39;
    v55 = v38;
    v56 = v40;

    sub_D5580();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v50 = 0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_BE540(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v8 = sub_6610(v3, qword_137988);
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_D5320();
  v10 = sub_D68A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "[Add Alias] create successful", v11, 2u);
  }

  v12 = (*(v4 + 8))(v7, v3);
  return a2(v12);
}

uint64_t sub_BE6E8()
{
  v1 = OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__fullName;
  v2 = sub_66D4(&qword_121948, &unk_DC5C0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__emailId, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__label, v2);
  v4 = OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__isAdding;
  v5 = sub_66D4(&qword_121068, &qword_DBEE0);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v7 = OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__error;
  v8 = sub_66D4(&qword_121070, &qword_DAFE0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v6(v0 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__isFetchingRules, v5);
  v9 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_placeholderName + 8);

  v10 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_rules);

  v11 = OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel__validationMessage;
  v12 = sub_66D4(&qword_124830, &qword_E1560);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_cancellables);

  sub_67D4((v0 + OBJC_IVAR____TtCV18icloudMailSettings14MSAddAliasView9ViewModel_repository));
  return v0;
}

uint64_t sub_BE8E8()
{
  sub_BE6E8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t _s11descr112E21O9ViewModelCMa()
{
  result = qword_129828;
  if (!qword_129828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_BE994()
{
  sub_116AC(319, &qword_121638);
  if (v1 <= 0x3F)
  {
    v9 = *(v0 - 8) + 64;
    sub_116AC(319, &qword_120ED8);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_6158(319, &qword_120EE0, &qword_120EE8, &qword_D8DD0);
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        sub_6158(319, &unk_127D10, &qword_124838, &qword_E1490);
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_BEC04()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_BEC54()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_BEC8C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_BECF0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_BED48(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_6110(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_BEDA4(uint64_t a1)
{
  sub_6C10();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    type metadata accessor for MSRuleBaseView.RuleFormElement();
    sub_D67E0();
    if (v4 <= 0x3F)
    {
      swift_getWitnessTable();
      sub_D5760();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_BEE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_66D4(&qword_121090, &unk_D8CC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_BEF74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_66D4(&qword_121090, &unk_D8CC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_BF070(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_BF100(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_BF1B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_D5BE0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_D5BF0();
}

uint64_t sub_BF2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_D5BE0();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_D5BF0();
}

uint64_t sub_BF3A0(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_D6440();
}

uint64_t sub_BF570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(a6 - 8) + 64);
  v7 = __chkstk_darwin(a1);
  v8(v7);
  return sub_D63A0();
}

uint64_t sub_BF640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v74 = a1;
  v77 = *(a1 - 8);
  v78 = *(v77 + 64);
  __chkstk_darwin(a1);
  v75 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_D5840();
  sub_6110(&qword_129A10, &qword_E5D38);
  v73 = *(a1 + 16);
  v4 = type metadata accessor for MSRuleBaseView.RuleFormElement();
  v5 = sub_D67E0();
  v6 = sub_6110(&qword_129A18, &qword_E5D40);
  WitnessTable = swift_getWitnessTable();
  *&v90 = v5;
  *(&v90 + 1) = &type metadata for String;
  *&v91 = v6;
  *(&v91 + 1) = WitnessTable;
  *&v92[0] = &protocol witness table for String;
  sub_D6350();
  v89 = sub_CB274();
  swift_getWitnessTable();
  sub_D62A0();
  sub_6110(&qword_129B50, &qword_E5DE8);
  sub_D5C00();
  v8 = sub_6110(&qword_129A30, &qword_E5D48);
  v9 = swift_getWitnessTable();
  *&v90 = v5;
  *(&v90 + 1) = v4;
  *&v91 = v8;
  *(&v91 + 1) = WitnessTable;
  *&v92[0] = v9;
  sub_D6350();
  v88 = sub_CB32C();
  swift_getWitnessTable();
  sub_D62A0();
  sub_D6930();
  sub_D5C00();
  sub_D5C00();
  v10 = sub_D5C00();
  *&v90 = v5;
  *(&v90 + 1) = v4;
  *&v91 = v10;
  *(&v91 + 1) = WitnessTable;
  *&v92[0] = v9;
  sub_D6350();
  sub_6110(&qword_128BF8, &qword_E5DF0);
  sub_D63B0();
  swift_getTupleTypeMetadata2();
  v11 = sub_D6430();
  v12 = swift_getWitnessTable();
  *&v90 = &type metadata for Never;
  *(&v90 + 1) = v11;
  *&v91 = &protocol witness table for Never;
  *(&v91 + 1) = v12;
  v13 = sub_D5E70();
  v14 = swift_getWitnessTable();
  v15 = sub_DFAC();
  *&v90 = v13;
  *(&v90 + 1) = &type metadata for String;
  *&v91 = v14;
  *(&v91 + 1) = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v90 = v13;
  *(&v90 + 1) = &type metadata for String;
  *&v91 = v14;
  *(&v91 + 1) = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v90 = OpaqueTypeMetadata2;
  *(&v90 + 1) = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  v19 = sub_6110(&qword_129B58, &qword_E5DF8);
  *&v90 = OpaqueTypeMetadata2;
  *(&v90 + 1) = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = sub_109A8(&qword_129B60, &qword_129B58, &qword_E5DF8);
  *&v90 = v18;
  *(&v90 + 1) = v19;
  *&v91 = v20;
  *(&v91 + 1) = v21;
  v61 = swift_getOpaqueTypeMetadata2();
  *&v90 = v18;
  *(&v90 + 1) = v19;
  *&v91 = v20;
  *(&v91 + 1) = v21;
  swift_getOpaqueTypeConformance2();
  v22 = sub_D58F0();
  v65 = *(v22 - 8);
  v23 = *(v65 + 64);
  __chkstk_darwin(v22);
  v25 = &v58 - v24;
  v26 = sub_D58D0();
  v63 = v26;
  v72 = *(v26 - 8);
  v27 = *(v72 + 64);
  __chkstk_darwin(v26);
  v60 = &v58 - v28;
  v29 = sub_6110(&qword_121178, &qword_DB0C0);
  v71 = v29;
  v58 = swift_getWitnessTable();
  v86 = v58;
  v87 = &protocol witness table for _AppearanceActionModifier;
  v30 = swift_getWitnessTable();
  v62 = v30;
  v31 = sub_E000();
  v70 = v31;
  v69 = sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
  *&v90 = v26;
  *(&v90 + 1) = &type metadata for MSError;
  *&v91 = v29;
  *(&v91 + 1) = v30;
  *&v92[0] = v31;
  *(&v92[0] + 1) = v69;
  v66 = &opaque type descriptor for <<opaque return type of View.alert<A, B>(isPresented:error:actions:)>>;
  v32 = swift_getOpaqueTypeMetadata2();
  v33 = *(v32 - 8);
  v67 = v32;
  v68 = v33;
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32);
  v59 = &v58 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v64 = &v58 - v37;
  v38 = v73;
  v39 = v76;
  v81 = v73;
  v82 = v76;
  sub_D58E0();
  v40 = v77;
  v41 = v74;
  v42 = v75;
  (*(v77 + 16))(v75, v39, v74);
  v43 = (*(v40 + 80) + 24) & ~*(v40 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = v38;
  (*(v40 + 32))(v44 + v43, v42, v41);
  v45 = v60;
  sub_D6140();

  (*(v65 + 8))(v25, v22);
  v46 = (v39 + *(v41 + 48));
  v47 = *v46;
  v48 = v46[1];
  v49 = *(v46 + 16);
  swift_getWitnessTable();
  sub_D5750();
  v80 = v38;
  swift_getKeyPath();
  sub_D5880();

  v90 = v83;
  v91 = v84;
  v92[0] = v85[0];
  *(v92 + 9) = *(v85 + 9);
  v50 = v59;
  v52 = v62;
  v51 = v63;
  sub_5A4AC(&v90);
  v93 = v90;
  sub_E158(&v93);

  v94 = v91;
  v95[0] = v92[0];
  *(v95 + 9) = *(v92 + 9);
  sub_FC3C(&v94, &qword_120EE8, &qword_D8DD0);
  (*(v72 + 8))(v45, v51);
  *&v83 = v51;
  *(&v83 + 1) = &type metadata for MSError;
  *&v84 = v71;
  *(&v84 + 1) = v52;
  *&v85[0] = v70;
  *(&v85[0] + 1) = v69;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = v64;
  v55 = v67;
  sub_5ADA8(v50, v67, v53);
  v56 = *(v68 + 8);
  v56(v50, v55);
  sub_5ADA8(v54, v55, v53);
  return (v56)(v54, v55);
}

uint64_t sub_C003C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a3;
  v91 = a1;
  v4 = sub_D5B20();
  v88 = *(v4 - 8);
  v89 = v4;
  v5 = *(v88 + 64);
  __chkstk_darwin(v4);
  v87 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6110(&qword_129A10, &qword_E5D38);
  v7 = type metadata accessor for MSRuleBaseView.RuleFormElement();
  v8 = sub_D67E0();
  v9 = sub_6110(&qword_129A18, &qword_E5D40);
  WitnessTable = swift_getWitnessTable();
  v96._countAndFlagsBits = v8;
  v96._object = &type metadata for String;
  v97 = v9;
  v98 = WitnessTable;
  v99 = &protocol witness table for String;
  sub_D6350();
  v95 = sub_CB274();
  swift_getWitnessTable();
  sub_D62A0();
  sub_6110(&qword_129B50, &qword_E5DE8);
  sub_D5C00();
  v11 = sub_6110(&qword_129A30, &qword_E5D48);
  v12 = swift_getWitnessTable();
  v96._countAndFlagsBits = v8;
  v96._object = v7;
  v97 = v11;
  v98 = WitnessTable;
  v99 = v12;
  sub_D6350();
  v94 = sub_CB32C();
  swift_getWitnessTable();
  sub_D62A0();
  sub_D6930();
  sub_D5C00();
  sub_D5C00();
  v13 = sub_D5C00();
  v96._countAndFlagsBits = v8;
  v96._object = v7;
  v97 = v13;
  v98 = WitnessTable;
  v99 = v12;
  sub_D6350();
  sub_6110(&qword_128BF8, &qword_E5DF0);
  sub_D63B0();
  swift_getTupleTypeMetadata2();
  v14 = sub_D6430();
  v15 = swift_getWitnessTable();
  v96._countAndFlagsBits = &type metadata for Never;
  v96._object = v14;
  v97 = &protocol witness table for Never;
  v98 = v15;
  v16 = sub_D5E70();
  v86 = *(v16 - 8);
  v17 = *(v86 + 64);
  __chkstk_darwin(v16);
  v19 = &v70 - v18;
  v70 = &v70 - v18;
  v20 = swift_getWitnessTable();
  v21 = sub_DFAC();
  v96._countAndFlagsBits = v16;
  v96._object = &type metadata for String;
  v97 = v20;
  v82 = v20;
  v98 = v21;
  v22 = v21;
  v81 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v85 = *(OpaqueTypeMetadata2 - 8);
  v24 = *(v85 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v83 = &v70 - v25;
  v96._countAndFlagsBits = v16;
  v96._object = &type metadata for String;
  v97 = v20;
  v98 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v96._countAndFlagsBits = OpaqueTypeMetadata2;
  v96._object = OpaqueTypeConformance2;
  v73 = OpaqueTypeMetadata2;
  v27 = OpaqueTypeConformance2;
  v74 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeMetadata2();
  v84 = *(v28 - 8);
  v29 = *(v84 + 64);
  __chkstk_darwin(v28);
  v75 = &v70 - v30;
  v31 = sub_6110(&qword_129B58, &qword_E5DF8);
  v78 = v31;
  v96._countAndFlagsBits = OpaqueTypeMetadata2;
  v96._object = v27;
  v32 = swift_getOpaqueTypeConformance2();
  v77 = v32;
  v76 = sub_109A8(&qword_129B60, &qword_129B58, &qword_E5DF8);
  v96._countAndFlagsBits = v28;
  v96._object = v31;
  v97 = v32;
  v98 = v76;
  v79 = &opaque type descriptor for <<opaque return type of View.toolbar<A>(content:)>>;
  v33 = swift_getOpaqueTypeMetadata2();
  v80 = *(v33 - 8);
  v34 = *(v80 + 64);
  v35 = __chkstk_darwin(v33);
  v37 = &v70 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v72 = &v70 - v38;
  v71 = a2;
  v39 = type metadata accessor for MSRuleBaseView();
  v40 = v91;
  sub_C0A2C(v39, v19);
  v41 = (v40 + *(v39 + 48));
  v42 = *v41;
  v43 = v41[1];
  v44 = *(v41 + 16);
  swift_getWitnessTable();
  v45 = *sub_D5740();
  v46 = (*(v45 + 976))();
  v48 = v47;

  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v50 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v96._countAndFlagsBits = 2777980912;
  v96._object = 0xA400000000000000;
  v100._countAndFlagsBits = v46;
  v100._object = v48;
  sub_D66D0(v100);
  v101._countAndFlagsBits = 2777980912;
  v101._object = 0xA400000000000000;
  sub_D66D0(v101);
  v69._countAndFlagsBits = 0xE000000000000000;
  v102._countAndFlagsBits = v46;
  v102._object = v48;
  v103.value._countAndFlagsBits = 0;
  v103.value._object = 0;
  v51.super.isa = v50;
  v52 = sub_D4E80(v102, v103, v51, v96, v69);
  v54 = v53;

  v96._countAndFlagsBits = v52;
  v96._object = v54;
  v55 = v83;
  v56 = v70;
  sub_D6040();

  (*(v86 + 8))(v56, v16);
  v58 = v87;
  v57 = v88;
  v59 = v89;
  (*(v88 + 104))(v87, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v89);
  v60 = v75;
  v61 = v73;
  sub_D60D0();
  (*(v57 + 8))(v58, v59);
  (*(v85 + 8))(v55, v61);
  v92 = v71;
  v93 = v91;
  v62 = v78;
  v63 = v77;
  v64 = v76;
  sub_D6120();
  (*(v84 + 8))(v60, v28);
  v96._countAndFlagsBits = v28;
  v96._object = v62;
  v97 = v63;
  v98 = v64;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v72;
  sub_5ADA8(v37, v33, v65);
  v67 = *(v80 + 8);
  v67(v37, v33);
  sub_5ADA8(v66, v33, v65);
  return (v67)(v66, v33);
}

uint64_t sub_C0A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  sub_6110(&qword_129A10, &qword_E5D38);
  v3 = *(a1 + 16);
  type metadata accessor for MSRuleBaseView.RuleFormElement();
  sub_D67E0();
  sub_6110(&qword_129A18, &qword_E5D40);
  swift_getWitnessTable();
  sub_D6350();
  v16[8] = sub_CB274();
  swift_getWitnessTable();
  sub_D62A0();
  sub_6110(&qword_129B50, &qword_E5DE8);
  sub_D5C00();
  sub_6110(&qword_129A30, &qword_E5D48);
  WitnessTable = swift_getWitnessTable();
  sub_D6350();
  v16[7] = sub_CB32C();
  swift_getWitnessTable();
  sub_D62A0();
  sub_D6930();
  sub_D5C00();
  sub_D5C00();
  sub_D5C00();
  v16[13] = WitnessTable;
  sub_D6350();
  sub_6110(&qword_128BF8, &qword_E5DF0);
  sub_D63B0();
  swift_getTupleTypeMetadata2();
  v16[9] = &type metadata for Never;
  v16[10] = sub_D6430();
  v16[11] = &protocol witness table for Never;
  v16[12] = swift_getWitnessTable();
  v5 = sub_D5E70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v16 - v11;
  v16[4] = v3;
  v16[5] = v16[0];
  sub_D5E60();
  v13 = swift_getWitnessTable();
  sub_5ADA8(v10, v5, v13);
  v14 = *(v6 + 8);
  v14(v10, v5);
  sub_5ADA8(v12, v5, v13);
  return (v14)(v12, v5);
}

uint64_t sub_C0E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v25 = sub_66D4(&qword_129B68, &unk_E5E40);
  v5 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v7 = &v23 - v6;
  v24 = sub_66D4(&qword_1247D0, &qword_DC3C8);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v24);
  v11 = &v23 - v10;
  v12 = sub_D5C80();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_66D4(&qword_129B70, &unk_E5E50);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  sub_D5C60();
  v29 = a2;
  v30 = a1;
  sub_66D4(&qword_121208, &unk_D8E10);
  sub_E7EC();
  sub_D5920();
  sub_D5C70();
  v27 = a2;
  v28 = a1;
  sub_66D4(&qword_121220, &unk_E0EB0);
  sub_E8DC();
  sub_D5920();
  v19 = *(v25 + 48);
  (*(v15 + 16))(v7, v18, v14);
  v20 = &v7[v19];
  v21 = v24;
  (*(v8 + 16))(v20, v11, v24);
  sub_D5BC0();
  (*(v8 + 8))(v11, v21);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_C1144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v33 = sub_66D4(&qword_121178, &qword_DB0C0);
  v29 = *(v33 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v33);
  v28 = &v28 - v6;
  v30 = sub_66D4(&qword_121298, &qword_E5E90);
  v7 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v9 = &v28 - v8;
  v10 = type metadata accessor for MSRuleBaseView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v31 = sub_D51A0();
  v15 = *(v31 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v31);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + *(v10 + 28));
  v20 = *(v11 + 16);
  v11 += 16;
  v20(v14, a1, v10);
  v21 = (*(v11 + 64) + 24) & ~*(v11 + 64);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  (*(v11 + 16))(v22 + v21, v14, v10);
  if (v19 == 1)
  {
    sub_D5190();
    v23 = v31;
    (*(v15 + 16))(v9, v18, v31);
    swift_storeEnumTagMultiPayload();
    sub_CC6E0(&qword_121218, &type metadata accessor for CloseButton);
    sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
    sub_D5BF0();
    return (*(v15 + 8))(v18, v23);
  }

  else
  {
    v25 = v28;
    sub_D6260();
    v26 = v29;
    v27 = v33;
    (*(v29 + 16))(v9, v25, v33);
    swift_storeEnumTagMultiPayload();
    sub_CC6E0(&qword_121218, &type metadata accessor for CloseButton);
    sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
    sub_D5BF0();
    return (*(v26 + 8))(v25, v27);
  }
}

uint64_t sub_C1618(uint64_t a1)
{
  v19 = sub_D5B10();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_66D4(&qword_1211E8, &qword_D8DA0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v18 - v8);
  v10 = sub_D57E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FBD4(a1, v9, &qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v15 = *v9;
    sub_D68C0();
    v16 = sub_D5DB0();
    sub_D5310();

    sub_D5B00();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  sub_D57D0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_C1894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a3;
  v67 = sub_66D4(&qword_121280, &unk_D8E40);
  v5 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v54 = v50 - v6;
  v64 = sub_66D4(&qword_121288, &unk_E0ED0);
  v7 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v65 = v50 - v8;
  v9 = type metadata accessor for MSRuleBaseView();
  v57 = *(v9 - 8);
  v60 = *(v57 + 64);
  __chkstk_darwin(v9);
  v61 = v50 - v10;
  v63 = sub_66D4(&qword_121258, &unk_D8E30);
  v11 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v53 = v50 - v12;
  v68 = sub_66D4(&qword_121248, &unk_E0EC0);
  v13 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v66 = v50 - v14;
  v15 = sub_66D4(&qword_121290, &qword_D8E50);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = v50 - v17;
  v19 = sub_66D4(&qword_121238, &unk_D8E20);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = v50 - v22;
  v55 = v9;
  v24 = a1;
  v25 = (a1 + *(v9 + 48));
  v27 = *v25;
  v26 = v25[1];
  LODWORD(a1) = *(v25 + 16);
  swift_getWitnessTable();
  v56 = v27;
  v58 = v26;
  v59 = a1;
  v62 = a2;
  v28 = *sub_D5740();
  LOBYTE(a1) = (*(v28 + 784))();

  if (a1)
  {
    sub_D5780();
    (*(v20 + 16))(v18, v23, v19);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    sub_E994();
    sub_D5BF0();
    return (*(v20 + 8))(v23, v19);
  }

  else
  {
    v50[1] = v15;
    v51 = v18;
    v52 = v19;
    v30 = v55;
    v31 = *(v24 + *(v55 + 28));
    v32 = v57 + 16;
    v33 = v61;
    (*(v57 + 16))(v61, v24, v55);
    v34 = (*(v32 + 64) + 24) & ~*(v32 + 64);
    v35 = swift_allocObject();
    *(v35 + 16) = v62;
    (*(v32 + 16))(v35 + v34, v33, v30);
    if (v31 == 1)
    {
      v36 = v53;
      sub_D5150();
      v37 = *sub_D5740();
      v38 = (*(v37 + 832))();

      KeyPath = swift_getKeyPath();
      v40 = swift_allocObject();
      *(v40 + 16) = v38 & 1;
      v41 = (v36 + *(v63 + 36));
      *v41 = KeyPath;
      v41[1] = sub_10ACC;
      v41[2] = v40;
      v42 = &qword_121258;
      v43 = &unk_D8E30;
      sub_FBD4(v36, v65, &qword_121258, &unk_D8E30);
    }

    else
    {
      v36 = v54;
      sub_D6260();
      v45 = *sub_D5740();
      v46 = (*(v45 + 832))();

      v47 = swift_getKeyPath();
      v48 = swift_allocObject();
      *(v48 + 16) = v46 & 1;
      v49 = (v36 + *(v67 + 36));
      *v49 = v47;
      v49[1] = sub_F0D0;
      v49[2] = v48;
      v42 = &qword_121280;
      v43 = &unk_D8E40;
      sub_FBD4(v36, v65, &qword_121280, &unk_D8E40);
    }

    swift_storeEnumTagMultiPayload();
    sub_EA20();
    sub_EB50();
    v44 = v66;
    sub_D5BF0();
    sub_FC3C(v36, v42, v43);
    sub_FBD4(v44, v51, &qword_121248, &unk_E0EC0);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    sub_E994();
    sub_D5BF0();
    return sub_FC3C(v44, &qword_121248, &unk_E0EC0);
  }
}

uint64_t sub_C2108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v22 = a1;
  v6 = type metadata accessor for MSRuleBaseView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v21 - v10;
  v12 = (a1 + *(v9 + 48));
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 16);
  swift_getWitnessTable();
  v16 = *sub_D5740();
  (*(v16 + 792))(1);

  v17 = sub_D5740();
  (*(v7 + 16))(v11, v22, v6);
  v18 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  (*(v7 + 32))(v19 + v18, v11, v6);
  (*(*v17 + 1224))(v24, v19);
}

uint64_t sub_C2330(uint64_t a1)
{
  v2 = sub_D57E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_EC34(v6);
  sub_D57D0();
  (*(v3 + 8))(v6, v2);
  v7 = (a1 + *(type metadata accessor for MSRuleBaseView() + 48));
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  swift_getWitnessTable();
  v11 = sub_D5740();
  v13 = *(v11 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_onDone);
  v12 = *(v11 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_onDone + 8);

  v13(v14);

  v15 = *sub_D5740();
  (*(v15 + 792))(0);
}

uint64_t sub_C2504(uint64_t a1)
{
  v2 = sub_D5340();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = (a1 + *(type metadata accessor for MSRuleBaseView() + 48));
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  swift_getWitnessTable();
  sub_D5740();
  _s12AddViewModelCMa();
  v13 = swift_dynamicCastClass();

  if (v13)
  {
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v14 = sub_6610(v2, qword_137988);
    v15 = v25;
    (*(v25 + 16))(v8, v14, v2);
    v16 = sub_D5320();
    v17 = sub_D68A0();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_13;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "[Add Rule] page viewed", v18, 2u);
  }

  else
  {
    sub_D5740();
    _s13EditViewModelCMa();
    v19 = swift_dynamicCastClass();

    if (!v19)
    {
      return result;
    }

    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v21 = sub_6610(v2, qword_137988);
    v15 = v25;
    (*(v25 + 16))(v6, v21, v2);
    v16 = sub_D5320();
    v22 = sub_D68A0();
    if (!os_log_type_enabled(v16, v22))
    {
      v8 = v6;
      goto LABEL_13;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_0, v16, v22, "[Edit Rule] page viewed", v23, 2u);
    v8 = v6;
  }

LABEL_13:

  return (*(v15 + 8))(v8, v2);
}

uint64_t sub_C2864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a1;
  v59 = a3;
  v4 = type metadata accessor for MSRuleBaseView.RuleFormElement();
  v5 = sub_D67E0();
  sub_6110(&qword_129A18, &qword_E5D40);
  WitnessTable = swift_getWitnessTable();
  sub_D6350();
  v63[17] = sub_CB274();
  swift_getWitnessTable();
  v7 = sub_D62A0();
  sub_6110(&qword_129B50, &qword_E5DE8);
  v8 = sub_D5C00();
  sub_6110(&qword_129A30, &qword_E5D48);
  v9 = swift_getWitnessTable();
  sub_D6350();
  v63[16] = sub_CB32C();
  swift_getWitnessTable();
  v45[1] = sub_D62A0();
  v55 = v7;
  v47 = sub_D6930();
  v56 = v8;
  v48 = sub_D5C00();
  v49 = sub_D5C00();
  v64 = v5;
  v65 = v4;
  v50 = sub_D5C00();
  v66 = v50;
  v67 = WitnessTable;
  v68 = v9;
  v10 = sub_D6350();
  sub_6110(&qword_128BF8, &qword_E5DF0);
  v52 = v10;
  v51 = sub_D63B0();
  v57 = *(v51 - 8);
  v11 = *(v57 + 64);
  v12 = __chkstk_darwin(v51);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v58 = v45 - v15;
  v16 = sub_66D4(&qword_129B78, &unk_E5E98);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v45 - v19;
  v46 = sub_66D4(&qword_129A10, &qword_E5D38);
  v21 = *(*(v46 - 8) + 64);
  v22 = __chkstk_darwin(v46);
  v54 = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = v45 - v24;
  v26 = type metadata accessor for MSRuleBaseView();
  v64 = *(v53 + *(v26 + 32));
  v60 = a2;

  swift_getWitnessTable();
  LOBYTE(a2) = sub_D6730();

  if (a2)
  {
    sub_C30C4(v26);
    (*(v17 + 32))(v25, v20, v16);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  (*(v17 + 56))(v25, v27, 1, v16);
  sub_C3138(v26, v14);
  v28 = swift_getWitnessTable();
  v29 = v25;
  v45[0] = v25;
  v30 = v28;
  v31 = sub_CC038();
  v63[13] = v30;
  v63[14] = v31;
  v32 = swift_getWitnessTable();
  v63[12] = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v63[10] = v30;
  v63[11] = v33;
  v34 = swift_getWitnessTable();
  v63[8] = v32;
  v63[9] = v34;
  v63[6] = swift_getWitnessTable();
  v63[7] = &protocol witness table for EmptyView;
  v63[5] = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v36 = sub_CCA70(&qword_128C00, &qword_128BF8, &qword_E5DF0);
  v63[2] = &protocol witness table for EmptyView;
  v63[3] = v35;
  v63[4] = v36;
  v37 = v51;
  v38 = swift_getWitnessTable();
  v39 = v58;
  sub_5ADA8(v14, v37, v38);
  v40 = v57;
  v41 = *(v57 + 8);
  v41(v14, v37);
  v42 = v29;
  v43 = v54;
  sub_FBD4(v42, v54, &qword_129A10, &qword_E5D38);
  v64 = v43;
  (*(v40 + 16))(v14, v39, v37);
  v65 = v14;
  v63[0] = v46;
  v63[1] = v37;
  v61 = sub_CC180(&qword_129B88, &qword_129A10, &qword_E5D38, sub_CC1FC);
  v62 = v38;
  sub_BF3A0(&v64, 2uLL, v63);
  v41(v39, v37);
  sub_FC3C(v45[0], &qword_129A10, &qword_E5D38);
  v41(v14, v37);
  return sub_FC3C(v43, &qword_129A10, &qword_E5D38);
}

uint64_t sub_C3044(char *a1)
{
  v2 = *a1;
  type metadata accessor for MSRuleBaseView.RuleFormElement();
  swift_getWitnessTable();
  return sub_D6C30() & 1;
}

uint64_t sub_C30C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_66D4(&qword_129B50, &qword_E5DE8);
  sub_CC038();
  return sub_D6390();
}

uint64_t sub_C3138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v2 = *(a1 + 16);
  v3 = type metadata accessor for MSRuleBaseView.RuleFormElement();
  v4 = sub_D67E0();
  sub_6110(&qword_129A18, &qword_E5D40);
  WitnessTable = swift_getWitnessTable();
  sub_D6350();
  v52 = sub_CB274();
  v30 = &protocol conformance descriptor for <> ForEach<A, B, C>;
  swift_getWitnessTable();
  sub_D62A0();
  sub_6110(&qword_129B50, &qword_E5DE8);
  sub_D5C00();
  sub_6110(&qword_129A30, &qword_E5D48);
  v6 = swift_getWitnessTable();
  sub_D6350();
  v51 = sub_CB32C();
  swift_getWitnessTable();
  sub_D62A0();
  v26[0] = sub_D6930();
  v26[1] = sub_D5C00();
  v26[2] = sub_D5C00();
  v27 = sub_D5C00();
  v53 = v4;
  v54 = v3;
  v55 = v27;
  v56 = WitnessTable;
  v57 = v6;
  v7 = sub_D6350();
  v28 = sub_6110(&qword_128BF8, &qword_E5DF0);
  v8 = sub_D63B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v26 - v14;
  v36 = v2;
  v37 = v29;
  v33 = v2;
  v34 = v29;
  v16 = swift_getWitnessTable();
  v17 = sub_CC038();
  v49 = v16;
  v50 = v17;
  v18 = swift_getWitnessTable();
  v48 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v46 = v16;
  v47 = v19;
  v20 = swift_getWitnessTable();
  v44 = v18;
  v45 = v20;
  v42 = swift_getWitnessTable();
  v43 = &protocol witness table for EmptyView;
  v41 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v22 = sub_CCA70(&qword_128C00, &qword_128BF8, &qword_E5DF0);
  sub_BF570(sub_CC36C, v35, sub_CC374, v32, v7, v28);
  v38 = &protocol witness table for EmptyView;
  v39 = v21;
  v40 = v22;
  v23 = swift_getWitnessTable();
  sub_5ADA8(v13, v8, v23);
  v24 = *(v9 + 8);
  v24(v13, v8);
  sub_5ADA8(v15, v8, v23);
  return (v24)(v15, v8);
}

double sub_C3658@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v45 = sub_66D4(&qword_121440, &qword_D9140);
  v5 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v7 = v41 - v6;
  v8 = sub_66D4(&qword_121448, &qword_D9148);
  v9 = *(v8 - 8);
  v46 = v8;
  v47 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v41 - v11;
  v13 = sub_66D4(&qword_121450, &qword_D9150);
  v14 = *(v13 - 8);
  v48 = v13;
  v49._countAndFlagsBits = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v44 = v41 - v16;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v55._countAndFlagsBits = 2777980912;
  v55._object = 0xA400000000000000;
  v58._countAndFlagsBits = 0x4D414E2E454C5552;
  v58._object = 0xE900000000000045;
  sub_D66D0(v58);
  v59._countAndFlagsBits = 2777980912;
  v59._object = 0xA400000000000000;
  sub_D66D0(v59);
  v40._countAndFlagsBits = 0xE000000000000000;
  v60._countAndFlagsBits = 0x4D414E2E454C5552;
  v60._object = 0xE900000000000045;
  v61.value._countAndFlagsBits = 0;
  v61.value._object = 0;
  v19.super.isa = v18;
  v20 = sub_D4E80(v60, v61, v19, v55, v40);
  v22 = v21;

  v23 = (a1 + *(type metadata accessor for MSRuleBaseView() + 48));
  v24 = *v23;
  v42 = v23[1];
  v43 = v24;
  v41[1] = *(v23 + 16);
  swift_getWitnessTable();
  sub_D5750();
  v52 = a2;
  swift_getKeyPath();
  sub_D5880();

  v53 = v20;
  v54 = v22;
  sub_DFAC();
  sub_D6410();
  KeyPath = swift_getKeyPath();
  v26 = sub_D65F0();
  v27 = v45;
  v28 = &v7[*(v45 + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  v28[2] = v29;
  v30 = sub_FDA8();
  sub_D6050();
  sub_FC3C(v7, &qword_121440, &qword_D9140);
  v55._countAndFlagsBits = v27;
  v55._object = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v44;
  v33 = v46;
  sub_D6080();
  (*(v47 + 8))(v12, v33);
  v55._countAndFlagsBits = v33;
  v55._object = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v34 = v50;
  v35 = v48;
  sub_D6000();
  (*(v49._countAndFlagsBits + 8))(v32, v35);
  sub_D5750();
  v51 = a2;
  swift_getKeyPath();
  sub_D5880();

  v49 = v55;
  v36 = v56;
  v37 = v57;
  sub_D5740();

  v38 = (v34 + *(sub_66D4(&qword_129B50, &qword_E5DE8) + 36));
  result = *&v49._countAndFlagsBits;
  *v38 = v49;
  v38[1]._countAndFlagsBits = v36;
  v38[1]._object = v37;
  v38[2]._countAndFlagsBits = 30;
  return result;
}

uint64_t sub_C3BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v38 = type metadata accessor for MSRuleBaseView();
  v44 = *(v38 - 8);
  v46 = *(v44 + 64);
  __chkstk_darwin(v38);
  v43 = v36 - v5;
  v6 = type metadata accessor for MSRuleBaseView.RuleFormElement();
  v7 = sub_D67E0();
  v8 = sub_6110(&qword_129A18, &qword_E5D40);
  WitnessTable = swift_getWitnessTable();
  v61 = v7;
  v62 = &type metadata for String;
  v63 = v8;
  v64 = WitnessTable;
  v10 = WitnessTable;
  v65 = &protocol witness table for String;
  sub_D6350();
  v60 = sub_CB274();
  v45 = &protocol conformance descriptor for <> ForEach<A, B, C>;
  swift_getWitnessTable();
  v11 = sub_D62A0();
  sub_6110(&qword_129B50, &qword_E5DE8);
  v36[0] = v11;
  v36[1] = sub_D5C00();
  v12 = sub_6110(&qword_129A30, &qword_E5D48);
  v13 = swift_getWitnessTable();
  v61 = v7;
  v62 = v6;
  v41 = v7;
  v63 = v12;
  v64 = v10;
  v40 = v10;
  v65 = v13;
  v14 = v13;
  v39 = v13;
  sub_D6350();
  v59 = sub_CB32C();
  swift_getWitnessTable();
  v36[3] = sub_D62A0();
  v36[4] = sub_D6930();
  v36[5] = sub_D5C00();
  v36[6] = sub_D5C00();
  v37 = sub_D5C00();
  v61 = v7;
  v62 = v6;
  v63 = v37;
  v64 = v10;
  v65 = v14;
  v15 = sub_D6350();
  v42 = *(v15 - 8);
  v16 = *(v42 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v36 - v20;
  v22 = v38;
  v61 = *(a1 + *(v38 + 32));
  v48 = a2;
  v36[2] = swift_getKeyPath();
  v23 = v44;
  v24 = v43;
  (*(v44 + 16))(v43, a1, v22);
  v25 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  (*(v23 + 32))(v26 + v25, v24, v22);

  v27 = swift_getWitnessTable();
  v28 = sub_CC038();
  v57 = v27;
  v58 = v28;
  v29 = swift_getWitnessTable();
  v56 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v54 = v27;
  v55 = v30;
  v31 = swift_getWitnessTable();
  v52 = v29;
  v53 = v31;
  v50 = swift_getWitnessTable();
  v51 = &protocol witness table for EmptyView;
  v35 = swift_getWitnessTable();
  sub_D6330();
  v49 = v35;
  v32 = swift_getWitnessTable();
  sub_5ADA8(v19, v15, v32);
  v33 = *(v42 + 8);
  v33(v19, v15);
  sub_5ADA8(v21, v15, v32);
  return (v33)(v21, v15);
}

uint64_t sub_C4194@<X0>(void (*a1)(char *, uint64_t)@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v118 = a2;
  v121 = a1;
  v124 = a3;
  v3 = type metadata accessor for MSRuleBaseView.RuleFormElement();
  v4 = sub_D67E0();
  v5 = sub_6110(&qword_129A30, &qword_E5D48);
  WitnessTable = swift_getWitnessTable();
  v177 = v4;
  v178 = v3;
  v179 = v5;
  v180 = WitnessTable;
  v181 = swift_getWitnessTable();
  sub_D6350();
  v176 = sub_CB32C();
  swift_getWitnessTable();
  v130 = sub_D62A0();
  v7 = sub_D6930();
  v117 = *(v7 - 8);
  v8 = *(v117 + 8);
  v9 = __chkstk_darwin(v7);
  v114 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v113 = &v111 - v11;
  v12 = sub_6110(&qword_129A18, &qword_E5D40);
  v177 = v4;
  v178 = &type metadata for String;
  v179 = v12;
  v180 = WitnessTable;
  v181 = &protocol witness table for String;
  sub_D6350();
  v175 = sub_CB274();
  swift_getWitnessTable();
  v13 = sub_D62A0();
  v128 = v7;
  v14 = sub_D5C00();
  v116 = *(v14 - 8);
  v15 = *(v116 + 64);
  __chkstk_darwin(v14);
  v115 = &v111 - v16;
  v17 = sub_66D4(&qword_129B50, &qword_E5DE8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v111 - v19;
  v21 = sub_D5C00();
  v112 = *(v21 - 8);
  v22 = *(v112 + 64);
  __chkstk_darwin(v21);
  v24 = &v111 - v23;
  v129 = v25;
  v127 = v14;
  v26 = sub_D5C00();
  v120 = *(v26 - 8);
  v27 = *(v120 + 64);
  v28 = __chkstk_darwin(v26);
  v119 = &v111 - v29;
  v30 = *(v13 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v28);
  v34 = &v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v111 - v35;
  v126 = v37;
  v38 = sub_D5C00();
  v122 = *(v38 - 8);
  v123 = v38;
  v39 = *(v122 + 64);
  __chkstk_darwin(v38);
  v41 = &v111 - v40;
  v42 = *v121;
  v125 = v41;
  if (v42 > 2)
  {
    if (v42 == 3)
    {
      v90 = type metadata accessor for MSRuleBaseView();
      sub_C5098(*(v118 + *(v90 + 40)), v90);
      v91 = swift_getWitnessTable();
      v111 = v36;
      sub_5ADA8(v34, v13, v91);
      v92 = *(v30 + 8);
      v121 = (v30 + 8);
      v118 = v92;
      (v92)(v34, v13);
      sub_5ADA8(v36, v13, v91);
      v151 = swift_getWitnessTable();
      v93 = swift_getWitnessTable();
      v94 = v115;
      sub_BF1B0(v34, v13);
      v95 = sub_CC038();
      v149 = v91;
      v150 = v95;
      v96 = v129;
      v97 = swift_getWitnessTable();
      v147 = v91;
      v148 = v93;
      v98 = v127;
      v99 = swift_getWitnessTable();
      v100 = v119;
      sub_BF2A8(v94, v96, v98);
      (*(v116 + 8))(v94, v98);
      v145 = v97;
      v146 = v99;
      v101 = v126;
      swift_getWitnessTable();
      v53 = v125;
      sub_BF1B0(v100, v101);
      (*(v120 + 8))(v100, v101);
      v102 = v118;
      v118(v34, v13);
      v102(v111, v13);
      goto LABEL_11;
    }

    if (v42 == 4)
    {
      v54 = type metadata accessor for MSRuleBaseView();
      v55 = v114;
      sub_C5A80(v54, v114);
      v158 = swift_getWitnessTable();
      v56 = v128;
      v57 = swift_getWitnessTable();
      v58 = v113;
      sub_5ADA8(v55, v56, v57);
      v59 = *(v117 + 1);
      v117 += 8;
      v121 = v59;
      v59(v55, v56);
      sub_5ADA8(v58, v56, v57);
      v60 = swift_getWitnessTable();
      v61 = v115;
      sub_BF2A8(v55, v13, v56);
      v62 = sub_CC038();
      v156 = v60;
      v157 = v62;
      v63 = v129;
      v64 = swift_getWitnessTable();
      v154 = v60;
      v155 = v57;
      v65 = v127;
      v66 = swift_getWitnessTable();
      v67 = v119;
      sub_BF2A8(v61, v63, v65);
      (*(v116 + 8))(v61, v65);
      v152 = v64;
      v153 = v66;
      v68 = v126;
      swift_getWitnessTable();
      v53 = v125;
      sub_BF1B0(v67, v68);
      (*(v120 + 8))(v67, v68);
      v69 = v121;
      v121(v114, v56);
      v69(v113, v56);
      goto LABEL_11;
    }

LABEL_8:
    v70 = swift_getWitnessTable();
    v71 = sub_CC038();
    v173 = v70;
    v174 = v71;
    v72 = swift_getWitnessTable();
    v172 = swift_getWitnessTable();
    v73 = swift_getWitnessTable();
    v170 = v70;
    v171 = v73;
    v74 = swift_getWitnessTable();
    v168 = v72;
    v169 = v74;
    v75 = v126;
    v76 = swift_getWitnessTable();
    v53 = v125;
    sub_BF2A8(v76, v75, &type metadata for EmptyView);
    goto LABEL_11;
  }

  if (v42 == 1)
  {
    v77 = type metadata accessor for MSRuleBaseView();
    sub_C5098(*(v118 + *(v77 + 36)), v77);
    v78 = swift_getWitnessTable();
    v111 = v36;
    sub_5ADA8(v34, v13, v78);
    v79 = *(v30 + 8);
    v121 = (v30 + 8);
    v117 = v79;
    (v79)(v34, v13);
    sub_5ADA8(v36, v13, v78);
    v80 = sub_CC038();
    sub_BF1B0(v34, v13);
    v136 = v78;
    v137 = v80;
    v81 = v129;
    v82 = swift_getWitnessTable();
    v135 = swift_getWitnessTable();
    v83 = swift_getWitnessTable();
    v133 = v78;
    v134 = v83;
    v84 = swift_getWitnessTable();
    v118 = v13;
    v85 = v119;
    sub_BF1B0(v24, v81);
    (*(v112 + 8))(v24, v81);
    v131 = v82;
    v132 = v84;
    v86 = v126;
    swift_getWitnessTable();
    v53 = v125;
    sub_BF1B0(v85, v86);
    v87 = v85;
    v88 = v118;
    (*(v120 + 8))(v87, v86);
    v89 = v117;
    (v117)(v34, v88);
    v89(v111, v88);
    goto LABEL_11;
  }

  if (v42 != 2)
  {
    goto LABEL_8;
  }

  v43 = type metadata accessor for MSRuleBaseView();
  sub_C52E0(v43, v20);
  v44 = swift_getWitnessTable();
  v45 = sub_CC038();
  sub_BF2A8(v20, v13, v17);
  v143 = v44;
  v144 = v45;
  v46 = v24;
  v47 = v129;
  v48 = swift_getWitnessTable();
  v142 = swift_getWitnessTable();
  v49 = swift_getWitnessTable();
  v140 = v44;
  v141 = v49;
  v50 = swift_getWitnessTable();
  v51 = v119;
  sub_BF1B0(v46, v47);
  (*(v112 + 8))(v46, v47);
  v138 = v48;
  v139 = v50;
  v52 = v126;
  swift_getWitnessTable();
  v53 = v125;
  sub_BF1B0(v51, v52);
  (*(v120 + 8))(v51, v52);
  sub_FC3C(v20, &qword_129B50, &qword_E5DE8);
LABEL_11:
  v103 = swift_getWitnessTable();
  v104 = sub_CC038();
  v166 = v103;
  v167 = v104;
  v105 = swift_getWitnessTable();
  v165 = swift_getWitnessTable();
  v106 = swift_getWitnessTable();
  v163 = v103;
  v164 = v106;
  v107 = swift_getWitnessTable();
  v161 = v105;
  v162 = v107;
  v159 = swift_getWitnessTable();
  v160 = &protocol witness table for EmptyView;
  v108 = v123;
  v109 = swift_getWitnessTable();
  sub_5ADA8(v53, v108, v109);
  return (*(v122 + 8))(v53, v108);
}

uint64_t sub_C5098(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  type metadata accessor for MSRuleBaseView.RuleFormElement();
  v21 = sub_D67E0();
  v22 = &type metadata for String;
  v23 = sub_6110(&qword_129A18, &qword_E5D40);
  WitnessTable = swift_getWitnessTable();
  v25 = &protocol witness table for String;
  sub_D6350();
  v20 = sub_CB274();
  swift_getWitnessTable();
  v5 = sub_D62A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v16[-v11];
  v17 = v4;
  v18 = a1;
  v19 = v2;
  sub_D5B40();
  sub_D6290();
  v13 = swift_getWitnessTable();
  sub_5ADA8(v10, v5, v13);
  v14 = *(v6 + 8);
  v14(v10, v5);
  sub_5ADA8(v12, v5, v13);
  return (v14)(v12, v5);
}

double sub_C52E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v62 = sub_66D4(&qword_121420, &qword_DA840);
  v59 = *(v62 - 8);
  v4 = *(v59 + 64);
  __chkstk_darwin(v62);
  v56 = &v55 - v5;
  v63 = sub_66D4(&qword_121440, &qword_D9140);
  v6 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v8 = &v55 - v7;
  v65._countAndFlagsBits = sub_66D4(&qword_121448, &qword_D9148);
  v61 = *(v65._countAndFlagsBits - 8);
  v9 = *(v61 + 64);
  __chkstk_darwin(v65._countAndFlagsBits);
  v58 = &v55 - v10;
  v64 = sub_66D4(&qword_121450, &qword_D9150);
  v60 = *(v64 - 8);
  v11 = *(v60 + 64);
  __chkstk_darwin(v64);
  v57 = &v55 - v12;
  v13 = sub_66D4(&qword_129B98, &qword_E5F30);
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = *(v67 + 64);
  __chkstk_darwin(v13);
  v66 = &v55 - v15;
  v16 = (v2 + *(a1 + 48));
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v16 + 16);
  v20 = *(a1 + 16);
  swift_getWitnessTable();
  v21 = v18;
  v70 = v19;
  v22 = *sub_D5740();
  v23 = (*(v22 + 400))();

  v24 = v23;
  if (v23 >= 4u)
  {
    if (v23 == 4)
    {
      v26 = 0xD00000000000001ELL;
    }

    else
    {
      v26 = 0xD00000000000001DLL;
    }

    if (v24 == 4)
    {
      v25 = "RULES.FORM.PLACEHOLDER.LISTID";
    }

    else
    {
      v25 = "ge";
    }
  }

  else
  {
    v25 = "RULES.FORM.PLACEHOLDER.SUBJECT";
    v26 = 0xD000000000000029;
  }

  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v73._countAndFlagsBits = 2777980912;
  v73._object = 0xA400000000000000;
  v76._object = (v25 | 0x8000000000000000);
  v76._countAndFlagsBits = v26;
  sub_D66D0(v76);
  v77._countAndFlagsBits = 2777980912;
  v77._object = 0xA400000000000000;
  sub_D66D0(v77);
  v54._countAndFlagsBits = 0xE000000000000000;
  v78._object = (v25 | 0x8000000000000000);
  v78._countAndFlagsBits = v26;
  v79.value._countAndFlagsBits = 0;
  v79.value._object = 0;
  v29.super.isa = v28;
  v30 = sub_D4E80(v78, v79, v29, v73, v54);
  v32 = v31;

  v55 = v21;
  v33 = sub_D5750();
  __chkstk_darwin(v33);
  swift_getKeyPath();
  sub_D5880();

  v71 = v30;
  v72 = v32;
  sub_DFAC();
  v34 = v56;
  sub_D6410();
  KeyPath = swift_getKeyPath();
  v36 = sub_D65F0();
  v38 = v37;
  (*(v59 + 32))(v8, v34, v62);
  v39 = v63;
  v40 = &v8[*(v63 + 36)];
  *v40 = KeyPath;
  v40[1] = v36;
  v40[2] = v38;
  v41 = sub_FDA8();
  v42 = v58;
  sub_D6050();
  sub_FC3C(v8, &qword_121440, &qword_D9140);
  v73._countAndFlagsBits = v39;
  v73._object = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v57;
  countAndFlagsBits = v65._countAndFlagsBits;
  sub_D6080();
  (*(v61 + 8))(v42, countAndFlagsBits);
  v73._countAndFlagsBits = countAndFlagsBits;
  v73._object = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v46 = v66;
  v47 = v64;
  sub_D6000();
  (*(v60 + 8))(v44, v47);
  v48 = sub_D5750();
  __chkstk_darwin(v48);
  swift_getKeyPath();
  sub_D5880();

  v65 = v73;
  v49 = v74;
  v50 = v75;
  sub_D5740();

  v51 = v69;
  (*(v67 + 32))(v69, v46, v68);
  v52 = (v51 + *(sub_66D4(&qword_129B50, &qword_E5DE8) + 36));
  result = *&v65._countAndFlagsBits;
  *v52 = v65;
  v52[1]._countAndFlagsBits = v49;
  v52[1]._object = v50;
  v52[2]._countAndFlagsBits = 90;
  return result;
}

uint64_t sub_C5A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for MSRuleBaseView.RuleFormElement();
  v43 = sub_D67E0();
  v44 = v5;
  v45 = sub_6110(&qword_129A30, &qword_E5D48);
  WitnessTable = swift_getWitnessTable();
  v47 = swift_getWitnessTable();
  v6 = sub_D6350();
  v42 = sub_CB32C();
  v37 = v6;
  v35[1] = swift_getWitnessTable();
  v7 = sub_D62A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v36 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v35 - v12;
  v14 = sub_D6930();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v38 = v2;
  v39 = v35 - v20;
  v21 = (v2 + *(a1 + 48));
  v22 = *v21;
  v23 = v21[1];
  v24 = *(v21 + 16);
  swift_getWitnessTable();
  v25 = *sub_D5740();
  LOBYTE(v23) = (*(v25 + 352))();

  if ((v23 & 0xF9) != 0)
  {
    (*(v8 + 56))(v19, 1, 1, v7);
    swift_getWitnessTable();
  }

  else
  {
    __chkstk_darwin(v26);
    v27 = v38;
    v35[-2] = v4;
    v35[-1] = v27;
    sub_D5B40();
    v28 = v36;
    sub_D6290();
    v29 = swift_getWitnessTable();
    sub_5ADA8(v28, v7, v29);
    v30 = *(v8 + 8);
    v30(v28, v7);
    sub_5ADA8(v13, v7, v29);
    v30(v13, v7);
    (*(v8 + 32))(v19, v28, v7);
    (*(v8 + 56))(v19, 0, 1, v7);
  }

  v31 = v39;
  (*(v15 + 16))(v39, v19, v14);
  v32 = *(v15 + 8);
  v32(v19, v14);
  v41 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  sub_5ADA8(v31, v14, v33);
  return (v32)(v31, v14);
}

uint64_t sub_C5F70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for MSRuleBaseView() + 48));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  swift_getWitnessTable();
  v7 = *sub_D5740();
  (*(v7 + 1120))();
  v9 = v8;

  if (v9)
  {
    sub_DFAC();
    v11 = sub_D5F50();
    v13 = v12;
    v15 = v14;
    sub_D6170();
    v16 = sub_D5F10();
    v9 = v17;
    v19 = v18;
    v21 = v20;
    sub_F16C(v11, v13, v15 & 1);

    v22 = v19 & 1;
  }

  else
  {
    v16 = 0;
    v22 = 0;
    v21 = 0;
  }

  *a2 = v16;
  a2[1] = v9;
  a2[2] = v22;
  a2[3] = v21;
  return result;
}

uint64_t sub_C610C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a2;
  v33 = a4;
  v27 = a3;
  v5 = type metadata accessor for MSRuleBaseView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v32 = type metadata accessor for MSRuleBaseView.RuleFormElement();
  v10 = sub_D67E0();
  v30 = v10;
  v11 = sub_6110(&qword_129A18, &qword_E5D40);
  v29 = v11;
  WitnessTable = swift_getWitnessTable();
  v35 = v10;
  v36 = &type metadata for String;
  v37 = v11;
  v38 = WitnessTable;
  v39 = &protocol witness table for String;
  v12 = sub_D6350();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v26 - v18;
  v35 = a1;
  (*(v6 + 16))(v9, v31, v5);
  v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v27;
  *(v21 + 24) = a1;
  (*(v6 + 32))(v21 + v20, v9, v5);
  v22 = sub_CB274();
  swift_bridgeObjectRetain_n();
  swift_getWitnessTable();
  sub_D6340();
  v34 = v22;
  v23 = swift_getWitnessTable();
  sub_5ADA8(v17, v12, v23);
  v24 = *(v13 + 8);
  v24(v17, v12);
  sub_5ADA8(v19, v12, v23);
  return (v24)(v19, v12);
}

uint64_t sub_C6450@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v27 = a4;
  v26 = sub_66D4(&qword_129B48, &qword_E5DE0);
  v6 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v8 = &v24 - v7;
  v9 = sub_66D4(&qword_129BA0, &qword_E5F70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  v25 = sub_66D4(&qword_129A30, &qword_E5D48);
  v13 = *(*(v25 - 8) + 64);
  v14 = __chkstk_darwin(v25);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v24 - v17;
  v19 = *a1;
  v31 = a2;
  type metadata accessor for MSRuleBaseView.RuleFormElement();
  sub_D67E0();
  swift_getWitnessTable();
  sub_D6580();
  v29 = v19;
  if (v30 == 13 || (v28 = v30, swift_getWitnessTable(), (sub_D6C30() & 1) == 0))
  {
    v21 = type metadata accessor for MSRuleBaseView();
    sub_C6844(v19, v21, v18);
    sub_FBD4(v18, v16, &qword_129A30, &qword_E5D48);
    sub_FBD4(v16, v8, &qword_129A30, &qword_E5D48);
    v22 = &v8[*(sub_66D4(&qword_129BA8, &qword_E5F78) + 48)];
    *v22 = 0;
    v22[8] = 1;
    sub_FC3C(v16, &qword_129A30, &qword_E5D48);
    sub_FBD4(v8, v12, &qword_129B48, &qword_E5DE0);
    swift_storeEnumTagMultiPayload();
    sub_CB32C();
    sub_109A8(&qword_129B40, &qword_129B48, &qword_E5DE0);
    sub_D5BF0();
    sub_FC3C(v8, &qword_129B48, &qword_E5DE0);
  }

  else
  {
    v20 = type metadata accessor for MSRuleBaseView();
    sub_C6844(v19, v20, v18);
    sub_FBD4(v18, v12, &qword_129A30, &qword_E5D48);
    swift_storeEnumTagMultiPayload();
    sub_CB32C();
    sub_109A8(&qword_129B40, &qword_129B48, &qword_E5DE0);
    sub_D5BF0();
  }

  return sub_FC3C(v18, &qword_129A30, &qword_E5D48);
}

uint64_t sub_C6844@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LODWORD(v327) = a1;
  v332 = a3;
  v307 = sub_66D4(&qword_129BB0, &unk_E5F80);
  v4 = *(*(v307 - 8) + 64);
  __chkstk_darwin(v307);
  v308 = &v268 - v5;
  v325 = sub_66D4(&qword_129B18, &qword_E5DC8);
  v6 = *(*(v325 - 8) + 64);
  __chkstk_darwin(v325);
  v309 = &v268 - v7;
  v271 = type metadata accessor for MSFolderListSelectionView();
  v8 = *(*(v271 - 8) + 64);
  __chkstk_darwin(v271);
  v270 = (&v268 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v298 = sub_66D4(&qword_129B38, &qword_E5DD8);
  v297 = *(v298 - 8);
  v10 = *(v297 + 64);
  __chkstk_darwin(v298);
  v269 = &v268 - v11;
  v306 = sub_66D4(&qword_129B28, &qword_E5DD0);
  v12 = *(*(v306 - 8) + 64);
  __chkstk_darwin(v306);
  v299 = &v268 - v13;
  v282 = sub_66D4(&qword_121420, &qword_DA840);
  v278 = *(v282 - 8);
  v14 = *(v278 + 64);
  __chkstk_darwin(v282);
  v273 = &v268 - v15;
  v279 = sub_66D4(&qword_128820, &qword_E2E60);
  v277 = *(v279 - 8);
  v16 = *(v277 + 64);
  __chkstk_darwin(v279);
  v272 = &v268 - v17;
  v281 = sub_66D4(&qword_129AF8, &qword_E5DC0);
  v18 = *(*(v281 - 8) + 64);
  __chkstk_darwin(v281);
  v274 = &v268 - v19;
  v285 = sub_66D4(&qword_129AF0, &qword_E5DB8);
  v280 = *(v285 - 8);
  v20 = *(v280 + 64);
  __chkstk_darwin(v285);
  v275 = &v268 - v21;
  v284 = sub_66D4(&qword_129AE8, &qword_E5DB0);
  v283 = *(v284 - 8);
  v22 = *(v283 + 64);
  __chkstk_darwin(v284);
  v276 = &v268 - v23;
  v290 = sub_66D4(&qword_129BB8, &qword_E5F90);
  v289 = *(v290 - 8);
  v24 = *(v289 + 64);
  __chkstk_darwin(v290);
  v288 = &v268 - v25;
  v301 = sub_66D4(&qword_129AE0, &qword_E5DA8);
  v300 = *(v301 - 8);
  v26 = *(v300 + 64);
  v27 = __chkstk_darwin(v301);
  v287 = &v268 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v286 = &v268 - v29;
  v316 = sub_66D4(&qword_129AD0, &qword_E5DA0);
  v30 = *(*(v316 - 1) + 64);
  __chkstk_darwin(v316);
  v302 = &v268 - v31;
  v321 = sub_66D4(&qword_129BC0, &qword_E5F98);
  v32 = *(*(v321 - 8) + 64);
  __chkstk_darwin(v321);
  v323 = &v268 - v33;
  v312 = sub_66D4(&qword_129BC8, &qword_E5FA0);
  v34 = *(*(v312 - 8) + 64);
  __chkstk_darwin(v312);
  v314 = &v268 - v35;
  v322 = sub_66D4(&qword_129AA8, &qword_E5D88);
  v36 = *(*(v322 - 8) + 64);
  __chkstk_darwin(v322);
  v315 = &v268 - v37;
  v331 = sub_66D4(&qword_129A98, &qword_E5D80);
  v38 = *(*(v331 - 8) + 64);
  __chkstk_darwin(v331);
  v324 = &v268 - v39;
  v310 = sub_66D4(&qword_129AB8, &qword_E5D98);
  v293 = *(v310 - 8);
  v40 = *(v293 + 64);
  __chkstk_darwin(v310);
  v291 = &v268 - v41;
  v311 = sub_66D4(&qword_129AB0, &qword_E5D90);
  v294 = *(v311 - 8);
  v42 = *(v294 + 64);
  __chkstk_darwin(v311);
  v292 = &v268 - v43;
  v313 = sub_66D4(&qword_129BD0, &qword_E5FA8);
  v296 = *(v313 - 8);
  v44 = *(v296 + 64);
  __chkstk_darwin(v313);
  v295 = &v268 - v45;
  v328 = sub_66D4(&qword_129BD8, &qword_E5FB0);
  v46 = *(*(v328 - 8) + 64);
  __chkstk_darwin(v328);
  v330 = &v268 - v47;
  v317 = sub_66D4(&qword_129BE0, &qword_E5FB8);
  v48 = *(*(v317 - 8) + 64);
  __chkstk_darwin(v317);
  v319 = (&v268 - v49);
  v50 = sub_66D4(&qword_129BE8, &qword_E5FC0);
  v51 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v53 = &v268 - v52;
  v318 = sub_66D4(&qword_129A50, &qword_E5D58);
  v54 = *(*(v318 - 8) + 64);
  __chkstk_darwin(v318);
  v56 = &v268 - v55;
  v329 = sub_66D4(&qword_129A40, &qword_E5D50);
  v57 = *(*(v329 - 8) + 64);
  v58 = __chkstk_darwin(v329);
  v320 = &v268 - v59;
  v60 = a2;
  v305 = *(a2 - 8);
  v61 = *(v305 + 64);
  __chkstk_darwin(v58);
  v303 = v62;
  v304 = &v268 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_66D4(&qword_129A60, &qword_E5D68);
  v64 = *(v63 - 8);
  v65 = *(v64 + 64);
  __chkstk_darwin(v63);
  v67 = &v268 - v66;
  v68 = sub_66D4(&qword_129A58, &qword_E5D60);
  v69 = *(v68 - 8);
  v70 = *(v69 + 64);
  __chkstk_darwin(v68);
  v72 = &v268 - v71;
  v73 = sub_66D4(&qword_129BF0, &qword_E5FC8);
  v74 = *(*(v73 - 8) + 64);
  v75 = __chkstk_darwin(v73);
  v78 = &v268 - v77;
  v79 = v327;
  if (v327 <= 7u)
  {
    v313 = v64;
    v314 = v69;
    v315 = v50;
    v316 = v53;
    v327 = v56;
    switch(v79)
    {
      case 5:
        v324 = v75;
        v323 = v78;
        v325 = v76;
        v322 = sub_D5B50();
        v321 = v139;
        LODWORD(v311) = v140;
        v312 = v141;
        v142 = v326._countAndFlagsBits + *(v60 + 48);
        v143 = *(v142 + 8);
        v310 = *v142;
        v309 = v143;
        LODWORD(v308) = *(v142 + 16);
        v144 = *(v60 + 16);
        swift_getWitnessTable();
        v307 = v144;
        v145 = sub_D5750();
        __chkstk_darwin(v145);
        swift_getKeyPath();
        sub_D5880();

        v333 = v336;
        LOBYTE(v334._countAndFlagsBits) = v337._countAndFlagsBits;
        sub_66D4(&qword_129C28, &qword_E6088);
        sub_CCA1C();
        sub_CCA70(&qword_129C38, &qword_129C28, &qword_E6088);
        sub_D62B0();
        v146 = v307;
        v147 = *sub_D5740();
        v148 = (*(v147 + 400))();

        LOBYTE(v336._countAndFlagsBits) = v148;
        v149 = v305;
        v150 = v304;
        (*(v305 + 16))(v304, v326._countAndFlagsBits, v60);
        v151 = (*(v149 + 80) + 24) & ~*(v149 + 80);
        v152 = swift_allocObject();
        *(v152 + 16) = v146;
        (*(v149 + 32))(v152 + v151, v150, v60);
        v153 = sub_109A8(&qword_129A68, &qword_129A60, &qword_E5D68);
        v154 = sub_82780();
        sub_D6150();

        (*(v313 + 8))(v67, v63);
        v336._countAndFlagsBits = v63;
        v336._object = &type metadata for RuleCondition;
        v337._countAndFlagsBits = v153;
        v337._object = v154;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v156 = v323;
        sub_D6000();
        (*(v314 + 8))(v72, v68);
        v157 = v324;
        (*(v325 + 16))(v316, v156, v324);
        swift_storeEnumTagMultiPayload();
        v336._countAndFlagsBits = v68;
        v336._object = OpaqueTypeConformance2;
        swift_getOpaqueTypeConformance2();
        v158 = v327;
        sub_D5BF0();
        sub_FBD4(v158, v319, &qword_129A50, &qword_E5D58);
        swift_storeEnumTagMultiPayload();
        sub_66D4(&qword_129A78, &qword_E5D70);
        sub_CB444();
        sub_CB598();
        v159 = v320;
        sub_D5BF0();
        sub_FC3C(v158, &qword_129A50, &qword_E5D58);
        sub_FBD4(v159, v330, &qword_129A40, &qword_E5D50);
        swift_storeEnumTagMultiPayload();
        sub_CB3B8();
        sub_CB6A0();
        sub_D5BF0();
        sub_FC3C(v159, &qword_129A40, &qword_E5D50);
        return (*(v325 + 8))(v156, v157);
      case 6:
        v193 = v63;
        type metadata accessor for MAPreferencesViewProvider();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v195 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
        v336._countAndFlagsBits = 2777980912;
        v336._object = 0xA400000000000000;
        v346._countAndFlagsBits = 0xD00000000000001ALL;
        v346._object = 0x80000000000EA120;
        sub_D66D0(v346);
        v347._countAndFlagsBits = 2777980912;
        v347._object = 0xA400000000000000;
        sub_D66D0(v347);
        v267._countAndFlagsBits = 0xE000000000000000;
        v348._countAndFlagsBits = 0xD00000000000001ALL;
        v348._object = 0x80000000000EA120;
        v357.value._countAndFlagsBits = 0;
        v357.value._object = 0;
        v196.super.isa = v195;
        v197 = sub_D4E80(v348, v357, v196, v336, v267);
        v199 = v198;

        v336._countAndFlagsBits = v197;
        v336._object = v199;
        sub_DFAC();
        v200 = sub_D5F50();
        v202 = v201;
        v203 = v316;
        *v316 = v200;
        v203[1] = v201;
        LOBYTE(v199) = v204 & 1;
        *(v203 + 16) = v204 & 1;
        v203[3] = v205;
        v326._countAndFlagsBits = v205;
        swift_storeEnumTagMultiPayload();
        sub_166E0(v200, v202, v199);
        v206 = sub_109A8(&qword_129A68, &qword_129A60, &qword_E5D68);
        v207 = sub_82780();

        v336._countAndFlagsBits = v193;
        v336._object = &type metadata for RuleCondition;
        v337._countAndFlagsBits = v206;
        v337._object = v207;
        v208 = swift_getOpaqueTypeConformance2();
        v336._countAndFlagsBits = v68;
        v336._object = v208;
        swift_getOpaqueTypeConformance2();
        v209 = v327;
        sub_D5BF0();
        sub_FBD4(v209, v319, &qword_129A50, &qword_E5D58);
        swift_storeEnumTagMultiPayload();
        sub_66D4(&qword_129A78, &qword_E5D70);
        sub_CB444();
        sub_CB598();
        v210 = v320;
        sub_D5BF0();
        sub_FC3C(v209, &qword_129A50, &qword_E5D58);
        sub_FBD4(v210, v330, &qword_129A40, &qword_E5D50);
        swift_storeEnumTagMultiPayload();
        sub_CB3B8();
        sub_CB6A0();
        sub_D5BF0();
        sub_F16C(v200, v202, v199);

        v126 = v210;
        v127 = &qword_129A40;
        v128 = &qword_E5D50;
        break;
      case 7:
        type metadata accessor for MAPreferencesViewProvider();
        v110 = swift_getObjCClassFromMetadata();
        v111 = [objc_opt_self() bundleForClass:v110];
        v336._countAndFlagsBits = 2777980912;
        v336._object = 0xA400000000000000;
        v340._object = 0x80000000000EA100;
        v340._countAndFlagsBits = 0xD000000000000017;
        sub_D66D0(v340);
        v341._countAndFlagsBits = 2777980912;
        v341._object = 0xA400000000000000;
        sub_D66D0(v341);
        v267._countAndFlagsBits = 0xE000000000000000;
        v342._object = 0x80000000000EA100;
        v342._countAndFlagsBits = 0xD000000000000017;
        v355.value._countAndFlagsBits = 0;
        v355.value._object = 0;
        v112.super.isa = v111;
        v113 = sub_D4E80(v342, v355, v112, v336, v267);
        v115 = v114;

        v336._countAndFlagsBits = v113;
        v336._object = v115;
        sub_DFAC();
        v116 = sub_D5F50();
        v118 = v117;
        v333._countAndFlagsBits = v116;
        v333._object = v117;
        LOBYTE(v115) = v119 & 1;
        v334._countAndFlagsBits = v119 & 1;
        v334._object = v120;
        v335 = 0;
        sub_166E0(v116, v117, v119 & 1);

        sub_66D4(&qword_129A88, &qword_E5D78);
        sub_CB624();
        sub_D5BF0();
        v121 = v338;
        v122 = v339;
        v123 = v337;
        v124 = v319;
        *v319 = v336;
        v124[1] = v123;
        LOBYTE(v124[2]._countAndFlagsBits) = v121;
        BYTE1(v124[2]._countAndFlagsBits) = v122;
        swift_storeEnumTagMultiPayload();
        sub_66D4(&qword_129A78, &qword_E5D70);
        sub_CB444();
        sub_CB598();
        v125 = v320;
        sub_D5BF0();
        sub_FBD4(v125, v330, &qword_129A40, &qword_E5D50);
        swift_storeEnumTagMultiPayload();
        sub_CB3B8();
        sub_CB6A0();
        sub_D5BF0();
        sub_F16C(v116, v118, v115);

        v126 = v125;
        v127 = &qword_129A40;
        v128 = &qword_E5D50;
        break;
      default:
LABEL_15:
        swift_storeEnumTagMultiPayload();
        sub_CBBFC();
        v160 = v309;
        sub_D5BF0();
        sub_FBD4(v160, v323, &qword_129B18, &qword_E5DC8);
        swift_storeEnumTagMultiPayload();
        sub_CB72C();
        sub_CBB70();
        v161 = v324;
        sub_D5BF0();
        sub_FC3C(v160, &qword_129B18, &qword_E5DC8);
        v162 = &qword_129A98;
        v163 = &qword_E5D80;
        sub_FBD4(v161, v330, &qword_129A98, &qword_E5D80);
        swift_storeEnumTagMultiPayload();
        sub_CB3B8();
        sub_CB6A0();
        sub_D5BF0();
        v126 = v161;
LABEL_36:
        v127 = v162;
        v128 = v163;
        return sub_FC3C(v126, v127, v128);
    }

    return sub_FC3C(v126, v127, v128);
  }

  if (v327 <= 9u)
  {
    if (v327 == 8)
    {
      v164 = v60;
      v165 = v326._countAndFlagsBits + *(v60 + 48);
      v166 = *v165;
      v167 = *(v165 + 8);
      v168 = *(v165 + 16);
      v169 = *(v164 + 16);
      swift_getWitnessTable();
      v170 = *sub_D5740();
      LOBYTE(v166) = (*(v170 + 352))();

      LODWORD(v167) = v166 & 0xFB;
      type metadata accessor for MAPreferencesViewProvider();
      v171 = swift_getObjCClassFromMetadata();
      v172 = [objc_opt_self() bundleForClass:v171];
      v336._countAndFlagsBits = 2777980912;
      v336._object = 0xA400000000000000;
      if (v167)
      {
        v343._countAndFlagsBits = 0xD000000000000024;
        v343._object = 0x80000000000EA0A0;
        sub_D66D0(v343);
        v344._countAndFlagsBits = 2777980912;
        v344._object = 0xA400000000000000;
        sub_D66D0(v344);
        v267._countAndFlagsBits = 0xE000000000000000;
        v345._countAndFlagsBits = 0xD000000000000024;
        v345._object = 0x80000000000EA0A0;
        v356.value._countAndFlagsBits = 0;
        v356.value._object = 0;
        v173.super.isa = v172;
        v174 = sub_D4E80(v345, v356, v173, v336, v267);
        v176 = v175;

        v336._countAndFlagsBits = v174;
        v336._object = v176;
        sub_DFAC();
        v333._countAndFlagsBits = sub_D5F50();
        v333._object = v178;
        v334._countAndFlagsBits = v177 & 1;
        v334._object = v179;
        LOBYTE(v335) = 1;
      }

      else
      {
        v349._countAndFlagsBits = 0xD000000000000025;
        v349._object = 0x80000000000EA0D0;
        sub_D66D0(v349);
        v350._countAndFlagsBits = 2777980912;
        v350._object = 0xA400000000000000;
        sub_D66D0(v350);
        v267._countAndFlagsBits = 0xE000000000000000;
        v351._countAndFlagsBits = 0xD000000000000025;
        v351._object = 0x80000000000EA0D0;
        v358.value._countAndFlagsBits = 0;
        v358.value._object = 0;
        v211.super.isa = v172;
        v212 = sub_D4E80(v351, v358, v211, v336, v267);
        v214 = v213;

        v336._countAndFlagsBits = v212;
        v336._object = v214;
        sub_DFAC();
        v333._countAndFlagsBits = sub_D5F50();
        v333._object = v215;
        v334._countAndFlagsBits = v216 & 1;
        v334._object = v217;
        LOBYTE(v335) = 0;
      }

      sub_D5BF0();
      v333 = v336;
      v334 = v337;
      LOBYTE(v335) = v338;
      HIBYTE(v335) = 1;
      v218 = v336;
      countAndFlagsBits = v337._countAndFlagsBits;
      sub_71878(v336._countAndFlagsBits, v336._object, v337._countAndFlagsBits);
      sub_71878(v218._countAndFlagsBits, v218._object, countAndFlagsBits);
      sub_66D4(&qword_129A88, &qword_E5D78);
      sub_CB624();
      sub_D5BF0();
      v220 = v338;
      v221 = v339;
      v222 = v337;
      v223 = v319;
      *v319 = v336;
      v223[1] = v222;
      LOBYTE(v223[2]._countAndFlagsBits) = v220;
      BYTE1(v223[2]._countAndFlagsBits) = v221;
      swift_storeEnumTagMultiPayload();
      sub_66D4(&qword_129A78, &qword_E5D70);
      sub_CB444();
      sub_CB598();
      v224 = v320;
      sub_D5BF0();
      sub_FBD4(v224, v330, &qword_129A40, &qword_E5D50);
      swift_storeEnumTagMultiPayload();
      sub_CB3B8();
      sub_CB6A0();
      sub_D5BF0();
      sub_718B4(v218._countAndFlagsBits, v218._object, countAndFlagsBits);
      sub_718B4(v218._countAndFlagsBits, v218._object, countAndFlagsBits);
      v126 = v224;
      v127 = &qword_129A40;
      v128 = &qword_E5D50;
      return sub_FC3C(v126, v127, v128);
    }

    if (v327 == 9)
    {
      v327 = sub_D5B50();
      v320 = v80;
      LODWORD(v318) = v81;
      v319 = v82;
      v83 = v60;
      v84 = *(v60 + 48);
      v85 = v326._countAndFlagsBits;
      v86 = (v326._countAndFlagsBits + v84);
      v87 = *v86;
      v88 = v86[1];
      LODWORD(v317) = *(v86 + 16);
      v89 = *(v83 + 16);
      swift_getWitnessTable();
      v90 = sub_D5750();
      __chkstk_darwin(v90);
      swift_getKeyPath();
      sub_D5880();

      v333 = v336;
      LOBYTE(v334._countAndFlagsBits) = v337._countAndFlagsBits;
      sub_66D4(&qword_129C10, &qword_E6048);
      sub_CC918();
      sub_CCA70(&qword_129C20, &qword_129C10, &qword_E6048);
      v91 = v291;
      sub_D62B0();
      v92 = *sub_D5740();
      v93 = (*(v92 + 400))();

      LOBYTE(v336._countAndFlagsBits) = v93;
      v94 = v305;
      v95 = v304;
      (*(v305 + 16))(v304, v85, v83);
      v96 = (*(v94 + 80) + 24) & ~*(v94 + 80);
      v97 = swift_allocObject();
      *(v97 + 16) = v89;
      (*(v94 + 32))(v97 + v96, v95, v83);
      v98 = sub_109A8(&qword_129AC0, &qword_129AB8, &qword_E5D98);
      v99 = sub_82780();
      v100 = v292;
      v101 = v310;
      sub_D6150();

      (*(v293 + 8))(v91, v101);
      v336._countAndFlagsBits = v101;
      v336._object = &type metadata for RuleCondition;
      v337._countAndFlagsBits = v98;
      v337._object = v99;
      v102 = swift_getOpaqueTypeConformance2();
      v103 = v295;
      v104 = v311;
      sub_D6000();
      (*(v294 + 8))(v100, v104);
      v105 = v296;
      v106 = v313;
      (*(v296 + 16))(v314, v103, v313);
      swift_storeEnumTagMultiPayload();
      v336._countAndFlagsBits = v104;
      v336._object = v102;
      swift_getOpaqueTypeConformance2();
      sub_CC180(&qword_129AC8, &qword_129AD0, &qword_E5DA0, sub_CB8AC);
      v107 = v315;
      sub_D5BF0();
      sub_FBD4(v107, v323, &qword_129AA8, &qword_E5D88);
      swift_storeEnumTagMultiPayload();
      sub_CB72C();
      sub_CBB70();
      v108 = v324;
      sub_D5BF0();
      sub_FC3C(v107, &qword_129AA8, &qword_E5D88);
      sub_FBD4(v108, v330, &qword_129A98, &qword_E5D80);
      swift_storeEnumTagMultiPayload();
      sub_CB3B8();
      sub_CB6A0();
      sub_D5BF0();
      sub_FC3C(v108, &qword_129A98, &qword_E5D80);
      return (*(v105 + 8))(v103, v106);
    }

    goto LABEL_15;
  }

  if (v327 == 10)
  {
    v180 = v60;
    v181 = v326._countAndFlagsBits + *(v60 + 48);
    v182 = *v181;
    v183 = *(v181 + 8);
    v184 = *(v181 + 16);
    v185 = *(v180 + 16);
    swift_getWitnessTable();
    v186 = *sub_D5740();
    v187 = (*(v186 + 352))();

    if ((v187 & 0xFB) == 0)
    {
      v225 = v302;
      (*(v300 + 56))(v302, 1, 1, v301);
LABEL_35:
      v162 = &qword_129AD0;
      v163 = &qword_E5DA0;
      sub_FBD4(v225, v314, &qword_129AD0, &qword_E5DA0);
      swift_storeEnumTagMultiPayload();
      v262 = sub_109A8(&qword_129AC0, &qword_129AB8, &qword_E5D98);
      v263 = sub_82780();
      v336._countAndFlagsBits = v310;
      v336._object = &type metadata for RuleCondition;
      v337._countAndFlagsBits = v262;
      v337._object = v263;
      v264 = swift_getOpaqueTypeConformance2();
      v336._countAndFlagsBits = v311;
      v336._object = v264;
      swift_getOpaqueTypeConformance2();
      sub_CC180(&qword_129AC8, &qword_129AD0, &qword_E5DA0, sub_CB8AC);
      v265 = v315;
      sub_D5BF0();
      sub_FBD4(v265, v323, &qword_129AA8, &qword_E5D88);
      swift_storeEnumTagMultiPayload();
      sub_CB72C();
      sub_CBB70();
      v266 = v324;
      sub_D5BF0();
      sub_FC3C(v265, &qword_129AA8, &qword_E5D88);
      sub_FBD4(v266, v330, &qword_129A98, &qword_E5D80);
      swift_storeEnumTagMultiPayload();
      sub_CB3B8();
      sub_CB6A0();
      sub_D5BF0();
      sub_FC3C(v266, &qword_129A98, &qword_E5D80);
      v126 = v225;
      goto LABEL_36;
    }

    v188 = *sub_D5740();
    v189 = (*(v188 + 352))();

    v190 = 0;
    v191 = v189;
    v192 = 0xE000000000000000;
    if (v191 > 3)
    {
      if (v191 == 6)
      {
LABEL_32:
        v231 = "RULES.FORM.PLACEHOLDER.EMAILADDRESS";
        goto LABEL_33;
      }

      if (v191 != 4)
      {
LABEL_34:
        type metadata accessor for MAPreferencesViewProvider();
        v232 = swift_getObjCClassFromMetadata();
        v233 = [objc_opt_self() bundleForClass:v232];
        v336._countAndFlagsBits = 2777980912;
        v336._object = 0xA400000000000000;
        v352._countAndFlagsBits = v190;
        v352._object = v192;
        sub_D66D0(v352);
        v353._countAndFlagsBits = 2777980912;
        v353._object = 0xA400000000000000;
        sub_D66D0(v353);
        v267._countAndFlagsBits = 0xE000000000000000;
        v354._countAndFlagsBits = v190;
        v354._object = v192;
        v359.value._countAndFlagsBits = 0;
        v359.value._object = 0;
        v234.super.isa = v233;
        v235 = sub_D4E80(v354, v359, v234, v336, v267);
        v237 = v236;

        v238 = sub_D5750();
        v327 = v182;
        __chkstk_darwin(v238);
        swift_getKeyPath();
        sub_D5880();

        v333._countAndFlagsBits = v235;
        v333._object = v237;
        sub_DFAC();
        v239 = v273;
        sub_D6410();
        sub_109A8(&qword_121460, &qword_121420, &qword_DA840);
        v240 = v272;
        v241 = v282;
        sub_D5FF0();
        (*(v278 + 8))(v239, v241);
        KeyPath = swift_getKeyPath();
        v243 = sub_D65F0();
        v245 = v244;
        v246 = v274;
        (*(v277 + 32))(v274, v240, v279);
        v247 = v281;
        v248 = (v246 + *(v281 + 36));
        *v248 = KeyPath;
        v248[1] = v243;
        v248[2] = v245;
        v249 = sub_CB9F4();
        v250 = v275;
        sub_D6050();
        sub_FC3C(v246, &qword_129AF8, &qword_E5DC0);
        v336._countAndFlagsBits = v247;
        v336._object = v249;
        v251 = swift_getOpaqueTypeConformance2();
        v252 = v276;
        v253 = v285;
        sub_D6080();
        (*(v280 + 8))(v250, v253);
        v336._countAndFlagsBits = v253;
        v336._object = v251;
        swift_getOpaqueTypeConformance2();
        v254 = v288;
        v255 = v284;
        sub_D6000();
        (*(v283 + 8))(v252, v255);
        v256 = sub_D5750();
        __chkstk_darwin(v256);
        swift_getKeyPath();
        sub_D5880();

        v326 = v336;
        v257 = v337;
        sub_D5740();

        v258 = v287;
        (*(v289 + 32))(v287, v254, v290);
        v259 = v301;
        v260 = v258 + *(v301 + 36);
        *v260 = v326;
        *(v260 + 16) = v257;
        *(v260 + 32) = 90;
        v261 = v286;
        sub_CC7F8(v258, v286);
        v225 = v302;
        sub_CC7F8(v261, v302);
        (*(v300 + 56))(v225, 0, 1, v259);
        goto LABEL_35;
      }
    }

    else if (v191)
    {
      if (v191 != 2)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v231 = "RULES.FORM.PLACEHOLDER.CHOOSEFOLDER";
LABEL_33:
    v192 = ((v231 - 32) | 0x8000000000000000);
    v190 = 0xD000000000000023;
    goto LABEL_34;
  }

  if (v327 != 11)
  {
    goto LABEL_15;
  }

  v129 = v60;
  v130 = v326._countAndFlagsBits;
  v131 = v326._countAndFlagsBits + *(v60 + 48);
  v132 = *v131;
  v133 = *(v131 + 8);
  v134 = *(v131 + 16);
  v135 = *(v129 + 16);
  swift_getWitnessTable();
  v136 = *sub_D5740();
  LOBYTE(v133) = (*(v136 + 352))();

  if ((v133 & 0xFB) != 0)
  {
    v138 = v299;
    (*(v297 + 56))(v299, 1, 1, v298);
  }

  else
  {
    __chkstk_darwin(v137);
    sub_CA2D4(v130, v135, v270);
    sub_66D4(&qword_129BF8, &qword_E5FD0);
    sub_109A8(&qword_129C00, &qword_129BF8, &qword_E5FD0);
    sub_CC6E0(&qword_129C08, type metadata accessor for MSFolderListSelectionView);
    v226 = v269;
    sub_D5810();
    v227 = v297;
    v138 = v299;
    v228 = v298;
    (*(v297 + 32))(v299, v226, v298);
    (*(v227 + 56))(v138, 0, 1, v228);
  }

  sub_FBD4(v138, v308, &qword_129B28, &qword_E5DD0);
  swift_storeEnumTagMultiPayload();
  sub_CBBFC();
  v229 = v309;
  sub_D5BF0();
  sub_FBD4(v229, v323, &qword_129B18, &qword_E5DC8);
  swift_storeEnumTagMultiPayload();
  sub_CB72C();
  sub_CBB70();
  v230 = v324;
  sub_D5BF0();
  sub_FC3C(v229, &qword_129B18, &qword_E5DC8);
  sub_FBD4(v230, v330, &qword_129A98, &qword_E5D80);
  swift_storeEnumTagMultiPayload();
  sub_CB3B8();
  sub_CB6A0();
  sub_D5BF0();
  sub_FC3C(v230, &qword_129A98, &qword_E5D80);
  return sub_FC3C(v138, &qword_129B28, &qword_E5DD0);
}

uint64_t sub_C9840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v28 = a2;
  v4 = type metadata accessor for MSRuleBaseView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v29 = v27 - v7;
  v8 = type metadata accessor for MSRuleBaseView.RuleFormElement();
  v9 = sub_D67E0();
  v33 = v9;
  v10 = sub_6110(&qword_129A30, &qword_E5D48);
  v32 = v10;
  WitnessTable = swift_getWitnessTable();
  v31 = WitnessTable;
  v30 = swift_getWitnessTable();
  v38 = v9;
  v39 = v8;
  v40 = v10;
  v41 = WitnessTable;
  v42 = v30;
  v12 = sub_D6350();
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v27 - v17;
  v38 = *(a1 + *(v4 + 44));
  v19 = v28;
  v36 = v28;
  v27[1] = swift_getKeyPath();
  v20 = v29;
  (*(v5 + 16))(v29, a1, v4);
  v21 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  (*(v5 + 32))(v22 + v21, v20, v4);
  v23 = sub_CB32C();

  sub_D6330();
  v37 = v23;
  v24 = swift_getWitnessTable();
  sub_5ADA8(v16, v12, v24);
  v25 = *(v34 + 8);
  v25(v16, v12);
  sub_5ADA8(v18, v12, v24);
  return (v25)(v18, v12);
}

uint64_t sub_C9B94()
{
  swift_getKeyPath();
  sub_66D4(&qword_1276C8, qword_E0968);
  sub_109A8(&qword_129C40, &qword_1276C8, qword_E0968);
  sub_CCA1C();
  return sub_D6330();
}

uint64_t sub_C9C80@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0xD00000000000001ELL;
  v4 = *a1;
  v5 = "S.CONDITION.SUBJECT";
  v6 = 0xD000000000000022;
  v7 = "S.CONDITION.LISTID";
  v8 = 0xD000000000000023;
  if (v4 != 4)
  {
    v8 = 0xD000000000000022;
    v7 = "RULES.FORM.LABEL.CONDITION";
  }

  if (v4 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "RULES.RULEOPTIONS.CONDITION.CC";
  if (v4 != 1)
  {
    v9 = "S.CONDITION.TOORCC";
  }

  if (*a1)
  {
    v10 = v9;
  }

  else
  {
    v3 = 0xD000000000000020;
    v10 = "RULES.RULEOPTIONS.CONDITION.TO";
  }

  if (*a1 <= 2u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  if (*a1 <= 2u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v21._object = (v12 | 0x8000000000000000);
  v21._countAndFlagsBits = v11;
  sub_D66D0(v21);
  v22._countAndFlagsBits = 2777980912;
  v22._object = 0xA400000000000000;
  sub_D66D0(v22);
  v25._countAndFlagsBits = 2777980912;
  v20._countAndFlagsBits = 0xE000000000000000;
  v23._object = (v12 | 0x8000000000000000);
  v23._countAndFlagsBits = v11;
  v24.value._countAndFlagsBits = 0;
  v24.value._object = 0;
  v15.super.isa = v14;
  v25._object = 0xA400000000000000;
  sub_D4E80(v23, v24, v15, v25, v20);

  sub_DFAC();
  result = sub_D5F50();
  *a2 = result;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v19;
  return result;
}

uint64_t sub_C9E30()
{
  swift_getKeyPath();
  sub_66D4(&qword_1276B0, qword_E0888);
  sub_109A8(&qword_129C48, &qword_1276B0, qword_E0888);
  sub_CC918();
  return sub_D6330();
}

uint64_t sub_C9F1C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = "S.ACTION.MOVETOTRASH";
  v5 = "S.ACTION.FORWARDTOANDMARKREAD";
  v6 = 0xD00000000000002FLL;
  if (v3 != 5)
  {
    v6 = 0xD00000000000002DLL;
    v5 = "S.CONDITION.FROM";
  }

  v7 = "OLDERANDMARKREAD";
  v8 = 0xD000000000000030;
  if (v3 == 3)
  {
    v8 = 0xD000000000000021;
  }

  else
  {
    v7 = "S.ACTION.MOVETOTRASHANDMARKREAD";
  }

  if (*a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "S.ACTION.FORWARDTO";
  if (v3 == 1)
  {
    v10 = 0xD000000000000024;
  }

  else
  {
    v10 = 0xD000000000000022;
  }

  if (v3 != 1)
  {
    v9 = "S.ACTION.MARKREAD";
  }

  if (*a1)
  {
    v4 = v9;
  }

  else
  {
    v10 = 0xD000000000000025;
  }

  if (*a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (*a1 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v21._object = (v12 | 0x8000000000000000);
  v21._countAndFlagsBits = v11;
  sub_D66D0(v21);
  v22._countAndFlagsBits = 2777980912;
  v22._object = 0xA400000000000000;
  sub_D66D0(v22);
  v25._countAndFlagsBits = 2777980912;
  v20._countAndFlagsBits = 0xE000000000000000;
  v23._object = (v12 | 0x8000000000000000);
  v23._countAndFlagsBits = v11;
  v24.value._countAndFlagsBits = 0;
  v24.value._object = 0;
  v15.super.isa = v14;
  v25._object = 0xA400000000000000;
  sub_D4E80(v23, v24, v15, v25, v20);

  sub_DFAC();
  result = sub_D5F50();
  *a2 = result;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v19;
  return result;
}

uint64_t sub_CA0F0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = (a3 + *(type metadata accessor for MSRuleBaseView() + 48));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  swift_getWitnessTable();
  v8 = sub_D5740();
  v9 = "RULES.FORM.PLACEHOLDER.LISTID";
  if (v3 == 4)
  {
    v10 = 0xD00000000000001ELL;
  }

  else
  {
    v10 = 0xD00000000000001DLL;
  }

  if (v3 != 4)
  {
    v9 = "ge";
  }

  if (v3 >= 4)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0xD000000000000029;
  }

  if (v3 >= 4)
  {
    v12 = v9;
  }

  else
  {
    v12 = "RULES.FORM.PLACEHOLDER.SUBJECT";
  }

  v13 = v8;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v23._object = (v12 | 0x8000000000000000);
  v23._countAndFlagsBits = v11;
  sub_D66D0(v23);
  v24._countAndFlagsBits = 2777980912;
  v24._object = 0xA400000000000000;
  sub_D66D0(v24);
  v27._countAndFlagsBits = 2777980912;
  v21._countAndFlagsBits = 0xE000000000000000;
  v25._object = (v12 | 0x8000000000000000);
  v25._countAndFlagsBits = v11;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v16.super.isa = v15;
  v27._object = 0xA400000000000000;
  v17 = sub_D4E80(v25, v26, v16, v27, v21);
  v19 = v18;

  (*(*v13 + 600))(v17, v19);
}

uint64_t sub_CA2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v47 = a1;
  v49 = a3;
  v5 = type metadata accessor for MSRuleBaseView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v46 - v9;
  v11 = (a1 + *(v8 + 48));
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  swift_getWitnessTable();
  v15 = *sub_D5740();
  (*(v15 + 1048))(v59);

  v48 = *(sub_D5740() + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_folderList);

  v16 = *sub_D5740();
  v53 = (*(v16 + 544))();
  v52 = v17;

  v18 = *sub_D5740();
  v51 = (*(v18 + 1000))();
  v50 = v19;

  v20 = *sub_D5740();
  v21 = (*(v20 + 1024))();
  v23 = v22;

  (*(v6 + 16))(v10, v47, v5);
  v24 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  v26 = v49;
  (*(v6 + 32))(v25 + v24, v10, v5);
  *v26 = swift_getKeyPath();
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  swift_storeEnumTagMultiPayload();
  sub_2A5C4(v59, v57);
  v27 = v58;
  v28 = sub_38BFC(v57, v58);
  v29 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = (&v46 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = *v31;
  v34 = type metadata accessor for MSRepositoryDefault();
  v56[3] = v34;
  v56[4] = &off_1188F0;
  v56[0] = v33;
  v35 = v48;
  type metadata accessor for MSFolderListSelectionView.ViewModel();
  v36 = swift_allocObject();
  v37 = sub_38BFC(v56, v34);
  v38 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v37);
  v40 = (&v46 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  v42 = *v40;
  v55[3] = v34;
  v55[4] = &off_1188F0;
  v55[0] = v42;
  *(v36 + 112) = &_swiftEmptySetSingleton;
  *(v36 + 152) = 0;
  *(v36 + 16) = v35;
  sub_2A5C4(v55, v36 + 72);
  v43 = v52;
  *(v36 + 24) = v53;
  *(v36 + 32) = v43;
  *(v36 + 40) = sub_CCB74;
  *(v36 + 48) = v25;
  v44 = v50;
  *(v36 + 120) = v51;
  *(v36 + 128) = v44;
  *(v36 + 136) = v21;
  *(v36 + 144) = v23;

  sub_D54F0();
  if (v54)
  {

    sub_67D4(v59);
    sub_67D4(v55);
    *(v36 + 56) = xmmword_DBAE0;
  }

  else
  {
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    sub_8CDF0();

    sub_67D4(v59);
    sub_67D4(v55);
  }

  sub_67D4(v56);
  sub_67D4(v57);
  result = type metadata accessor for MSFolderListSelectionView();
  *(v26 + *(result + 20)) = v36;
  return result;
}

uint64_t sub_CA8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a3 + *(type metadata accessor for MSRuleBaseView() + 48));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  swift_getWitnessTable();
  v9 = *(*sub_D5740() + 552);

  v9(a1, a2);
}

uint64_t sub_CA9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_D5B40();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_66D4(&qword_129C50, &qword_E60D0);
  return sub_CAA3C(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_CAA3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v3 = sub_66D4(&qword_129C58, &qword_E60D8);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v41 - v8;
  v10 = (a1 + *(type metadata accessor for MSRuleBaseView() + 48));
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  swift_getWitnessTable();
  v14 = *sub_D5740();
  v15 = (*(v14 + 1232))();
  v17 = v16;

  *&v46 = v15;
  *(&v46 + 1) = v17;
  sub_DFAC();
  v18 = sub_D5F50();
  v20 = v19;
  v22 = v21;
  v42 = v23;
  KeyPath = swift_getKeyPath();
  v25 = swift_getKeyPath();
  v26 = v22 & 1;
  LOBYTE(v46) = v22 & 1;
  v45 = 0;
  v27 = &v9[*(sub_66D4(&qword_1266A0, &qword_E32E0) + 36)];
  v28 = *(sub_66D4(&qword_1214A8, &qword_D9280) + 28);
  v29 = enum case for Text.TruncationMode.tail(_:);
  v30 = sub_D5EF0();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = swift_getKeyPath();
  *v9 = v18;
  *(v9 + 1) = v20;
  v9[16] = v26;
  *(v9 + 17) = *v49;
  *(v9 + 5) = *&v49[3];
  *(v9 + 3) = v42;
  *(v9 + 4) = KeyPath;
  *(v9 + 5) = 0x3FE999999999999ALL;
  *(v9 + 6) = v25;
  *(v9 + 7) = 1;
  v9[64] = 0;
  v31 = sub_D61B0();
  v32 = swift_getKeyPath();
  v33 = &v9[*(sub_66D4(&qword_126698, &qword_DEFA0) + 36)];
  *v33 = v32;
  v33[1] = v31;
  sub_D63F0();
  sub_D57C0();
  v34 = &v9[*(v4 + 44)];
  v35 = v47;
  *v34 = v46;
  *(v34 + 1) = v35;
  *(v34 + 2) = v48;
  v36 = v43;
  sub_FBD4(v9, v43, &qword_129C58, &qword_E60D8);
  v37 = v44;
  *v44 = 0;
  *(v37 + 8) = 1;
  v38 = v37;
  v39 = sub_66D4(&qword_129C60, &qword_E61A8);
  sub_FBD4(v36, v38 + *(v39 + 48), &qword_129C58, &qword_E60D8);
  sub_FC3C(v9, &qword_129C58, &qword_E60D8);
  return sub_FC3C(v36, &qword_129C58, &qword_E60D8);
}

uint64_t sub_CADBC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1142A8;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_CAE0C(char a1)
{
  result = 0x656D614E656C7552;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
    case 5:
    case 6:
      result = 0x6F697469646E6F43;
      break;
    case 3:
    case 4:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x614C6E6F69746341;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x654D6E6F69746341;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0x6E776F6E4B6E55;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_CAFB8()
{
  swift_getWitnessTable();

  return sub_D6C30();
}

uint64_t sub_CB02C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_CB098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_CB108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_CB178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(a2 + 16);
  result = sub_CADBC(*a1, *(a1 + 8));
  *a3 = result;
  return result;
}

unint64_t sub_CB1B0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  result = sub_CAE0C(*v2);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_CB1E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_CAE08(*v2, *(a1 + 16));
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t sub_CB274()
{
  result = qword_129A20;
  if (!qword_129A20)
  {
    sub_6110(&qword_129A18, &qword_E5D40);
    sub_CB32C();
    sub_109A8(&qword_129B40, &qword_129B48, &qword_E5DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129A20);
  }

  return result;
}

unint64_t sub_CB32C()
{
  result = qword_129A28;
  if (!qword_129A28)
  {
    sub_6110(&qword_129A30, &qword_E5D48);
    sub_CB3B8();
    sub_CB6A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129A28);
  }

  return result;
}

unint64_t sub_CB3B8()
{
  result = qword_129A38;
  if (!qword_129A38)
  {
    sub_6110(&qword_129A40, &qword_E5D50);
    sub_CB444();
    sub_CB598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129A38);
  }

  return result;
}

unint64_t sub_CB444()
{
  result = qword_129A48;
  if (!qword_129A48)
  {
    sub_6110(&qword_129A50, &qword_E5D58);
    sub_6110(&qword_129A58, &qword_E5D60);
    sub_6110(&qword_129A60, &qword_E5D68);
    sub_109A8(&qword_129A68, &qword_129A60, &qword_E5D68);
    sub_82780();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129A48);
  }

  return result;
}

unint64_t sub_CB598()
{
  result = qword_129A70;
  if (!qword_129A70)
  {
    sub_6110(&qword_129A78, &qword_E5D70);
    sub_CB624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129A70);
  }

  return result;
}

unint64_t sub_CB624()
{
  result = qword_129A80;
  if (!qword_129A80)
  {
    sub_6110(&qword_129A88, &qword_E5D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129A80);
  }

  return result;
}

unint64_t sub_CB6A0()
{
  result = qword_129A90;
  if (!qword_129A90)
  {
    sub_6110(&qword_129A98, &qword_E5D80);
    sub_CB72C();
    sub_CBB70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129A90);
  }

  return result;
}

unint64_t sub_CB72C()
{
  result = qword_129AA0;
  if (!qword_129AA0)
  {
    sub_6110(&qword_129AA8, &qword_E5D88);
    sub_6110(&qword_129AB0, &qword_E5D90);
    sub_6110(&qword_129AB8, &qword_E5D98);
    sub_109A8(&qword_129AC0, &qword_129AB8, &qword_E5D98);
    sub_82780();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_CC180(&qword_129AC8, &qword_129AD0, &qword_E5DA0, sub_CB8AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129AA0);
  }

  return result;
}

unint64_t sub_CB8AC()
{
  result = qword_129AD8;
  if (!qword_129AD8)
  {
    sub_6110(&qword_129AE0, &qword_E5DA8);
    sub_6110(&qword_129AE8, &qword_E5DB0);
    sub_6110(&qword_129AF0, &qword_E5DB8);
    sub_6110(&qword_129AF8, &qword_E5DC0);
    sub_CB9F4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_CBB1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129AD8);
  }

  return result;
}

unint64_t sub_CB9F4()
{
  result = qword_129B00;
  if (!qword_129B00)
  {
    sub_6110(&qword_129AF8, &qword_E5DC0);
    sub_6110(&qword_121420, &qword_DA840);
    sub_109A8(&qword_121460, &qword_121420, &qword_DA840);
    swift_getOpaqueTypeConformance2();
    sub_109A8(&qword_121468, &qword_121470, &qword_D91B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129B00);
  }

  return result;
}

unint64_t sub_CBB1C()
{
  result = qword_129B08;
  if (!qword_129B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129B08);
  }

  return result;
}

unint64_t sub_CBB70()
{
  result = qword_129B10;
  if (!qword_129B10)
  {
    sub_6110(&qword_129B18, &qword_E5DC8);
    sub_CBBFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129B10);
  }

  return result;
}

unint64_t sub_CBBFC()
{
  result = qword_129B20;
  if (!qword_129B20)
  {
    sub_6110(&qword_129B28, &qword_E5DD0);
    sub_109A8(&qword_129B30, &qword_129B38, &qword_E5DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129B20);
  }

  return result;
}

uint64_t sub_CBCB8()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for MSRuleBaseView() - 8);
  v3 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_C2504(v3);
}

double sub_CBD2C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 1072))(&v5);
  v3 = v6[0];
  *a2 = v5;
  a2[1] = v3;
  result = *(v6 + 9);
  *(a2 + 25) = *(v6 + 9);
  return result;
}

uint64_t sub_CBD98(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v6 = *a1;
  v7[0] = v2;
  *(v7 + 9) = *(a1 + 25);
  v3 = *(**a2 + 1080);
  sub_FBD4(&v6, &v5, &qword_120EE8, &qword_D8DD0);
  return v3(&v6);
}

uint64_t sub_CBE80(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(type metadata accessor for MSRuleBaseView() - 8);
  return sub_C2108(v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80)), v5, a1, a2);
}

uint64_t sub_CBF38()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for MSRuleBaseView() - 8);
  return sub_C2330(v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80)));
}

uint64_t sub_CBFA8()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for MSRuleBaseView() - 8);
  return sub_C1618(v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80)));
}

unint64_t sub_CC038()
{
  result = qword_129B80;
  if (!qword_129B80)
  {
    sub_6110(&qword_129B50, &qword_E5DE8);
    sub_6110(&qword_121450, &qword_D9150);
    sub_6110(&qword_121448, &qword_D9148);
    sub_6110(&qword_121440, &qword_D9140);
    sub_FDA8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_CBB1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129B80);
  }

  return result;
}

uint64_t sub_CC180(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_6110(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_CC1FC()
{
  result = qword_129B90;
  if (!qword_129B90)
  {
    sub_6110(&qword_129B78, &unk_E5E98);
    sub_CC038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129B90);
  }

  return result;
}

uint64_t sub_CC294@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_CC2E8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 312);

  return v4(v2, v3);
}

uint64_t sub_CC37C@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(type metadata accessor for MSRuleBaseView() - 8);
  v7 = (v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80)));

  return sub_C4194(a1, v7, a2);
}

uint64_t sub_CC408@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 448))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_CC45C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 456);

  return v4(v2, v3);
}

uint64_t sub_CC4E4()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for MSRuleBaseView();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = *(v0 + 24);

  v7 = (v0 + v4);
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_D57E0();
    (*(*(v8 - 8) + 8))(v0 + v4, v8);
  }

  else
  {
    v9 = *v7;
  }

  v10 = *(v7 + v2[8]);

  v11 = *(v7 + v2[9]);

  v12 = *(v7 + v2[10]);

  v13 = *(v7 + v2[11]);

  v14 = v7 + v2[12];
  v15 = *v14;
  v16 = *(v14 + 1);
  v17 = v14[16];
  sub_E0C4();

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_CC648@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(type metadata accessor for MSRuleBaseView() - 8);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_C6450(a1, v7, v8, a2);
}

uint64_t sub_CC6E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_CC728@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 496))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_CC77C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 504);

  return v4(v2, v3);
}

uint64_t sub_CC7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_129AE0, &qword_E5DA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_CC868@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result;
  return result;
}

unint64_t sub_CC918()
{
  result = qword_129C18;
  if (!qword_129C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129C18);
  }

  return result;
}

uint64_t sub_CC96C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  return result;
}

unint64_t sub_CCA1C()
{
  result = qword_129C30;
  if (!qword_129C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129C30);
  }

  return result;
}

uint64_t sub_CCA70(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_6110(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_CCAD4(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(v2 + 16);
  v6 = *(type metadata accessor for MSRuleBaseView() - 8);
  return sub_CA0F0(a1, a2, v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80)));
}

uint64_t sub_CCB74(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(type metadata accessor for MSRuleBaseView() - 8);
  v7 = v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return sub_CA8E8(a1, a2, v7);
}

uint64_t sub_CCC0C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for MSRuleBaseView();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = (v0 + v4);
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_D57E0();
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = *(v6 + v2[8]);

  v10 = *(v6 + v2[9]);

  v11 = *(v6 + v2[10]);

  v12 = *(v6 + v2[11]);

  v13 = v6 + v2[12];
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = v13[16];
  sub_E0C4();

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_CCD68@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = type metadata accessor for MSRuleBaseView();
  v7 = v2 + ((*(*(v6 - 8) + 80) + 24) & ~*(*(v6 - 8) + 80));
  return sub_C6844(*a1, v6, a2);
}

uint64_t sub_CCDE4(uint64_t *a1)
{
  v1 = *a1;
  sub_D5840();
  sub_6110(&qword_129A10, &qword_E5D38);
  type metadata accessor for MSRuleBaseView.RuleFormElement();
  sub_D67E0();
  sub_6110(&qword_129A18, &qword_E5D40);
  swift_getWitnessTable();
  sub_D6350();
  sub_CB274();
  swift_getWitnessTable();
  sub_D62A0();
  sub_6110(&qword_129B50, &qword_E5DE8);
  sub_D5C00();
  sub_6110(&qword_129A30, &qword_E5D48);
  swift_getWitnessTable();
  sub_D6350();
  sub_CB32C();
  swift_getWitnessTable();
  sub_D62A0();
  sub_D6930();
  sub_D5C00();
  sub_D5C00();
  sub_D5C00();
  sub_D6350();
  sub_6110(&qword_128BF8, &qword_E5DF0);
  sub_D63B0();
  swift_getTupleTypeMetadata2();
  sub_D6430();
  swift_getWitnessTable();
  sub_D5E70();
  swift_getWitnessTable();
  sub_DFAC();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_6110(&qword_129B58, &qword_E5DF8);
  swift_getOpaqueTypeConformance2();
  sub_109A8(&qword_129B60, &qword_129B58, &qword_E5DF8);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_D58F0();
  sub_D58D0();
  sub_6110(&qword_121178, &qword_DB0C0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_E000();
  sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
  return swift_getOpaqueTypeConformance2();
}

id sub_CD354()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSRuleUpdateAPI();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSRuleUpdateAPI()
{
  result = qword_129C90;
  if (!qword_129C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_CD3E0()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_CD428()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSUpdateCustomDomainAPIRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSUpdateCustomDomainAPIRequest()
{
  result = qword_129E80;
  if (!qword_129E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_CD4C8()
{
  v1 = v0;
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v7 = sub_6610(v2, qword_137988);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_D5320();
  v9 = sub_D68A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "[Addresses] Edit primary address tapped", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v11 = *(v1 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_account);

  sub_D54F0();

  v40[0] = v35;
  v40[1] = v36;
  v40[2] = v37;
  v40[3] = v38;
  v41 = v39;
  if (*(&v35 + 1))
  {
    v42[0] = *&v40[0];
    v42[1] = *(&v35 + 1);
    v43 = v36;
    v44 = v37;
    v45 = v38;
    v46 = v39;
    v13 = *(v1 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_defaultEmail);
    v14 = *(v1 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_defaultEmail + 8);
    sub_2A5C4(v1 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_repository, &v35);
    v15 = *(&v36 + 1);
    v16 = sub_38BFC(&v35, *(&v36 + 1));
    v17 = *(*(v15 - 8) + 64);
    __chkstk_darwin(v16);
    v19 = (v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v22 = type metadata accessor for MSRepositoryDefault();
    v34[3] = v22;
    v34[4] = &off_1188F0;
    v34[0] = v21;
    v23 = type metadata accessor for MSPrimaryAddressViewModel();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    v26 = swift_allocObject();
    v27 = sub_38BFC(v34, v22);
    v28 = *(*(v22 - 8) + 64);
    __chkstk_darwin(v27);
    v30 = (v34 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30);
    v32 = *v30;

    v33 = sub_CF298(v42, v13, v14, v32, v26);
    sub_D1144(v40);
    sub_67D4(v34);
    sub_67D4(&v35);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v35 = v33;

    return sub_D5580();
  }

  return result;
}

uint64_t sub_CD910(uint64_t a1)
{
  v2 = v1;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v9 = sub_6610(v4, qword_137988);
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_D5320();
  v11 = sub_D68A0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "[Addresses] Edit custom email domain tapped", v12, 2u);
  }

  (*(v5 + 8))(v8, v4);
  v13 = *(v2 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_defaultEmail);
  v14 = *(v2 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_defaultEmail + 8);
  sub_2A5C4(v2 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_repository, v38);
  v15 = v39;
  v16 = sub_38BFC(v38, v39);
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v22 = type metadata accessor for MSRepositoryDefault();
  v37[3] = v22;
  v37[4] = &off_1188F0;
  v37[0] = v21;
  v23 = type metadata accessor for MSCustomEmailDetailViewModel();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v27 = sub_38BFC(v37, v22);
  v28 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = (&v35 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = *v30;
  sub_13E98(a1, &v36);

  v33 = sub_CFCE8(a1, v13, v14, v32, v26);
  sub_1409C(a1);
  sub_67D4(v37);
  sub_67D4(v38);
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v33;

  return sub_D5580();
}

uint64_t sub_CDCF0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v9 = sub_6610(v4, qword_137988);
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_D5320();
  v11 = sub_D68A0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "[Addresses] Edit alias tapped", v12, 2u);
  }

  (*(v5 + 8))(v8, v4);
  v13 = *(v2 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_defaultEmail);
  v14 = *(v2 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_defaultEmail + 8);
  sub_2A5C4(v2 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_repository, v37);
  v15 = v38;
  v16 = sub_38BFC(v37, v38);
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v22 = type metadata accessor for MSRepositoryDefault();
  v36[3] = v22;
  v36[4] = &off_1188F0;
  v36[0] = v21;
  v23 = type metadata accessor for MSAliasDetailViewModel();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v27 = sub_38BFC(v36, v22);
  v28 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = (v35 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = *v30;
  sub_5842C(a1, v35);

  v33 = sub_D06B4(a1, v13, v14, v32, v26);
  sub_584E0(a1);
  sub_67D4(v36);
  sub_67D4(v37);
  swift_getKeyPath();
  swift_getKeyPath();
  v35[0] = v33;

  return sub_D5580();
}

uint64_t sub_CE0BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

uint64_t sub_CE1BC()
{
  v1 = v0;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass:ObjCClassFromMetadata];
  v42._countAndFlagsBits = 0x5F53455341494C41;
  v42._object = 0xEE005245544F4F46;
  sub_D66D0(v42);
  v43._countAndFlagsBits = 2777980912;
  v43._object = 0xA400000000000000;
  sub_D66D0(v43);
  v66._countAndFlagsBits = 2777980912;
  v36._countAndFlagsBits = 0xE000000000000000;
  v44._countAndFlagsBits = 0x5F53455341494C41;
  v44._object = 0xEE005245544F4F46;
  v61.value._countAndFlagsBits = 0;
  v61.value._object = 0;
  v5.super.isa = v4;
  v66._object = 0xA400000000000000;
  v6 = sub_D4E80(v44, v61, v5, v66, v36);

  v41 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v7 = *(v40 + 16);

  v8 = *(v1 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_maxAliasCountAllowed);
  v37._object = v3;
  if (v8 >= v7)
  {
    v15 = [v3 bundleForClass:ObjCClassFromMetadata];
    v63.value._countAndFlagsBits = 0xD000000000000011;
    v37._countAndFlagsBits = 0x80000000000EA560;
    v50._object = 0x80000000000EA520;
    v63.value._object = 0x80000000000EA540;
    v50._countAndFlagsBits = 0xD000000000000015;
    v16.super.isa = v15;
    v68._countAndFlagsBits = 0;
    v68._object = 0xE000000000000000;
    sub_D4E80(v50, v63, v16, v68, v37);

    sub_66D4(&qword_121390, &qword_D9050);
    v17 = swift_allocObject();
    v14 = &unk_DA000;
    *(v17 + 16) = xmmword_DA270;
    *(v17 + 56) = &type metadata for Int;
    *(v17 + 64) = &protocol witness table for Int;
    *(v17 + 32) = v8;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v18 = *(v40 + 16);

    *(v17 + 96) = &type metadata for Int;
    *(v17 + 104) = &protocol witness table for Int;
    *(v17 + 72) = v18;
    v19 = sub_D65D0();
    v21 = v20;

    v51._countAndFlagsBits = v19;
    v51._object = v21;
    sub_D66D0(v51);

    v52._countAndFlagsBits = 32;
    v52._object = 0xE100000000000000;
    sub_D66D0(v52);
  }

  else
  {
    v9 = [v3 bundleForClass:ObjCClassFromMetadata];
    v45._countAndFlagsBits = 0xD000000000000018;
    v45._object = 0x80000000000EA600;
    sub_D66D0(v45);
    v46._countAndFlagsBits = 2777980912;
    v46._object = 0xA400000000000000;
    sub_D66D0(v46);
    v67._countAndFlagsBits = 2777980912;
    v37._countAndFlagsBits = 0xE000000000000000;
    v47._countAndFlagsBits = 0xD000000000000018;
    v47._object = 0x80000000000EA600;
    v62.value._countAndFlagsBits = 0;
    v62.value._object = 0;
    v10.super.isa = v9;
    v67._object = 0xA400000000000000;
    v11 = sub_D4E80(v47, v62, v10, v67, v37);
    v13 = v12;

    v48._countAndFlagsBits = v11;
    v48._object = v13;
    sub_D66D0(v48);

    v49._countAndFlagsBits = 32;
    v49._object = 0xE100000000000000;
    sub_D66D0(v49);
    v14 = &unk_DA000;
  }

  sub_66D4(&qword_121390, &qword_D9050);
  v22 = swift_allocObject();
  *(v22 + 16) = v14[39];
  object = v38._object;
  v24 = [v38._object bundleForClass:ObjCClassFromMetadata];
  v53._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v53._object = 0xEA00000000004552;
  sub_D66D0(v53);
  v54._countAndFlagsBits = 2777980912;
  v54._object = 0xA400000000000000;
  sub_D66D0(v54);
  v69._countAndFlagsBits = 2777980912;
  v38._countAndFlagsBits = 0xE000000000000000;
  v55._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v55._object = 0xEA00000000004552;
  v64.value._countAndFlagsBits = 0;
  v64.value._object = 0;
  v25.super.isa = v24;
  v69._object = 0xA400000000000000;
  v26 = sub_D4E80(v55, v64, v25, v69, v38);
  v28 = v27;

  *(v22 + 56) = &type metadata for String;
  v29 = sub_F7DC();
  *(v22 + 64) = v29;
  *(v22 + 32) = v26;
  *(v22 + 40) = v28;
  v30 = [object bundleForClass:ObjCClassFromMetadata];
  v56._object = 0x80000000000EA5E0;
  v56._countAndFlagsBits = 0xD000000000000015;
  sub_D66D0(v56);
  v57._countAndFlagsBits = 2777980912;
  v57._object = 0xA400000000000000;
  sub_D66D0(v57);
  v70._countAndFlagsBits = 2777980912;
  v39._countAndFlagsBits = 0xE000000000000000;
  v58._object = 0x80000000000EA5E0;
  v58._countAndFlagsBits = 0xD000000000000015;
  v65.value._countAndFlagsBits = 0;
  v65.value._object = 0;
  v31.super.isa = v30;
  v70._object = 0xA400000000000000;
  v32 = sub_D4E80(v58, v65, v31, v70, v39);
  v34 = v33;

  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v29;
  *(v22 + 72) = v32;
  *(v22 + 80) = v34;
  v59._countAndFlagsBits = sub_D6610();
  sub_D66D0(v59);

  v60._countAndFlagsBits = 32;
  v60._object = 0xE100000000000000;
  sub_D66D0(v60);

  return v41;
}

uint64_t sub_CE7A4()
{
  v1 = sub_66D4(&qword_12A1B8, &qword_E62E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v7 - v4;
  v7[1] = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_account);

  sub_66D4(&qword_124C70, &qword_DFBA0);
  sub_109A8(&qword_12A1C0, &qword_124C70, &qword_DFBA0);
  sub_D55B0();

  swift_allocObject();
  swift_weakInit();
  sub_109A8(&qword_12A1C8, &qword_12A1B8, &qword_E62E0);
  sub_D5610();

  (*(v2 + 8))(v5, v1);
  swift_beginAccess();
  sub_D54B0();
  swift_endAccess();
}

uint64_t sub_CE9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v2;
  v11 = *(a1 + 64);
  v3 = v11;
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  *(a2 + 32) = v9;
  *(a2 + 48) = v2;
  *(a2 + 64) = v3;
  *a2 = v5;
  *(a2 + 16) = v4;
  return sub_FBD4(v8, v7, &qword_128A50, &qword_E2FA8);
}

uint64_t sub_CEA38(__int128 *a1)
{
  v1 = a1[3];
  v13 = a1[2];
  v14 = v1;
  v15 = *(a1 + 8);
  v2 = a1[1];
  v11 = *a1;
  v12 = v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v16 = *(&v14 + 1);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_FBD4(&v16, v10, &qword_128A58, qword_E2FB0);

    sub_D5580();
    sub_B5458();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_D5580();
    sub_B5690();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_D5580();
    v5 = v16;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_D5580();
    *(v4 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_isAddAliasDisabled) = *(v5 + 16) >= *(v4 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_maxAliasCountAllowed);
    v6 = sub_CE1BC();
    v7 = (v4 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_footer);
    v8 = *(v4 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_footer + 8);
    *v7 = v6;
    v7[1] = v9;
  }

  return result;
}

uint64_t sub_CEC6C()
{
  v1 = OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel__selectedAddressToEdit;
  v2 = sub_66D4(&qword_128A40, &qword_E2F98);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel__aliases;
  v4 = sub_66D4(&qword_12A1D0, &qword_E6408);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel__primaryEmail;
  v6 = sub_66D4(&qword_121948, &unk_DC5C0);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel__primaryEmailForDisplay, v6);
  v8 = OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel__customEmails;
  v9 = sub_66D4(&qword_12A1D8, &qword_E6410);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_footer + 8);

  v11 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_account);

  v12 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_cancellables);

  sub_67D4((v0 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_repository));
  v13 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_defaultEmail + 8);

  return v0;
}

uint64_t sub_CEE44()
{
  sub_CEC6C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t _s9ViewModelCMa_4()
{
  result = qword_12A0C0;
  if (!qword_12A0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_CEEF0()
{
  sub_6158(319, &qword_12A0D0, &qword_128A48, &qword_E2FA0);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_6158(319, &qword_12A0D8, &qword_128A58, qword_E2FB0);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_CF0C0();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_6158(319, &unk_12A0E0, &qword_128A60, &qword_E4D20);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_CF0C0()
{
  if (!qword_121638)
  {
    v0 = sub_D5590();
    if (!v1)
    {
      atomic_store(v0, &qword_121638);
    }
  }
}

uint64_t sub_CF110()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_CF298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(&v87 + 1) = a2;
  v80 = sub_66D4(&qword_122F80, &qword_DFB50);
  v77 = *(v80 - 8);
  v9 = *(v77 + 64);
  v10 = __chkstk_darwin(v80);
  v78 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v79 = &v74 - v13;
  __chkstk_darwin(v12);
  v76 = &v74 - v14;
  v85 = sub_66D4(&qword_121070, &qword_DAFE0);
  v84 = *(v85 - 8);
  v15 = *(v84 + 64);
  __chkstk_darwin(v85);
  v83 = &v74 - v16;
  v86 = sub_66D4(&qword_121068, &qword_DBEE0);
  v82 = *(v86 - 8);
  v17 = *(v82 + 64);
  __chkstk_darwin(v86);
  v81 = &v74 - v18;
  v93 = type metadata accessor for MSRepositoryDefault();
  v94 = &off_1188F0;
  v92[0] = a4;
  v19 = a5 + OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_account;
  *(v19 + 8) = *(a1 + 64);
  v20 = *(a1 + 48);
  *(v19 + 2) = *(a1 + 32);
  *(v19 + 3) = v20;
  v21 = *(a1 + 16);
  *v19 = *a1;
  *(v19 + 1) = v21;
  sub_2A5C4(v92, a5 + OBJC_IVAR____TtC18icloudMailSettings25MSPrimaryAddressViewModel_repository);
  v22 = *(a1 + 48);
  v23 = *(v22 + 16);
  if (v23)
  {
    *&v87 = a3;
    v75 = a5;
    sub_63AE8(a1, &v91);
    v89 = _swiftEmptyArrayStorage;
    sub_11BD0(0, v23, 0);
    v24 = v89;
    v25 = (v22 + 48);
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    v74 = a1;
    do
    {
      v29 = *(v25 - 2);
      v28 = *(v25 - 1);
      LODWORD(v88) = *v25;
      v30 = v26;
      v91._countAndFlagsBits = v26;
      v91._object = v27;
      swift_bridgeObjectRetain_n();

      v95._countAndFlagsBits = 64;
      v95._object = 0xE100000000000000;
      sub_D66D0(v95);

      v96._countAndFlagsBits = v29;
      v96._object = v28;
      sub_D66D0(v96);

      if (__PAIR128__(v91._countAndFlagsBits, v91._object) == v87)
      {
        v31 = 1;
      }

      else
      {
        v31 = sub_D6C20();
      }

      v89 = v24;
      v33 = v24[2];
      v32 = v24[3];
      v34 = v24;
      if (v33 >= v32 >> 1)
      {
        sub_11BD0((v32 > 1), v33 + 1, 1);
        v34 = v89;
      }

      v34[2] = v33 + 1;
      v35 = &v34[5 * v33];
      v26 = v30;
      v35[4] = v30;
      v35[5] = v27;
      v35[6] = v29;
      v35[7] = v28;
      *(v35 + 64) = v88;
      *(v35 + 65) = v31 & 1;
      v25 += 24;
      --v23;
      v24 = v34;
    }

    while (v23);

    a5 = v75;
    a1 = v74;
  }

  else
  {
    sub_63AE8(a1, &v91);

    v24 = _swiftEmptyArrayStorage;
  }

  v37 = *(a1 + 16);
  v36 = *(a1 + 24);
  v38 = *(*sub_6648(v92, v93) + 24);

  result = [v38 aa_fullName];
  if (result)
  {
    v40 = result;
    v41 = sub_D65F0();
    *(&v87 + 1) = v42;
    v88 = v41;

    v43 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDoneDisabled;
    LOBYTE(v91._countAndFlagsBits) = 0;
    v44 = v81;
    sub_D5530();
    v45 = *(v82 + 32);
    v46 = v86;
    v45(a5 + v43, v44, v86);
    v47 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDeleteDisabled;
    LOBYTE(v91._countAndFlagsBits) = 0;
    sub_D5530();
    v45(a5 + v47, v44, v46);
    v48 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isUpdating;
    LOBYTE(v91._countAndFlagsBits) = 0;
    sub_D5530();
    v45(a5 + v48, v44, v46);
    v49 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDeleting;
    LOBYTE(v91._countAndFlagsBits) = 0;
    sub_D5530();
    v45(a5 + v49, v44, v46);
    v50 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__error;
    memset(&v91, 0, 41);
    sub_66D4(&qword_120EE8, &qword_D8DD0);
    v51 = v83;
    sub_D5530();
    (*(v84 + 32))(a5 + v50, v51, v85);
    *(a5 + OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel_cancellables) = &_swiftEmptySetSingleton;
    a5[2] = 0;
    a5[3] = 0;
    swift_beginAccess();
    LOBYTE(v89) = 1;
    sub_D5530();
    swift_endAccess();
    swift_beginAccess();
    v89 = v24;

    sub_66D4(&qword_1213B8, &qword_D9088);
    sub_D5530();
    swift_endAccess();
    if (v36)
    {
      v52 = v37;
    }

    else
    {
      v52 = 0;
    }

    if (!v36)
    {
      v36 = 0xE000000000000000;
    }

    swift_beginAccess();
    v89 = v52;
    v90 = v36;
    sub_D5530();
    swift_endAccess();
    swift_beginAccess();
    v89 = 0;
    v90 = 0xE000000000000000;
    sub_D5530();
    result = swift_endAccess();
    v53 = *(&v87 + 1);
    a5[4] = v88;
    a5[5] = v53;
    v54 = v24[2];
    if (v54 >= 2)
    {
      countAndFlagsBits = v24[4];
      object = v24[5];

LABEL_21:
      sub_66D4(&qword_121390, &qword_D9050);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_D8CB0;
      *(v61 + 56) = &type metadata for String;
      *(v61 + 64) = sub_F7DC();
      *(v61 + 32) = countAndFlagsBits;
      *(v61 + 40) = object;
      type metadata accessor for MAPreferencesViewProvider();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v63 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v91._countAndFlagsBits = 2777980912;
      v91._object = 0xA400000000000000;
      v99._object = 0x80000000000EA620;
      v99._countAndFlagsBits = 0xD00000000000001FLL;
      sub_D66D0(v99);
      v100._countAndFlagsBits = 2777980912;
      v100._object = 0xA400000000000000;
      sub_D66D0(v100);
      v73._countAndFlagsBits = 0xE000000000000000;
      v101._object = 0x80000000000EA620;
      v101._countAndFlagsBits = 0xD00000000000001FLL;
      v102.value._countAndFlagsBits = 0;
      v102.value._object = 0;
      v64.super.isa = v63;
      sub_D4E80(v101, v102, v64, v91, v73);

      v65 = sub_D6610();
      v67 = v66;

      a5[6] = v65;
      a5[7] = v67;
      swift_beginAccess();
      v68 = v76;
      sub_D5540();
      swift_endAccess();
      swift_beginAccess();
      v69 = v79;
      sub_D5540();
      swift_endAccess();
      sub_109A8(&qword_122FA0, &qword_122F80, &qword_DFB50);
      v70 = v80;
      sub_D5620();
      v71 = v77;
      v72 = *(v77 + 8);
      v72(v68, v70);
      (*(v71 + 16))(v78, v69, v70);
      swift_beginAccess();
      sub_D5550();
      swift_endAccess();
      v72(v69, v70);
      sub_67D4(v92);
      return a5;
    }

    if (v54 == 1)
    {
      v58 = v24[4];
      v57 = v24[5];
      v59 = v24[6];
      v60 = v24[7];

      v91._countAndFlagsBits = v58;
      v91._object = v57;

      v97._countAndFlagsBits = 64;
      v97._object = 0xE100000000000000;
      sub_D66D0(v97);

      v98._countAndFlagsBits = v59;
      v98._object = v60;
      sub_D66D0(v98);

      object = v91._object;
      countAndFlagsBits = v91._countAndFlagsBits;
      goto LABEL_21;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_CFCE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char *a5)
{
  v80 = a3;
  v81 = a2;
  v73 = sub_66D4(&qword_122F80, &qword_DFB50);
  v70 = *(v73 - 8);
  v8 = *(v70 + 64);
  v9 = __chkstk_darwin(v73);
  v71 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v72 = &v68 - v12;
  __chkstk_darwin(v11);
  v69 = &v68 - v13;
  v78 = sub_66D4(&qword_121070, &qword_DAFE0);
  v77 = *(v78 - 8);
  v14 = *(v77 + 64);
  __chkstk_darwin(v78);
  v76 = &v68 - v15;
  v82 = sub_66D4(&qword_121068, &qword_DBEE0);
  v75 = *(v82 - 8);
  v16 = *(v75 + 64);
  __chkstk_darwin(v82);
  v18 = &v68 - v17;
  v86 = type metadata accessor for MSRepositoryDefault();
  v87 = &off_1188F0;
  v85[0] = a4;
  v19 = &a5[OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_customDomain];
  *(v19 + 8) = *(a1 + 64);
  v20 = *(a1 + 48);
  *(v19 + 2) = *(a1 + 32);
  *(v19 + 3) = v20;
  v21 = *(a1 + 16);
  *v19 = *a1;
  *(v19 + 1) = v21;
  sub_2A5C4(v85, &a5[OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_repository]);
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  sub_66D4(&qword_121950, &qword_D9728);
  v24 = swift_allocObject();
  v68 = xmmword_D8CB0;
  *(v24 + 16) = xmmword_D8CB0;
  v25 = *(a1 + 8);
  v79 = *a1;
  v84._countAndFlagsBits = v79;
  v84._object = v25;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_13E98(a1, &v83);
  v88._countAndFlagsBits = 64;
  v88._object = 0xE100000000000000;
  sub_D66D0(v88);
  v83 = v84;

  v26 = v22;
  v89._countAndFlagsBits = v22;
  v27 = v80;
  v89._object = v23;
  sub_D66D0(v89);

  if (__PAIR128__(v83._countAndFlagsBits, v83._object) == __PAIR128__(v81, v27))
  {
    v28 = 1;
  }

  else
  {
    v28 = sub_D6C20();
  }

  v29 = *(a1 + 32);
  *(v24 + 32) = v79;
  *(v24 + 40) = v25;
  *(v24 + 48) = v26;
  *(v24 + 56) = v23;
  *(v24 + 64) = v29;
  *(v24 + 65) = v28 & 1;
  v30 = *(a1 + 40);
  v80 = v23;
  v81 = v30;
  v31 = *(a1 + 48);
  v32 = *(*sub_6648(v85, v86) + 24);

  result = [v32 aa_fullName];
  if (result)
  {
    v34 = result;
    v79 = sub_D65F0();
    v74 = v35;

    v36 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDoneDisabled;
    LOBYTE(v83._countAndFlagsBits) = 0;
    sub_D5530();
    v37 = *(v75 + 32);
    v38 = v82;
    v37(&a5[v36], v18, v82);
    v39 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDeleteDisabled;
    LOBYTE(v83._countAndFlagsBits) = 0;
    sub_D5530();
    v37(&a5[v39], v18, v38);
    v40 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isUpdating;
    LOBYTE(v83._countAndFlagsBits) = 0;
    sub_D5530();
    v37(&a5[v40], v18, v38);
    v41 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDeleting;
    LOBYTE(v83._countAndFlagsBits) = 0;
    sub_D5530();
    v37(&a5[v41], v18, v38);
    v42 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__error;
    memset(&v83, 0, 41);
    sub_66D4(&qword_120EE8, &qword_D8DD0);
    v43 = v76;
    sub_D5530();
    (*(v77 + 32))(&a5[v42], v43, v78);
    *&a5[OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel_cancellables] = &_swiftEmptySetSingleton;
    v44 = v80;
    *(a5 + 2) = v26;
    *(a5 + 3) = v44;
    swift_beginAccess();
    LOBYTE(v84._countAndFlagsBits) = 1;
    sub_D5530();
    swift_endAccess();
    swift_beginAccess();
    v84._countAndFlagsBits = v24;

    sub_66D4(&qword_1213B8, &qword_D9088);
    sub_D5530();
    swift_endAccess();
    if (v31)
    {
      v45 = v81;
    }

    else
    {
      v45 = 0;
    }

    if (v31)
    {
      v46 = v31;
    }

    else
    {
      v46 = 0xE000000000000000;
    }

    swift_beginAccess();
    v84._countAndFlagsBits = v45;
    v84._object = v46;
    sub_D5530();
    swift_endAccess();
    swift_beginAccess();
    v84._countAndFlagsBits = 0;
    v84._object = 0xE000000000000000;
    sub_D5530();
    result = swift_endAccess();
    v47 = v74;
    *(a5 + 4) = v79;
    *(a5 + 5) = v47;
    v48 = *(v24 + 16);
    if (v48 >= 2)
    {
      countAndFlagsBits = *(v24 + 32);
      object = *(v24 + 40);

LABEL_15:
      sub_66D4(&qword_121390, &qword_D9050);
      v55 = swift_allocObject();
      *(v55 + 16) = v68;
      *(v55 + 56) = &type metadata for String;
      *(v55 + 64) = sub_F7DC();
      *(v55 + 32) = countAndFlagsBits;
      *(v55 + 40) = object;
      type metadata accessor for MAPreferencesViewProvider();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v57 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v83._countAndFlagsBits = 2777980912;
      v83._object = 0xA400000000000000;
      v92._object = 0x80000000000EA620;
      v92._countAndFlagsBits = 0xD00000000000001FLL;
      sub_D66D0(v92);
      v93._countAndFlagsBits = 2777980912;
      v93._object = 0xA400000000000000;
      sub_D66D0(v93);
      v67._countAndFlagsBits = 0xE000000000000000;
      v94._object = 0x80000000000EA620;
      v94._countAndFlagsBits = 0xD00000000000001FLL;
      v95.value._countAndFlagsBits = 0;
      v95.value._object = 0;
      v58.super.isa = v57;
      sub_D4E80(v94, v95, v58, v83, v67);

      v59 = sub_D6610();
      v61 = v60;

      *(a5 + 6) = v59;
      *(a5 + 7) = v61;
      swift_beginAccess();
      v62 = v69;
      sub_D5540();
      swift_endAccess();
      swift_beginAccess();
      v63 = v72;
      sub_D5540();
      swift_endAccess();
      sub_109A8(&qword_122FA0, &qword_122F80, &qword_DFB50);
      v64 = v73;
      sub_D5620();
      v65 = v70;
      v66 = *(v70 + 8);
      v66(v62, v64);
      (*(v65 + 16))(v71, v63, v64);
      swift_beginAccess();
      sub_D5550();
      swift_endAccess();
      v66(v63, v64);
      sub_67D4(v85);
      return a5;
    }

    if (v48 == 1)
    {
      v51 = *(v24 + 32);
      v52 = *(v24 + 40);
      v53 = *(v24 + 48);
      v54 = *(v24 + 56);

      v83._countAndFlagsBits = v51;
      v83._object = v52;

      v90._countAndFlagsBits = 64;
      v90._object = 0xE100000000000000;
      sub_D66D0(v90);

      v91._countAndFlagsBits = v53;
      v91._object = v54;
      sub_D66D0(v91);

      object = v83._object;
      countAndFlagsBits = v83._countAndFlagsBits;
      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_D06B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(&v93 + 1) = a2;
  v83 = sub_66D4(&qword_122F80, &qword_DFB50);
  v80 = *(v83 - 8);
  v9 = *(v80 + 64);
  v10 = __chkstk_darwin(v83);
  v81 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v82 = &v78 - v13;
  __chkstk_darwin(v12);
  v79 = &v78 - v14;
  v90 = sub_66D4(&qword_121070, &qword_DAFE0);
  v89 = *(v90 - 8);
  v15 = *(v89 + 64);
  __chkstk_darwin(v90);
  v88 = &v78 - v16;
  v91 = sub_66D4(&qword_121068, &qword_DBEE0);
  v87 = *(v91 - 8);
  v17 = *(v87 + 64);
  __chkstk_darwin(v91);
  v86 = &v78 - v18;
  v99 = type metadata accessor for MSRepositoryDefault();
  v100 = &off_1188F0;
  v98[0] = a4;
  v19 = (a5 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_alias);
  *(v19 + 41) = *(a1 + 41);
  v20 = *(a1 + 32);
  v19[1] = *(a1 + 16);
  v19[2] = v20;
  *v19 = *a1;
  v92 = a5;
  sub_2A5C4(v98, a5 + OBJC_IVAR____TtC18icloudMailSettings22MSAliasDetailViewModel_repository);
  v21 = *(a1 + 16);
  v22 = *(v21 + 16);
  if (v22)
  {
    *&v93 = a3;
    sub_5842C(a1, &v97);
    v95 = _swiftEmptyArrayStorage;
    sub_11BD0(0, v22, 0);
    v23 = v95;
    v24 = (v21 + 48);
    v25 = *a1;
    v26 = *(a1 + 8);
    v85 = a1;
    do
    {
      v28 = *(v24 - 2);
      v27 = *(v24 - 1);
      LODWORD(v94) = *v24;
      v29 = v25;
      v97._countAndFlagsBits = v25;
      v97._object = v26;
      swift_bridgeObjectRetain_n();

      v101._countAndFlagsBits = 64;
      v101._object = 0xE100000000000000;
      sub_D66D0(v101);

      v102._countAndFlagsBits = v28;
      v102._object = v27;
      sub_D66D0(v102);

      if (__PAIR128__(v97._countAndFlagsBits, v97._object) == v93)
      {
        v30 = 1;
      }

      else
      {
        v30 = sub_D6C20();
      }

      v31 = v23;
      v95 = v23;
      v33 = v23[2];
      v32 = v23[3];
      if (v33 >= v32 >> 1)
      {
        sub_11BD0((v32 > 1), v33 + 1, 1);
        v31 = v95;
      }

      v31[2] = v33 + 1;
      v23 = v31;
      v34 = &v31[5 * v33];
      v25 = v29;
      v34[4] = v29;
      v34[5] = v26;
      v34[6] = v28;
      v34[7] = v27;
      *(v34 + 64) = v94;
      *(v34 + 65) = v30 & 1;
      v24 += 24;
      --v22;
    }

    while (v22);

    a1 = v85;
  }

  else
  {
    sub_5842C(a1, &v97);

    v23 = _swiftEmptyArrayStorage;
  }

  v35 = *(a1 + 32);
  v36 = *(a1 + 40);
  v37 = *(a1 + 48);
  *(&v93 + 1) = *(a1 + 24);
  v94 = v36;
  v38 = *(*sub_6648(v98, v99) + 24);

  result = [v38 aa_fullName];
  if (result)
  {
    v40 = result;
    v84 = *(a1 + 56);
    *&v93 = sub_D65F0();
    v85 = v41;

    v42 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDoneDisabled;
    LOBYTE(v97._countAndFlagsBits) = 0;
    v43 = v86;
    sub_D5530();
    v44 = *(v87 + 32);
    v46 = v91;
    v45 = v92;
    v44(v92 + v42, v43, v91);
    v47 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDeleteDisabled;
    LOBYTE(v97._countAndFlagsBits) = 0;
    sub_D5530();
    v44(v45 + v47, v43, v46);
    v48 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isUpdating;
    LOBYTE(v97._countAndFlagsBits) = 0;
    sub_D5530();
    v44(v45 + v48, v43, v46);
    v49 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDeleting;
    LOBYTE(v97._countAndFlagsBits) = 0;
    sub_D5530();
    v44(v45 + v49, v43, v46);
    v50 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__error;
    memset(&v97, 0, 41);
    sub_66D4(&qword_120EE8, &qword_D8DD0);
    v51 = v88;
    sub_D5530();
    (*(v89 + 32))(v45 + v50, v51, v90);
    *(v45 + OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel_cancellables) = &_swiftEmptySetSingleton;
    *(v45 + 16) = xmmword_DBAE0;
    swift_beginAccess();
    LOBYTE(v95) = v84;
    sub_D5530();
    swift_endAccess();
    swift_beginAccess();
    v52 = v23;
    v95 = v23;

    sub_66D4(&qword_1213B8, &qword_D9088);
    sub_D5530();
    swift_endAccess();
    if (v35)
    {
      v53 = *(&v93 + 1);
    }

    else
    {
      v53 = 0;
    }

    if (v35)
    {
      v54 = v35;
    }

    else
    {
      v54 = 0xE000000000000000;
    }

    swift_beginAccess();
    v95 = v53;
    v96 = v54;
    sub_D5530();
    swift_endAccess();
    if (v37)
    {
      v55 = v94;
    }

    else
    {
      v55 = 0;
    }

    if (!v37)
    {
      v37 = 0xE000000000000000;
    }

    swift_beginAccess();
    v95 = v55;
    v96 = v37;
    sub_D5530();
    result = swift_endAccess();
    v56 = v85;
    *(v45 + 32) = v93;
    *(v45 + 40) = v56;
    v57 = v52[2];
    if (v57 >= 2)
    {
      countAndFlagsBits = v52[4];
      object = v52[5];

LABEL_27:
      sub_66D4(&qword_121390, &qword_D9050);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_D8CB0;
      *(v64 + 56) = &type metadata for String;
      *(v64 + 64) = sub_F7DC();
      *(v64 + 32) = countAndFlagsBits;
      *(v64 + 40) = object;
      type metadata accessor for MAPreferencesViewProvider();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v66 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v97._countAndFlagsBits = 2777980912;
      v97._object = 0xA400000000000000;
      v105._object = 0x80000000000EA620;
      v105._countAndFlagsBits = 0xD00000000000001FLL;
      sub_D66D0(v105);
      v106._countAndFlagsBits = 2777980912;
      v106._object = 0xA400000000000000;
      sub_D66D0(v106);
      v77._countAndFlagsBits = 0xE000000000000000;
      v107._object = 0x80000000000EA620;
      v107._countAndFlagsBits = 0xD00000000000001FLL;
      v108.value._countAndFlagsBits = 0;
      v108.value._object = 0;
      v67.super.isa = v66;
      sub_D4E80(v107, v108, v67, v97, v77);

      v68 = sub_D6610();
      v70 = v69;

      v71 = v92;
      *(v92 + 48) = v68;
      *(v71 + 56) = v70;
      swift_beginAccess();
      v72 = v79;
      sub_D5540();
      swift_endAccess();
      swift_beginAccess();
      v73 = v82;
      sub_D5540();
      swift_endAccess();
      sub_109A8(&qword_122FA0, &qword_122F80, &qword_DFB50);
      v74 = v83;
      sub_D5620();
      v75 = v80;
      v76 = *(v80 + 8);
      v76(v72, v74);
      (*(v75 + 16))(v81, v73, v74);
      swift_beginAccess();
      sub_D5550();
      swift_endAccess();
      v76(v73, v74);
      sub_67D4(v98);
      return v71;
    }

    if (v57 == 1)
    {
      v61 = v52[4];
      v60 = v52[5];
      v62 = v52[6];
      v63 = v52[7];

      v97._countAndFlagsBits = v61;
      v97._object = v60;

      v103._countAndFlagsBits = 64;
      v103._object = 0xE100000000000000;
      sub_D66D0(v103);

      v104._countAndFlagsBits = v62;
      v104._object = v63;
      sub_D66D0(v104);

      object = v97._object;
      countAndFlagsBits = v97._countAndFlagsBits;
      goto LABEL_27;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_D1144(uint64_t a1)
{
  v2 = sub_66D4(&qword_128A50, &qword_E2FA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_D11AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2A5C4(a4, v21);
  v11 = v22;
  v12 = sub_38BFC(v21, v22);
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v21[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;

  v18 = sub_D3BDC(a1, a2, a3, v17, a5, a6);
  sub_67D4(v21);
  return v18;
}

uint64_t sub_D12E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v53 = a4;
  v7 = sub_D5B20();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  __chkstk_darwin(v7);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_66D4(&qword_12A398, &qword_E6678);
  v10 = *(v46 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v46);
  v13 = &v44 - v12;
  v45 = sub_66D4(&qword_12A3A0, &qword_E6680);
  v14 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v16 = &v44 - v15;
  v17 = sub_66D4(&qword_12A3A8, &qword_E6688);
  v18 = *(v17 - 8);
  v48 = v17;
  v49 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v47 = &v44 - v20;
  v54 = a1;
  v55 = a2;
  v56 = a3 & 1;
  sub_66D4(&qword_12A3B0, &unk_E6690);
  v21 = sub_6110(&qword_128D30, &qword_E38E0);
  v22 = sub_6110(&qword_121178, &qword_DB0C0);
  v23 = sub_A6648();
  v24 = sub_E000();
  v25 = sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
  v57._countAndFlagsBits = v21;
  v57._object = &type metadata for MSError;
  v58 = v22;
  v59 = v23;
  v60 = v24;
  v61 = v25;
  swift_getOpaqueTypeConformance2();
  sub_D5E60();
  sub_109A8(&qword_12A3B8, &qword_12A398, &qword_E6678);
  v26 = v46;
  sub_D5F90();
  (*(v10 + 8))(v13, v26);
  v27 = v45;
  v28 = &v16[*(v45 + 36)];
  *v28 = sub_D2834;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28[2] = 0;
  v28[3] = 0;
  v28[1] = 0;
  v30 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v57._countAndFlagsBits = 2777980912;
  v57._object = 0xA400000000000000;
  v62._countAndFlagsBits = 0x5F544C5541464544;
  v62._object = 0xED00004C49414D45;
  sub_D66D0(v62);
  v63._countAndFlagsBits = 2777980912;
  v63._object = 0xA400000000000000;
  sub_D66D0(v63);
  v43._countAndFlagsBits = 0xE000000000000000;
  v64._countAndFlagsBits = 0x5F544C5541464544;
  v64._object = 0xED00004C49414D45;
  v65.value._countAndFlagsBits = 0;
  v65.value._object = 0;
  v31.super.isa = v30;
  v32 = sub_D4E80(v64, v65, v31, v57, v43);
  v34 = v33;

  v57._countAndFlagsBits = v32;
  v57._object = v34;
  v35 = sub_D3FB4();
  v36 = sub_DFAC();
  v37 = v47;
  sub_D6040();

  sub_FC3C(v16, &qword_12A3A0, &qword_E6680);
  v38 = v50;
  v39 = v51;
  v40 = v52;
  (*(v51 + 104))(v50, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v52);
  v57._countAndFlagsBits = v27;
  v57._object = &type metadata for String;
  v58 = v35;
  v59 = v36;
  swift_getOpaqueTypeConformance2();
  v41 = v48;
  sub_D60D0();
  (*(v39 + 8))(v38, v40);
  return (*(v49 + 8))(v37, v41);
}

uint64_t sub_D1858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v23[1] = a4;
  v7 = sub_66D4(&qword_128D30, &qword_E38E0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v23 - v10;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v28._countAndFlagsBits = 2777980912;
  v28._object = 0xA400000000000000;
  v34._object = 0x80000000000EA6C0;
  v34._countAndFlagsBits = 0xD00000000000001BLL;
  sub_D66D0(v34);
  v35._countAndFlagsBits = 2777980912;
  v35._object = 0xA400000000000000;
  sub_D66D0(v35);
  v22._countAndFlagsBits = 0xE000000000000000;
  v36._object = 0x80000000000EA6C0;
  v36._countAndFlagsBits = 0xD00000000000001BLL;
  v37.value._countAndFlagsBits = 0;
  v37.value._object = 0;
  v14.super.isa = v13;
  v15 = sub_D4E80(v36, v37, v14, v28, v22);
  v17 = v16;

  v28._countAndFlagsBits = v15;
  v28._object = v17;
  sub_DFAC();
  v28._countAndFlagsBits = sub_D5F50();
  v28._object = v18;
  LOBYTE(v29) = v19 & 1;
  *(&v29 + 1) = v20;
  v23[4] = a1;
  v23[5] = a2;
  v24 = a3 & 1;
  sub_66D4(&qword_128D48, &qword_E38E8);
  sub_A66E0();
  sub_D63A0();
  type metadata accessor for DefaultEmailSelectionView.ViewModel();
  sub_D40BC();
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  v28 = v25;
  v29 = v26;
  v30[0] = v27[0];
  *(v30 + 9) = *(v27 + 9);
  sub_A16FC(&v28._countAndFlagsBits, 19279, 0xE200000000000000);
  countAndFlagsBits = v28._countAndFlagsBits;
  sub_E158(&countAndFlagsBits);

  v32 = v29;
  v33[0] = v30[0];
  *(v33 + 9) = *(v30 + 9);
  sub_FC3C(&v32, &qword_120EE8, &qword_D8DD0);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_D1B90(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for DefaultEmailSelectionView.ViewModel();
  sub_D40BC();
  v6 = *(sub_D5740() + 16);

  swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3 & 1;
  sub_D415C();
  sub_66D4(&qword_121498, &qword_D99D0);
  sub_66D4(&qword_128D58, &qword_E38F0);
  sub_109A8(&qword_12A3D0, &qword_121498, &qword_D99D0);
  sub_A6764();
  return sub_D6330();
}

uint64_t sub_D1D0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4 & 1;
  *(v11 + 40) = v10;
  *(v11 + 48) = v9;
  sub_D415C();

  sub_66D4(&qword_12A3D8, &qword_E66C0);
  sub_109A8(&qword_12A3E0, &qword_12A3D8, &qword_E66C0);
  sub_D6260();
  v12 = sub_D61A0();
  KeyPath = swift_getKeyPath();
  result = sub_66D4(&qword_128D58, &qword_E38F0);
  v15 = (a5 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = v12;
  return result;
}

uint64_t sub_D1E64()
{
  type metadata accessor for DefaultEmailSelectionView.ViewModel();
  sub_D40BC();
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_D5580();
  sub_D5740();
  sub_D2ACC();
}

uint64_t sub_D1F54@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_D5B40();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_66D4(&qword_12A3E8, &unk_E66F8);
  return sub_D1FDC(a1, a2, (a3 + *(v6 + 44)));
}

uint64_t sub_D1FDC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v56 = a3;
  v55 = sub_66D4(&qword_121238, &unk_D8E20);
  v49 = *(v55 - 8);
  v5 = *(v49 + 64);
  __chkstk_darwin(v55);
  v48 = &v48 - v6;
  v52 = sub_66D4(&qword_12A3F0, &qword_E6708);
  v7 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v53 = &v48 - v8;
  v54 = sub_66D4(&qword_127BF8, &qword_E6710);
  v51 = *(v54 - 8);
  v9 = *(v51 + 64);
  __chkstk_darwin(v54);
  v50 = &v48 - v10;
  v11 = sub_66D4(&qword_12A3F8, &qword_E6718);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v62 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v61 = &v48 - v15;
  v63 = a1;
  v64 = a2;
  sub_DFAC();

  v16 = sub_D5F50();
  v58 = v17;
  v59 = v16;
  v57 = v18;
  v60 = v19;
  type metadata accessor for DefaultEmailSelectionView.ViewModel();
  sub_D40BC();
  v20 = sub_D5740();
  v22 = *(v20 + 24);
  v21 = *(v20 + 32);

  if (v22 == a1 && v21 == a2)
  {

LABEL_5:
    v24 = sub_D61C0();
    v25 = sub_D6180();
    KeyPath = swift_getKeyPath();
    v63 = v24;
    v64 = KeyPath;
    v65 = v25;
    sub_D5E20();
    v27 = sub_66D4(&qword_127C30, qword_E1410);
    v28 = sub_8F614();
    v29 = v50;
    sub_D5FC0();

    v30 = v51;
    v31 = v54;
    (*(v51 + 16))(v53, v29, v54);
    swift_storeEnumTagMultiPayload();
    v63 = v27;
    v64 = v28;
    swift_getOpaqueTypeConformance2();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    v32 = v61;
    sub_D5BF0();
    (*(v30 + 8))(v29, v31);
    goto LABEL_6;
  }

  v23 = sub_D6C20();

  if (v23)
  {
    goto LABEL_5;
  }

  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (!v64)
  {
    v33 = 1;
    v32 = v61;
    goto LABEL_7;
  }

  v32 = v61;
  if (v63 == a1 && v64 == a2)
  {
  }

  else
  {
    v42 = sub_D6C20();

    if ((v42 & 1) == 0)
    {
      v33 = 1;
      goto LABEL_7;
    }
  }

  v43 = v48;
  sub_D5780();
  v44 = v49;
  v45 = v55;
  (*(v49 + 16))(v53, v43, v55);
  swift_storeEnumTagMultiPayload();
  v46 = sub_6110(&qword_127C30, qword_E1410);
  v47 = sub_8F614();
  v63 = v46;
  v64 = v47;
  swift_getOpaqueTypeConformance2();
  sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
  sub_D5BF0();
  (*(v44 + 8))(v43, v45);
LABEL_6:
  v33 = 0;
LABEL_7:
  v34 = sub_66D4(&qword_12A400, &qword_E6720);
  (*(*(v34 - 8) + 56))(v32, v33, 1, v34);
  v35 = v62;
  sub_D41D0(v32, v62);
  v37 = v58;
  v36 = v59;
  v38 = v56;
  *v56 = v59;
  v38[1] = v37;
  v39 = v57 & 1;
  *(v38 + 16) = v57 & 1;
  v38[3] = v60;
  v38[4] = 0;
  *(v38 + 40) = 1;
  v40 = sub_66D4(&qword_12A408, qword_E6728);
  sub_D41D0(v35, v38 + *(v40 + 64));
  sub_166E0(v36, v37, v39);

  sub_FC3C(v32, &qword_12A3F8, &qword_E6718);
  sub_FC3C(v35, &qword_12A3F8, &qword_E6718);
  sub_F16C(v36, v37, v39);
}

double sub_D270C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_D279C(__int128 *a1, uint64_t *a2)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 40);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = *a1;
  v8 = a1[1];

  return sub_D5580();
}

uint64_t sub_D2834()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v5 = sub_6610(v0, qword_137988);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_D5320();
  v7 = sub_D68A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "[Default Email Selection] page viewed", v8, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_D29C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

double sub_D2A40@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_D2ACC()
{
  v1 = v0;
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v36 - v8;
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v10 = sub_6610(v2, qword_137988);
  v11 = v3[2];
  v11(v9, v10, v2);
  v12 = sub_D5320();
  v13 = sub_D68A0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v37 = v3;
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "[Default Email Selection] update started", v14, 2u);
    v3 = v37;
  }

  v15 = v3[1];
  v15(v9, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v16 = v40;
  if (v40)
  {
    v17 = v39;
    v18 = sub_6648((v1 + OBJC_IVAR____TtCV18icloudMailSettings25DefaultEmailSelectionView9ViewModel_repository), *(v1 + OBJC_IVAR____TtCV18icloudMailSettings25DefaultEmailSelectionView9ViewModel_repository + 24));
    v20 = *(*v18 + 16);
    v19 = *(*v18 + 24);
    v41 = &type metadata for SharedPreference;
    v42 = sub_467DC();
    v21 = swift_allocObject();
    v39 = v21;
    *(v21 + 16) = v17;
    *(v21 + 24) = v16;
    v22 = type metadata accessor for MSSharedPreferencesAPIRequest();
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0u;
    v23 = objc_allocWithZone(v22);
    sub_13E28(&v39, v38);
    swift_bridgeObjectRetain_n();
    v24 = v20;
    v25 = v19;
    v26 = sub_45BC4(v20, v25, v38);

    sub_FC3C(&v39, &qword_121F30, &unk_DC820);
    v27 = sub_1EB80();

    v39 = v27;
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = v17;
    *(v29 + 24) = v16;
    *(v29 + 32) = 0u;
    *(v29 + 48) = 0u;
    *(v29 + 64) = v28;
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = v17;
    v31[4] = v16;
    sub_66D4(&qword_121F38, &qword_D9CA0);
    sub_109A8(&qword_121F40, &qword_121F38, &qword_D9CA0);
    sub_D55D0();

    swift_beginAccess();
    sub_D54B0();
    swift_endAccess();
  }

  else
  {
    v11(v7, v10, v2);
    v33 = sub_D5320();
    v34 = sub_D68A0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "[Default Email Selection] no change, skipping", v35, 2u);
    }

    return (v15)(v7, v2);
  }
}

uint64_t sub_D2FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v50 - v10;
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = *(a1 + 16);
  v52 = *(a1 + 24);
  v53 = v13;
  v54 = *(a1 + 32);
  v55 = v12;
  LODWORD(v15) = *(a1 + 40);
  if (v12)
  {
    if (sub_3ED44())
    {
      v16 = sub_D6550();
      v18 = v17;

      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v19 = sub_6610(v4, qword_137988);
      (*(v5 + 16))(v11, v19, v4);

      v20 = sub_D5320();
      v21 = v5;
      v22 = sub_D68B0();

      if (os_log_type_enabled(v20, v22))
      {
        v23 = swift_slowAlloc();
        LODWORD(v50) = v15;
        v15 = v23;
        v24 = swift_slowAlloc();
        v51 = v14;
        v25 = v24;
        v59 = v24;
        *v15 = 136642819;
        v26 = sub_558F0(v16, v18, &v59);
        v27 = v21;
        v28 = v20;
        v29 = v26;

        *(v15 + 4) = v29;
        _os_log_impl(&dword_0, v28, v22, "[Default Email Selection] params: %{sensitive}s", v15, 0xCu);
        sub_67D4(v25);
        v14 = v51;

        LOBYTE(v15) = v50;

        (*(v27 + 8))(v11, v4);
        v5 = v27;
      }

      else
      {

        (*(v21 + 8))(v11, v4);
        v5 = v21;
      }
    }

    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v30 = sub_6610(v4, qword_137988);
    (*(v5 + 16))(v9, v30, v4);
    v31 = v55;

    v32 = v31;
    v33 = sub_D5320();
    v34 = sub_D68B0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v51 = v14;
      v36 = v35;
      v37 = v5;
      v38 = swift_slowAlloc();
      v65 = v38;
      *v36 = 136315138;
      v59 = v53;
      v60 = v32;
      v61 = v51;
      LOBYTE(v62) = v52 & 1;
      v63 = v54;
      v64 = v15 & 1;
      sub_6780();
      v39 = sub_D6C60();
      v41 = sub_558F0(v39, v40, &v65);
      v50 = v4;
      v42 = v41;

      *(v36 + 4) = v42;
      _os_log_impl(&dword_0, v33, v34, "[Default Email Selection] update failed: %s", v36, 0xCu);
      sub_67D4(v38);

      v14 = v51;

      (*(v37 + 8))(v9, v50);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v43 = v55;
    if (v55)
    {
      v44 = v53;
    }

    else
    {
      v44 = 0;
    }

    if (v55)
    {
      v45 = v14;
    }

    else
    {
      v45 = 0;
    }

    if (v55)
    {
      v46 = v52 & 1;
    }

    else
    {
      v46 = 0;
    }

    if (v55)
    {
      v47 = v54;
    }

    else
    {
      v47 = 0;
    }

    if (v55)
    {
      v48 = v15 & 1;
    }

    else
    {
      v48 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v59 = v44;
    v60 = v43;
    v61 = v45;
    v62 = v46;
    v63 = v47;
    v64 = v48;

    sub_D5580();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v57 = 0;
    v58 = 0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_D3588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_D5340();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v11 = sub_6610(v6, qword_137988);
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_D5320();
  v13 = sub_D68A0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "[Default Email Selection] update successful", v14, 2u);
  }

  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + 32);
    *(Strong + 24) = a3;
    *(Strong + 32) = a4;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + OBJC_IVAR____TtCV18icloudMailSettings25DefaultEmailSelectionView9ViewModel_completionHandler);
    v18 = *(result + OBJC_IVAR____TtCV18icloudMailSettings25DefaultEmailSelectionView9ViewModel_completionHandler + 8);

    v19(a3, a4);
  }

  return result;
}

uint64_t sub_D37D4()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = OBJC_IVAR____TtCV18icloudMailSettings25DefaultEmailSelectionView9ViewModel__newDefaultSelection;
  v4 = sub_66D4(&qword_124830, &qword_E1560);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = OBJC_IVAR____TtCV18icloudMailSettings25DefaultEmailSelectionView9ViewModel__updateError;
  v6 = sub_66D4(&qword_121070, &qword_DAFE0);
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  sub_67D4(&v0[OBJC_IVAR____TtCV18icloudMailSettings25DefaultEmailSelectionView9ViewModel_repository]);
  v7 = *&v0[OBJC_IVAR____TtCV18icloudMailSettings25DefaultEmailSelectionView9ViewModel_cancellables];

  v8 = *&v0[OBJC_IVAR____TtCV18icloudMailSettings25DefaultEmailSelectionView9ViewModel_completionHandler + 8];

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v9, v10);
}

uint64_t type metadata accessor for DefaultEmailSelectionView.ViewModel()
{
  result = qword_12A230;
  if (!qword_12A230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_D3960()
{
  sub_6158(319, &unk_127D10, &qword_124838, &qword_E1490);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_6158(319, &qword_120EE0, &qword_120EE8, &qword_D8DD0);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_D3A98@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DefaultEmailSelectionView.ViewModel();
  result = sub_D54D0();
  *a1 = result;
  return result;
}

double sub_D3AD8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_D3B58(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

void *sub_D3BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for MSRepositoryDefault();
  v27[3] = v12;
  v27[4] = &off_1188F0;
  v27[0] = a4;
  v13 = type metadata accessor for DefaultEmailSelectionView.ViewModel();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = sub_38BFC(v27, v12);
  v18 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v23 = (v16 + OBJC_IVAR____TtCV18icloudMailSettings25DefaultEmailSelectionView9ViewModel_repository);
  v23[3] = v12;
  v23[4] = &off_1188F0;
  *v23 = v22;
  v26[0] = 0uLL;
  sub_66D4(&qword_124838, &qword_E1490);
  sub_D5530();
  memset(v26, 0, 41);
  sub_66D4(&qword_120EE8, &qword_D8DD0);
  sub_D5530();
  *(v16 + OBJC_IVAR____TtCV18icloudMailSettings25DefaultEmailSelectionView9ViewModel_cancellables) = &_swiftEmptySetSingleton;
  v16[3] = a1;
  v16[4] = a2;
  v16[2] = a3;
  v24 = (v16 + OBJC_IVAR____TtCV18icloudMailSettings25DefaultEmailSelectionView9ViewModel_completionHandler);
  *v24 = a5;
  v24[1] = a6;
  sub_67D4(v27);
  return v16;
}

uint64_t sub_D3DC0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_D3E08()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D3E40()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_D3E9C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_D3EF0(uint64_t a1, unsigned int a2)
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

uint64_t sub_D3F38(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_D3FB4()
{
  result = qword_12A3C0;
  if (!qword_12A3C0)
  {
    sub_6110(&qword_12A3A0, &qword_E6680);
    sub_6110(&qword_12A398, &qword_E6678);
    sub_109A8(&qword_12A3B8, &qword_12A398, &qword_E6678);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A3C0);
  }

  return result;
}

unint64_t sub_D40BC()
{
  result = qword_12A3C8;
  if (!qword_12A3C8)
  {
    type metadata accessor for DefaultEmailSelectionView.ViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A3C8);
  }

  return result;
}

uint64_t sub_D4114()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_E0C4();

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_D4164()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_E0C4();
  v4 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_D41A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  return sub_D1E64();
}

uint64_t sub_D41B8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  return sub_D1F54(*(v1 + 16), *(v1 + 24), a1);
}

uint64_t sub_D41D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_12A3F8, &qword_E6718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D4240()
{
  sub_6110(&qword_12A3A8, &qword_E6688);
  sub_6110(&qword_12A3A0, &qword_E6680);
  sub_D3FB4();
  sub_DFAC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void sub_D4330(void *a1)
{
  v1 = [a1 aa_altDSID];
  sub_3614();
  sub_3620(&dword_0, v2, v3, "[MailSettingsSpecifierProvider] adding mail specifier for secondary cloudaccount %@", v4, v5, v6, v7, v8);
}

void sub_D43B4(void *a1)
{
  v1 = [a1 aa_altDSID];
  sub_3614();
  sub_3620(&dword_0, v2, v3, "[MailSettingsSpecifierProvider] adding mail specifier for primary cloudaccount %@", v4, v5, v6, v7, v8);
}

void sub_D4438()
{
  sub_3608();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_D4474()
{
  sub_3608();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_D44B0()
{
  sub_3608();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_D44EC()
{
  sub_3608();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_D4528()
{
  sub_3614();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_D4598()
{
  sub_3614();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_D4608()
{
  sub_3608();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_D4644()
{
  sub_3608();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_D4680()
{
  sub_3614();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_D47B8(void *a1, NSObject *a2)
{
  v4 = [a1 accountManager];
  v5 = [a1 appleAccount];
  v6 = [v5 identifier];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "iCloud Mail Unified Settings loaded with missing parameters, accountManager: %@, account: %@", &v7, 0x16u);
}

void sub_D488C()
{
  sub_3614();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_D48FC()
{
  sub_3614();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_D496C()
{
  sub_3608();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_D49A8()
{
  sub_3608();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_D49E4()
{
  sub_3614();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_D4A54(id *a1, NSObject *a2)
{
  v3 = [*a1 navigationController];
  v4 = [v3 viewControllers];
  sub_3614();
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Pop to iCloud Mail Settings: %@", v5, 0xCu);
}

void sub_D4B04()
{
  sub_3608();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_D4B40()
{
  sub_3608();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_D4CB0()
{
  sub_3614();
  sub_35FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}