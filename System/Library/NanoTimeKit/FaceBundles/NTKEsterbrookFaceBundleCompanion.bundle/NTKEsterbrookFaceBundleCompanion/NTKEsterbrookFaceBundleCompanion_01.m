uint64_t storeEnumTagSinglePayload for TimeUnit.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23BDF9540()
{
  result = qword_27E1C83B8;
  if (!qword_27E1C83B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C83B8);
  }

  return result;
}

unint64_t sub_23BDF9598()
{
  result = qword_27E1C83C0;
  if (!qword_27E1C83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C83C0);
  }

  return result;
}

unint64_t sub_23BDF95F0()
{
  result = qword_27E1C83C8;
  if (!qword_27E1C83C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C83C8);
  }

  return result;
}

unint64_t sub_23BDF9648()
{
  result = qword_27E1C83D0;
  if (!qword_27E1C83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C83D0);
  }

  return result;
}

unint64_t sub_23BDF96A0()
{
  result = qword_27E1C83D8;
  if (!qword_27E1C83D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C83D8);
  }

  return result;
}

unint64_t sub_23BDF96F8()
{
  result = qword_27E1C83E0;
  if (!qword_27E1C83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C83E0);
  }

  return result;
}

unint64_t sub_23BDF9750()
{
  result = qword_27E1C83E8;
  if (!qword_27E1C83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C83E8);
  }

  return result;
}

unint64_t sub_23BDF97A8()
{
  result = qword_27E1C83F0;
  if (!qword_27E1C83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C83F0);
  }

  return result;
}

unint64_t sub_23BDF9800()
{
  result = qword_27E1C83F8;
  if (!qword_27E1C83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C83F8);
  }

  return result;
}

unint64_t sub_23BDF9858()
{
  result = qword_27E1C8400;
  if (!qword_27E1C8400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8400);
  }

  return result;
}

unint64_t sub_23BDF98B0()
{
  result = qword_27E1C8408;
  if (!qword_27E1C8408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8408);
  }

  return result;
}

unint64_t sub_23BDF9908()
{
  result = qword_27E1C8410;
  if (!qword_27E1C8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8410);
  }

  return result;
}

unint64_t sub_23BDF9960()
{
  result = qword_27E1C8418;
  if (!qword_27E1C8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8418);
  }

  return result;
}

unint64_t sub_23BDF99B8()
{
  result = qword_27E1C8420;
  if (!qword_27E1C8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8420);
  }

  return result;
}

unint64_t sub_23BDF9A10()
{
  result = qword_27E1C8428;
  if (!qword_27E1C8428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8428);
  }

  return result;
}

unint64_t sub_23BDF9A68()
{
  result = qword_27E1C8430;
  if (!qword_27E1C8430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8430);
  }

  return result;
}

unint64_t sub_23BDF9AC0()
{
  result = qword_27E1C8438;
  if (!qword_27E1C8438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8438);
  }

  return result;
}

unint64_t sub_23BDF9B18()
{
  result = qword_27E1C8440;
  if (!qword_27E1C8440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8440);
  }

  return result;
}

unint64_t sub_23BDF9B70()
{
  result = qword_27E1C8448;
  if (!qword_27E1C8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8448);
  }

  return result;
}

unint64_t sub_23BDF9BC8()
{
  result = qword_27E1C8450;
  if (!qword_27E1C8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8450);
  }

  return result;
}

unint64_t sub_23BDF9C20()
{
  result = qword_27E1C8458;
  if (!qword_27E1C8458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8458);
  }

  return result;
}

uint64_t sub_23BDF9C74(void *a1)
{
  v2 = sub_23BDE652C(&qword_27E1C8460);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = sub_23BDE652C(&qword_27E1C8468);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = sub_23BDE652C(&qword_27E1C8470);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BDFA130();
  v11 = v26;
  sub_23BE32E18();
  if (v11)
  {
    return sub_23BDE6478(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_23BE32C98();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_23BE05590();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_23BE32B78();
    swift_allocError();
    v19 = v18;
    sub_23BDE652C(&qword_27E1C7E20);
    *v19 = &type metadata for ExclusionType;
    sub_23BE32C28();
    sub_23BE32B38();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_23BDE6478(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_23BDFA184();
    sub_23BE32C18();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_23BDFA1D8();
    sub_23BE32C18();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  sub_23BDE6478(v26);
  return v31 & 1;
}

unint64_t sub_23BDFA130()
{
  result = qword_27E1C8478;
  if (!qword_27E1C8478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8478);
  }

  return result;
}

unint64_t sub_23BDFA184()
{
  result = qword_27E1C8480;
  if (!qword_27E1C8480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8480);
  }

  return result;
}

unint64_t sub_23BDFA1D8()
{
  result = qword_27E1C8488;
  if (!qword_27E1C8488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8488);
  }

  return result;
}

unint64_t sub_23BDFA260()
{
  result = qword_27E1C84A8;
  if (!qword_27E1C84A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C84A8);
  }

  return result;
}

unint64_t sub_23BDFA2B8()
{
  result = qword_27E1C84B0;
  if (!qword_27E1C84B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C84B0);
  }

  return result;
}

unint64_t sub_23BDFA310()
{
  result = qword_27E1C84B8;
  if (!qword_27E1C84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C84B8);
  }

  return result;
}

unint64_t sub_23BDFA368()
{
  result = qword_27E1C84C0;
  if (!qword_27E1C84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C84C0);
  }

  return result;
}

unint64_t sub_23BDFA3C0()
{
  result = qword_27E1C84C8;
  if (!qword_27E1C84C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C84C8);
  }

  return result;
}

unint64_t sub_23BDFA418()
{
  result = qword_27E1C84D0;
  if (!qword_27E1C84D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C84D0);
  }

  return result;
}

unint64_t sub_23BDFA470()
{
  result = qword_27E1C84D8;
  if (!qword_27E1C84D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C84D8);
  }

  return result;
}

__n128 sub_23BDFA4C4(uint64_t a1, uint64_t a2)
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

uint64_t sub_23BDFA4E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_23BDFA528(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_23BDFA588()
{
  result = qword_27E1C84E0;
  if (!qword_27E1C84E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C84E0);
  }

  return result;
}

id sub_23BDFA5DC(uint64_t a1)
{
  v3 = *(v1 + 33);
  if (v3 == 2 || (v3 & 1) == 0)
  {
    v14 = *v1;
    v15 = v14;
    sub_23BDFB744(&v15, v13);
LABEL_18:
    MEMORY[0x23EEBE160](95, 0xE100000000000000);
    sub_23BDE652C(&qword_27E1C8BD0);
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D83B88];
    *(v9 + 16) = xmmword_23BE36630;
    v11 = MEMORY[0x277D83C10];
    *(v9 + 56) = v10;
    *(v9 + 64) = v11;
    *(v9 + 32) = a1;
    v12 = sub_23BE328D8();
    MEMORY[0x23EEBE160](v12);

    return v14;
  }

  v14 = *v1;
  v15 = v14;
  sub_23BDFB744(&v15, v13);
  MEMORY[0x23EEBE160](45, 0xE100000000000000);
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v5 = result;
    v6 = [result sizeClass];

    if (v6 > 4)
    {
      if (v6 <= 6)
      {
        if (v6 == 5)
        {
          v7 = 0xE400000000000000;
          v8 = 876098664;
          goto LABEL_17;
        }
      }

      else
      {
        if (v6 == 7)
        {
          v7 = 0xE400000000000000;
          v8 = 909390952;
          goto LABEL_17;
        }

        if (v6 == 8)
        {
          v8 = 909718632;
          v7 = 0xE400000000000000;
          goto LABEL_17;
        }
      }
    }

    else
    {
      if (v6 > 2)
      {
        v7 = 0xE400000000000000;
        if (v6 == 3)
        {
          v8 = 942945384;
        }

        else
        {
          v8 = 808662120;
        }

        goto LABEL_17;
      }

      if (v6 == 2)
      {
        v7 = 0xE400000000000000;
        v8 = 876163944;
LABEL_17:
        MEMORY[0x23EEBE160](v8, v7);

        goto LABEL_18;
      }
    }

    v8 = 0;
    v7 = 0xE000000000000000;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_23BDFA7F0(void *a1)
{
  v3 = v1;
  v5 = sub_23BDE652C(&qword_27E1C8500);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BDFB644();
  sub_23BE32E28();
  LOBYTE(v11) = 0;
  sub_23BE32CD8();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    type metadata accessor for CGSize(0);
    sub_23BDFB700(&qword_27E1C8508);
    sub_23BE32D08();
    LOBYTE(v11) = 2;
    sub_23BE32CC8();
    LOBYTE(v11) = 3;
    sub_23BE32CB8();
    LOBYTE(v11) = 4;
    sub_23BE32CC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23BDFAA08()
{
  sub_23BE328F8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x23EEBE650](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  MEMORY[0x23EEBE650](*&v3);
  if (*(v0 + 32) != 2)
  {
    sub_23BE32DE8();
  }

  sub_23BE32DE8();
  if (*(v0 + 33) != 2)
  {
    sub_23BE32DE8();
  }

  sub_23BE32DE8();
  if (*(v0 + 48))
  {
    sub_23BE32DE8();
    sub_23BE328F8();
  }

  else
  {
    sub_23BE32DE8();
  }

  return MEMORY[0x23EEBE630](0);
}

uint64_t sub_23BDFAAF8()
{
  sub_23BE32DC8();
  sub_23BE328F8();

  return sub_23BE32E08();
}

uint64_t sub_23BDFAC04()
{
  sub_23BE328F8();
}

uint64_t sub_23BDFACFC()
{
  sub_23BE32DC8();
  sub_23BE328F8();

  return sub_23BE32E08();
}

uint64_t sub_23BDFAE04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BDFB2B0();
  *a1 = result;
  return result;
}

void sub_23BDFAE34(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000656D614E65;
  v4 = 0x7361427465737361;
  v5 = 0xEF656C646E754273;
  v6 = 0x7465737341657375;
  v7 = 0x800000023BE34730;
  v8 = 0xD000000000000018;
  if (v2 != 3)
  {
    v8 = 0xD000000000000014;
    v7 = 0x800000023BE34750;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7A69537465737361;
    v3 = 0xE900000000000065;
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

uint64_t sub_23BDFAEFC()
{
  v1 = *v0;
  v2 = 0x7361427465737361;
  v3 = 0x7465737341657375;
  v4 = 0xD000000000000018;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7A69537465737361;
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

uint64_t sub_23BDFAFC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BDFB2B0();
  *a1 = result;
  return result;
}

uint64_t sub_23BDFAFE8(uint64_t a1)
{
  v2 = sub_23BDFB644();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDFB024(uint64_t a1)
{
  v2 = sub_23BDFB644();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_23BDFB060@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23BDFB2FC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_23BDFB0C8(uint64_t a1, uint64_t a2)
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
  return sub_23BDFB1A4(v5, v7) & 1;
}

uint64_t sub_23BDFB124()
{
  sub_23BE32DC8();
  sub_23BDFAA08();
  return sub_23BE32E08();
}

uint64_t sub_23BDFB168()
{
  sub_23BE32DC8();
  sub_23BDFAA08();
  return sub_23BE32E08();
}

uint64_t sub_23BDFB1A4(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_23BE32D48() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  if (v5 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v6 == 2 || ((v6 ^ v5) & 1) != 0)
    {
      return result;
    }
  }

  v8 = *(a1 + 33);
  v9 = *(a2 + 33);
  if (v8 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }

LABEL_18:
    v10 = *(a1 + 48);
    v11 = *(a2 + 48);
    if (v10)
    {
      if (!v11 || (*(a1 + 40) != *(a2 + 40) || v10 != v11) && (sub_23BE32D48() & 1) == 0)
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

  result = 0;
  if (v9 != 2 && ((v9 ^ v8) & 1) == 0)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_23BDFB2B0()
{
  v0 = sub_23BE32C08();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23BDFB2FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BDE652C(&qword_27E1C84E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BDFB644();
  sub_23BE32E18();
  if (v2)
  {
    return sub_23BDE6478(a1);
  }

  LOBYTE(v31) = 0;
  v9 = sub_23BE32C58();
  v11 = v10;
  v12 = v9;
  type metadata accessor for CGSize(0);
  LOBYTE(v27) = 1;
  sub_23BDFB700(&qword_27E1C84F8);
  sub_23BE32C88();
  v13 = v31;
  v14 = v32;
  LOBYTE(v31) = 2;
  v25 = sub_23BE32C48();
  LOBYTE(v31) = 3;
  v15 = sub_23BE32C38();
  v26 = v16;
  v24 = v15;
  v41 = 4;
  v17 = sub_23BE32C48();
  (*(v6 + 8))(v8, v5);
  *&v27 = v12;
  *(&v27 + 1) = v11;
  *&v28 = v13;
  *(&v28 + 1) = v14;
  v18 = v25;
  LOBYTE(v29) = v25;
  BYTE1(v29) = v17;
  *(&v29 + 2) = v42;
  WORD3(v29) = v43;
  v19 = v24;
  v20 = v26;
  *(&v29 + 1) = v24;
  v30 = v26;
  sub_23BDFB698(&v27, &v31);
  sub_23BDE6478(a1);
  v31 = v12;
  v32 = v11;
  v33 = v13;
  v34 = v14;
  v35 = v18;
  v36 = v17;
  v37 = v42;
  v38 = v43;
  v39 = v19;
  v40 = v20;
  result = sub_23BDFB6D0(&v31);
  v22 = v28;
  *a2 = v27;
  *(a2 + 16) = v22;
  *(a2 + 32) = v29;
  *(a2 + 48) = v30;
  return result;
}

unint64_t sub_23BDFB644()
{
  result = qword_27E1C84F0;
  if (!qword_27E1C84F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C84F0);
  }

  return result;
}

uint64_t sub_23BDFB700(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BDFB7C4()
{
  result = qword_27E1C8510;
  if (!qword_27E1C8510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8510);
  }

  return result;
}

unint64_t sub_23BDFB81C()
{
  result = qword_27E1C8518;
  if (!qword_27E1C8518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8518);
  }

  return result;
}

unint64_t sub_23BDFB874()
{
  result = qword_27E1C8520;
  if (!qword_27E1C8520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8520);
  }

  return result;
}

unint64_t sub_23BDFB8CC()
{
  result = qword_27E1C8528;
  if (!qword_27E1C8528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8528);
  }

  return result;
}

uint64_t sub_23BDFB920(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7A69537465737361;
    }

    else
    {
      v3 = 0x7361427465737361;
    }

    if (v2)
    {
      v4 = 0xE900000000000065;
    }

    else
    {
      v4 = 0xED0000656D614E65;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x7465737341657375;
    v4 = 0xEF656C646E754273;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000018;
    }

    else
    {
      v3 = 0xD000000000000014;
    }

    if (v2 == 3)
    {
      v4 = 0x800000023BE34730;
    }

    else
    {
      v4 = 0x800000023BE34750;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x7A69537465737361;
    }

    else
    {
      v7 = 0x7361427465737361;
    }

    if (a2)
    {
      v6 = 0xE900000000000065;
    }

    else
    {
      v6 = 0xED0000656D614E65;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xEF656C646E754273;
    if (v3 != 0x7465737341657375)
    {
LABEL_37:
      v8 = sub_23BE32D48();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (a2 == 3)
    {
      v6 = 0x800000023BE34730;
    }

    else
    {
      v6 = 0x800000023BE34750;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_23BDFBAF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x616D747369726863;
  v5 = 0xE900000000000073;
  if (a1 != 5)
  {
    v4 = 0x7961646874726962;
    v5 = 0xE800000000000000;
  }

  v6 = 0x6967736B6E616874;
  v7 = 0xEC000000676E6976;
  if (a1 != 3)
  {
    v6 = 0x73796164696C6F68;
    v7 = 0xED00006E6F736165;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x6E69746E656C6176;
  v9 = 0xEA00000000007365;
  if (a1 != 1)
  {
    v8 = 0x6565776F6C6C6168;
    v9 = 0xE90000000000006ELL;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x7261657977656ELL;
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
      if (a2 == 1)
      {
        v12 = 0xEA00000000007365;
        if (v10 != 0x6E69746E656C6176)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE90000000000006ELL;
        if (v10 != 0x6565776F6C6C6168)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x7261657977656ELL)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x616D747369726863)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x7961646874726962)
      {
LABEL_39:
        v13 = sub_23BE32D48();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEC000000676E6976;
    if (v10 != 0x6967736B6E616874)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xED00006E6F736165;
    if (v10 != 0x73796164696C6F68)
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

uint64_t sub_23BDFBD6C()
{
  sub_23BE32DC8();
  sub_23BE328F8();

  return sub_23BE32E08();
}

uint64_t sub_23BDFBEB4(char a1)
{
  result = 0x6E61726165707061;
  switch(a1)
  {
    case 1:
      result = 0x7261646E656C6163;
      break;
    case 2:
      result = 0x656369766564;
      break;
    case 3:
      result = 0x68746C616568;
      break;
    case 4:
      result = 0x7375636F66;
      break;
    case 5:
      result = 0x636972656E6567;
      break;
    case 6:
      result = 0x657A696C61656469;
      break;
    case 7:
      result = 0x636973756DLL;
      break;
    case 8:
      result = 0x656E6974756F72;
      break;
    case 9:
      result = 0x6D756974697274;
      break;
    case 10:
      result = 0x72656874616577;
      break;
    case 11:
      result = 0x79636E6563657266;
      break;
    case 12:
      result = 0x6465726F6E6769;
      break;
    case 13:
      result = 0x6C6F686563616C70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23BDFC040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23BE32D48();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23BDFC0C4(uint64_t a1)
{
  v2 = sub_23BE035B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDFC100(uint64_t a1)
{
  v2 = sub_23BE035B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDFC150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E657665 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23BE32D48();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23BDFC1D4(uint64_t a1)
{
  v2 = sub_23BE0350C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDFC210(uint64_t a1)
{
  v2 = sub_23BE0350C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDFC254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23BE024F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23BDFC288(uint64_t a1)
{
  v2 = sub_23BE02F24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDFC2C4(uint64_t a1)
{
  v2 = sub_23BE02F24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDFC314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23BE32D48();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23BDFC398(uint64_t a1)
{
  v2 = sub_23BE03464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDFC3D4(uint64_t a1)
{
  v2 = sub_23BE03464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDFC420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701080941 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23BE32D48();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23BDFC4A8(uint64_t a1)
{
  v2 = sub_23BE03314();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDFC4E4(uint64_t a1)
{
  v2 = sub_23BE03314();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDFC52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23BE32D48();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23BDFC5AC(uint64_t a1)
{
  v2 = sub_23BE03020();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDFC5E8(uint64_t a1)
{
  v2 = sub_23BE03020();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDFC624(uint64_t a1)
{
  v2 = sub_23BE032C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDFC660(uint64_t a1)
{
  v2 = sub_23BE032C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDFC6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23BE32D48();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23BDFC73C(uint64_t a1)
{
  v2 = sub_23BE033BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDFC778(uint64_t a1)
{
  v2 = sub_23BE033BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDFC7B4(uint64_t a1)
{
  v2 = sub_23BE0326C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDFC7F0(uint64_t a1)
{
  v2 = sub_23BE0326C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDFC82C(uint64_t a1)
{
  v2 = sub_23BE02FCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDFC868(uint64_t a1)
{
  v2 = sub_23BE02FCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDFC8A4(uint64_t a1)
{
  v2 = sub_23BE03218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDFC8E0(uint64_t a1)
{
  v2 = sub_23BE03218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDFC91C(uint64_t a1)
{
  v2 = sub_23BE02F78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDFC958(uint64_t a1)
{
  v2 = sub_23BE02F78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDFC9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23BE32D48();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23BDFCA2C(uint64_t a1)
{
  v2 = sub_23BE03170();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDFCA68(uint64_t a1)
{
  v2 = sub_23BE03170();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDFCAA4(uint64_t a1)
{
  v2 = sub_23BE0311C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDFCAE0(uint64_t a1)
{
  v2 = sub_23BE0311C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BDFCB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F697469646E6F63 && a2 == 0xEA0000000000736ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23BE32D48();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23BDFCBC8(uint64_t a1)
{
  v2 = sub_23BE03074();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BDFCC04(uint64_t a1)
{
  v2 = sub_23BE03074();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppearanceStyle.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x746867696CLL;
  }

  else
  {
    return 1802658148;
  }
}

uint64_t sub_23BDFCC78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746867696CLL;
  }

  else
  {
    v3 = 1802658148;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x746867696CLL;
  }

  else
  {
    v5 = 1802658148;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23BE32D48();
  }

  return v8 & 1;
}

uint64_t sub_23BDFCD14()
{
  sub_23BE32DC8();
  sub_23BE328F8();

  return sub_23BE32E08();
}

uint64_t sub_23BDFCD8C()
{
  sub_23BE328F8();
}

uint64_t sub_23BDFCDF0()
{
  sub_23BE32DC8();
  sub_23BE328F8();

  return sub_23BE32E08();
}

void sub_23BDFCE70(uint64_t *a1@<X8>)
{
  v2 = 1802658148;
  if (*v1)
  {
    v2 = 0x746867696CLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t EsterbrookWeatherCondition.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x79776F6E73;
    v6 = 0x7967676F66;
    if (a1 != 8)
    {
      v6 = 0x6E657A6F7266;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x796D726F7473;
    if (a1 != 5)
    {
      v7 = 7955305;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1701736302;
    v2 = 0x796E6E7573;
    v3 = 0x79646E6977;
    if (a1 != 3)
    {
      v3 = 0x796E696172;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7261656C63;
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
}

uint64_t sub_23BDFD0D0@<X0>(_BYTE *a1@<X8>)
{
  result = _s32NTKEsterbrookFaceBundleCompanion26EsterbrookWeatherConditionO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_23BDFD100@<X0>(uint64_t *a1@<X8>)
{
  result = EsterbrookWeatherCondition.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t RoutineType.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x676E696E726F6DLL;
    v7 = 0x6C6F6F686373;
    v8 = 1802661751;
    if (a1 != 3)
    {
      v8 = 0x656D6974796164;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x676E696E657665;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 1818322285;
    v2 = 0x7961647275746173;
    if (a1 != 9)
    {
      v2 = 0x6C507961646E7573;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6D6974746867696ELL;
    v4 = 0x6F6F6E7265746661;
    if (a1 != 6)
    {
      v4 = 0x6574756D6D6F63;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_23BDFD360(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_23BE32D48();
  }

  return v12 & 1;
}

uint64_t sub_23BDFD40C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_23BE32DC8();
  a3(v5);
  sub_23BE328F8();

  return sub_23BE32E08();
}

uint64_t sub_23BDFD490(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_23BE328F8();
}

uint64_t sub_23BDFD500(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_23BE32DC8();
  a4(v6);
  sub_23BE328F8();

  return sub_23BE32E08();
}

uint64_t sub_23BDFD568@<X0>(_BYTE *a1@<X8>)
{
  result = _s32NTKEsterbrookFaceBundleCompanion11RoutineTypeO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_23BDFD598@<X0>(uint64_t *a1@<X8>)
{
  result = RoutineType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t CalendarEvent.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7261657977656ELL;
  v2 = 0x616D747369726863;
  if (a1 != 5)
  {
    v2 = 0x7961646874726962;
  }

  v3 = 0x6967736B6E616874;
  if (a1 != 3)
  {
    v3 = 0x73796164696C6F68;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x6E69746E656C6176;
  if (a1 != 1)
  {
    v4 = 0x6565776F6C6C6168;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23BDFD7A8()
{
  sub_23BE328F8();
}

uint64_t sub_23BDFD8E4@<X0>(_BYTE *a1@<X8>)
{
  result = _s32NTKEsterbrookFaceBundleCompanion13CalendarEventO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

void sub_23BDFD914(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7261657977656ELL;
  v5 = 0xE900000000000073;
  v6 = 0x616D747369726863;
  if (v2 != 5)
  {
    v6 = 0x7961646874726962;
    v5 = 0xE800000000000000;
  }

  v7 = 0xEC000000676E6976;
  v8 = 0x6967736B6E616874;
  if (v2 != 3)
  {
    v8 = 0x73796164696C6F68;
    v7 = 0xED00006E6F736165;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000007365;
  v10 = 0x6E69746E656C6176;
  if (v2 != 1)
  {
    v10 = 0x6565776F6C6C6168;
    v9 = 0xE90000000000006ELL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
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

BOOL HealthCategory.init(rawValue:)()
{
  v0 = sub_23BE32C08();

  return v0 != 0;
}

uint64_t sub_23BDFDB28()
{
  sub_23BE32DC8();
  sub_23BE328F8();
  return sub_23BE32E08();
}

uint64_t sub_23BDFDB94()
{
  sub_23BE32DC8();
  sub_23BE328F8();
  return sub_23BE32E08();
}

uint64_t sub_23BDFDBE4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_23BE32C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_23BDFDD10()
{
  v0 = sub_23BE32C08();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t FocusMode.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x7065656C73;
  }

  else
  {
    return 6581860;
  }
}

uint64_t sub_23BDFDD8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7065656C73;
  }

  else
  {
    v3 = 6581860;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x7065656C73;
  }

  else
  {
    v5 = 6581860;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23BE32D48();
  }

  return v8 & 1;
}

uint64_t sub_23BDFDE28()
{
  sub_23BE32DC8();
  sub_23BE328F8();

  return sub_23BE32E08();
}

uint64_t sub_23BDFDEA0()
{
  sub_23BE328F8();
}

uint64_t sub_23BDFDF04()
{
  sub_23BE32DC8();
  sub_23BE328F8();

  return sub_23BE32E08();
}

uint64_t sub_23BDFDF84@<X0>(char *a1@<X8>)
{
  v2 = sub_23BE32C08();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_23BDFDFE0(uint64_t *a1@<X8>)
{
  v2 = 6581860;
  if (*v1)
  {
    v2 = 0x7065656C73;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t DeviceState.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x72657461656874;
  }

  if (a1 == 1)
  {
    return 0x7265776F70776F6CLL;
  }

  return 0x636F6C7265746177;
}

uint64_t sub_23BDFE130(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x7265776F70776F6CLL;
  if (v2 != 1)
  {
    v4 = 0x636F6C7265746177;
    v3 = 0xE90000000000006BLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x72657461656874;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7265776F70776F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x636F6C7265746177;
    v7 = 0xE90000000000006BLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x72657461656874;
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
    v11 = sub_23BE32D48();
  }

  return v11 & 1;
}

uint64_t sub_23BDFE23C()
{
  sub_23BE32DC8();
  sub_23BE328F8();

  return sub_23BE32E08();
}

uint64_t sub_23BDFE2E4()
{
  sub_23BE328F8();
}

uint64_t sub_23BDFE378()
{
  sub_23BE32DC8();
  sub_23BE328F8();

  return sub_23BE32E08();
}

uint64_t sub_23BDFE41C@<X0>(_BYTE *a1@<X8>)
{
  result = _s32NTKEsterbrookFaceBundleCompanion11DeviceStateO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

void sub_23BDFE44C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x7265776F70776F6CLL;
  if (v2 != 1)
  {
    v5 = 0x636F6C7265746177;
    v4 = 0xE90000000000006BLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x72657461656874;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t SceneInfo.hash(into:)(uint64_t a1)
{
  v3 = sub_23BE326D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SceneInfo();
  MEMORY[0x28223BE20](v7);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23BE02ADC(v1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload >= 4)
    {
      if (EnumCaseMultiPayload != 4)
      {
        sub_23BE01D08(a1, *v9);
        goto LABEL_10;
      }

      RoutineType.rawValue.getter(*v9);
    }

    sub_23BE328F8();
LABEL_10:

    return SceneInfo.hash(into:)(a1);
  }

  if ((EnumCaseMultiPayload - 8) >= 6)
  {
    if (EnumCaseMultiPayload == 6)
    {
      (*(v4 + 32))(v6, v9, v3);
      sub_23BE03C94(&qword_27E1C7CD8, MEMORY[0x277CC95F0]);
      sub_23BE32878();
      (*(v4 + 8))(v6, v3);
    }

    else
    {
      sub_23BE328F8();
    }
  }

  return SceneInfo.hash(into:)(a1);
}

uint64_t SceneInfo.description.getter()
{
  v1 = v0;
  v2 = sub_23BE326D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SceneInfo();
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BE02ADC(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x636973754DLL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v20 = *v8;
      strcpy(v52, "Calendar: ");
      BYTE3(v52[1]) = 0;
      HIDWORD(v52[1]) = -369098752;
      if (v20 <= 2)
      {
        if (v20)
        {
          if (v20 == 1)
          {
            v16 = 0xEA00000000007365;
            v13 = 0x6E69746E656C6176;
          }

          else
          {
            v16 = 0xE90000000000006ELL;
            v13 = 0x6565776F6C6C6168;
          }
        }

        else
        {
          v16 = 0xE700000000000000;
          v13 = 0x7261657977656ELL;
        }
      }

      else if (v20 > 4)
      {
        if (v20 == 5)
        {
          v16 = 0xE900000000000073;
          v13 = 0x616D747369726863;
        }

        else
        {
          v16 = 0xE800000000000000;
          v13 = 0x7961646874726962;
        }
      }

      else if (v20 == 3)
      {
        v16 = 0xEC000000676E6976;
        v13 = 0x6967736B6E616874;
      }

      else
      {
        v16 = 0xED00006E6F736165;
        v13 = 0x73796164696C6F68;
      }

      goto LABEL_12;
    case 2:
      v21 = *v8;
      v52[0] = 0xC23A656369766544;
      v52[1] = 0xA9000000000000A0;
      if (v21)
      {
        if (v21 == 1)
        {
          v16 = 0xE800000000000000;
          v13 = 0x7265776F70776F6CLL;
        }

        else
        {
          v16 = 0xE90000000000006BLL;
          v13 = 0x636F6C7265746177;
        }
      }

      else
      {
        v16 = 0xE700000000000000;
        v13 = 0x72657461656874;
      }

      goto LABEL_12;
    case 3:
      v15 = *v8;
      v52[0] = 0xA0C23A7375636F46;
      v52[1] = 0xA800000000000000;
      v12 = v15 == 0;
      v13 = 6581860;
      if (!v12)
      {
        v13 = 0x7065656C73;
      }

      v14 = 0xE300000000000000;
      goto LABEL_9;
    case 4:
      v24 = *v8;
      v52[0] = 0x3A656E6974756F52;
      v52[1] = 0xAA0000000000A0C2;
      v49 = RoutineType.rawValue.getter(v24);
      v50 = v25;
      goto LABEL_13;
    case 5:
      v26 = *v8;
      v52[0] = 0x3A72656874616557;
      v52[1] = 0xAA0000000000A0C2;
      v27 = *(v26 + 16);
      if (v27)
      {
        v51 = MEMORY[0x277D84F90];
        sub_23BE01CE8(0, v27, 0);
        v28 = 32;
        v29 = v51;
        do
        {
          v30 = *(v26 + v28);
          if (v30 > 4)
          {
            v31 = 0x7967676F66;
            if (v30 != 8)
            {
              v31 = 0x6E657A6F7266;
            }

            v34 = 0xE600000000000000;
            if (v30 == 8)
            {
              v32 = 0xE500000000000000;
            }

            else
            {
              v32 = 0xE600000000000000;
            }

            if (v30 == 7)
            {
              v31 = 0x79776F6E73;
              v32 = 0xE500000000000000;
            }

            v33 = 0x796D726F7473;
            if (v30 != 5)
            {
              v33 = 7955305;
              v34 = 0xE300000000000000;
            }

            v35 = *(v26 + v28) <= 6u;
          }

          else
          {
            v31 = 0x79646E6977;
            if (v30 != 3)
            {
              v31 = 0x796E696172;
            }

            v32 = 0xE500000000000000;
            if (v30 == 2)
            {
              v31 = 0x796E6E7573;
              v32 = 0xE500000000000000;
            }

            v33 = 1701736302;
            if (*(v26 + v28))
            {
              v33 = 0x7261656C63;
            }

            v34 = 0xE400000000000000;
            if (*(v26 + v28))
            {
              v34 = 0xE500000000000000;
            }

            v35 = *(v26 + v28) <= 1u;
          }

          if (v35)
          {
            v36 = v33;
          }

          else
          {
            v36 = v31;
          }

          if (v35)
          {
            v37 = v34;
          }

          else
          {
            v37 = v32;
          }

          v49 = v36;
          v50 = v37;
          sub_23BE02B40();
          v38 = sub_23BE32AA8();
          v40 = v39;

          v51 = v29;
          v42 = *(v29 + 16);
          v41 = *(v29 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_23BE01CE8((v41 > 1), v42 + 1, 1);
            v29 = v51;
          }

          *(v29 + 16) = v42 + 1;
          v43 = v29 + 16 * v42;
          *(v43 + 32) = v38;
          *(v43 + 40) = v40;
          ++v28;
          --v27;
        }

        while (v27);
      }

      else
      {

        v29 = MEMORY[0x277D84F90];
      }

      v45 = MEMORY[0x23EEBE1D0](v29, MEMORY[0x277D837D0]);
      v47 = v46;

      MEMORY[0x23EEBE160](v45, v47);
      goto LABEL_14;
    case 6:
      (*(v3 + 32))(v5, v8, v2);
      v52[0] = 0x79636E6563657246;
      v52[1] = 0xAD0000A0C23A4449;
      v22 = sub_23BE326A8();
      MEMORY[0x23EEBE160](v22);

      v23 = v52[0];
      (*(v3 + 8))(v5, v2);
      return v23;
    case 7:
      v52[0] = 0xC23A68746C616548;
      v52[1] = 0xA9000000000000A0;
      v49 = 0x74756F6B726F77;
      v50 = 0xE700000000000000;
      sub_23BE02B40();
      v44 = sub_23BE32AA8();
      MEMORY[0x23EEBE160](v44);
      goto LABEL_14;
    case 8:
      return 0x636972656E6547;
    case 9:
      return 0x657A696C61656449;
    case 10:
      return result;
    case 11:
      return 0x6D756974697254;
    case 12:
      return 0x6465726F6E6749;
    case 13:
      return 0x6C6F686563616C50;
    default:
      v11 = *v8;
      strcpy(v52, "Appearance: ");
      BYTE5(v52[1]) = 0;
      HIWORD(v52[1]) = -5120;
      v12 = v11 == 0;
      v13 = 1802658148;
      if (!v12)
      {
        v13 = 0x746867696CLL;
      }

      v14 = 0xE400000000000000;
LABEL_9:
      if (v12)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0xE500000000000000;
      }

LABEL_12:
      v49 = v13;
      v50 = v16;
LABEL_13:
      sub_23BE02B40();
      v17 = sub_23BE32AA8();
      v19 = v18;

      MEMORY[0x23EEBE160](v17, v19);
LABEL_14:

      return v52[0];
  }
}

uint64_t SceneInfo.encode(to:)(void *a1)
{
  v2 = sub_23BDE652C(&qword_27E1C8538);
  v104 = *(v2 - 8);
  v105 = v2;
  MEMORY[0x28223BE20](v2);
  v102 = &v64 - v3;
  v99 = sub_23BDE652C(&qword_27E1C8540);
  v96 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v95 = &v64 - v4;
  v103 = sub_23BDE652C(&qword_27E1C8548);
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v97 = &v64 - v5;
  v100 = sub_23BE326D8();
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v94 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BDE652C(&qword_27E1C8550);
  v92 = *(v7 - 8);
  v93 = v7;
  MEMORY[0x28223BE20](v7);
  v91 = &v64 - v8;
  v89 = sub_23BDE652C(&qword_27E1C8558);
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v86 = &v64 - v9;
  v90 = sub_23BDE652C(&qword_27E1C8560);
  v88 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v85 = &v64 - v10;
  v84 = sub_23BDE652C(&qword_27E1C8568);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v64 - v11;
  v81 = sub_23BDE652C(&qword_27E1C8570);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v64 - v12;
  v77 = sub_23BDE652C(&qword_27E1C8578);
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v74 = &v64 - v13;
  v78 = sub_23BDE652C(&qword_27E1C8580);
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v73 = &v64 - v14;
  v72 = sub_23BDE652C(&qword_27E1C8588);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v64 - v15;
  v69 = sub_23BDE652C(&qword_27E1C8590);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v64 - v16;
  v66 = sub_23BDE652C(&qword_27E1C8598);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v18 = &v64 - v17;
  v19 = sub_23BDE652C(&qword_27E1C85A0);
  v64 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v64 - v20;
  v22 = type metadata accessor for SceneInfo();
  MEMORY[0x28223BE20](v22);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23BDE652C(&qword_27E1C85A8);
  v26 = *(v25 - 8);
  v107 = v25;
  v108 = v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v64 - v27;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BE02F24();
  v106 = v28;
  sub_23BE32E28();
  sub_23BE02ADC(v109[1], v24);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v47 = *v24;
      LOBYTE(v110) = 1;
      sub_23BE0350C();
      v48 = v106;
      v49 = v107;
      sub_23BE32CA8();
      LOBYTE(v110) = v47;
      sub_23BE03560();
      v50 = v66;
      sub_23BE32D08();
      (*(v65 + 8))(v18, v50);
      return (*(v108 + 8))(v48, v49);
    case 2u:
      v44 = *v24;
      LOBYTE(v110) = 2;
      sub_23BE03464();
      v39 = v67;
      v31 = v106;
      v30 = v107;
      sub_23BE32CA8();
      LOBYTE(v110) = v44;
      sub_23BE034B8();
      v40 = v69;
      sub_23BE32D08();
      v41 = &v100;
      goto LABEL_10;
    case 3u:
      v45 = *v24;
      LOBYTE(v110) = 4;
      sub_23BE03314();
      v39 = v73;
      v31 = v106;
      v30 = v107;
      sub_23BE32CA8();
      LOBYTE(v110) = v45;
      sub_23BE03368();
      v40 = v78;
      sub_23BE32D08();
      v41 = &v108;
      goto LABEL_10;
    case 4u:
      v38 = *v24;
      LOBYTE(v110) = 8;
      sub_23BE03170();
      v39 = v85;
      v31 = v106;
      v30 = v107;
      sub_23BE32CA8();
      LOBYTE(v110) = v38;
      sub_23BE031C4();
      v40 = v90;
      sub_23BE32D08();
      v41 = &v112;
      goto LABEL_10;
    case 5u:
      v51 = *v24;
      LOBYTE(v110) = 10;
      sub_23BE03074();
      v52 = v91;
      v54 = v106;
      v53 = v107;
      sub_23BE32CA8();
      v110 = v51;
      sub_23BDE652C(&qword_27E1C85D8);
      sub_23BE036C0(&qword_27E1C85E0, sub_23BE030C8);
      v55 = v93;
      sub_23BE32D08();
      (*(v92 + 8))(v52, v55);
      (*(v108 + 8))(v54, v53);

    case 6u:
      v57 = v98;
      v58 = v94;
      v59 = v100;
      (*(v98 + 32))(v94, v24, v100);
      LOBYTE(v110) = 11;
      sub_23BE03020();
      v60 = v97;
      v31 = v106;
      v30 = v107;
      sub_23BE32CA8();
      sub_23BE03C94(&qword_27E1C7D50, MEMORY[0x277CC95F0]);
      v61 = v103;
      sub_23BE32D08();
      (*(v101 + 8))(v60, v61);
      (*(v57 + 8))(v58, v59);
      goto LABEL_11;
    case 7u:
      LOBYTE(v110) = 3;
      sub_23BE033BC();
      v39 = v70;
      v31 = v106;
      v30 = v107;
      sub_23BE32CA8();
      sub_23BE03410();
      v40 = v72;
      sub_23BE32D08();
      v41 = &v103;
LABEL_10:
      (*(*(v41 - 32) + 8))(v39, v40);
      goto LABEL_11;
    case 8u:
      LOBYTE(v110) = 5;
      sub_23BE032C0();
      v63 = v74;
      v34 = v106;
      v33 = v107;
      sub_23BE32CA8();
      v35 = *(v75 + 8);
      v36 = v63;
      v37 = v109;
      goto LABEL_18;
    case 9u:
      LOBYTE(v110) = 6;
      sub_23BE0326C();
      v43 = v79;
      v34 = v106;
      v33 = v107;
      sub_23BE32CA8();
      v35 = *(v80 + 8);
      v36 = v43;
      v37 = &v110;
      goto LABEL_18;
    case 0xAu:
      LOBYTE(v110) = 7;
      sub_23BE03218();
      v62 = v82;
      v34 = v106;
      v33 = v107;
      sub_23BE32CA8();
      v35 = *(v83 + 8);
      v36 = v62;
      v37 = &v111;
      goto LABEL_18;
    case 0xBu:
      LOBYTE(v110) = 9;
      sub_23BE0311C();
      v32 = v86;
      v34 = v106;
      v33 = v107;
      sub_23BE32CA8();
      v35 = *(v87 + 8);
      v36 = v32;
      v37 = &v113;
LABEL_18:
      v35(v36, *(v37 - 32));
      goto LABEL_19;
    case 0xCu:
      LOBYTE(v110) = 12;
      sub_23BE02FCC();
      v42 = v95;
      v34 = v106;
      v33 = v107;
      sub_23BE32CA8();
      (*(v96 + 8))(v42, v99);
      goto LABEL_19;
    case 0xDu:
      LOBYTE(v110) = 13;
      sub_23BE02F78();
      v56 = v102;
      v34 = v106;
      v33 = v107;
      sub_23BE32CA8();
      (*(v104 + 8))(v56, v105);
LABEL_19:
      result = (*(v108 + 8))(v34, v33);
      break;
    default:
      v29 = *v24;
      LOBYTE(v110) = 0;
      sub_23BE035B4();
      v31 = v106;
      v30 = v107;
      sub_23BE32CA8();
      LOBYTE(v110) = v29;
      sub_23BE03608();
      sub_23BE32D08();
      (*(v64 + 8))(v21, v19);
LABEL_11:
      result = (*(v108 + 8))(v31, v30);
      break;
  }

  return result;
}

uint64_t SceneInfo.hashValue.getter()
{
  sub_23BE32DC8();
  SceneInfo.hash(into:)(v1);
  return sub_23BE32E08();
}

uint64_t SceneInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v173 = a2;
  v171 = sub_23BDE652C(&qword_27E1C8670);
  v153 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v166 = &v117 - v3;
  v150 = sub_23BDE652C(&qword_27E1C8678);
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v164 = &v117 - v4;
  v152 = sub_23BDE652C(&qword_27E1C8680);
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v165 = &v117 - v5;
  v148 = sub_23BDE652C(&qword_27E1C8688);
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v163 = &v117 - v6;
  v145 = sub_23BDE652C(&qword_27E1C8690);
  v143 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v161 = &v117 - v7;
  v146 = sub_23BDE652C(&qword_27E1C8698);
  v144 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v162 = &v117 - v8;
  v142 = sub_23BDE652C(&qword_27E1C86A0);
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v160 = &v117 - v9;
  v140 = sub_23BDE652C(&qword_27E1C86A8);
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v159 = &v117 - v10;
  v137 = sub_23BDE652C(&qword_27E1C86B0);
  v135 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v158 = &v117 - v11;
  v138 = sub_23BDE652C(&qword_27E1C86B8);
  v136 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v170 = &v117 - v12;
  v134 = sub_23BDE652C(&qword_27E1C86C0);
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v157 = &v117 - v13;
  v131 = sub_23BDE652C(&qword_27E1C86C8);
  v132 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v156 = &v117 - v14;
  v169 = sub_23BDE652C(&qword_27E1C86D0);
  v130 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v155 = &v117 - v15;
  v129 = sub_23BDE652C(&qword_27E1C86D8);
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v154 = &v117 - v16;
  v17 = sub_23BDE652C(&qword_27E1C86E0);
  v167 = *(v17 - 8);
  v168 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v117 - v18;
  v172 = type metadata accessor for SceneInfo();
  v20 = MEMORY[0x28223BE20](v172);
  v127 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v126 = (&v117 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v125 = &v117 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v124 = &v117 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v117 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v117 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v117 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v117 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v117 - v40;
  v42 = a1[3];
  v174 = a1;
  sub_23BDE9BF0(a1, v42);
  sub_23BE02F24();
  v43 = v175;
  sub_23BE32E18();
  v175 = v43;
  if (v43)
  {
LABEL_10:
    v61 = v174;
    return sub_23BDE6478(v61);
  }

  v118 = v39;
  v119 = v36;
  v120 = v33;
  v121 = v30;
  v44 = v169;
  v45 = v170;
  v46 = v171;
  v122 = v41;
  v47 = v173;
  v48 = v168;
  v123 = v19;
  v49 = sub_23BE32C98();
  if (*(v49 + 16) != 1 || *(v49 + 32) == 14)
  {
    v56 = sub_23BE32B78();
    v57 = swift_allocError();
    v59 = v58;
    sub_23BDE652C(&qword_27E1C7E20);
    *v59 = v172;
    v60 = v123;
    sub_23BE32C28();
    sub_23BE32B38();
    (*(*(v56 - 8) + 104))(v59, *MEMORY[0x277D84160], v56);
    v175 = v57;
    swift_willThrow();
    (*(v167 + 8))(v60, v48);
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  switch(*(v49 + 32))
  {
    case 1:
      v171 = v49;
      LOBYTE(v177) = 1;
      sub_23BE0350C();
      v90 = v155;
      v91 = v123;
      v92 = v175;
      sub_23BE32C18();
      v175 = v92;
      if (v92)
      {
        goto LABEL_32;
      }

      sub_23BE038DC();
      v93 = v175;
      sub_23BE32C88();
      v175 = v93;
      if (v93)
      {
        (*(v130 + 8))(v90, v44);
LABEL_32:
        v94 = *(v167 + 8);
        v95 = v91;
        goto LABEL_44;
      }

      (*(v130 + 8))(v90, v44);
      (*(v167 + 8))(v91, v48);
      swift_unknownObjectRelease();
      v55 = v119;
      *v119 = v177;
      goto LABEL_59;
    case 2:
      v171 = v49;
      LOBYTE(v177) = 2;
      sub_23BE03464();
      v77 = v156;
      v78 = v48;
      v79 = v123;
      v80 = v175;
      sub_23BE32C18();
      v175 = v80;
      if (v80)
      {
        (*(v167 + 8))(v79, v78);
        goto LABEL_9;
      }

      sub_23BE03888();
      v110 = v131;
      v111 = v175;
      sub_23BE32C88();
      v112 = v167;
      v175 = v111;
      if (v111)
      {
        (*(v132 + 8))(v77, v110);
        (*(v112 + 8))(v79, v78);
        goto LABEL_9;
      }

      (*(v132 + 8))(v77, v110);
      (*(v112 + 8))(v79, v78);
      swift_unknownObjectRelease();
      v55 = v120;
      *v120 = v177;
      goto LABEL_59;
    case 3:
      v171 = v49;
      LOBYTE(v177) = 3;
      sub_23BE033BC();
      v81 = v157;
      v82 = v123;
      v83 = v175;
      sub_23BE32C18();
      v175 = v83;
      if (v83)
      {
        goto LABEL_43;
      }

      sub_23BE03834();
      v84 = v134;
      v85 = v175;
      sub_23BE32C88();
      v86 = v167;
      v175 = v85;
      v87 = &v165;
      if (v85)
      {
        goto LABEL_52;
      }

      (*(v133 + 8))(v81, v84);
      (*(v86 + 8))(v82, v48);
      swift_unknownObjectRelease();
      v55 = v121;
      goto LABEL_59;
    case 4:
      LOBYTE(v177) = 4;
      sub_23BE03314();
      v51 = v123;
      v70 = v175;
      sub_23BE32C18();
      v175 = v70;
      if (v70)
      {
        goto LABEL_17;
      }

      sub_23BE037E0();
      v107 = v138;
      v108 = v175;
      sub_23BE32C88();
      v109 = v167;
      v175 = v108;
      if (v108)
      {
        (*(v136 + 8))(v45, v107);
        (*(v109 + 8))(v51, v48);
        goto LABEL_9;
      }

      (*(v136 + 8))(v45, v107);
      (*(v109 + 8))(v51, v48);
      swift_unknownObjectRelease();
      v115 = v124;
      *v124 = v177;
      swift_storeEnumTagMultiPayload();
      v74 = v122;
      sub_23BE0365C(v115, v122);
      v47 = v173;
      v116 = v174;
      goto LABEL_62;
    case 5:
      LOBYTE(v177) = 5;
      sub_23BE032C0();
      v96 = v158;
      v72 = v123;
      v97 = v175;
      sub_23BE32C18();
      v175 = v97;
      if (v97)
      {
        goto LABEL_38;
      }

      (*(v135 + 8))(v96, v137);
      (*(v167 + 8))(v72, v48);
      swift_unknownObjectRelease();
      v74 = v122;
      goto LABEL_50;
    case 6:
      LOBYTE(v177) = 6;
      sub_23BE0326C();
      v100 = v159;
      v72 = v123;
      v101 = v175;
      sub_23BE32C18();
      v175 = v101;
      if (v101)
      {
        goto LABEL_38;
      }

      (*(v139 + 8))(v100, v140);
      (*(v167 + 8))(v72, v48);
      swift_unknownObjectRelease();
      v74 = v122;
      goto LABEL_50;
    case 7:
      LOBYTE(v177) = 7;
      sub_23BE03218();
      v88 = v160;
      v72 = v123;
      v89 = v175;
      sub_23BE32C18();
      v175 = v89;
      if (v89)
      {
        goto LABEL_38;
      }

      (*(v141 + 8))(v88, v142);
      (*(v167 + 8))(v72, v48);
      swift_unknownObjectRelease();
      v74 = v122;
      goto LABEL_50;
    case 8:
      v171 = v49;
      LOBYTE(v177) = 8;
      sub_23BE03170();
      v81 = v162;
      v82 = v123;
      v106 = v175;
      sub_23BE32C18();
      v175 = v106;
      if (v106)
      {
        goto LABEL_43;
      }

      sub_23BE0378C();
      v84 = v146;
      v113 = v175;
      sub_23BE32C88();
      v86 = v167;
      v175 = v113;
      v87 = &v176;
      if (v113)
      {
LABEL_52:
        (*(*(v87 - 32) + 1))(v81, v84);
        (*(v86 + 8))(v82, v48);
        goto LABEL_9;
      }

      (*(v144 + 8))(v81, v84);
      (*(v86 + 8))(v82, v48);
      swift_unknownObjectRelease();
      v55 = v125;
      *v125 = v177;
      goto LABEL_59;
    case 9:
      LOBYTE(v177) = 9;
      sub_23BE0311C();
      v75 = v161;
      v72 = v123;
      v76 = v175;
      sub_23BE32C18();
      v175 = v76;
      if (v76)
      {
        goto LABEL_38;
      }

      (*(v143 + 8))(v75, v145);
      (*(v167 + 8))(v72, v48);
      swift_unknownObjectRelease();
      v74 = v122;
      goto LABEL_50;
    case 0xA:
      v171 = v49;
      LOBYTE(v177) = 10;
      sub_23BE03074();
      v102 = v163;
      v82 = v123;
      v103 = v175;
      sub_23BE32C18();
      v175 = v103;
      if (v103)
      {
        goto LABEL_43;
      }

      sub_23BDE652C(&qword_27E1C85D8);
      sub_23BE036C0(&qword_27E1C86E8, sub_23BE03738);
      v104 = v148;
      v105 = v175;
      sub_23BE32C88();
      v175 = v105;
      if (!v105)
      {
        (*(v147 + 8))(v102, v104);
        (*(v167 + 8))(v82, v48);
        swift_unknownObjectRelease();
        v55 = v126;
        *v126 = v177;
        goto LABEL_59;
      }

      (*(v147 + 8))(v102, v104);
LABEL_43:
      v94 = *(v167 + 8);
      v95 = v82;
LABEL_44:
      v94(v95, v48);
      goto LABEL_9;
    case 0xB:
      v171 = v49;
      LOBYTE(v177) = 11;
      sub_23BE03020();
      v63 = v165;
      v64 = v48;
      v65 = v123;
      v66 = v175;
      sub_23BE32C18();
      v175 = v66;
      if (v66)
      {
        goto LABEL_15;
      }

      sub_23BE326D8();
      sub_23BE03C94(&qword_27E1C7CF0, MEMORY[0x277CC95F0]);
      v67 = v127;
      v68 = v152;
      v69 = v175;
      sub_23BE32C88();
      v175 = v69;
      if (!v69)
      {
        (*(v151 + 8))(v63, v68);
        (*(v167 + 8))(v65, v64);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v114 = v67;
        goto LABEL_60;
      }

      (*(v151 + 8))(v63, v68);
LABEL_15:
      (*(v167 + 8))(v65, v64);
      goto LABEL_9;
    case 0xC:
      LOBYTE(v177) = 12;
      sub_23BE02FCC();
      v71 = v164;
      v72 = v123;
      v73 = v175;
      sub_23BE32C18();
      v175 = v73;
      if (v73)
      {
        goto LABEL_38;
      }

      (*(v149 + 8))(v71, v150);
      (*(v167 + 8))(v72, v48);
      swift_unknownObjectRelease();
      v74 = v122;
      goto LABEL_50;
    case 0xD:
      LOBYTE(v177) = 13;
      sub_23BE02F78();
      v98 = v166;
      v72 = v123;
      v99 = v175;
      sub_23BE32C18();
      v175 = v99;
      if (v99)
      {
LABEL_38:
        (*(v167 + 8))(v72, v48);
        goto LABEL_9;
      }

      (*(v153 + 8))(v98, v46);
      (*(v167 + 8))(v72, v48);
      swift_unknownObjectRelease();
      v74 = v122;
LABEL_50:
      swift_storeEnumTagMultiPayload();
      goto LABEL_61;
    default:
      LOBYTE(v177) = 0;
      sub_23BE035B4();
      v50 = v154;
      v51 = v123;
      v52 = v175;
      sub_23BE32C18();
      v175 = v52;
      if (v52)
      {
LABEL_17:
        (*(v167 + 8))(v51, v48);
        goto LABEL_9;
      }

      sub_23BE03930();
      v53 = v129;
      v54 = v175;
      sub_23BE32C88();
      (*(v128 + 8))(v50, v53);
      (*(v167 + 8))(v51, v48);
      swift_unknownObjectRelease();
      v175 = v54;
      if (v54)
      {
        goto LABEL_10;
      }

      v55 = v118;
      *v118 = v177;
LABEL_59:
      swift_storeEnumTagMultiPayload();
      v114 = v55;
LABEL_60:
      v74 = v122;
      sub_23BE0365C(v114, v122);
LABEL_61:
      v116 = v174;
LABEL_62:
      sub_23BE0365C(v74, v47);
      v61 = v116;
      break;
  }

  return sub_23BDE6478(v61);
}

uint64_t sub_23BE01AE4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BE01B18()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BE01B4C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BE01B80()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BE01BB4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BE01C20()
{
  sub_23BE32DC8();
  SceneInfo.hash(into:)(v1);
  return sub_23BE32E08();
}

uint64_t sub_23BE01C64()
{
  sub_23BE32DC8();
  SceneInfo.hash(into:)(v1);
  return sub_23BE32E08();
}

uint64_t sub_23BE01CA0@<X0>(uint64_t *a1@<X8>)
{
  result = _s32NTKEsterbrookFaceBundleCompanion9SceneInfoO8allCasesSayACGvgZ_0();
  *a1 = result;
  return result;
}

char *sub_23BE01CC8(char *a1, int64_t a2, char a3)
{
  result = sub_23BE2D3B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23BE01CE8(char *a1, int64_t a2, char a3)
{
  result = sub_23BE2D4CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_23BE01D08(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x23EEBE630](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      sub_23BE328F8();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s32NTKEsterbrookFaceBundleCompanion9SceneInfoO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v3 = sub_23BE326D8();
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x28223BE20](v3);
  v60 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SceneInfo();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v60 - v10);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v60 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v60 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v60 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v60 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v60 - v24;
  v26 = sub_23BDE652C(&qword_27E1C8948);
  v27 = *(MEMORY[0x28223BE20](v26 - 8) + 56);
  v28 = a1;
  v30 = &v60 - v29;
  sub_23BE02ADC(v28, &v60 - v29);
  sub_23BE02ADC(v63, &v30[v27]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23BE02ADC(v30, v23);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_59;
      }

      v50 = sub_23BDFBAF4(*v23, v30[v27]);
      goto LABEL_52;
    case 2u:
      sub_23BE02ADC(v30, v20);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_59;
      }

      v43 = 0x72657461656874;
      if (*v20)
      {
        if (*v20 == 1)
        {
          v44 = 0xE800000000000000;
          v45 = 0x7265776F70776F6CLL;
        }

        else
        {
          v45 = 0x636F6C7265746177;
          v44 = 0xE90000000000006BLL;
        }
      }

      else
      {
        v44 = 0xE700000000000000;
        v45 = 0x72657461656874;
      }

      if (v30[v27])
      {
        if (v30[v27] == 1)
        {
          v57 = 0xE800000000000000;
          v43 = 0x7265776F70776F6CLL;
        }

        else
        {
          v43 = 0x636F6C7265746177;
          v57 = 0xE90000000000006BLL;
        }
      }

      else
      {
        v57 = 0xE700000000000000;
      }

      if (v45 == v43 && v44 == v57)
      {
        goto LABEL_70;
      }

      goto LABEL_71;
    case 3u:
      sub_23BE02ADC(v30, v17);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_59;
      }

      v31 = v30[v27];
      v32 = *v17 == 0;
      v33 = 6581860;
      v34 = 0x7065656C73;
      if (*v17)
      {
        v35 = 0x7065656C73;
      }

      else
      {
        v35 = 6581860;
      }

      v36 = 0xE300000000000000;
      goto LABEL_28;
    case 4u:
      sub_23BE02ADC(v30, v14);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_59;
      }

      v37 = v30[v27];
      v38 = RoutineType.rawValue.getter(*v14);
      v40 = v39;
      if (v38 != RoutineType.rawValue.getter(v37) || v40 != v41)
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    case 5u:
      sub_23BE02ADC(v30, v11);
      v51 = *v11;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v50 = sub_23BDE8EAC(v51, *&v30[v27]);

        goto LABEL_52;
      }

      goto LABEL_59;
    case 6u:
      sub_23BE02ADC(v30, v8);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v53 = v61;
        v52 = v62;
        v54 = &v30[v27];
        v55 = v60;
        (*(v61 + 32))(v60, v54, v62);
        v50 = sub_23BE326B8();
        v56 = *(v53 + 8);
        v56(v55, v52);
        v56(v8, v52);
LABEL_52:
        sub_23BE05534(v30);
        return v50 & 1;
      }

      (*(v61 + 8))(v8, v62);
LABEL_59:
      sub_23BE054CC(v30);
      goto LABEL_60;
    case 7u:
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_72;
      }

      goto LABEL_59;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_72;
      }

      goto LABEL_59;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_72;
      }

      goto LABEL_59;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_72;
      }

      goto LABEL_59;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_72;
      }

      goto LABEL_59;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_72;
      }

      goto LABEL_59;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_72;
      }

      goto LABEL_59;
    default:
      sub_23BE02ADC(v30, v25);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_59;
      }

      v31 = v30[v27];
      v32 = *v25 == 0;
      v33 = 1802658148;
      v34 = 0x746867696CLL;
      if (*v25)
      {
        v35 = 0x746867696CLL;
      }

      else
      {
        v35 = 1802658148;
      }

      v36 = 0xE400000000000000;
LABEL_28:
      if (v32)
      {
        v46 = v36;
      }

      else
      {
        v46 = 0xE500000000000000;
      }

      if (v31)
      {
        v47 = v34;
      }

      else
      {
        v47 = v33;
      }

      if (v31)
      {
        v48 = 0xE500000000000000;
      }

      else
      {
        v48 = v36;
      }

      if (v35 == v47 && v46 == v48)
      {
LABEL_70:

LABEL_72:
        sub_23BE05534(v30);
        v50 = 1;
        return v50 & 1;
      }

LABEL_71:
      v58 = sub_23BE32D48();

      if (v58)
      {
        goto LABEL_72;
      }

      sub_23BE05534(v30);
LABEL_60:
      v50 = 0;
      return v50 & 1;
  }
}

uint64_t sub_23BE024F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E61726165707061 && a2 == 0xEA00000000006563;
  if (v4 || (sub_23BE32D48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x68746C616568 && a2 == 0xE600000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7375636F66 && a2 == 0xE500000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636972656E6567 && a2 == 0xE700000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x657A696C61656469 && a2 == 0xE900000000000064 || (sub_23BE32D48() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x636973756DLL && a2 == 0xE500000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656E6974756F72 && a2 == 0xE700000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D756974697274 && a2 == 0xE700000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x72656874616577 && a2 == 0xE700000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x79636E6563657266 && a2 == 0xEA00000000004449 || (sub_23BE32D48() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6465726F6E6769 && a2 == 0xE700000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
  {

    return 13;
  }

  else
  {
    v6 = sub_23BE32D48();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t _s32NTKEsterbrookFaceBundleCompanion26EsterbrookWeatherConditionO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_23BE32C08();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t _s32NTKEsterbrookFaceBundleCompanion11RoutineTypeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_23BE32C08();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t _s32NTKEsterbrookFaceBundleCompanion13CalendarEventO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_23BE32C08();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t _s32NTKEsterbrookFaceBundleCompanion11DeviceStateO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_23BE32C08();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for SceneInfo()
{
  result = qword_27E1C8788;
  if (!qword_27E1C8788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BE02ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23BE02B40()
{
  result = qword_27E1C8530;
  if (!qword_27E1C8530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8530);
  }

  return result;
}

uint64_t _s32NTKEsterbrookFaceBundleCompanion9SceneInfoO8allCasesSayACGvgZ_0()
{
  sub_23BDE652C(&qword_27E1C8950);
  v0 = *(type metadata accessor for SceneInfo() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23BE39800;
  v4 = (v3 + v2);
  *v4 = 0;
  swift_storeEnumTagMultiPayload();
  v4[v1] = 1;
  swift_storeEnumTagMultiPayload();
  v4[2 * v1] = 0;
  swift_storeEnumTagMultiPayload();
  v4[3 * v1] = 1;
  swift_storeEnumTagMultiPayload();
  v4[4 * v1] = 2;
  swift_storeEnumTagMultiPayload();
  v4[5 * v1] = 3;
  swift_storeEnumTagMultiPayload();
  v4[6 * v1] = 4;
  swift_storeEnumTagMultiPayload();
  v4[7 * v1] = 5;
  swift_storeEnumTagMultiPayload();
  v4[8 * v1] = 6;
  swift_storeEnumTagMultiPayload();
  v4[9 * v1] = 0;
  swift_storeEnumTagMultiPayload();
  v4[10 * v1] = 1;
  swift_storeEnumTagMultiPayload();
  v4[11 * v1] = 2;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v4[13 * v1] = 0;
  swift_storeEnumTagMultiPayload();
  v4[14 * v1] = 1;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v4[18 * v1] = 0;
  swift_storeEnumTagMultiPayload();
  v4[19 * v1] = 1;
  swift_storeEnumTagMultiPayload();
  v4[20 * v1] = 2;
  swift_storeEnumTagMultiPayload();
  v4[21 * v1] = 3;
  swift_storeEnumTagMultiPayload();
  v4[22 * v1] = 4;
  swift_storeEnumTagMultiPayload();
  v4[23 * v1] = 6;
  swift_storeEnumTagMultiPayload();
  v4[24 * v1] = 5;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *&v4[26 * v1] = &unk_284E91B20;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  return v3;
}

unint64_t sub_23BE02F24()
{
  result = qword_27E1C85B0;
  if (!qword_27E1C85B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C85B0);
  }

  return result;
}

unint64_t sub_23BE02F78()
{
  result = qword_27E1C85B8;
  if (!qword_27E1C85B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C85B8);
  }

  return result;
}

unint64_t sub_23BE02FCC()
{
  result = qword_27E1C85C0;
  if (!qword_27E1C85C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C85C0);
  }

  return result;
}

unint64_t sub_23BE03020()
{
  result = qword_27E1C85C8;
  if (!qword_27E1C85C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C85C8);
  }

  return result;
}

unint64_t sub_23BE03074()
{
  result = qword_27E1C85D0;
  if (!qword_27E1C85D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C85D0);
  }

  return result;
}

unint64_t sub_23BE030C8()
{
  result = qword_27E1C85E8;
  if (!qword_27E1C85E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C85E8);
  }

  return result;
}

unint64_t sub_23BE0311C()
{
  result = qword_27E1C85F0;
  if (!qword_27E1C85F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C85F0);
  }

  return result;
}

unint64_t sub_23BE03170()
{
  result = qword_27E1C85F8;
  if (!qword_27E1C85F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C85F8);
  }

  return result;
}

unint64_t sub_23BE031C4()
{
  result = qword_27E1C8600;
  if (!qword_27E1C8600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8600);
  }

  return result;
}

unint64_t sub_23BE03218()
{
  result = qword_27E1C8608;
  if (!qword_27E1C8608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8608);
  }

  return result;
}

unint64_t sub_23BE0326C()
{
  result = qword_27E1C8610;
  if (!qword_27E1C8610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8610);
  }

  return result;
}

unint64_t sub_23BE032C0()
{
  result = qword_27E1C8618;
  if (!qword_27E1C8618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8618);
  }

  return result;
}

unint64_t sub_23BE03314()
{
  result = qword_27E1C8620;
  if (!qword_27E1C8620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8620);
  }

  return result;
}

unint64_t sub_23BE03368()
{
  result = qword_27E1C8628;
  if (!qword_27E1C8628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8628);
  }

  return result;
}

unint64_t sub_23BE033BC()
{
  result = qword_27E1C8630;
  if (!qword_27E1C8630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8630);
  }

  return result;
}

unint64_t sub_23BE03410()
{
  result = qword_27E1C8638;
  if (!qword_27E1C8638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8638);
  }

  return result;
}

unint64_t sub_23BE03464()
{
  result = qword_27E1C8640;
  if (!qword_27E1C8640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8640);
  }

  return result;
}

unint64_t sub_23BE034B8()
{
  result = qword_27E1C8648;
  if (!qword_27E1C8648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8648);
  }

  return result;
}

unint64_t sub_23BE0350C()
{
  result = qword_27E1C8650;
  if (!qword_27E1C8650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8650);
  }

  return result;
}

unint64_t sub_23BE03560()
{
  result = qword_27E1C8658;
  if (!qword_27E1C8658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8658);
  }

  return result;
}

unint64_t sub_23BE035B4()
{
  result = qword_27E1C8660;
  if (!qword_27E1C8660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8660);
  }

  return result;
}

unint64_t sub_23BE03608()
{
  result = qword_27E1C8668;
  if (!qword_27E1C8668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8668);
  }

  return result;
}

uint64_t sub_23BE0365C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BE036C0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_23BDE9D3C(&qword_27E1C85D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BE03738()
{
  result = qword_27E1C86F0;
  if (!qword_27E1C86F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C86F0);
  }

  return result;
}

unint64_t sub_23BE0378C()
{
  result = qword_27E1C86F8;
  if (!qword_27E1C86F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C86F8);
  }

  return result;
}

unint64_t sub_23BE037E0()
{
  result = qword_27E1C8700;
  if (!qword_27E1C8700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8700);
  }

  return result;
}

unint64_t sub_23BE03834()
{
  result = qword_27E1C8708;
  if (!qword_27E1C8708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8708);
  }

  return result;
}

unint64_t sub_23BE03888()
{
  result = qword_27E1C8710;
  if (!qword_27E1C8710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8710);
  }

  return result;
}

unint64_t sub_23BE038DC()
{
  result = qword_27E1C8718;
  if (!qword_27E1C8718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8718);
  }

  return result;
}

unint64_t sub_23BE03930()
{
  result = qword_27E1C8720;
  if (!qword_27E1C8720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8720);
  }

  return result;
}

unint64_t sub_23BE03988()
{
  result = qword_27E1C8728;
  if (!qword_27E1C8728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8728);
  }

  return result;
}

unint64_t sub_23BE039E0()
{
  result = qword_27E1C8730;
  if (!qword_27E1C8730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8730);
  }

  return result;
}

unint64_t sub_23BE03A68()
{
  result = qword_27E1C8740;
  if (!qword_27E1C8740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8740);
  }

  return result;
}

unint64_t sub_23BE03AC0()
{
  result = qword_27E1C8748;
  if (!qword_27E1C8748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8748);
  }

  return result;
}

unint64_t sub_23BE03B18()
{
  result = qword_27E1C8750;
  if (!qword_27E1C8750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8750);
  }

  return result;
}

unint64_t sub_23BE03B70()
{
  result = qword_27E1C8758;
  if (!qword_27E1C8758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8758);
  }

  return result;
}

unint64_t sub_23BE03BC8()
{
  result = qword_27E1C8760;
  if (!qword_27E1C8760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8760);
  }

  return result;
}

uint64_t sub_23BE03C94(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23BE03D5C()
{
  sub_23BE03E6C();
  if (v0 <= 0x3F)
  {
    sub_23BE03E9C();
    if (v1 <= 0x3F)
    {
      sub_23BE03ECC();
      if (v2 <= 0x3F)
      {
        sub_23BE03EFC();
        if (v3 <= 0x3F)
        {
          sub_23BE03F2C();
          if (v4 <= 0x3F)
          {
            sub_23BE03FAC(319, &qword_27E1C87C0, sub_23BE03F5C);
            if (v5 <= 0x3F)
            {
              sub_23BE03FAC(319, &qword_27E1C87D0, MEMORY[0x277CC95F0]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

ValueMetadata *sub_23BE03E6C()
{
  result = qword_27E1C8798;
  if (!qword_27E1C8798)
  {
    result = &type metadata for AppearanceStyle;
    atomic_store(&type metadata for AppearanceStyle, &qword_27E1C8798);
  }

  return result;
}

ValueMetadata *sub_23BE03E9C()
{
  result = qword_27E1C87A0;
  if (!qword_27E1C87A0)
  {
    result = &type metadata for CalendarEvent;
    atomic_store(&type metadata for CalendarEvent, &qword_27E1C87A0);
  }

  return result;
}

ValueMetadata *sub_23BE03ECC()
{
  result = qword_27E1C87A8;
  if (!qword_27E1C87A8)
  {
    result = &type metadata for DeviceState;
    atomic_store(&type metadata for DeviceState, &qword_27E1C87A8);
  }

  return result;
}

ValueMetadata *sub_23BE03EFC()
{
  result = qword_27E1C87B0;
  if (!qword_27E1C87B0)
  {
    result = &type metadata for FocusMode;
    atomic_store(&type metadata for FocusMode, &qword_27E1C87B0);
  }

  return result;
}

ValueMetadata *sub_23BE03F2C()
{
  result = qword_27E1C87B8;
  if (!qword_27E1C87B8)
  {
    result = &type metadata for RoutineType;
    atomic_store(&type metadata for RoutineType, &qword_27E1C87B8);
  }

  return result;
}

void sub_23BE03F5C()
{
  if (!qword_27E1C87C8)
  {
    v0 = sub_23BE329A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C87C8);
    }
  }
}

void sub_23BE03FAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for EsterbrookWeatherCondition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EsterbrookWeatherCondition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RoutineType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RoutineType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SceneInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23BE0451C()
{
  result = qword_27E1C87D8;
  if (!qword_27E1C87D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C87D8);
  }

  return result;
}

unint64_t sub_23BE04574()
{
  result = qword_27E1C87E0;
  if (!qword_27E1C87E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C87E0);
  }

  return result;
}

unint64_t sub_23BE045CC()
{
  result = qword_27E1C87E8;
  if (!qword_27E1C87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C87E8);
  }

  return result;
}

unint64_t sub_23BE04624()
{
  result = qword_27E1C87F0;
  if (!qword_27E1C87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C87F0);
  }

  return result;
}

unint64_t sub_23BE0467C()
{
  result = qword_27E1C87F8;
  if (!qword_27E1C87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C87F8);
  }

  return result;
}

unint64_t sub_23BE046D4()
{
  result = qword_27E1C8800;
  if (!qword_27E1C8800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8800);
  }

  return result;
}

unint64_t sub_23BE0472C()
{
  result = qword_27E1C8808;
  if (!qword_27E1C8808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8808);
  }

  return result;
}

unint64_t sub_23BE04784()
{
  result = qword_27E1C8810;
  if (!qword_27E1C8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8810);
  }

  return result;
}

unint64_t sub_23BE047DC()
{
  result = qword_27E1C8818;
  if (!qword_27E1C8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8818);
  }

  return result;
}

unint64_t sub_23BE04834()
{
  result = qword_27E1C8820;
  if (!qword_27E1C8820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8820);
  }

  return result;
}

unint64_t sub_23BE0488C()
{
  result = qword_27E1C8828;
  if (!qword_27E1C8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8828);
  }

  return result;
}

unint64_t sub_23BE048E4()
{
  result = qword_27E1C8830;
  if (!qword_27E1C8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8830);
  }

  return result;
}

unint64_t sub_23BE0493C()
{
  result = qword_27E1C8838;
  if (!qword_27E1C8838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8838);
  }

  return result;
}

unint64_t sub_23BE04994()
{
  result = qword_27E1C8840;
  if (!qword_27E1C8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8840);
  }

  return result;
}

unint64_t sub_23BE049EC()
{
  result = qword_27E1C8848;
  if (!qword_27E1C8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8848);
  }

  return result;
}

unint64_t sub_23BE04A44()
{
  result = qword_27E1C8850;
  if (!qword_27E1C8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8850);
  }

  return result;
}

unint64_t sub_23BE04A9C()
{
  result = qword_27E1C8858;
  if (!qword_27E1C8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8858);
  }

  return result;
}

unint64_t sub_23BE04AF4()
{
  result = qword_27E1C8860;
  if (!qword_27E1C8860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8860);
  }

  return result;
}

unint64_t sub_23BE04B4C()
{
  result = qword_27E1C8868;
  if (!qword_27E1C8868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8868);
  }

  return result;
}

unint64_t sub_23BE04BA4()
{
  result = qword_27E1C8870;
  if (!qword_27E1C8870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8870);
  }

  return result;
}

unint64_t sub_23BE04BFC()
{
  result = qword_27E1C8878;
  if (!qword_27E1C8878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8878);
  }

  return result;
}

unint64_t sub_23BE04C54()
{
  result = qword_27E1C8880;
  if (!qword_27E1C8880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8880);
  }

  return result;
}

unint64_t sub_23BE04CAC()
{
  result = qword_27E1C8888;
  if (!qword_27E1C8888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8888);
  }

  return result;
}

unint64_t sub_23BE04D04()
{
  result = qword_27E1C8890;
  if (!qword_27E1C8890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8890);
  }

  return result;
}

unint64_t sub_23BE04D5C()
{
  result = qword_27E1C8898;
  if (!qword_27E1C8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8898);
  }

  return result;
}

unint64_t sub_23BE04DB4()
{
  result = qword_27E1C88A0;
  if (!qword_27E1C88A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C88A0);
  }

  return result;
}

unint64_t sub_23BE04E0C()
{
  result = qword_27E1C88A8;
  if (!qword_27E1C88A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C88A8);
  }

  return result;
}

unint64_t sub_23BE04E64()
{
  result = qword_27E1C88B0;
  if (!qword_27E1C88B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C88B0);
  }

  return result;
}

unint64_t sub_23BE04EBC()
{
  result = qword_27E1C88B8;
  if (!qword_27E1C88B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C88B8);
  }

  return result;
}

unint64_t sub_23BE04F14()
{
  result = qword_27E1C88C0;
  if (!qword_27E1C88C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C88C0);
  }

  return result;
}

unint64_t sub_23BE04F6C()
{
  result = qword_27E1C88C8;
  if (!qword_27E1C88C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C88C8);
  }

  return result;
}

unint64_t sub_23BE04FC4()
{
  result = qword_27E1C88D0;
  if (!qword_27E1C88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C88D0);
  }

  return result;
}

unint64_t sub_23BE0501C()
{
  result = qword_27E1C88D8;
  if (!qword_27E1C88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C88D8);
  }

  return result;
}

unint64_t sub_23BE05074()
{
  result = qword_27E1C88E0;
  if (!qword_27E1C88E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C88E0);
  }

  return result;
}

unint64_t sub_23BE050CC()
{
  result = qword_27E1C88E8;
  if (!qword_27E1C88E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C88E8);
  }

  return result;
}

unint64_t sub_23BE05124()
{
  result = qword_27E1C88F0;
  if (!qword_27E1C88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C88F0);
  }

  return result;
}

unint64_t sub_23BE0517C()
{
  result = qword_27E1C88F8;
  if (!qword_27E1C88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C88F8);
  }

  return result;
}

unint64_t sub_23BE051D4()
{
  result = qword_27E1C8900;
  if (!qword_27E1C8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8900);
  }

  return result;
}

unint64_t sub_23BE0522C()
{
  result = qword_27E1C8908;
  if (!qword_27E1C8908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8908);
  }

  return result;
}

unint64_t sub_23BE05280()
{
  result = qword_27E1C8910;
  if (!qword_27E1C8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8910);
  }

  return result;
}

unint64_t sub_23BE052D4()
{
  result = qword_27E1C8918;
  if (!qword_27E1C8918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8918);
  }

  return result;
}

unint64_t sub_23BE05328()
{
  result = qword_27E1C8920;
  if (!qword_27E1C8920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8920);
  }

  return result;
}

unint64_t sub_23BE0537C()
{
  result = qword_27E1C8928;
  if (!qword_27E1C8928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8928);
  }

  return result;
}

unint64_t sub_23BE053D0()
{
  result = qword_27E1C8930;
  if (!qword_27E1C8930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8930);
  }

  return result;
}

unint64_t sub_23BE05424()
{
  result = qword_27E1C8938;
  if (!qword_27E1C8938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8938);
  }

  return result;
}

unint64_t sub_23BE05478()
{
  result = qword_27E1C8940;
  if (!qword_27E1C8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8940);
  }

  return result;
}

uint64_t sub_23BE054CC(uint64_t a1)
{
  v2 = sub_23BDE652C(&qword_27E1C8948);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BE05534(uint64_t a1)
{
  v2 = type metadata accessor for SceneInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23BE0561C()
{
  result = qword_27E1C8958;
  if (!qword_27E1C8958)
  {
    type metadata accessor for SceneScore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8958);
  }

  return result;
}

uint64_t type metadata accessor for SceneScore()
{
  result = qword_27E1C8960;
  if (!qword_27E1C8960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BE056E8()
{
  sub_23BE326D8();
  if (v0 <= 0x3F)
  {
    sub_23BE05774();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BE05774()
{
  if (!qword_27E1C8970)
  {
    v0 = sub_23BE329A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C8970);
    }
  }
}

uint64_t sub_23BE057C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23BDE652C(&qword_27E1C7C68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for Scene();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_23BDF5A94(a1, &qword_27E1C7C68);
    v13 = sub_23BE2C8A8(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_23BE2B49C();
        v17 = v21;
      }

      sub_23BE0C628(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for Scene);
      sub_23BE2A6FC(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_23BDF5A94(v8, &qword_27E1C7C68);
  }

  else
  {
    sub_23BE0C628(a1, v12, type metadata accessor for Scene);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_23BE2AB9C(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

void sub_23BE05A18()
{
  v1 = v0;
  v2 = OBJC_IVAR___NTKEsterbrookSceneView_animatingState;
  if (v0[OBJC_IVAR___NTKEsterbrookSceneView_animatingState])
  {
    sub_23BE0B4C0();
  }

  else
  {
    sub_23BE0AEE4();
  }

  if (qword_27E1C7A58 != -1)
  {
    swift_once();
  }

  v3 = sub_23BE327D8();
  sub_23BDEA278(v3, qword_27E1DBF10);
  v4 = v0;
  oslog = sub_23BE327B8();
  v5 = sub_23BE32A18();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    if (v1[v2])
    {
      v8 = 0x646573756170;
    }

    else
    {
      v8 = 0x676E6979616C70;
    }

    if (v1[v2])
    {
      v9 = 0xE600000000000000;
    }

    else
    {
      v9 = 0xE700000000000000;
    }

    v10 = sub_23BE288C4(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_23BDE0000, oslog, v5, "Updated scene view state to [%s]!", v6, 0xCu);
    sub_23BDE6478(v7);
    MEMORY[0x23EEBF030](v7, -1, -1);
    MEMORY[0x23EEBF030](v6, -1, -1);
  }
}

id sub_23BE05CF8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___NTKEsterbrookSceneView_sceneBackgroundView);
  if (v2)
  {
    *&v2[OBJC_IVAR___NTKEsterbrookSceneBackgroundView_tritiumProgress] = *(v0 + OBJC_IVAR___NTKEsterbrookSceneView_tritiumProgress);
    v3 = v2;
    sub_23BE2292C();
  }

  *(*(v1 + OBJC_IVAR___NTKEsterbrookSceneView_dialView) + OBJC_IVAR___NTKEsterbrookSceneDialView_tritiumProgress) = *(v1 + OBJC_IVAR___NTKEsterbrookSceneView_tritiumProgress);
  sub_23BDE7788();

  return sub_23BE08B88();
}

uint64_t sub_23BE05E94()
{
  v1 = v0;
  v2 = sub_23BDE652C(&qword_27E1C7C68);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v58 - v6;
  if (*(v0 + OBJC_IVAR___NTKEsterbrookSceneView_liveProgress) != 1.0)
  {
    goto LABEL_44;
  }

  v8 = OBJC_IVAR___NTKEsterbrookSceneView_loadedScenes;
  swift_beginAccess();
  v9 = *(v0 + v8);
  if (!*(v9 + 16) || (v10 = sub_23BE2C8A8(1), (v11 & 1) == 0))
  {
    v21 = type metadata accessor for Scene();
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    sub_23BDF5A94(v7, &qword_27E1C7C68);
    goto LABEL_44;
  }

  v12 = v10;
  v13 = *(v9 + 56);
  v14 = type metadata accessor for Scene();
  v15 = *(v14 - 8);
  v59 = *(v15 + 72);
  sub_23BE0C690(v13 + v59 * v12, v7, type metadata accessor for Scene);
  v63 = v15;
  v64 = v14;
  v60 = *(v15 + 56);
  v61 = v15 + 56;
  v60(v7, 0, 1, v14);
  sub_23BDF5A94(v7, &qword_27E1C7C68);
  v16 = OBJC_IVAR___NTKEsterbrookSceneView_spriteViews;
  swift_beginAccess();
  v17 = *(v1 + v16);
  if (*(v17 + 16) && (v18 = sub_23BE2C8A8(1), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v65 = v5;
  v62 = v8;
  if (!(v20 >> 62))
  {
    v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  v22 = sub_23BE32BB8();
  if (!v22)
  {
LABEL_43:

LABEL_44:
    if (qword_27E1C7A58 != -1)
    {
      swift_once();
    }

    v57 = sub_23BE327D8();
    sub_23BDEA278(v57, qword_27E1DBF10);
    v36 = sub_23BE327B8();
    v37 = sub_23BE32A18();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = "Omitting live scene description because scene finished animating.";
LABEL_48:
      _os_log_impl(&dword_23BDE0000, v36, v37, v39, v38, 2u);
      MEMORY[0x23EEBF030](v38, -1, -1);
    }

    goto LABEL_49;
  }

LABEL_11:
  v23 = 0;
  while (1)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x23EEBE370](v23, v20);
    }

    else
    {
      if (v23 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v24 = *(v20 + 8 * v23 + 32);
    }

    v25 = v24;
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v27 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_sprite;
    v28 = &v24[*(type metadata accessor for Sprite() + 32) + v27];
    if (v28[*(type metadata accessor for Timing(0) + 28)] == 3 || *(*&v25[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_animator] + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion14SpriteAnimator_state) < 2u)
    {
      break;
    }

    ++v23;
    if (v26 == v22)
    {
      goto LABEL_43;
    }
  }

  v29 = v65;
  if (*(v1 + OBJC_IVAR___NTKEsterbrookSceneView_animatingState))
  {
    goto LABEL_44;
  }

  v30 = *(v1 + v62);
  if (*(v30 + 16))
  {
    v31 = 1;
    v32 = sub_23BE2C8A8(1);
    if (v33)
    {
      sub_23BE0C690(*(v30 + 56) + v32 * v59, v29, type metadata accessor for Scene);
      v31 = 0;
    }
  }

  else
  {
    v31 = 1;
  }

  v34 = v64;
  v60(v29, v31, 1, v64);
  if ((*(v63 + 48))(v29, 1, v34))
  {
    sub_23BDF5A94(v29, &qword_27E1C7C68);
    if (qword_27E1C7A58 != -1)
    {
      swift_once();
    }

    v35 = sub_23BE327D8();
    sub_23BDEA278(v35, qword_27E1DBF10);
    v36 = sub_23BE327B8();
    v37 = sub_23BE32A08();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = "Failed to get scene name for live scene description.";
      goto LABEL_48;
    }
  }

  else
  {
    v40 = (v29 + *(v34 + 20));
    v41 = *v40;
    v42 = v40[1];

    sub_23BDF5A94(v29, &qword_27E1C7C68);
    v66 = 0;
    v67 = 0xE000000000000000;
    sub_23BE32B08();

    v66 = 0x52435345445F4F56;
    v67 = 0xEF5F4E4F49545049;
    MEMORY[0x23EEBE160](v41, v42);

    v44 = v66;
    v43 = v67;
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v46 = [objc_opt_self() bundleForClass_];
    v47 = sub_23BE32898();
    v48 = sub_23BE32898();
    v49 = [v46 localizedStringForKey:v47 value:0 table:v48];

    v50 = sub_23BE328C8();
    v52 = v51;

    if (v50 == v44 && v52 == v43)
    {
    }

    else
    {
      v53 = v50;
      v54 = sub_23BE32D48();

      if ((v54 & 1) == 0)
      {
        return v53;
      }
    }

    if (qword_27E1C7A58 != -1)
    {
      swift_once();
    }

    v55 = sub_23BE327D8();
    sub_23BDEA278(v55, qword_27E1DBF10);
    v36 = sub_23BE327B8();
    v37 = sub_23BE32A08();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = "Failed to get localized string for live scene description.";
      goto LABEL_48;
    }
  }

LABEL_49:

  return 0;
}

uint64_t sub_23BE066B0(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___NTKEsterbrookSceneView_showSpriteDebugHelpers;
  *(v1 + OBJC_IVAR___NTKEsterbrookSceneView_showSpriteDebugHelpers) = a1;
  v4 = OBJC_IVAR___NTKEsterbrookSceneView_spriteViews;
  result = swift_beginAccess();
  v6 = *(v2 + v4);
  if (*(v6 + 16) && (result = sub_23BE2C8A8(1), (v7 & 1) != 0))
  {
    v8 = *(*(v6 + 56) + 8 * result);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_7;
    }
  }

  result = sub_23BE32BB8();
  v9 = result;
  if (!result)
  {
  }

LABEL_7:
  if (v9 >= 1)
  {
    v10 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x23EEBE370](v10, v8);
      }

      else
      {
        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      *(v11 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_showDebugHelpers) = *(v2 + v3);
      sub_23BE22BB8();
    }

    while (v9 != v10);
  }

  __break(1u);
  return result;
}

char *sub_23BE067E4(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v16 = OBJC_IVAR___NTKEsterbrookSceneView_loader;
  *&v8[v16] = [objc_allocWithZone(type metadata accessor for SceneLoader()) init];
  *&v8[OBJC_IVAR___NTKEsterbrookSceneView_layout] = xmmword_23BE3B180;
  v17 = OBJC_IVAR___NTKEsterbrookSceneView_loadedScenes;
  v18 = MEMORY[0x277D84F90];
  *&v8[v17] = sub_23BE2C0C8(MEMORY[0x277D84F90]);
  v8[OBJC_IVAR___NTKEsterbrookSceneView_animatingState] = 1;
  *&v8[OBJC_IVAR___NTKEsterbrookSceneView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8[OBJC_IVAR___NTKEsterbrookSceneView_didNotifyLiveSceneStartedPlayback] = 0;
  v19 = OBJC_IVAR___NTKEsterbrookSceneView_handsView;
  *&v8[OBJC_IVAR___NTKEsterbrookSceneView_handsView] = 0;
  v20 = OBJC_IVAR___NTKEsterbrookSceneView_spriteViews;
  *&v8[v20] = sub_23BE2C278(v18);
  v21 = OBJC_IVAR___NTKEsterbrookSceneView_sceneBackgroundView;
  *&v8[OBJC_IVAR___NTKEsterbrookSceneView_sceneBackgroundView] = 0;
  *&v8[OBJC_IVAR___NTKEsterbrookSceneView_tritiumProgress] = 0;
  *&v8[OBJC_IVAR___NTKEsterbrookSceneView_liveProgress] = 0;
  v22 = OBJC_IVAR___NTKEsterbrookSceneView_scenePalette;
  *&v8[OBJC_IVAR___NTKEsterbrookSceneView_scenePalette] = 0;
  v8[OBJC_IVAR___NTKEsterbrookSceneView_showSpriteDebugHelpers] = 0;
  v23 = *&v8[v19];
  *&v8[v19] = a1;
  v59 = a1;
  v60 = a1;

  if (a2)
  {
    v24 = type metadata accessor for ScenePalette();
    v25 = objc_allocWithZone(v24);
    v26 = [swift_unknownObjectRetain() background];
    *&v25[OBJC_IVAR___NTKEsterbrookScenePalette_background] = v26;
    v27 = [a2 overlay];
    *&v25[OBJC_IVAR___NTKEsterbrookScenePalette_overlay] = v27;
    v28 = [a2 secondHand];
    *&v25[OBJC_IVAR___NTKEsterbrookScenePalette_secondHand] = v28;
    v61.receiver = v25;
    v61.super_class = v24;
    v29 = objc_msgSendSuper2(&v61, sel_init);
    v30 = *&v8[v22];
    *&v8[v22] = v29;
    v31 = v29;

    objc_allocWithZone(type metadata accessor for SceneBackgroundView());
    v32 = sub_23BE224C4(a3, v31, a4, a5, a6, a7);
    swift_unknownObjectRelease();
    v33 = *&v8[v21];
    *&v8[v21] = v32;
  }

  v34 = type metadata accessor for SceneDialView();
  v35 = objc_allocWithZone(v34);
  *&v35[OBJC_IVAR___NTKEsterbrookSceneDialView_hours] = xmmword_23BE36610;
  v36 = OBJC_IVAR___NTKEsterbrookSceneDialView_hourLayers;
  *&v35[v36] = sub_23BE2BEEC(MEMORY[0x277D84F90]);
  *&v35[OBJC_IVAR___NTKEsterbrookSceneDialView_density] = 0;
  *&v35[OBJC_IVAR___NTKEsterbrookSceneDialView_tritiumProgress] = 0;
  v58 = a3;
  sub_23BE24998(v58, v64);
  v37 = &v35[OBJC_IVAR___NTKEsterbrookSceneDialView_layout];
  v38 = v64[1];
  *v37 = v64[0];
  *(v37 + 1) = v38;
  *(v37 + 2) = v64[2];
  *(v37 + 6) = v65;
  v63.receiver = v35;
  v63.super_class = v34;
  v39 = objc_msgSendSuper2(&v63, sel_initWithFrame_, 0.0, 0.0, a6, a7);
  sub_23BDE6678();

  *&v8[OBJC_IVAR___NTKEsterbrookSceneView_dialView] = v39;
  v40 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *&v8[OBJC_IVAR___NTKEsterbrookSceneView_tritiumContainerView] = v40;
  v41 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *&v8[OBJC_IVAR___NTKEsterbrookSceneView_backgroundContainerView] = v41;
  v42 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *&v8[OBJC_IVAR___NTKEsterbrookSceneView_midgroundContainerView] = v42;
  v43 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *&v8[OBJC_IVAR___NTKEsterbrookSceneView_foregroundContainerView] = v43;
  v44 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *&v8[OBJC_IVAR___NTKEsterbrookSceneView_forefrontContainerView] = v44;
  v45 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *&v8[OBJC_IVAR___NTKEsterbrookSceneView_idealizedContainerView] = v45;
  v46 = type metadata accessor for SceneView();
  v62.receiver = v8;
  v62.super_class = v46;
  v47 = objc_msgSendSuper2(&v62, sel_initWithFrame_, a4, a5, a6, a7);
  v48 = v47;
  v49 = *&v47[OBJC_IVAR___NTKEsterbrookSceneView_sceneBackgroundView];
  if (v49)
  {
    [v47 addSubview_];
  }

  else
  {
    v50 = v47;
  }

  [v48 addSubview_];
  [v48 addSubview_];
  v51 = OBJC_IVAR___NTKEsterbrookSceneView_backgroundContainerView;
  [v48 addSubview_];
  v52 = OBJC_IVAR___NTKEsterbrookSceneView_midgroundContainerView;
  [v48 addSubview_];
  v53 = OBJC_IVAR___NTKEsterbrookSceneView_foregroundContainerView;
  [v48 addSubview_];
  [v48 addSubview_];
  [v48 addSubview_];
  if (!v59)
  {
    goto LABEL_10;
  }

  v54 = v60;
  result = [v54 hourHandView];
  if (result)
  {
    v56 = result;
    [v48 insertSubview:result aboveSubview:*&v48[v51]];

    [v48 insertSubview:v54 aboveSubview:*&v48[v52]];
    result = [v54 secondHandView];
    if (result)
    {
      v57 = result;
      [v48 insertSubview:result aboveSubview:*&v48[v53]];

LABEL_10:
      sub_23BE08B88();
      sub_23BE07904();

      swift_unknownObjectRelease();
      return v48;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23BE06E6C(void *a1)
{
  v3 = OBJC_IVAR___NTKEsterbrookSceneView_loader;
  *(v1 + v3) = [objc_allocWithZone(type metadata accessor for SceneLoader()) init];
  *(v1 + OBJC_IVAR___NTKEsterbrookSceneView_layout) = xmmword_23BE3B180;
  v4 = OBJC_IVAR___NTKEsterbrookSceneView_loadedScenes;
  v5 = MEMORY[0x277D84F90];
  *(v1 + v4) = sub_23BE2C0C8(MEMORY[0x277D84F90]);
  *(v1 + OBJC_IVAR___NTKEsterbrookSceneView_animatingState) = 1;
  v6 = v1 + OBJC_IVAR___NTKEsterbrookSceneView_delegate;
  *(v1 + OBJC_IVAR___NTKEsterbrookSceneView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR___NTKEsterbrookSceneView_didNotifyLiveSceneStartedPlayback) = 0;
  v7 = OBJC_IVAR___NTKEsterbrookSceneView_handsView;
  *(v1 + OBJC_IVAR___NTKEsterbrookSceneView_handsView) = 0;
  v8 = OBJC_IVAR___NTKEsterbrookSceneView_spriteViews;
  v9 = sub_23BE2C278(v5);

  *(v1 + v8) = v9;
  v10 = OBJC_IVAR___NTKEsterbrookSceneView_sceneBackgroundView;
  *(v1 + OBJC_IVAR___NTKEsterbrookSceneView_sceneBackgroundView) = 0;
  *(v1 + OBJC_IVAR___NTKEsterbrookSceneView_tritiumProgress) = 0;
  *(v1 + OBJC_IVAR___NTKEsterbrookSceneView_liveProgress) = 0;
  v11 = OBJC_IVAR___NTKEsterbrookSceneView_scenePalette;
  *(v1 + OBJC_IVAR___NTKEsterbrookSceneView_scenePalette) = 0;
  *(v1 + OBJC_IVAR___NTKEsterbrookSceneView_showSpriteDebugHelpers) = 0;

  sub_23BE0C8A0(v6);

  type metadata accessor for SceneView();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_23BE07014()
{
  v1 = OBJC_IVAR___NTKEsterbrookSceneView_loadedScenes;
  swift_beginAccess();
  *&v0[v1] = MEMORY[0x277D84F98];

  v2 = OBJC_IVAR___NTKEsterbrookSceneView_spriteViews;
  swift_beginAccess();

  v4 = sub_23BE07190(v3);

  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:

    *&v0[v2] = MEMORY[0x277D84F98];

    v10.receiver = v0;
    v10.super_class = type metadata accessor for SceneView();
    return objc_msgSendSuper2(&v10, sel_dealloc);
  }

  result = sub_23BE32BB8();
  v6 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x23EEBE370](v7, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      *(v8 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_state) = 1;
      [v8 removeFromSuperview];
    }

    while (v6 != v7);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_23BE07190(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v35 = v5;
  v36 = result;
  v33 = v1;
  while (1)
  {
    if (!v4)
    {
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v9 >= v5)
        {
          goto LABEL_39;
        }

        v4 = *(v1 + 8 * v9);
        ++v7;
        if (v4)
        {
          v7 = v9;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      return result;
    }

LABEL_10:
    v40 = v4;
    v10 = *(*(result + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v4)))));
    v11 = v10 >> 62;
    v12 = v10;
    v13 = v10 >> 62 ? sub_23BE32BB8() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v8 >> 62;
    if (v8 >> 62)
    {
      break;
    }

    v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v15 + v13;
    if (__OFADD__(v15, v13))
    {
      goto LABEL_38;
    }

LABEL_14:

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v38 = v13;
    if (result)
    {
      if (!v14)
      {
        v17 = v8;
        v18 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else if (!v14)
    {
      goto LABEL_21;
    }

    sub_23BE32BB8();
LABEL_21:
    result = sub_23BE32B28();
    v17 = result;
    v18 = result & 0xFFFFFFFFFFFFFF8;
LABEL_22:
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    v21 = v12;
    v37 = v17;
    if (v11)
    {
      v23 = v18;
      result = sub_23BE32BB8();
      v18 = v23;
      v21 = v12;
      v22 = result;
    }

    else
    {
      v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = (v40 - 1) & v40;
    if (v22)
    {
      if (((v20 >> 1) - v19) < v38)
      {
        goto LABEL_42;
      }

      v24 = v18 + 8 * v19 + 32;
      v40 &= v40 - 1;
      v34 = v18;
      if (v11)
      {
        if (v22 < 1)
        {
          goto LABEL_44;
        }

        sub_23BE0C8C8(&qword_27E1C8A88, &qword_27E1C8A80);
        for (i = 0; i != v22; ++i)
        {
          sub_23BDE652C(&qword_27E1C8A80);
          v26 = sub_23BE12D84(v39, i, v21);
          v28 = *v27;
          (v26)(v39, 0);
          *(v24 + 8 * i) = v28;
        }
      }

      else
      {
        type metadata accessor for SpriteView();
        swift_arrayInitWithCopy();
      }

      v8 = v37;
      v5 = v35;
      result = v36;
      v1 = v33;
      v4 = v40;
      if (v38 >= 1)
      {
        v29 = *(v34 + 16);
        v30 = __OFADD__(v29, v38);
        v31 = v29 + v38;
        if (v30)
        {
          goto LABEL_43;
        }

        *(v34 + 16) = v31;
      }
    }

    else
    {

      v8 = v37;
      v5 = v35;
      result = v36;
      if (v38 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  v32 = sub_23BE32BB8();
  v16 = v32 + v13;
  if (!__OFADD__(v32, v13))
  {
    goto LABEL_14;
  }

LABEL_38:
  __break(1u);
LABEL_39:

  return v8;
}

void sub_23BE0764C()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for SceneView();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR___NTKEsterbrookSceneView_sceneBackgroundView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 ntk_setBoundsAndPositionFromFrame_];
  }

  v3 = *&v0[OBJC_IVAR___NTKEsterbrookSceneView_tritiumContainerView];
  [v0 bounds];
  [v3 ntk_setBoundsAndPositionFromFrame_];
  v4 = *&v0[OBJC_IVAR___NTKEsterbrookSceneView_backgroundContainerView];
  [v0 bounds];
  [v4 ntk_setBoundsAndPositionFromFrame_];
  v5 = *&v0[OBJC_IVAR___NTKEsterbrookSceneView_midgroundContainerView];
  [v0 bounds];
  [v5 ntk_setBoundsAndPositionFromFrame_];
  v6 = *&v0[OBJC_IVAR___NTKEsterbrookSceneView_foregroundContainerView];
  [v0 bounds];
  [v6 ntk_setBoundsAndPositionFromFrame_];
  v7 = *&v0[OBJC_IVAR___NTKEsterbrookSceneView_forefrontContainerView];
  [v0 bounds];
  [v7 ntk_setBoundsAndPositionFromFrame_];
  v8 = *&v0[OBJC_IVAR___NTKEsterbrookSceneView_idealizedContainerView];
  [v0 bounds];
  [v8 ntk_setBoundsAndPositionFromFrame_];
  v9 = *&v0[OBJC_IVAR___NTKEsterbrookSceneView_handsView];
  if (v9)
  {
    v10 = v9;
    [v0 bounds];
    [v10 ntk_setBoundsAndPositionFromFrame_];
    v11 = [v10 hourHandView];
    if (v11)
    {
      v12 = v11;
      MEMORY[0x23EEBE810]([v0 bounds]);
      [v12 setCenter_];

      v13 = [v10 secondHandView];
      if (v13)
      {
        v14 = v13;
        MEMORY[0x23EEBE810]([v0 bounds]);
        [v14 setCenter_];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_23BE07904()
{
  v1 = *(v0 + OBJC_IVAR___NTKEsterbrookSceneView_scenePalette);
  if (v1)
  {
    v2 = v0;
    v3 = qword_27E1C7A58;
    v4 = v1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_23BE327D8();
    sub_23BDEA278(v5, qword_27E1DBF10);
    v20 = v4;
    v6 = sub_23BE327B8();
    v7 = sub_23BE32A18();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v20;
      *v9 = v1;
      v10 = v20;
      _os_log_impl(&dword_23BDE0000, v6, v7, "Applying scene palette: %@", v8, 0xCu);
      sub_23BDF5A94(v9, &qword_27E1C8A78);
      MEMORY[0x23EEBF030](v9, -1, -1);
      MEMORY[0x23EEBF030](v8, -1, -1);
    }

    v11 = *(v2 + OBJC_IVAR___NTKEsterbrookSceneView_sceneBackgroundView);
    if (v11)
    {
      v12 = *&v11[OBJC_IVAR___NTKEsterbrookSceneBackgroundView_scenePalette];
      *&v11[OBJC_IVAR___NTKEsterbrookSceneBackgroundView_scenePalette] = v20;
      v13 = v20;
      v14 = v11;

      sub_23BE2292C();
    }

    v15 = *(v2 + OBJC_IVAR___NTKEsterbrookSceneView_handsView);
    v16 = v20;
    if (v15)
    {
      v17 = *&v20[OBJC_IVAR___NTKEsterbrookScenePalette_secondHand];
      v18 = v15;
      v19 = v17;
      [v18 applySecondHandColor_];

      v16 = v20;
    }
  }
}

void sub_23BE07B34(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_23BDE652C(&qword_27E1C8A70);
  MEMORY[0x28223BE20](v6);
  v68 = &v62 - v7;
  v8 = sub_23BDE652C(&qword_27E1C7C68);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v67 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v63 = &v62 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v72 = &v62 - v14;
  MEMORY[0x28223BE20](v13);
  v73 = &v62 - v15;
  v16 = type metadata accessor for Scene();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v62 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v62 - v20;
  if (qword_27E1C7A58 != -1)
  {
    swift_once();
  }

  v22 = sub_23BE327D8();
  v23 = sub_23BDEA278(v22, qword_27E1DBF10);
  sub_23BE0C690(a1, v21, type metadata accessor for Scene);
  v64 = v23;
  v24 = sub_23BE327B8();
  v25 = sub_23BE32A18();
  v26 = os_log_type_enabled(v24, v25);
  v70 = a2;
  v71 = v3;
  v69 = a1;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v75[0] = v28;
    *v27 = 136315394;
    v29 = &v21[*(v16 + 20)];
    v30 = *v29;
    v31 = v29[1];

    sub_23BE0C70C(v21, type metadata accessor for Scene);
    v32 = sub_23BE288C4(v30, v31, v75);
    a2 = v70;

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v74 = a2;
    sub_23BE0C4EC();
    v33 = sub_23BE32D18();
    v35 = sub_23BE288C4(v33, v34, v75);

    *(v27 + 14) = v35;
    _os_log_impl(&dword_23BDE0000, v24, v25, "Loading [%s] for mode [%s]", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEBF030](v28, -1, -1);
    v36 = v27;
    a1 = v69;
    v3 = v71;
    MEMORY[0x23EEBF030](v36, -1, -1);
  }

  else
  {

    sub_23BE0C70C(v21, type metadata accessor for Scene);
  }

  v37 = OBJC_IVAR___NTKEsterbrookSceneView_loadedScenes;
  swift_beginAccess();
  v66 = v37;
  v38 = *&v3[v37];
  v39 = v72;
  if (*(v38 + 16))
  {
    v40 = sub_23BE2C8A8(a2);
    v41 = v73;
    if (v42)
    {
      sub_23BE0C690(*(v38 + 56) + v17[9] * v40, v73, type metadata accessor for Scene);
      v43 = 0;
    }

    else
    {
      v43 = 1;
    }
  }

  else
  {
    v43 = 1;
    v41 = v73;
  }

  v44 = v17[7];
  v44(v41, v43, 1, v16);
  sub_23BE0C690(a1, v39, type metadata accessor for Scene);
  v65 = v44;
  v44(v39, 0, 1, v16);
  v45 = *(v6 + 48);
  v46 = v68;
  sub_23BE0C838(v41, v68, &qword_27E1C7C68);
  sub_23BE0C838(v39, v46 + v45, &qword_27E1C7C68);
  v47 = v17[6];
  if (v47(v46, 1, v16) == 1)
  {
    sub_23BDF5A94(v39, &qword_27E1C7C68);
    sub_23BDF5A94(v41, &qword_27E1C7C68);
    if (v47(v46 + v45, 1, v16) == 1)
    {
      sub_23BDF5A94(v46, &qword_27E1C7C68);
LABEL_23:
      v59 = sub_23BE327B8();
      v60 = sub_23BE32A18();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_23BDE0000, v59, v60, "Scene already loaded!", v61, 2u);
        MEMORY[0x23EEBF030](v61, -1, -1);
      }

      return;
    }

    goto LABEL_16;
  }

  v48 = v63;
  sub_23BE0C838(v46, v63, &qword_27E1C7C68);
  if (v47(v46 + v45, 1, v16) == 1)
  {
    sub_23BDF5A94(v72, &qword_27E1C7C68);
    sub_23BDF5A94(v73, &qword_27E1C7C68);
    sub_23BE0C70C(v48, type metadata accessor for Scene);
LABEL_16:
    sub_23BDF5A94(v46, &qword_27E1C8A70);
    v49 = v71;
    goto LABEL_17;
  }

  v56 = v62;
  sub_23BE0C628(v46 + v45, v62, type metadata accessor for Scene);
  v57 = v48;
  v58 = sub_23BDE9B10(v48, v56);
  sub_23BE0C70C(v56, type metadata accessor for Scene);
  sub_23BDF5A94(v72, &qword_27E1C7C68);
  sub_23BDF5A94(v73, &qword_27E1C7C68);
  sub_23BE0C70C(v57, type metadata accessor for Scene);
  sub_23BDF5A94(v46, &qword_27E1C7C68);
  v49 = v71;
  if (v58)
  {
    goto LABEL_23;
  }

LABEL_17:
  v50 = v70;
  sub_23BE083C0(v70);
  v51 = v69;
  v52 = v67;
  sub_23BE0C690(v69, v67, type metadata accessor for Scene);
  v65(v52, 0, 1, v16);
  swift_beginAccess();
  sub_23BE057C4(v52, v50);
  swift_endAccess();
  sub_23BE091EC(v51, v50);
  sub_23BE09AC8(v50);
  [v49 setNeedsDisplay];
  if (v50 == 1 && (v49[OBJC_IVAR___NTKEsterbrookSceneView_animatingState] & 1) == 0)
  {
    v53 = sub_23BE327B8();
    v54 = sub_23BE32A18();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_23BDE0000, v53, v54, "Scene loaded; displayMode=.live and animatingState=.playing, starting animation", v55, 2u);
      MEMORY[0x23EEBF030](v55, -1, -1);
    }

    sub_23BE0AEE4();
  }
}

id sub_23BE083C0(uint64_t *a1)
{
  v3 = sub_23BDE652C(&qword_27E1C7C68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16[-1] - v4;
  if (qword_27E1C7A58 != -1)
  {
    swift_once();
  }

  v6 = sub_23BE327D8();
  sub_23BDEA278(v6, qword_27E1DBF10);
  v7 = sub_23BE327B8();
  v8 = sub_23BE32A18();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = a1;
    v16[0] = v10;
    *v9 = 136315138;
    sub_23BE0C4EC();
    v11 = sub_23BE32D18();
    v13 = sub_23BE288C4(v11, v12, v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_23BDE0000, v7, v8, "Unloading scene at for mode [%s]", v9, 0xCu);
    sub_23BDE6478(v10);
    MEMORY[0x23EEBF030](v10, -1, -1);
    MEMORY[0x23EEBF030](v9, -1, -1);
  }

  sub_23BE0B4C0();
  sub_23BE08E60(a1);
  swift_beginAccess();
  sub_23BE085F4(a1, v5);
  sub_23BDF5A94(v5, &qword_27E1C7C68);
  swift_endAccess();
  if (a1 == 1)
  {
    v1[OBJC_IVAR___NTKEsterbrookSceneView_didNotifyLiveSceneStartedPlayback] = 0;
  }

  return [v1 setNeedsDisplay];
}

uint64_t sub_23BE085F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_23BE2C8A8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23BE2B49C();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for Scene();
    v18 = *(v11 - 8);
    sub_23BE0C628(v10 + *(v18 + 72) * v7, a2, type metadata accessor for Scene);
    sub_23BE2A6FC(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for Scene();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_23BE08750(char a1, double a2)
{
  v4 = sub_23BE327E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23BE32818();
  v8 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BE0C76C();
  v17 = sub_23BE32A48();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a2;
  if (a1)
  {
    v23 = sub_23BE0C818;
    v24 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v13 = &unk_284E94248;
  }

  else
  {
    v23 = sub_23BE0C914;
    v24 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v13 = &unk_284E941F8;
  }

  v21 = sub_23BE08AD8;
  v22 = v13;
  v14 = _Block_copy(&aBlock);

  sub_23BE327F8();
  aBlock = MEMORY[0x277D84F90];
  sub_23BE0C7D0(&qword_27E1C8A58, MEMORY[0x277D85198]);
  sub_23BDE652C(&qword_27E1C8A60);
  sub_23BE0C8C8(&qword_27E1C8A68, &qword_27E1C8A60);
  sub_23BE32AC8();
  v15 = v17;
  MEMORY[0x23EEBE2B0](0, v10, v7, v14);
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v18);
}

uint64_t sub_23BE08AD8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_23BE08B1C(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + OBJC_IVAR___NTKEsterbrookSceneView_liveProgress) = a1;
    sub_23BE08B88();
  }
}

id sub_23BE08B88()
{
  v1 = *(v0 + OBJC_IVAR___NTKEsterbrookSceneView_tritiumContainerView);
  CLKCompressFraction();
  [v1 setAlpha_];
  v2 = *(v0 + OBJC_IVAR___NTKEsterbrookSceneView_backgroundContainerView);
  CLKCompressFraction();
  v4 = OBJC_IVAR___NTKEsterbrookSceneView_liveProgress;
  [v2 setAlpha_];
  v5 = *(v0 + OBJC_IVAR___NTKEsterbrookSceneView_midgroundContainerView);
  CLKCompressFraction();
  [v5 setAlpha_];
  v7 = *(v0 + OBJC_IVAR___NTKEsterbrookSceneView_foregroundContainerView);
  CLKCompressFraction();
  [v7 setAlpha_];
  v9 = *(v0 + OBJC_IVAR___NTKEsterbrookSceneView_forefrontContainerView);
  CLKCompressFraction();
  [v9 setAlpha_];
  v11 = *(v0 + OBJC_IVAR___NTKEsterbrookSceneView_idealizedContainerView);
  CLKCompressFraction();
  v13 = (1.0 - v12) * (1.0 - *(v0 + v4));

  return [v11 setAlpha_];
}

uint64_t sub_23BE08D20(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___NTKEsterbrookSceneView_spriteViews;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16) && (v8 = sub_23BE2C8A8(a2), (v9 & 1) != 0))
  {
    v14 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v10 = a1;
  MEMORY[0x23EEBE1B0]();
  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23BE32988();
  }

  sub_23BE32998();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v3 + v6);
  *(v3 + v6) = 0x8000000000000000;
  sub_23BE2AA50(v14, a2, isUniquelyReferenced_nonNull_native);
  *(v3 + v6) = v13;
  return swift_endAccess();
}

uint64_t sub_23BE08E60(uint64_t *a1)
{
  v2 = v1;
  if (qword_27E1C7A58 != -1)
  {
    swift_once();
  }

  v4 = sub_23BE327D8();
  sub_23BDEA278(v4, qword_27E1DBF10);
  v5 = sub_23BE327B8();
  v6 = sub_23BE32A18();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26[0] = v8;
    *v7 = 136315138;
    v25[0] = a1;
    sub_23BE0C4EC();
    v9 = sub_23BE32D18();
    v11 = sub_23BE288C4(v9, v10, v26);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_23BDE0000, v5, v6, "Removing sprite views for mode [%s]", v7, 0xCu);
    sub_23BDE6478(v8);
    MEMORY[0x23EEBF030](v8, -1, -1);
    MEMORY[0x23EEBF030](v7, -1, -1);
  }

  v12 = OBJC_IVAR___NTKEsterbrookSceneView_spriteViews;
  result = swift_beginAccess();
  v14 = *(v2 + v12);
  v15 = MEMORY[0x277D84F90];
  if (!*(v14 + 16))
  {
    v17 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  result = sub_23BE2C8A8(a1);
  if ((v16 & 1) == 0)
  {
    v17 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_18;
    }

LABEL_10:
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  v17 = *(*(v14 + 56) + 8 * result);

  if (!(v17 >> 62))
  {
    goto LABEL_10;
  }

LABEL_18:
  result = sub_23BE32BB8();
  v18 = result;
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_11:
  if (v18 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v18; ++i)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x23EEBE370](i, v17);
    }

    else
    {
      v20 = *(v17 + 8 * i + 32);
    }

    v21 = v20;
    [v20 removeFromSuperview];
  }

LABEL_19:

  v22 = sub_23BE05BC8();
  v24 = sub_23BE09128(v25, a1);
  if (*v23)
  {
    *v23 = v15;
  }

  (v24)(v25, 0);
  return (v22)(v26, 0);
}

void (*sub_23BE09128(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_23BE0B948(v4, a2);
  return sub_23BE091A0;
}

void sub_23BE091A0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_23BE091EC(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v65 = type metadata accessor for Sprite();
  v67 = *(v65 - 8);
  v6 = MEMORY[0x28223BE20](v65);
  v71 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v76 = v61 - v8;
  v73 = sub_23BDE652C(&qword_27E1C8A38);
  v75 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v66 = (v61 - v9);
  v10 = sub_23BDE652C(&qword_27E1C8A40);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (v61 - v14);
  v16 = type metadata accessor for SpriteAnimationAttributes();
  v17 = MEMORY[0x28223BE20](v16);
  v70 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v74 = v61 - v19;
  v20 = type metadata accessor for Scene();
  MEMORY[0x28223BE20](v20);
  v22 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E1C7A58 != -1)
  {
LABEL_32:
    swift_once();
  }

  v23 = sub_23BE327D8();
  sub_23BDEA278(v23, qword_27E1DBF10);
  sub_23BE0C690(a1, v22, type metadata accessor for Scene);
  v24 = sub_23BE327B8();
  v25 = sub_23BE32A18();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v72 = v16;
    v27 = v26;
    v69 = swift_slowAlloc();
    v78[0] = v69;
    *v27 = 136315394;
    v28 = &v22[*(v20 + 20)];
    v64 = *v28;
    LODWORD(v68) = v25;
    v29 = v28[1];

    sub_23BE0C70C(v22, type metadata accessor for Scene);
    v30 = sub_23BE288C4(v64, v29, v78);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2080;
    v77 = a2;
    sub_23BE0C4EC();
    v31 = sub_23BE32D18();
    v33 = sub_23BE288C4(v31, v32, v78);

    *(v27 + 14) = v33;
    _os_log_impl(&dword_23BDE0000, v24, v68, "Loading sprite views of scene [%s] for mode [%s]", v27, 0x16u);
    v34 = v69;
    swift_arrayDestroy();
    MEMORY[0x23EEBF030](v34, -1, -1);
    v35 = v27;
    v16 = v72;
    MEMORY[0x23EEBF030](v35, -1, -1);
  }

  else
  {

    sub_23BE0C70C(v22, type metadata accessor for Scene);
  }

  v36 = (a1 + *(v20 + 20));
  v37 = v20;
  v38 = *v36;
  v39 = v36[1];
  v40 = *(v16 + 20);
  v16 = v74;
  sub_23BE0C690(a1 + *(v37 + 36), v74 + v40, type metadata accessor for Timeline);
  *v16 = 0;
  v41 = *(a1 + *(v37 + 24));
  *(v16 + 8) = v38;
  *(v16 + 16) = v39;
  v68 = v41;
  v20 = *(v41 + 16);
  v69 = OBJC_IVAR___NTKEsterbrookSceneView_showSpriteDebugHelpers;
  v64 = OBJC_IVAR___NTKEsterbrookSceneView_tritiumContainerView;
  v62 = OBJC_IVAR___NTKEsterbrookSceneView_forefrontContainerView;
  v61[3] = OBJC_IVAR___NTKEsterbrookSceneView_foregroundContainerView;
  v61[2] = OBJC_IVAR___NTKEsterbrookSceneView_midgroundContainerView;
  v61[1] = OBJC_IVAR___NTKEsterbrookSceneView_backgroundContainerView;
  v63 = OBJC_IVAR___NTKEsterbrookSceneView_idealizedContainerView;
  v72 = (v75 + 56);
  v42 = (v75 + 48);

  a1 = 0;
  v22 = v73;
  v75 = v13;
  while (1)
  {
    if (a1 == v20)
    {
      v43 = 1;
      a1 = v20;
    }

    else
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (a1 >= *(v68 + 16))
      {
        goto LABEL_31;
      }

      v44 = v66;
      v45 = v68 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * a1;
      v46 = *(v22 + 12);
      *v66 = a1;
      sub_23BE0C690(v45, v44 + v46, type metadata accessor for Sprite);
      v47 = v44;
      v13 = v75;
      sub_23BE0C5C0(v47, v75, &qword_27E1C8A38);
      v43 = 0;
      ++a1;
    }

    (*v72)(v13, v43, 1, v22);
    sub_23BE0C5C0(v13, v15, &qword_27E1C8A40);
    if ((*v42)(v15, 1, v22) == 1)
    {
      return sub_23BE0C70C(v74, type metadata accessor for SpriteAnimationAttributes);
    }

    v48 = a2;
    v49 = v3;
    v50 = *v15;
    v51 = v76;
    sub_23BE0C628(v15 + *(v22 + 12), v76, type metadata accessor for Sprite);
    v52 = v71;
    sub_23BE0C690(v51, v71, type metadata accessor for Sprite);
    v16 = v70;
    sub_23BE0C690(v74, v70, type metadata accessor for SpriteAnimationAttributes);
    v53 = objc_allocWithZone(type metadata accessor for SpriteView());
    v54 = sub_23BE231A4(v52, v16);
    v55 = &v54[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debug_labelPositioning];
    *v55 = v50;
    *(v55 + 1) = v20;
    v56 = *&v54[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_debugFrameIndexLabel];
    if (v56)
    {
      v57 = v56;
      [v54 bounds];
      [v54 bounds];
      [v57 setFrame_];
    }

    v3 = v49;
    v54[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_showDebugHelpers] = *(v49 + v69);
    sub_23BE22BB8();
    a2 = v48;
    sub_23BE08D20(v54, v48);
    if (v48 == 2)
    {
      [*(v3 + v64) addSubview_];
      v13 = v75;
      goto LABEL_7;
    }

    v13 = v75;
    if (a2 != 1)
    {
      break;
    }

    if (*(v76 + *(v65 + 24)) > 1u)
    {
      if (*(v76 + *(v65 + 24)) == 2)
      {
        v59 = &v80;
      }

      else
      {
        v59 = &v79;
      }

      goto LABEL_27;
    }

    if (*(v76 + *(v65 + 24)))
    {
      v59 = &v81;
LABEL_27:
      v58 = *(v59 - 32);
      goto LABEL_28;
    }

    v58 = v62;
LABEL_28:
    [*(v3 + v58) addSubview_];
LABEL_7:

    sub_23BE0C70C(v76, type metadata accessor for Sprite);
    v22 = v73;
  }

  if (!a2)
  {
    [*(v3 + v63) addSubview_];
    goto LABEL_7;
  }

  sub_23BDE652C(&qword_27E1C8A48);
  result = sub_23BE32D38();
  __break(1u);
  return result;
}

uint64_t sub_23BE09AC8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23BDE652C(&qword_27E1C7C68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v64 - v5;
  v72 = type metadata accessor for SceneLayoutAttributes(0);
  v7 = MEMORY[0x28223BE20](v72);
  v71 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v64 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v64 - v12;
  sub_23BE0A2F8(a1, (&v64 - v12));
  v14 = OBJC_IVAR___NTKEsterbrookSceneView_spriteViews;
  result = swift_beginAccess();
  v16 = *&v1[v14];
  if (*(v16 + 16) && (result = sub_23BE2C8A8(a1), (v17 & 1) != 0))
  {
    v18 = *(*(v16 + 56) + 8 * result);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v73 = v6;
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_32:

    return sub_23BE0C70C(v13, type metadata accessor for SceneLayoutAttributes);
  }

  result = sub_23BE32BB8();
  v19 = result;
  if (!result)
  {
    goto LABEL_32;
  }

LABEL_7:
  if (v19 >= 1)
  {
    v20 = v18 & 0xC000000000000001;
    v67 = OBJC_IVAR___NTKEsterbrookSceneView_loadedScenes;
    swift_beginAccess();
    v21 = 0;
    *&v22 = 136315906;
    v66 = v22;
    v70 = *&a1;
    v69 = v13;
    v65 = v2;
    v68 = v11;
    v78 = v18;
    v77 = v19;
    v76 = v18 & 0xC000000000000001;
    do
    {
      if (v20)
      {
        v23 = MEMORY[0x23EEBE370](v21, v18);
      }

      else
      {
        v23 = *(v18 + 8 * v21 + 32);
      }

      v24 = v23;
      if (*(v23 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_spriteLayer))
      {
        v79 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_needsInitialLayout;
        if ((*(v23 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_needsInitialLayout) & 1) != 0 || (v25 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_sprite, (*(v23 + *(type metadata accessor for Sprite() + 28) + v25 + 24) & 0x8000000000000000) != 0))
        {
          if (qword_27E1C7A58 != -1)
          {
            swift_once();
          }

          v26 = sub_23BE327D8();
          sub_23BDEA278(v26, qword_27E1DBF10);
          sub_23BE0C690(v13, v11, type metadata accessor for SceneLayoutAttributes);
          v27 = v24;
          v28 = v2;
          v29 = sub_23BE327B8();
          v30 = sub_23BE32A18();

          if (os_log_type_enabled(v29, v30))
          {
            v75 = v30;
            v31 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v80 = v74;
            *v31 = v66;
            v32 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_sprite;
            v33 = &v27[*(type metadata accessor for Sprite() + 20) + v32];
            v34 = *v33;
            v35 = v33[1];

            v36 = sub_23BE288C4(v34, v35, &v80);

            *(v31 + 4) = v36;
            *(v31 + 12) = 2080;
            v37 = *&v2[v67];
            if (*(v37 + 16) && (v38 = sub_23BE2C8A8(a1), (v39 & 1) != 0))
            {
              v40 = v38;
              v41 = *(v37 + 56);
              v42 = type metadata accessor for Scene();
              v43 = *(v42 - 8);
              v44 = v41 + *(v43 + 72) * v40;
              v45 = v73;
              sub_23BE0C690(v44, v73, type metadata accessor for Scene);
              (*(v43 + 56))(v45, 0, 1, v42);
              v2 = v65;
            }

            else
            {
              v42 = type metadata accessor for Scene();
              v45 = v73;
              (*(*(v42 - 8) + 56))(v73, 1, 1, v42);
            }

            type metadata accessor for Scene();
            v46 = 0.0;
            v47 = 0.0;
            if (!(*(*(v42 - 8) + 48))(v45, 1, v42))
            {
              v48 = (v45 + *(v42 + 20));
              v46 = *v48;
              v47 = v48[1];
            }

            sub_23BDF5A94(v45, &qword_27E1C7C68);
            v81.a = v46;
            v81.b = v47;
            sub_23BDE652C(&qword_27E1C8A18);
            v49 = sub_23BE328E8();
            v51 = sub_23BE288C4(v49, v50, &v80);

            *(v31 + 14) = v51;
            *(v31 + 22) = 2080;
            a1 = *&v70;
            v81.a = v70;
            sub_23BE0C4EC();
            v52 = sub_23BE32D18();
            v54 = sub_23BE288C4(v52, v53, &v80);

            *(v31 + 24) = v54;
            *(v31 + 32) = 2080;
            v55 = v68;
            sub_23BE0C690(v68, v71, type metadata accessor for SceneLayoutAttributes);
            v56 = sub_23BE328E8();
            v58 = v57;
            sub_23BE0C70C(v55, type metadata accessor for SceneLayoutAttributes);
            v59 = sub_23BE288C4(v56, v58, &v80);
            v11 = v55;

            *(v31 + 34) = v59;
            _os_log_impl(&dword_23BDE0000, v29, v75, "Laying out spriteView for [%s] of scene [%s] for mode [%s] with [%s].", v31, 0x2Au);
            v60 = v74;
            swift_arrayDestroy();
            MEMORY[0x23EEBF030](v60, -1, -1);
            MEMORY[0x23EEBF030](v31, -1, -1);

            v13 = v69;
          }

          else
          {

            sub_23BE0C70C(v11, type metadata accessor for SceneLayoutAttributes);
          }

          v61 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_sprite;
          [v27 bounds];
          sub_23BE0BC5C(&v27[v61], v13, v82, v62, v63, 0.3, 0.77);
          [v27 setCenter_];
          v18 = v78;
          v20 = v76;
          if ((v86 & 1) == 0 && v85 != 0.0)
          {
            CGAffineTransformMakeRotation(&v81, v85);
            [v27 setTransform_];
          }

          *(v24 + v79) = 0;
          v19 = v77;
        }
      }

      ++v21;
    }

    while (v19 != v21);
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

void sub_23BE0A2F8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_23BE32698();
  v59 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v58 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v55 = &v52 - v9;
  MEMORY[0x28223BE20](v8);
  v56 = &v52 - v10;
  v11 = type metadata accessor for TimeRule();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23BDE652C(&qword_27E1C7C68);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v52 - v16;
  v18 = sub_23BDE652C(&qword_27E1C8A28);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v52 - v19;
  v21 = *(v12 + 56);
  v60 = v20;
  v54 = v21;
  v21();
  v22 = OBJC_IVAR___NTKEsterbrookSceneView_loadedScenes;
  swift_beginAccess();
  v57 = v2;
  v23 = *(v2 + v22);
  if (*(v23 + 16) && (v24 = sub_23BE2C8A8(a1), (v25 & 1) != 0))
  {
    v26 = v24;
    v52 = *(v23 + 56);
    v27 = type metadata accessor for Scene();
    v28 = *(v27 - 8);
    v53 = v5;
    v29 = v28;
    sub_23BE0C690(v52 + *(v28 + 72) * v26, v17, type metadata accessor for Scene);
    (*(v29 + 56))(v17, 0, 1, v27);
    v5 = v53;
  }

  else
  {
    v27 = type metadata accessor for Scene();
    (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  }

  type metadata accessor for Scene();
  if ((*(*(v27 - 8) + 48))(v17, 1, v27))
  {
    sub_23BDF5A94(v17, &qword_27E1C7C68);
  }

  else
  {
    v30 = *&v17[*(v27 + 28)];

    sub_23BDF5A94(v17, &qword_27E1C7C68);
    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = 0;
      v33 = (v14 + 16);
      while (v32 < *(v30 + 16))
      {
        sub_23BE0C690(v30 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v32, v14, type metadata accessor for TimeRule);
        if (*(v33 + *(v11 + 24)) <= 0x1Fu)
        {
          v33 = v60;
          sub_23BDF5A94(v60, &qword_27E1C8A28);

          sub_23BE0C628(v14, v33, type metadata accessor for TimeRule);
          (v54)(v33, 0, 1, v11);
          goto LABEL_14;
        }

        ++v32;
        sub_23BE0C70C(v14, type metadata accessor for TimeRule);
        if (v31 == v32)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_20;
    }

LABEL_12:
  }

  v33 = v60;
LABEL_14:
  if (qword_27E1C7A78 != -1)
  {
LABEL_20:
    swift_once();
  }

  v34 = [objc_opt_self() sharedManager];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 faceDisplayTime];

    if (v36)
    {
      v37 = v55;
      sub_23BE32688();

      v38 = v59;
      v39 = v56;
      (*(v59 + 32))(v56, v37, v5);
      v40 = v57;
      v41 = sub_23BE0A968(v57);
      [v40 bounds];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v50 = v58;
      (*(v38 + 16))(v58, v39, v5);
      v51 = type metadata accessor for SceneLayoutAttributes(0);
      sub_23BE319C0(v50, (a2 + *(v51 + 24)));
      (*(v38 + 8))(v39, v5);
      *a2 = v43;
      a2[1] = v45;
      a2[2] = v47;
      a2[3] = v49;
      a2[4] = v41;
      sub_23BE0C5C0(v33, a2 + *(v51 + 28), &qword_27E1C8A28);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_23BE0A968(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___NTKEsterbrookSceneView_handsView);
  if (!v1)
  {
    return v1;
  }

  sub_23BDE652C(&qword_27E1C8A30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BE38690;
  *(inited + 32) = 0;
  v3 = v1;
  result = [v3 hourHandView];
  if (result)
  {
    v5 = result;
    sub_23BE318B0();
    v7 = v6;
    v9 = v8;

    *(inited + 40) = v7;
    *(inited + 48) = v9;
    *(inited + 56) = 1;
    result = [v3 minuteHandView];
    if (result)
    {
      v10 = result;
      sub_23BE318B0();
      v12 = v11;
      v14 = v13;

      *(inited + 64) = v12;
      *(inited + 72) = v14;
      v1 = sub_23BE2BF00(inited);
      swift_setDeallocating();

      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23BE0AA74(uint64_t a1, uint64_t a2)
{
  v5 = sub_23BE326D8();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v10 = OBJC_IVAR___NTKEsterbrookSceneView_didNotifyLiveSceneStartedPlayback;
    if ((*(v2 + OBJC_IVAR___NTKEsterbrookSceneView_didNotifyLiveSceneStartedPlayback) & 1) == 0)
    {
      v20 = v2;
      if (qword_27E1C7A58 != -1)
      {
        swift_once();
      }

      v11 = sub_23BE327D8();
      sub_23BDEA278(v11, qword_27E1DBF10);
      (*(v6 + 16))(v9, a2, v5);
      v12 = sub_23BE327B8();
      v13 = sub_23BE32A18();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v21 = v15;
        *v14 = 136315138;
        sub_23BE0C7D0(&qword_27E1C8A20, MEMORY[0x277CC95F0]);
        v16 = sub_23BE32D18();
        v18 = v17;
        (*(v6 + 8))(v9, v5);
        v19 = sub_23BE288C4(v16, v18, &v21);

        *(v14 + 4) = v19;
        _os_log_impl(&dword_23BDE0000, v12, v13, "Notifying started playback for scene:[%s]", v14, 0xCu);
        sub_23BDE6478(v15);
        MEMORY[0x23EEBF030](v15, -1, -1);
        MEMORY[0x23EEBF030](v14, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v9, v5);
      }

      *(v20 + v10) = 1;
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_23BE0AD24(char a1)
{
  if (*(v1 + OBJC_IVAR___NTKEsterbrookSceneView_animatingState) == (a1 & 1))
  {
    if (qword_27E1C7A58 != -1)
    {
      swift_once();
    }

    v3 = sub_23BE327D8();
    sub_23BDEA278(v3, qword_27E1DBF10);
    oslog = sub_23BE327B8();
    v4 = sub_23BE32A18();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      if (a1)
      {
        v7 = 0x646573756170;
      }

      else
      {
        v7 = 0x676E6979616C70;
      }

      if (a1)
      {
        v8 = 0xE600000000000000;
      }

      else
      {
        v8 = 0xE700000000000000;
      }

      v9 = sub_23BE288C4(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_23BDE0000, oslog, v4, "AnimatingState is already [%s]; don't do anything.", v5, 0xCu);
      sub_23BDE6478(v6);
      MEMORY[0x23EEBF030](v6, -1, -1);
      MEMORY[0x23EEBF030](v5, -1, -1);
    }
  }

  else
  {
    *(v1 + OBJC_IVAR___NTKEsterbrookSceneView_animatingState) = a1 & 1;

    sub_23BE05A18();
  }
}

void sub_23BE0AEE4()
{
  v1 = v0;
  v2 = type metadata accessor for Scene();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v44 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  v12 = OBJC_IVAR___NTKEsterbrookSceneView_loadedScenes;
  swift_beginAccess();
  v13 = *(v1 + v12);
  if (*(v13 + 16))
  {
    v14 = sub_23BE2C8A8(1);
    if (v15)
    {
      sub_23BE0C690(*(v13 + 56) + *(v3 + 72) * v14, v9, type metadata accessor for Scene);
      sub_23BE0C628(v9, v11, type metadata accessor for Scene);
      v16 = OBJC_IVAR___NTKEsterbrookSceneView_spriteViews;
      swift_beginAccess();
      if (*(*(v1 + v16) + 16) && (sub_23BE2C8A8(1), (v17 & 1) != 0))
      {
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
      }

      if (v18 >> 62)
      {
        v23 = sub_23BE32BB8();
      }

      else
      {
        v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v23)
      {
        if (qword_27E1C7A58 == -1)
        {
LABEL_20:
          v33 = sub_23BE327D8();
          sub_23BDEA278(v33, qword_27E1DBF10);
          v34 = sub_23BE327B8();
          v35 = sub_23BE32A18();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&dword_23BDE0000, v34, v35, "Tried to start animation but no spriteViews available for scene.", v36, 2u);
            MEMORY[0x23EEBF030](v36, -1, -1);
          }

          goto LABEL_39;
        }

LABEL_41:
        swift_once();
        goto LABEL_20;
      }

      if (qword_27E1C7A58 != -1)
      {
        swift_once();
      }

      v24 = sub_23BE327D8();
      sub_23BDEA278(v24, qword_27E1DBF10);
      sub_23BE0C690(v11, v6, type metadata accessor for Scene);
      v25 = sub_23BE327B8();
      v26 = sub_23BE32A18();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v45 = v28;
        *v27 = 136315138;
        v29 = &v6[*(v2 + 20)];
        v30 = *v29;
        v31 = v29[1];

        sub_23BE0C70C(v6, type metadata accessor for Scene);
        v32 = sub_23BE288C4(v30, v31, &v45);

        *(v27 + 4) = v32;
        _os_log_impl(&dword_23BDE0000, v25, v26, "Starting live animation for scene [%s].", v27, 0xCu);
        sub_23BDE6478(v28);
        MEMORY[0x23EEBF030](v28, -1, -1);
        MEMORY[0x23EEBF030](v27, -1, -1);
      }

      else
      {

        sub_23BE0C70C(v6, type metadata accessor for Scene);
      }

      sub_23BE09AC8(1);
      v37 = *(v1 + v16);
      if (*(v37 + 16) && (v38 = sub_23BE2C8A8(1), (v39 & 1) != 0))
      {
        v40 = *(*(v37 + 56) + 8 * v38);
      }

      else
      {
        v40 = MEMORY[0x277D84F90];
      }

      if (v40 >> 62)
      {
        v41 = sub_23BE32BB8();
        if (v41)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v41)
        {
LABEL_30:
          if (v41 >= 1)
          {
            for (i = 0; i != v41; ++i)
            {
              if ((v40 & 0xC000000000000001) != 0)
              {
                v43 = MEMORY[0x23EEBE370](i, v40);
              }

              else
              {
                v43 = *(v40 + 8 * i + 32);
              }

              v43[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_state] = 0;
            }

            goto LABEL_38;
          }

          __break(1u);
          goto LABEL_41;
        }
      }

LABEL_38:

      sub_23BE0AA74(1, v11);
LABEL_39:
      sub_23BE0C70C(v11, type metadata accessor for Scene);
      return;
    }
  }

  if (qword_27E1C7A58 != -1)
  {
    swift_once();
  }

  v19 = sub_23BE327D8();
  sub_23BDEA278(v19, qword_27E1DBF10);
  v20 = sub_23BE327B8();
  v21 = sub_23BE32A18();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_23BDE0000, v20, v21, "Tried to start animation but no scene loaded.", v22, 2u);
    MEMORY[0x23EEBF030](v22, -1, -1);
  }
}

uint64_t sub_23BE0B4C0()
{
  v1 = sub_23BDE652C(&qword_27E1C7C68);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v32 - v2 + 16;
  if (qword_27E1C7A58 != -1)
  {
    swift_once();
  }

  v4 = sub_23BE327D8();
  sub_23BDEA278(v4, qword_27E1DBF10);
  v5 = v0;
  v6 = sub_23BE327B8();
  v7 = sub_23BE32A18();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32[0] = v9;
    *v8 = 136315138;
    v10 = OBJC_IVAR___NTKEsterbrookSceneView_loadedScenes;
    swift_beginAccess();
    v11 = *&v5[v10];
    if (*(v11 + 16) && (v12 = sub_23BE2C8A8(1), (v13 & 1) != 0))
    {
      v14 = v12;
      v31 = *(v11 + 56);
      v15 = type metadata accessor for Scene();
      v16 = *(v15 - 8);
      sub_23BE0C690(v31 + *(v16 + 72) * v14, v3, type metadata accessor for Scene);
      (*(v16 + 56))(v3, 0, 1, v15);
    }

    else
    {
      v15 = type metadata accessor for Scene();
      (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
    }

    type metadata accessor for Scene();
    v17 = 0;
    v18 = 0;
    if (!(*(*(v15 - 8) + 48))(v3, 1, v15))
    {
      v19 = &v3[*(v15 + 20)];
      v17 = *v19;
      v18 = v19[1];
    }

    sub_23BDF5A94(v3, &qword_27E1C7C68);
    v32[1] = v17;
    v32[2] = v18;
    sub_23BDE652C(&qword_27E1C8A18);
    v20 = sub_23BE328E8();
    v22 = sub_23BE288C4(v20, v21, v32);

    *(v8 + 4) = v22;
    _os_log_impl(&dword_23BDE0000, v6, v7, "Pausing live animation for scene [%s].", v8, 0xCu);
    sub_23BDE6478(v9);
    MEMORY[0x23EEBF030](v9, -1, -1);
    MEMORY[0x23EEBF030](v8, -1, -1);
  }

  v23 = OBJC_IVAR___NTKEsterbrookSceneView_spriteViews;
  result = swift_beginAccess();
  v25 = *&v5[v23];
  if (*(v25 + 16) && (result = sub_23BE2C8A8(1), (v26 & 1) != 0))
  {
    v27 = *(*(v25 + 56) + 8 * result);
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  if (!(v27 >> 62))
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_17;
    }
  }

  result = sub_23BE32BB8();
  v28 = result;
  if (!result)
  {
  }

LABEL_17:
  if (v28 >= 1)
  {
    for (i = 0; i != v28; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x23EEBE370](i, v27);
      }

      else
      {
        v30 = *(v27 + 8 * i + 32);
      }

      v30[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion10SpriteView_state] = 1;
    }
  }

  __break(1u);
  return result;
}

void (*sub_23BE0B948(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_23BE0BC28(v5);
  v5[9] = sub_23BE0BA4C(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_23BE0B9EC;
}

void sub_23BE0B9EC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_23BE0BA4C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_23BE2C8A8(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_23BE2B340();
      v11 = v19;
      goto LABEL_11;
    }

    sub_23BE298CC(v16, a3 & 1);
    v11 = sub_23BE2C8A8(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_23BE32D68();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_23BE0BB94;
}

void sub_23BE0BB94(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_23BE2B03C(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    sub_23BE2A568(v1[3], *v1[2]);
  }

  free(v1);
}

uint64_t (*sub_23BE0BC28(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_23BE0BC50;
}

uint64_t sub_23BE0BC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v14 = sub_23BDE652C(&qword_27E1C8A28);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v116 - v15;
  v17 = type metadata accessor for Sprite();
  v122 = v17;
  v123 = &off_284E95A40;
  v18 = sub_23BE0C540(v121);
  sub_23BE0C690(a1, v18, type metadata accessor for Sprite);
  v19 = (sub_23BDE9BF0(v121, v122) + *(v17 + 28));
  v20 = *v19;
  v21 = v19[1];
  v22 = *(v19 + 3);
  v23 = v22 >> 62;
  if ((v22 >> 62) <= 1)
  {
    if (v23)
    {
      sub_23BE0E6BC(*v19, a2, a6, a7);
      v45 = v44;
      v47 = v46;
      v118 = v49;
      v119 = v48;
      v50 = a4 * 0.5;
      v51 = sub_23BE0C5A4(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), a5, a4 * 0.5);
      v53 = v52;
      v55 = v54;
      v57 = v56;
      if (BYTE1(v20) <= 1u)
      {
        v77 = v45;
        v78 = v47;
        if (BYTE1(v20))
        {
          v103 = v118;
          v102 = v119;
          MidX = CGRectGetMidX(*&v77);
          v126.origin.x = v45;
          v126.origin.y = v47;
          v126.size.height = v118;
          v126.size.width = v119;
          MinY = CGRectGetMaxY(v126) + a5;
        }

        else
        {
          v80 = v118;
          v79 = v119;
          v81 = v118;
          MidX = CGRectGetMidX(*&v77);
          v124.origin.x = v45;
          v124.origin.y = v47;
          v124.size.width = v119;
          v124.size.height = v80;
          MinY = CGRectGetMinY(v124);
        }
      }

      else
      {
        v117 = a5 * 0.5;
        v58 = v45;
        v59 = v47;
        if (BYTE1(v20) == 2)
        {
          v61 = v118;
          v100 = v119;
          v101 = v118;
          MidX = CGRectGetMinX(*&v58) - v50;
        }

        else
        {
          v61 = v118;
          v60 = v119;
          v62 = v118;
          if (BYTE1(v20) == 3)
          {
            MidX = v50 + CGRectGetMaxX(*&v58);
          }

          else
          {
            MidX = CGRectGetMidX(*&v58);
          }
        }

        v125.origin.x = v45;
        v125.origin.y = v47;
        v125.size.width = v119;
        v125.size.height = v61;
        MinY = v117 + CGRectGetMidY(v125);
      }

      v127.origin.x = v51;
      v127.origin.y = v53;
      v127.size.width = v55;
      v127.size.height = v57;
      MinX = CGRectGetMinX(v127);
      v128.origin.x = v51;
      v128.origin.y = v53;
      v128.size.width = v55;
      v128.size.height = v57;
      MaxX = CGRectGetMaxX(v128);
      if (MaxX >= MidX)
      {
        MaxX = MidX;
      }

      if (MinX > MaxX)
      {
        v24 = MinX;
      }

      else
      {
        v24 = MaxX;
      }

      v129.origin.x = v51;
      v129.origin.y = v53;
      v129.size.width = v55;
      v129.size.height = v57;
      v106 = CGRectGetMinY(v129);
      v130.origin.x = v51;
      v130.origin.y = v53;
      v130.size.width = v55;
      v130.size.height = v57;
      MaxY = CGRectGetMaxY(v130);
      if (MaxY >= MinY)
      {
        MaxY = MinY;
      }

      if (v106 > MaxY)
      {
        v25 = v106;
      }

      else
      {
        v25 = MaxY;
      }
    }

    else
    {
      v24 = *v19;
      v25 = v19[1];
    }

LABEL_63:
    v90 = 1;
    v32 = 0.0;
    goto LABEL_64;
  }

  v26 = v19[2];
  if (v23 == 2)
  {
    MEMORY[0x23EEBE810](*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24));
    v29 = *(a2 + 32);
    if (v29)
    {
      v30 = v27;
      v31 = v28;
      v32 = 0.0;
      v33 = 0.0;
      v34 = 0.0;
      if (*(v29 + 16))
      {
        v35 = sub_23BE29050(LOBYTE(v20) & 1);
        if (v36)
        {
          v37 = (*(v29 + 56) + 16 * v35);
          v33 = *v37;
          v34 = v37[1];
        }
      }

      v38 = type metadata accessor for SceneLayoutAttributes(0);
      v39 = *(a2 + *(v38 + 24));
      if (*(v39 + 16))
      {
        v40 = sub_23BE29050(LOBYTE(v20) & 1);
        if (v41)
        {
          v32 = *(*(v39 + 56) + 8 * v40);
        }
      }

      if (v22)
      {
        v42 = dbl_23BE3B230[*&v21];
        v43 = 0.5;
      }

      else
      {
        v43 = v21;
        v42 = v26;
      }

      v91 = v33 * v42;
      v92 = __sincos_stret(1.57079633 - v32);
      v93 = v30 + v92.__cosval * v91;
      v94 = v31 - v92.__sinval * v91;
      v95 = 0.0;
      if (BYTE2(v22) == 2)
      {
        goto LABEL_78;
      }

      if (BYTE2(v22) != 3)
      {
        if (BYTE2(v22) != 4)
        {
          v109 = sub_23BE168C8(v22 >> 8, v32);
          if ((v109 == 2) | v109 & 1)
          {
            v110 = a4 * 0.5 + v34 * v43 - v34 * 0.5;
          }

          else
          {
            v110 = -(a4 * 0.5 + v34 * v43 - v34 * 0.5);
          }

          v111 = __sincos_stret(3.14159265 - v32);
          v112 = v111.__cosval * v110;
          v95 = -(v111.__sinval * v110);
          if ((((v22 >> 8) >> 8) & 1) != (v109 & 1) && v109 != 2)
          {
            v32 = v32 + 3.14159265;
          }

          goto LABEL_80;
        }

        sub_23BE0C838(a2 + *(v38 + 28), v16, &qword_27E1C8A28);
        v96 = type metadata accessor for TimeRule();
        if ((*(*(v96 - 8) + 48))(v16, 1, v96) == 1)
        {
          sub_23BDF5A94(v16, &qword_27E1C8A28);
LABEL_78:
          v32 = 0.0;
          goto LABEL_79;
        }

        v114 = &v16[*(v96 + 24)];
        if (v114[16] >= 0x20u)
        {
          sub_23BE0C70C(v16, type metadata accessor for TimeRule);
          goto LABEL_78;
        }

        v115 = *v114 * -60.0 / 3600.0 * 6.28318531;
        sub_23BE0C70C(v16, type metadata accessor for TimeRule);
        v32 = v32 + v115;
      }

LABEL_79:
      v112 = 0.0;
LABEL_80:
      v90 = 0;
      v24 = v93 + v112;
      v25 = v94 + v95;
      goto LABEL_65;
    }

    if (qword_27E1C7A58 != -1)
    {
      swift_once();
    }

    v83 = sub_23BE327D8();
    sub_23BDEA278(v83, qword_27E1DBF10);
    v84 = sub_23BE327B8();
    v85 = sub_23BE32A08();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v120 = v87;
      *v86 = 136315138;
      *(v86 + 4) = sub_23BE288C4(0xD00000000000001ELL, 0x800000023BE35070, &v120);
      v88 = "%s: placement of .attached requires valid handAttributes";
LABEL_37:
      _os_log_impl(&dword_23BDE0000, v84, v85, v88, v86, 0xCu);
      sub_23BDE6478(v87);
      MEMORY[0x23EEBF030](v87, -1, -1);
      MEMORY[0x23EEBF030](v86, -1, -1);
    }
  }

  else
  {
    v64 = *(v19 + 4);
    MEMORY[0x23EEBE810](*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24));
    v67 = *(a2 + 32);
    if (v67)
    {
      v68 = v65;
      v25 = v66;
      v69 = 0.0;
      v70 = 0.0;
      if (*(v67 + 16))
      {
        v71 = sub_23BE29050(LOBYTE(v20) & 1);
        if (v72)
        {
          v70 = *(*(v67 + 56) + 16 * v71);
        }
      }

      v73 = *(a2 + *(type metadata accessor for SceneLayoutAttributes(0) + 24));
      if (*(v73 + 16))
      {
        v74 = sub_23BE29050(LOBYTE(v20) & 1);
        if (v75)
        {
          v69 = *(*(v73 + 56) + 8 * v74);
        }
      }

      if (v22)
      {
        v76 = dbl_23BE3B230[*&v21];
      }

      else
      {
        v76 = v26;
      }

      v97 = v70 * v76;
      v98 = v68 + cos(1.57079633 - v69) * v97;
      v99 = v64 & ~(v64 >> 63);
      if (v99 >= 60)
      {
        v99 = 60;
      }

      v24 = v68 + v98 - (v68 + cos((60 * v99) / -3600.0 * 6.28318531 + 1.57079633) * v97);
      goto LABEL_63;
    }

    if (qword_27E1C7A58 != -1)
    {
      swift_once();
    }

    v89 = sub_23BE327D8();
    sub_23BDEA278(v89, qword_27E1DBF10);
    v84 = sub_23BE327B8();
    v85 = sub_23BE32A08();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v120 = v87;
      *v86 = 136315138;
      *(v86 + 4) = sub_23BE288C4(0xD00000000000001ELL, 0x800000023BE35070, &v120);
      v88 = "%s: placement of .translated requires valid handAttributes";
      goto LABEL_37;
    }
  }

  v90 = 1;
  v32 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
LABEL_64:
  v93 = 0.0;
  v94 = 0.0;
LABEL_65:
  result = sub_23BDE6478(v121);
  *a3 = v93;
  *(a3 + 8) = v94;
  *(a3 + 16) = 0;
  *(a3 + 24) = v24;
  *(a3 + 32) = v25;
  *(a3 + 40) = v32;
  *(a3 + 48) = v90;
  return result;
}

unint64_t sub_23BE0C4EC()
{
  result = qword_27E1C8BC0;
  if (!qword_27E1C8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C8BC0);
  }

  return result;
}

uint64_t *sub_23BE0C540(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23BE0C5C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_23BDE652C(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BE0C628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BE0C690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BE0C70C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23BE0C76C()
{
  result = qword_27E1C8A50;
  if (!qword_27E1C8A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1C8A50);
  }

  return result;
}

uint64_t sub_23BE0C7B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23BE0C7D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BE0C838(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_23BDE652C(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BE0C8C8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_23BDE9D3C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BE0C91C()
{
  v239 = sub_23BE326D8();
  v223 = *(v239 - 8);
  v0 = MEMORY[0x28223BE20](v239);
  v212 = &v200 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = MEMORY[0x28223BE20](v0);
  v213 = &v200 - v3;
  MEMORY[0x28223BE20](v2);
  v240 = &v200 - v4;
  v5 = type metadata accessor for SceneInfo();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v232 = &v200 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v200 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v226 = &v200 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v221 = &v200 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v220 = &v200 - v17;
  MEMORY[0x28223BE20](v16);
  v243 = &v200 - v18;
  v19 = sub_23BDE652C(&qword_27E1C7C68);
  MEMORY[0x28223BE20](v19 - 8);
  v231 = &v200 - v20;
  v21 = type metadata accessor for Scene();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v216 = &v200 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v200 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v202 = &v200 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v207 = &v200 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v208 = &v200 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v237 = &v200 - v35;
  MEMORY[0x28223BE20](v34);
  v234 = &v200 - v36;
  if (qword_27E1C7A48 != -1)
  {
    goto LABEL_114;
  }

LABEL_2:
  v37 = sub_23BE327D8();
  v222 = sub_23BDEA278(v37, qword_27E1DBEE0);
  v38 = sub_23BE327B8();
  v39 = sub_23BE32A18();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_23BDE0000, v38, v39, "Scene store is initializing.", v40, 2u);
    MEMORY[0x23EEBF030](v40, -1, -1);
  }

  v41 = [objc_allocWithZone(type metadata accessor for SceneLoader()) init];
  v42 = sub_23BDF31AC();
  v200 = v41;
  v43 = sub_23BDF4BC8(v42);

  v45 = v43[2];
  v233 = v22;
  v230 = v45;
  if (v45)
  {
    v204 = v27;
    v203 = v11;
    v46 = 0;
    v229 = v43 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v228 = (v22 + 56);
    v236 = (v223 + 16);
    v227 = (v223 + 8);
    *&v44 = 136315138;
    v214 = v44;
    v217 = MEMORY[0x277D84F98];
    v211 = MEMORY[0x277D84F98];
    v22 = MEMORY[0x277D84F98];
    v210 = MEMORY[0x277D84F98];
    v215 = MEMORY[0x277D84F98];
    v224 = v5;
    v47 = v221;
    v11 = v220;
    v235 = v21;
    v27 = v234;
    v218 = v43;
    while (1)
    {
      if (v46 >= v43[2])
      {
        goto LABEL_111;
      }

      v48 = *(v233 + 72);
      v238 = v46;
      v241 = v48;
      sub_23BE0E5E0(&v229[v48 * v46], v27, type metadata accessor for Scene);
      if (*(v22 + 16))
      {
        v49 = sub_23BE290BC(v27);
        if (v50)
        {
          v51 = v231;
          sub_23BE0E5E0(*(v22 + 56) + v49 * v241, v231, type metadata accessor for Scene);
          (*v228)(v51, 0, 1, v21);
          sub_23BDE64C4(v51);
          v52 = v27;
          v53 = v27;
          v54 = v216;
          sub_23BE0E5E0(v52, v216, type metadata accessor for Scene);
          v55 = sub_23BE327B8();
          v56 = sub_23BE32A08();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v219 = v22;
            v59 = v58;
            *v57 = v214;
            v244 = v58;
            v245 = 91;
            v246 = 0xE100000000000000;
            v60 = sub_23BE326A8();
            MEMORY[0x23EEBE160](v60);

            MEMORY[0x23EEBE160](8285, 0xE200000000000000);
            MEMORY[0x23EEBE160](*(v54 + *(v235 + 20)), *(v54 + *(v235 + 20) + 8));
            MEMORY[0x23EEBE160](8736, 0xE200000000000000);
            MEMORY[0x23EEBE160](*(v54 + *(v235 + 40)), *(v54 + *(v235 + 40) + 8));
            MEMORY[0x23EEBE160](34, 0xE100000000000000);
            v61 = v245;
            v62 = v246;
            sub_23BE0E578(v54, type metadata accessor for Scene);
            v63 = sub_23BE288C4(v61, v62, &v244);
            v21 = v235;

            *(v57 + 4) = v63;
            _os_log_impl(&dword_23BDE0000, v55, v56, "  NOT LOADED: %s (duplicate UUID detected)", v57, 0xCu);
            sub_23BDE6478(v59);
            v64 = v59;
            v22 = v219;
            MEMORY[0x23EEBF030](v64, -1, -1);
            MEMORY[0x23EEBF030](v57, -1, -1);

            v65 = v53;
            v5 = v224;
LABEL_86:
            sub_23BE0E578(v65, type metadata accessor for Scene);
            v47 = v221;
            v11 = v220;
            v27 = v53;
            v43 = v218;
            goto LABEL_7;
          }

LABEL_85:

          sub_23BE0E578(v54, type metadata accessor for Scene);
          v65 = v53;
          goto LABEL_86;
        }
      }

      v66 = v231;
      (*v228)(v231, 1, 1, v21);
      sub_23BDE64C4(v66);
      v21 = *(v27 + *(v21 + 32));
      swift_storeEnumTagMultiPayload();
      v67 = 0;
      v68 = *(v21 + 16);
      do
      {
        if (v68 == v67)
        {
          sub_23BE0E578(v243, type metadata accessor for SceneInfo);
          swift_storeEnumTagMultiPayload();
          v72 = 0;
          v73 = *(v21 + 16);
          while (v73 != v72)
          {
            v74 = v72 + 1;
            v75 = _s32NTKEsterbrookFaceBundleCompanion9SceneInfoO21__derived_enum_equalsySbAC_ACtFZ_0(v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v72, v11);
            v72 = v74;
            if (v75)
            {
              v71 = v11;
              goto LABEL_6;
            }
          }

          sub_23BE0E578(v11, type metadata accessor for SceneInfo);
          swift_storeEnumTagMultiPayload();
          v76 = 0;
          v77 = *(v21 + 16);
          while (v77 != v76)
          {
            v78 = v76 + 1;
            v79 = _s32NTKEsterbrookFaceBundleCompanion9SceneInfoO21__derived_enum_equalsySbAC_ACtFZ_0(v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v76, v47);
            v76 = v78;
            if (v79)
            {
              v71 = v47;
              goto LABEL_6;
            }
          }

          sub_23BE0E578(v47, type metadata accessor for SceneInfo);
          v242 = *(v21 + 16);
          if (!v242)
          {
            v155 = v217;
            v154 = v215;
LABEL_81:
            v156 = v202;
            sub_23BE0E5E0(v27, v202, type metadata accessor for Scene);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v245 = v22;
            sub_23BE2ACE8(v156, v27, isUniquelyReferenced_nonNull_native);
            v22 = v245;
LABEL_82:
            v215 = v154;
            v217 = v155;
            v21 = v235;
LABEL_83:
            v158 = v27;
            v53 = v27;
            v54 = v204;
            sub_23BE0E5E0(v158, v204, type metadata accessor for Scene);
            v55 = sub_23BE327B8();
            v159 = sub_23BE32A18();
            if (os_log_type_enabled(v55, v159))
            {
              v160 = swift_slowAlloc();
              v241 = v160;
              v161 = swift_slowAlloc();
              v242 = v161;
              *v160 = v214;
              v244 = v161;
              v245 = 91;
              v246 = 0xE100000000000000;
              v162 = sub_23BE326A8();
              MEMORY[0x23EEBE160](v162);

              MEMORY[0x23EEBE160](8285, 0xE200000000000000);
              MEMORY[0x23EEBE160](*(v54 + *(v21 + 20)), *(v54 + *(v21 + 20) + 8));
              MEMORY[0x23EEBE160](8736, 0xE200000000000000);
              MEMORY[0x23EEBE160](*(v54 + *(v21 + 40)), *(v54 + *(v21 + 40) + 8));
              MEMORY[0x23EEBE160](34, 0xE100000000000000);
              v163 = v245;
              v164 = v246;
              sub_23BE0E578(v54, type metadata accessor for Scene);
              v165 = sub_23BE288C4(v163, v164, &v244);
              v21 = v235;

              v166 = v241;
              *(v241 + 1) = v165;
              v167 = v166;
              _os_log_impl(&dword_23BDE0000, v55, v159, "  Loaded: %s", v166, 0xCu);
              v168 = v242;
              sub_23BDE6478(v242);
              MEMORY[0x23EEBF030](v168, -1, -1);
              MEMORY[0x23EEBF030](v167, -1, -1);

              v65 = v53;
              goto LABEL_86;
            }

            goto LABEL_85;
          }

          v219 = v22;
          v27 = 0;
          v209 = ((*(v6 + 80) + 32) & ~*(v6 + 80));
          v22 = v209 + v21;
          v80 = v232;
          v81 = v226;
          v82 = v211;
          while (2)
          {
            if (v27 >= *(v21 + 16))
            {
              __break(1u);
LABEL_109:
              __break(1u);
LABEL_110:
              __break(1u);
LABEL_111:
              __break(1u);
LABEL_112:
              __break(1u);
LABEL_113:
              __break(1u);
LABEL_114:
              swift_once();
              goto LABEL_2;
            }

            v11 = *(v6 + 72);
            sub_23BE0E5E0(v22 + v11 * v27, v81, type metadata accessor for SceneInfo);
            if (swift_getEnumCaseMultiPayload() == 8)
            {
              v83 = *v236;
              v84 = v240;
              v85 = v234;
              (*v236)(v240, v234, v239);
              sub_23BE0E5E0(v85, v237, type metadata accessor for Scene);
              v86 = v82;
              v87 = swift_isUniquelyReferenced_nonNull_native();
              v245 = v86;
              v88 = sub_23BE290BC(v84);
              v90 = *(v86 + 16);
              v91 = (v89 & 1) == 0;
              v92 = __OFADD__(v90, v91);
              v93 = v90 + v91;
              if (v92)
              {
                goto LABEL_112;
              }

              v94 = v89;
              if (*(v86 + 24) >= v93)
              {
                if (v87)
                {
                  goto LABEL_37;
                }

                v104 = v88;
                sub_23BE2B6BC();
                v88 = v104;
                v82 = v245;
                if (v94)
                {
                  goto LABEL_27;
                }

LABEL_38:
                v96 = v6;
                v6 = v11;
                v11 = v22;
                *(v82 + 8 * (v88 >> 6) + 64) |= 1 << v88;
                v97 = *(v82 + 48);
                v22 = v82;
                v98 = v223;
                v99 = v97 + *(v223 + 72) * v88;
                v225 = v88;
                v100 = v239;
                v5 = v240;
                v83(v99, v240, v239);
                sub_23BDF5A30(v237, *(v22 + 56) + v225 * v241);
                v101 = *(v98 + 8);
                v82 = v22;
                v101(v5, v100);
                v102 = *(v22 + 16);
                v92 = __OFADD__(v102, 1);
                v103 = v102 + 1;
                if (v92)
                {
                  goto LABEL_113;
                }

                *(v22 + 16) = v103;
                v5 = v224;
                v22 = v11;
                v11 = v6;
                v6 = v96;
              }

              else
              {
                sub_23BE29E90(v93, v87);
                v88 = sub_23BE290BC(v240);
                if ((v94 & 1) != (v95 & 1))
                {
                  goto LABEL_123;
                }

LABEL_37:
                v82 = v245;
                if ((v94 & 1) == 0)
                {
                  goto LABEL_38;
                }

LABEL_27:
                sub_23BE0E648(v237, *(v82 + 56) + v88 * v241);
                (*v227)(v240, v239);
              }

              v80 = v232;
              v81 = v226;
            }

            ++v27;
            sub_23BE0E578(v81, type metadata accessor for SceneInfo);
            if (v242 == v27)
            {
              v211 = v82;
              v105 = 0;
              v106 = 0;
              v206 = v242 - 1;
              v107 = v209 + v21;
              v22 = v203;
              v201 = v209 + v21;
              while (2)
              {
                v225 = v217;
                v108 = &v107[v11 * v106];
                v27 = v106;
                while (1)
                {
                  if (v27 >= *(v21 + 16))
                  {
                    goto LABEL_109;
                  }

                  sub_23BE0E5E0(v108, v22, type metadata accessor for SceneInfo);
                  v106 = v27 + 1;
                  if (swift_getEnumCaseMultiPayload() == 11)
                  {
                    break;
                  }

                  sub_23BE0E578(v22, type metadata accessor for SceneInfo);
                  v108 += v11;
                  ++v27;
                  if (v242 == v106)
                  {
                    v217 = v215;
LABEL_60:
                    v27 = 0;
                    v131 = v209 + v21;
                    v215 = v209 + v21;
LABEL_61:
                    v132 = &v131[v11 * v27];
                    v22 = v27;
                    while (v22 < *(v21 + 16))
                    {
                      sub_23BE0E5E0(v132, v80, type metadata accessor for SceneInfo);
                      v27 = v22 + 1;
                      if (swift_getEnumCaseMultiPayload() == 9)
                      {
                        v133 = *v236;
                        v134 = v212;
                        v135 = v234;
                        (*v236)(v212, v234, v239);
                        sub_23BE0E5E0(v135, v207, type metadata accessor for Scene);
                        v136 = v210;
                        v137 = swift_isUniquelyReferenced_nonNull_native();
                        v245 = v136;
                        v138 = sub_23BE290BC(v134);
                        v140 = *(v136 + 16);
                        v141 = (v139 & 1) == 0;
                        v92 = __OFADD__(v140, v141);
                        v142 = v140 + v141;
                        if (v92)
                        {
                          goto LABEL_116;
                        }

                        v143 = v139;
                        v144 = *(v136 + 24);
                        v209 = v133;
                        if (v144 >= v142)
                        {
                          if ((v137 & 1) == 0)
                          {
                            v153 = v138;
                            sub_23BE2B6BC();
                            v138 = v153;
                          }
                        }

                        else
                        {
                          sub_23BE29E90(v142, v137);
                          v138 = sub_23BE290BC(v212);
                          if ((v143 & 1) != (v145 & 1))
                          {
                            goto LABEL_123;
                          }
                        }

                        v146 = v245;
                        v210 = v245;
                        if (v143)
                        {
                          sub_23BE0E648(v207, *(v245 + 56) + v138 * v241);
                          (*v227)(v212, v239);
                        }

                        else
                        {
                          *(v245 + 8 * (v138 >> 6) + 64) |= 1 << v138;
                          v147 = v223;
                          v148 = v146[6] + *(v223 + 72) * v138;
                          v201 = v138;
                          v149 = v212;
                          v150 = v239;
                          v209(v148, v212, v239);
                          sub_23BDF5A30(v207, v146[7] + v201 * v241);
                          (*(v147 + 8))(v149, v150);
                          v151 = v146[2];
                          v92 = __OFADD__(v151, 1);
                          v152 = v151 + 1;
                          if (v92)
                          {
                            goto LABEL_120;
                          }

                          v146[2] = v152;
                        }

                        v80 = v232;
                        sub_23BE0E578(v232, type metadata accessor for SceneInfo);
                        v105 = 1;
                        v131 = v215;
                        if (v206 == v22)
                        {
                          v215 = v217;
                          v217 = v225;
                          v22 = v219;
                          v27 = v234;
                          v21 = v235;
                          goto LABEL_83;
                        }

                        goto LABEL_61;
                      }

                      sub_23BE0E578(v80, type metadata accessor for SceneInfo);
                      v132 += v11;
                      ++v22;
                      if (v242 == v27)
                      {
                        v22 = v219;
                        v27 = v234;
                        v154 = v217;
                        v155 = v225;
                        if ((v105 & 1) == 0)
                        {
                          goto LABEL_81;
                        }

                        goto LABEL_82;
                      }
                    }

                    goto LABEL_110;
                  }
                }

                v109 = v213;
                v110 = v234;
                v217 = *v236;
                (v217)(v213, v234, v239);
                sub_23BE0E5E0(v110, v208, type metadata accessor for Scene);
                v111 = v225;
                v112 = swift_isUniquelyReferenced_nonNull_native();
                v245 = v111;
                v113 = sub_23BE290BC(v109);
                v115 = *(v111 + 16);
                v116 = (v114 & 1) == 0;
                v92 = __OFADD__(v115, v116);
                v117 = v115 + v116;
                if (v92)
                {
                  __break(1u);
LABEL_116:
                  __break(1u);
                  goto LABEL_117;
                }

                if (*(v111 + 24) >= v117)
                {
                  if (v112)
                  {
                    v121 = v245;
                    if ((v114 & 1) == 0)
                    {
                      goto LABEL_57;
                    }
                  }

                  else
                  {
                    v122 = v113;
                    v123 = v114;
                    sub_23BE2B6BC();
                    v124 = v123;
                    v113 = v122;
                    v121 = v245;
                    if ((v124 & 1) == 0)
                    {
                      goto LABEL_57;
                    }
                  }
                }

                else
                {
                  v118 = v114;
                  sub_23BE29E90(v117, v112);
                  v113 = sub_23BE290BC(v213);
                  if ((v118 & 1) != (v119 & 1))
                  {
                    goto LABEL_123;
                  }

                  v120 = v118;
                  v121 = v245;
                  if ((v120 & 1) == 0)
                  {
LABEL_57:
                    *&v121[8 * (v113 >> 6) + 64] |= 1 << v113;
                    v125 = v223;
                    v126 = *(v121 + 6) + *(v223 + 72) * v113;
                    v225 = v113;
                    v127 = v213;
                    v128 = v239;
                    (v217)(v126, v213, v239);
                    sub_23BDF5A30(v208, *(v121 + 7) + v225 * v241);
                    (*(v125 + 8))(v127, v128);
                    v129 = *(v121 + 2);
                    v92 = __OFADD__(v129, 1);
                    v130 = v129 + 1;
                    if (v92)
                    {
                      goto LABEL_119;
                    }

                    *(v121 + 2) = v130;
                    v22 = v203;
LABEL_59:
                    sub_23BE0E578(v22, type metadata accessor for SceneInfo);
                    v105 = 1;
                    v215 = v121;
                    v217 = v121;
                    v225 = v121;
                    v80 = v232;
                    v107 = v201;
                    if (v206 != v27)
                    {
                      continue;
                    }

                    goto LABEL_60;
                  }
                }

                break;
              }

              sub_23BE0E648(v208, *(v121 + 7) + v113 * v241);
              (*v227)(v213, v239);
              goto LABEL_59;
            }

            continue;
          }
        }

        v69 = v67 + 1;
        v70 = _s32NTKEsterbrookFaceBundleCompanion9SceneInfoO21__derived_enum_equalsySbAC_ACtFZ_0(v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v67, v243);
        v67 = v69;
      }

      while ((v70 & 1) == 0);
      v71 = v243;
LABEL_6:
      sub_23BE0E578(v71, type metadata accessor for SceneInfo);
      sub_23BE0E578(v27, type metadata accessor for Scene);
      v21 = v235;
LABEL_7:
      v46 = v238 + 1;
      if (v238 + 1 == v230)
      {

        v169 = v210;
        v170 = v211;
        v171 = v215;
        goto LABEL_89;
      }
    }
  }

  v170 = MEMORY[0x277D84F98];
  v169 = MEMORY[0x277D84F98];
  v171 = MEMORY[0x277D84F98];
  v22 = MEMORY[0x277D84F98];
LABEL_89:

  v172 = sub_23BE327B8();
  v173 = sub_23BE32A18();
  v174 = os_log_type_enabled(v172, v173);
  v175 = v205;
  if (!v174)
  {

    goto LABEL_94;
  }

  v176 = swift_slowAlloc();
  *v176 = 134217984;
  v177 = *(v22 + 16);
  v178 = *(v171 + 2);
  v92 = __OFADD__(v177, v178);
  v179 = v177 + v178;
  if (!v92)
  {
    v180 = v169[2];
    v92 = __OFADD__(v179, v180);
    v181 = v179 + v180;
    if (v92)
    {
      goto LABEL_122;
    }

    *(v176 + 4) = v181;
    v182 = v170;
    v183 = v176;

    _os_log_impl(&dword_23BDE0000, v172, v173, "Scene store loaded %ld scenes.", v183, 0xCu);
    v184 = v183;
    v170 = v182;
    MEMORY[0x23EEBF030](v184, -1, -1);
LABEL_94:

    v175[2] = v22;
    v175[3] = v171;
    v175[4] = v169;
    v175[5] = v170;
    v185 = v169[2];
    if (v185)
    {
      v186 = sub_23BE2D228(v169[2], 0);
      v243 = sub_23BE0E33C(&v245, v186 + ((*(v233 + 80) + 32) & ~*(v233 + 80)), v185, v169);

      sub_23BE0E5D8();
      if (v243 != v185)
      {
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }
    }

    else
    {

      v186 = MEMORY[0x277D84F90];
    }

    type metadata accessor for ShuffledSceneProvider();
    v187 = swift_allocObject();
    v188 = MEMORY[0x277D84F90];
    *(v187 + 24) = MEMORY[0x277D84F90];
    *(v187 + 16) = v186;
    v245 = v186;

    sub_23BE2D7B0();
    v189 = v245;
    swift_beginAccess();
    sub_23BE2CD00(v189);
    swift_endAccess();
    v175[6] = v187;
    v190 = v175[5];
    v191 = v190[2];
    if (!v191)
    {
      v192 = v188;
      goto LABEL_102;
    }

    v219 = v22;
    v192 = sub_23BE2D228(v191, 0);
    v193 = sub_23BE0E33C(&v245, v192 + ((*(v233 + 80) + 32) & ~*(v233 + 80)), v191, v190);

    sub_23BE0E5D8();
    if (v193 == v191)
    {
      v175 = v205;
      v188 = MEMORY[0x277D84F90];
LABEL_102:
      v194 = swift_allocObject();
      *(v194 + 24) = v188;
      *(v194 + 16) = v192;
      v245 = v192;

      sub_23BE2D7B0();
      v195 = v245;
      swift_beginAccess();
      sub_23BE2CD00(v195);
      swift_endAccess();
      v175[7] = v194;
      if (*(v175[3] + 16))
      {

        v196 = v200;
      }

      else
      {
        v196 = sub_23BE327B8();
        v197 = sub_23BE32A08();
        if (os_log_type_enabled(v196, v197))
        {
          v198 = swift_slowAlloc();
          *v198 = 0;
          _os_log_impl(&dword_23BDE0000, v196, v197, "Scene store failed to find any tritium scenes!", v198, 2u);
          MEMORY[0x23EEBF030](v198, -1, -1);
        }
      }

      return v175;
    }

    goto LABEL_118;
  }

LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  result = sub_23BE32D68();
  __break(1u);
  return result;
}