uint64_t sub_238873810()
{
  sub_2388D2938();
}

uint64_t sub_23887395C()
{
  sub_2388D2938();
}

uint64_t sub_238873A98()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238873BE0()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238873D40(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF309C0, &qword_2388D72C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_23887E034();
  sub_2388D3568();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v24) = 0;
  sub_2388D3298();
  if (!v2)
  {
    v24 = v3[2];
    HIBYTE(v23) = 1;
    sub_238810E44(&qword_27DF309D0, &qword_2388D72C8);
    sub_23887E088();
    sub_2388D32C8();
    v13 = v3[3];
    v14 = *(v3 + 32);
    LOBYTE(v24) = 2;
    sub_2388D3258();
    v15 = v3[5];
    v16 = *(v3 + 48);
    LOBYTE(v24) = 3;
    sub_2388D3258();
    v17 = v3[7];
    v18 = *(v3 + 64);
    LOBYTE(v24) = 4;
    sub_2388D3268();
    v24 = v3[9];
    HIBYTE(v23) = 5;
    sub_238810E44(&qword_27DF307E0, &qword_2388D6C98);
    sub_23887E160();
    sub_2388D3278();
    v19 = type metadata accessor for OpenAIClient.ChatCompletionRequest(0);
    v20 = *(v19 + 40);
    LOBYTE(v24) = 6;
    type metadata accessor for OpenAIClient.ResponseFormat(0);
    sub_238879C44(&qword_27DF309F8, type metadata accessor for OpenAIClient.ResponseFormat);
    sub_2388D3278();
    v21 = *(v3 + *(v19 + 44));
    LOBYTE(v24) = 7;
    sub_2388D32A8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_238874054@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23887C3F0();
  *a2 = result;
  return result;
}

void sub_238874084(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6C65646F6DLL;
  v5 = 0xEF74616D726F665FLL;
  v6 = 0x65736E6F70736572;
  if (v2 != 6)
  {
    v6 = 0x6D6165727473;
    v5 = 0xE600000000000000;
  }

  v7 = 0x80000002388DDE70;
  v8 = 0xD000000000000015;
  if (v2 != 4)
  {
    v8 = 0x736C6F6F74;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000657275;
  v10 = 0x74617265706D6574;
  if (v2 != 2)
  {
    v10 = 0x705F706F74;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x736567617373656DLL;
    v3 = 0xE800000000000000;
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

uint64_t sub_238874188()
{
  v1 = *v0;
  v2 = 0x6C65646F6DLL;
  v3 = 0x65736E6F70736572;
  if (v1 != 6)
  {
    v3 = 0x6D6165727473;
  }

  v4 = 0xD000000000000015;
  if (v1 != 4)
  {
    v4 = 0x736C6F6F74;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74617265706D6574;
  if (v1 != 2)
  {
    v5 = 0x705F706F74;
  }

  if (*v0)
  {
    v2 = 0x736567617373656DLL;
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

uint64_t sub_238874288@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23887C3F0();
  *a1 = result;
  return result;
}

uint64_t sub_2388742BC(uint64_t a1)
{
  v2 = sub_23887E034();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2388742F8(uint64_t a1)
{
  v2 = sub_23887E034();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238874358()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238874420()
{
  *v0;
  *v0;
  *v0;
  sub_2388D2938();
}

uint64_t sub_2388744D4()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238874598@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23887C43C();
  *a2 = result;
  return result;
}

void sub_2388745C8(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701605234;
  v4 = 0xEA0000000000736CLL;
  if (*v1 != 2)
  {
    v4 = 0xEC00000064695F6CLL;
  }

  if (*v1)
  {
    v3 = 0x746E65746E6F63;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C61635F6C6F6F74;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_23887464C()
{
  v1 = 1701605234;
  *v0;
  if (*v0)
  {
    v1 = 0x746E65746E6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x6C61635F6C6F6F74;
  }
}

uint64_t sub_2388746CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23887C43C();
  *a1 = result;
  return result;
}

uint64_t sub_238874700(uint64_t a1)
{
  v2 = sub_23887E58C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23887473C(uint64_t a1)
{
  v2 = sub_23887E58C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238874784()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238874858()
{
  *v0;
  *v0;
  *v0;
  sub_2388D2938();
}

uint64_t sub_238874918()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_2388749E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23887C488();
  *a2 = result;
  return result;
}

void sub_238874A18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6D6574737973;
  v5 = 0xE900000000000074;
  v6 = 0x6E61747369737361;
  v7 = 0xE800000000000000;
  v8 = 0x6E6F6974636E7566;
  if (v2 != 3)
  {
    v8 = 1819242356;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1919251317;
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

uint64_t sub_238874AF8(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF30A90, &qword_2388D7300);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_23887E58C();
  sub_2388D3568();
  LOBYTE(v17) = *v3;
  v18 = 0;
  sub_23887E5E0();
  sub_2388D32C8();
  if (!v2)
  {
    v12 = *(v3 + 8);
    sub_23887C4D4(v12);
    if (v13)
    {
      LOBYTE(v17) = 1;
      sub_2388D3298();

      v14 = *(v3 + 16);
    }

    else
    {
      v14 = *(v3 + 16);
      if (!v14 || !*(v14 + 16))
      {
        v17 = v12;
        v18 = 1;
        sub_238810E44(&qword_27DF30AA8, &qword_2388D7308);
        sub_23887E634();
        sub_2388D32C8();
      }
    }

    v17 = v14;
    v18 = 2;
    sub_238810E44(&qword_27DF30AC0, &qword_2388D7310);
    sub_23887E6E8();
    sub_2388D3278();
    v15 = *(v3 + 24);
    v16 = *(v3 + 32);
    LOBYTE(v17) = 3;
    sub_2388D3238();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_238874D94(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_238874AF8(a1);
}

uint64_t sub_238874DD0(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF30B00, &qword_2388D7328);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_23887E8D0();
  sub_2388D3568();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_2388D3298();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v17[14] = 1;
    sub_2388D3298();
    v16 = *(type metadata accessor for OpenAIClient.Tool.Function(0) + 24);
    v17[13] = 2;
    sub_2388D2178();
    sub_238879C44(&qword_27DF30AF8, MEMORY[0x277D0DC20]);
    sub_2388D32C8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_238874FEC(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF30B28, &qword_2388D7338);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_23887E978();
  sub_2388D3568();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_2388D3298();
  if (!v2)
  {
    v13 = *(type metadata accessor for OpenAIClient.Tool(0) + 20);
    v15[14] = 1;
    type metadata accessor for OpenAIClient.Tool.Function(0);
    sub_238879C44(&qword_27DF30B38, type metadata accessor for OpenAIClient.Tool.Function);
    sub_2388D32C8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2388751AC()
{
  v1 = 0x7470697263736564;
  if (*v0 != 1)
  {
    v1 = 0x6574656D61726170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_23887520C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23887C63C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238875240(uint64_t a1)
{
  v2 = sub_23887E8D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23887527C(uint64_t a1)
{
  v2 = sub_23887E8D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2388752E8()
{
  if (*v0)
  {
    result = 0x6E6F6974636E7566;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_23887531C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2388D3368() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2388D3368();

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

uint64_t sub_238875404(uint64_t a1)
{
  v2 = sub_23887E978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238875440(uint64_t a1)
{
  v2 = sub_23887E978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238875494(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_238810E44(&qword_27DF30CB8, &qword_2388D8378);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_238880198();
  sub_2388D3568();
  v16 = 0;
  sub_2388D3298();
  if (!v5)
  {
    v15 = 1;
    sub_2388D3298();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_238875628(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF30A40, &qword_2388D72E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_23887E268();
  sub_2388D3568();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  sub_2388D3298();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v18) = 1;
    sub_2388D3298();
    v16 = *(v3 + 3);
    v18 = *(v3 + 2);
    v19 = v16;
    v17[15] = 2;
    sub_23887E378();
    sub_2388D32C8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_238875808(uint64_t a1)
{
  v2 = sub_238880198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238875844(uint64_t a1)
{
  v2 = sub_238880198();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238875880@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23887C760(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_2388758D0()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6974636E7566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_238875918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23887C944(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238875940(uint64_t a1)
{
  v2 = sub_23887E268();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23887597C(uint64_t a1)
{
  v2 = sub_23887E268();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2388759B8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_23887CA54(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_2388759FC(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_238875628(a1);
}

uint64_t sub_238875A38(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6863735F6E6F736ALL;
  }

  else
  {
    v4 = 1701869940;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xEB00000000616D65;
  }

  if (*a2)
  {
    v6 = 0x6863735F6E6F736ALL;
  }

  else
  {
    v6 = 1701869940;
  }

  if (*a2)
  {
    v7 = 0xEB00000000616D65;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2388D3368();
  }

  return v9 & 1;
}

uint64_t sub_238875AE0()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238875B64()
{
  *v0;
  sub_2388D2938();
}

uint64_t sub_238875BD4()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

void sub_238875C60(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x6863735F6E6F736ALL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000616D65;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_238875CA0()
{
  if (*v0)
  {
    result = 0x6863735F6E6F736ALL;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_238875CDC@<X0>(char *a1@<X8>)
{
  v2 = sub_2388D3138();

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

uint64_t sub_238875D40(uint64_t a1)
{
  v2 = sub_23887E924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238875D7C(uint64_t a1)
{
  v2 = sub_23887E924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238875DB8(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF30AE8, &qword_2388D7320);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_23887E87C();
  sub_2388D3568();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  sub_2388D3298();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v19[14] = 1;
    sub_2388D3238();
    v16 = type metadata accessor for OpenAIClient.ResponseFormat.JSONSchemaWrapper(0);
    v17 = *(v16 + 24);
    v19[13] = 2;
    sub_2388D2178();
    sub_238879C44(&qword_27DF30AF8, MEMORY[0x277D0DC20]);
    sub_2388D32C8();
    v18 = *(v3 + *(v16 + 28));
    v19[12] = 3;
    sub_2388D32A8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_238875FFC(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF30B10, &qword_2388D7330);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_23887E924();
  sub_2388D3568();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_2388D3298();
  if (!v2)
  {
    v13 = *(type metadata accessor for OpenAIClient.ResponseFormat(0) + 20);
    v15[14] = 1;
    type metadata accessor for OpenAIClient.ResponseFormat.JSONSchemaWrapper(0);
    sub_238879C44(&qword_27DF30B20, type metadata accessor for OpenAIClient.ResponseFormat.JSONSchemaWrapper);
    sub_2388D32C8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2388761B4()
{
  v1 = 1701667182;
  v2 = 0x616D65686373;
  if (*v0 != 2)
  {
    v2 = 0x746369727473;
  }

  if (*v0)
  {
    v1 = 0x7470697263736564;
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

uint64_t sub_238876228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23887CD1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238876250(uint64_t a1)
{
  v2 = sub_23887E87C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23887628C(uint64_t a1)
{
  v2 = sub_23887E87C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2388762F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x746E65746E6F63;
  if (v2 != 1)
  {
    v4 = 0x6C61635F6C6F6F74;
    v3 = 0xEA0000000000736CLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701605234;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x746E65746E6F63;
  if (*a2 != 1)
  {
    v8 = 0x6C61635F6C6F6F74;
    v7 = 0xEA0000000000736CLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701605234;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2388D3368();
  }

  return v11 & 1;
}

uint64_t sub_2388763FC()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_23887649C()
{
  *v0;
  *v0;
  sub_2388D2938();
}

uint64_t sub_238876528()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_2388765C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23887D0A8();
  *a2 = result;
  return result;
}

void sub_2388765F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746E65746E6F63;
  if (v2 != 1)
  {
    v5 = 0x6C61635F6C6F6F74;
    v4 = 0xEA0000000000736CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701605234;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_238876650()
{
  v1 = 0x746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x6C61635F6C6F6F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701605234;
  }
}

uint64_t sub_2388766A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23887D0A8();
  *a1 = result;
  return result;
}

uint64_t sub_2388766D0(uint64_t a1)
{
  v2 = sub_238880A44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23887670C(uint64_t a1)
{
  v2 = sub_238880A44();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_238876748@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23887CE7C(a1, v6);
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

uint64_t sub_2388767AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x61746C6564 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2388D3368();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_238876830(uint64_t a1)
{
  v2 = sub_2388800F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23887686C(uint64_t a1)
{
  v2 = sub_2388800F0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2388768A8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23887D0F4(a1, v6);
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

uint64_t sub_2388768F0()
{
  if (*v0)
  {
    result = 0x746E656D75677261;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_23887692C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_2388D3368() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2388D3368();

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

uint64_t sub_238876A10(uint64_t a1)
{
  v2 = sub_238880240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238876A4C(uint64_t a1)
{
  v2 = sub_238880240();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238876A88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23887D284(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_238876AB8()
{
  v1 = 0x7865646E69;
  v2 = 1701869940;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6974636E7566;
  }

  if (*v0)
  {
    v1 = 25705;
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

uint64_t sub_238876B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23887D468(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238876B44(uint64_t a1)
{
  v2 = sub_23887E9CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238876B80(uint64_t a1)
{
  v2 = sub_23887E9CC();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_238876BBC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23887D5C0(a1, v6);
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

uint64_t sub_238876C10()
{
  v1 = 0x6C65646F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x736563696F6863;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_238876C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23887D8E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238876C84(uint64_t a1)
{
  v2 = sub_23887DF08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238876CC0(uint64_t a1)
{
  v2 = sub_23887DF08();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_238876CFC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23887D9F4(a1, v6);
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

uint64_t sub_238876D44(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1954047348;
  if (v2 != 1)
  {
    v5 = 0x72755F6567616D69;
    v4 = 0xE90000000000006CLL;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701869940;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1954047348;
  if (*a2 != 1)
  {
    v8 = 0x72755F6567616D69;
    v3 = 0xE90000000000006CLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701869940;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2388D3368();
  }

  return v11 & 1;
}

uint64_t sub_238876E34()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238876ECC()
{
  *v0;
  *v0;
  sub_2388D2938();
}

uint64_t sub_238876F50()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238876FE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23887DC68();
  *a2 = result;
  return result;
}

void sub_238877014(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1954047348;
  if (v2 != 1)
  {
    v5 = 0x72755F6567616D69;
    v4 = 0xE90000000000006CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701869940;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_238877068()
{
  v1 = 1954047348;
  if (*v0 != 1)
  {
    v1 = 0x72755F6567616D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_2388770B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23887DC68();
  *a1 = result;
  return result;
}

uint64_t sub_2388770E0(uint64_t a1)
{
  v2 = sub_23887E3CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23887711C(uint64_t a1)
{
  v2 = sub_23887E3CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238877158(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x72755F6567616D69;
  }

  else
  {
    v4 = 1954047348;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE90000000000006CLL;
  }

  if (*a2)
  {
    v6 = 0x72755F6567616D69;
  }

  else
  {
    v6 = 1954047348;
  }

  if (*a2)
  {
    v7 = 0xE90000000000006CLL;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2388D3368();
  }

  return v9 & 1;
}

uint64_t sub_2388771FC()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_23887727C()
{
  *v0;
  sub_2388D2938();
}

uint64_t sub_2388772E8()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238877370@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2388D3138();

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

void sub_2388773CC(uint64_t *a1@<X8>)
{
  v2 = 1954047348;
  if (*v1)
  {
    v2 = 0x72755F6567616D69;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE90000000000006CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2388774B8(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF30A18, &qword_2388D72D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_23887E214();
  sub_2388D3568();
  v15[15] = 0;
  sub_2388D0F58();
  sub_238879C44(&qword_27DF30A20, MEMORY[0x277CC9260]);
  sub_2388D32C8();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for OpenAIClient.MessageContent.ImageURL(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    sub_2388D3238();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_238877674@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_2388D0F58();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238810E44(&qword_27DF30A00, &qword_2388D72D0);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for OpenAIClient.MessageContent.ImageURL(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_23887E214();
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  v33 = 0;
  sub_238879C44(&qword_27DF30A10, MEMORY[0x277CC9260]);
  v19 = v31;
  v20 = v29;
  sub_2388D31F8();
  (*(v18 + 32))(v17, v6, v19);
  v32 = 1;
  v21 = sub_2388D3178();
  v23 = v22;
  v24 = (v17 + *(v26 + 20));
  (*(v30 + 8))(v11, v20);
  *v24 = v21;
  v24[1] = v23;
  sub_23887A1F0(v17, v27, type metadata accessor for OpenAIClient.MessageContent.ImageURL);
  sub_2388158BC(a1);
  return sub_238879E0C(v17, type metadata accessor for OpenAIClient.MessageContent.ImageURL);
}

uint64_t sub_2388779F0(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF30A70, &qword_2388D72F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_23887E3CC();
  sub_2388D3568();
  v15[15] = *v3;
  v15[14] = 0;
  sub_23887E4E4();
  sub_2388D32C8();
  if (!v2)
  {
    v12 = *(v3 + 8);
    v13 = *(v3 + 16);
    v15[13] = 1;
    sub_2388D3238();
    v14 = *(type metadata accessor for OpenAIClient.MessageContent(0) + 24);
    v15[12] = 2;
    type metadata accessor for OpenAIClient.MessageContent.ImageURL(0);
    sub_238879C44(&qword_27DF30A80, type metadata accessor for OpenAIClient.MessageContent.ImageURL);
    sub_2388D3278();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_238877C24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_238810E44(&qword_27DF30760, &qword_2388D6A40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_238810E44(&qword_27DF30A50, &qword_2388D72F0);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for OpenAIClient.MessageContent(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 32);
  v18 = type metadata accessor for OpenAIClient.MessageContent.ImageURL(0);
  v19 = *(*(v18 - 8) + 56);
  v30 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_23887E3CC();
  sub_2388D3538();
  if (v2)
  {
    sub_2388158BC(a1);

    return sub_238827E88(&v16[v30], &qword_27DF30760, &qword_2388D6A40);
  }

  else
  {
    v21 = v28;
    v33 = 0;
    sub_23887E420();
    sub_2388D31F8();
    *v16 = v34;
    v32 = 1;
    *(v16 + 1) = sub_2388D3178();
    *(v16 + 2) = v22;
    v31 = 2;
    sub_238879C44(&qword_27DF30A68, type metadata accessor for OpenAIClient.MessageContent.ImageURL);
    v26 = v7;
    v23 = v29;
    sub_2388D31B8();
    (*(v21 + 8))(v11, v23);
    sub_23887E474(v26, &v16[v30]);
    sub_23887A1F0(v16, v27, type metadata accessor for OpenAIClient.MessageContent);
    sub_2388158BC(a1);
    return sub_238879E0C(v16, type metadata accessor for OpenAIClient.MessageContent);
  }
}

uint64_t sub_238877FC0()
{
  if (*v0)
  {
    result = 0x6C6961746564;
  }

  else
  {
    result = 7107189;
  }

  *v0;
  return result;
}

uint64_t sub_238877FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_2388D3368() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2388D3368();

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

uint64_t sub_2388780C8(uint64_t a1)
{
  v2 = sub_23887E214();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238878104(uint64_t a1)
{
  v2 = sub_23887E214();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2388781A0()
{
  v1 = sub_2388D2898();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v0->i64[0];
  v3 = v0->i64[1];
  if (v0[4].u8[0] > 1u)
  {
    if (v0[4].i8[0] == 2)
    {
      v5 = v0->i64[1];
    }

    else
    {
      v9 = vorrq_s8(v0[2], v0[3]);
      if (v4 | *&vorr_s8(*v9.i8, *&vextq_s8(v9, v9, 8uLL)) | v0[1].i64[0] | v3 | v0[1].i64[1])
      {
        return 0xD000000000000019;
      }

      else
      {
        return 0xD00000000000001FLL;
      }
    }
  }

  else
  {
    if (v0[4].i8[0])
    {
      sub_2388D2FA8();

      v11 = 0xD00000000000001CLL;
      v6 = sub_2388D32F8();
      MEMORY[0x23EE66C20](v6);

      MEMORY[0x23EE66C20](2618, 0xE200000000000000);
      sub_2388D2888();
      v7 = sub_2388D2878();
      if (!v8)
      {
        v7 = sub_2388D0F88();
      }

      MEMORY[0x23EE66C20](v7);
    }

    else
    {
      sub_2388D2FA8();

      v11 = 0xD000000000000011;
      MEMORY[0x23EE66C20](v4, v3);
    }

    return v11;
  }

  return v4;
}

uint64_t sub_2388783AC(void *a1)
{
  v2 = v1;
  v4 = sub_238810E44(&qword_27DF30AD8, &qword_2388D7318);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_23887DE60();
  sub_2388D3568();
  v10 = v2[1];
  v14 = *v2;
  v15 = v10;
  v11 = v2[3];
  v16 = v2[2];
  v17 = v11;
  sub_23887E7C0(v2, v13);
  sub_23887E7F8();
  sub_2388D32C8();
  v13[0] = v14;
  v13[1] = v15;
  v13[2] = v16;
  v13[3] = v17;
  sub_23887E84C(v13);
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_238878528()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 64);
  v2 = *v0;
  v3 = v0[1];
  return sub_2388781A0();
}

uint64_t sub_238878580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2388D3368();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_238878610(uint64_t a1)
{
  v2 = sub_23887DE60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23887864C(uint64_t a1)
{
  v2 = sub_23887DE60();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_238878688@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_23887DCB4(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_2388786CC(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_2388783AC(a1);
}

uint64_t sub_238878708(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF30CC8, &qword_2388D8380);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_238880064();
  sub_2388D3568();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  sub_2388D3298();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v20[14] = 1;
  sub_2388D3298();
  v15 = v3[4];
  v16 = v3[5];
  v20[13] = 2;
  sub_2388D3238();
  v18 = v3[6];
  v19 = v3[7];
  v20[12] = 3;
  sub_2388D3238();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2388788C8()
{
  v1 = 0x6567617373656DLL;
  v2 = 0x6D61726170;
  if (*v0 != 2)
  {
    v2 = 1701080931;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

uint64_t sub_23887892C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23887FC10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238878954(uint64_t a1)
{
  v2 = sub_238880064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238878990(uint64_t a1)
{
  v2 = sub_238880064();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2388789CC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_23887FD70(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_238878A10(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_238878708(a1);
}

uint64_t sub_238878A4C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_238878A94(uint64_t a1)
{
  v5 = sub_238810E44(&qword_27DF30748, &qword_2388D6A38);
  v6 = sub_238815180(&qword_27DF30750, &qword_27DF30748, &qword_2388D6A38);
  v4[0] = a1;
  v2 = *(*sub_238815878(v4, v5) + 16);

  sub_2388D0FD8();
  return sub_2388158BC(v4);
}

unint64_t sub_238878B54(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_2388D2968();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_2388D2A38();
}

void *sub_238878C04(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_238810E44(&qword_27DF2FB38, &unk_2388D4940);
  v3 = sub_2388D3128();
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  v10 = a1[10];
  v11 = sub_238820BC0(v5);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v13 = v11;
  result = v6;
  v15 = a1 + 17;
  while (1)
  {
    *(v3 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    *(v3[6] + 8 * v13) = v5;
    v16 = (v3[7] + 48 * v13);
    *v16 = v4;
    v16[1] = result;
    v16[2] = v7;
    v16[3] = v8;
    v16[4] = v9;
    v16[5] = v10;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v5 = *(v15 - 6);
    v20 = *(v15 - 5);
    v21 = *(v15 - 3);
    v25 = *(v15 - 4);
    v26 = v15 + 7;
    v22 = *(v15 - 2);
    v9 = *(v15 - 1);
    v23 = *v15;

    v13 = sub_238820BC0(v5);
    result = v25;
    v15 = v26;
    v10 = v23;
    v4 = v20;
    v8 = v22;
    v7 = v21;
    if (v24)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_238878D7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_238810E44(&qword_27DF30690, &qword_2388D6960);
    v3 = sub_2388D3128();
    v4 = a1 + 32;

    while (1)
    {
      sub_238827E14(v4, &v13, &qword_27DF30698, &qword_2388D6968);
      v5 = v13;
      v6 = v14;
      result = sub_238820AA8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_238879D4C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_238878EC8()
{
  v10 = v0;
  if (qword_27DF2F9E8 != -1)
  {
    swift_once();
  }

  v1 = sub_2388D2408();
  sub_2388413AC(v1, qword_27DF3F8F8);
  v2 = sub_2388D23E8();
  v3 = sub_2388D2E08();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2388C0770(0xD00000000000001BLL, 0x80000002388D67B0, &v9);
    _os_log_impl(&dword_23880E000, v2, v3, "%s does not support tokenization", v4, 0xCu);
    sub_2388158BC(v5);
    MEMORY[0x23EE68030](v5, -1, -1);
    MEMORY[0x23EE68030](v4, -1, -1);
  }

  v6 = *(v0 + 8);
  v7 = MEMORY[0x277D84F90];

  return v6(0, 0xE000000000000000, v7);
}

unint64_t sub_238879050(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_238810E44(&qword_27DF2FB40, &qword_2388D6A50);
    v3 = sub_2388D3128();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_238820AA8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_238879164(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v56 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v45 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v46 = v10;
  v47 = v6;
  while (v9)
  {
    v50 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 10) | (16 * __clz(__rbit64(v9)));
    v17 = (*(a1 + 48) + v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(a1 + 56) + v16);
    v21 = *v20;
    v22 = v20[1];
    v55[0] = v18;
    v55[1] = v19;
    v55[2] = v21;
    v55[3] = v22;

    a2(&v51, v55);

    v23 = v51;
    v24 = v52;
    v25 = v53;
    v26 = v54;
    v27 = *v56;
    v29 = sub_238820AA8(v51, v52);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_25;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if ((v50 & 1) == 0)
      {
        sub_23882194C();
      }
    }

    else
    {
      v34 = v56;
      sub_238823530(v32, v50 & 1);
      v35 = *v34;
      v36 = sub_238820AA8(v23, v24);
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_27;
      }

      v29 = v36;
    }

    v9 &= v9 - 1;
    v38 = *v56;
    if (v33)
    {

      v12 = (v38[7] + 16 * v29);
      v13 = v12[1];
      *v12 = v25;
      v12[1] = v26;
    }

    else
    {
      v38[(v29 >> 6) + 8] |= 1 << v29;
      v39 = (v38[6] + 16 * v29);
      *v39 = v23;
      v39[1] = v24;
      v40 = (v38[7] + 16 * v29);
      *v40 = v25;
      v40[1] = v26;
      v41 = v38[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_26;
      }

      v38[2] = v43;
    }

    a4 = 1;
    v11 = v14;
    v10 = v46;
    v6 = v47;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_238826BEC();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v50 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_2388D3438();
  __break(1u);
  return result;
}

uint64_t sub_238879404()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_23887944C(uint64_t a1)
{
  result = sub_238815180(&qword_27DF30610, &qword_27DF30618, qword_2388D66C0);
  *(a1 + 8) = result;
  return result;
}

void sub_2388794F8()
{
  sub_2388D0F58();
  if (v0 <= 0x3F)
  {
    sub_2388795CC();
    if (v1 <= 0x3F)
    {
      sub_23882BAA0(319, &qword_27DF30638, &qword_27DF30640, &qword_2388D6718);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2388795CC()
{
  if (!qword_27DF30630)
  {
    v0 = sub_2388D2788();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF30630);
    }
  }
}

uint64_t sub_23887963C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2388D0F58();
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

uint64_t sub_238879710(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2388D0F58();
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

unint64_t sub_2388797CC()
{
  result = sub_2388D0F58();
  if (v1 <= 0x3F)
  {
    result = sub_23887986C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23887986C()
{
  result = qword_27DF30658;
  if (!qword_27DF30658)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DF30658);
  }

  return result;
}

uint64_t sub_2388798F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_238879940(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2388799C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_238879AA4(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_238879BEC(uint64_t a1)
{
  result = sub_238879C44(&qword_27DF30678, type metadata accessor for ServerModelInferenceSession.ResponseStream);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_238879C44(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_238879CF8()
{
  result = qword_27DF30688;
  if (!qword_27DF30688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30688);
  }

  return result;
}

_OWORD *sub_238879D4C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_238879DC4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_238879E0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_238879EEC()
{
  v1 = (type metadata accessor for ServerModelInferenceSession(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = v0 + v3 + v1[7];
  v7 = *(v6 + 8);

  v8 = type metadata accessor for ServerLanguageModel(0);
  v9 = v8[5];
  v10 = sub_2388D0F58();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  v11 = *(v6 + v8[6]);

  v12 = (v6 + v8[8]);
  if (v12[3])
  {
    sub_2388158BC(v12);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23887A0A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23887A12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(&qword_27DF306D0, &qword_2388D69B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23887A1F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23887A258()
{
  v1 = (type metadata accessor for OpenAIClient(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (type metadata accessor for OpenAIClient.ChatCompletionRequest(0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v29 = *(*v5 + 64);
  v8 = sub_238810E44(&qword_27DF306F8, &unk_2388D69F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v28 = *(v9 + 64);
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = v0 + v3;
  v13 = sub_2388D0F58();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = *(v12 + v1[7]);

  v15 = *(v0 + v7 + 8);

  v16 = *(v0 + v7 + 16);

  v17 = *(v0 + v7 + 72);

  v18 = v0 + v7 + v5[12];
  v19 = type metadata accessor for OpenAIClient.ResponseFormat(0);
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    v20 = *(v18 + 8);

    v21 = v18 + *(v19 + 20);
    v22 = *(v21 + 8);

    v23 = *(v21 + 24);

    v24 = *(type metadata accessor for OpenAIClient.ResponseFormat.JSONSchemaWrapper(0) + 24);
    v25 = sub_2388D2178();
    (*(*(v25 - 8) + 8))(v21 + v24, v25);
  }

  v26 = (v7 + v29 + v10) & ~v10;
  (*(v9 + 8))(v0 + v26, v8);

  return MEMORY[0x2821FE8E8](v0, v26 + v28, v2 | v6 | v10 | 7);
}

uint64_t sub_23887A530(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for OpenAIClient(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for OpenAIClient.ChatCompletionRequest(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_238810E44(&qword_27DF306F8, &unk_2388D69F0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_238833668;

  return sub_238871860(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

unint64_t sub_23887A6F0()
{
  result = qword_27DF30728;
  if (!qword_27DF30728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30728);
  }

  return result;
}

unint64_t sub_23887A744()
{
  result = qword_27DF30730;
  if (!qword_27DF30730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30730);
  }

  return result;
}

unint64_t sub_23887A800()
{
  result = qword_27DF30740;
  if (!qword_27DF30740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30740);
  }

  return result;
}

uint64_t sub_23887A8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2388D0F58();
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

uint64_t sub_23887A988(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2388D0F58();
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

void sub_23887AA44()
{
  sub_2388D0F58();
  if (v0 <= 0x3F)
  {
    sub_23887B4F0(319, &qword_27DF30088, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23887AB10(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_238810E44(&qword_27DF30760, &qword_2388D6A40);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_23887ABEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = sub_238810E44(&qword_27DF30760, &qword_2388D6A40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23887AC9C()
{
  sub_23887B4F0(319, &qword_27DF30088, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23887B540(319, &qword_27DF30788, type metadata accessor for OpenAIClient.MessageContent.ImageURL);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23887ADAC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_23887ADC8(uint64_t a1)
{
  if ((*(a1 + 64) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 64) & 3;
  }
}

__n128 sub_23887ADE4(uint64_t a1, uint64_t a2)
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

uint64_t sub_23887AE08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 65))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 64);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23887AE50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_23887AEA8(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 64) = a2;
  return result;
}

void sub_23887AF2C()
{
  sub_23887B4F0(319, &qword_27DF30088, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2388D2178();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23887AFF8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2388D2178();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23887B0B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2388D2178();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23887B15C()
{
  result = sub_2388D2178();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23887B1EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_238810E44(&qword_27DF306D0, &qword_2388D69B8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23887B2BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_238810E44(&qword_27DF306D0, &qword_2388D69B8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23887B36C()
{
  sub_23887B4F0(319, &qword_27DF307C0, &type metadata for OpenAIClient.ChatMessage, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23887B4F0(319, &qword_27DF307C8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23887B4F0(319, &qword_27DF307D0, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23882BAA0(319, &qword_27DF307D8, &qword_27DF307E0, &qword_2388D6C98);
        if (v3 <= 0x3F)
        {
          sub_23887B540(319, &qword_27DF307E8, type metadata accessor for OpenAIClient.ResponseFormat);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23887B4F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23887B540(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2388D2E78();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23887B604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23887B6F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_23887B718(uint64_t a1, uint64_t a2)
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

uint64_t sub_23887B73C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_23887B798(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_23887B80C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23887B894(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    sub_23887BCB0();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23887B92C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_28:
    if (v10 < 0x7FFFFFFF)
    {
      v22 = *((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }

    else
    {
      v21 = *(v9 + 48);

      return v21(a1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v11 + (v14 | v20) + 1;
}

void sub_23887BABC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v14 = a3 - v12 + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a3)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a2 > v12)
  {
    if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a2 - v12;
    }

    else
    {
      v18 = 1;
    }

    if (((v11 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v19 = ~v12 + a2;
      bzero(a1, v13);
      *a1 = v19;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        *(a1 + v13) = v18;
      }

      else
      {
        *(a1 + v13) = v18;
      }
    }

    else if (v17)
    {
      *(a1 + v13) = v18;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v13) = 0;
  }

  else if (v17)
  {
    *(a1 + v13) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v10 < 0x7FFFFFFF)
  {
    v21 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = (a2 - 1);
    }

    *v21 = v22;
  }

  else
  {
    v20 = *(v9 + 56);

    v20(a1, a2);
  }
}

void sub_23887BCB0()
{
  if (!qword_27DF30910)
  {
    sub_238810E8C(&qword_27DF30918, qword_2388D6D58);
    v0 = sub_2388D2788();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF30910);
    }
  }
}

uint64_t sub_23887BD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2388D0F58();
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

uint64_t sub_23887BE08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2388D0F58();
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

void sub_23887BEC0()
{
  sub_2388D0F58();
  if (v0 <= 0x3F)
  {
    sub_2388795CC();
    if (v1 <= 0x3F)
    {
      sub_23887BF5C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_23887BF5C()
{
  result = qword_27DF30930;
  if (!qword_27DF30930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF30930);
  }

  return result;
}

uint64_t sub_23887BFA8(uint64_t a1, int a2)
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

uint64_t sub_23887BFF0(uint64_t result, int a2, int a3)
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

uint64_t sub_23887C0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = sub_238810E44(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_23887C178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = sub_238810E44(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_23887C20C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_23887C280(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23887C280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_238810E8C(&qword_27DF306B8, &unk_2388D6990);
    v7 = sub_238815180(&qword_27DF306C0, &qword_27DF306B8, &unk_2388D6990);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_23887C340()
{
  result = qword_27DF30970;
  if (!qword_27DF30970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30970);
  }

  return result;
}

unint64_t sub_23887C39C()
{
  result = qword_27DF30978;
  if (!qword_27DF30978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30978);
  }

  return result;
}

uint64_t sub_23887C3F0()
{
  v0 = sub_2388D3138();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23887C43C()
{
  v0 = sub_2388D3138();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23887C488()
{
  v0 = sub_2388D3138();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23887C4D4(uint64_t a1)
{
  v2 = type metadata accessor for OpenAIClient.MessageContent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  if (*(a1 + 16) == 1)
  {
    sub_23887A1F0(a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpenAIClient.MessageContent);
    if (*v6)
    {
      v8 = sub_2388D3368();

      if ((v8 & 1) == 0)
      {
        v7 = 0;
LABEL_7:
        sub_238879E0C(v6, type metadata accessor for OpenAIClient.MessageContent);
        return v7;
      }
    }

    else
    {
    }

    v7 = *(v6 + 1);
    v9 = *(v6 + 2);

    goto LABEL_7;
  }

  return v7;
}

uint64_t sub_23887C63C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
  {

    return 2;
  }

  else
  {
    v6 = sub_2388D3368();

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

uint64_t sub_23887C760(uint64_t *a1)
{
  v3 = sub_238810E44(&qword_27DF30CA8, &qword_2388D8370);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_238880198();
  sub_2388D3538();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_2388D31D8();
    v11 = 1;
    sub_2388D31D8();
    (*(v4 + 8))(v7, v3);
  }

  sub_2388158BC(a1);
  return v8;
}

uint64_t sub_23887C944(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2388D3368();

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

uint64_t sub_23887CA54@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF30A28, &qword_2388D72E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_23887E268();
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  LOBYTE(v33[0]) = 0;
  v11 = sub_2388D31D8();
  v13 = v12;
  v28 = v11;
  LOBYTE(v33[0]) = 1;
  v14 = sub_2388D31D8();
  v16 = v15;
  v27 = v14;
  v36 = 2;
  sub_23887E2BC();
  sub_2388D31F8();
  (*(v6 + 8))(v9, v5);
  v26 = v34;
  v17 = v35;
  v25 = *(&v34 + 1);
  v18 = *(&v35 + 1);
  v19 = v28;
  *&v29 = v28;
  *(&v29 + 1) = v13;
  v20 = v27;
  *&v30 = v27;
  *(&v30 + 1) = v16;
  v31 = v34;
  v32 = v35;
  sub_23887E310(&v29, v33);
  sub_2388158BC(a1);
  v33[0] = v19;
  v33[1] = v13;
  v33[2] = v20;
  v33[3] = v16;
  v33[4] = v26;
  v33[5] = v25;
  v33[6] = v17;
  v33[7] = v18;
  result = sub_23887E348(v33);
  v22 = v30;
  *a2 = v29;
  a2[1] = v22;
  v23 = v32;
  a2[2] = v31;
  a2[3] = v23;
  return result;
}

uint64_t sub_23887CD1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616D65686373 && a2 == 0xE600000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746369727473 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2388D3368();

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

uint64_t sub_23887CE7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF30D40, &qword_2388D8810);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_238880A44();
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  v26 = 0;
  v11 = sub_2388D3178();
  v13 = v12;
  v22 = v11;
  v25 = 1;
  v14 = sub_2388D3178();
  v16 = v15;
  v21 = v14;
  sub_238810E44(&qword_27DF30D50, &qword_2388D8818);
  v24 = 2;
  sub_238880A98();
  sub_2388D31B8();
  (*(v6 + 8))(v9, v5);
  v17 = v23;
  result = sub_2388158BC(a1);
  v19 = v21;
  *a2 = v22;
  a2[1] = v13;
  a2[2] = v19;
  a2[3] = v16;
  a2[4] = v17;
  return result;
}

uint64_t sub_23887D0A8()
{
  v0 = sub_2388D3138();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23887D0F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF30C90, &qword_2388D8368);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388800F0();
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  sub_238880144();
  sub_2388D31F8();
  (*(v6 + 8))(v9, v5);
  v11 = v18;
  v14 = v17;
  v15 = v16;
  result = sub_2388158BC(a1);
  v13 = v14;
  *a2 = v15;
  *(a2 + 16) = v13;
  *(a2 + 32) = v11;
  return result;
}

uint64_t sub_23887D284(uint64_t *a1)
{
  v3 = sub_238810E44(&qword_27DF30CD0, qword_2388D8388);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_238880240();
  sub_2388D3538();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_2388D3178();
    v11 = 1;
    sub_2388D3178();
    (*(v4 + 8))(v7, v3);
  }

  sub_2388158BC(a1);
  return v8;
}

uint64_t sub_23887D468(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2388D3368();

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

uint64_t sub_23887D5C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF30B40, &qword_2388D7340);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_23887E9CC();
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  LOBYTE(v36[0]) = 0;
  v11 = sub_2388D31E8();
  LOBYTE(v36[0]) = 1;
  v12 = sub_2388D3178();
  v14 = v13;
  v30 = v12;
  LOBYTE(v36[0]) = 2;
  v15 = sub_2388D3178();
  v29 = v16;
  v28 = v15;
  v40 = 3;
  sub_23887EA20();
  sub_2388D31B8();
  (*(v6 + 8))(v9, v5);
  v27 = v37;
  v26 = v38;
  v17 = v39;
  v25 = *(&v38 + 1);
  *&v31 = v11;
  v18 = v30;
  *(&v31 + 1) = v30;
  *&v32 = v14;
  v19 = v28;
  v20 = v29;
  *(&v32 + 1) = v28;
  *&v33 = v29;
  *(&v33 + 1) = v37;
  v34 = v38;
  v35 = v39;
  sub_238879D5C(&v31, v36);
  sub_2388158BC(a1);
  v36[0] = v11;
  v36[1] = v18;
  v36[2] = v14;
  v36[3] = v19;
  v36[4] = v20;
  v36[5] = v27;
  v36[6] = v26;
  v36[7] = v25;
  v36[8] = v17;
  result = sub_238879D94(v36);
  v22 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v22;
  *(a2 + 64) = v35;
  v23 = v32;
  *a2 = v31;
  *(a2 + 16) = v23;
  return result;
}

uint64_t sub_23887D8E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736563696F6863 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2388D3368();

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

uint64_t sub_23887D9F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF30998, &qword_2388D72B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_23887DF08();
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  v24 = 0;
  v11 = sub_2388D31D8();
  v13 = v12;
  v20 = v11;
  v23 = 1;
  v18 = sub_2388D31D8();
  v19 = v14;
  sub_238810E44(&qword_27DF309A8, &qword_2388D72B8);
  v22 = 2;
  sub_23887DF5C();
  sub_2388D31F8();
  (*(v6 + 8))(v9, v5);
  v15 = v21;
  result = sub_2388158BC(a1);
  *a2 = v20;
  a2[1] = v13;
  v17 = v19;
  a2[2] = v18;
  a2[3] = v17;
  a2[4] = v15;
  return result;
}

uint64_t sub_23887DC68()
{
  v0 = sub_2388D3138();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23887DCB4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF30980, &qword_2388D72A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_23887DE60();
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  sub_23887DEB4();
  sub_2388D31F8();
  (*(v6 + 8))(v9, v5);
  v14 = v18;
  v15 = v19;
  v16 = v20;
  v17 = v21;
  result = sub_2388158BC(a1);
  v12 = v15;
  *a2 = v14;
  a2[1] = v12;
  v13 = v17;
  a2[2] = v16;
  a2[3] = v13;
  return result;
}

unint64_t sub_23887DE60()
{
  result = qword_27DF30988;
  if (!qword_27DF30988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30988);
  }

  return result;
}

unint64_t sub_23887DEB4()
{
  result = qword_27DF30990;
  if (!qword_27DF30990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30990);
  }

  return result;
}

unint64_t sub_23887DF08()
{
  result = qword_27DF309A0;
  if (!qword_27DF309A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF309A0);
  }

  return result;
}

unint64_t sub_23887DF5C()
{
  result = qword_27DF309B0;
  if (!qword_27DF309B0)
  {
    sub_238810E8C(&qword_27DF309A8, &qword_2388D72B8);
    sub_23887DFE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF309B0);
  }

  return result;
}

unint64_t sub_23887DFE0()
{
  result = qword_27DF309B8;
  if (!qword_27DF309B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF309B8);
  }

  return result;
}

unint64_t sub_23887E034()
{
  result = qword_27DF309C8;
  if (!qword_27DF309C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF309C8);
  }

  return result;
}

unint64_t sub_23887E088()
{
  result = qword_27DF309D8;
  if (!qword_27DF309D8)
  {
    sub_238810E8C(&qword_27DF309D0, &qword_2388D72C8);
    sub_23887E10C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF309D8);
  }

  return result;
}

unint64_t sub_23887E10C()
{
  result = qword_27DF309E0;
  if (!qword_27DF309E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF309E0);
  }

  return result;
}

unint64_t sub_23887E160()
{
  result = qword_27DF309E8;
  if (!qword_27DF309E8)
  {
    sub_238810E8C(&qword_27DF307E0, &qword_2388D6C98);
    sub_238879C44(&qword_27DF309F0, type metadata accessor for OpenAIClient.Tool);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF309E8);
  }

  return result;
}

unint64_t sub_23887E214()
{
  result = qword_27DF30A08;
  if (!qword_27DF30A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30A08);
  }

  return result;
}

unint64_t sub_23887E268()
{
  result = qword_27DF30A30;
  if (!qword_27DF30A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30A30);
  }

  return result;
}

unint64_t sub_23887E2BC()
{
  result = qword_27DF30A38;
  if (!qword_27DF30A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30A38);
  }

  return result;
}

unint64_t sub_23887E378()
{
  result = qword_27DF30A48;
  if (!qword_27DF30A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30A48);
  }

  return result;
}

unint64_t sub_23887E3CC()
{
  result = qword_27DF30A58;
  if (!qword_27DF30A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30A58);
  }

  return result;
}

unint64_t sub_23887E420()
{
  result = qword_27DF30A60;
  if (!qword_27DF30A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30A60);
  }

  return result;
}

uint64_t sub_23887E474(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(&qword_27DF30760, &qword_2388D6A40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_23887E4E4()
{
  result = qword_27DF30A78;
  if (!qword_27DF30A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30A78);
  }

  return result;
}

unint64_t sub_23887E538()
{
  result = qword_27DF30A88;
  if (!qword_27DF30A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30A88);
  }

  return result;
}

unint64_t sub_23887E58C()
{
  result = qword_27DF30A98;
  if (!qword_27DF30A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30A98);
  }

  return result;
}

unint64_t sub_23887E5E0()
{
  result = qword_27DF30AA0;
  if (!qword_27DF30AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30AA0);
  }

  return result;
}

unint64_t sub_23887E634()
{
  result = qword_27DF30AB0;
  if (!qword_27DF30AB0)
  {
    sub_238810E8C(&qword_27DF30AA8, &qword_2388D7308);
    sub_238879C44(&qword_27DF30AB8, type metadata accessor for OpenAIClient.MessageContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30AB0);
  }

  return result;
}

unint64_t sub_23887E6E8()
{
  result = qword_27DF30AC8;
  if (!qword_27DF30AC8)
  {
    sub_238810E8C(&qword_27DF30AC0, &qword_2388D7310);
    sub_23887E76C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30AC8);
  }

  return result;
}

unint64_t sub_23887E76C()
{
  result = qword_27DF30AD0;
  if (!qword_27DF30AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30AD0);
  }

  return result;
}

unint64_t sub_23887E7F8()
{
  result = qword_27DF30AE0;
  if (!qword_27DF30AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30AE0);
  }

  return result;
}

unint64_t sub_23887E87C()
{
  result = qword_27DF30AF0;
  if (!qword_27DF30AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30AF0);
  }

  return result;
}

unint64_t sub_23887E8D0()
{
  result = qword_27DF30B08;
  if (!qword_27DF30B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B08);
  }

  return result;
}

unint64_t sub_23887E924()
{
  result = qword_27DF30B18;
  if (!qword_27DF30B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B18);
  }

  return result;
}

unint64_t sub_23887E978()
{
  result = qword_27DF30B30;
  if (!qword_27DF30B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B30);
  }

  return result;
}

unint64_t sub_23887E9CC()
{
  result = qword_27DF30B48;
  if (!qword_27DF30B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B48);
  }

  return result;
}

unint64_t sub_23887EA20()
{
  result = qword_27DF30B50;
  if (!qword_27DF30B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OpenAIClient.ChatCompletionRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OpenAIClient.ChatCompletionRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_23887EC94(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23887ECA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23887ECE8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for OpenAIClient.ChatMessage.Role(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OpenAIClient.ChatMessage.Role(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23887EE98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_23887EEF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_23887EF5C()
{
  result = qword_27DF30B58;
  if (!qword_27DF30B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B58);
  }

  return result;
}

unint64_t sub_23887EFB4()
{
  result = qword_27DF30B60;
  if (!qword_27DF30B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B60);
  }

  return result;
}

unint64_t sub_23887F00C()
{
  result = qword_27DF30B68;
  if (!qword_27DF30B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B68);
  }

  return result;
}

unint64_t sub_23887F064()
{
  result = qword_27DF30B70;
  if (!qword_27DF30B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B70);
  }

  return result;
}

unint64_t sub_23887F0BC()
{
  result = qword_27DF30B78;
  if (!qword_27DF30B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B78);
  }

  return result;
}

unint64_t sub_23887F114()
{
  result = qword_27DF30B80;
  if (!qword_27DF30B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B80);
  }

  return result;
}

unint64_t sub_23887F16C()
{
  result = qword_27DF30B88;
  if (!qword_27DF30B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B88);
  }

  return result;
}

unint64_t sub_23887F1C4()
{
  result = qword_27DF30B90;
  if (!qword_27DF30B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B90);
  }

  return result;
}

unint64_t sub_23887F21C()
{
  result = qword_27DF30B98;
  if (!qword_27DF30B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B98);
  }

  return result;
}

unint64_t sub_23887F274()
{
  result = qword_27DF30BA0;
  if (!qword_27DF30BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BA0);
  }

  return result;
}

unint64_t sub_23887F2CC()
{
  result = qword_27DF30BA8;
  if (!qword_27DF30BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BA8);
  }

  return result;
}

unint64_t sub_23887F324()
{
  result = qword_27DF30BB0;
  if (!qword_27DF30BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BB0);
  }

  return result;
}

unint64_t sub_23887F37C()
{
  result = qword_27DF30BB8;
  if (!qword_27DF30BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BB8);
  }

  return result;
}

unint64_t sub_23887F3D4()
{
  result = qword_27DF30BC0;
  if (!qword_27DF30BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BC0);
  }

  return result;
}

unint64_t sub_23887F42C()
{
  result = qword_27DF30BC8;
  if (!qword_27DF30BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BC8);
  }

  return result;
}

unint64_t sub_23887F484()
{
  result = qword_27DF30BD0;
  if (!qword_27DF30BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BD0);
  }

  return result;
}

unint64_t sub_23887F4DC()
{
  result = qword_27DF30BD8;
  if (!qword_27DF30BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BD8);
  }

  return result;
}

unint64_t sub_23887F534()
{
  result = qword_27DF30BE0;
  if (!qword_27DF30BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BE0);
  }

  return result;
}

unint64_t sub_23887F58C()
{
  result = qword_27DF30BE8;
  if (!qword_27DF30BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BE8);
  }

  return result;
}

unint64_t sub_23887F5E4()
{
  result = qword_27DF30BF0;
  if (!qword_27DF30BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BF0);
  }

  return result;
}

unint64_t sub_23887F63C()
{
  result = qword_27DF30BF8;
  if (!qword_27DF30BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BF8);
  }

  return result;
}

unint64_t sub_23887F694()
{
  result = qword_27DF30C00;
  if (!qword_27DF30C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C00);
  }

  return result;
}

unint64_t sub_23887F6EC()
{
  result = qword_27DF30C08;
  if (!qword_27DF30C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C08);
  }

  return result;
}

unint64_t sub_23887F744()
{
  result = qword_27DF30C10;
  if (!qword_27DF30C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C10);
  }

  return result;
}

unint64_t sub_23887F79C()
{
  result = qword_27DF30C18;
  if (!qword_27DF30C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C18);
  }

  return result;
}

unint64_t sub_23887F7F4()
{
  result = qword_27DF30C20;
  if (!qword_27DF30C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C20);
  }

  return result;
}

unint64_t sub_23887F84C()
{
  result = qword_27DF30C28;
  if (!qword_27DF30C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C28);
  }

  return result;
}

unint64_t sub_23887F8A4()
{
  result = qword_27DF30C30;
  if (!qword_27DF30C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C30);
  }

  return result;
}

unint64_t sub_23887F8FC()
{
  result = qword_27DF30C38;
  if (!qword_27DF30C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C38);
  }

  return result;
}

unint64_t sub_23887F954()
{
  result = qword_27DF30C40;
  if (!qword_27DF30C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C40);
  }

  return result;
}

unint64_t sub_23887F9AC()
{
  result = qword_27DF30C48;
  if (!qword_27DF30C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C48);
  }

  return result;
}

unint64_t sub_23887FA04()
{
  result = qword_27DF30C50;
  if (!qword_27DF30C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C50);
  }

  return result;
}

unint64_t sub_23887FA5C()
{
  result = qword_27DF30C58;
  if (!qword_27DF30C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C58);
  }

  return result;
}

unint64_t sub_23887FAB4()
{
  result = qword_27DF30C60;
  if (!qword_27DF30C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C60);
  }

  return result;
}

unint64_t sub_23887FB0C()
{
  result = qword_27DF30C68;
  if (!qword_27DF30C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C68);
  }

  return result;
}

unint64_t sub_23887FB64()
{
  result = qword_27DF30C70;
  if (!qword_27DF30C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C70);
  }

  return result;
}

unint64_t sub_23887FBBC()
{
  result = qword_27DF30C78;
  if (!qword_27DF30C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C78);
  }

  return result;
}

uint64_t sub_23887FC10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D61726170 && a2 == 0xE500000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2388D3368();

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

uint64_t sub_23887FD70@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF30C80, &qword_2388D8360);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_238880064();
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  LOBYTE(v31[0]) = 0;
  v11 = sub_2388D31D8();
  v26 = v12;
  LOBYTE(v31[0]) = 1;
  *&v25 = sub_2388D31D8();
  *(&v25 + 1) = v13;
  LOBYTE(v31[0]) = 2;
  *&v24 = sub_2388D3178();
  *(&v24 + 1) = v14;
  v37 = 3;
  v15 = sub_2388D3178();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  v18 = v26;
  *&v27 = v11;
  *(&v27 + 1) = v26;
  v19 = *(&v24 + 1);
  v20 = v25;
  v28 = v25;
  v29 = v24;
  *&v30 = v15;
  *(&v30 + 1) = v17;
  sub_2388800B8(&v27, v31);
  sub_2388158BC(a1);
  v31[0] = v11;
  v31[1] = v18;
  v32 = __PAIR128__(*(&v25 + 1), v20);
  v33 = v24;
  v34 = v19;
  v35 = v15;
  v36 = v17;
  result = sub_23887E84C(v31);
  v22 = v28;
  *a2 = v27;
  a2[1] = v22;
  v23 = v30;
  a2[2] = v29;
  a2[3] = v23;
  return result;
}

unint64_t sub_238880064()
{
  result = qword_27DF30C88;
  if (!qword_27DF30C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C88);
  }

  return result;
}

unint64_t sub_2388800F0()
{
  result = qword_27DF30C98;
  if (!qword_27DF30C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C98);
  }

  return result;
}

unint64_t sub_238880144()
{
  result = qword_27DF30CA0;
  if (!qword_27DF30CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30CA0);
  }

  return result;
}

unint64_t sub_238880198()
{
  result = qword_27DF30CB0;
  if (!qword_27DF30CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30CB0);
  }

  return result;
}

unint64_t sub_2388801EC()
{
  result = qword_27DF30CC0;
  if (!qword_27DF30CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30CC0);
  }

  return result;
}

unint64_t sub_238880240()
{
  result = qword_27DF30CD8;
  if (!qword_27DF30CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30CD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LanguageModelFeedback.CodableIssue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LanguageModelFeedback.CodableIssue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TranscriptCoderV1.Role(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TranscriptCoderV1.Role(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_238880558(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2388805B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_238880628()
{
  result = qword_27DF30CE0;
  if (!qword_27DF30CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30CE0);
  }

  return result;
}

unint64_t sub_238880680()
{
  result = qword_27DF30CE8;
  if (!qword_27DF30CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30CE8);
  }

  return result;
}

unint64_t sub_2388806D8()
{
  result = qword_27DF30CF0;
  if (!qword_27DF30CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30CF0);
  }

  return result;
}

unint64_t sub_238880730()
{
  result = qword_27DF30CF8;
  if (!qword_27DF30CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30CF8);
  }

  return result;
}

unint64_t sub_238880788()
{
  result = qword_27DF30D00;
  if (!qword_27DF30D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D00);
  }

  return result;
}

unint64_t sub_2388807E0()
{
  result = qword_27DF30D08;
  if (!qword_27DF30D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D08);
  }

  return result;
}

unint64_t sub_238880838()
{
  result = qword_27DF30D10;
  if (!qword_27DF30D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D10);
  }

  return result;
}

unint64_t sub_238880890()
{
  result = qword_27DF30D18;
  if (!qword_27DF30D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D18);
  }

  return result;
}

unint64_t sub_2388808E8()
{
  result = qword_27DF30D20;
  if (!qword_27DF30D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D20);
  }

  return result;
}

unint64_t sub_238880940()
{
  result = qword_27DF30D28;
  if (!qword_27DF30D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D28);
  }

  return result;
}

unint64_t sub_238880998()
{
  result = qword_27DF30D30;
  if (!qword_27DF30D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D30);
  }

  return result;
}

unint64_t sub_2388809F0()
{
  result = qword_27DF30D38;
  if (!qword_27DF30D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D38);
  }

  return result;
}

unint64_t sub_238880A44()
{
  result = qword_27DF30D48;
  if (!qword_27DF30D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D48);
  }

  return result;
}

unint64_t sub_238880A98()
{
  result = qword_27DF30D58;
  if (!qword_27DF30D58)
  {
    sub_238810E8C(&qword_27DF30D50, &qword_2388D8818);
    sub_238880B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D58);
  }

  return result;
}

unint64_t sub_238880B1C()
{
  result = qword_27DF30D60;
  if (!qword_27DF30D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D60);
  }

  return result;
}

uint64_t sub_238880B70(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_238880C00(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_238880CC4()
{
  result = qword_27DF30D68;
  if (!qword_27DF30D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D68);
  }

  return result;
}

unint64_t sub_238880D1C()
{
  result = qword_27DF30D70;
  if (!qword_27DF30D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D70);
  }

  return result;
}

unint64_t sub_238880D74()
{
  result = qword_27DF30D78;
  if (!qword_27DF30D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D78);
  }

  return result;
}

unint64_t sub_238880E50(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_2388D3008();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_238880F74(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2388D29E8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x23EE66C50](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_238880FF0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_238881088(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_238880E50(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_238881088(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_238880F74(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2388810FC(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_238880FF0(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_2388D2F98();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_2388D3008() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_23888124C()
{
  v0 = sub_2388D2898();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2388D2948();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = v4;
    v34 = MEMORY[0x277D84F90];
    result = sub_2388B83CC(0, v4 & ~(v4 >> 63), 0);
    if (v6 < 0)
    {
      goto LABEL_58;
    }

    v31 = v3;
    v32 = v6;
    v8 = 0;
    v5 = v34;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v11 = sub_2388D2A08();
      v12 = v10;
      if (v11 == 2573 && v10 == 0xE200000000000000)
      {
        goto LABEL_7;
      }

      result = sub_2388D3368();
      if (result)
      {
        goto LABEL_27;
      }

      if ((v12 & 0x2000000000000000) != 0)
      {
        v14 = HIBYTE(v12) & 0xF;
      }

      else
      {
        v14 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (!v14)
      {
        goto LABEL_52;
      }

      if ((v12 & 0x1000000000000000) != 0)
      {
        v19 = sub_2388D28E8();
      }

      else
      {
        if ((v12 & 0x2000000000000000) != 0)
        {
          v16 = v11;
        }

        else
        {
          v15 = ((v11 & 0x1000000000000000) != 0 ? (v12 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_2388D3008());
          v16 = *v15;
        }

        v17 = v16;
        v18 = (__clz(~v16) - 24) << 16;
        v19 = v17 < 0 ? v18 : 65541;
      }

      if (v19 >> 14 == 4 * v14)
      {
        result = sub_2388810FC(v11, v12);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_59;
        }

        if ((result & 0xFFFFFF80) == 0)
        {
          break;
        }
      }

LABEL_41:
      v34 = v5;
      v24 = *(v5 + 16);
      v23 = *(v5 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2388B83CC((v23 > 1), v24 + 1, 1);
        v5 = v34;
      }

      *(v5 + 16) = v24 + 1;
      v25 = v5 + 16 * v24;
      *(v25 + 32) = v11;
      *(v25 + 40) = v12;
      result = sub_2388D2958();
      ++v8;
      if (v9 == v32)
      {
        goto LABEL_48;
      }
    }

    result = sub_2388810FC(v11, v12);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_60;
    }

    if ((result & 0xFFFFFF00) != 0)
    {
      goto LABEL_54;
    }

LABEL_27:
    result = sub_2388D3368();
    if (result)
    {
LABEL_7:
      v13 = 92;
    }

    else
    {
      if ((v12 & 0x2000000000000000) != 0)
      {
        v20 = HIBYTE(v12) & 0xF;
      }

      else
      {
        v20 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (!v20)
      {
        goto LABEL_53;
      }

      if ((v12 & 0x1000000000000000) != 0)
      {
        result = sub_2388D28E8();
      }

      else
      {
        result = sub_2388D2F88() << 16;
      }

      if (result >> 14 != 4 * v20)
      {
        goto LABEL_55;
      }

      result = sub_2388810FC(v11, v12);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_61;
      }

      if ((result & 0xFFFFFF80) != 0)
      {
        goto LABEL_56;
      }

      result = sub_2388810FC(v11, v12);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_62;
      }

      if ((result & 0xFFFFFF00) != 0)
      {
        goto LABEL_57;
      }

      v13 = ((result + 50) % 0x5Fu + 32);
    }

    v33 = v13;
    v11 = sub_2388D2928();
    v22 = v21;

    v12 = v22;
    goto LABEL_41;
  }

LABEL_48:
  v34 = v5;

  sub_238810E44(&qword_27DF30D80, &unk_2388D8960);
  sub_23888165C();
  sub_2388D2A28();
  result = sub_2388D0FA8();
  if (v26 >> 60 == 15)
  {
    goto LABEL_63;
  }

  v27 = result;
  v28 = v26;
  sub_2388D2888();
  result = sub_2388D2878();
  if (v29)
  {
    v30 = result;
    sub_238827FA4(v27, v28);

    return v30;
  }

  else
  {
LABEL_64:
    __break(1u);
  }

  return result;
}

unint64_t sub_23888165C()
{
  result = qword_27DF30D88;
  if (!qword_27DF30D88)
  {
    sub_238810E8C(&qword_27DF30D80, &unk_2388D8960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D88);
  }

  return result;
}

BOOL SystemLanguageModel.isAvailable.getter()
{
  v1 = v0;
  os_unfair_lock_lock((v0 + 16));
  swift_getKeyPath();
  sub_238886430(&qword_27DF2FF58, type metadata accessor for SystemLanguageModel);
  sub_2388D1158();

  v2 = *(v0 + 20);
  os_unfair_lock_unlock(v1 + 4);
  return v2 == 3;
}

uint64_t SystemLanguageModel.supportedLanguages.getter()
{
  if (qword_27DF2F9C8 != -1)
  {
    swift_once();
  }
}

uint64_t static SystemLanguageModel.default.getter()
{
  if (qword_27DF2F9C0 != -1)
  {
    swift_once();
  }
}

void SystemLanguageModel.availability.getter(_BYTE *a1@<X8>)
{
  os_unfair_lock_lock((v1 + 16));
  swift_getKeyPath();
  sub_238886430(&qword_27DF2FF58, type metadata accessor for SystemLanguageModel);
  sub_2388D1158();

  *a1 = *(v1 + 20);
  os_unfair_lock_unlock((v1 + 16));
}

void sub_2388818EC(os_unfair_lock_s **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock(*a1 + 4);
  swift_getKeyPath();
  sub_238886430(&qword_27DF2FF58, type metadata accessor for SystemLanguageModel);
  sub_2388D1158();

  os_unfair_lock_opaque = v3[5]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v3 + 4);
  *a2 = os_unfair_lock_opaque;
}

void sub_2388819A8(char *a1, os_unfair_lock_s **a2)
{
  v2 = *a1;
  v3 = *a2;
  os_unfair_lock_lock(*a2 + 4);
  swift_getKeyPath();
  sub_238886430(&qword_27DF2FF58, type metadata accessor for SystemLanguageModel);
  sub_2388D1148();

  os_unfair_lock_unlock(v3 + 4);
}

uint64_t type metadata accessor for SystemLanguageModel()
{
  result = qword_27DF30DC8;
  if (!qword_27DF30DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238881AF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x54746E65746E6F63;
  }

  else
  {
    v4 = 0x6C6172656E6567;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xEE00676E69676761;
  }

  if (*a2)
  {
    v6 = 0x54746E65746E6F63;
  }

  else
  {
    v6 = 0x6C6172656E6567;
  }

  if (*a2)
  {
    v7 = 0xEE00676E69676761;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2388D3368();
  }

  return v9 & 1;
}

uint64_t sub_238881BA4()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238881C34()
{
  *v0;
  sub_2388D2938();
}

uint64_t sub_238881CB0()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238881D3C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2388D3138();

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

void sub_238881D9C(uint64_t *a1@<X8>)
{
  v2 = 0x6C6172656E6567;
  if (*v1)
  {
    v2 = 0x54746E65746E6F63;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEE00676E69676761;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static SystemLanguageModel.UseCase.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x54746E65746E6F63;
  }

  else
  {
    v4 = 0x6C6172656E6567;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xEE00676E69676761;
  }

  if (*a2)
  {
    v6 = 0x54746E65746E6F63;
  }

  else
  {
    v6 = 0x6C6172656E6567;
  }

  if (*a2)
  {
    v7 = 0xEE00676E69676761;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2388D3368();
  }

  return v9 & 1;
}

uint64_t sub_238881E9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v82 = a1;
  v3 = sub_2388D1948();
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v3);
  v70 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2388D1968();
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  MEMORY[0x28223BE20](v6);
  v75 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2388D1978();
  v10 = *(v9 - 8);
  v80 = v9;
  v81 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v76 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2388D12F8();
  v79 = *(v13 - 8);
  v14 = *(v79 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v68 - v18;
  v20 = sub_2388D1308();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2388D1338();
  v77 = *(v25 - 8);
  v78 = v25;
  v26 = *(v77 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [objc_opt_self() processInfo];
  v30 = [v29 environment];

  v31 = sub_2388D2758();
  if (!*(v31 + 16) || (v32 = sub_238820AA8(0xD000000000000027, 0x80000002388DF340), (v33 & 1) == 0))
  {

    goto LABEL_8;
  }

  v69 = a2;
  v34 = (*(v31 + 56) + 16 * v32);
  v35 = *v34;
  v36 = v34[1];

  v37 = sub_2388D3138();

  if (v37 == 2)
  {
    result = (*(v81 + 8))(v82, v80);
    v48 = 2;
    goto LABEL_17;
  }

  if (v37 == 1)
  {
    result = (*(v81 + 8))(v82, v80);
    v48 = 1;
LABEL_17:
    a2 = v69;
    goto LABEL_18;
  }

  a2 = v69;
  if (!v37)
  {
    goto LABEL_13;
  }

LABEL_8:
  (*(v21 + 104))(v24, *MEMORY[0x277D36C98], v20);
  sub_2388D1328();
  (*(v21 + 8))(v24, v20);
  sub_2388D1318();
  v38 = v79;
  (*(v79 + 104))(v17, *MEMORY[0x277D36C88], v13);
  v39 = sub_2388D12E8();
  v40 = *(v38 + 8);
  v40(v17, v13);
  v40(v19, v13);
  (*(v77 + 8))(v28, v78);
  if ((v39 & 1) == 0)
  {
LABEL_13:
    result = (*(v81 + 8))(v82, v80);
LABEL_14:
    v48 = 0;
    goto LABEL_18;
  }

  v42 = v81;
  v41 = v82;
  v43 = v76;
  v44 = v80;
  (*(v81 + 16))(v76, v82, v80);
  v45 = (*(v42 + 88))(v43, v44);
  if (v45 == *MEMORY[0x277D0DFA8])
  {
    v46 = *(v42 + 8);
    v46(v41, v44);
LABEL_11:
    result = (v46)(v43, v44);
    goto LABEL_12;
  }

  if (v45 != *MEMORY[0x277D0DFB0])
  {
    v57 = *MEMORY[0x277D0E278];
    v46 = *(v42 + 8);
    v58 = v45;
    result = (v46)(v41, v44);
    if (v58 == v57)
    {
      v48 = 3;
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  (*(v42 + 96))(v43, v44);
  (*(v73 + 32))(v75, v43, v74);
  v49 = sub_2388D1958();
  v50 = *MEMORY[0x277D0E110];
  v52 = v70;
  v51 = v71;
  v53 = v72;
  v79 = *(v71 + 104);
  (v79)(v70, v50, v72);
  v54 = sub_2388B0C70(v52, v49);
  v55 = v53;

  v56 = *(v51 + 8);
  v56(v52, v55);
  if (v54)
  {
    (*(v42 + 8))(v41, v44);
    result = (*(v73 + 8))(v75, v74);
    goto LABEL_14;
  }

  v59 = v55;
  v60 = sub_2388D1958();
  (v79)(v52, *MEMORY[0x277D0E070], v59);
  v61 = sub_2388B0C70(v52, v60);

  v56(v52, v59);
  v62 = v75;
  if ((v61 & 1) == 0)
  {
    (*(v42 + 8))(v41, v44);
    result = (*(v73 + 8))(v62, v74);
    v48 = 1;
    goto LABEL_18;
  }

  v63 = v73;
  if (qword_27DF2F9E0 != -1)
  {
    swift_once();
  }

  v64 = sub_2388D2408();
  sub_2388413AC(v64, qword_27DF3F8E0);
  v65 = sub_2388D23E8();
  v66 = sub_2388D2E18();
  if (os_log_type_enabled(v65, v66))
  {
    v48 = 2;
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_23880E000, v65, v66, "Running as root is not supported.", v67, 2u);
    MEMORY[0x23EE68030](v67, -1, -1);

    (*(v42 + 8))(v41, v44);
    result = (*(v63 + 8))(v62, v74);
    goto LABEL_18;
  }

  (*(v42 + 8))(v41, v44);
  result = (*(v63 + 8))(v62, v74);
LABEL_12:
  v48 = 2;
LABEL_18:
  *a2 = v48;
  return result;
}

uint64_t SystemLanguageModel.deinit()
{
  v1 = v0 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock));
  v2 = v1 + 8;
  if (*(v1 + 8))
  {
    sub_2388D2C08();
  }

  os_unfair_lock_unlock(v1);
  v3 = OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelBundle;
  v4 = sub_2388D1448();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID + 8);

  sub_238827E88(v2, &qword_27DF30DB0, &qword_2388D8998);
  v6 = OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel___observationRegistrar;
  v7 = sub_2388D1198();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t SystemLanguageModel.__deallocating_deinit()
{
  v1 = v0 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock));
  v2 = v1 + 8;
  if (*(v1 + 8))
  {
    sub_2388D2C08();
  }

  os_unfair_lock_unlock(v1);
  v3 = OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelBundle;
  v4 = sub_2388D1448();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID + 8);

  sub_238827E88(v2, &qword_27DF30DB0, &qword_2388D8998);
  v6 = OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel___observationRegistrar;
  v7 = sub_2388D1198();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_238882A3C(uint64_t *a1, uint64_t a2)
{
  v33[1] = a2;
  v38 = a1;
  v4 = sub_238810E44(&qword_27DF2FD28, &qword_2388D8CE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = v33 - v6;
  v36 = sub_2388D19E8();
  v7 = *(v36 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v36);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2388D1998();
  v11 = *(v34 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v34);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2388D1A18();
  v15 = *(v37 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v37);
  v35 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v33 - v18;
  v20 = *a1;

  v21 = *(a2 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID);
  v22 = *(a2 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID + 8);
  (*(v7 + 104))(v10, *MEMORY[0x277D0E2D8], v36);

  sub_2388D1988();
  v23 = v19;
  v33[0] = v19;
  sub_2388D1A08();
  (*(v11 + 8))(v14, v34);
  v24 = sub_2388D2BE8();
  v25 = v39;
  (*(*(v24 - 8) + 56))(v39, 1, 1, v24);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = v35;
  v28 = v37;
  (*(v15 + 16))(v35, v23, v37);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  (*(v15 + 32))(v30 + v29, v27, v28);
  *(v30 + ((v16 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v31 = sub_2388867B0(0, 0, v25, &unk_2388D8CF0, v30);
  result = (*(v15 + 8))(v33[0], v28);
  *v38 = v31;
  return result;
}

uint64_t sub_238882E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_2388D1978();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v9 = *(*(sub_238810E44(&qword_27DF30E08, &qword_2388D8CF8) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v10 = sub_2388D19D8();
  v5[14] = v10;
  v11 = *(v10 - 8);
  v5[15] = v11;
  v12 = *(v11 + 64) + 15;
  v5[16] = swift_task_alloc();
  v13 = sub_2388D19C8();
  v5[17] = v13;
  v14 = *(v13 - 8);
  v5[18] = v14;
  v15 = *(v14 + 64) + 15;
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238882FEC, 0, 0);
}

uint64_t sub_238882FEC()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[7];
  v6 = v0[8];
  sub_2388D19F8();
  sub_2388D19B8();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v7 = sub_238886430(&qword_27DF30E10, MEMORY[0x277D0E2A8]);
  v8 = *(MEMORY[0x277D856D0] + 4);
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_238883128;
  v10 = v0[19];
  v11 = v0[17];
  v12 = v0[13];

  return MEMORY[0x282200308](v12, v11, v7);
}

uint64_t sub_238883128()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_238883578;
  }

  else
  {
    v3 = sub_23888323C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238883258()
{
  v26 = v0;
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v4 = v0[8];
    (*(v3 + 32))(v0[12], v1, v2);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = v0[21];
      v8 = v0[11];
      v9 = v0[12];
      v10 = v0[9];
      v11 = v0[10];
      (*(v11 + 16))(v8, v9, v10);
      sub_238881E9C(v8, v25);
      LOBYTE(v8) = v25[0];
      os_unfair_lock_lock(v6 + 4);
      swift_getKeyPath();
      v12 = swift_task_alloc();
      *(v12 + 16) = v6 + 5;
      *(v12 + 24) = v8;
      v0[6] = v6;
      sub_238886430(&qword_27DF2FF58, type metadata accessor for SystemLanguageModel);
      sub_2388D1148();

      os_unfair_lock_unlock(v6 + 4);

      (*(v11 + 8))(v9, v10);
      v13 = sub_238886430(&qword_27DF30E10, MEMORY[0x277D0E2A8]);
      v14 = *(MEMORY[0x277D856D0] + 4);
      v15 = swift_task_alloc();
      v0[20] = v15;
      *v15 = v0;
      v15[1] = sub_238883128;
      v16 = v0[19];
      v17 = v0[17];
      v18 = v0[13];

      return MEMORY[0x282200308](v18, v17, v13);
    }

    (*(v0[10] + 8))(v0[12], v0[9]);
    v19 = v0[13];
  }

  v20 = v0[16];
  v22 = v0[11];
  v21 = v0[12];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v23 = v0[1];

  return v23();
}

uint64_t sub_238883578()
{
  *(v0 + 40) = *(v0 + 168);
  sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t SystemLanguageModel.Availability.UnavailableReason.hashValue.getter()
{
  v1 = *v0;
  sub_2388D34A8();
  MEMORY[0x23EE67750](v1);
  return sub_2388D34E8();
}

BOOL static SystemLanguageModel.Availability.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

BOOL sub_2388836E8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_238883724()
{
  v0 = sub_2388D1978();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v39 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2388D19E8();
  v34 = *(v36 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v32 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2388D1998();
  v33 = *(v35 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2388D1A18();
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_238810E44(&qword_27DF2FE68, &qword_2388D5768);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = sub_2388D1448();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2388D11A8();
  sub_2388D11F8();
  (*(v13 + 8))(v16, v12);
  sub_2388D1428();
  v22 = type metadata accessor for SystemLanguageModel();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  v26 = v25 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
  *v26 = 0;
  *(v26 + 8) = 0;
  sub_2388D1188();
  (*(v34 + 104))(v32, *MEMORY[0x277D0E2D8], v36);
  sub_2388D1988();
  sub_2388D1A08();
  (*(v33 + 8))(v7, v35);
  v27 = v39;
  sub_2388D19A8();
  sub_238881E9C(v27, &v40);
  v28 = v40;
  *(v25 + 16) = 0;
  *(v25 + 20) = v28;
  (*(v18 + 16))(v25 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelBundle, v21, v17);
  *(v25 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_useCase) = 0;
  v29 = (v25 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID);
  *v29 = 0xD00000000000001ALL;
  v29[1] = 0x80000002388DF0D0;
  *(v25 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_guardrails) = 0;
  v30 = v25 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
  os_unfair_lock_lock((v25 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock));
  sub_238882A3C((v30 + 8), v25);
  os_unfair_lock_unlock(v30);
  (*(v37 + 8))(v11, v38);
  result = (*(v18 + 8))(v21, v17);
  off_27DF30D90 = v25;
  return result;
}

uint64_t SystemLanguageModel.__allocating_init(modelCatalogAssetBundleID:modelManagerUseCaseID:guardrails:)(void (*a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v6 = v5;
  v43 = a1;
  v44 = a5;
  v47 = a4;
  v49 = a3;
  v7 = sub_2388D1978();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2388D19E8();
  v10 = *(v46 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v46);
  v42 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2388D1998();
  v45 = *(v48 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v48);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2388D1A18();
  v50 = *(v16 - 8);
  v51 = v16;
  v17 = *(v50 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2388D1448();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v25;
  MEMORY[0x28223BE20](v23);
  v27 = &v41 - v26;
  LODWORD(v44) = *v44;
  sub_2388D1428();
  v43 = v21[2];
  v43(v25, v27, v20);
  v28 = *(v6 + 48);
  v29 = *(v6 + 52);
  v30 = swift_allocObject();
  v31 = v30 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
  *v31 = 0;
  *(v31 + 8) = 0;
  sub_2388D1188();
  (*(v10 + 104))(v42, *MEMORY[0x277D0E2D8], v46);
  v32 = v47;

  v33 = v49;
  sub_2388D1988();
  sub_2388D1A08();
  (*(v45 + 8))(v15, v48);
  v34 = v52;
  sub_2388D19A8();
  sub_238881E9C(v34, &v53);
  v35 = v53;
  *(v30 + 16) = 0;
  *(v30 + 20) = v35;
  v36 = v41;
  v43((v30 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelBundle), v41, v20);
  *(v30 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_useCase) = 0;
  v37 = (v30 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID);
  *v37 = v33;
  v37[1] = v32;
  *(v30 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_guardrails) = v44;
  v38 = v30 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
  os_unfair_lock_lock((v30 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock));
  sub_238882A3C((v38 + 8), v30);
  os_unfair_lock_unlock(v38);
  (*(v50 + 8))(v19, v51);
  v39 = v21[1];
  v39(v36, v20);
  v39(v27, v20);
  return v30;
}

uint64_t sub_238884064()
{
  v61 = *MEMORY[0x277D85DE8];
  v44[1] = 0;
  v59 = sub_2388D1118();
  v0 = *(v59 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x28223BE20](v59);
  v4 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v54 = v44 - v6;
  MEMORY[0x28223BE20](v5);
  v58 = v44 - v7;
  v60 = MEMORY[0x277D84F90];
  v8 = 23;
  sub_2388B7E9C(0, 23, 0);
  v9 = v60;
  v57 = v0 + 32;
  v10 = &unk_284B3AA28;
  do
  {
    v11 = *(v10 - 1);
    v12 = *v10;

    sub_2388D10B8();
    v60 = v9;
    v14 = *(v9 + 16);
    v13 = *(v9 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_2388B7E9C(v13 > 1, v14 + 1, 1);
      v9 = v60;
    }

    *(v9 + 16) = v14 + 1;
    v15 = (*(v0 + 80) + 32) & ~*(v0 + 80);
    v16 = *(v0 + 72);
    (*(v0 + 32))(v9 + v15 + v16 * v14, v4, v59);
    v10 += 2;
    --v8;
  }

  while (v8);
  v50 = v15;
  swift_arrayDestroy();
  v17 = sub_2388C7108(v9);

  v19 = v17[32];
  v45 = ((1 << v19) + 63) >> 6;
  if ((v19 & 0x3Fu) > 0xD)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v44[2] = v44;
    MEMORY[0x28223BE20](v18);
    v47 = v44 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v47, v20);
    v51 = 0;
    v21 = 0;
    v22 = *(v17 + 7);
    v46 = v17 + 56;
    v23 = 1 << v17[32];
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v22;
    v26 = (v23 + 63) >> 6;
    v55 = (v0 + 8);
    v56 = (v0 + 16);
    v48 = v26;
    v49 = v17;
LABEL_10:
    if (v25)
    {
      break;
    }

    v28 = v21;
    while (1)
    {
      v21 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v21 >= v26)
      {
        goto LABEL_24;
      }

      v29 = *&v46[8 * v21];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v53 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v42 = swift_slowAlloc();

      v43 = sub_2388850D8(v42, v45, v17, sub_2388845AC);
      swift_bridgeObjectRelease_n();
      MEMORY[0x23EE68030](v42, -1, -1);
      result = v43;
      goto LABEL_25;
    }
  }

  v27 = __clz(__rbit64(v25));
  v53 = (v25 - 1) & v25;
LABEL_17:
  v30 = v27 | (v21 << 6);
  v31 = *(v17 + 6);
  v57 = v16;
  v52 = v30;
  v17 = *v56;
  (*v56)(v58, v31 + v30 * v16, v59);
  v0 = sub_2388D10F8();
  v32 = v0 + v50;
  v33 = -*(v0 + 16);
  v34 = -1;
  do
  {
    if (v33 + v34 == -1)
    {

      (*v55)(v58, v59);
      v16 = v57;
      v26 = v48;
      v17 = v49;
      v25 = v53;
      goto LABEL_10;
    }

    if (++v34 >= *(v0 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    v16 = v32 + v57;
    v35 = v54;
    v36 = v59;
    (v17)(v54);
    v37 = sub_2388D10C8();
    v38 = *v55;
    (*v55)(v35, v36);
    v32 = v16;
  }

  while ((v37 & 1) == 0);

  v38(v58, v59);
  *&v47[(v52 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v52;
  v39 = __OFADD__(v51++, 1);
  v16 = v57;
  v26 = v48;
  v17 = v49;
  v25 = v53;
  if (!v39)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_24:
  result = sub_23888DAD8(v47, v45, v51, v17);
LABEL_25:
  qword_27DF30D98 = result;
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2388845AC(uint64_t a1)
{
  v12[3] = a1;
  v1 = sub_2388D1118();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2388D10F8();
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  v12[1] = v2 + 16;
  while (1)
  {
    v10 = v8;
    if (v9 == v8)
    {
LABEL_5:

      return v9 != v10;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    (*(v2 + 16))(v5, v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8++, v1);
    v11 = sub_2388D10C8();
    result = (*(v2 + 8))(v5, v1);
    if (v11)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t SystemLanguageModel.supportsLocale(_:)()
{
  v0 = sub_238810E44(&qword_27DF30DB8, &qword_2388D89A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17[-v2];
  v4 = sub_2388D1118();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v17[-v10];
  sub_2388D1128();
  sub_23888497C(v9, v3);
  v12 = *(v5 + 8);
  v12(v9, v4);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_238827E88(v3, &qword_27DF30DB8, &qword_2388D89A0);
    v13 = 0;
  }

  else
  {
    v14 = (*(v5 + 32))(v11, v3, v4);
    if (qword_27DF2F9C8 != -1)
    {
      v14 = swift_once();
    }

    MEMORY[0x28223BE20](v14);
    *&v17[-16] = v11;
    v13 = sub_238842144(sub_238885CA0, &v17[-32], v15);
    v12(v11, v4);
  }

  return v13 & 1;
}

uint64_t sub_23888497C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v3 = sub_2388D1068();
  v67 = *(v3 - 8);
  v4 = *(v67 + 64);
  MEMORY[0x28223BE20](v3);
  v60[0] = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_238810E44(&qword_27DF30DF8, &qword_2388D8CC8);
  v6 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v65 = v60 - v7;
  v8 = sub_238810E44(&qword_27DF2FE38, &unk_2388D8CD0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v63 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v66 = v60 - v13;
  MEMORY[0x28223BE20](v12);
  v69 = v60 - v14;
  v15 = sub_2388D1118();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v70 = v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v60 - v20;
  v22 = sub_2388D10F8();
  v23 = *(v22 + 16);
  v75 = v15;
  v71 = v16;
  if (v23)
  {
    v61 = v3;
    v62 = a2;
    v76 = MEMORY[0x277D84F90];
    sub_2388B7BD0(0, v23, 0);
    v24 = v76;
    v26 = *(v16 + 16);
    v25 = v16 + 16;
    v27 = *(v25 + 64);
    v60[1] = v22;
    v28 = v22 + ((v27 + 32) & ~v27);
    v72 = *(v25 + 56);
    v73 = v26;
    v74 = v25;
    v29 = (v25 - 8);
    do
    {
      v73(v21, v28, v15);
      v30 = sub_2388D1108();
      v32 = v31;
      (*v29)(v21, v15);
      v76 = v24;
      v34 = *(v24 + 16);
      v33 = *(v24 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_2388B7BD0((v33 > 1), v34 + 1, 1);
        v24 = v76;
      }

      *(v24 + 16) = v34 + 1;
      v35 = v24 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v32;
      v28 += v72;
      --v23;
      v15 = v75;
    }

    while (v23);

    v3 = v61;
    a2 = v62;
  }

  else
  {
  }

  v36 = objc_opt_self();
  v37 = sub_2388D2AC8();

  sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_2388D3F70;
  *(v38 + 32) = sub_2388D1108();
  *(v38 + 40) = v39;
  v40 = sub_2388D2AC8();

  v41 = [v36 preferredLocalizationsFromArray:v37 forPreferences:v40];

  v42 = sub_2388D2AD8();
  v44 = v69;
  v43 = v70;
  if (v42[2])
  {
    v45 = v42[4];
    v46 = v42[5];

    sub_2388D10B8();
    sub_2388D10E8();
    v47 = v66;
    sub_2388D10E8();
    v48 = v65;
    v49 = *(v64 + 48);
    sub_238886134(v44, v65);
    sub_238886134(v47, v48 + v49);
    v50 = *(v67 + 48);
    if (v50(v48, 1, v3) == 1)
    {
      sub_238827E88(v47, &qword_27DF2FE38, &unk_2388D8CD0);
      sub_238827E88(v44, &qword_27DF2FE38, &unk_2388D8CD0);
      v51 = v50(v48 + v49, 1, v3);
      v52 = v71;
      if (v51 == 1)
      {
        sub_238827E88(v48, &qword_27DF2FE38, &unk_2388D8CD0);
LABEL_18:
        v54 = v75;
        (*(v52 + 32))(a2, v43, v75);
        v53 = 0;
        return (*(v52 + 56))(a2, v53, 1, v54);
      }
    }

    else
    {
      v55 = v63;
      sub_238886134(v48, v63);
      if (v50(v48 + v49, 1, v3) != 1)
      {
        v56 = v67;
        v57 = v60[0];
        (*(v67 + 32))(v60[0], v48 + v49, v3);
        sub_238886430(&qword_27DF30E00, MEMORY[0x277CC9640]);
        LODWORD(v74) = sub_2388D27C8();
        v58 = *(v56 + 8);
        v58(v57, v3);
        sub_238827E88(v66, &qword_27DF2FE38, &unk_2388D8CD0);
        sub_238827E88(v44, &qword_27DF2FE38, &unk_2388D8CD0);
        v58(v55, v3);
        sub_238827E88(v48, &qword_27DF2FE38, &unk_2388D8CD0);
        v52 = v71;
        if (v74)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      sub_238827E88(v66, &qword_27DF2FE38, &unk_2388D8CD0);
      sub_238827E88(v44, &qword_27DF2FE38, &unk_2388D8CD0);
      (*(v67 + 8))(v55, v3);
      v52 = v71;
    }

    sub_238827E88(v48, &qword_27DF30DF8, &qword_2388D8CC8);
LABEL_16:
    v54 = v75;
    (*(v52 + 8))(v43, v75);
    v53 = 1;
    return (*(v52 + 56))(a2, v53, 1, v54);
  }

  v53 = 1;
  v54 = v75;
  v52 = v71;
  return (*(v52 + 56))(a2, v53, 1, v54);
}

void *sub_2388850D8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_23888D4E0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t _s16FoundationModels19SystemLanguageModelC7useCase10guardrailsA2C03UseG0V_AC10GuardrailsVtcfC_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v55 = a2;
  v3 = sub_238810E44(&qword_27DF2FE68, &qword_2388D5768);
  v54 = *(v3 - 8);
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v53 - v5;
  v7 = sub_2388D1978();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_2388D19E8();
  v10 = *(v56 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v56);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2388D1998();
  v57 = *(v14 - 8);
  v58 = v14;
  v15 = *(v57 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2388D1A18();
  v62 = *(v18 - 8);
  v63 = v18;
  v19 = *(v62 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v53 - v23;
  v25 = sub_2388D1448();
  v60 = *(v25 - 8);
  v61 = v25;
  v26 = *(v60 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v53 - v30;
  v32 = *a1;
  LODWORD(v55) = *v55;
  if (v32 == 1)
  {
  }

  else
  {
    v53 = v22;
    v33 = sub_2388D3368();

    if ((v33 & 1) == 0)
    {
      sub_2388D11A8();
      sub_2388D11F8();
      (*(v54 + 8))(v6, v3);
      sub_2388D1428();
      v45 = type metadata accessor for SystemLanguageModel();
      v46 = *(v45 + 48);
      v47 = *(v45 + 52);
      v37 = swift_allocObject();
      v48 = v37 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
      *v48 = 0;
      *(v48 + 8) = 0;
      sub_2388D1188();
      (*(v10 + 104))(v13, *MEMORY[0x277D0E2D8], v56);
      sub_2388D1988();
      v24 = v53;
      sub_2388D1A08();
      (*(v57 + 8))(v17, v58);
      v49 = v59;
      sub_2388D19A8();
      sub_238881E9C(v49, &v65);
      v50 = v65;
      *(v37 + 16) = 0;
      *(v37 + 20) = v50;
      v42 = v60;
      v41 = v61;
      (*(v60 + 16))(v37 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelBundle, v29, v61);
      *(v37 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_useCase) = 0;
      v51 = (v37 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID);
      *v51 = 0xD00000000000001ALL;
      v51[1] = 0x80000002388DF0D0;
      *(v37 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_guardrails) = v55;
      v44 = v37 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
      os_unfair_lock_lock((v37 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock));
      sub_238882A3C((v44 + 8), v37);
      v31 = v29;
      goto LABEL_6;
    }
  }

  sub_2388D1428();
  v34 = type metadata accessor for SystemLanguageModel();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  v38 = v37 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
  *v38 = 0;
  *(v38 + 8) = 0;
  sub_2388D1188();
  (*(v10 + 104))(v13, *MEMORY[0x277D0E2D8], v56);
  sub_2388D1988();
  sub_2388D1A08();
  (*(v57 + 8))(v17, v58);
  v39 = v59;
  sub_2388D19A8();
  sub_238881E9C(v39, v64);
  v40 = v64[0];
  *(v37 + 16) = 0;
  *(v37 + 20) = v40;
  v42 = v60;
  v41 = v61;
  (*(v60 + 16))(v37 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelBundle, v31, v61);
  *(v37 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_useCase) = v32;
  v43 = (v37 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID);
  *v43 = 0xD00000000000001ALL;
  v43[1] = 0x80000002388DF0D0;
  *(v37 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_guardrails) = v55;
  v44 = v37 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
  os_unfair_lock_lock((v37 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock));
  sub_238882A3C((v44 + 8), v37);
LABEL_6:
  os_unfair_lock_unlock(v44);
  (*(v62 + 8))(v24, v63);
  (*(v42 + 8))(v31, v41);
  return v37;
}

uint64_t _s16FoundationModels19SystemLanguageModelC7adapter10guardrailsA2C7AdapterV_AC10GuardrailsVtcfC_0(uint64_t a1, unsigned __int8 *a2)
{
  v35 = a1;
  v4 = sub_2388D1978();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = sub_2388D19E8();
  v37 = *(v39 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = sub_2388D1998();
  v36 = *(v38 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = sub_2388D1A18();
  v40 = *(v42 - 8);
  v13 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v15 = &v33[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_2388D1448();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v33[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = *a2;
  v21 = type metadata accessor for SystemLanguageModel.Adapter(0);
  v22 = *(v17 + 16);
  v22(v20, a1 + *(v21 + 20), v16);
  v23 = type metadata accessor for SystemLanguageModel();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v27 = v26 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
  *v27 = 0;
  *(v27 + 8) = 0;
  sub_2388D1188();
  (*(v37 + 104))(v9, *MEMORY[0x277D0E2D8], v39);
  sub_2388D1988();
  sub_2388D1A08();
  (*(v36 + 8))(v12, v38);
  v28 = v41;
  sub_2388D19A8();
  sub_238881E9C(v28, &v43);
  v29 = v43;
  *(v26 + 16) = 0;
  *(v26 + 20) = v29;
  v22((v26 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelBundle), v20, v16);
  *(v26 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_useCase) = 0;
  v30 = (v26 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID);
  *v30 = 0xD00000000000001ALL;
  v30[1] = 0x80000002388DF0D0;
  *(v26 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_guardrails) = v34;
  v31 = v26 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
  os_unfair_lock_lock((v26 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock));
  sub_238882A3C((v31 + 8), v26);
  os_unfair_lock_unlock(v31);
  sub_2388861A4(v35);
  (*(v40 + 8))(v15, v42);
  (*(v17 + 8))(v20, v16);
  return v26;
}

unint64_t sub_238885CDC()
{
  result = qword_27DF30DC0;
  if (!qword_27DF30DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30DC0);
  }

  return result;
}

uint64_t sub_238885D38()
{
  result = sub_2388D1448();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2388D1198();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_238885E4C()
{
  if (MEMORY[0x277D85020])
  {
    return sub_238810E44(&qword_27DF30DD8, &qword_2388D8B30);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_238885E7C()
{
  if (MEMORY[0x277D85020])
  {
    return sub_238810E44(&qword_27DF30DE0, &qword_2388D8B38);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t getEnumTagSinglePayload for SystemLanguageModel.Availability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SystemLanguageModel.Availability(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_238886020(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_238886034(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_238886088()
{
  result = qword_27DF30DE8;
  if (!qword_27DF30DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30DE8);
  }

  return result;
}

unint64_t sub_2388860E0()
{
  result = qword_27DF30DF0;
  if (!qword_27DF30DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30DF0);
  }

  return result;
}

uint64_t sub_238886134(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(&qword_27DF2FE38, &unk_2388D8CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2388861A4(uint64_t a1)
{
  v2 = type metadata accessor for SystemLanguageModel.Adapter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238886200()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238886238()
{
  v1 = sub_2388D1A18();
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

uint64_t sub_238886310(uint64_t a1)
{
  v4 = *(sub_2388D1A18() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238833668;

  return sub_238882E30(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_238886430(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2388864A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_238810E44(&qword_27DF2FD28, &qword_2388D8CE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_238827E14(a3, v27 - v11, &qword_27DF2FD28, &qword_2388D8CE0);
  v13 = sub_2388D2BE8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_238827E88(v12, &qword_27DF2FD28, &qword_2388D8CE0);
  }

  else
  {
    sub_2388D2BD8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2388D2B38();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v27[0] = a3;
      v21 = sub_2388D28C8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_2388D15A8();

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

      sub_238827E88(v27[0], &qword_27DF2FD28, &qword_2388D8CE0);

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

  sub_238827E88(a3, &qword_27DF2FD28, &qword_2388D8CE0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_2388D15A8();
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2388867B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_238810E44(&qword_27DF2FD28, &qword_2388D8CE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_238827E14(a3, v27 - v11, &qword_27DF2FD28, &qword_2388D8CE0);
  v13 = sub_2388D2BE8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_238827E88(v12, &qword_27DF2FD28, &qword_2388D8CE0);
  }

  else
  {
    sub_2388D2BD8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2388D2B38();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2388D28C8() + 32;
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

      sub_238827E88(a3, &qword_27DF2FD28, &qword_2388D8CE0);

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

  sub_238827E88(a3, &qword_27DF2FD28, &qword_2388D8CE0);
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

uint64_t SystemLanguageModel.Adapter.creatorDefinedMetadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for SystemLanguageModel.Adapter(0) + 24));
}

uint64_t SystemLanguageModel.Adapter.init(fileURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2388D0F58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2388D1448();
  v21 = *(v10 - 8);
  v11 = *(v21 + 64);
  MEMORY[0x28223BE20](v10);
  v22 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v6 + 16);
  v13(a2, a1, v5);
  _s7AdapterV7StorageOMa(0);
  v25 = a2;
  swift_storeEnumTagMultiPayload();
  v14 = sub_23888DE00();
  sub_23888E824(0, 0, a1, v14, v23);

  if (v2)
  {
    swift_willThrow();
    sub_23888ECD8();
    (*(v6 + 8))(a1, v5);
    return sub_23888FFC0(v25, _s7AdapterV7StorageOMa);
  }

  else
  {
    v16 = type metadata accessor for SystemLanguageModel.Adapter(0);
    v17 = v25 + *(v16 + 24);
    v18 = v23[1];
    *v17 = v23[0];
    *(v17 + 16) = v18;
    *(v17 + 32) = v24;
    v13(v9, a1, v5);
    v19 = v22;
    sub_2388D1438();
    (*(v6 + 8))(a1, v5);
    return (*(v21 + 32))(v25 + *(v16 + 20), v19, v10);
  }
}

uint64_t SystemLanguageModel.Adapter.AssetError.Context.init(debugDescription:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = MEMORY[0x277D84F90];
  return result;
}

double SystemLanguageModel.Adapter.init(name:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v103 = sub_2388D1448();
  v102 = *(v103 - 8);
  v6 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v105 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_2388D0EE8();
  v129 = *(v127 - 8);
  v8 = v129[8];
  v9 = MEMORY[0x28223BE20](v127);
  v114 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v126 = &v95 - v11;
  v12 = sub_238810E44(&qword_27DF30608, &qword_2388D6690);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v113 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v125 = &v95 - v16;
  v128 = sub_2388D0F58();
  v107 = *(v128 - 8);
  v17 = *(v107 + 64);
  v18 = MEMORY[0x28223BE20](v128);
  v104 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v106 = &v95 - v20;
  v135 = sub_2388D2428();
  v120 = *(v135 - 8);
  v21 = *(v120 + 64);
  v22 = MEMORY[0x28223BE20](v135);
  v123 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v122 = &v95 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v124 = &v95 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v133 = &v95 - v29;
  MEMORY[0x28223BE20](v28);
  v130 = &v95 - v30;
  v31 = sub_238810E44(&qword_27DF2FD28, &qword_2388D8CE0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v108 = &v95 - v33;
  v34 = sub_238810E44(&qword_27DF30E18, &qword_2388D8D00);
  v134 = *(v34 - 8);
  v35 = *(v134 + 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v95 - v36;
  v38 = sub_238810E44(&qword_27DF30E20, &qword_2388D8D08);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v95 - v41;
  v43 = sub_238810E44(&qword_27DF30E28, &qword_2388D8D10);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v46 = &v95 - v45;
  *a3 = a1;
  a3[1] = a2;
  _s7AdapterV7StorageOMa(0);
  v109 = a3;
  swift_storeEnumTagMultiPayload();

  sub_2388880B0(v42);
  sub_238815180(&qword_27DF30E30, &qword_27DF30E20, &qword_2388D8D08);
  sub_2388D1CA8();
  v112 = a1;
  v110 = a2;
  sub_2388D2A38();
  v47 = v136;
  sub_2388D1CD8();
  v48 = v47;
  if (v47)
  {

    (*(v134 + 1))(v37, v34);
    (*(v39 + 8))(v42, v38);
    v49 = sub_238810E44(&qword_27DF30E38, &qword_2388D8D18);
    (*(*(v49 - 8) + 56))(v46, 1, 1, v49);
    v48 = 0;
  }

  else
  {

    (*(v134 + 1))(v37, v34);
    (*(v39 + 8))(v42, v38);
  }

  v50 = sub_238810E44(&qword_27DF30E38, &qword_2388D8D18);
  v51 = (*(*(v50 - 8) + 48))(v46, 1, v50);
  sub_238827E88(v46, &qword_27DF30E28, &qword_2388D8D10);
  v52 = v124;
  if (v51 != 1)
  {
    v56 = v129;
    v57 = sub_23888EFA8();
    v58 = swift_allocError();
    v59 = v112;
    v60 = v110;
    sub_2388884C0(v112, v110, MEMORY[0x277D84F90], v61);
    v62 = _s16FoundationModels19SystemLanguageModelC7AdapterV010compatibleF11Identifiers4nameSaySSGSS_tFZ_0(v59, v60);
    v63 = v62;
    v64 = *(v62 + 16);
    if (!v64)
    {
LABEL_24:

      v86 = sub_2388D2BE8();
      v87 = v108;
      (*(*(v86 - 8) + 56))(v108, 1, 1, v86);
      v88 = swift_allocObject();
      v88[2] = 0;
      v88[3] = 0;
      v88[4] = v112;
      v88[5] = v60;
      sub_2388867B0(0, 0, v87, &unk_2388D8D30, v88);

      v141 = v58;
      v89 = v58;
      sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
      if (swift_dynamicCast())
      {
        if (v140 == 2)
        {
          sub_23888F5E8(v137, v138, v139, 2u);
          sub_23888ECD8();
        }

        else
        {
          sub_23888F5E8(v137, v138, v139, v140);
        }
      }

      goto LABEL_28;
    }

    v101 = v58;
    v96 = v57;
    v65 = 0;
    v66 = (v120 + 8);
    v121 = (v120 + 32);
    v120 += 16;
    v119 = *MEMORY[0x277CC91D8];
    v118 = (v56 + 13);
    v111 = (v56 + 2);
    v117 = (v107 + 56);
    v116 = (v56 + 1);
    v115 = (v107 + 48);
    v100 = (v107 + 32);
    v97 = (v107 + 16);
    v107 += 8;
    v67 = v62 + 40;
    v98 = v64 - 1;
    v95 = xmmword_2388D3F70;
    v131 = v64;
    v132 = v62;
    v136 = v66;
    v99 = v62 + 40;
LABEL_8:
    v68 = (v67 + 16 * v65);
    v69 = v65;
    while (1)
    {
      if (v69 >= *(v63 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v42 = *(v68 - 1);
      v70 = *v68;
      sub_2388D18B8();

      sub_2388D1898();
      v137 = 12078;
      v138 = 0xE200000000000000;
      MEMORY[0x23EE66C20](v42, v70);
      MEMORY[0x23EE66C20](46, 0xE100000000000000);
      MEMORY[0x23EE66C20](0x6574706164616D66, 0xE900000000000072);
      MEMORY[0x23EE66C20](47, 0xE100000000000000);
      MEMORY[0x23EE66C20](0x617461646174656DLL, 0xED00006E6F736A2ELL);
      MEMORY[0x23EE666D0](v137, v138);
      v71 = v133;
      sub_2388D18A8();
      if (v48)
      {
        (*v136)(v52, v135);

        v48 = 0;
        v63 = v132;
      }

      else
      {
        v129 = 0;
        v42 = v135;
        v134 = *v136;
        v134(v52, v135);

        v72 = v130;
        (*v121)(v130, v71, v42);
        v73 = *v120;
        v74 = v123;
        (*v120)(v123, v72, v42);
        v75 = v122;
        sub_2388D2418();
        v76 = v126;
        v77 = v127;
        (*v118)(v126, v119, v127);
        v73(v74, v75, v42);
        sub_2388D2978();
        if (v78)
        {
          (*v111)(v114, v76, v77);
          v79 = *v117;
          (*v117)(v113, 1, 1, v128);
          v42 = v135;
          v80 = v125;
          sub_2388D0F38();
          v81 = v128;
          (*v116)(v126, v127);
          v134(v75, v42);
          v79(v80, 0, 1, v81);
        }

        else
        {
          (*v116)(v76, v77);
          v134(v75, v42);
          v80 = v125;
          v81 = v128;
          (*v117)(v125, 1, 1, v128);
        }

        v82 = (*v115)(v80, 1, v81);
        v52 = v124;
        v63 = v132;
        if (v82 != 1)
        {
          v42 = v106;
          v83 = v128;
          (*v100)(v106, v80, v128);
          v60 = v110;

          v84 = sub_23888DE00();
          v85 = v129;
          sub_23888E824(v112, v60, v42, v84, v142);
          v58 = v85;
          if (!v85)
          {

            (*v97)(v104, v42, v83);
            sub_2388D1438();
LABEL_30:

            (*v107)(v42, v128);
            v134(v130, v135);
            v91 = type metadata accessor for SystemLanguageModel.Adapter(0);
            v92 = v109;
            (*(v102 + 32))(v109 + *(v91 + 20), v105, v103);
            v93 = v92 + *(v91 + 24);
            result = *v142;
            v94 = v142[1];
            *v93 = v142[0];
            *(v93 + 16) = v94;
            *(v93 + 32) = v143;
            return result;
          }

          v48 = 0;
          v65 = v69 + 1;

          (*v107)(v106, v128);
          v134(v130, v135);
          v101 = v85;
          v67 = v99;
          if (v98 == v69)
          {
            goto LABEL_24;
          }

          goto LABEL_8;
        }

        v134(v130, v42);
        sub_238827E88(v80, &qword_27DF30608, &qword_2388D6690);
        v48 = v129;
      }

      ++v69;
      v68 += 2;
      if (v131 == v69)
      {
        v58 = v101;
        v60 = v110;
        goto LABEL_24;
      }
    }
  }

  v137 = 0;
  v138 = 0xE000000000000000;
  sub_2388D2FA8();
  MEMORY[0x23EE66C20](0x2072657470616441, 0xEE002220656D616ELL);
  MEMORY[0x23EE66C20](v112, v110);

  MEMORY[0x23EE66C20](0xD00000000000003BLL, 0x80000002388DF3B0);
  v53 = v137;
  v54 = v138;
  sub_23888EFA8();
  swift_allocError();
  *v55 = v53;
  *(v55 + 8) = v54;
  *(v55 + 16) = MEMORY[0x277D84F90];
  *(v55 + 24) = 1;
LABEL_28:
  swift_willThrow();
  sub_23888FFC0(v109, _s7AdapterV7StorageOMa);
  return result;
}