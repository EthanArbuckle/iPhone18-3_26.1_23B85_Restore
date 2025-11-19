uint64_t sub_24057B470@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_24075A0B4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

id sub_24057B4B4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_24057B4C0(id *a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1;

  *a2 = v3;
}

id sub_24057B4FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = v2;
  return v2;
}

void sub_24057B508(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  v5 = *a1;

  *(a2 + 16) = v3;
}

uint64_t sub_24057B5BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24057B644@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_24057B87C()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

unint64_t sub_24057B8A8()
{
  v1 = *v0;
  v2 = 0x676E654C65646F63;
  v3 = 0x657463656C6C6F63;
  v4 = 0x666E49726F727265;
  if (v1 != 3)
  {
    v4 = 0x726F727265;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_24057B958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405B7E00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24057B9A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24057BA30@<X0>(_BYTE *a1@<X8>)
{
  result = AuthenticationModel.isAlertPresented.getter();
  *a1 = result & 1;
  return result;
}

id sub_24057BA88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = v2;
  return v2;
}

void sub_24057BA94(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 40);
  v5 = *a1;

  *(a2 + 40) = v3;
}

id sub_24057BAD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 56);
  *a2 = v2;
  return v2;
}

void sub_24057BADC(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 56);
  v5 = *a1;

  *(a2 + 56) = v3;
}

id sub_24057BB18@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_24057BB24(id *a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1;

  *a2 = v3;
}

id sub_24057BB60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 72);
  *a2 = v2;
  return v2;
}

void sub_24057BB6C(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 72);
  v5 = *a1;

  *(a2 + 72) = v3;
}

id sub_24057BBA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  *a2 = v2;
  return v2;
}

void sub_24057BBB4(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 32);
  v5 = *a1;

  *(a2 + 32) = v3;
}

id sub_24057BBF0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_24057BBFC(id *a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1;

  *a2 = v3;
}

id sub_24057BC38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = v2;
  return v2;
}

void sub_24057BC44(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  v5 = *a1;

  *(a2 + 8) = v3;
}

id sub_24057BC80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = v2;
  return v2;
}

void sub_24057BC8C(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  v5 = *a1;

  *(a2 + 16) = v3;
}

id sub_24057BCC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = v2;
  return v2;
}

void sub_24057BCD4(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 24);
  v5 = *a1;

  *(a2 + 24) = v3;
}

id sub_24057BD10@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_24057BD1C(id *a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1;

  *a2 = v3;
}

id sub_24057BD58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = v2;
  return v2;
}

void sub_24057BD64(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  v5 = *a1;

  *(a2 + 8) = v3;
}

id sub_24057BDA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = v2;
  return v2;
}

void sub_24057BDAC(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  v5 = *a1;

  *(a2 + 16) = v3;
}

id sub_24057BDE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = v2;
  return v2;
}

void sub_24057BDF4(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 24);
  v5 = *a1;

  *(a2 + 24) = v3;
}

id sub_24057BE30@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_24057BE3C(id *a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1;

  *a2 = v3;
}

id sub_24057BE78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AuthenticationModel.PreflightRepair(0) + 24));
  *a2 = v3;

  return v3;
}

uint64_t sub_24057BEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for AuthenticationModel.State(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24057BFF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for AuthenticationModel.State(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24057C124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 48);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24057C1E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 48) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24057C2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IdMSAccount();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24057C380(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IdMSAccount();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_24057C564()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24057C5B4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24057C5EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24057C624()
{
  v1 = sub_2407597B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24057C71C()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24057C754()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24057C79C()
{
  v1 = sub_2407597B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24057C868()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24057C8A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24057C8E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24057CB40()
{
  sub_2405AEA70(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_2405AEA70(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  return MEMORY[0x2821FE8E8](v0, 121, 7);
}

unint64_t sub_24057CBA0()
{
  v1 = 0x7953726961706572;
  if (*v0 != 1)
  {
    v1 = 0x64656873696E6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_24057CC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405F6F08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24057CC3C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24057CC74()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24057CCC0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24057CD00()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24057CD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IdMSAccount();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24057CE50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IdMSAccount();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_24057CF0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B38, &qword_240777010);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24057CF84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B38, &qword_240777010);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_24057D018@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 160);
  *a2 = v2;
  return v2;
}

void sub_24057D024(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 160);
  v5 = *a1;

  *(a2 + 160) = v3;
}

uint64_t sub_24057D060@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 904);
  v4 = *(a1 + 912);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240768D88;
  a2[1] = v5;
}

uint64_t sub_24057D0D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 920);
  v4 = *(a1 + 928);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240768D78;
  a2[1] = v5;
}

uint64_t sub_24057D148@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 936);
  v4 = *(a1 + 944);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240768D68;
  a2[1] = v5;
}

uint64_t sub_24057D1BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 952);
  v4 = *(a1 + 960);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240768D58;
  a2[1] = v5;
}

uint64_t sub_24057D230@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 968);
  v4 = *(a1 + 976);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240768D38;
  a2[1] = v5;
}

uint64_t sub_24057D2DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24057D354()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 120);

  v8 = *(v0 + 136);

  v9 = *(v0 + 152);

  v10 = *(v0 + 168);

  v11 = *(v0 + 192);

  v12 = *(v0 + 208);

  v13 = *(v0 + 224);

  v14 = *(v0 + 240);

  v15 = *(v0 + 256);

  v16 = *(v0 + 272);

  v17 = *(v0 + 288);

  v18 = *(v0 + 304);

  v19 = *(v0 + 320);

  v20 = *(v0 + 336);

  v21 = *(v0 + 352);

  v22 = *(v0 + 368);

  v23 = *(v0 + 384);

  v24 = *(v0 + 400);

  v25 = *(v0 + 416);

  v26 = *(v0 + 432);

  v27 = *(v0 + 448);

  v28 = *(v0 + 464);

  v29 = *(v0 + 480);

  v30 = *(v0 + 496);

  v31 = *(v0 + 512);

  v32 = *(v0 + 528);

  v33 = *(v0 + 544);

  v34 = *(v0 + 560);

  v35 = *(v0 + 576);

  v36 = *(v0 + 592);

  v37 = *(v0 + 608);

  v38 = *(v0 + 624);

  v39 = *(v0 + 640);

  v40 = *(v0 + 656);

  v41 = *(v0 + 672);

  v42 = *(v0 + 688);

  v43 = *(v0 + 704);

  v44 = *(v0 + 720);

  v45 = *(v0 + 736);

  v46 = *(v0 + 752);

  v47 = *(v0 + 768);

  v48 = *(v0 + 784);

  v49 = *(v0 + 800);

  v50 = *(v0 + 816);

  v51 = *(v0 + 832);

  v52 = *(v0 + 848);

  v53 = *(v0 + 864);

  v54 = *(v0 + 880);

  v55 = *(v0 + 896);

  v56 = *(v0 + 912);

  v57 = *(v0 + 928);

  v58 = *(v0 + 944);

  v59 = *(v0 + 960);

  v60 = *(v0 + 976);

  v61 = *(v0 + 992);

  return MEMORY[0x2821FE8E8](v0, 1000, 7);
}

uint64_t sub_24057D574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RepairModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24057D640(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RepairModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_24057D714@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for IdMSAccount();
  v5 = (a1 + *(result + 36));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_24057D75C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for IdMSAccount();
  v5 = a2 + *(result + 36);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

id sub_24057D798@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_24057D7A4(id *a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1;

  *a2 = v3;
}

id sub_24057D7E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = v2;
  return v2;
}

void sub_24057D7EC(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  v5 = *a1;

  *(a2 + 8) = v3;
}

id sub_24057D828@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_24057D834(id *a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1;

  *a2 = v3;
}

uint64_t sub_24057D870(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2407595A4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24057D91C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2407595A4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24057D9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IdMSAccount();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24057DA88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IdMSAccount();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24057DB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IdMSAccount();
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

uint64_t sub_24057DC00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IdMSAccount();
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

uint64_t sub_24057DCB8(unsigned __int8 a1)
{
  v1 = 1868983913;
  v2 = 0x654B63696C627570;
  if (a1 != 2)
  {
    v2 = 0x697274656D6D7973;
  }

  if (a1)
  {
    v1 = 0x4B65746176697270;
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

uint64_t sub_24057DD40()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24057DD78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24057DDB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_anisetteClient;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_24057DE18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v53 = *(*(v1 - 8) + 64);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v4 = *(v55 - 8);
  v5 = *(v4 + 80);
  v54 = *(v4 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v6 = (v0 + v3 + *(v1 + 32));
  v7 = type metadata accessor for IdMSAccount();
  if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
  {
    v8 = *(v6 + 1);

    v9 = *(v6 + 3);

    v10 = *(v6 + 5);

    v11 = *(v6 + 7);

    v12 = *(v6 + 9);

    v13 = v7[5];
    v14 = sub_2407595A4();
    (*(*(v14 - 8) + 8))(&v6[v13], v14);
    v15 = &v6[v7[6]];
    v51 = v15[18];
    v52 = v15[19];
    sub_240604B08(*v15, v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8], v15[9], v15[10], v15[11], v15[12], v15[13], v15[14], v15[15], v15[16], v15[17]);
    v16 = *&v6[v7[7]];

    v17 = &v6[v7[8]];
    if (*v17 != 1)
    {
    }
  }

  v18 = type metadata accessor for AgeMigrationModel(0);
  v19 = &v6[v18[5]];
  sub_240604AB8(*v19, *(v19 + 1), *(v19 + 2), *(v19 + 6) | ((*(v19 + 14) | (v19[30] << 16)) << 32));
  v20 = &v6[v18[6]];
  v21 = *(v20 + 2);

  v22 = *(v20 + 4);

  v23 = *(v20 + 8);

  sub_240604AE0(*(v20 + 11), *(v20 + 12), *(v20 + 13), v20[112]);
  v24 = *(v20 + 15);

  v25 = *(v20 + 16);

  sub_240604AE0(*(v20 + 18), *(v20 + 19), *(v20 + 20), v20[168]);
  v26 = *(v20 + 22);

  v27 = *(v20 + 24);
  if (v27 != 1)
  {

    v28 = *(v20 + 26);
    if (v28 >> 60 != 15)
    {
      sub_2405BCD98(*(v20 + 25), v28);
    }
  }

  if (*(v20 + 29))
  {

    v29 = *(v20 + 30);

    v30 = *(v20 + 31);
  }

  v31 = *(v20 + 33);

  v32 = *(v20 + 35);

  v33 = &v6[v18[7]];
  type metadata accessor for AgeMigrationModel.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      if (*(v33 + 1) >= 0x14uLL)
      {

        v46 = *(v33 + 4);
      }

      break;
    case 1:

      v40 = *(v33 + 2);

      v41 = *(v33 + 4);

      v42 = *(v33 + 6);

      v43 = *(v33 + 8);

      if (v33[96] != 255)
      {
        v44 = *(v33 + 10);
        v45 = *(v33 + 11);
        sub_240604E54();
      }

      break;
    case 0:
      v35 = *(v33 + 1);

      v36 = *(v33 + 3);

      v37 = *(v33 + 5);

      v38 = *(type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0) + 28);
      v39 = sub_240759744();
      (*(*(v39 - 8) + 8))(&v33[v38], v39);
      break;
  }

  v47 = (v53 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v47 + v5 + 8) & ~v5;
  v49 = *(v0 + v3 + *(v1 + 36));

  (*(v4 + 8))(v0 + v48, v55);

  return MEMORY[0x2821FE8E8](v0, v48 + v54, v2 | v5 | 7);
}

uint64_t sub_24057E298()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
  v2 = *(*(v1 - 8) + 80);
  v53 = *(*(v1 - 8) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v52 = *(v4 + 64);

  v54 = (v2 + 24) & ~v2;
  v6 = (v0 + v54 + *(v1 + 32));
  v7 = type metadata accessor for IdMSAccount();
  if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
  {
    v8 = *(v6 + 1);

    v9 = *(v6 + 3);

    v10 = *(v6 + 5);

    v11 = *(v6 + 7);

    v12 = *(v6 + 9);

    v13 = v7[5];
    v14 = sub_2407595A4();
    (*(*(v14 - 8) + 8))(&v6[v13], v14);
    v15 = &v6[v7[6]];
    v50 = v15[18];
    v51 = v15[19];
    sub_240604B08(*v15, v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8], v15[9], v15[10], v15[11], v15[12], v15[13], v15[14], v15[15], v15[16], v15[17]);
    v16 = *&v6[v7[7]];

    v17 = &v6[v7[8]];
    if (*v17 != 1)
    {
    }
  }

  v18 = type metadata accessor for AgeMigrationModel(0);
  v19 = &v6[v18[5]];
  sub_240604AB8(*v19, *(v19 + 1), *(v19 + 2), *(v19 + 6) | ((*(v19 + 14) | (v19[30] << 16)) << 32));
  v20 = &v6[v18[6]];
  v21 = *(v20 + 2);

  v22 = *(v20 + 4);

  v23 = *(v20 + 8);

  sub_240604AE0(*(v20 + 11), *(v20 + 12), *(v20 + 13), v20[112]);
  v24 = *(v20 + 15);

  v25 = *(v20 + 16);

  sub_240604AE0(*(v20 + 18), *(v20 + 19), *(v20 + 20), v20[168]);
  v26 = *(v20 + 22);

  v27 = *(v20 + 24);
  if (v27 != 1)
  {

    v28 = *(v20 + 26);
    if (v28 >> 60 != 15)
    {
      sub_2405BCD98(*(v20 + 25), v28);
    }
  }

  if (*(v20 + 29))
  {

    v29 = *(v20 + 30);

    v30 = *(v20 + 31);
  }

  v31 = *(v20 + 33);

  v32 = *(v20 + 35);

  v33 = &v6[v18[7]];
  type metadata accessor for AgeMigrationModel.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      if (*(v33 + 1) >= 0x14uLL)
      {

        v46 = *(v33 + 4);
      }

      break;
    case 1:

      v40 = *(v33 + 2);

      v41 = *(v33 + 4);

      v42 = *(v33 + 6);

      v43 = *(v33 + 8);

      if (v33[96] != 255)
      {
        v44 = *(v33 + 10);
        v45 = *(v33 + 11);
        sub_240604E54();
      }

      break;
    case 0:
      v35 = *(v33 + 1);

      v36 = *(v33 + 3);

      v37 = *(v33 + 5);

      v38 = *(type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0) + 28);
      v39 = sub_240759744();
      (*(*(v39 - 8) + 8))(&v33[v38], v39);
      break;
  }

  v47 = (v54 + v53 + v5) & ~v5;
  v48 = *(v0 + v54 + *(v1 + 36));

  (*(v4 + 8))(v0 + v47, v3);

  return MEMORY[0x2821FE8E8](v0, v47 + v52, v2 | v5 | 7);
}

uint64_t sub_24057E6F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
  v103 = *(*(v1 - 8) + 80);
  v2 = (v103 + 16) & ~v103;
  v3 = *(*(v1 - 8) + 64);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AD0, &unk_24076CCE0);
  v104 = *(*(v97 - 8) + 80);
  v102 = *(*(v97 - 8) + 64);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v100 = *(v101 - 8);
  v98 = *(v100 + 80);
  v99 = *(v100 + 64);
  v96 = v0 + v2;
  v4 = (v0 + v2 + *(v1 + 32));
  v5 = type metadata accessor for IdMSAccount();
  v6 = *(*(v5 - 1) + 48);
  if (!v6(v4, 1, v5))
  {
    v7 = *(v4 + 1);

    v8 = *(v4 + 3);

    v9 = *(v4 + 5);

    v10 = *(v4 + 7);

    v11 = *(v4 + 9);

    v12 = v5[5];
    v13 = sub_2407595A4();
    (*(*(v13 - 8) + 8))(&v4[v12], v13);
    v14 = &v4[v5[6]];
    v92 = v14[18];
    v94 = v14[19];
    sub_240604B08(*v14, v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10], v14[11], v14[12], v14[13], v14[14], v14[15], v14[16], v14[17]);
    v15 = *&v4[v5[7]];

    v16 = &v4[v5[8]];
    if (*v16 != 1)
    {
    }
  }

  v17 = v3 + v104;
  v18 = type metadata accessor for AgeMigrationModel(0);
  v19 = &v4[v18[5]];
  sub_240604AB8(*v19, *(v19 + 1), *(v19 + 2), *(v19 + 6) | ((*(v19 + 14) | (v19[30] << 16)) << 32));
  v20 = &v4[v18[6]];
  v21 = *(v20 + 2);

  v22 = *(v20 + 4);

  v23 = *(v20 + 8);

  sub_240604AE0(*(v20 + 11), *(v20 + 12), *(v20 + 13), v20[112]);
  v24 = *(v20 + 15);

  v25 = *(v20 + 16);

  sub_240604AE0(*(v20 + 18), *(v20 + 19), *(v20 + 20), v20[168]);
  v26 = *(v20 + 22);

  v27 = *(v20 + 24);
  if (v27 != 1)
  {

    v28 = *(v20 + 26);
    if (v28 >> 60 != 15)
    {
      sub_2405BCD98(*(v20 + 25), v28);
    }
  }

  v29 = v2 + v17;
  if (*(v20 + 29))
  {

    v30 = *(v20 + 30);

    v31 = *(v20 + 31);
  }

  v32 = v29 & ~v104;
  v33 = *(v20 + 33);

  v34 = *(v20 + 35);

  v35 = &v4[v18[7]];
  type metadata accessor for AgeMigrationModel.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v37 = v0;
    if (*(v35 + 1) >= 0x14uLL)
    {

      v49 = *(v35 + 4);
    }
  }

  else
  {
    v37 = v0;
    if (EnumCaseMultiPayload == 1)
    {

      v43 = *(v35 + 2);

      v44 = *(v35 + 4);

      v45 = *(v35 + 6);

      v46 = *(v35 + 8);

      if (v35[96] != 255)
      {
        v47 = *(v35 + 10);
        v48 = *(v35 + 11);
        sub_240604E54();
      }
    }

    else if (!EnumCaseMultiPayload)
    {
      v38 = *(v35 + 1);

      v39 = *(v35 + 3);

      v40 = *(v35 + 5);

      v41 = *(type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0) + 28);
      v42 = sub_240759744();
      (*(*(v42 - 8) + 8))(&v35[v41], v42);
    }
  }

  v50 = *(v96 + *(v1 + 36));

  v51 = (v37 + v32 + *(v97 + 32));
  if (!v6(v51, 1, v5))
  {
    v52 = *(v51 + 1);

    v53 = *(v51 + 3);

    v54 = *(v51 + 5);

    v55 = *(v51 + 7);

    v56 = *(v51 + 9);

    v57 = v5[5];
    v58 = sub_2407595A4();
    (*(*(v58 - 8) + 8))(&v51[v57], v58);
    v59 = &v51[v5[6]];
    v93 = v59[18];
    v95 = v59[19];
    sub_240604B08(*v59, v59[1], v59[2], v59[3], v59[4], v59[5], v59[6], v59[7], v59[8], v59[9], v59[10], v59[11], v59[12], v59[13], v59[14], v59[15], v59[16], v59[17]);
    v60 = *&v51[v5[7]];

    v61 = &v51[v5[8]];
    if (*v61 != 1)
    {
    }
  }

  v62 = &v51[v18[5]];
  sub_240604AB8(*v62, *(v62 + 1), *(v62 + 2), *(v62 + 6) | ((*(v62 + 14) | (v62[30] << 16)) << 32));
  v63 = &v51[v18[6]];
  v64 = *(v63 + 2);

  v65 = *(v63 + 4);

  v66 = *(v63 + 8);

  sub_240604AE0(*(v63 + 11), *(v63 + 12), *(v63 + 13), v63[112]);
  v67 = *(v63 + 15);

  v68 = *(v63 + 16);

  sub_240604AE0(*(v63 + 18), *(v63 + 19), *(v63 + 20), v63[168]);
  v69 = *(v63 + 22);

  v70 = *(v63 + 24);
  if (v70 != 1)
  {

    v71 = *(v63 + 26);
    if (v71 >> 60 != 15)
    {
      sub_2405BCD98(*(v63 + 25), v71);
    }
  }

  if (*(v63 + 29))
  {

    v72 = *(v63 + 30);

    v73 = *(v63 + 31);
  }

  v74 = *(v63 + 33);

  v75 = *(v63 + 35);

  v76 = &v51[v18[7]];
  v77 = swift_getEnumCaseMultiPayload();
  switch(v77)
  {
    case 2:
      if (*(v76 + 1) >= 0x14uLL)
      {

        v89 = *(v76 + 4);
      }

      break;
    case 1:

      v83 = *(v76 + 2);

      v84 = *(v76 + 4);

      v85 = *(v76 + 6);

      v86 = *(v76 + 8);

      if (v76[96] != 255)
      {
        v87 = *(v76 + 10);
        v88 = *(v76 + 11);
        sub_240604E54();
      }

      break;
    case 0:
      v78 = *(v76 + 1);

      v79 = *(v76 + 3);

      v80 = *(v76 + 5);

      v81 = *(type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0) + 28);
      v82 = sub_240759744();
      (*(*(v82 - 8) + 8))(&v76[v81], v82);
      break;
  }

  v90 = (v32 + v102 + v98) & ~v98;
  (*(v100 + 8))(v37 + v90, v101);

  return MEMORY[0x2821FE8E8](v37, v90 + v99, v103 | v104 | v98 | 7);
}

uint64_t sub_24057EEA0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B88, &qword_24076CD08) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for AgeMigrationContext();
  v6 = *(*(v5 - 8) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = *(v0 + 16);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3, 1, v10))
  {
    (*(v11 + 8))(v0 + v3, v10);
  }

  v12 = (v0 + v7);
  v13 = type metadata accessor for IdMSAccount();
  if (!(*(*(v13 - 1) + 48))(v0 + v7, 1, v13))
  {
    v14 = *(v12 + 1);

    v15 = *(v12 + 3);

    v16 = *(v12 + 5);

    v17 = *(v12 + 7);

    v18 = *(v12 + 9);

    v19 = v13[5];
    v20 = sub_2407595A4();
    (*(*(v20 - 8) + 8))(&v12[v19], v20);
    v21 = &v12[v13[6]];
    v55 = v21[18];
    v56 = v21[19];
    sub_240604B08(*v21, v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8], v21[9], v21[10], v21[11], v21[12], v21[13], v21[14], v21[15], v21[16], v21[17]);
    v22 = *&v12[v13[7]];

    v23 = &v12[v13[8]];
    if (*v23 != 1)
    {
    }
  }

  v24 = type metadata accessor for AgeMigrationModel(0);
  v25 = &v12[v24[5]];
  sub_240604AB8(*v25, *(v25 + 1), *(v25 + 2), *(v25 + 6) | ((*(v25 + 14) | (v25[30] << 16)) << 32));
  v26 = &v12[v24[6]];
  v27 = *(v26 + 2);

  v28 = *(v26 + 4);

  v29 = *(v26 + 8);

  sub_240604AE0(*(v26 + 11), *(v26 + 12), *(v26 + 13), v26[112]);
  v30 = *(v26 + 15);

  v31 = *(v26 + 16);

  sub_240604AE0(*(v26 + 18), *(v26 + 19), *(v26 + 20), v26[168]);
  v32 = *(v26 + 22);

  v33 = *(v26 + 24);
  if (v33 != 1)
  {

    v34 = *(v26 + 26);
    if (v34 >> 60 != 15)
    {
      sub_2405BCD98(*(v26 + 25), v34);
    }
  }

  if (*(v26 + 29))
  {

    v35 = *(v26 + 30);

    v36 = *(v26 + 31);
  }

  v37 = *(v26 + 33);

  v38 = *(v26 + 35);

  v39 = &v12[v24[7]];
  type metadata accessor for AgeMigrationModel.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      if (*(v39 + 1) >= 0x14uLL)
      {

        v52 = *(v39 + 4);
      }

      break;
    case 1:

      v46 = *(v39 + 2);

      v47 = *(v39 + 4);

      v48 = *(v39 + 6);

      v49 = *(v39 + 8);

      if (v39[96] != 255)
      {
        v50 = *(v39 + 10);
        v51 = *(v39 + 11);
        sub_240604E54();
      }

      break;
    case 0:
      v41 = *(v39 + 1);

      v42 = *(v39 + 3);

      v43 = *(v39 + 5);

      v44 = *(type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0) + 28);
      v45 = sub_240759744();
      (*(*(v45 - 8) + 8))(&v39[v44], v45);
      break;
  }

  v53 = &v12[*(v5 + 20)];
  if (v53[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v53);
  }

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_24057F33C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B88, &qword_24076CD08) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24057F460()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B80, &qword_24076CD00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5));

  return MEMORY[0x2821FE8E8](v0, v5 + 40, v3 | 7);
}

uint64_t sub_24057F544()
{
  v1 = sub_240759C44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v61 = type metadata accessor for AgeMigrationContext();
  v6 = *(*(v61 - 8) + 80);
  v7 = (v4 + v5 + v6) & ~v6;
  v60 = *(*(v61 - 8) + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v59 = *(v9 + 64);
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = (v0 + v7);
  v14 = type metadata accessor for IdMSAccount();
  if (!(*(*(v14 - 1) + 48))(v0 + v7, 1, v14))
  {
    v15 = *(v13 + 1);

    v16 = *(v13 + 3);

    v17 = *(v13 + 5);

    v18 = *(v13 + 7);

    v19 = *(v13 + 9);

    v20 = v14[5];
    v21 = sub_2407595A4();
    (*(*(v21 - 8) + 8))(&v13[v20], v21);
    v22 = &v13[v14[6]];
    v57 = v22[18];
    v58 = v22[19];
    sub_240604B08(*v22, v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7], v22[8], v22[9], v22[10], v22[11], v22[12], v22[13], v22[14], v22[15], v22[16], v22[17]);
    v23 = *&v13[v14[7]];

    v24 = &v13[v14[8]];
    if (*v24 != 1)
    {
    }
  }

  v25 = type metadata accessor for AgeMigrationModel(0);
  v26 = &v13[v25[5]];
  sub_240604AB8(*v26, *(v26 + 1), *(v26 + 2), *(v26 + 6) | ((*(v26 + 14) | (v26[30] << 16)) << 32));
  v27 = &v13[v25[6]];
  v28 = *(v27 + 2);

  v29 = *(v27 + 4);

  v30 = *(v27 + 8);

  sub_240604AE0(*(v27 + 11), *(v27 + 12), *(v27 + 13), v27[112]);
  v31 = *(v27 + 15);

  v32 = *(v27 + 16);

  sub_240604AE0(*(v27 + 18), *(v27 + 19), *(v27 + 20), v27[168]);
  v33 = *(v27 + 22);

  v34 = *(v27 + 24);
  if (v34 != 1)
  {

    v35 = *(v27 + 26);
    if (v35 >> 60 != 15)
    {
      sub_2405BCD98(*(v27 + 25), v35);
    }
  }

  if (*(v27 + 29))
  {

    v36 = *(v27 + 30);

    v37 = *(v27 + 31);
  }

  v38 = *(v27 + 33);

  v39 = *(v27 + 35);

  v40 = &v13[v25[7]];
  type metadata accessor for AgeMigrationModel.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      if (*(v40 + 1) >= 0x14uLL)
      {

        v53 = *(v40 + 4);
      }

      break;
    case 1:

      v47 = *(v40 + 2);

      v48 = *(v40 + 4);

      v49 = *(v40 + 6);

      v50 = *(v40 + 8);

      if (v40[96] != 255)
      {
        v51 = *(v40 + 10);
        v52 = *(v40 + 11);
        sub_240604E54();
      }

      break;
    case 0:
      v42 = *(v40 + 1);

      v43 = *(v40 + 3);

      v44 = *(v40 + 5);

      v45 = *(type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0) + 28);
      v46 = sub_240759744();
      (*(*(v46 - 8) + 8))(&v40[v45], v46);
      break;
  }

  v54 = &v13[*(v61 + 20)];
  if (v54[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v54);
  }

  v55 = (v7 + v60 + v10) & ~v10;
  (*(v9 + 8))(v0 + v55, v8);

  return MEMORY[0x2821FE8E8](v0, v55 + v59, v3 | v6 | v10 | 7);
}

uint64_t sub_24057FA28()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24057FAA8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24057FB64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24057FC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AgeMigrationModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24057FCE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AgeMigrationModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_24057FDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnyCancellableID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24057FE64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AnyCancellableID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24057FF20()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 7);
  swift_unknownObjectRelease();
  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_240580004()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24058003C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240580074@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = sub_240644D24();
  *a2 = result;
  return result;
}

__n128 sub_2405800D4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_2405800E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_24064E9E8();
  *a2 = v4;

  return v4;
}

void sub_24058011C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_24064EA4C(v2);
}

uint64_t sub_240580220()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240580258()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240580290()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA1E0, &qword_24076E1B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_240580340()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_240580390()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240580450()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];
  swift_unknownObjectRelease();
  v3 = v0[6];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_240580498@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_completed;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2405804F0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_completed;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_240580544()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240580588()
{
  MEMORY[0x245CC7760](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2405805C0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240580604()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[6])
  {
    v2 = v0[7];
  }

  if (v0[8])
  {
    v3 = v0[9];
  }

  v4 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_240580664()
{
  if (v0[4])
  {
    v1 = v0[5];
  }

  if (v0[6])
  {
    v2 = v0[7];
  }

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2405806BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_xq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyxxIsegHirzo_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_24058071C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_240580728(id *a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1;

  *a2 = v3;
}

uint64_t sub_240580764@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_240580770(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 16);

  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_2405807CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 120);

  v8 = *(v0 + 136);

  v9 = *(v0 + 152);

  v10 = *(v0 + 168);

  v11 = *(v0 + 192);

  v12 = *(v0 + 208);

  v13 = *(v0 + 224);

  v14 = *(v0 + 240);

  v15 = *(v0 + 256);

  v16 = *(v0 + 272);

  v17 = *(v0 + 288);

  v18 = *(v0 + 304);

  v19 = *(v0 + 320);

  v20 = *(v0 + 336);

  v21 = *(v0 + 352);

  v22 = *(v0 + 368);

  v23 = *(v0 + 384);

  v24 = *(v0 + 400);

  v25 = *(v0 + 416);

  v26 = *(v0 + 432);

  v27 = *(v0 + 448);

  v28 = *(v0 + 464);

  v29 = *(v0 + 480);

  v30 = *(v0 + 496);

  v31 = *(v0 + 512);

  v32 = *(v0 + 528);

  v33 = *(v0 + 544);

  v34 = *(v0 + 560);

  v35 = *(v0 + 576);

  v36 = *(v0 + 592);

  v37 = *(v0 + 608);

  v38 = *(v0 + 624);

  v39 = *(v0 + 640);

  v40 = *(v0 + 656);

  v41 = *(v0 + 672);

  v42 = *(v0 + 688);

  v43 = *(v0 + 704);

  v44 = *(v0 + 720);

  v45 = *(v0 + 736);

  v46 = *(v0 + 752);

  v47 = *(v0 + 768);

  v48 = *(v0 + 784);

  v49 = *(v0 + 800);

  v50 = *(v0 + 816);

  v51 = *(v0 + 832);

  v52 = *(v0 + 848);

  v53 = *(v0 + 864);

  v54 = *(v0 + 880);

  v55 = *(v0 + 896);

  v56 = *(v0 + 912);

  return MEMORY[0x2821FE8E8](v0, 920, 7);
}

uint64_t sub_2405809C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SetupModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_240580A90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SetupModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_240580B4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_240580B94()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240580BCC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71C8, &unk_240762450);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

void *sub_240580C88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71C8, &unk_240762450);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_240580D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for RapportTransport();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(v9 + 48);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, v10);
  }

  v13 = type metadata accessor for MessagePacker();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = *(a3 + 36);
LABEL_7:
    v11 = *(v14 + 48);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = type metadata accessor for MessageUnpacker();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = *(a3 + 40);
    goto LABEL_7;
  }

  v18 = *(a1 + *(a3 + 48));
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  v19 = v18 - 1;
  if (v19 < 0)
  {
    v19 = -1;
  }

  return (v19 + 1);
}

uint64_t sub_240580EC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  v10 = type metadata accessor for RapportTransport();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = *(v11 + 56);
    v14 = a1;
  }

  else
  {
    v15 = type metadata accessor for MessagePacker();
    if (*(*(v15 - 8) + 84) == a3)
    {
      v12 = v15;
      v16 = *(v15 - 8);
      v17 = *(a4 + 36);
    }

    else
    {
      result = type metadata accessor for MessageUnpacker();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + *(a4 + 48)) = a2;
        return result;
      }

      v12 = result;
      v16 = *(result - 8);
      v17 = *(a4 + 40);
    }

    v13 = *(v16 + 56);
    v14 = a1 + v17;
  }

  return v13(v14, a2, a2, v12);
}

uint64_t sub_240581038()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD90, &unk_240774ED0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2405810CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for MessageUnpacker();
  v44 = *(*(v3 - 8) + 80);
  v4 = (v44 + 32) & ~v44;
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = type metadata accessor for MessagePacker();
  v42 = *(*(v43 - 8) + 64);
  v39 = v5;
  v40 = *(*(v43 - 8) + 80);
  v41 = (v5 + v40 + 17) & ~v40;
  v6 = v0 + v4;
  v7 = *(v0 + v4);

  v8 = v0 + v4 + *(v3 + 36);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  v10 = *(*(v9 - 1) + 48);
  if (!v10(v8, 1, v9))
  {
    v11 = *(v8 + 8);

    v12 = v9[9];
    v13 = sub_240759DC4();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v8 + v12, 1, v13))
    {
      (*(v14 + 8))(v8 + v12, v13);
    }

    v15 = v9[10];
    v16 = sub_240759E04();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v8 + v15, 1, v16))
    {
      (*(v17 + 8))(v8 + v15, v16);
    }

    v18 = v9[11];
    v19 = sub_240759E54();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v8 + v18, 1, v19))
    {
      (*(v20 + 8))(v8 + v18, v19);
    }
  }

  v21 = *(v6 + *(v3 + 40) + 8);

  v22 = *(v0 + v39);
  v23 = *(v0 + v39 + 8);
  v24 = *(v0 + v39 + 16);
  sub_2406718EC();
  v25 = *(v0 + v41);

  v26 = v0 + v41 + *(v43 + 36);
  if (!v10(v26, 1, v9))
  {
    v27 = *(v26 + 8);

    v28 = v9[9];
    v29 = sub_240759DC4();
    v30 = *(v29 - 8);
    if (!(*(v30 + 48))(v26 + v28, 1, v29))
    {
      (*(v30 + 8))(v26 + v28, v29);
    }

    v31 = v9[10];
    v32 = sub_240759E04();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(v26 + v31, 1, v32))
    {
      (*(v33 + 8))(v26 + v31, v32);
    }

    v34 = v9[11];
    v35 = sub_240759E54();
    v36 = *(v35 - 8);
    if (!(*(v36 + 48))(v26 + v34, 1, v35))
    {
      (*(v36 + 8))(v26 + v34, v35);
    }
  }

  v37 = *(v0 + v41 + *(v43 + 40) + 8);

  return MEMORY[0x2821FE8E8](v0, v41 + v42, v44 | v40 | 7);
}

uint64_t sub_240581620()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for RapportTransport();
  v36 = *(*(v3 - 8) + 80);
  v34 = *(*(v3 - 8) + 64);
  v35 = (v36 + 32) & ~v36;
  v4 = (v0 + v35);

  v5 = *(v0 + v35 + 16);

  if (*(v0 + v35 + 32))
  {
    v6 = v4[5];
  }

  if (v4[6])
  {
    v7 = v4[7];
  }

  if (v4[8])
  {
    v8 = v4[9];
  }

  v9 = v4 + *(v3 + 56);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  v11 = *(*(v10 - 1) + 48);
  if (!v11(v9, 1, v10))
  {
    v12 = *(v9 + 1);

    v13 = v10[9];
    v14 = sub_240759DC4();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&v9[v13], 1, v14))
    {
      (*(v15 + 8))(&v9[v13], v14);
    }

    v16 = v10[10];
    v17 = sub_240759E04();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(&v9[v16], 1, v17))
    {
      (*(v18 + 8))(&v9[v16], v17);
    }

    v19 = v10[11];
    v20 = sub_240759E54();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(&v9[v19], 1, v20))
    {
      (*(v21 + 8))(&v9[v19], v20);
    }
  }

  v22 = v4 + *(v3 + 60);
  if (!v11(v22, 1, v10))
  {
    v23 = *(v22 + 1);

    v24 = v10[9];
    v25 = sub_240759DC4();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(&v22[v24], 1, v25))
    {
      (*(v26 + 8))(&v22[v24], v25);
    }

    v27 = v10[10];
    v28 = sub_240759E04();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(&v22[v27], 1, v28))
    {
      (*(v29 + 8))(&v22[v27], v28);
    }

    v30 = v10[11];
    v31 = sub_240759E54();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(&v22[v30], 1, v31))
    {
      (*(v32 + 8))(&v22[v30], v31);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v35 + v34, v36 | 7);
}

uint64_t sub_240581AE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for RapportTransport();
  v36 = *(*(v3 - 8) + 80);
  v34 = *(*(v3 - 8) + 64);

  v35 = (v36 + 40) & ~v36;
  v4 = (v0 + v35);

  v5 = *(v0 + v35 + 16);

  if (*(v0 + v35 + 32))
  {
    v6 = v4[5];
  }

  if (v4[6])
  {
    v7 = v4[7];
  }

  if (v4[8])
  {
    v8 = v4[9];
  }

  v9 = v4 + *(v3 + 56);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  v11 = *(*(v10 - 1) + 48);
  if (!v11(v9, 1, v10))
  {
    v12 = *(v9 + 1);

    v13 = v10[9];
    v14 = sub_240759DC4();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&v9[v13], 1, v14))
    {
      (*(v15 + 8))(&v9[v13], v14);
    }

    v16 = v10[10];
    v17 = sub_240759E04();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(&v9[v16], 1, v17))
    {
      (*(v18 + 8))(&v9[v16], v17);
    }

    v19 = v10[11];
    v20 = sub_240759E54();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(&v9[v19], 1, v20))
    {
      (*(v21 + 8))(&v9[v19], v20);
    }
  }

  v22 = v4 + *(v3 + 60);
  if (!v11(v22, 1, v10))
  {
    v23 = *(v22 + 1);

    v24 = v10[9];
    v25 = sub_240759DC4();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(&v22[v24], 1, v25))
    {
      (*(v26 + 8))(&v22[v24], v25);
    }

    v27 = v10[10];
    v28 = sub_240759E04();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(&v22[v27], 1, v28))
    {
      (*(v29 + 8))(&v22[v27], v28);
    }

    v30 = v10[11];
    v31 = sub_240759E54();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(&v22[v30], 1, v31))
    {
      (*(v32 + 8))(&v22[v30], v31);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v35 + v34, v36 | 7);
}

uint64_t sub_240581FBC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240581FF4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = type metadata accessor for MessageUnpacker();
  v50 = *(*(v3 - 8) + 80);
  v4 = (v50 + 56) & ~v50;
  v44 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for MessagePacker();
  v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = *(*(v5 - 8) + 80);
  v49 = v5;
  v47 = (v45 + v48 + 17) & ~v48;
  v46 = *(*(v5 - 8) + 64);
  v6 = v0[2];
  swift_unknownObjectRelease();
  v7 = v0[6];

  v8 = v0 + v4;
  v9 = *(v0 + v4);

  v10 = v0 + v4 + *(v3 + 36);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  v12 = *(*(v11 - 1) + 48);
  if (!v12(v10, 1, v11))
  {
    v13 = *(v10 + 1);

    v14 = v11[9];
    v15 = sub_240759DC4();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&v10[v14], 1, v15))
    {
      (*(v16 + 8))(&v10[v14], v15);
    }

    v17 = v11[10];
    v18 = sub_240759E04();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(&v10[v17], 1, v18))
    {
      (*(v19 + 8))(&v10[v17], v18);
    }

    v20 = v11[11];
    v21 = sub_240759E54();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(&v10[v20], 1, v21))
    {
      (*(v22 + 8))(&v10[v20], v21);
    }
  }

  v23 = *&v8[*(v3 + 40) + 8];

  v24 = *(v0 + v44);

  v25 = *(v0 + v45);
  v26 = *(v0 + v45 + 8);
  v27 = *(v0 + v45 + 16);
  sub_2406718EC();
  v28 = *(v0 + v47);

  v29 = v0 + v47 + *(v49 + 36);
  if (!v12(v29, 1, v11))
  {
    v30 = *(v29 + 1);

    v31 = v11[9];
    v32 = sub_240759DC4();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(&v29[v31], 1, v32))
    {
      (*(v33 + 8))(&v29[v31], v32);
    }

    v34 = v11[10];
    v35 = sub_240759E04();
    v36 = *(v35 - 8);
    if (!(*(v36 + 48))(&v29[v34], 1, v35))
    {
      (*(v36 + 8))(&v29[v34], v35);
    }

    v37 = v11[11];
    v38 = sub_240759E54();
    v39 = *(v38 - 8);
    if (!(*(v39 + 48))(&v29[v37], 1, v38))
    {
      (*(v39 + 8))(&v29[v37], v38);
    }
  }

  v40 = (v46 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = *(v0 + v47 + *(v49 + 40) + 8);

  v42 = *(v0 + v40 + 8);

  return MEMORY[0x2821FE8E8](v0, v40 + 16, v50 | v48 | 7);
}

uint64_t sub_240582588()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2405825C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240582604()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24058264C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24058268C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_240582760()
{
  v1 = 0x646572696170;
  if (*v0 != 2)
  {
    v1 = 0x676E69736F6F6863;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0x7265766F63736964;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2405827D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24068A6D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_240582800()
{
  v1 = *(v0 + 40);
  if (v1 <= 0xFB)
  {
    sub_240604AE0(*(v0 + 16), *(v0 + 24), *(v0 + 32), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_240582858()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2405828B4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240582988()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2405829C8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240582A10()
{
  v99 = type metadata accessor for SetupContext();
  v1 = *(*(v99 - 8) + 80);
  v97 = *(*(v99 - 8) + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();

  v98 = (v1 + 40) & ~v1;
  v3 = v0 + v98;
  sub_240604AB8(*(v0 + v98 + 8), *(v0 + v98 + 16), *(v0 + v98 + 24), *(v0 + v98 + 32) | ((*(v0 + v98 + 36) | (*(v0 + v98 + 38) << 16)) << 32));
  v4 = *(v0 + v98 + 88);
  if (v4 <= 0xF9)
  {
    sub_2405AEA70(*(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), v4);
  }

  v5 = *(v3 + 112);

  v6 = *(v3 + 128);

  v7 = *(v3 + 160);

  sub_240604AE0(*(v3 + 184), *(v3 + 192), *(v3 + 200), *(v3 + 208));
  v8 = *(v3 + 216);

  v9 = *(v3 + 224);

  sub_240604AE0(*(v3 + 240), *(v3 + 248), *(v3 + 256), *(v3 + 264));
  v10 = *(v3 + 272);

  v11 = *(v3 + 288);
  if (v11 != 1)
  {

    v12 = *(v3 + 304);
    if (v12 >> 60 != 15)
    {
      sub_2405BCD98(*(v3 + 296), v12);
    }
  }

  if (*(v3 + 328))
  {

    v13 = *(v3 + 336);

    v14 = *(v3 + 344);
  }

  v15 = *(v3 + 360);

  v16 = *(v3 + 376);

  v17 = type metadata accessor for SetupModel();
  v18 = (v3 + *(v17 + 36));
  v19 = type metadata accessor for IdMSAccount();
  v20 = *(*(v19 - 1) + 48);
  if (!v20(v18, 1, v19))
  {
    v21 = *(v18 + 1);

    v22 = *(v18 + 3);

    v23 = *(v18 + 5);

    v24 = *(v18 + 7);

    v25 = *(v18 + 9);

    v26 = v19[5];
    v27 = sub_2407595A4();
    (*(*(v27 - 8) + 8))(&v18[v26], v27);
    v28 = &v18[v19[6]];
    v90 = v28[18];
    v93 = v28[19];
    sub_240604B08(*v28, v28[1], v28[2], v28[3], v28[4], v28[5], v28[6], v28[7], v28[8], v28[9], v28[10], v28[11], v28[12], v28[13], v28[14], v28[15], v28[16], v28[17]);
    v29 = *&v18[v19[7]];

    v30 = &v18[v19[8]];
    if (*v30 != 1)
    {
    }
  }

  v31 = type metadata accessor for AuthenticationModel(0);
  v32 = &v18[v31[5]];
  if (*(v32 + 1))
  {

    v33 = *(v32 + 3);

    v34 = *(v32 + 5);

    v35 = *(v32 + 7);

    v36 = *(v32 + 9);
  }

  v37 = *&v18[v31[7] + 8];

  v38 = *&v18[v31[8]];

  v39 = &v18[v31[10]];
  type metadata accessor for AuthenticationModel.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v96 = v1;
      v41 = *(v39 + 1);

      v42 = *(v39 + 3);

      v43 = *(v39 + 5);

      v44 = *(v39 + 7);

      v45 = *(v39 + 9);

      v46 = v19[5];
      v47 = sub_2407595A4();
      (*(*(v47 - 8) + 8))(&v39[v46], v47);
      v48 = &v39[v19[6]];
      v91 = v48[18];
      v94 = v48[19];
      sub_240604B08(*v48, v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v48[9], v48[10], v48[11], v48[12], v48[13], v48[14], v48[15], v48[16], v48[17]);
      v49 = *&v39[v19[7]];

      v50 = &v39[v19[8]];
      if (*v50 != 1)
      {
      }

      v1 = v96;
      break;
    case 2u:
    case 3u:
      v51 = *(v39 + 1);

      v52 = *(v39 + 3);

      v53 = *(v39 + 6);

      v54 = v39[96];
      if (v54 != 255)
      {
        sub_2405B0558(*(v39 + 8), *(v39 + 9), *(v39 + 10), *(v39 + 11), v54);
      }

      break;
    case 4u:
    case 5u:
    case 6u:

      if (*(v39 + 5) != 1)
      {

        v40 = *(v39 + 7);
      }

      break;
    case 7u:
    case 8u:

      break;
    case 9u:
    case 0xAu:

      break;
    case 0xBu:

      v56 = *(v39 + 2);

      break;
    case 0xCu:
    case 0xDu:
      v55 = *v39;

      break;
    default:
      break;
  }

  v57 = &v18[v31[11]];
  if (*v57)
  {
    v58 = *(v57 + 1);
  }

  v59 = (v3 + *(v17 + 40));
  if (!v20(v59, 1, v19))
  {
    v60 = *(v59 + 1);

    v61 = *(v59 + 3);

    v62 = *(v59 + 5);

    v63 = *(v59 + 7);

    v64 = *(v59 + 9);

    v65 = v19[5];
    v66 = sub_2407595A4();
    (*(*(v66 - 8) + 8))(&v59[v65], v66);
    v67 = &v59[v19[6]];
    v92 = v67[18];
    v95 = v67[19];
    sub_240604B08(*v67, v67[1], v67[2], v67[3], v67[4], v67[5], v67[6], v67[7], v67[8], v67[9], v67[10], v67[11], v67[12], v67[13], v67[14], v67[15], v67[16], v67[17]);
    v68 = *&v59[v19[7]];

    v69 = &v59[v19[8]];
    if (*v69 != 1)
    {
    }
  }

  v70 = type metadata accessor for SignInModel();
  v71 = &v59[v70[5]];
  if (*(v71 + 1))
  {

    v72 = *(v71 + 3);

    v73 = *(v71 + 5);

    v74 = *(v71 + 7);

    v75 = *(v71 + 9);

    v76 = *(v71 + 11);
    if (v76 >> 60 != 15)
    {
      sub_2405BCD98(*(v71 + 10), v76);
    }
  }

  v77 = *&v59[v70[6]];

  v78 = *&v59[v70[7]];

  v79 = &v59[v70[10]];
  if (*(v79 + 1))
  {

    v80 = *(v79 + 2);

    v81 = *(v79 + 3);
  }

  v82 = (v97 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = *&v59[v70[11] + 8];

  v84 = *&v59[v70[14] + 8];

  sub_240604C7C(*&v59[v70[16]], *&v59[v70[16] + 8], v59[v70[16] + 16]);
  v85 = *&v59[v70[17] + 8];

  v86 = &v59[v70[19]];
  sub_240604C90(*v86, *(v86 + 1), *(v86 + 2), *(v86 + 3), *(v86 + 4), *(v86 + 5), *(v86 + 6), *(v86 + 7), *(v86 + 8), *(v86 + 9), *(v86 + 10), *(v86 + 11), v86[96]);
  v87 = (v3 + *(v99 + 20));
  if (v87[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v87);
  }

  if (*(v0 + v82))
  {
    v88 = *(v0 + v82 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v82 + 16, v1 | 7);
}

uint64_t sub_2405831F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240583230()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0);
  v2 = *(*(v1 - 8) + 80);
  v102 = *(*(v1 - 8) + 64);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998);
  v3 = *(v105 - 8);
  v101 = *(v3 + 80);
  v104 = *(v3 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v103 = (v2 + 56) & ~v2;
  v106 = v1;
  v4 = v0 + v103 + *(v1 + 32);
  sub_240604AB8(*(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32) | ((*(v4 + 36) | (*(v4 + 38) << 16)) << 32));
  v5 = *(v4 + 88);
  if (v5 <= 0xF9)
  {
    sub_2405AEA70(*(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80), v5);
  }

  v6 = *(v4 + 112);

  v7 = *(v4 + 128);

  v8 = *(v4 + 160);

  sub_240604AE0(*(v4 + 184), *(v4 + 192), *(v4 + 200), *(v4 + 208));
  v9 = *(v4 + 216);

  v10 = *(v4 + 224);

  sub_240604AE0(*(v4 + 240), *(v4 + 248), *(v4 + 256), *(v4 + 264));
  v11 = *(v4 + 272);

  v12 = *(v4 + 288);
  if (v12 != 1)
  {

    v13 = *(v4 + 304);
    if (v13 >> 60 != 15)
    {
      sub_2405BCD98(*(v4 + 296), v13);
    }
  }

  if (*(v4 + 328))
  {

    v14 = *(v4 + 336);

    v15 = *(v4 + 344);
  }

  v16 = *(v4 + 360);

  v17 = *(v4 + 376);

  v18 = type metadata accessor for SetupModel();
  v19 = (v4 + *(v18 + 36));
  v20 = type metadata accessor for IdMSAccount();
  v21 = (*(v20 - 1) + 48);
  v100 = *v21;
  if (!(*v21)(v19, 1, v20))
  {
    v22 = *(v19 + 1);

    v23 = *(v19 + 3);

    v24 = *(v19 + 5);

    v25 = *(v19 + 7);

    v26 = *(v19 + 9);

    v27 = v2;
    v28 = v20[5];
    v29 = sub_2407595A4();
    v30 = &v19[v28];
    v2 = v27;
    (*(*(v29 - 8) + 8))(v30, v29);
    v31 = &v19[v20[6]];
    v93 = v31[18];
    v96 = v31[19];
    sub_240604B08(*v31, v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v31[16], v31[17]);
    v32 = *&v19[v20[7]];

    v33 = &v19[v20[8]];
    if (*v33 != 1)
    {
    }
  }

  v34 = type metadata accessor for AuthenticationModel(0);
  v35 = &v19[v34[5]];
  if (*(v35 + 1))
  {

    v36 = *(v35 + 3);

    v37 = *(v35 + 5);

    v38 = *(v35 + 7);

    v39 = *(v35 + 9);
  }

  v40 = *&v19[v34[7] + 8];

  v41 = *&v19[v34[8]];

  v42 = &v19[v34[10]];
  type metadata accessor for AuthenticationModel.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v99 = v2;
      v44 = *(v42 + 1);

      v45 = *(v42 + 3);

      v46 = *(v42 + 5);

      v47 = *(v42 + 7);

      v48 = *(v42 + 9);

      v49 = v20[5];
      v50 = sub_2407595A4();
      (*(*(v50 - 8) + 8))(&v42[v49], v50);
      v51 = &v42[v20[6]];
      v94 = v51[18];
      v97 = v51[19];
      sub_240604B08(*v51, v51[1], v51[2], v51[3], v51[4], v51[5], v51[6], v51[7], v51[8], v51[9], v51[10], v51[11], v51[12], v51[13], v51[14], v51[15], v51[16], v51[17]);
      v52 = *&v42[v20[7]];

      v53 = &v42[v20[8]];
      if (*v53 != 1)
      {
      }

      v2 = v99;
      break;
    case 2u:
    case 3u:
      v54 = *(v42 + 1);

      v55 = *(v42 + 3);

      v56 = *(v42 + 6);

      v57 = v42[96];
      if (v57 != 255)
      {
        sub_2405B0558(*(v42 + 8), *(v42 + 9), *(v42 + 10), *(v42 + 11), v57);
      }

      break;
    case 4u:
    case 5u:
    case 6u:

      if (*(v42 + 5) != 1)
      {

        v43 = *(v42 + 7);
      }

      break;
    case 7u:
    case 8u:

      break;
    case 9u:
    case 0xAu:

      break;
    case 0xBu:

      v59 = *(v42 + 2);

      break;
    case 0xCu:
    case 0xDu:
      v58 = *v42;

      break;
    default:
      break;
  }

  v60 = &v19[v34[11]];
  if (*v60)
  {
    v61 = *(v60 + 1);
  }

  v62 = (v4 + *(v18 + 40));
  if (!v100(v62, 1, v20))
  {
    v63 = *(v62 + 1);

    v64 = *(v62 + 3);

    v65 = *(v62 + 5);

    v66 = *(v62 + 7);

    v67 = *(v62 + 9);

    v68 = v20[5];
    v69 = sub_2407595A4();
    (*(*(v69 - 8) + 8))(&v62[v68], v69);
    v70 = &v62[v20[6]];
    v95 = v70[18];
    v98 = v70[19];
    sub_240604B08(*v70, v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7], v70[8], v70[9], v70[10], v70[11], v70[12], v70[13], v70[14], v70[15], v70[16], v70[17]);
    v71 = *&v62[v20[7]];

    v72 = &v62[v20[8]];
    if (*v72 != 1)
    {
    }
  }

  v73 = type metadata accessor for SignInModel();
  v74 = &v62[v73[5]];
  if (*(v74 + 1))
  {

    v75 = *(v74 + 3);

    v76 = *(v74 + 5);

    v77 = *(v74 + 7);

    v78 = *(v74 + 9);

    v79 = *(v74 + 11);
    if (v79 >> 60 != 15)
    {
      sub_2405BCD98(*(v74 + 10), v79);
    }
  }

  v80 = *&v62[v73[6]];

  v81 = *&v62[v73[7]];

  v82 = &v62[v73[10]];
  if (*(v82 + 1))
  {

    v83 = *(v82 + 2);

    v84 = *(v82 + 3);
  }

  v85 = v2 | v101;
  v86 = (v103 + v102 + v101) & ~v101;
  v87 = *&v62[v73[11] + 8];

  v88 = *&v62[v73[14] + 8];

  sub_240604C7C(*&v62[v73[16]], *&v62[v73[16] + 8], v62[v73[16] + 16]);
  v89 = *&v62[v73[17] + 8];

  v90 = &v62[v73[19]];
  sub_240604C90(*v90, *(v90 + 1), *(v90 + 2), *(v90 + 3), *(v90 + 4), *(v90 + 5), *(v90 + 6), *(v90 + 7), *(v90 + 8), *(v90 + 9), *(v90 + 10), *(v90 + 11), v90[96]);
  v91 = *(v0 + v103 + *(v106 + 36));

  (*(v3 + 8))(v0 + v86, v105);

  return MEMORY[0x2821FE8E8](v0, v86 + v104, v85 | 7);
}

uint64_t sub_240583ABC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0);
  v100 = *(*(v2 - 8) + 80);
  v98 = *(*(v2 - 8) + 64);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998);
  v3 = *(v103 - 8);
  v97 = *(v3 + 80);
  v102 = *(v3 + 64);
  v99 = (v100 + 16) & ~v100;
  v104 = v2;
  v101 = v0 + v99;
  v4 = v0 + v99 + *(v2 + 32);
  sub_240604AB8(*(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32) | ((*(v4 + 36) | (*(v4 + 38) << 16)) << 32));
  v5 = *(v4 + 88);
  if (v5 <= 0xF9)
  {
    sub_2405AEA70(*(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80), v5);
  }

  v6 = *(v4 + 112);

  v7 = *(v4 + 128);

  v8 = *(v4 + 160);

  sub_240604AE0(*(v4 + 184), *(v4 + 192), *(v4 + 200), *(v4 + 208));
  v9 = *(v4 + 216);

  v10 = *(v4 + 224);

  sub_240604AE0(*(v4 + 240), *(v4 + 248), *(v4 + 256), *(v4 + 264));
  v11 = *(v4 + 272);

  v12 = *(v4 + 288);
  if (v12 != 1)
  {

    v13 = *(v4 + 304);
    if (v13 >> 60 != 15)
    {
      sub_2405BCD98(*(v4 + 296), v13);
    }
  }

  if (*(v4 + 328))
  {

    v14 = *(v4 + 336);

    v15 = *(v4 + 344);
  }

  v16 = *(v4 + 360);

  v17 = *(v4 + 376);

  v18 = type metadata accessor for SetupModel();
  v19 = (v4 + *(v18 + 36));
  v20 = type metadata accessor for IdMSAccount();
  v21 = *(*(v20 - 1) + 48);
  if (!v21(v19, 1, v20))
  {
    v22 = *(v19 + 1);

    v23 = *(v19 + 3);

    v24 = *(v19 + 5);

    v25 = *(v19 + 7);

    v26 = *(v19 + 9);

    v27 = v20[5];
    v28 = sub_2407595A4();
    (*(*(v28 - 8) + 8))(&v19[v27], v28);
    v29 = &v19[v20[6]];
    v90 = v29[18];
    v93 = v29[19];
    sub_240604B08(*v29, v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10], v29[11], v29[12], v29[13], v29[14], v29[15], v29[16], v29[17]);
    v30 = *&v19[v20[7]];

    v31 = &v19[v20[8]];
    if (*v31 != 1)
    {
    }
  }

  v32 = type metadata accessor for AuthenticationModel(0);
  v33 = &v19[v32[5]];
  if (*(v33 + 1))
  {

    v34 = *(v33 + 3);

    v35 = *(v33 + 5);

    v36 = *(v33 + 7);

    v37 = *(v33 + 9);
  }

  v38 = *&v19[v32[7] + 8];

  v39 = *&v19[v32[8]];

  v40 = &v19[v32[10]];
  type metadata accessor for AuthenticationModel.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v96 = v1;
      v42 = *(v40 + 1);

      v43 = *(v40 + 3);

      v44 = *(v40 + 5);

      v45 = *(v40 + 7);

      v46 = *(v40 + 9);

      v47 = v20[5];
      v48 = sub_2407595A4();
      (*(*(v48 - 8) + 8))(&v40[v47], v48);
      v49 = &v40[v20[6]];
      v91 = v49[18];
      v94 = v49[19];
      sub_240604B08(*v49, v49[1], v49[2], v49[3], v49[4], v49[5], v49[6], v49[7], v49[8], v49[9], v49[10], v49[11], v49[12], v49[13], v49[14], v49[15], v49[16], v49[17]);
      v50 = *&v40[v20[7]];

      v51 = &v40[v20[8]];
      if (*v51 != 1)
      {
      }

      v1 = v96;
      break;
    case 2u:
    case 3u:
      v52 = *(v40 + 1);

      v53 = *(v40 + 3);

      v54 = *(v40 + 6);

      v55 = v40[96];
      if (v55 != 255)
      {
        sub_2405B0558(*(v40 + 8), *(v40 + 9), *(v40 + 10), *(v40 + 11), v55);
      }

      break;
    case 4u:
    case 5u:
    case 6u:

      if (*(v40 + 5) != 1)
      {

        v41 = *(v40 + 7);
      }

      break;
    case 7u:
    case 8u:

      break;
    case 9u:
    case 0xAu:

      break;
    case 0xBu:

      v57 = *(v40 + 2);

      break;
    case 0xCu:
    case 0xDu:
      v56 = *v40;

      break;
    default:
      break;
  }

  v58 = &v19[v32[11]];
  if (*v58)
  {
    v59 = *(v58 + 1);
  }

  v60 = (v4 + *(v18 + 40));
  if (!v21(v60, 1, v20))
  {
    v61 = *(v60 + 1);

    v62 = *(v60 + 3);

    v63 = *(v60 + 5);

    v64 = *(v60 + 7);

    v65 = *(v60 + 9);

    v66 = v20[5];
    v67 = sub_2407595A4();
    (*(*(v67 - 8) + 8))(&v60[v66], v67);
    v68 = &v60[v20[6]];
    v92 = v68[18];
    v95 = v68[19];
    sub_240604B08(*v68, v68[1], v68[2], v68[3], v68[4], v68[5], v68[6], v68[7], v68[8], v68[9], v68[10], v68[11], v68[12], v68[13], v68[14], v68[15], v68[16], v68[17]);
    v69 = *&v60[v20[7]];

    v70 = &v60[v20[8]];
    if (*v70 != 1)
    {
    }
  }

  v71 = type metadata accessor for SignInModel();
  v72 = &v60[v71[5]];
  if (*(v72 + 1))
  {

    v73 = *(v72 + 3);

    v74 = *(v72 + 5);

    v75 = *(v72 + 7);

    v76 = *(v72 + 9);

    v77 = *(v72 + 11);
    if (v77 >> 60 != 15)
    {
      sub_2405BCD98(*(v72 + 10), v77);
    }
  }

  v78 = *&v60[v71[6]];

  v79 = *&v60[v71[7]];

  v80 = &v60[v71[10]];
  if (*(v80 + 1))
  {

    v81 = *(v80 + 2);

    v82 = *(v80 + 3);
  }

  v83 = (v99 + v98 + v97) & ~v97;
  v84 = *&v60[v71[11] + 8];

  v85 = *&v60[v71[14] + 8];

  sub_240604C7C(*&v60[v71[16]], *&v60[v71[16] + 8], v60[v71[16] + 16]);
  v86 = *&v60[v71[17] + 8];

  v87 = &v60[v71[19]];
  sub_240604C90(*v87, *(v87 + 1), *(v87 + 2), *(v87 + 3), *(v87 + 4), *(v87 + 5), *(v87 + 6), *(v87 + 7), *(v87 + 8), *(v87 + 9), *(v87 + 10), *(v87 + 11), v87[96]);
  v88 = *(v101 + *(v104 + 36));

  (*(v3 + 8))(v1 + v83, v103);

  return MEMORY[0x2821FE8E8](v1, v83 + v102, v100 | v97 | 7);
}

uint64_t sub_240584340()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  if (*(v0 + 32))
  {

    v2 = *(v0 + 48);

    v3 = *(v0 + 64);

    if (*(v0 + 80))
    {

      v4 = *(v0 + 88);

      v5 = *(v0 + 96);
    }

    v6 = *(v0 + 104);
  }

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2405843C8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_240584414()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24058444C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8B8, &qword_2407749F8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v102 = type metadata accessor for SetupContext();
  v104 = *(*(v102 - 8) + 80);
  v5 = (v3 + v4 + v104) & ~v104;
  v101 = *(*(v102 - 8) + 64);
  v6 = *(v0 + 16);

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = v0 + v5;
  sub_240604AB8(*(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24), *(v0 + v5 + 32) | ((*(v0 + v5 + 36) | (*(v0 + v5 + 38) << 16)) << 32));
  v10 = *(v0 + v5 + 88);
  if (v10 <= 0xF9)
  {
    sub_2405AEA70(*(v9 + 40), *(v9 + 48), *(v9 + 56), *(v9 + 64), *(v9 + 72), *(v9 + 80), v10);
  }

  v11 = *(v9 + 112);

  v12 = *(v9 + 128);

  v13 = *(v9 + 160);

  sub_240604AE0(*(v9 + 184), *(v9 + 192), *(v9 + 200), *(v9 + 208));
  v14 = *(v9 + 216);

  v15 = *(v9 + 224);

  sub_240604AE0(*(v9 + 240), *(v9 + 248), *(v9 + 256), *(v9 + 264));
  v16 = *(v9 + 272);

  v17 = *(v9 + 288);
  if (v17 != 1)
  {

    v18 = *(v9 + 304);
    if (v18 >> 60 != 15)
    {
      sub_2405BCD98(*(v9 + 296), v18);
    }
  }

  v103 = v5;
  if (*(v9 + 328))
  {

    v19 = *(v9 + 336);

    v20 = *(v9 + 344);
  }

  v21 = *(v9 + 360);

  v22 = *(v9 + 376);

  v23 = type metadata accessor for SetupModel();
  v24 = (v9 + *(v23 + 36));
  v25 = type metadata accessor for IdMSAccount();
  v26 = *(*(v25 - 1) + 48);
  if (!v26(v24, 1, v25))
  {
    v27 = *(v24 + 1);

    v28 = *(v24 + 3);

    v29 = *(v24 + 5);

    v30 = *(v24 + 7);

    v31 = *(v24 + 9);

    v32 = v25[5];
    v33 = sub_2407595A4();
    (*(*(v33 - 8) + 8))(&v24[v32], v33);
    v34 = &v24[v25[6]];
    v94 = v34[18];
    v97 = v34[19];
    sub_240604B08(*v34, v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8], v34[9], v34[10], v34[11], v34[12], v34[13], v34[14], v34[15], v34[16], v34[17]);
    v35 = *&v24[v25[7]];

    v36 = &v24[v25[8]];
    if (*v36 != 1)
    {
    }
  }

  v37 = type metadata accessor for AuthenticationModel(0);
  v38 = &v24[v37[5]];
  if (*(v38 + 1))
  {

    v39 = *(v38 + 3);

    v40 = *(v38 + 5);

    v41 = *(v38 + 7);

    v42 = *(v38 + 9);
  }

  v43 = *&v24[v37[7] + 8];

  v44 = *&v24[v37[8]];

  v45 = &v24[v37[10]];
  type metadata accessor for AuthenticationModel.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v100 = v2;
      v47 = *(v45 + 1);

      v48 = *(v45 + 3);

      v49 = *(v45 + 5);

      v50 = *(v45 + 7);

      v51 = *(v45 + 9);

      v52 = v25[5];
      v53 = sub_2407595A4();
      (*(*(v53 - 8) + 8))(&v45[v52], v53);
      v54 = &v45[v25[6]];
      v95 = v54[18];
      v98 = v54[19];
      sub_240604B08(*v54, v54[1], v54[2], v54[3], v54[4], v54[5], v54[6], v54[7], v54[8], v54[9], v54[10], v54[11], v54[12], v54[13], v54[14], v54[15], v54[16], v54[17]);
      v55 = *&v45[v25[7]];

      v56 = &v45[v25[8]];
      if (*v56 != 1)
      {
      }

      v2 = v100;
      break;
    case 2u:
    case 3u:
      v57 = *(v45 + 1);

      v58 = *(v45 + 3);

      v59 = *(v45 + 6);

      v60 = v45[96];
      if (v60 != 255)
      {
        sub_2405B0558(*(v45 + 8), *(v45 + 9), *(v45 + 10), *(v45 + 11), v60);
      }

      break;
    case 4u:
    case 5u:
    case 6u:

      if (*(v45 + 5) != 1)
      {

        v46 = *(v45 + 7);
      }

      break;
    case 7u:
    case 8u:

      break;
    case 9u:
    case 0xAu:

      break;
    case 0xBu:

      v62 = *(v45 + 2);

      break;
    case 0xCu:
    case 0xDu:
      v61 = *v45;

      break;
    default:
      break;
  }

  v63 = &v24[v37[11]];
  if (*v63)
  {
    v64 = *(v63 + 1);
  }

  v65 = (v9 + *(v23 + 40));
  if (!v26(v65, 1, v25))
  {
    v66 = *(v65 + 1);

    v67 = *(v65 + 3);

    v68 = *(v65 + 5);

    v69 = *(v65 + 7);

    v70 = *(v65 + 9);

    v71 = v25[5];
    v72 = sub_2407595A4();
    (*(*(v72 - 8) + 8))(&v65[v71], v72);
    v73 = &v65[v25[6]];
    v96 = v73[18];
    v99 = v73[19];
    sub_240604B08(*v73, v73[1], v73[2], v73[3], v73[4], v73[5], v73[6], v73[7], v73[8], v73[9], v73[10], v73[11], v73[12], v73[13], v73[14], v73[15], v73[16], v73[17]);
    v74 = *&v65[v25[7]];

    v75 = &v65[v25[8]];
    if (*v75 != 1)
    {
    }
  }

  v76 = type metadata accessor for SignInModel();
  v77 = &v65[v76[5]];
  if (*(v77 + 1))
  {

    v78 = *(v77 + 3);

    v79 = *(v77 + 5);

    v80 = *(v77 + 7);

    v81 = *(v77 + 9);

    v82 = *(v77 + 11);
    if (v82 >> 60 != 15)
    {
      sub_2405BCD98(*(v77 + 10), v82);
    }
  }

  v83 = *&v65[v76[6]];

  v84 = *&v65[v76[7]];

  v85 = &v65[v76[10]];
  if (*(v85 + 1))
  {

    v86 = *(v85 + 2);

    v87 = *(v85 + 3);
  }

  v88 = *&v65[v76[11] + 8];

  v89 = *&v65[v76[14] + 8];

  sub_240604C7C(*&v65[v76[16]], *&v65[v76[16] + 8], v65[v76[16] + 16]);
  v90 = *&v65[v76[17] + 8];

  v91 = &v65[v76[19]];
  sub_240604C90(*v91, *(v91 + 1), *(v91 + 2), *(v91 + 3), *(v91 + 4), *(v91 + 5), *(v91 + 6), *(v91 + 7), *(v91 + 8), *(v91 + 9), *(v91 + 10), *(v91 + 11), v91[96]);
  v92 = (v9 + *(v102 + 20));
  if (v92[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v92);
  }

  return MEMORY[0x2821FE8E8](v0, v103 + v101, v2 | v104 | 7);
}

uint64_t sub_240584CF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8C8, &qword_240774A08);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_240584DDC()
{
  v1 = sub_240759C44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v108 = type metadata accessor for SetupContext();
  v110 = *(*(v108 - 8) + 80);
  v6 = (v4 + v5 + v110) & ~v110;
  v107 = *(*(v108 - 8) + 64);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998);
  v7 = *(v106 - 8);
  v104 = *(v7 + 80);
  v105 = *(v7 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v109 = v6;
  v10 = v0 + v6;
  sub_240604AB8(*(v0 + v6 + 8), *(v0 + v6 + 16), *(v0 + v6 + 24), *(v0 + v6 + 32) | ((*(v0 + v6 + 36) | (*(v0 + v6 + 38) << 16)) << 32));
  v11 = *(v0 + v6 + 88);
  if (v11 <= 0xF9)
  {
    sub_2405AEA70(*(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72), *(v10 + 80), v11);
  }

  v12 = *(v10 + 112);

  v13 = *(v10 + 128);

  v14 = *(v10 + 160);

  sub_240604AE0(*(v10 + 184), *(v10 + 192), *(v10 + 200), *(v10 + 208));
  v15 = *(v10 + 216);

  v16 = *(v10 + 224);

  sub_240604AE0(*(v10 + 240), *(v10 + 248), *(v10 + 256), *(v10 + 264));
  v17 = *(v10 + 272);

  v18 = *(v10 + 288);
  if (v18 != 1)
  {

    v19 = *(v10 + 304);
    if (v19 >> 60 != 15)
    {
      sub_2405BCD98(*(v10 + 296), v19);
    }
  }

  if (*(v10 + 328))
  {

    v20 = *(v10 + 336);

    v21 = *(v10 + 344);
  }

  v22 = *(v10 + 360);

  v23 = *(v10 + 376);

  v24 = type metadata accessor for SetupModel();
  v25 = (v10 + *(v24 + 36));
  v26 = type metadata accessor for IdMSAccount();
  v27 = (*(v26 - 1) + 48);
  v103 = *v27;
  if (!(*v27)(v25, 1, v26))
  {
    v28 = *(v25 + 1);

    v29 = *(v25 + 3);

    v30 = *(v25 + 5);

    v31 = *(v25 + 7);

    v32 = *(v25 + 9);

    v33 = v26[5];
    v34 = sub_2407595A4();
    (*(*(v34 - 8) + 8))(&v25[v33], v34);
    v35 = &v25[v26[6]];
    v96 = v35[18];
    v99 = v35[19];
    sub_240604B08(*v35, v35[1], v35[2], v35[3], v35[4], v35[5], v35[6], v35[7], v35[8], v35[9], v35[10], v35[11], v35[12], v35[13], v35[14], v35[15], v35[16], v35[17]);
    v36 = *&v25[v26[7]];

    v37 = &v25[v26[8]];
    if (*v37 != 1)
    {
    }
  }

  v38 = type metadata accessor for AuthenticationModel(0);
  v39 = &v25[v38[5]];
  if (*(v39 + 1))
  {

    v40 = *(v39 + 3);

    v41 = *(v39 + 5);

    v42 = *(v39 + 7);

    v43 = *(v39 + 9);
  }

  v44 = *&v25[v38[7] + 8];

  v45 = *&v25[v38[8]];

  v46 = &v25[v38[10]];
  type metadata accessor for AuthenticationModel.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v102 = v3;
      v48 = *(v46 + 1);

      v49 = *(v46 + 3);

      v50 = *(v46 + 5);

      v51 = *(v46 + 7);

      v52 = *(v46 + 9);

      v53 = v26[5];
      v54 = sub_2407595A4();
      (*(*(v54 - 8) + 8))(&v46[v53], v54);
      v55 = &v46[v26[6]];
      v97 = v55[18];
      v100 = v55[19];
      sub_240604B08(*v55, v55[1], v55[2], v55[3], v55[4], v55[5], v55[6], v55[7], v55[8], v55[9], v55[10], v55[11], v55[12], v55[13], v55[14], v55[15], v55[16], v55[17]);
      v56 = *&v46[v26[7]];

      v57 = &v46[v26[8]];
      if (*v57 != 1)
      {
      }

      v3 = v102;
      break;
    case 2u:
    case 3u:
      v58 = *(v46 + 1);

      v59 = *(v46 + 3);

      v60 = *(v46 + 6);

      v61 = v46[96];
      if (v61 != 255)
      {
        sub_2405B0558(*(v46 + 8), *(v46 + 9), *(v46 + 10), *(v46 + 11), v61);
      }

      break;
    case 4u:
    case 5u:
    case 6u:

      if (*(v46 + 5) != 1)
      {

        v47 = *(v46 + 7);
      }

      break;
    case 7u:
    case 8u:

      break;
    case 9u:
    case 0xAu:

      break;
    case 0xBu:

      v63 = *(v46 + 2);

      break;
    case 0xCu:
    case 0xDu:
      v62 = *v46;

      break;
    default:
      break;
  }

  v64 = &v25[v38[11]];
  if (*v64)
  {
    v65 = *(v64 + 1);
  }

  v66 = (v10 + *(v24 + 40));
  if (!v103(v66, 1, v26))
  {
    v67 = *(v66 + 1);

    v68 = *(v66 + 3);

    v69 = *(v66 + 5);

    v70 = *(v66 + 7);

    v71 = *(v66 + 9);

    v72 = v26[5];
    v73 = sub_2407595A4();
    (*(*(v73 - 8) + 8))(&v66[v72], v73);
    v74 = &v66[v26[6]];
    v98 = v74[18];
    v101 = v74[19];
    sub_240604B08(*v74, v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8], v74[9], v74[10], v74[11], v74[12], v74[13], v74[14], v74[15], v74[16], v74[17]);
    v75 = *&v66[v26[7]];

    v76 = &v66[v26[8]];
    if (*v76 != 1)
    {
    }
  }

  v77 = type metadata accessor for SignInModel();
  v78 = &v66[v77[5]];
  if (*(v78 + 1))
  {

    v79 = *(v78 + 3);

    v80 = *(v78 + 5);

    v81 = *(v78 + 7);

    v82 = *(v78 + 9);

    v83 = *(v78 + 11);
    if (v83 >> 60 != 15)
    {
      sub_2405BCD98(*(v78 + 10), v83);
    }
  }

  v84 = *&v66[v77[6]];

  v85 = *&v66[v77[7]];

  v86 = &v66[v77[10]];
  if (*(v86 + 1))
  {

    v87 = *(v86 + 2);

    v88 = *(v86 + 3);
  }

  v89 = *&v66[v77[11] + 8];

  v90 = *&v66[v77[14] + 8];

  sub_240604C7C(*&v66[v77[16]], *&v66[v77[16] + 8], v66[v77[16] + 16]);
  v91 = *&v66[v77[17] + 8];

  v92 = &v66[v77[19]];
  sub_240604C90(*v92, *(v92 + 1), *(v92 + 2), *(v92 + 3), *(v92 + 4), *(v92 + 5), *(v92 + 6), *(v92 + 7), *(v92 + 8), *(v92 + 9), *(v92 + 10), *(v92 + 11), v92[96]);
  v93 = (v10 + *(v108 + 20));
  if (v93[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v93);
  }

  v94 = (v109 + v107 + v104) & ~v104;
  (*(v7 + 8))(v0 + v94, v106);

  return MEMORY[0x2821FE8E8](v0, v94 + v105, v3 | v110 | v104 | 7);
}

uint64_t sub_240585728()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240585760()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 72) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 8);

  (*(v4 + 8))(&v0[v6], AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_240585844()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for MessageUnpacker();
  v42 = *(*(v3 - 8) + 80);
  v4 = (v42 + 32) & ~v42;
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = type metadata accessor for MessagePacker();
  v40 = *(*(v41 - 8) + 64);
  v37 = v5;
  v38 = *(*(v41 - 8) + 80);
  v39 = (v5 + v38 + 16) & ~v38;
  v6 = v0 + v4;
  v7 = *(v0 + v4);

  v8 = v0 + v4 + *(v3 + 36);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  v10 = *(*(v9 - 1) + 48);
  if (!v10(v8, 1, v9))
  {
    v11 = *(v8 + 8);

    v12 = v9[9];
    v13 = sub_240759DC4();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v8 + v12, 1, v13))
    {
      (*(v14 + 8))(v8 + v12, v13);
    }

    v15 = v9[10];
    v16 = sub_240759E04();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v8 + v15, 1, v16))
    {
      (*(v17 + 8))(v8 + v15, v16);
    }

    v18 = v9[11];
    v19 = sub_240759E54();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v8 + v18, 1, v19))
    {
      (*(v20 + 8))(v8 + v18, v19);
    }
  }

  v21 = *(v6 + *(v3 + 40) + 8);

  v22 = *(v0 + v37 + 8);

  v23 = *(v0 + v39);

  v24 = v0 + v39 + *(v41 + 36);
  if (!v10(v24, 1, v9))
  {
    v25 = *(v24 + 8);

    v26 = v9[9];
    v27 = sub_240759DC4();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v24 + v26, 1, v27))
    {
      (*(v28 + 8))(v24 + v26, v27);
    }

    v29 = v9[10];
    v30 = sub_240759E04();
    v31 = *(v30 - 8);
    if (!(*(v31 + 48))(v24 + v29, 1, v30))
    {
      (*(v31 + 8))(v24 + v29, v30);
    }

    v32 = v9[11];
    v33 = sub_240759E54();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v24 + v32, 1, v33))
    {
      (*(v34 + 8))(v24 + v32, v33);
    }
  }

  v35 = *(v0 + v39 + *(v41 + 40) + 8);

  return MEMORY[0x2821FE8E8](v0, v39 + v40, v42 | v38 | 7);
}

uint64_t sub_240585D94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for MessageSessionTransport();
  v35 = *(*(v3 - 8) + 80);
  v33 = *(*(v3 - 8) + 64);
  v34 = (v35 + 32) & ~v35;
  v4 = (v0 + v34);

  v5 = *(v0 + v34 + 24);

  if (*(v0 + v34 + 32))
  {
    v6 = v4[5];
  }

  if (v4[6])
  {
    v7 = v4[7];
  }

  v8 = v4 + *(v3 + 52);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  v10 = *(*(v9 - 1) + 48);
  if (!v10(v8, 1, v9))
  {
    v11 = *(v8 + 1);

    v12 = v9[9];
    v13 = sub_240759DC4();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(&v8[v12], 1, v13))
    {
      (*(v14 + 8))(&v8[v12], v13);
    }

    v15 = v9[10];
    v16 = sub_240759E04();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(&v8[v15], 1, v16))
    {
      (*(v17 + 8))(&v8[v15], v16);
    }

    v18 = v9[11];
    v19 = sub_240759E54();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(&v8[v18], 1, v19))
    {
      (*(v20 + 8))(&v8[v18], v19);
    }
  }

  v21 = v4 + *(v3 + 56);
  if (!v10(v21, 1, v9))
  {
    v22 = *(v21 + 1);

    v23 = v9[9];
    v24 = sub_240759DC4();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(&v21[v23], 1, v24))
    {
      (*(v25 + 8))(&v21[v23], v24);
    }

    v26 = v9[10];
    v27 = sub_240759E04();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(&v21[v26], 1, v27))
    {
      (*(v28 + 8))(&v21[v26], v27);
    }

    v29 = v9[11];
    v30 = sub_240759E54();
    v31 = *(v30 - 8);
    if (!(*(v31 + 48))(&v21[v29], 1, v30))
    {
      (*(v31 + 8))(&v21[v29], v30);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v34 + v33, v35 | 7);
}

uint64_t sub_240586244(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71C8, &unk_240762450);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_240586300(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71C8, &unk_240762450);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2405863B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for MessageSessionTransport();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(v9 + 48);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for MessagePacker();
    if (*(*(v13 - 8) + 84) == a2)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = *(a3 + 36);
    }

    else
    {
      v16 = type metadata accessor for MessageUnpacker();
      if (*(*(v16 - 8) + 84) == a2)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = *(a3 + 40);
      }

      else
      {
        v17 = sub_2407597B4();
        if (*(*(v17 - 8) + 84) != a2)
        {
          v19 = *(a1 + *(a3 + 48));
          if (v19 >= 2)
          {
            return ((v19 + 2147483646) & 0x7FFFFFFF) + 1;
          }

          else
          {
            return 0;
          }
        }

        v10 = v17;
        v14 = *(v17 - 8);
        v15 = *(a3 + 44);
      }
    }

    v11 = *(v14 + 48);
    v12 = a1 + v15;
  }

  return v11(v12, a2, v10);
}

uint64_t sub_240586584(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  v10 = type metadata accessor for MessageSessionTransport();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = *(v11 + 56);
    v14 = a1;
  }

  else
  {
    v15 = type metadata accessor for MessagePacker();
    if (*(*(v15 - 8) + 84) == a3)
    {
      v12 = v15;
      v16 = *(v15 - 8);
      v17 = *(a4 + 36);
    }

    else
    {
      v18 = type metadata accessor for MessageUnpacker();
      if (*(*(v18 - 8) + 84) == a3)
      {
        v12 = v18;
        v16 = *(v18 - 8);
        v17 = *(a4 + 40);
      }

      else
      {
        result = sub_2407597B4();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + *(a4 + 48)) = a2 + 1;
          return result;
        }

        v12 = result;
        v16 = *(result - 8);
        v17 = *(a4 + 44);
      }
    }

    v13 = *(v16 + 56);
    v14 = a1 + v17;
  }

  return v13(v14, a2, a2, v12);
}

uint64_t sub_240586744()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD90, &unk_240774ED0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2405867D8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240586810()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = type metadata accessor for MessageUnpacker();
  v47 = *(*(v3 - 8) + 80);
  v4 = (v47 + 48) & ~v47;
  v41 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for MessagePacker();
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v45 = *(*(v5 - 8) + 80);
  v46 = v5;
  v44 = (v42 + v45 + 16) & ~v45;
  v43 = *(*(v5 - 8) + 64);
  v6 = v0[2];
  swift_unknownObjectRelease();
  v7 = v0 + v4;
  v8 = *(v0 + v4);

  v9 = v0 + v4 + *(v3 + 36);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  v11 = *(*(v10 - 1) + 48);
  if (!v11(v9, 1, v10))
  {
    v12 = *(v9 + 1);

    v13 = v10[9];
    v14 = sub_240759DC4();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&v9[v13], 1, v14))
    {
      (*(v15 + 8))(&v9[v13], v14);
    }

    v16 = v10[10];
    v17 = sub_240759E04();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(&v9[v16], 1, v17))
    {
      (*(v18 + 8))(&v9[v16], v17);
    }

    v19 = v10[11];
    v20 = sub_240759E54();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(&v9[v19], 1, v20))
    {
      (*(v21 + 8))(&v9[v19], v20);
    }
  }

  v22 = *&v7[*(v3 + 40) + 8];

  v23 = *(v0 + v41);

  v24 = *(v0 + v42 + 8);

  v25 = *(v0 + v44);

  v26 = v0 + v44 + *(v46 + 36);
  if (!v11(v26, 1, v10))
  {
    v27 = *(v26 + 1);

    v28 = v10[9];
    v29 = sub_240759DC4();
    v30 = *(v29 - 8);
    if (!(*(v30 + 48))(&v26[v28], 1, v29))
    {
      (*(v30 + 8))(&v26[v28], v29);
    }

    v31 = v10[10];
    v32 = sub_240759E04();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(&v26[v31], 1, v32))
    {
      (*(v33 + 8))(&v26[v31], v32);
    }

    v34 = v10[11];
    v35 = sub_240759E54();
    v36 = *(v35 - 8);
    if (!(*(v36 + 48))(&v26[v34], 1, v35))
    {
      (*(v36 + 8))(&v26[v34], v35);
    }
  }

  v37 = (v43 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = *(v0 + v44 + *(v46 + 40) + 8);

  v39 = *(v0 + v37 + 8);

  return MEMORY[0x2821FE8E8](v0, v37 + 16, v47 | v45 | 7);
}

uint64_t sub_240586DE8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[12] >= 5uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 105, 7);
}

uint64_t sub_240586E78()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v2 = sub_24075A374();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

__n128 sub_240586F3C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_240586F48()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_240586F8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240586FCC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 120);

  v8 = *(v0 + 136);

  v9 = *(v0 + 152);

  v10 = *(v0 + 168);

  v11 = *(v0 + 192);

  v12 = *(v0 + 208);

  v13 = *(v0 + 224);

  v14 = *(v0 + 240);

  v15 = *(v0 + 256);

  v16 = *(v0 + 272);

  v17 = *(v0 + 288);

  v18 = *(v0 + 304);

  v19 = *(v0 + 320);

  v20 = *(v0 + 336);

  v21 = *(v0 + 352);

  v22 = *(v0 + 368);

  v23 = *(v0 + 384);

  v24 = *(v0 + 400);

  v25 = *(v0 + 416);

  v26 = *(v0 + 432);

  v27 = *(v0 + 448);

  v28 = *(v0 + 464);

  v29 = *(v0 + 480);

  v30 = *(v0 + 496);

  v31 = *(v0 + 512);

  v32 = *(v0 + 528);

  v33 = *(v0 + 544);

  v34 = *(v0 + 560);

  v35 = *(v0 + 576);

  v36 = *(v0 + 592);

  v37 = *(v0 + 608);

  v38 = *(v0 + 624);

  v39 = *(v0 + 640);

  v40 = *(v0 + 656);

  v41 = *(v0 + 672);

  v42 = *(v0 + 688);

  v43 = *(v0 + 704);

  v44 = *(v0 + 720);

  v45 = *(v0 + 736);

  v46 = *(v0 + 752);

  v47 = *(v0 + 768);

  v48 = *(v0 + 784);

  v49 = *(v0 + 800);

  v50 = *(v0 + 816);

  v51 = *(v0 + 832);

  v52 = *(v0 + 848);

  v53 = *(v0 + 864);

  v54 = *(v0 + 880);

  v55 = *(v0 + 896);

  v56 = *(v0 + 912);

  v57 = *(v0 + 928);

  v58 = *(v0 + 944);

  v59 = *(v0 + 960);

  v60 = *(v0 + 976);

  v61 = *(v0 + 992);

  return MEMORY[0x2821FE8E8](v0, 1000, 7);
}

uint64_t sub_24058722C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240587264()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  v114 = *(*(v2 - 8) + 80);
  v112 = *(*(v2 - 8) + 64);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8);
  v3 = *(v115 - 8);
  v110 = *(v3 + 80);
  v111 = *(v3 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v113 = (v114 + 56) & ~v114;
  v116 = v2;
  v109 = v0 + v113;
  v4 = (v0 + v113 + *(v2 + 32));
  v5 = v4[1];

  v6 = v4[3];

  v7 = v4[5];

  v8 = v4[7];

  v9 = v4[9];

  v108 = type metadata accessor for RepairModel();
  v10 = v4 + *(v108 + 20);
  sub_240604AB8(*(v10 + 1), *(v10 + 2), *(v10 + 3), *(v10 + 8) | ((*(v10 + 18) | (v10[38] << 16)) << 32));
  v11 = v10[88];
  if (v11 <= 0xF9)
  {
    sub_2405AEA70(*(v10 + 5), *(v10 + 6), *(v10 + 7), *(v10 + 8), *(v10 + 9), *(v10 + 10), v11);
  }

  v12 = *(v10 + 14);

  v13 = *(v10 + 16);

  v14 = *(v10 + 20);

  sub_240604AE0(*(v10 + 23), *(v10 + 24), *(v10 + 25), v10[208]);
  v15 = *(v10 + 27);

  v16 = *(v10 + 28);

  sub_240604AE0(*(v10 + 30), *(v10 + 31), *(v10 + 32), v10[264]);
  v17 = *(v10 + 34);

  v18 = *(v10 + 36);
  if (v18 != 1)
  {

    v19 = *(v10 + 38);
    if (v19 >> 60 != 15)
    {
      sub_2405BCD98(*(v10 + 37), v19);
    }
  }

  if (*(v10 + 41))
  {

    v20 = *(v10 + 42);

    v21 = *(v10 + 43);
  }

  v22 = *(v10 + 45);

  v23 = *(v10 + 47);

  v24 = type metadata accessor for SetupModel();
  v25 = &v10[*(v24 + 36)];
  v26 = type metadata accessor for IdMSAccount();
  v27 = (*(v26 - 1) + 48);
  v107 = *v27;
  if (!(*v27)(v25, 1, v26))
  {
    v28 = *(v25 + 1);

    v29 = *(v25 + 3);

    v30 = *(v25 + 5);

    v31 = *(v25 + 7);

    v32 = *(v25 + 9);

    v33 = v1;
    v34 = v26[5];
    v35 = sub_2407595A4();
    v36 = &v25[v34];
    v1 = v33;
    (*(*(v35 - 8) + 8))(v36, v35);
    v37 = &v25[v26[6]];
    v100 = v37[18];
    v103 = v37[19];
    sub_240604B08(*v37, v37[1], v37[2], v37[3], v37[4], v37[5], v37[6], v37[7], v37[8], v37[9], v37[10], v37[11], v37[12], v37[13], v37[14], v37[15], v37[16], v37[17]);
    v38 = *&v25[v26[7]];

    v39 = &v25[v26[8]];
    if (*v39 != 1)
    {
    }
  }

  v40 = type metadata accessor for AuthenticationModel(0);
  v41 = &v25[v40[5]];
  if (*(v41 + 1))
  {

    v42 = *(v41 + 3);

    v43 = *(v41 + 5);

    v44 = *(v41 + 7);

    v45 = *(v41 + 9);
  }

  v46 = *&v25[v40[7] + 8];

  v47 = *&v25[v40[8]];

  v48 = &v25[v40[10]];
  type metadata accessor for AuthenticationModel.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v106 = v1;
      v50 = *(v48 + 1);

      v51 = *(v48 + 3);

      v52 = *(v48 + 5);

      v53 = *(v48 + 7);

      v54 = *(v48 + 9);

      v55 = v26[5];
      v56 = sub_2407595A4();
      (*(*(v56 - 8) + 8))(&v48[v55], v56);
      v57 = &v48[v26[6]];
      v101 = v57[18];
      v104 = v57[19];
      sub_240604B08(*v57, v57[1], v57[2], v57[3], v57[4], v57[5], v57[6], v57[7], v57[8], v57[9], v57[10], v57[11], v57[12], v57[13], v57[14], v57[15], v57[16], v57[17]);
      v58 = *&v48[v26[7]];

      v59 = &v48[v26[8]];
      if (*v59 != 1)
      {
      }

      v1 = v106;
      break;
    case 2u:
    case 3u:
      v60 = *(v48 + 1);

      v61 = *(v48 + 3);

      v62 = *(v48 + 6);

      v63 = v48[96];
      if (v63 != 255)
      {
        sub_2405B0558(*(v48 + 8), *(v48 + 9), *(v48 + 10), *(v48 + 11), v63);
      }

      break;
    case 4u:
    case 5u:
    case 6u:

      if (*(v48 + 5) != 1)
      {

        v49 = *(v48 + 7);
      }

      break;
    case 7u:
    case 8u:

      break;
    case 9u:
    case 0xAu:

      break;
    case 0xBu:

      v65 = *(v48 + 2);

      break;
    case 0xCu:
    case 0xDu:
      v64 = *v48;

      break;
    default:
      break;
  }

  v66 = &v25[v40[11]];
  if (*v66)
  {
    v67 = *(v66 + 1);
  }

  v68 = &v10[*(v24 + 40)];
  if (!v107(v68, 1, v26))
  {
    v69 = *(v68 + 1);

    v70 = *(v68 + 3);

    v71 = *(v68 + 5);

    v72 = *(v68 + 7);

    v73 = *(v68 + 9);

    v74 = v26[5];
    v75 = sub_2407595A4();
    (*(*(v75 - 8) + 8))(&v68[v74], v75);
    v76 = &v68[v26[6]];
    v102 = v76[18];
    v105 = v76[19];
    sub_240604B08(*v76, v76[1], v76[2], v76[3], v76[4], v76[5], v76[6], v76[7], v76[8], v76[9], v76[10], v76[11], v76[12], v76[13], v76[14], v76[15], v76[16], v76[17]);
    v77 = *&v68[v26[7]];

    v78 = &v68[v26[8]];
    if (*v78 != 1)
    {
    }
  }

  v79 = type metadata accessor for SignInModel();
  v80 = &v68[v79[5]];
  if (*(v80 + 1))
  {

    v81 = *(v80 + 3);

    v82 = *(v80 + 5);

    v83 = *(v80 + 7);

    v84 = *(v80 + 9);

    v85 = *(v80 + 11);
    if (v85 >> 60 != 15)
    {
      sub_2405BCD98(*(v80 + 10), v85);
    }
  }

  v86 = *&v68[v79[6]];

  v87 = *&v68[v79[7]];

  v88 = &v68[v79[10]];
  if (*(v88 + 1))
  {

    v89 = *(v88 + 2);

    v90 = *(v88 + 3);
  }

  v91 = *&v68[v79[11] + 8];

  v92 = *&v68[v79[14] + 8];

  sub_240604C7C(*&v68[v79[16]], *&v68[v79[16] + 8], v68[v79[16] + 16]);
  v93 = *&v68[v79[17] + 8];

  v94 = &v68[v79[19]];
  sub_240604C90(*v94, *(v94 + 1), *(v94 + 2), *(v94 + 3), *(v94 + 4), *(v94 + 5), *(v94 + 6), *(v94 + 7), *(v94 + 8), *(v94 + 9), *(v94 + 10), *(v94 + 11), v94[96]);
  v95 = v4 + *(v108 + 24);
  v96 = v95[40];
  if (v96 <= 0xFA)
  {
    sub_2405EE680(*v95, *(v95 + 1), *(v95 + 2), *(v95 + 3), *(v95 + 4), v96);
  }

  v97 = (v113 + v112 + v110) & ~v110;
  v98 = *(v109 + *(v116 + 36));

  (*(v3 + 8))(v1 + v97, v115);

  return MEMORY[0x2821FE8E8](v1, v97 + v111, v114 | v110 | 7);
}

uint64_t sub_240587B60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  v112 = *(*(v1 - 8) + 80);
  v110 = *(*(v1 - 8) + 64);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8);
  v2 = *(v113 - 8);
  v108 = *(v2 + 80);
  v109 = *(v2 + 64);
  v114 = v1;
  v115 = v0;
  v111 = (v112 + 16) & ~v112;
  v107 = v0 + v111;
  v3 = (v0 + v111 + *(v1 + 32));
  v4 = v3[1];

  v5 = v3[3];

  v6 = v3[5];

  v7 = v3[7];

  v8 = v3[9];

  v106 = type metadata accessor for RepairModel();
  v9 = v3 + *(v106 + 20);
  sub_240604AB8(*(v9 + 1), *(v9 + 2), *(v9 + 3), *(v9 + 8) | ((*(v9 + 18) | (v9[38] << 16)) << 32));
  v10 = v9[88];
  if (v10 <= 0xF9)
  {
    sub_2405AEA70(*(v9 + 5), *(v9 + 6), *(v9 + 7), *(v9 + 8), *(v9 + 9), *(v9 + 10), v10);
  }

  v11 = *(v9 + 14);

  v12 = *(v9 + 16);

  v13 = *(v9 + 20);

  sub_240604AE0(*(v9 + 23), *(v9 + 24), *(v9 + 25), v9[208]);
  v14 = *(v9 + 27);

  v15 = *(v9 + 28);

  sub_240604AE0(*(v9 + 30), *(v9 + 31), *(v9 + 32), v9[264]);
  v16 = *(v9 + 34);

  v17 = *(v9 + 36);
  if (v17 != 1)
  {

    v18 = *(v9 + 38);
    if (v18 >> 60 != 15)
    {
      sub_2405BCD98(*(v9 + 37), v18);
    }
  }

  if (*(v9 + 41))
  {

    v19 = *(v9 + 42);

    v20 = *(v9 + 43);
  }

  v21 = *(v9 + 45);

  v22 = *(v9 + 47);

  v23 = type metadata accessor for SetupModel();
  v24 = &v9[*(v23 + 36)];
  v25 = type metadata accessor for IdMSAccount();
  v26 = *(*(v25 - 1) + 48);
  if (!v26(v24, 1, v25))
  {
    v27 = *(v24 + 1);

    v28 = *(v24 + 3);

    v29 = *(v24 + 5);

    v30 = *(v24 + 7);

    v31 = *(v24 + 9);

    v32 = v26;
    v33 = v25[5];
    v34 = sub_2407595A4();
    v35 = &v24[v33];
    v26 = v32;
    (*(*(v34 - 8) + 8))(v35, v34);
    v36 = &v24[v25[6]];
    v99 = v36[18];
    v102 = v36[19];
    sub_240604B08(*v36, v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10], v36[11], v36[12], v36[13], v36[14], v36[15], v36[16], v36[17]);
    v37 = *&v24[v25[7]];

    v38 = &v24[v25[8]];
    if (*v38 != 1)
    {
    }
  }

  v39 = type metadata accessor for AuthenticationModel(0);
  v40 = &v24[v39[5]];
  if (*(v40 + 1))
  {

    v41 = *(v40 + 3);

    v42 = *(v40 + 5);

    v43 = *(v40 + 7);

    v44 = *(v40 + 9);
  }

  v45 = *&v24[v39[7] + 8];

  v46 = *&v24[v39[8]];

  v47 = &v24[v39[10]];
  type metadata accessor for AuthenticationModel.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v105 = v26;
      v49 = *(v47 + 1);

      v50 = *(v47 + 3);

      v51 = *(v47 + 5);

      v52 = *(v47 + 7);

      v53 = *(v47 + 9);

      v54 = v25[5];
      v55 = sub_2407595A4();
      (*(*(v55 - 8) + 8))(&v47[v54], v55);
      v56 = &v47[v25[6]];
      v100 = v56[18];
      v103 = v56[19];
      sub_240604B08(*v56, v56[1], v56[2], v56[3], v56[4], v56[5], v56[6], v56[7], v56[8], v56[9], v56[10], v56[11], v56[12], v56[13], v56[14], v56[15], v56[16], v56[17]);
      v57 = *&v47[v25[7]];

      v58 = &v47[v25[8]];
      if (*v58 != 1)
      {
      }

      v26 = v105;
      break;
    case 2u:
    case 3u:
      v59 = *(v47 + 1);

      v60 = *(v47 + 3);

      v61 = *(v47 + 6);

      v62 = v47[96];
      if (v62 != 255)
      {
        sub_2405B0558(*(v47 + 8), *(v47 + 9), *(v47 + 10), *(v47 + 11), v62);
      }

      break;
    case 4u:
    case 5u:
    case 6u:

      if (*(v47 + 5) != 1)
      {

        v48 = *(v47 + 7);
      }

      break;
    case 7u:
    case 8u:

      break;
    case 9u:
    case 0xAu:

      break;
    case 0xBu:

      v64 = *(v47 + 2);

      break;
    case 0xCu:
    case 0xDu:
      v63 = *v47;

      break;
    default:
      break;
  }

  v65 = &v24[v39[11]];
  if (*v65)
  {
    v66 = *(v65 + 1);
  }

  v67 = &v9[*(v23 + 40)];
  if (!v26(v67, 1, v25))
  {
    v68 = *(v67 + 1);

    v69 = *(v67 + 3);

    v70 = *(v67 + 5);

    v71 = *(v67 + 7);

    v72 = *(v67 + 9);

    v73 = v25[5];
    v74 = sub_2407595A4();
    (*(*(v74 - 8) + 8))(&v67[v73], v74);
    v75 = &v67[v25[6]];
    v101 = v75[18];
    v104 = v75[19];
    sub_240604B08(*v75, v75[1], v75[2], v75[3], v75[4], v75[5], v75[6], v75[7], v75[8], v75[9], v75[10], v75[11], v75[12], v75[13], v75[14], v75[15], v75[16], v75[17]);
    v76 = *&v67[v25[7]];

    v77 = &v67[v25[8]];
    if (*v77 != 1)
    {
    }
  }

  v78 = type metadata accessor for SignInModel();
  v79 = &v67[v78[5]];
  if (*(v79 + 1))
  {

    v80 = *(v79 + 3);

    v81 = *(v79 + 5);

    v82 = *(v79 + 7);

    v83 = *(v79 + 9);

    v84 = *(v79 + 11);
    if (v84 >> 60 != 15)
    {
      sub_2405BCD98(*(v79 + 10), v84);
    }
  }

  v85 = *&v67[v78[6]];

  v86 = *&v67[v78[7]];

  v87 = &v67[v78[10]];
  if (*(v87 + 1))
  {

    v88 = *(v87 + 2);

    v89 = *(v87 + 3);
  }

  v90 = *&v67[v78[11] + 8];

  v91 = *&v67[v78[14] + 8];

  sub_240604C7C(*&v67[v78[16]], *&v67[v78[16] + 8], v67[v78[16] + 16]);
  v92 = *&v67[v78[17] + 8];

  v93 = &v67[v78[19]];
  sub_240604C90(*v93, *(v93 + 1), *(v93 + 2), *(v93 + 3), *(v93 + 4), *(v93 + 5), *(v93 + 6), *(v93 + 7), *(v93 + 8), *(v93 + 9), *(v93 + 10), *(v93 + 11), v93[96]);
  v94 = v3 + *(v106 + 24);
  v95 = v94[40];
  if (v95 <= 0xFA)
  {
    sub_2405EE680(*v94, *(v94 + 1), *(v94 + 2), *(v94 + 3), *(v94 + 4), v95);
  }

  v96 = (v111 + v110 + v108) & ~v108;
  v97 = *(v107 + *(v114 + 36));

  (*(v2 + 8))(v115 + v96, v113);

  return MEMORY[0x2821FE8E8](v115, v96 + v109, v112 | v108 | 7);
}

uint64_t sub_24058843C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  if (*(v0 + 40))
  {

    v2 = *(v0 + 48);

    v3 = *(v0 + 56);
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2405884A0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  if (*(v0 + 40))
  {

    v2 = *(v0 + 56);

    v3 = *(v0 + 72);

    v4 = *(v0 + 88);

    v5 = *(v0 + 104);

    v6 = *(v0 + 112);

    if (*(v0 + 128))
    {

      v7 = *(v0 + 136);

      v8 = *(v0 + 144);
    }
  }

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_240588538()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240588570()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3A0, &qword_240776B10) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v112 = type metadata accessor for RepairContext();
  v114 = *(*(v112 - 8) + 80);
  v5 = (v3 + v4 + v114) & ~v114;
  v111 = *(*(v112 - 8) + 64);
  v6 = *(v0 + 16);

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = v0 + v5;
  v10 = *(v0 + v5 + 8);

  v11 = *(v0 + v5 + 24);

  v12 = *(v0 + v5 + 40);

  v13 = *(v0 + v5 + 56);

  v14 = *(v0 + v5 + 72);

  v110 = type metadata accessor for RepairModel();
  v15 = v0 + v5 + *(v110 + 20);
  sub_240604AB8(*(v15 + 8), *(v15 + 16), *(v15 + 24), *(v15 + 32) | ((*(v15 + 36) | (*(v15 + 38) << 16)) << 32));
  v16 = *(v15 + 88);
  if (v16 <= 0xF9)
  {
    sub_2405AEA70(*(v15 + 40), *(v15 + 48), *(v15 + 56), *(v15 + 64), *(v15 + 72), *(v15 + 80), v16);
  }

  v17 = *(v15 + 112);

  v18 = *(v15 + 128);

  v19 = *(v15 + 160);

  sub_240604AE0(*(v15 + 184), *(v15 + 192), *(v15 + 200), *(v15 + 208));
  v20 = *(v15 + 216);

  v21 = *(v15 + 224);

  sub_240604AE0(*(v15 + 240), *(v15 + 248), *(v15 + 256), *(v15 + 264));
  v22 = *(v15 + 272);

  v23 = *(v15 + 288);
  if (v23 != 1)
  {

    v24 = *(v15 + 304);
    if (v24 >> 60 != 15)
    {
      sub_2405BCD98(*(v15 + 296), v24);
    }
  }

  v113 = v5;
  if (*(v15 + 328))
  {

    v25 = *(v15 + 336);

    v26 = *(v15 + 344);
  }

  v27 = *(v15 + 360);

  v28 = *(v15 + 376);

  v29 = type metadata accessor for SetupModel();
  v30 = (v15 + *(v29 + 36));
  v31 = type metadata accessor for IdMSAccount();
  v32 = (*(v31 - 1) + 48);
  v109 = *v32;
  if (!(*v32)(v30, 1, v31))
  {
    v33 = *(v30 + 1);

    v34 = *(v30 + 3);

    v35 = *(v30 + 5);

    v36 = *(v30 + 7);

    v37 = *(v30 + 9);

    v38 = v31[5];
    v39 = sub_2407595A4();
    (*(*(v39 - 8) + 8))(&v30[v38], v39);
    v40 = &v30[v31[6]];
    v102 = v40[18];
    v105 = v40[19];
    sub_240604B08(*v40, v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v40[9], v40[10], v40[11], v40[12], v40[13], v40[14], v40[15], v40[16], v40[17]);
    v41 = *&v30[v31[7]];

    v42 = &v30[v31[8]];
    if (*v42 != 1)
    {
    }
  }

  v43 = type metadata accessor for AuthenticationModel(0);
  v44 = &v30[v43[5]];
  if (*(v44 + 1))
  {

    v45 = *(v44 + 3);

    v46 = *(v44 + 5);

    v47 = *(v44 + 7);

    v48 = *(v44 + 9);
  }

  v49 = *&v30[v43[7] + 8];

  v50 = *&v30[v43[8]];

  v51 = &v30[v43[10]];
  type metadata accessor for AuthenticationModel.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v108 = v2;
      v53 = *(v51 + 1);

      v54 = *(v51 + 3);

      v55 = *(v51 + 5);

      v56 = *(v51 + 7);

      v57 = *(v51 + 9);

      v58 = v31[5];
      v59 = sub_2407595A4();
      (*(*(v59 - 8) + 8))(&v51[v58], v59);
      v60 = &v51[v31[6]];
      v103 = v60[18];
      v106 = v60[19];
      sub_240604B08(*v60, v60[1], v60[2], v60[3], v60[4], v60[5], v60[6], v60[7], v60[8], v60[9], v60[10], v60[11], v60[12], v60[13], v60[14], v60[15], v60[16], v60[17]);
      v61 = *&v51[v31[7]];

      v62 = &v51[v31[8]];
      if (*v62 != 1)
      {
      }

      v2 = v108;
      break;
    case 2u:
    case 3u:
      v63 = *(v51 + 1);

      v64 = *(v51 + 3);

      v65 = *(v51 + 6);

      v66 = v51[96];
      if (v66 != 255)
      {
        sub_2405B0558(*(v51 + 8), *(v51 + 9), *(v51 + 10), *(v51 + 11), v66);
      }

      break;
    case 4u:
    case 5u:
    case 6u:

      if (*(v51 + 5) != 1)
      {

        v52 = *(v51 + 7);
      }

      break;
    case 7u:
    case 8u:

      break;
    case 9u:
    case 0xAu:

      break;
    case 0xBu:

      v68 = *(v51 + 2);

      break;
    case 0xCu:
    case 0xDu:
      v67 = *v51;

      break;
    default:
      break;
  }

  v69 = &v30[v43[11]];
  if (*v69)
  {
    v70 = *(v69 + 1);
  }

  v71 = (v15 + *(v29 + 40));
  if (!v109(v71, 1, v31))
  {
    v72 = *(v71 + 1);

    v73 = *(v71 + 3);

    v74 = *(v71 + 5);

    v75 = *(v71 + 7);

    v76 = *(v71 + 9);

    v77 = v31[5];
    v78 = sub_2407595A4();
    (*(*(v78 - 8) + 8))(&v71[v77], v78);
    v79 = &v71[v31[6]];
    v104 = v79[18];
    v107 = v79[19];
    sub_240604B08(*v79, v79[1], v79[2], v79[3], v79[4], v79[5], v79[6], v79[7], v79[8], v79[9], v79[10], v79[11], v79[12], v79[13], v79[14], v79[15], v79[16], v79[17]);
    v80 = *&v71[v31[7]];

    v81 = &v71[v31[8]];
    if (*v81 != 1)
    {
    }
  }

  v82 = type metadata accessor for SignInModel();
  v83 = &v71[v82[5]];
  if (*(v83 + 1))
  {

    v84 = *(v83 + 3);

    v85 = *(v83 + 5);

    v86 = *(v83 + 7);

    v87 = *(v83 + 9);

    v88 = *(v83 + 11);
    if (v88 >> 60 != 15)
    {
      sub_2405BCD98(*(v83 + 10), v88);
    }
  }

  v89 = *&v71[v82[6]];

  v90 = *&v71[v82[7]];

  v91 = &v71[v82[10]];
  if (*(v91 + 1))
  {

    v92 = *(v91 + 2);

    v93 = *(v91 + 3);
  }

  v94 = *&v71[v82[11] + 8];

  v95 = *&v71[v82[14] + 8];

  sub_240604C7C(*&v71[v82[16]], *&v71[v82[16] + 8], v71[v82[16] + 16]);
  v96 = *&v71[v82[17] + 8];

  v97 = &v71[v82[19]];
  sub_240604C90(*v97, *(v97 + 1), *(v97 + 2), *(v97 + 3), *(v97 + 4), *(v97 + 5), *(v97 + 6), *(v97 + 7), *(v97 + 8), *(v97 + 9), *(v97 + 10), *(v97 + 11), v97[96]);
  v98 = v9 + *(v110 + 24);
  v99 = *(v98 + 40);
  if (v99 <= 0xFA)
  {
    sub_2405EE680(*v98, *(v98 + 8), *(v98 + 16), *(v98 + 24), *(v98 + 32), v99);
  }

  v100 = (v9 + *(v112 + 20));
  if (v100[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v100);
  }

  return MEMORY[0x2821FE8E8](v0, v113 + v111, v2 | v114 | 7);
}

uint64_t sub_240588E88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3B0, &qword_240776B20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_240588F70()
{
  v1 = sub_240759C44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v116 = type metadata accessor for RepairContext();
  v118 = *(*(v116 - 8) + 80);
  v115 = *(*(v116 - 8) + 64);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8);
  v113 = *(v114 - 8);
  v111 = *(v113 + 80);
  v112 = *(v113 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v117 = (v4 + v5 + v118) & ~v118;
  v8 = v0 + v117;
  v9 = *(v0 + v117 + 8);

  v10 = *(v0 + v117 + 24);

  v11 = *(v0 + v117 + 40);

  v12 = *(v0 + v117 + 56);

  v13 = *(v0 + v117 + 72);

  v110 = type metadata accessor for RepairModel();
  v14 = v0 + v117 + *(v110 + 20);
  sub_240604AB8(*(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32) | ((*(v14 + 36) | (*(v14 + 38) << 16)) << 32));
  v15 = *(v14 + 88);
  if (v15 <= 0xF9)
  {
    sub_2405AEA70(*(v14 + 40), *(v14 + 48), *(v14 + 56), *(v14 + 64), *(v14 + 72), *(v14 + 80), v15);
  }

  v16 = *(v14 + 112);

  v17 = *(v14 + 128);

  v18 = *(v14 + 160);

  sub_240604AE0(*(v14 + 184), *(v14 + 192), *(v14 + 200), *(v14 + 208));
  v19 = *(v14 + 216);

  v20 = *(v14 + 224);

  sub_240604AE0(*(v14 + 240), *(v14 + 248), *(v14 + 256), *(v14 + 264));
  v21 = *(v14 + 272);

  v22 = *(v14 + 288);
  if (v22 != 1)
  {

    v23 = *(v14 + 304);
    if (v23 >> 60 != 15)
    {
      sub_2405BCD98(*(v14 + 296), v23);
    }
  }

  if (*(v14 + 328))
  {

    v24 = *(v14 + 336);

    v25 = *(v14 + 344);
  }

  v26 = *(v14 + 360);

  v27 = *(v14 + 376);

  v28 = type metadata accessor for SetupModel();
  v29 = (v14 + *(v28 + 36));
  v30 = type metadata accessor for IdMSAccount();
  v31 = (*(v30 - 1) + 48);
  v109 = *v31;
  if (!(*v31)(v29, 1, v30))
  {
    v32 = *(v29 + 1);

    v33 = *(v29 + 3);

    v34 = *(v29 + 5);

    v35 = *(v29 + 7);

    v36 = *(v29 + 9);

    v37 = v30[5];
    v38 = sub_2407595A4();
    (*(*(v38 - 8) + 8))(&v29[v37], v38);
    v39 = &v29[v30[6]];
    v102 = v39[18];
    v105 = v39[19];
    sub_240604B08(*v39, v39[1], v39[2], v39[3], v39[4], v39[5], v39[6], v39[7], v39[8], v39[9], v39[10], v39[11], v39[12], v39[13], v39[14], v39[15], v39[16], v39[17]);
    v40 = *&v29[v30[7]];

    v41 = &v29[v30[8]];
    if (*v41 != 1)
    {
    }
  }

  v42 = type metadata accessor for AuthenticationModel(0);
  v43 = &v29[v42[5]];
  if (*(v43 + 1))
  {

    v44 = *(v43 + 3);

    v45 = *(v43 + 5);

    v46 = *(v43 + 7);

    v47 = *(v43 + 9);
  }

  v48 = *&v29[v42[7] + 8];

  v49 = *&v29[v42[8]];

  v50 = &v29[v42[10]];
  type metadata accessor for AuthenticationModel.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v108 = v3;
      v52 = *(v50 + 1);

      v53 = *(v50 + 3);

      v54 = *(v50 + 5);

      v55 = *(v50 + 7);

      v56 = *(v50 + 9);

      v57 = v30[5];
      v58 = sub_2407595A4();
      (*(*(v58 - 8) + 8))(&v50[v57], v58);
      v59 = &v50[v30[6]];
      v103 = v59[18];
      v106 = v59[19];
      sub_240604B08(*v59, v59[1], v59[2], v59[3], v59[4], v59[5], v59[6], v59[7], v59[8], v59[9], v59[10], v59[11], v59[12], v59[13], v59[14], v59[15], v59[16], v59[17]);
      v60 = *&v50[v30[7]];

      v61 = &v50[v30[8]];
      if (*v61 != 1)
      {
      }

      v3 = v108;
      break;
    case 2u:
    case 3u:
      v62 = *(v50 + 1);

      v63 = *(v50 + 3);

      v64 = *(v50 + 6);

      v65 = v50[96];
      if (v65 != 255)
      {
        sub_2405B0558(*(v50 + 8), *(v50 + 9), *(v50 + 10), *(v50 + 11), v65);
      }

      break;
    case 4u:
    case 5u:
    case 6u:

      if (*(v50 + 5) != 1)
      {

        v51 = *(v50 + 7);
      }

      break;
    case 7u:
    case 8u:

      break;
    case 9u:
    case 0xAu:

      break;
    case 0xBu:

      v67 = *(v50 + 2);

      break;
    case 0xCu:
    case 0xDu:
      v66 = *v50;

      break;
    default:
      break;
  }

  v68 = &v29[v42[11]];
  if (*v68)
  {
    v69 = *(v68 + 1);
  }

  v70 = (v14 + *(v28 + 40));
  if (!v109(v70, 1, v30))
  {
    v71 = *(v70 + 1);

    v72 = *(v70 + 3);

    v73 = *(v70 + 5);

    v74 = *(v70 + 7);

    v75 = *(v70 + 9);

    v76 = v30[5];
    v77 = sub_2407595A4();
    (*(*(v77 - 8) + 8))(&v70[v76], v77);
    v78 = &v70[v30[6]];
    v104 = v78[18];
    v107 = v78[19];
    sub_240604B08(*v78, v78[1], v78[2], v78[3], v78[4], v78[5], v78[6], v78[7], v78[8], v78[9], v78[10], v78[11], v78[12], v78[13], v78[14], v78[15], v78[16], v78[17]);
    v79 = *&v70[v30[7]];

    v80 = &v70[v30[8]];
    if (*v80 != 1)
    {
    }
  }

  v81 = type metadata accessor for SignInModel();
  v82 = &v70[v81[5]];
  if (*(v82 + 1))
  {

    v83 = *(v82 + 3);

    v84 = *(v82 + 5);

    v85 = *(v82 + 7);

    v86 = *(v82 + 9);

    v87 = *(v82 + 11);
    if (v87 >> 60 != 15)
    {
      sub_2405BCD98(*(v82 + 10), v87);
    }
  }

  v88 = *&v70[v81[6]];

  v89 = *&v70[v81[7]];

  v90 = &v70[v81[10]];
  if (*(v90 + 1))
  {

    v91 = *(v90 + 2);

    v92 = *(v90 + 3);
  }

  v93 = *&v70[v81[11] + 8];

  v94 = *&v70[v81[14] + 8];

  sub_240604C7C(*&v70[v81[16]], *&v70[v81[16] + 8], v70[v81[16] + 16]);
  v95 = *&v70[v81[17] + 8];

  v96 = &v70[v81[19]];
  sub_240604C90(*v96, *(v96 + 1), *(v96 + 2), *(v96 + 3), *(v96 + 4), *(v96 + 5), *(v96 + 6), *(v96 + 7), *(v96 + 8), *(v96 + 9), *(v96 + 10), *(v96 + 11), v96[96]);
  v97 = v8 + *(v110 + 24);
  v98 = *(v97 + 40);
  if (v98 <= 0xFA)
  {
    sub_2405EE680(*v97, *(v97 + 8), *(v97 + 16), *(v97 + 24), *(v97 + 32), v98);
  }

  v99 = (v8 + *(v116 + 20));
  if (v99[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v99);
  }

  v100 = (v117 + v115 + v111) & ~v111;
  (*(v113 + 8))(v0 + v100, v114);

  return MEMORY[0x2821FE8E8](v0, v100 + v112, v3 | v118 | v111 | 7);
}

uint64_t sub_2405898D4()
{
  v1 = *v0;
  v2 = 0x6B616873646E6168;
  v3 = 0x69746E6568747561;
  v4 = 0x726961706572;
  if (v1 != 4)
  {
    v4 = 0x617267694D656761;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E496E676973;
  if (v1 != 1)
  {
    v5 = 0x6574746573696E61;
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

uint64_t sub_24058999C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2406E0260(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2405899C4()
{
  sub_2406DCA8C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_2406DCA8C(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

id sub_240589A6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___AISConfigurationStore_cachedChildCutOffResponse;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_240589AD8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240589B5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_240589BA4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_240589C40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_completedSetup;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_240589C98(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_completedSetup;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_240589D64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_flowType;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_240589DC0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_flowType;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_240589E20@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_name);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

id sub_240589E7C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_240589E88(id *a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1;

  *a2 = v3;
}

id sub_240589EC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 56);
  *a2 = v2;
  return v2;
}

void sub_240589ED0(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 56);
  v5 = *a1;

  *(a2 + 56) = v3;
}

id sub_240589F54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SignInModel() + 52));
  *a2 = v3;

  return v3;
}

uint64_t sub_240589FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24058A068(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24058A12C()
{
  v1 = 0x6C61636974697263;
  if (*v0 == 2)
  {
    v1 = 0x2932282068676968;
  }

  v2 = 0x29302820776F6CLL;
  if (*v0)
  {
    v2 = 0x28206D756964656DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24058A1C4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24058A210()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24058A25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    v11 = (v10 >> 24) & 0xFFFF0000 | WORD1(v10);
    if (v11 > 0x80000000)
    {
      return -v11;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v12 = type metadata accessor for AgeMigrationModel.State(0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_24058A398(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    v11 = a1 + *(a4 + 20);
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = (-a2 << 24) & 0xFFFF0000000000 | (-a2 << 16);
    *(v11 + 30) = 0;
    *(v11 + 28) = 0;
    *(v11 + 24) = 0;
  }

  else
  {
    v12 = type metadata accessor for AgeMigrationModel.State(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_24058A4E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_240759744();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24058A594(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_240759744();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24058A648(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_240759744();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24058A6F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_240759744();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24058A79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_240712660(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24058A7D0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SetupModel();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24058A87C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SetupModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_24058A988(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24058A9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = (*(a1 + 24) >> 24) & 0xFFFF0000 | WORD1(*(a1 + 24));
    if (v4 > 0x80000000)
    {
      return -v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for AuthenticationModel(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SignInModel();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24058AAD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = (-a2 << 24) & 0xFFFF0000000000 | (-a2 << 16);
    *(result + 38) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
  }

  else
  {
    v8 = type metadata accessor for AuthenticationModel(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SignInModel();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24058AC1C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24058AC54()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24058AC94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 6)
  {
    return v5 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24058AD0C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 5);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24058AD9C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24058ADDC()
{
  v1 = v0[2];

  if (v0[5])
  {

    v2 = v0[7];

    if (v0[9])
    {

      v3 = v0[10];

      v4 = v0[11];
    }
  }

  if (v0[14])
  {

    v5 = v0[16];

    v6 = v0[18];

    v7 = v0[20];

    v8 = v0[22];
  }

  v9 = v0[23];

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

uint64_t sub_24058AE8C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_24058AEC4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_2407598E4();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_24058AF64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240783158;
  a2[1] = v5;
}

uint64_t sub_24058AFD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058AFE0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 24);

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_24058B024@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240783138;
  a2[1] = v5;
}

uint64_t sub_24058B094@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058B0A0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 56);

  *(a2 + 48) = v4;
  *(a2 + 56) = v3;
  return result;
}

uint64_t sub_24058B0E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240783118;
  a2[1] = v5;
}

uint64_t sub_24058B154@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058B160(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 88);

  *(a2 + 80) = v4;
  *(a2 + 88) = v3;
  return result;
}

uint64_t sub_24058B1A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 96);
  v3 = *(a1 + 104);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_2407830F8;
  a2[1] = v5;
}

uint64_t sub_24058B214@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 112);
  v3 = *(a1 + 120);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_2407830E8;
  a2[1] = v5;
}

uint64_t sub_24058B284@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 128);
  v3 = *(a1 + 136);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_2407830D8;
  a2[1] = v5;
}

uint64_t sub_24058B2F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 144);
  v3 = *(a1 + 152);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_2407830B8;
  a2[1] = v5;
}

uint64_t sub_24058B364@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 168);
  v3 = *(a1 + 176);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240783098;
  a2[1] = v5;
}

uint64_t sub_24058B3D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 184);
  v3 = *(a1 + 192);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058B3E0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 192);

  *(a2 + 184) = v4;
  *(a2 + 192) = v3;
  return result;
}

uint64_t sub_24058B424@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 200);
  v3 = *(a1 + 208);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240783078;
  a2[1] = v5;
}

uint64_t sub_24058B494@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 216);
  v3 = *(a1 + 224);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058B4A0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 224);

  *(a2 + 216) = v4;
  *(a2 + 224) = v3;
  return result;
}

uint64_t sub_24058B4E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 232);
  v3 = *(a1 + 240);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240783058;
  a2[1] = v5;
}

uint64_t sub_24058B554@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 248);
  v3 = *(a1 + 256);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240783048;
  a2[1] = v5;
}

uint64_t sub_24058B5C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 264);
  v3 = *(a1 + 272);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058B5D0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 272);

  *(a2 + 264) = v4;
  *(a2 + 272) = v3;
  return result;
}

uint64_t sub_24058B614@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 280);
  v3 = *(a1 + 288);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240783028;
  a2[1] = v5;
}

uint64_t sub_24058B684@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 296);
  v3 = *(a1 + 304);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240783018;
  a2[1] = v5;
}

uint64_t sub_24058B6F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 312);
  v3 = *(a1 + 320);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058B700(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 320);

  *(a2 + 312) = v4;
  *(a2 + 320) = v3;
  return result;
}

uint64_t sub_24058B744@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 328);
  v3 = *(a1 + 336);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240782FF8;
  a2[1] = v5;
}

uint64_t sub_24058B7B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 344);
  v3 = *(a1 + 352);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240782FE8;
  a2[1] = v5;
}

uint64_t sub_24058B824@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 360);
  v3 = *(a1 + 368);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240782FD8;
  a2[1] = v5;
}

uint64_t sub_24058B894@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 376);
  v3 = *(a1 + 384);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240782FC8;
  a2[1] = v5;
}

uint64_t sub_24058B904@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 392);
  v3 = *(a1 + 400);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240782FB8;
  a2[1] = v5;
}

uint64_t sub_24058B974@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 408);
  v3 = *(a1 + 416);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240782FA8;
  a2[1] = v5;
}

uint64_t sub_24058B9E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 424);
  v3 = *(a1 + 432);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058B9F0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 432);

  *(a2 + 424) = v4;
  *(a2 + 432) = v3;
  return result;
}

uint64_t sub_24058BA34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 440);
  v3 = *(a1 + 448);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240782F88;
  a2[1] = v5;
}

uint64_t sub_24058BAA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 456);
  v3 = *(a1 + 464);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058BAB0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 464);

  *(a2 + 456) = v4;
  *(a2 + 464) = v3;
  return result;
}

uint64_t sub_24058BAF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 472);
  v3 = *(a1 + 480);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240782F68;
  a2[1] = v5;
}

uint64_t sub_24058BB64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 488);
  v3 = *(a1 + 496);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058BB70(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 496);

  *(a2 + 488) = v4;
  *(a2 + 496) = v3;
  return result;
}

uint64_t sub_24058BBB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 504);
  v3 = *(a1 + 512);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240782F48;
  a2[1] = v5;
}

uint64_t sub_24058BC24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 520);
  v3 = *(a1 + 528);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058BC34(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 528);

  *(a2 + 520) = v4;
  *(a2 + 528) = v3;
  return result;
}

uint64_t sub_24058BC7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 536);
  v4 = *(a1 + 544);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782F28;
  a2[1] = v5;
}

uint64_t sub_24058BCF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 552);
  v3 = *(a1 + 560);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058BD00(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 560);

  *(a2 + 552) = v4;
  *(a2 + 560) = v3;
  return result;
}

uint64_t sub_24058BD48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 568);
  v4 = *(a1 + 576);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782F08;
  a2[1] = v5;
}

uint64_t sub_24058BDBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 584);
  v3 = *(a1 + 592);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058BDCC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 592);

  *(a2 + 584) = v4;
  *(a2 + 592) = v3;
  return result;
}

uint64_t sub_24058BE14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 600);
  v4 = *(a1 + 608);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782EE8;
  a2[1] = v5;
}

uint64_t sub_24058BE88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 616);
  v3 = *(a1 + 624);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058BE98(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 624);

  *(a2 + 616) = v4;
  *(a2 + 624) = v3;
  return result;
}

uint64_t sub_24058BEE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 632);
  v4 = *(a1 + 640);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782EC8;
  a2[1] = v5;
}

uint64_t sub_24058BF54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 648);
  v3 = *(a1 + 656);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058BF64(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 656);

  *(a2 + 648) = v4;
  *(a2 + 656) = v3;
  return result;
}

uint64_t sub_24058BFAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 664);
  v4 = *(a1 + 672);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782EA8;
  a2[1] = v5;
}

uint64_t sub_24058C020@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 680);
  v3 = *(a1 + 688);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058C030(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 688);

  *(a2 + 680) = v4;
  *(a2 + 688) = v3;
  return result;
}

uint64_t sub_24058C078@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 696);
  v4 = *(a1 + 704);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782E88;
  a2[1] = v5;
}

uint64_t sub_24058C0EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 712);
  v4 = *(a1 + 720);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782E78;
  a2[1] = v5;
}

uint64_t sub_24058C160@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 728);
  v3 = *(a1 + 736);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058C170(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 736);

  *(a2 + 728) = v4;
  *(a2 + 736) = v3;
  return result;
}

uint64_t sub_24058C1B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 744);
  v4 = *(a1 + 752);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782E58;
  a2[1] = v5;
}

uint64_t sub_24058C22C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 760);
  v4 = *(a1 + 768);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782E48;
  a2[1] = v5;
}

uint64_t sub_24058C2A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 776);
  v4 = *(a1 + 784);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782E38;
  a2[1] = v5;
}

uint64_t sub_24058C314@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 792);
  v3 = *(a1 + 800);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058C324(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 800);

  *(a2 + 792) = v4;
  *(a2 + 800) = v3;
  return result;
}

uint64_t sub_24058C36C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 808);
  v4 = *(a1 + 816);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782E18;
  a2[1] = v5;
}

uint64_t sub_24058C3E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 824);
  v4 = *(a1 + 832);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782E08;
  a2[1] = v5;
}

uint64_t sub_24058C454@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 840);
  v4 = *(a1 + 848);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782DE8;
  a2[1] = v5;
}

uint64_t sub_24058C4C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 856);
  v4 = *(a1 + 864);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782DC8;
  a2[1] = v5;
}

uint64_t sub_24058C53C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 872);
  v3 = *(a1 + 880);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058C54C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 880);

  *(a2 + 872) = v4;
  *(a2 + 880) = v3;
  return result;
}

uint64_t sub_24058C594@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 888);
  v4 = *(a1 + 896);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782DA8;
  a2[1] = v5;
}

uint64_t sub_24058C608()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24058C824()
{
  sub_2405AEA70(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_2405AEA70(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  return MEMORY[0x2821FE8E8](v0, 121, 7);
}

uint64_t sub_24058C87C()
{
  v1 = (*v0 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_name);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_24058C8BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24075A9B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24058C928(uint64_t a1, uint64_t a2)
{
  v4 = sub_24075A9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24058C9C0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24058C9E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2405BCD98(a1, a2);
  }

  return a1;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup11IdMSAccountV10DeviceInfoVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24058CA60(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t static Result<>.catching<A>(_:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v9 = (a2 + *a2);
  v6 = a2[1];
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_24058E2A0;

  return v9(a1);
}

uint64_t sub_24058E2A0()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_24058E44C;
  }

  else
  {
    v3 = sub_24058E3B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24058E3B4()
{
  v1 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24075AEE4();
  swift_storeEnumTagMultiPayload();
  v3 = v0[1];

  return v3();
}

uint64_t sub_24058E44C()
{
  v1 = *(v0 + 24);
  **(v0 + 16) = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24075AEE4();
  swift_storeEnumTagMultiPayload();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24058E5E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24058E604(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_24058E660(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24058E680(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_24058E6E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_24058E750()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

uint64_t sub_24058E7C4()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

void *sub_24058E808@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_24058E85C(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_24058E88C@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_24058E8B8@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_24058E990()
{
  v1 = *v0;
  sub_24075AE64();
  sub_24075AE94();
  return sub_24075AED4();
}

uint64_t sub_24058EA04()
{
  v1 = *v0;
  sub_24075AE64();
  sub_24075AE94();
  return sub_24075AED4();
}

_DWORD *sub_24058EA48@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_24058EA64()
{
  v1 = *v0;
  v2 = sub_24075A0B4();
  v3 = MEMORY[0x245CC5EC0](v2);

  return v3;
}

uint64_t sub_24058EAA0()
{
  v1 = *v0;
  sub_24075A0B4();
  sub_24075A114();
}

uint64_t sub_24058EAF4()
{
  v1 = *v0;
  sub_24075A0B4();
  sub_24075AE64();
  sub_24075A114();
  v2 = sub_24075AED4();

  return v2;
}

uint64_t sub_24058EB68(uint64_t a1, id *a2)
{
  result = sub_24075A094();
  *a2 = 0;
  return result;
}

uint64_t sub_24058EBE0(uint64_t a1, id *a2)
{
  v3 = sub_24075A0A4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24058EC60@<X0>(uint64_t *a1@<X8>)
{
  sub_24075A0B4();
  v2 = sub_24075A084();

  *a1 = v2;
  return result;
}

uint64_t sub_24058ECA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24075A084();

  *a2 = v5;
  return result;
}

uint64_t sub_24058ECEC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_24058F2E0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_24058ED38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24075A0B4();
  v6 = v5;
  if (v4 == sub_24075A0B4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();
  }

  return v9 & 1;
}

uint64_t sub_24058EDC0(uint64_t a1)
{
  v2 = sub_24058EF0C(&qword_280FAD720, type metadata accessor for AIDAServiceType);
  v3 = sub_24058EF0C(&qword_27E4B6300, type metadata accessor for AIDAServiceType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24058EF0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24058EF9C(uint64_t a1)
{
  v2 = sub_24058EF0C(&qword_27E4B62E8, type metadata accessor for AATermsEntry);
  v3 = sub_24058EF0C(&unk_27E4B62F0, type metadata accessor for AATermsEntry);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24058F2E0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

void sub_24058F32C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id FindMyRequest.account.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *FindMyRequest.error.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void (*FindMyRequest.error.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_24058F4B8;
}

void sub_24058F4B8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t FindMyRequest.init(avoidUI:account:success:error:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 8) = result;
  *a5 = a2;
  *(a5 + 9) = a3;
  *(a5 + 16) = a4;
  return result;
}

uint64_t _s12AppleIDSetup19AuthenticationModelV13BindableStateV8SubstateO9hashValueSivg_0()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

uint64_t sub_24058F584()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

uint64_t sub_24058F5C8()
{
  v1 = 0x746E756F636361;
  v2 = 0x73736563637573;
  if (*v0 != 2)
  {
    v2 = 0x726F727265;
  }

  if (*v0)
  {
    v1 = 0x495564696F7661;
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

uint64_t sub_24058F640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_240590634(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24058F674(uint64_t a1)
{
  v2 = sub_240590088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24058F6B0(uint64_t a1)
{
  v2 = sub_240590088();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FindMyRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6370, &qword_24075D678);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v18 = *(v1 + 9);
  v19 = v10;
  v17 = *(v1 + 16);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240590088();
  v12 = v9;
  sub_24075AF74();
  v21 = v9;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6380, &qword_24077A650);
  sub_240590128(&qword_27E4B6388, &qword_27E4B6380, &qword_24077A650);
  sub_24075ABE4();

  if (!v2)
  {
    v13 = v17;
    LOBYTE(v21) = 1;
    sub_24075ABC4();
    LOBYTE(v21) = 2;
    sub_24075ABC4();
    v21 = v13;
    v20 = 3;
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    sub_240590128(&qword_27E4B6398, &qword_27E4B6390, &qword_24075DBE0);
    sub_24075ABE4();
  }

  return (*(v5 + 8))(v8, v4);
}

void FindMyRequest.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 16);
  if (*v0)
  {
    sub_24075AE94();
    v5 = v1;
    sub_24075A6E4();
  }

  else
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075AE94();
  if (v4)
  {
    sub_24075AE94();
    v6 = v4;
    sub_24075A6E4();
  }

  else
  {
    sub_24075AE94();
  }
}

uint64_t FindMyRequest.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  v5 = v0[2];
  sub_24075AE64();
  FindMyRequest.hash(into:)();
  return sub_24075AED4();
}

void FindMyRequest.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B63A0, &qword_24075D680);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240590088();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6380, &qword_24077A650);
    v19 = 0;
    sub_240590128(&qword_27E4B63A8, &qword_27E4B6380, &qword_24077A650);
    sub_24075AAF4();
    v11 = v20;
    LOBYTE(v20) = 1;
    v18 = sub_24075AAD4();
    LOBYTE(v20) = 2;
    HIDWORD(v17) = sub_24075AAD4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    v19 = 3;
    sub_240590128(&qword_27E4B63B0, &qword_27E4B6390, &qword_24075DBE0);
    sub_24075AAF4();
    v12 = v18 & 1;
    v13 = BYTE4(v17) & 1;
    (*(v6 + 8))(v9, v5);
    v14 = v20;
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 9) = v13;
    *(a2 + 16) = v14;
    v15 = v14;
    v16 = v11;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_24058FE14()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  v5 = v0[2];
  sub_24075AE64();
  FindMyRequest.hash(into:)();
  return sub_24075AED4();
}

uint64_t sub_24058FE7C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  v5 = v0[2];
  sub_24075AE64();
  FindMyRequest.hash(into:)();
  return sub_24075AED4();
}

BOOL _s12AppleIDSetup13FindMyRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v3 = *a1;
  v4 = *(a1 + 9);
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = *(a2 + 9);
  v8 = *(a2 + 16);
  if (!*a1)
  {
    result = 0;
    if (v6)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (!v6)
  {
    return 0;
  }

  sub_240590794(0, &qword_27E4B63F8, 0x277CB8F30);
  v9 = v6;
  v10 = v3;
  v11 = sub_24075A6D4();

  result = 0;
  if (v11)
  {
LABEL_9:
    if (((v4 ^ v7) & 1) == 0)
    {
      result = (v5 | v8) == 0;
      if (v5)
      {
        if (v8)
        {
          sub_240590794(0, &qword_27E4B63F0, 0x277CCA9B8);
          v12 = v8;
          v13 = v5;
          v14 = sub_24075A6D4();

          return v14 & 1;
        }
      }
    }
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_240590088()
{
  result = qword_27E4B6378;
  if (!qword_27E4B6378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6378);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_240590128(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_240590170(void *a1)
{
  a1[1] = sub_2405901A8();
  a1[2] = sub_2405901FC();
  result = sub_240590250();
  a1[3] = result;
  return result;
}

unint64_t sub_2405901A8()
{
  result = qword_27E4B63B8;
  if (!qword_27E4B63B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B63B8);
  }

  return result;
}

unint64_t sub_2405901FC()
{
  result = qword_27E4B63C0;
  if (!qword_27E4B63C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B63C0);
  }

  return result;
}

unint64_t sub_240590250()
{
  result = qword_27E4B63C8;
  if (!qword_27E4B63C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B63C8);
  }

  return result;
}

unint64_t sub_2405902A8()
{
  result = qword_27E4B63D0;
  if (!qword_27E4B63D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B63D0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_240590310(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24059036C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FindMyRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FindMyRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_240590530()
{
  result = qword_27E4B63D8;
  if (!qword_27E4B63D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B63D8);
  }

  return result;
}

unint64_t sub_240590588()
{
  result = qword_27E4B63E0;
  if (!qword_27E4B63E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B63E0);
  }

  return result;
}

unint64_t sub_2405905E0()
{
  result = qword_27E4B63E8;
  if (!qword_27E4B63E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B63E8);
  }

  return result;
}

uint64_t sub_240590634(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x495564696F7661 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_240590794(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_240590814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AuthenticationModel.candidateAccountID.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AuthenticationModel(0) + 20));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_2405B044C(v10, &v9, &qword_27E4B6420, &qword_240768F00);
}

__n128 AuthenticationModel.candidateAccountID.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for AuthenticationModel(0) + 20));
  v4 = v3[3];
  v8[2] = v3[2];
  v8[3] = v4;
  v8[4] = v3[4];
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_2405B8A50(v8, &qword_27E4B6420, &qword_240768F00);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t AuthenticationModel.userInteraction.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AuthenticationModel(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AuthenticationModel.userInteraction.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AuthenticationModel(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t AuthenticationModel.idmsData.getter()
{
  v1 = (v0 + *(type metadata accessor for AuthenticationModel(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AuthenticationModel.idmsData.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AuthenticationModel(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AuthenticationModel.currentServices.getter()
{
  v1 = *(v0 + *(type metadata accessor for AuthenticationModel(0) + 32));
}

uint64_t AuthenticationModel.currentServices.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthenticationModel(0) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AuthenticationModel.supportsSplitAccounts.setter(char a1)
{
  result = type metadata accessor for AuthenticationModel(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_240590D10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationModel.BindableState(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240594008(a1, v7, type metadata accessor for AuthenticationModel.BindableState);
  v8 = *(type metadata accessor for AuthenticationModel(0) + 40);
  sub_240593D7C(a2 + v8, type metadata accessor for AuthenticationModel.State);
  sub_2405937E0((a2 + v8));
  return sub_240593D7C(v7, type metadata accessor for AuthenticationModel.BindableState);
}

uint64_t AuthenticationModel.bindableState.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthenticationModel(0) + 40);
  sub_240593D7C(v1 + v3, type metadata accessor for AuthenticationModel.State);
  sub_2405937E0((v1 + v3));
  return sub_240593D7C(a1, type metadata accessor for AuthenticationModel.BindableState);
}

double sub_240590E6C@<D0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v430 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IdMSAccount();
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v430 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for AuthenticationModel.State(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v430 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v430 - v17;
  sub_240594008(v2, &v430 - v17, type metadata accessor for AuthenticationModel.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2405AE39C(v18, v7, type metadata accessor for AuthenticationModel.PreflightRepair);
      v19 = type metadata accessor for AuthenticationModel.BindableState(0);
      sub_240594008(v7, &a1[v19[5]], type metadata accessor for AuthenticationModel.PreflightRepair);
      sub_24059BBA4(&v458);
      v443 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v453) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v271 = v453;
      v272 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v447) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v273 = v447;
      sub_24059BC20(&v468);
      v274 = v470;
      v275 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      sub_240593D7C(v7, type metadata accessor for AuthenticationModel.PreflightRepair);
      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      *a1 = 2;
      v276 = &a1[v19[6]];
      v277 = v463;
      *(v276 + 4) = v462;
      *(v276 + 5) = v277;
      v276[96] = v464;
      v278 = v459;
      *v276 = v458;
      *(v276 + 1) = v278;
      v279 = v461;
      *(v276 + 2) = v460;
      *(v276 + 3) = v279;
      v280 = &a1[v19[7]];
      *v280 = v443;
      *(v280 + 8) = xmmword_24075D8D0;
      v280[24] = v271;
      v29 = 0uLL;
      *(v280 + 2) = xmmword_24075D8E0;
      *(v280 + 3) = 0u;
      *(v280 + 4) = 0u;
      v281 = &a1[v19[8]];
      *v281 = v272;
      *(v281 + 8) = xmmword_24075D8D0;
      v281[24] = v273;
      *(v281 + 2) = xmmword_24075D8E0;
      *(v281 + 3) = 0u;
      *(v281 + 4) = 0u;
      v282 = &a1[v19[9]];
      v32 = v469;
      *v282 = v468;
      *(v282 + 1) = v32;
      *(v282 + 4) = v274;
      v283 = &a1[v19[10]];
      *v283 = 0u;
      *(v283 + 1) = 0u;
      v284 = &a1[v19[11]];
      *v284 = 0u;
      *(v284 + 1) = 0u;
      v285 = &a1[v19[12]];
      *v285 = v275;
      *(v285 + 1) = 0;
      *(v285 + 2) = 0xE000000000000000;
      v285[24] = 2;
      v36 = &a1[v19[13]];
      *v36 = 0;
      *(v36 + 1) = 0xE000000000000000;
      *(v36 + 2) = 0;
      *(v36 + 3) = 0xE000000000000000;
      goto LABEL_32;
    case 2u:
      v443 = v4;
      v174 = *(v18 + 5);
      v472 = *(v18 + 4);
      v473 = v174;
      v474 = v18[96];
      v175 = *(v18 + 1);
      v468 = *v18;
      v469 = v175;
      v176 = *(v18 + 3);
      v470 = *(v18 + 2);
      v471 = v176;
      v37 = type metadata accessor for AuthenticationModel.BindableState(0);
      v177 = &a1[v37[5]];
      sub_2405AE958(&v468, &v458);
      if (qword_27E4B5F10 != -1)
      {
        swift_once();
      }

      v455 = xmmword_27E4B8DA0;
      v456 = xmmword_27E4B8DB0;
      v457 = xmmword_27E4B8DC0;
      v453 = xmmword_27E4B8D80;
      v454 = xmmword_27E4B8D90;
      v178 = v8[5];
      sub_2405AF99C(&v453, &v458);
      sub_240759594();
      sub_2405AF9F8(&v458);
      v179 = (v11 + v8[8]);
      v442 = xmmword_24075D8C0;
      *v179 = xmmword_24075D8C0;
      v180 = v11 + v8[9];
      *v180 = 0;
      v180[8] = 1;
      v181 = v456;
      v11[2] = v455;
      v11[3] = v181;
      v182 = v458;
      v11[4] = v457;
      v183 = v454;
      *v11 = v453;
      v11[1] = v183;
      v184 = (v11 + v8[6]);
      v185 = v465;
      v186 = v466;
      v187 = v463;
      v184[6] = v464;
      v184[7] = v185;
      v188 = v467;
      v184[8] = v186;
      v184[9] = v188;
      v189 = v461;
      v190 = v462;
      v191 = v459;
      v184[2] = v460;
      v184[3] = v189;
      v184[4] = v190;
      v184[5] = v187;
      *v184 = v182;
      v184[1] = v191;
      *(v11 + v8[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v179, v179[1]);
      *v179 = v442;
      *v180 = 0;
      v180[8] = 0;
      v192 = v443;
      v193 = v443[6];
      *(v177 + v193) = 0;
      sub_2405AE39C(v11, v177, type metadata accessor for IdMSAccount);
      *(v177 + v192[5]) = 0;

      *(v177 + v193) = 0;
      v443 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v444) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v55 = v444;
      v56 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      v452 = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v57 = v452;
      sub_24059BC20(&v447);
      v58 = v449;
      v59 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      sub_2405AE36C(&v468);
      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      v194 = 4;
      goto LABEL_25;
    case 3u:
      v443 = v4;
      v212 = *(v18 + 5);
      v472 = *(v18 + 4);
      v473 = v212;
      v474 = v18[96];
      v213 = *(v18 + 1);
      v468 = *v18;
      v469 = v213;
      v214 = *(v18 + 3);
      v470 = *(v18 + 2);
      v471 = v214;
      v37 = type metadata accessor for AuthenticationModel.BindableState(0);
      v215 = &a1[v37[5]];
      sub_2405AE958(&v468, &v458);
      if (qword_27E4B5F10 != -1)
      {
        swift_once();
      }

      v455 = xmmword_27E4B8DA0;
      v456 = xmmword_27E4B8DB0;
      v457 = xmmword_27E4B8DC0;
      v453 = xmmword_27E4B8D80;
      v454 = xmmword_27E4B8D90;
      v216 = v8[5];
      sub_2405AF99C(&v453, &v458);
      sub_240759594();
      sub_2405AF9F8(&v458);
      v217 = (v11 + v8[8]);
      v442 = xmmword_24075D8C0;
      *v217 = xmmword_24075D8C0;
      v218 = v11 + v8[9];
      *v218 = 0;
      v218[8] = 1;
      v219 = v456;
      v11[2] = v455;
      v11[3] = v219;
      v220 = v458;
      v11[4] = v457;
      v221 = v454;
      *v11 = v453;
      v11[1] = v221;
      v222 = (v11 + v8[6]);
      v223 = v465;
      v224 = v466;
      v225 = v463;
      v222[6] = v464;
      v222[7] = v223;
      v226 = v467;
      v222[8] = v224;
      v222[9] = v226;
      v227 = v461;
      v228 = v462;
      v229 = v459;
      v222[2] = v460;
      v222[3] = v227;
      v222[4] = v228;
      v222[5] = v225;
      *v222 = v220;
      v222[1] = v229;
      *(v11 + v8[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v217, v217[1]);
      *v217 = v442;
      *v218 = 0;
      v218[8] = 0;
      v230 = v443;
      v231 = v443[6];
      *(v215 + v231) = 0;
      sub_2405AE39C(v11, v215, type metadata accessor for IdMSAccount);
      *(v215 + v230[5]) = 0;

      *(v215 + v231) = 0;
      v443 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v444) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v55 = v444;
      v56 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      v452 = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v57 = v452;
      sub_24059BC20(&v447);
      v58 = v449;
      v59 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      sub_2405AE36C(&v468);
      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      v194 = 5;
      goto LABEL_25;
    case 4u:
      v443 = v4;
      v98 = *(v18 + 3);
      v449 = *(v18 + 2);
      v450 = v98;
      v451 = *(v18 + 4);
      v99 = *(v18 + 1);
      v447 = *v18;
      v448 = v99;
      v37 = type metadata accessor for AuthenticationModel.BindableState(0);
      v100 = &a1[v37[5]];
      sub_2405AE9EC(&v447, &v458);
      if (qword_27E4B5F10 != -1)
      {
        swift_once();
      }

      v455 = xmmword_27E4B8DA0;
      v456 = xmmword_27E4B8DB0;
      v457 = xmmword_27E4B8DC0;
      v453 = xmmword_27E4B8D80;
      v454 = xmmword_27E4B8D90;
      v101 = v8[5];
      sub_2405AF99C(&v453, &v458);
      sub_240759594();
      sub_2405AF9F8(&v458);
      v102 = (v11 + v8[8]);
      v442 = xmmword_24075D8C0;
      *v102 = xmmword_24075D8C0;
      v103 = v11 + v8[9];
      *v103 = 0;
      v103[8] = 1;
      v104 = v456;
      v11[2] = v455;
      v11[3] = v104;
      v105 = v458;
      v11[4] = v457;
      v106 = v454;
      *v11 = v453;
      v11[1] = v106;
      v107 = (v11 + v8[6]);
      v108 = v465;
      v109 = v466;
      v110 = v463;
      v107[6] = v464;
      v107[7] = v108;
      v111 = v467;
      v107[8] = v109;
      v107[9] = v111;
      v112 = v461;
      v113 = v462;
      v114 = v459;
      v107[2] = v460;
      v107[3] = v112;
      v107[4] = v113;
      v107[5] = v110;
      *v107 = v105;
      v107[1] = v114;
      *(v11 + v8[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v102, v102[1]);
      *v102 = v442;
      *v103 = 0;
      v103[8] = 0;
      v115 = v443;
      v116 = v443[6];
      *(v100 + v116) = 0;
      sub_2405AE39C(v11, v100, type metadata accessor for IdMSAccount);
      *(v100 + v115[5]) = 0;

      *(v100 + v116) = 0;
      sub_24059BBA4(&v468);
      v117 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      v452 = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v118 = v452;
      sub_24059BC20(&v444);
      v119 = v446;
      v120 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      sub_2405AE30C(&v447);
      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      v121 = 6;
      goto LABEL_41;
    case 5u:
      v443 = v4;
      v287 = *(v18 + 3);
      v449 = *(v18 + 2);
      v450 = v287;
      v451 = *(v18 + 4);
      v288 = *(v18 + 1);
      v447 = *v18;
      v448 = v288;
      v37 = type metadata accessor for AuthenticationModel.BindableState(0);
      v289 = &a1[v37[5]];
      sub_2405AEA24(&v447, &v458);
      if (qword_27E4B5F10 != -1)
      {
        swift_once();
      }

      v455 = xmmword_27E4B8DA0;
      v456 = xmmword_27E4B8DB0;
      v457 = xmmword_27E4B8DC0;
      v453 = xmmword_27E4B8D80;
      v454 = xmmword_27E4B8D90;
      v290 = v8[5];
      sub_2405AF99C(&v453, &v458);
      sub_240759594();
      sub_2405AF9F8(&v458);
      v291 = (v11 + v8[8]);
      v442 = xmmword_24075D8C0;
      *v291 = xmmword_24075D8C0;
      v292 = v11 + v8[9];
      *v292 = 0;
      v292[8] = 1;
      v293 = v456;
      v11[2] = v455;
      v11[3] = v293;
      v294 = v458;
      v11[4] = v457;
      v295 = v454;
      *v11 = v453;
      v11[1] = v295;
      v296 = (v11 + v8[6]);
      v297 = v465;
      v298 = v466;
      v299 = v463;
      v296[6] = v464;
      v296[7] = v297;
      v300 = v467;
      v296[8] = v298;
      v296[9] = v300;
      v301 = v461;
      v302 = v462;
      v303 = v459;
      v296[2] = v460;
      v296[3] = v301;
      v296[4] = v302;
      v296[5] = v299;
      *v296 = v294;
      v296[1] = v303;
      *(v11 + v8[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v291, v291[1]);
      *v291 = v442;
      *v292 = 0;
      v292[8] = 0;
      v304 = v443;
      v305 = v443[6];
      *(v289 + v305) = 0;
      sub_2405AE39C(v11, v289, type metadata accessor for IdMSAccount);
      *(v289 + v304[5]) = 0;

      *(v289 + v305) = 0;
      sub_24059BBA4(&v468);
      v306 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      v452 = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v307 = v452;
      sub_24059BC20(&v444);
      v308 = v446;
      v309 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      sub_2405AE33C(&v447);
      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      *a1 = 8;
      v310 = &a1[v37[6]];
      v311 = v473;
      *(v310 + 4) = v472;
      *(v310 + 5) = v311;
      v310[96] = v474;
      v312 = v469;
      *v310 = v468;
      *(v310 + 1) = v312;
      v32 = v471;
      *(v310 + 2) = v470;
      *(v310 + 3) = v32;
      v313 = &a1[v37[7]];
      *v313 = v306;
      *(v313 + 8) = xmmword_24075D8D0;
      v313[24] = v307;
      *(v313 + 2) = xmmword_24075D8E0;
      *(v313 + 3) = 0u;
      *(v313 + 4) = 0u;
      v314 = &a1[v37[8]];
      v315 = v451;
      *(v314 + 3) = v450;
      *(v314 + 4) = v315;
      v316 = v449;
      *(v314 + 1) = v448;
      *(v314 + 2) = v316;
      *v314 = v447;
      v317 = &a1[v37[9]];
      *&v32 = v444;
      v318 = v445;
      *v317 = v444;
      *(v317 + 1) = v318;
      *(v317 + 4) = v308;
      v319 = &a1[v37[10]];
      *v319 = 0u;
      *(v319 + 1) = 0u;
      v320 = &a1[v37[11]];
      *v320 = 0u;
      *(v320 + 1) = 0u;
      v321 = &a1[v37[12]];
      *v321 = v309;
      *(v321 + 1) = 0;
      *(v321 + 2) = 0xE000000000000000;
      v321[24] = 2;
      v97 = &a1[v37[13]];
      *v97 = 0;
      *(v97 + 1) = 0xE000000000000000;
      *(v97 + 2) = 0;
      *(v97 + 3) = 0xE000000000000000;
      *(v97 + 2) = 0u;
      *(v97 + 3) = 0u;
      *(v97 + 4) = 0u;
      goto LABEL_42;
    case 6u:
      v443 = v4;
      v325 = *(v18 + 3);
      v449 = *(v18 + 2);
      v450 = v325;
      v451 = *(v18 + 4);
      v326 = *(v18 + 1);
      v447 = *v18;
      v448 = v326;
      v37 = type metadata accessor for AuthenticationModel.BindableState(0);
      v327 = &a1[v37[5]];
      sub_2405AE9EC(&v447, &v458);
      if (qword_27E4B5F10 != -1)
      {
        swift_once();
      }

      v455 = xmmword_27E4B8DA0;
      v456 = xmmword_27E4B8DB0;
      v457 = xmmword_27E4B8DC0;
      v453 = xmmword_27E4B8D80;
      v454 = xmmword_27E4B8D90;
      v328 = v8[5];
      sub_2405AF99C(&v453, &v458);
      sub_240759594();
      sub_2405AF9F8(&v458);
      v329 = (v11 + v8[8]);
      v442 = xmmword_24075D8C0;
      *v329 = xmmword_24075D8C0;
      v330 = v11 + v8[9];
      *v330 = 0;
      v330[8] = 1;
      v331 = v456;
      v11[2] = v455;
      v11[3] = v331;
      v332 = v458;
      v11[4] = v457;
      v333 = v454;
      *v11 = v453;
      v11[1] = v333;
      v334 = (v11 + v8[6]);
      v335 = v465;
      v336 = v466;
      v337 = v463;
      v334[6] = v464;
      v334[7] = v335;
      v338 = v467;
      v334[8] = v336;
      v334[9] = v338;
      v339 = v461;
      v340 = v462;
      v341 = v459;
      v334[2] = v460;
      v334[3] = v339;
      v334[4] = v340;
      v334[5] = v337;
      *v334 = v332;
      v334[1] = v341;
      *(v11 + v8[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v329, v329[1]);
      *v329 = v442;
      *v330 = 0;
      v330[8] = 0;
      v342 = v443;
      v343 = v443[6];
      *(v327 + v343) = 0;
      sub_2405AE39C(v11, v327, type metadata accessor for IdMSAccount);
      *(v327 + v342[5]) = 0;

      *(v327 + v343) = 0;
      sub_24059BBA4(&v468);
      v117 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      v452 = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v118 = v452;
      sub_24059BC20(&v444);
      v119 = v446;
      v120 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      sub_2405AE30C(&v447);
      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      v121 = 7;
LABEL_41:
      *a1 = v121;
      v344 = &a1[v37[6]];
      v345 = v473;
      *(v344 + 4) = v472;
      *(v344 + 5) = v345;
      v344[96] = v474;
      v346 = v469;
      *v344 = v468;
      *(v344 + 1) = v346;
      v347 = v471;
      *(v344 + 2) = v470;
      *(v344 + 3) = v347;
      v348 = &a1[v37[7]];
      v349 = v450;
      *(v348 + 2) = v449;
      *(v348 + 3) = v349;
      *(v348 + 4) = v451;
      v32 = v448;
      *v348 = v447;
      *(v348 + 1) = v32;
      v350 = &a1[v37[8]];
      *v350 = v117;
      *(v350 + 8) = xmmword_24075D8D0;
      v350[24] = v118;
      *(v350 + 3) = 0u;
      *(v350 + 4) = 0u;
      *(v350 + 2) = xmmword_24075D8E0;
      v351 = &a1[v37[9]];
      *&v32 = v444;
      v352 = v445;
      *v351 = v444;
      *(v351 + 1) = v352;
      *(v351 + 4) = v119;
      v353 = &a1[v37[10]];
      *v353 = 0u;
      *(v353 + 1) = 0u;
      v354 = &a1[v37[11]];
      *v354 = 0u;
      *(v354 + 1) = 0u;
      v355 = &a1[v37[12]];
      *v355 = v120;
      *(v355 + 1) = 0;
      *(v355 + 2) = 0xE000000000000000;
      v355[24] = 2;
      v97 = &a1[v37[13]];
      *v97 = 0;
      *(v97 + 1) = 0xE000000000000000;
      *(v97 + 2) = 0;
      *(v97 + 3) = 0xE000000000000000;
      *(v97 + 3) = 0u;
      *(v97 + 4) = 0u;
      *(v97 + 2) = 0u;
      goto LABEL_42;
    case 7u:
      v242 = *v18;
      v243 = *(v18 + 1);
      v244 = *(v18 + 2);
      v245 = *(v18 + 3);
      v246 = *(v18 + 4);
      v438 = type metadata accessor for AuthenticationModel.BindableState(0);
      v247 = v438[5];
      v443 = a1;
      v432 = &a1[v247];
      v248 = qword_27E4B5F10;
      *&v442 = v242;
      v436 = v242;
      v441 = v243;
      v435 = v243;
      v440 = v244;
      v434 = v244;
      v439 = v245;
      *&v433 = v245;
      *&v437 = v246;
      v431 = v246;
      if (v248 != -1)
      {
        swift_once();
      }

      v455 = xmmword_27E4B8DA0;
      v456 = xmmword_27E4B8DB0;
      v457 = xmmword_27E4B8DC0;
      v453 = xmmword_27E4B8D80;
      v454 = xmmword_27E4B8D90;
      v249 = v8[5];
      sub_2405AF99C(&v453, &v458);
      sub_240759594();
      sub_2405AF9F8(&v458);
      v250 = (v11 + v8[8]);
      v430 = xmmword_24075D8C0;
      *v250 = xmmword_24075D8C0;
      v251 = v11 + v8[9];
      *v251 = 0;
      v251[8] = 1;
      v252 = v456;
      v11[2] = v455;
      v11[3] = v252;
      v253 = v458;
      v11[4] = v457;
      v254 = v454;
      *v11 = v453;
      v11[1] = v254;
      v255 = (v11 + v8[6]);
      v256 = v465;
      v257 = v466;
      v258 = v463;
      v255[6] = v464;
      v255[7] = v256;
      v259 = v467;
      v255[8] = v257;
      v255[9] = v259;
      v260 = v461;
      v261 = v462;
      v262 = v459;
      v255[2] = v460;
      v255[3] = v260;
      v255[4] = v261;
      v255[5] = v258;
      *v255 = v253;
      v255[1] = v262;
      *(v11 + v8[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v250, v250[1]);
      *v250 = v430;
      *v251 = 0;
      v251[8] = 0;
      v263 = *(v4 + 24);
      v264 = v432;
      *&v432[v263] = 0;
      sub_2405AE39C(v11, v264, type metadata accessor for IdMSAccount);
      *(v264 + *(v4 + 20)) = 0;

      *(v264 + v263) = 0;
      sub_24059BBA4(&v468);
      v265 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v447) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v266 = v447;
      v267 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v444) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v268 = v444;
      v269 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];

      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      v270 = 9;
      goto LABEL_51;
    case 8u:
      v392 = *v18;
      v393 = *(v18 + 1);
      v394 = *(v18 + 2);
      v395 = *(v18 + 3);
      v396 = *(v18 + 4);
      v438 = type metadata accessor for AuthenticationModel.BindableState(0);
      v397 = v438[5];
      v443 = a1;
      v432 = &a1[v397];
      v398 = qword_27E4B5F10;
      *&v442 = v392;
      v436 = v392;
      v441 = v393;
      v435 = v393;
      v440 = v394;
      v434 = v394;
      v439 = v395;
      *&v433 = v395;
      *&v437 = v396;
      v431 = v396;
      if (v398 != -1)
      {
        swift_once();
      }

      v455 = xmmword_27E4B8DA0;
      v456 = xmmword_27E4B8DB0;
      v457 = xmmword_27E4B8DC0;
      v453 = xmmword_27E4B8D80;
      v454 = xmmword_27E4B8D90;
      v399 = v8[5];
      sub_2405AF99C(&v453, &v458);
      sub_240759594();
      sub_2405AF9F8(&v458);
      v400 = (v11 + v8[8]);
      v430 = xmmword_24075D8C0;
      *v400 = xmmword_24075D8C0;
      v401 = v11 + v8[9];
      *v401 = 0;
      v401[8] = 1;
      v402 = v456;
      v11[2] = v455;
      v11[3] = v402;
      v403 = v458;
      v11[4] = v457;
      v404 = v454;
      *v11 = v453;
      v11[1] = v404;
      v405 = (v11 + v8[6]);
      v406 = v465;
      v407 = v466;
      v408 = v463;
      v405[6] = v464;
      v405[7] = v406;
      v409 = v467;
      v405[8] = v407;
      v405[9] = v409;
      v410 = v461;
      v411 = v462;
      v412 = v459;
      v405[2] = v460;
      v405[3] = v410;
      v405[4] = v411;
      v405[5] = v408;
      *v405 = v403;
      v405[1] = v412;
      *(v11 + v8[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v400, v400[1]);
      *v400 = v430;
      *v401 = 0;
      v401[8] = 0;
      v413 = *(v4 + 24);
      v414 = v432;
      *&v432[v413] = 0;
      sub_2405AE39C(v11, v414, type metadata accessor for IdMSAccount);
      *(v414 + *(v4 + 20)) = 0;

      *(v414 + v413) = 0;
      sub_24059BBA4(&v468);
      v265 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v447) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v266 = v447;
      v267 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v444) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v268 = v444;
      v269 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];

      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      v270 = 10;
LABEL_51:
      v415 = v443;
      *v443 = v270;
      v416 = v438;
      v417 = v415 + v438[6];
      v418 = v473;
      *(v417 + 4) = v472;
      *(v417 + 5) = v418;
      v417[96] = v474;
      v419 = v469;
      *v417 = v468;
      *(v417 + 1) = v419;
      v32 = v471;
      *(v417 + 2) = v470;
      *(v417 + 3) = v32;
      v420 = v415 + v416[7];
      *v420 = v265;
      *&v32 = 6;
      *(v420 + 8) = xmmword_24075D8D0;
      v420[24] = v266;
      *(v420 + 2) = xmmword_24075D8E0;
      *(v420 + 3) = 0u;
      *(v420 + 4) = 0u;
      v421 = v415 + v416[8];
      *v421 = v267;
      *(v421 + 8) = xmmword_24075D8D0;
      v421[24] = v268;
      *(v421 + 3) = 0u;
      *(v421 + 4) = 0u;
      *(v421 + 2) = xmmword_24075D8E0;
      v422 = (v415 + v416[9]);
      v423 = v441;
      *v422 = v442;
      v422[1] = v423;
      v424 = v439;
      v422[2] = v440;
      v422[3] = v424;
      v422[4] = v437;
      v425 = (v415 + v416[10]);
      *v425 = 0u;
      v425[1] = 0u;
      v426 = (v415 + v416[11]);
      *v426 = 0u;
      v426[1] = 0u;
      v427 = v415 + v416[12];
      *v427 = v269;
      *(v427 + 1) = 0;
      *(v427 + 2) = 0xE000000000000000;
      v427[24] = 2;
      v428 = v415 + v416[13];
      *v428 = 0;
      *(v428 + 1) = 0xE000000000000000;
      *(v428 + 2) = 0;
      *(v428 + 3) = 0xE000000000000000;
      *(v428 + 3) = 0u;
      *(v428 + 4) = 0u;
      *(v428 + 2) = 0u;
      *(v428 + 40) = 511;
      *(v415 + v416[14]) = 0;
      *(v415 + v416[15]) = 0;
      return *&v32;
    case 9u:
      v137 = *v18;
      v138 = *(v18 + 1);
      v140 = *(v18 + 2);
      v139 = *(v18 + 3);
      v439 = type metadata accessor for AuthenticationModel.BindableState(0);
      v435 = &a1[*(v439 + 20)];
      v141 = qword_27E4B5F10;
      v443 = v137;
      v438 = v137;
      *&v442 = v138;
      *&v437 = v138;
      v441 = v140;
      v436 = v140;
      v440 = v139;
      v434 = v139;
      if (v141 != -1)
      {
        swift_once();
      }

      v455 = xmmword_27E4B8DA0;
      v456 = xmmword_27E4B8DB0;
      v457 = xmmword_27E4B8DC0;
      v453 = xmmword_27E4B8D80;
      v454 = xmmword_27E4B8D90;
      v142 = v8[5];
      sub_2405AF99C(&v453, &v458);
      sub_240759594();
      sub_2405AF9F8(&v458);
      v143 = (v11 + v8[8]);
      v433 = xmmword_24075D8C0;
      *v143 = xmmword_24075D8C0;
      v144 = v11 + v8[9];
      *v144 = 0;
      v144[8] = 1;
      v145 = v456;
      v11[2] = v455;
      v11[3] = v145;
      v146 = v458;
      v11[4] = v457;
      v147 = v454;
      *v11 = v453;
      v11[1] = v147;
      v148 = (v11 + v8[6]);
      v149 = v465;
      v150 = v466;
      v151 = v463;
      v148[6] = v464;
      v148[7] = v149;
      v152 = v467;
      v148[8] = v150;
      v148[9] = v152;
      v153 = v461;
      v154 = v462;
      v155 = v459;
      v148[2] = v460;
      v148[3] = v153;
      v148[4] = v154;
      v148[5] = v151;
      *v148 = v146;
      v148[1] = v155;
      *(v11 + v8[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v143, v143[1]);
      *v143 = v433;
      *v144 = 0;
      v144[8] = 0;
      v156 = *(v4 + 24);
      v157 = v435;
      *&v435[v156] = 0;
      sub_2405AE39C(v11, v157, type metadata accessor for IdMSAccount);
      v157[*(v4 + 20)] = 0;

      *&v157[v156] = 0;
      sub_24059BBA4(&v468);
      v435 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v444) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      LOBYTE(v157) = v444;
      v158 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      v452 = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      LOBYTE(v143) = v452;
      sub_24059BC20(&v447);
      v159 = v449;
      v160 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];

      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      *a1 = 11;
      v161 = v439;
      v162 = &a1[*(v439 + 24)];
      v163 = v473;
      *(v162 + 4) = v472;
      *(v162 + 5) = v163;
      v162[96] = v474;
      v164 = v469;
      *v162 = v468;
      *(v162 + 1) = v164;
      v165 = v471;
      *(v162 + 2) = v470;
      *(v162 + 3) = v165;
      v166 = &a1[v161[7]];
      *v166 = v435;
      *(v166 + 8) = xmmword_24075D8D0;
      v166[24] = v157;
      v167 = 0uLL;
      *(v166 + 2) = xmmword_24075D8E0;
      *(v166 + 3) = 0u;
      *(v166 + 4) = 0u;
      v168 = &a1[v161[8]];
      *v168 = v158;
      *(v168 + 8) = xmmword_24075D8D0;
      v168[24] = v143;
      *(v168 + 2) = xmmword_24075D8E0;
      *(v168 + 3) = 0u;
      *(v168 + 4) = 0u;
      v169 = &a1[v161[9]];
      v32 = v448;
      *v169 = v447;
      *(v169 + 1) = v32;
      *(v169 + 4) = v159;
      v170 = &a1[v161[10]];
      v171 = v442;
      *v170 = v443;
      *(v170 + 1) = v171;
      v172 = v440;
      *(v170 + 2) = v441;
      *(v170 + 3) = v172;
      v173 = &a1[v161[11]];
      *v173 = 0u;
      *(v173 + 1) = 0u;
      goto LABEL_47;
    case 0xAu:
      v356 = *v18;
      v357 = *(v18 + 1);
      v359 = *(v18 + 2);
      v358 = *(v18 + 3);
      v439 = type metadata accessor for AuthenticationModel.BindableState(0);
      v435 = &a1[*(v439 + 20)];
      v360 = qword_27E4B5F10;
      v443 = v356;
      v438 = v356;
      *&v442 = v357;
      *&v437 = v357;
      v441 = v359;
      v436 = v359;
      v440 = v358;
      v434 = v358;
      if (v360 != -1)
      {
        swift_once();
      }

      v455 = xmmword_27E4B8DA0;
      v456 = xmmword_27E4B8DB0;
      v457 = xmmword_27E4B8DC0;
      v453 = xmmword_27E4B8D80;
      v454 = xmmword_27E4B8D90;
      v361 = v8[5];
      sub_2405AF99C(&v453, &v458);
      sub_240759594();
      sub_2405AF9F8(&v458);
      v362 = (v11 + v8[8]);
      v433 = xmmword_24075D8C0;
      *v362 = xmmword_24075D8C0;
      v363 = v11 + v8[9];
      *v363 = 0;
      v363[8] = 1;
      v364 = v456;
      v11[2] = v455;
      v11[3] = v364;
      v365 = v458;
      v11[4] = v457;
      v366 = v454;
      *v11 = v453;
      v11[1] = v366;
      v367 = (v11 + v8[6]);
      v368 = v465;
      v369 = v466;
      v370 = v463;
      v367[6] = v464;
      v367[7] = v368;
      v371 = v467;
      v367[8] = v369;
      v367[9] = v371;
      v372 = v461;
      v373 = v462;
      v374 = v459;
      v367[2] = v460;
      v367[3] = v372;
      v367[4] = v373;
      v367[5] = v370;
      *v367 = v365;
      v367[1] = v374;
      *(v11 + v8[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v362, v362[1]);
      *v362 = v433;
      *v363 = 0;
      v363[8] = 0;
      v375 = *(v4 + 24);
      v376 = v435;
      *&v435[v375] = 0;
      sub_2405AE39C(v11, v376, type metadata accessor for IdMSAccount);
      v376[*(v4 + 20)] = 0;

      *&v376[v375] = 0;
      sub_24059BBA4(&v468);
      v435 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v444) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      LOBYTE(v376) = v444;
      v377 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      v452 = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      LOBYTE(v362) = v452;
      sub_24059BC20(&v447);
      v378 = v449;
      v160 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];

      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      *a1 = 12;
      v161 = v439;
      v379 = &a1[*(v439 + 24)];
      v380 = v473;
      *(v379 + 4) = v472;
      *(v379 + 5) = v380;
      v379[96] = v474;
      v381 = v469;
      *v379 = v468;
      *(v379 + 1) = v381;
      v382 = v471;
      *(v379 + 2) = v470;
      *(v379 + 3) = v382;
      v383 = &a1[v161[7]];
      *v383 = v435;
      *(v383 + 8) = xmmword_24075D8D0;
      v383[24] = v376;
      v167 = 0uLL;
      *(v383 + 2) = xmmword_24075D8E0;
      *(v383 + 3) = 0u;
      *(v383 + 4) = 0u;
      v384 = &a1[v161[8]];
      *v384 = v377;
      *(v384 + 8) = xmmword_24075D8D0;
      v384[24] = v362;
      *(v384 + 2) = xmmword_24075D8E0;
      *(v384 + 3) = 0u;
      *(v384 + 4) = 0u;
      v385 = &a1[v161[9]];
      v32 = v448;
      *v385 = v447;
      *(v385 + 1) = v32;
      *(v385 + 4) = v378;
      v386 = &a1[v161[10]];
      *v386 = 0u;
      *(v386 + 1) = 0u;
      v387 = &a1[v161[11]];
      v388 = v442;
      *v387 = v443;
      *(v387 + 1) = v388;
      v389 = v440;
      *(v387 + 2) = v441;
      *(v387 + 3) = v389;
LABEL_47:
      v390 = &a1[v161[12]];
      *v390 = v160;
      *(v390 + 1) = 0;
      *(v390 + 2) = 0xE000000000000000;
      v390[24] = 2;
      v391 = &a1[v161[13]];
      *v391 = 0;
      *(v391 + 1) = 0xE000000000000000;
      *(v391 + 2) = 0;
      *(v391 + 3) = 0xE000000000000000;
      *(v391 + 2) = v167;
      *(v391 + 3) = v167;
      *(v391 + 4) = v167;
      *(v391 + 40) = 511;
      a1[v161[14]] = 0;
      v286 = v161[15];
      break;
    case 0xBu:
      v443 = v4;
      v60 = *v18;
      v440 = *(v18 + 1);
      v61 = *(v18 + 2);
      LODWORD(v439) = v18[24];
      v37 = type metadata accessor for AuthenticationModel.BindableState(0);
      v62 = &a1[v37[5]];
      v63 = qword_27E4B5F10;
      *&v442 = v60;
      v438 = v60;
      v441 = v61;

      if (v63 != -1)
      {
        swift_once();
      }

      v455 = xmmword_27E4B8DA0;
      v456 = xmmword_27E4B8DB0;
      v457 = xmmword_27E4B8DC0;
      v453 = xmmword_27E4B8D80;
      v454 = xmmword_27E4B8D90;
      v64 = v8[5];
      sub_2405AF99C(&v453, &v458);
      sub_240759594();
      sub_2405AF9F8(&v458);
      v65 = (v11 + v8[8]);
      v437 = xmmword_24075D8C0;
      *v65 = xmmword_24075D8C0;
      v66 = v11 + v8[9];
      *v66 = 0;
      v66[8] = 1;
      v67 = v456;
      v11[2] = v455;
      v11[3] = v67;
      v68 = v458;
      v11[4] = v457;
      v69 = v454;
      *v11 = v453;
      v11[1] = v69;
      v70 = (v11 + v8[6]);
      v71 = v465;
      v72 = v466;
      v73 = v463;
      v70[6] = v464;
      v70[7] = v71;
      v74 = v467;
      v70[8] = v72;
      v70[9] = v74;
      v75 = v461;
      v76 = v462;
      v77 = v459;
      v70[2] = v460;
      v70[3] = v75;
      v70[4] = v76;
      v70[5] = v73;
      *v70 = v68;
      v70[1] = v77;
      *(v11 + v8[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v65, v65[1]);
      *v65 = v437;
      *v66 = 0;
      v66[8] = 0;
      v78 = v443;
      v79 = v443[6];
      *(v62 + v79) = 0;
      sub_2405AE39C(v11, v62, type metadata accessor for IdMSAccount);
      *(v62 + v78[5]) = 0;

      *(v62 + v79) = 0;
      sub_24059BBA4(&v468);
      v80 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v444) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      LOBYTE(v79) = v444;
      v81 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      v452 = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v82 = v452;
      sub_24059BC20(&v447);
      v83 = v449;
      v84 = v441;

      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      *a1 = 13;
      v85 = &a1[v37[6]];
      v86 = v473;
      *(v85 + 4) = v472;
      *(v85 + 5) = v86;
      v85[96] = v474;
      v87 = v469;
      *v85 = v468;
      *(v85 + 1) = v87;
      v88 = v471;
      *(v85 + 2) = v470;
      *(v85 + 3) = v88;
      v89 = &a1[v37[7]];
      *v89 = v80;
      *(v89 + 8) = xmmword_24075D8D0;
      v89[24] = v79;
      v90 = 0uLL;
      *(v89 + 2) = xmmword_24075D8E0;
      *(v89 + 3) = 0u;
      *(v89 + 4) = 0u;
      v91 = &a1[v37[8]];
      *v91 = v81;
      *(v91 + 8) = xmmword_24075D8D0;
      v91[24] = v82;
      *(v91 + 2) = xmmword_24075D8E0;
      *(v91 + 3) = 0u;
      *(v91 + 4) = 0u;
      v92 = &a1[v37[9]];
      v32 = v448;
      *v92 = v447;
      *(v92 + 1) = v32;
      *(v92 + 4) = v83;
      v93 = &a1[v37[10]];
      *v93 = 0u;
      *(v93 + 1) = 0u;
      v94 = &a1[v37[11]];
      *v94 = 0u;
      *(v94 + 1) = 0u;
      v95 = &a1[v37[12]];
      v96 = v440;
      *v95 = v442;
      *(v95 + 1) = v96;
      *(v95 + 2) = v84;
      v95[24] = v439;
      v97 = &a1[v37[13]];
      goto LABEL_27;
    case 0xCu:
      v122 = *v18;
      v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
      v124 = swift_projectBox();
      v125 = *(v124 + 32);
      v126 = *(v124 + 48);
      v127 = *(v124 + 64);
      LOWORD(v473) = *(v124 + 80);
      v471 = v126;
      v472 = v127;
      v128 = *(v124 + 16);
      v468 = *v124;
      v469 = v128;
      v470 = v125;
      sub_240594008(v124 + *(v123 + 48), v16, type metadata accessor for AuthenticationModel.State);
      v129 = sub_2405AE2A4(&v468, &v458);
      sub_240590E6C(v129);
      sub_240593D7C(v16, type metadata accessor for AuthenticationModel.State);
      v130 = type metadata accessor for AuthenticationModel.BindableState(0);
      v131 = &a1[*(v130 + 52)];
      v132 = *(v131 + 4);
      v461 = *(v131 + 3);
      v462 = v132;
      LOWORD(v463) = *(v131 + 40);
      v133 = *(v131 + 2);
      v459 = *(v131 + 1);
      v460 = v133;
      v458 = *v131;
      sub_2405AE2DC(&v458);

      v134 = v471;
      *(v131 + 2) = v470;
      *(v131 + 3) = v134;
      *(v131 + 4) = v472;
      *(v131 + 40) = v473;
      *&v32 = v468;
      v135 = v469;
      *v131 = v468;
      *(v131 + 1) = v135;
      v136 = *(v130 + 56);
      goto LABEL_37;
    case 0xDu:
      v322 = *v18;
      v323 = swift_projectBox();
      v324 = sub_240594008(v323, v16, type metadata accessor for AuthenticationModel.State);
      sub_240590E6C(v324);
      sub_240593D7C(v16, type metadata accessor for AuthenticationModel.State);

      v136 = *(type metadata accessor for AuthenticationModel.BindableState(0) + 60);
LABEL_37:
      a1[v136] = 1;
      return *&v32;
    case 0xEu:
      v443 = v4;
      v37 = type metadata accessor for AuthenticationModel.BindableState(0);
      v38 = &a1[v37[5]];
      if (qword_27E4B5F10 != -1)
      {
        swift_once();
      }

      v455 = xmmword_27E4B8DA0;
      v456 = xmmword_27E4B8DB0;
      v457 = xmmword_27E4B8DC0;
      v453 = xmmword_27E4B8D80;
      v454 = xmmword_27E4B8D90;
      v39 = v8[5];
      sub_2405AF99C(&v453, &v458);
      sub_240759594();
      sub_2405AF9F8(&v458);
      v40 = (v11 + v8[8]);
      v442 = xmmword_24075D8C0;
      *v40 = xmmword_24075D8C0;
      v41 = v11 + v8[9];
      *v41 = 0;
      v41[8] = 1;
      v42 = v456;
      v11[2] = v455;
      v11[3] = v42;
      v43 = v458;
      v11[4] = v457;
      v44 = v454;
      *v11 = v453;
      v11[1] = v44;
      v45 = (v11 + v8[6]);
      v46 = v465;
      v47 = v466;
      v48 = v463;
      v45[6] = v464;
      v45[7] = v46;
      v49 = v467;
      v45[8] = v47;
      v45[9] = v49;
      v50 = v461;
      v51 = v462;
      v52 = v459;
      v45[2] = v460;
      v45[3] = v50;
      v45[4] = v51;
      v45[5] = v48;
      *v45 = v43;
      v45[1] = v52;
      *(v11 + v8[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v40, v40[1]);
      *v40 = v442;
      *v41 = 0;
      v41[8] = 0;
      v53 = v443;
      v54 = v443[6];
      *(v38 + v54) = 0;
      sub_2405AE39C(v11, v38, type metadata accessor for IdMSAccount);
      *(v38 + v53[5]) = 0;

      *(v38 + v54) = 0;
      sub_24059BBA4(&v468);
      v443 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v444) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v55 = v444;
      v56 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      v452 = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v57 = v452;
      sub_24059BC20(&v447);
      v58 = v449;
      v59 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      *a1 = 0;
      goto LABEL_26;
    case 0xFu:
      v443 = v4;
      v37 = type metadata accessor for AuthenticationModel.BindableState(0);
      v195 = &a1[v37[5]];
      if (qword_27E4B5F10 != -1)
      {
        swift_once();
      }

      v455 = xmmword_27E4B8DA0;
      v456 = xmmword_27E4B8DB0;
      v457 = xmmword_27E4B8DC0;
      v453 = xmmword_27E4B8D80;
      v454 = xmmword_27E4B8D90;
      v196 = v8[5];
      sub_2405AF99C(&v453, &v458);
      sub_240759594();
      sub_2405AF9F8(&v458);
      v197 = (v11 + v8[8]);
      v442 = xmmword_24075D8C0;
      *v197 = xmmword_24075D8C0;
      v198 = v11 + v8[9];
      *v198 = 0;
      v198[8] = 1;
      v199 = v456;
      v11[2] = v455;
      v11[3] = v199;
      v200 = v458;
      v11[4] = v457;
      v201 = v454;
      *v11 = v453;
      v11[1] = v201;
      v202 = (v11 + v8[6]);
      v203 = v465;
      v204 = v466;
      v205 = v463;
      v202[6] = v464;
      v202[7] = v203;
      v206 = v467;
      v202[8] = v204;
      v202[9] = v206;
      v207 = v461;
      v208 = v462;
      v209 = v459;
      v202[2] = v460;
      v202[3] = v207;
      v202[4] = v208;
      v202[5] = v205;
      *v202 = v200;
      v202[1] = v209;
      *(v11 + v8[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v197, v197[1]);
      *v197 = v442;
      *v198 = 0;
      v198[8] = 0;
      v210 = v443;
      v211 = v443[6];
      *(v195 + v211) = 0;
      sub_2405AE39C(v11, v195, type metadata accessor for IdMSAccount);
      *(v195 + v210[5]) = 0;

      *(v195 + v211) = 0;
      sub_24059BBA4(&v468);
      v443 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v444) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v55 = v444;
      v56 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      v452 = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v57 = v452;
      sub_24059BC20(&v447);
      v58 = v449;
      v59 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      v194 = 3;
LABEL_25:
      *a1 = v194;
LABEL_26:
      v232 = &a1[v37[6]];
      v233 = v473;
      *(v232 + 4) = v472;
      *(v232 + 5) = v233;
      v232[96] = v474;
      v234 = v469;
      *v232 = v468;
      *(v232 + 1) = v234;
      v235 = v471;
      *(v232 + 2) = v470;
      *(v232 + 3) = v235;
      v236 = &a1[v37[7]];
      *v236 = v443;
      *(v236 + 8) = xmmword_24075D8D0;
      v236[24] = v55;
      v90 = 0uLL;
      *(v236 + 2) = xmmword_24075D8E0;
      *(v236 + 3) = 0u;
      *(v236 + 4) = 0u;
      v237 = &a1[v37[8]];
      *v237 = v56;
      *(v237 + 8) = xmmword_24075D8D0;
      v237[24] = v57;
      *(v237 + 2) = xmmword_24075D8E0;
      *(v237 + 3) = 0u;
      *(v237 + 4) = 0u;
      v238 = &a1[v37[9]];
      v32 = v448;
      *v238 = v447;
      *(v238 + 1) = v32;
      *(v238 + 4) = v58;
      v239 = &a1[v37[10]];
      *v239 = 0u;
      *(v239 + 1) = 0u;
      v240 = &a1[v37[11]];
      *v240 = 0u;
      *(v240 + 1) = 0u;
      v241 = &a1[v37[12]];
      *v241 = v59;
      *(v241 + 1) = 0;
      *(v241 + 2) = 0xE000000000000000;
      v241[24] = 2;
      v97 = &a1[v37[13]];
LABEL_27:
      *v97 = 0;
      *(v97 + 1) = 0xE000000000000000;
      *(v97 + 2) = 0;
      *(v97 + 3) = 0xE000000000000000;
      *(v97 + 2) = v90;
      *(v97 + 3) = v90;
      *(v97 + 4) = v90;
LABEL_42:
      *(v97 + 40) = 511;
      a1[v37[14]] = 0;
      v286 = v37[15];
      break;
    default:
      sub_2405AE39C(v18, v7, type metadata accessor for AuthenticationModel.PreflightRepair);
      v19 = type metadata accessor for AuthenticationModel.BindableState(0);
      sub_240594008(v7, &a1[v19[5]], type metadata accessor for AuthenticationModel.PreflightRepair);
      sub_24059BBA4(&v458);
      v443 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v453) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      LODWORD(v442) = v453;
      v20 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v447) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v21 = v447;
      sub_24059BC20(&v468);
      v22 = v470;
      v23 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      sub_240593D7C(v7, type metadata accessor for AuthenticationModel.PreflightRepair);
      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      *a1 = 1;
      v24 = &a1[v19[6]];
      v25 = v463;
      *(v24 + 4) = v462;
      *(v24 + 5) = v25;
      v24[96] = v464;
      v26 = v459;
      *v24 = v458;
      *(v24 + 1) = v26;
      v27 = v461;
      *(v24 + 2) = v460;
      *(v24 + 3) = v27;
      v28 = &a1[v19[7]];
      *v28 = v443;
      *(v28 + 8) = xmmword_24075D8D0;
      v28[24] = v442;
      v29 = 0uLL;
      *(v28 + 2) = xmmword_24075D8E0;
      *(v28 + 3) = 0u;
      *(v28 + 4) = 0u;
      v30 = &a1[v19[8]];
      *v30 = v20;
      *(v30 + 8) = xmmword_24075D8D0;
      v30[24] = v21;
      *(v30 + 2) = xmmword_24075D8E0;
      *(v30 + 3) = 0u;
      *(v30 + 4) = 0u;
      v31 = &a1[v19[9]];
      v32 = v469;
      *v31 = v468;
      *(v31 + 1) = v32;
      *(v31 + 4) = v22;
      v33 = &a1[v19[10]];
      *v33 = 0u;
      *(v33 + 1) = 0u;
      v34 = &a1[v19[11]];
      *v34 = 0u;
      *(v34 + 1) = 0u;
      v35 = &a1[v19[12]];
      *v35 = v23;
      *(v35 + 1) = 0;
      *(v35 + 2) = 0xE000000000000000;
      v35[24] = 2;
      v36 = &a1[v19[13]];
      *v36 = 0;
      *(v36 + 1) = 0xE000000000000000;
      *(v36 + 2) = 0;
      *(v36 + 3) = 0xE000000000000000;
LABEL_32:
      *(v36 + 2) = v29;
      *(v36 + 3) = v29;
      *(v36 + 4) = v29;
      *(v36 + 40) = 511;
      a1[v19[14]] = 0;
      v286 = v19[15];
      break;
  }

  a1[v286] = 0;
  return *&v32;
}