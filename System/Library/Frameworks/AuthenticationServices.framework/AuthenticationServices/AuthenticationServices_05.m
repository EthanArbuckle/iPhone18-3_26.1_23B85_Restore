unint64_t ASImportableEditableField.FieldType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD00000000000001ALL;
    v7 = 0x2D7972746E756F63;
    if (v1 != 8)
    {
      v7 = 0xD000000000000010;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 1702125924;
    if (v1 != 5)
    {
      v8 = 0x6E6F6D2D72616579;
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
    v2 = 0x676E69727473;
    v3 = 0x6C69616D65;
    v4 = 0x7265626D756ELL;
    if (v1 != 3)
    {
      v4 = 0x6E61656C6F6F62;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
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
}

unint64_t sub_1B1D3B890@<X0>(unint64_t *a1@<X8>)
{
  result = ASImportableEditableField.FieldType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B1D3B968()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  sub_1B1D2E888();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3B9B8()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  sub_1B1D2E888();
  return sub_1B1D7C61C();
}

uint64_t ASImportableEditableField.id.getter()
{
  v1 = *v0;
  sub_1B1C91B94(*v0, *(v0 + 8));
  return v1;
}

uint64_t ASImportableEditableField.id.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1C91AE4(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ASImportableEditableField.value.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ASImportableEditableField.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ASImportableEditableField.label.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ASImportableEditableField.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_1B1D3BBD0()
{
  v1 = 25705;
  v2 = 0x65756C6176;
  if (*v0 != 2)
  {
    v2 = 0x6C6562616CLL;
  }

  if (*v0)
  {
    v1 = 0x707954646C656966;
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

uint64_t sub_1B1D3BC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1D6BE24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1D3BC64(uint64_t a1)
{
  v2 = sub_1B1D6622C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D3BCA0(uint64_t a1)
{
  v2 = sub_1B1D6622C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableEditableField.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775988, &qword_1B1D88E40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D6622C();
  sub_1B1D7C62C();
  if (!v2)
  {
    v36 = 0;
    sub_1B1D7C3DC();
    if (v11)
    {
      v12 = sub_1B1D7B4AC();
      if (v13 >> 60 == 15)
      {
        v14 = sub_1B1D7C2BC();
        swift_allocError();
        v16 = v15;
        v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0) + 48);
        *v16 = MEMORY[0x1E6969080];
        sub_1B1D7C3CC();
        sub_1B1D7C2AC();
        (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
        swift_willThrow();
        (*(v6 + 8))(v9, v5);
        return __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      v18 = v12;
      v19 = v13;
    }

    else
    {
      v18 = 0;
      v19 = 0xF000000000000000;
    }

    v34 = 1;
    sub_1B1D66280();
    sub_1B1D7C43C();
    v20 = v35;
    v33 = 2;
    v30 = sub_1B1D7C40C();
    v31 = v22;
    v29 = v20;
    v32 = 3;
    v23 = sub_1B1D7C3DC();
    v24 = v9;
    v26 = v25;
    (*(v6 + 8))(v24, v5);
    sub_1B1C91AE4(0, 0xF000000000000000);
    *a2 = v18;
    *(a2 + 8) = v19;
    *(a2 + 16) = v29;
    v27 = v31;
    *(a2 + 24) = v30;
    *(a2 + 32) = v27;
    *(a2 + 40) = v23;
    *(a2 + 48) = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ASImportableEditableField.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7759A0, &qword_1B1D88E48);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v15 = *(v1 + 16);
  v10 = v1[3];
  v14[2] = v1[4];
  v14[3] = v10;
  v11 = v1[5];
  v14[0] = v1[6];
  v14[1] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D6622C();
  sub_1B1D7C63C();
  if (v8 >> 60 != 15)
  {
    sub_1B1D7B4BC();
  }

  v21 = 0;
  sub_1B1D7C47C();
  if (v2)
  {
    (*(v16 + 8))(v7, v4);
  }

  else
  {

    v20 = v15;
    v19 = 1;
    sub_1B1D662D4();
    sub_1B1D7C4CC();
    v18 = 2;
    sub_1B1D7C49C();
    v17 = 3;
    sub_1B1D7C47C();
    return (*(v16 + 8))(v7, v4);
  }
}

uint64_t sub_1B1D3C290(char a1)
{
  result = 0x73736572646461;
  switch(a1)
  {
    case 1:
      v3 = 761884769;
      goto LABEL_16;
    case 2:
      return 0x75612D6369736162;
    case 3:
      return 0x632D746964657263;
    case 4:
      return 0x662D6D6F74737563;
    case 5:
      return 0x2D73726576697264;
    case 6:
      return 0xD000000000000012;
    case 7:
      return 0xD000000000000011;
    case 8:
      return 0x6665722D6D657469;
    case 9:
      return 1702129518;
    case 10:
      v3 = 1936941424;
      goto LABEL_16;
    case 11:
      return 0x74726F7073736170;
    case 12:
      return 0x6E2D6E6F73726570;
    case 13:
      v3 = 761820019;
LABEL_16:
      result = v3 | 0x79656B00000000;
      break;
    case 14:
      result = 1886678900;
      break;
    case 15:
      result = 1768319351;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1D3C478()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_1B1D7C5CC();
  sub_1B1D7C5EC();
  if (v2 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v7)
  {
    sub_1B1D7BE7C();
  }

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3C554(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1B1D3C290(*a1);
  v5 = v4;
  if (v3 == sub_1B1D3C290(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B1D7C50C();
  }

  return v8 & 1;
}

uint64_t sub_1B1D3C5DC()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  sub_1B1D3C290(v1);
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3C640()
{
  sub_1B1D3C290(*v0);
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D3C694()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  sub_1B1D3C290(v1);
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3C6F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B1D6BF80();
  *a2 = result;
  return result;
}

uint64_t sub_1B1D3C724@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1D3C290(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B1D3C810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B1D7C50C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B1D3C898(uint64_t a1)
{
  v2 = sub_1B1D66F1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D3C8D4(uint64_t a1)
{
  v2 = sub_1B1D66F1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1D3C910()
{
  memcpy(__dst, v0, 0x2A1uLL);
  switch(sub_1B1D67108(__dst))
  {
    case 1u:
      nullsub_1(__dst);
      result = 1;
      break;
    case 2u:
      nullsub_1(__dst);
      result = 2;
      break;
    case 3u:
      nullsub_1(__dst);
      result = 3;
      break;
    case 4u:
      nullsub_1(__dst);
      result = 4;
      break;
    case 5u:
      nullsub_1(__dst);
      result = 5;
      break;
    case 6u:
      nullsub_1(__dst);
      result = 6;
      break;
    case 7u:
      nullsub_1(__dst);
      result = 7;
      break;
    case 8u:
      nullsub_1(__dst);
      result = 8;
      break;
    case 9u:
      nullsub_1(__dst);
      result = 9;
      break;
    case 0xAu:
      nullsub_1(__dst);
      result = 10;
      break;
    case 0xBu:
      nullsub_1(__dst);
      result = 11;
      break;
    case 0xCu:
      nullsub_1(__dst);
      result = 12;
      break;
    case 0xDu:
      nullsub_1(__dst);
      result = 13;
      break;
    case 0xEu:
      nullsub_1(__dst);
      result = 14;
      break;
    case 0xFu:
      nullsub_1(__dst);
      result = 15;
      break;
    default:
      nullsub_1(__dst);
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_1B1D3CB40()
{
  *v0;
  *v0;
  *v0;
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D3CC3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B1D6BFCC();
  *a2 = result;
  return result;
}

void sub_1B1D3CC6C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00007373657264;
  v4 = 0x6441746565727473;
  v5 = 0xE900000000000079;
  v6 = 0x726F746972726574;
  v7 = 0xE700000000000000;
  v8 = 0x7972746E756F63;
  if (v2 != 4)
  {
    v8 = 7103860;
    v7 = 0xE300000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006564;
  v10 = 0x6F436C6174736F70;
  if (v2 != 1)
  {
    v10 = 2037672291;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1B1D3CD30()
{
  v1 = *v0;
  v2 = 0x6441746565727473;
  v3 = 0x726F746972726574;
  v4 = 0x7972746E756F63;
  if (v1 != 4)
  {
    v4 = 7103860;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F436C6174736F70;
  if (v1 != 1)
  {
    v5 = 2037672291;
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

uint64_t sub_1B1D3CDF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1D6BFCC();
  *a1 = result;
  return result;
}

uint64_t sub_1B1D3CE18(uint64_t a1)
{
  v2 = sub_1B1D66374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D3CE54(uint64_t a1)
{
  v2 = sub_1B1D66374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s22AuthenticationServices22ASImportableCredentialO10PersonNameV5titleAA0C13EditableFieldVSgvg_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 _s22AuthenticationServices22ASImportableCredentialO10PersonNameV5titleAA0C13EditableFieldVSgvs_0(__n128 *a1)
{
  v8 = a1[2];
  v3 = a1[3].n128_u64[0];
  v4 = v1[2].n128_u64[1];
  v5 = v1[3].n128_u64[0];
  sub_1B1D0D630(v1->n128_u64[0], v1->n128_u64[1], v1[1].n128_i64[0], v1[1].n128_i64[1], v1[2].n128_i64[0]);
  v6 = a1[1];
  *v1 = *a1;
  v1[1] = v6;
  result = v8;
  v1[2] = v8;
  v1[3].n128_u64[0] = v3;
  return result;
}

uint64_t _s22AuthenticationServices22ASImportableCredentialO10PersonNameV5givenAA0C13EditableFieldVSgvg_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 _s22AuthenticationServices22ASImportableCredentialO10PersonNameV5givenAA0C13EditableFieldVSgvs_0(__int128 *a1)
{
  v8 = a1[2];
  v3 = *(a1 + 6);
  v4 = v1[12];
  v5 = v1[13];
  sub_1B1D0D630(v1[7], v1[8], v1[9], v1[10], v1[11]);
  v6 = *a1;
  *(v1 + 9) = a1[1];
  *(v1 + 7) = v6;
  result = v8;
  *(v1 + 11) = v8;
  v1[13] = v3;
  return result;
}

uint64_t _s22AuthenticationServices22ASImportableCredentialO10PersonNameV13givenInformalAA0C13EditableFieldVSgvg_0@<X0>(uint64_t *a1@<X8>)
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
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 _s22AuthenticationServices22ASImportableCredentialO10PersonNameV13givenInformalAA0C13EditableFieldVSgvs_0(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[19];
  v5 = v1[20];
  sub_1B1D0D630(v1[14], v1[15], v1[16], v1[17], v1[18]);
  v6 = *(a1 + 16);
  *(v1 + 7) = *a1;
  *(v1 + 8) = v6;
  result = v8;
  *(v1 + 9) = v8;
  v1[20] = v3;
  return result;
}

uint64_t _s22AuthenticationServices22ASImportableCredentialO10PersonNameV6given2AA0C13EditableFieldVSgvg_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[21];
  v3 = v1[22];
  v4 = v1[23];
  v5 = v1[24];
  v6 = v1[25];
  v7 = v1[26];
  v8 = v1[27];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 _s22AuthenticationServices22ASImportableCredentialO10PersonNameV6given2AA0C13EditableFieldVSgvs_0(__int128 *a1)
{
  v8 = a1[2];
  v3 = *(a1 + 6);
  v4 = v1[26];
  v5 = v1[27];
  sub_1B1D0D630(v1[21], v1[22], v1[23], v1[24], v1[25]);
  v6 = *a1;
  *(v1 + 23) = a1[1];
  *(v1 + 21) = v6;
  result = v8;
  *(v1 + 25) = v8;
  v1[27] = v3;
  return result;
}

uint64_t _s22AuthenticationServices22ASImportableCredentialO10PersonNameV13surnamePrefixAA0C13EditableFieldVSgvg_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[28];
  v3 = v1[29];
  v4 = v1[30];
  v5 = v1[31];
  v6 = v1[32];
  v7 = v1[33];
  v8 = v1[34];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 _s22AuthenticationServices22ASImportableCredentialO10PersonNameV13surnamePrefixAA0C13EditableFieldVSgvs_0(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[33];
  v5 = v1[34];
  sub_1B1D0D630(v1[28], v1[29], v1[30], v1[31], v1[32]);
  v6 = *(a1 + 16);
  *(v1 + 14) = *a1;
  *(v1 + 15) = v6;
  result = v8;
  *(v1 + 16) = v8;
  v1[34] = v3;
  return result;
}

uint64_t _s22AuthenticationServices22ASImportableCredentialO10PersonNameV7surnameAA0C13EditableFieldVSgvg_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[35];
  v3 = v1[36];
  v4 = v1[37];
  v5 = v1[38];
  v6 = v1[39];
  v7 = v1[40];
  v8 = v1[41];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 _s22AuthenticationServices22ASImportableCredentialO10PersonNameV7surnameAA0C13EditableFieldVSgvs_0(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[40];
  v5 = v1[41];
  sub_1B1D0D630(v1[35], v1[36], v1[37], v1[38], v1[39]);
  v6 = *(a1 + 16);
  *(v1 + 35) = *a1;
  *(v1 + 37) = v6;
  result = v8;
  *(v1 + 39) = v8;
  v1[41] = v3;
  return result;
}

__n128 sub_1B1D3D3F4@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v34 = *(a1 + 32);
  v14 = *(a1 + 48);
  v15 = *a2;
  v16 = a2[6];
  v35 = a2[5];
  v36 = *a3;
  v37 = a3[6];
  v38 = a3[5];
  v39 = *a4;
  v40 = a4[6];
  v41 = a4[5];
  v42 = *a5;
  v43 = a5[6];
  v44 = a5[5];
  v45 = *a6;
  v46 = a6[6];
  v47 = a6[5];
  *(a7 + 304) = 0u;
  *(a7 + 320) = 0u;
  *(a7 + 272) = 0u;
  *(a7 + 288) = 0u;
  *(a7 + 240) = 0u;
  *(a7 + 256) = 0u;
  *(a7 + 208) = 0u;
  *(a7 + 224) = 0u;
  *(a7 + 176) = 0u;
  *(a7 + 192) = 0u;
  *(a7 + 144) = 0u;
  *(a7 + 160) = 0u;
  *(a7 + 112) = 0u;
  *(a7 + 128) = 0u;
  *(a7 + 80) = 0u;
  *(a7 + 96) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *a7 = 0u;
  sub_1B1D0D630(0, 0, 0, 0, 0);
  v17 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v17;
  *(a7 + 32) = v34;
  *(a7 + 48) = v14;
  v18 = *(a7 + 96);
  v19 = *(a7 + 104);
  sub_1B1D0D630(*(a7 + 56), *(a7 + 64), *(a7 + 72), *(a7 + 80), *(a7 + 88));
  *(a7 + 56) = v15;
  v20 = *(a2 + 3);
  *(a7 + 64) = *(a2 + 1);
  *(a7 + 80) = v20;
  *(a7 + 96) = v35;
  *(a7 + 104) = v16;
  v21 = *(a7 + 152);
  v22 = *(a7 + 160);
  sub_1B1D0D630(*(a7 + 112), *(a7 + 120), *(a7 + 128), *(a7 + 136), *(a7 + 144));
  *(a7 + 112) = v36;
  v23 = *(a3 + 1);
  *(a7 + 136) = *(a3 + 3);
  *(a7 + 120) = v23;
  *(a7 + 152) = v38;
  *(a7 + 160) = v37;
  v24 = *(a7 + 208);
  v25 = *(a7 + 216);
  sub_1B1D0D630(*(a7 + 168), *(a7 + 176), *(a7 + 184), *(a7 + 192), *(a7 + 200));
  *(a7 + 168) = v39;
  v26 = *(a4 + 3);
  *(a7 + 176) = *(a4 + 1);
  *(a7 + 192) = v26;
  *(a7 + 208) = v41;
  *(a7 + 216) = v40;
  v27 = *(a7 + 264);
  v28 = *(a7 + 272);
  sub_1B1D0D630(*(a7 + 224), *(a7 + 232), *(a7 + 240), *(a7 + 248), *(a7 + 256));
  *(a7 + 224) = v42;
  v29 = *(a5 + 1);
  *(a7 + 248) = *(a5 + 3);
  *(a7 + 232) = v29;
  *(a7 + 264) = v44;
  *(a7 + 272) = v43;
  v30 = *(a7 + 320);
  v31 = *(a7 + 328);
  sub_1B1D0D630(*(a7 + 280), *(a7 + 288), *(a7 + 296), *(a7 + 304), *(a7 + 312));
  *(a7 + 280) = v45;
  result = *(a6 + 1);
  v33 = *(a6 + 3);
  *(a7 + 288) = result;
  *(a7 + 304) = v33;
  *(a7 + 320) = v47;
  *(a7 + 328) = v46;
  return result;
}

uint64_t sub_1B1D3D610()
{
  *v0;
  *v0;
  *v0;
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D3D700@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B1D6C018();
  *a2 = result;
  return result;
}

void sub_1B1D3D730(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7955819;
  v5 = 0xE300000000000000;
  v6 = 7107189;
  v7 = 0xE90000000000006DLL;
  v8 = 0x6F724664696C6176;
  if (v2 != 4)
  {
    v8 = 0x6144797269707865;
    v7 = 0xEA00000000006574;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656D616E72657375;
  if (v2 != 1)
  {
    v10 = 0x6570795479656BLL;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1B1D3D7E8()
{
  v1 = *v0;
  v2 = 7955819;
  v3 = 7107189;
  v4 = 0x6F724664696C6176;
  if (v1 != 4)
  {
    v4 = 0x6144797269707865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D616E72657375;
  if (v1 != 1)
  {
    v5 = 0x6570795479656BLL;
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

uint64_t sub_1B1D3D89C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1D6C018();
  *a1 = result;
  return result;
}

uint64_t sub_1B1D3D8C4(uint64_t a1)
{
  v2 = sub_1B1D664D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D3D900(uint64_t a1)
{
  v2 = sub_1B1D664D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1D3D99C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v86 = a4;
  v87 = a5;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v89 = *(v83 - 8);
  v7 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v83 - 8);
  v85 = &v46 - v8;
  v9 = v5[1];
  v84 = *v5;
  v10 = v5[2];
  v11 = v5[3];
  v12 = v5[4];
  v13 = v5[5];
  v14 = v5[6];
  v80 = v5[7];
  v81 = v14;
  v15 = v5[8];
  v78 = v5[9];
  v79 = v15;
  v16 = v5[10];
  v76 = v5[11];
  v77 = v16;
  v17 = v5[13];
  v75 = v5[12];
  v74 = v17;
  v18 = v5[15];
  v73 = v5[14];
  v72 = v18;
  v19 = v5[17];
  v71 = v5[16];
  v70 = v19;
  v20 = v5[19];
  v69 = v5[18];
  v68 = v20;
  v21 = v5[21];
  v67 = v5[20];
  v60 = v21;
  v22 = v5[23];
  v61 = v5[22];
  v62 = v22;
  v23 = v5[25];
  v63 = v5[24];
  v66 = v23;
  v24 = v5[27];
  v65 = v5[26];
  v64 = v24;
  v25 = v5[29];
  v53 = v5[28];
  v54 = v25;
  v26 = v5[31];
  v55 = v5[30];
  v59 = v26;
  v27 = v5[33];
  v58 = v5[32];
  v57 = v27;
  v28 = v5[35];
  v56 = v5[34];
  v46 = v28;
  v29 = v5[37];
  v47 = v5[36];
  v48 = v29;
  v30 = v5[39];
  v49 = v5[38];
  v50 = v30;
  v31 = v5[41];
  v52 = v5[40];
  v51 = v31;
  v32 = a1[3];
  v82 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  v33 = v84;
  v34 = sub_1B1D66328(v84, v9, v10, v11, v12);
  v86(v34);
  v35 = v85;
  sub_1B1D7C63C();
  v90 = v33;
  v91 = v9;
  v36 = v35;
  v92 = v10;
  v93 = v11;
  v94 = v12;
  v95 = v13;
  v96 = v81;
  v97 = 0;
  v37 = sub_1B1D663C8();
  v38 = v83;
  v39 = v88;
  sub_1B1D7C48C();
  if (v39)
  {
    sub_1B1D0D630(v90, v91, v92, v93, v94);
    return (*(v89 + 8))(v35, v38);
  }

  else
  {
    v41 = v70;
    v42 = v71;
    v43 = v72;
    v44 = v73;
    v45 = v89;
    sub_1B1D0D630(v90, v91, v92, v93, v94);
    v90 = v80;
    v91 = v79;
    v92 = v78;
    v93 = v77;
    v94 = v76;
    v95 = v75;
    v96 = v74;
    v97 = 1;
    sub_1B1D66328(v80, v79, v78, v77, v76);
    v88 = v37;
    sub_1B1D7C48C();
    sub_1B1D0D630(v90, v91, v92, v93, v94);
    v90 = v44;
    v91 = v43;
    v92 = v42;
    v93 = v41;
    v94 = v69;
    v95 = v68;
    v96 = v67;
    v97 = 2;
    sub_1B1D66328(v44, v43, v42, v41, v69);
    sub_1B1D7C48C();
    sub_1B1D0D630(v90, v91, v92, v93, v94);
    v90 = v60;
    v91 = v61;
    v92 = v62;
    v93 = v63;
    v94 = v66;
    v95 = v65;
    v96 = v64;
    v97 = 3;
    sub_1B1D66328(v60, v61, v62, v63, v66);
    sub_1B1D7C48C();
    sub_1B1D0D630(v90, v91, v92, v93, v94);
    v90 = v53;
    v91 = v54;
    v92 = v55;
    v93 = v59;
    v94 = v58;
    v95 = v57;
    v96 = v56;
    v97 = 4;
    sub_1B1D66328(v53, v54, v55, v59, v58);
    sub_1B1D7C48C();
    sub_1B1D0D630(v90, v91, v92, v93, v94);
    v90 = v46;
    v91 = v47;
    v92 = v48;
    v93 = v49;
    v94 = v50;
    v95 = v52;
    v96 = v51;
    v97 = 5;
    sub_1B1D66328(v46, v47, v48, v49, v50);
    sub_1B1D7C48C();
    sub_1B1D0D630(v90, v91, v92, v93, v94);
    return (*(v45 + 8))(v36, v38);
  }
}

uint64_t sub_1B1D3DFA0()
{
  v1 = v0[4];
  v41 = v0[7];
  v42 = v0[8];
  v24 = v0[9];
  v25 = v0[10];
  v2 = v0[11];
  v23 = v0[13];
  v43 = v0[14];
  v3 = v0[15];
  v27 = v0[16];
  v28 = v0[17];
  v37 = v0[18];
  v26 = v0[20];
  v4 = v0[22];
  v45 = v0[21];
  v31 = v0[23];
  v32 = v0[24];
  v5 = v0[25];
  v6 = v0[28];
  v30 = v0[27];
  v7 = v0[30];
  v38 = v0[29];
  v39 = v0[31];
  v40 = v0[32];
  v34 = v0[33];
  v33 = v0[34];
  v8 = v0[36];
  v49 = v0[37];
  v50 = v0[38];
  v53 = v0[39];
  v36 = v0[40];
  v35 = v0[41];
  v48 = v0[35];
  v51 = v6;
  v52 = v7;
  v46 = v4;
  v47 = v5;
  v29 = v0[19];
  v44 = v3;
  if (!v1)
  {
    sub_1B1D7C5EC();
    if (v2)
    {
      goto LABEL_14;
    }

LABEL_5:
    sub_1B1D7C5EC();
    v15 = v37;
    if (v37)
    {
      goto LABEL_19;
    }

LABEL_6:
    sub_1B1D7C5EC();
    v16 = v38;
    v17 = v39;
    if (v5)
    {
      goto LABEL_24;
    }

LABEL_7:
    sub_1B1D7C5EC();
    v18 = v40;
    if (v40)
    {
      goto LABEL_30;
    }

    goto LABEL_8;
  }

  v22 = v0[12];
  v10 = *v0;
  v9 = v0[1];
  v12 = v0[2];
  v11 = v0[3];
  v14 = v0[5];
  v13 = v0[6];
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v10, v9);

  if (v9 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v13)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v10, v9, v12, v11, v1);
  v6 = v51;
  v7 = v52;
  v4 = v46;
  v5 = v47;
  v3 = v44;
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_14:
  sub_1B1D7C5EC();
  v15 = v37;
  sub_1B1D7C5EC();
  sub_1B1C91B94(v41, v42);

  if (v42 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  v6 = v51;
  sub_1B1D7C5EC();
  if (v23)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v41, v42, v24, v25, v2);
  v7 = v52;
  v4 = v46;
  v5 = v47;
  if (!v37)
  {
    goto LABEL_6;
  }

LABEL_19:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v43, v3);

  if (v3 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v26)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v43, v44, v27, v28, v15);
  v16 = v38;
  v17 = v39;
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_24:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  if (v4 >> 60 == 15)
  {
    v20 = v4;
    sub_1B1C91B94(v45, v4);
    v21 = v30;
  }

  else
  {
    sub_1B1C91B94(v45, v4);
    v21 = v30;

    v20 = v4;
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v21)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v45, v20, v31, v32, v5);
  v6 = v51;
  v7 = v52;
  v18 = v40;
  if (v40)
  {
LABEL_30:
    sub_1B1D7C5EC();
    sub_1B1D7C5EC();
    sub_1B1C91B94(v6, v16);

    if (v16 >> 60 != 15)
    {
      sub_1B1D7B4FC();
    }

    sub_1B1D2E888();
    sub_1B1D7BE7C();
    if (v33)
    {
      sub_1B1D7C5EC();
      sub_1B1D7BE7C();
      sub_1B1D0D630(v6, v16, v7, v17, v18);
      if (v53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      sub_1B1D7C5EC();
      sub_1B1D0D630(v6, v16, v7, v17, v18);
      if (v53)
      {
        goto LABEL_34;
      }
    }

    return sub_1B1D7C5EC();
  }

LABEL_8:
  sub_1B1D7C5EC();
  if (!v53)
  {
    return sub_1B1D7C5EC();
  }

LABEL_34:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v48, v8);

  if (v8 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v35)
  {
    sub_1B1D7BE7C();
  }

  return sub_1B1D0D630(v48, v8, v49, v50, v53);
}

uint64_t sub_1B1D3E7AC(void (*a1)(_BYTE *))
{
  sub_1B1D7C5CC();
  a1(v3);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3E860@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, void (*a5)(_OWORD *, uint64_t *)@<X5>, uint64_t (*a6)(uint64_t *)@<X6>, void *a7@<X8>)
{
  v54 = a6;
  v45 = a5;
  v46 = a7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v47 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v13 = &v31 - v12;
  v14 = a1[3];
  v15 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  a4();
  *&v48 = v13;
  sub_1B1D7C62C();
  if (v7)
  {
    v52 = v7;
    v63 = 0;
    v64 = 0;
    v59 = 0;
    v60 = 0uLL;
    v57 = 0;
    v56 = 0uLL;
    v65 = 0;
    v66 = 0uLL;
    v61 = 0;
    v58 = 0;
    memset(v67, 0, sizeof(v67));
    v62 = 0;
    v69 = 0uLL;
    v68 = 0;
    v50 = 0;
    v51 = 0;
    v49 = 0;
    v55 = 0u;
    v48 = 0u;
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    v78 = v49;
    *v79 = v50;
    *&v79[8] = v51;
    *&v79[16] = 0;
    v80 = 0;
    v81 = 0uLL;
    v82 = 0;
    v83 = 0uLL;
    v84 = 0;
    v85 = v68;
    v86 = v69;
    v87 = v62;
    v88 = v64;
    v89 = v66;
    v90 = *v67;
    v91 = *&v67[8];
    v92 = v58;
    v93 = v60;
    v94 = v61;
    v95 = v65;
    v97 = v48;
    v96 = v55;
    v98 = v56;
    v99 = v57;
    v100 = v59;
    v103 = 0u;
    v104 = 0u;
    v102 = 0u;
    v101 = v63;
    v105 = 0;
  }

  else
  {
    LOBYTE(v70[0]) = 0;
    sub_1B1D6644C();
    sub_1B1D7C3FC();
    v17 = v78;
    v18 = *v79;
    v19 = *&v79[8];
    v42 = *&v79[16];
    v43 = v80;
    v44 = *(&v81 + 1);
    v41 = v81;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    LOBYTE(v70[0]) = 1;
    sub_1B1D7C3FC();
    v50 = v18;
    v51 = v19;
    v49 = v17;
    v38 = v78;
    v39 = *v79;
    v40 = *&v79[16];
    v68 = v80;
    v69 = v81;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    LOBYTE(v70[0]) = 2;
    sub_1B1D7C3FC();
    v62 = v78;
    v64 = *v79;
    v66 = *&v79[8];
    *v67 = v80;
    *&v67[8] = v81;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    LOBYTE(v70[0]) = 3;
    sub_1B1D7C3FC();
    v20 = v17;
    v58 = v78;
    v60 = *v79;
    v61 = *&v79[16];
    v65 = v80;
    v55 = v81;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    LOBYTE(v70[0]) = 4;
    sub_1B1D7C3FC();
    v37 = v78;
    v21 = *v79;
    v56 = *&v79[8];
    v57 = v80;
    v63 = *(&v81 + 1);
    v59 = v81;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    v106 = 5;
    sub_1B1D7C3FC();
    v52 = 0;
    (*(v10 + 8))(v48, v47);
    v22 = v71;
    v23 = v73;
    v47 = v73;
    *&v48 = v71;
    v33 = v74;
    v34 = v72;
    v24 = v75;
    v35 = v75;
    v32 = v76;
    v25 = v77;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    *&v70[0] = v20;
    *(&v70[0] + 1) = v18;
    *&v70[1] = v19;
    *(&v70[1] + 1) = v42;
    v26 = v21;
    v36 = v21;
    v27 = v41;
    *&v70[2] = v43;
    *(&v70[2] + 1) = v41;
    *&v70[3] = v44;
    *(&v70[3] + 1) = v38;
    v70[4] = v39;
    *&v70[5] = v40;
    *(&v70[5] + 1) = v68;
    v70[6] = v69;
    *&v70[7] = v62;
    *(&v70[7] + 1) = v64;
    v70[8] = v66;
    v70[9] = *v67;
    *&v70[10] = *&v67[16];
    *(&v70[10] + 1) = v58;
    v70[11] = v60;
    *&v70[12] = v61;
    *(&v70[12] + 1) = v65;
    v70[13] = v55;
    *&v70[14] = v37;
    *(&v70[14] + 1) = v26;
    v70[15] = v56;
    *&v70[16] = v57;
    *(&v70[16] + 1) = v59;
    *&v70[17] = v63;
    *(&v70[17] + 1) = v22;
    v28 = v34;
    *&v70[18] = v34;
    *(&v70[18] + 1) = v23;
    v29 = v33;
    *&v70[19] = v33;
    *(&v70[19] + 1) = v24;
    v30 = v32;
    *&v70[20] = v32;
    *(&v70[20] + 1) = v25;
    memcpy(v46, v70, 0x150uLL);
    v45(v70, &v78);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    v78 = v20;
    *v79 = v18;
    *&v79[8] = v19;
    *&v79[16] = v42;
    v80 = v43;
    *&v81 = v27;
    *(&v81 + 1) = v44;
    v82 = v38;
    v83 = v39;
    v84 = v40;
    v85 = v68;
    v86 = v69;
    v87 = v62;
    v88 = v64;
    v89 = v66;
    v90 = *v67;
    v91 = *&v67[8];
    v92 = v58;
    v93 = v60;
    v94 = v61;
    v95 = v65;
    v96 = v55;
    *&v97 = v37;
    *(&v97 + 1) = v36;
    v98 = v56;
    v99 = v57;
    v100 = v59;
    v101 = v63;
    *&v102 = v48;
    *(&v102 + 1) = v28;
    *&v103 = v47;
    *(&v103 + 1) = v29;
    *&v104 = v35;
    *(&v104 + 1) = v30;
    v105 = v25;
  }

  return v54(&v78);
}

uint64_t sub_1B1D3F218(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1B1D7C5CC();
  a3(v5);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3F278(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1B1D7C5CC();
  a4(v6);
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.BasicAuthentication.userName.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.BasicAuthentication.userName.setter(__n128 *a1)
{
  v8 = a1[2];
  v3 = a1[3].n128_u64[0];
  v4 = v1[2].n128_u64[1];
  v5 = v1[3].n128_u64[0];
  sub_1B1D0D630(v1->n128_u64[0], v1->n128_u64[1], v1[1].n128_i64[0], v1[1].n128_i64[1], v1[2].n128_i64[0]);
  v6 = a1[1];
  *v1 = *a1;
  v1[1] = v6;
  result = v8;
  v1[2] = v8;
  v1[3].n128_u64[0] = v3;
  return result;
}

uint64_t ASImportableCredential.BasicAuthentication.password.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.BasicAuthentication.password.setter(__int128 *a1)
{
  v8 = a1[2];
  v3 = *(a1 + 6);
  v4 = v1[12];
  v5 = v1[13];
  sub_1B1D0D630(v1[7], v1[8], v1[9], v1[10], v1[11]);
  v6 = *a1;
  *(v1 + 9) = a1[1];
  *(v1 + 7) = v6;
  result = v8;
  *(v1 + 11) = v8;
  v1[13] = v3;
  return result;
}

uint64_t sub_1B1D3F410(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x64726F7773736170;
  }

  else
  {
    v2 = 0x656D616E72657375;
  }

  if (*a2)
  {
    v3 = 0x64726F7773736170;
  }

  else
  {
    v3 = 0x656D616E72657375;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B1D7C50C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1B1D3F498()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3F510()
{
  *v0;
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D3F56C()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D3F5EC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B1D7C3AC();

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

void sub_1B1D3F648(uint64_t *a1@<X8>)
{
  v2 = 0x656D616E72657375;
  if (*v1)
  {
    v2 = 0x64726F7773736170;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

uint64_t sub_1B1D3F680()
{
  if (*v0)
  {
    return 0x64726F7773736170;
  }

  else
  {
    return 0x656D616E72657375;
  }
}

uint64_t sub_1B1D3F6C0@<X0>(char *a1@<X8>)
{
  v2 = sub_1B1D7C3AC();

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

uint64_t sub_1B1D3F720(uint64_t a1)
{
  v2 = sub_1B1D66594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D3F75C(uint64_t a1)
{
  v2 = sub_1B1D66594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.BasicAuthentication.encode(to:)(void *a1)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7759F0, &qword_1B1D88E70);
  v35 = *(v33 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v22 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v10 = v1[4];
  v9 = v1[5];
  v29 = v1[3];
  v30 = v9;
  v12 = v1[6];
  v11 = v1[7];
  v13 = v1[9];
  v27 = v1[8];
  v28 = v11;
  v14 = v1[11];
  v25 = v1[10];
  v26 = v13;
  v15 = v1[13];
  v23 = v1[12];
  v24 = v14;
  v22 = v15;
  v16 = a1[4];
  v31 = a1[3];
  v32 = v16;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  v17 = v29;
  v18 = v12;
  sub_1B1D66328(v6, v7, v8, v29, v10);
  sub_1B1D66594();
  v19 = v33;
  sub_1B1D7C63C();
  v36 = v6;
  v37 = v7;
  v38 = v8;
  v39 = v17;
  v40 = v10;
  v41 = v30;
  v42 = v18;
  v43 = 0;
  sub_1B1D663C8();
  v20 = v34;
  sub_1B1D7C48C();
  sub_1B1D0D630(v36, v37, v38, v39, v40);
  if (!v20)
  {
    v36 = v28;
    v37 = v27;
    v38 = v26;
    v39 = v25;
    v40 = v24;
    v41 = v23;
    v42 = v22;
    v43 = 1;
    sub_1B1D66328(v28, v27, v26, v25, v24);
    sub_1B1D7C48C();
    sub_1B1D0D630(v36, v37, v38, v39, v40);
  }

  return (*(v35 + 8))(v5, v19);
}

uint64_t ASImportableCredential.BasicAuthentication.hash(into:)()
{
  v1 = v0[4];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[11];
  v7 = v0[13];
  if (v1)
  {
    v15 = v0[13];
    v16 = v0[7];
    v17 = v0[8];
    v18 = v0[9];
    v19 = v0[10];
    v20 = v0[12];
    v8 = *v0;
    v9 = v0[1];
    v10 = v0[2];
    v11 = v0[3];
    v13 = v0[5];
    v12 = v0[6];
    sub_1B1D7C5EC();
    sub_1B1D7C5EC();
    sub_1B1C91B94(v8, v9);

    if (v9 >> 60 != 15)
    {
      sub_1B1D7B4FC();
    }

    sub_1B1D2E888();
    sub_1B1D7BE7C();
    sub_1B1D7C5EC();
    if (v12)
    {
      sub_1B1D7BE7C();
    }

    sub_1B1D0D630(v8, v9, v10, v11, v1);
    v4 = v19;
    v2 = v17;
    v5 = v18;
    v7 = v15;
    v3 = v16;
    if (v6)
    {
      goto LABEL_10;
    }

    return sub_1B1D7C5EC();
  }

  sub_1B1D7C5EC();
  if (!v6)
  {
    return sub_1B1D7C5EC();
  }

LABEL_10:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v3, v2);

  if (v2 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v7)
  {
    sub_1B1D7BE7C();
  }

  return sub_1B1D0D630(v3, v2, v5, v4, v6);
}

uint64_t ASImportableCredential.BasicAuthentication.hashValue.getter()
{
  sub_1B1D7C5CC();
  ASImportableCredential.BasicAuthentication.hash(into:)();
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.BasicAuthentication.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A00, &qword_1B1D88E78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66594();
  sub_1B1D7C62C();
  if (v2)
  {
    v39 = 0;
    v66 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v55 = 0;
    v56 = 0;
    v57 = v66;
    v58 = v39;
    v59 = 0;
    v60 = 0;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0;
    v65 = 0;
  }

  else
  {
    v37 = v5;
    v10 = v38;
    LOBYTE(v40) = 0;
    sub_1B1D6644C();
    sub_1B1D7C3FC();
    v13 = v55;
    v12 = v56;
    v66 = v57;
    v39 = v58;
    v35 = v60;
    v36 = v59;
    v34 = v61;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    v47 = 1;
    sub_1B1D7C3FC();
    (*(v37 + 8))(v8, v4);
    v14 = v48;
    v15 = v49;
    v37 = v48;
    v16 = v50;
    v30 = v50;
    v31 = v49;
    v28 = v52;
    v29 = v51;
    v26 = v54;
    v27 = v53;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    v32 = v13;
    v33 = v12;
    *&v40 = v13;
    *(&v40 + 1) = v12;
    v17 = v39;
    *&v41 = v66;
    *(&v41 + 1) = v39;
    *&v42 = v36;
    *(&v42 + 1) = v35;
    *&v43 = v34;
    *(&v43 + 1) = v14;
    *&v44 = v15;
    *(&v44 + 1) = v16;
    v18 = v28;
    v19 = v29;
    *&v45 = v29;
    *(&v45 + 1) = v28;
    v21 = v26;
    v20 = v27;
    *&v46 = v27;
    *(&v46 + 1) = v26;
    v22 = v45;
    v10[4] = v44;
    v10[5] = v22;
    v10[6] = v46;
    v23 = v41;
    *v10 = v40;
    v10[1] = v23;
    v24 = v43;
    v10[2] = v42;
    v10[3] = v24;
    sub_1B1D66618(&v40, &v55);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v55 = v32;
    v56 = v33;
    v57 = v66;
    v58 = v17;
    v59 = v36;
    v60 = v35;
    v61 = v34;
    *&v62 = v37;
    *(&v62 + 1) = v31;
    *&v63 = v30;
    *(&v63 + 1) = v19;
    *&v64 = v18;
    *(&v64 + 1) = v20;
    v65 = v21;
  }

  return sub_1B1D665E8(&v55);
}

uint64_t sub_1B1D400B0()
{
  sub_1B1D7C5CC();
  ASImportableCredential.BasicAuthentication.hash(into:)();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D400F4()
{
  sub_1B1D7C5CC();
  ASImportableCredential.BasicAuthentication.hash(into:)();
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.CreditCard.number.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.CreditCard.number.setter(__n128 *a1)
{
  v8 = a1[2];
  v3 = a1[3].n128_u64[0];
  v4 = v1[2].n128_u64[1];
  v5 = v1[3].n128_u64[0];
  sub_1B1D0D630(v1->n128_u64[0], v1->n128_u64[1], v1[1].n128_i64[0], v1[1].n128_i64[1], v1[2].n128_i64[0]);
  v6 = a1[1];
  *v1 = *a1;
  v1[1] = v6;
  result = v8;
  v1[2] = v8;
  v1[3].n128_u64[0] = v3;
  return result;
}

uint64_t ASImportableCredential.CreditCard.fullName.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.CreditCard.fullName.setter(__int128 *a1)
{
  v8 = a1[2];
  v3 = *(a1 + 6);
  v4 = v1[12];
  v5 = v1[13];
  sub_1B1D0D630(v1[7], v1[8], v1[9], v1[10], v1[11]);
  v6 = *a1;
  *(v1 + 9) = a1[1];
  *(v1 + 7) = v6;
  result = v8;
  *(v1 + 11) = v8;
  v1[13] = v3;
  return result;
}

uint64_t ASImportableCredential.CreditCard.cardType.getter@<X0>(uint64_t *a1@<X8>)
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
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.CreditCard.cardType.setter(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[19];
  v5 = v1[20];
  sub_1B1D0D630(v1[14], v1[15], v1[16], v1[17], v1[18]);
  v6 = *(a1 + 16);
  *(v1 + 7) = *a1;
  *(v1 + 8) = v6;
  result = v8;
  *(v1 + 9) = v8;
  v1[20] = v3;
  return result;
}

uint64_t ASImportableCredential.CreditCard.verificationNumber.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[21];
  v3 = v1[22];
  v4 = v1[23];
  v5 = v1[24];
  v6 = v1[25];
  v7 = v1[26];
  v8 = v1[27];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.CreditCard.verificationNumber.setter(__int128 *a1)
{
  v8 = a1[2];
  v3 = *(a1 + 6);
  v4 = v1[26];
  v5 = v1[27];
  sub_1B1D0D630(v1[21], v1[22], v1[23], v1[24], v1[25]);
  v6 = *a1;
  *(v1 + 23) = a1[1];
  *(v1 + 21) = v6;
  result = v8;
  *(v1 + 25) = v8;
  v1[27] = v3;
  return result;
}

uint64_t ASImportableCredential.CreditCard.pin.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[28];
  v3 = v1[29];
  v4 = v1[30];
  v5 = v1[31];
  v6 = v1[32];
  v7 = v1[33];
  v8 = v1[34];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.CreditCard.pin.setter(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[33];
  v5 = v1[34];
  sub_1B1D0D630(v1[28], v1[29], v1[30], v1[31], v1[32]);
  v6 = *(a1 + 16);
  *(v1 + 14) = *a1;
  *(v1 + 15) = v6;
  result = v8;
  *(v1 + 16) = v8;
  v1[34] = v3;
  return result;
}

uint64_t ASImportableCredential.CreditCard.expiryDate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[35];
  v3 = v1[36];
  v4 = v1[37];
  v5 = v1[38];
  v6 = v1[39];
  v7 = v1[40];
  v8 = v1[41];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.CreditCard.expiryDate.setter(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[40];
  v5 = v1[41];
  sub_1B1D0D630(v1[35], v1[36], v1[37], v1[38], v1[39]);
  v6 = *(a1 + 16);
  *(v1 + 35) = *a1;
  *(v1 + 37) = v6;
  result = v8;
  *(v1 + 39) = v8;
  v1[41] = v3;
  return result;
}

uint64_t ASImportableCredential.CreditCard.validFrom.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[42];
  v3 = v1[43];
  v4 = v1[44];
  v5 = v1[45];
  v6 = v1[46];
  v7 = v1[47];
  v8 = v1[48];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.CreditCard.validFrom.setter(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[47];
  v5 = v1[48];
  sub_1B1D0D630(v1[42], v1[43], v1[44], v1[45], v1[46]);
  v6 = *(a1 + 16);
  *(v1 + 21) = *a1;
  *(v1 + 22) = v6;
  result = v8;
  *(v1 + 23) = v8;
  v1[48] = v3;
  return result;
}

__n128 ASImportableCredential.CreditCard.init(number:fullName:cardType:verificationNumber:pin:expiryDate:validFrom:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v38 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = *a2;
  v39 = a2[6];
  v40 = a2[5];
  v41 = *a3;
  v42 = a3[6];
  v43 = a3[5];
  v44 = *a4;
  v45 = a4[6];
  v46 = a4[5];
  v47 = *a5;
  v48 = a5[6];
  v49 = a5[5];
  v50 = *a6;
  v51 = a6[6];
  v52 = a6[5];
  v56 = a7[5];
  v54 = *a7;
  v55 = a7[6];
  v53 = a8 + 344;
  *(a8 + 384) = 0;
  *(a8 + 352) = 0u;
  *(a8 + 368) = 0u;
  *(a8 + 320) = 0u;
  *(a8 + 336) = 0u;
  *(a8 + 288) = 0u;
  *(a8 + 304) = 0u;
  *(a8 + 256) = 0u;
  *(a8 + 272) = 0u;
  *(a8 + 224) = 0u;
  *(a8 + 240) = 0u;
  *(a8 + 192) = 0u;
  *(a8 + 208) = 0u;
  *(a8 + 160) = 0u;
  *(a8 + 176) = 0u;
  *(a8 + 128) = 0u;
  *(a8 + 144) = 0u;
  *(a8 + 96) = 0u;
  *(a8 + 112) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *a8 = 0u;
  *(a8 + 16) = 0u;
  sub_1B1D0D630(0, 0, 0, 0, 0);
  v18 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v18;
  *(a8 + 32) = v38;
  *(a8 + 48) = v16;
  v19 = *(a8 + 96);
  v20 = *(a8 + 104);
  sub_1B1D0D630(*(a8 + 56), *(a8 + 64), *(a8 + 72), *(a8 + 80), *(a8 + 88));
  *(a8 + 56) = v17;
  v21 = *(a2 + 3);
  *(a8 + 64) = *(a2 + 1);
  *(a8 + 80) = v21;
  *(a8 + 96) = v40;
  *(a8 + 104) = v39;
  v22 = *(a8 + 152);
  v23 = *(a8 + 160);
  sub_1B1D0D630(*(a8 + 112), *(a8 + 120), *(a8 + 128), *(a8 + 136), *(a8 + 144));
  *(a8 + 112) = v41;
  v24 = *(a3 + 1);
  *(a8 + 136) = *(a3 + 3);
  *(a8 + 120) = v24;
  *(a8 + 152) = v43;
  *(a8 + 160) = v42;
  v25 = *(a8 + 208);
  v26 = *(a8 + 216);
  sub_1B1D0D630(*(a8 + 168), *(a8 + 176), *(a8 + 184), *(a8 + 192), *(a8 + 200));
  *(a8 + 168) = v44;
  v27 = *(a4 + 3);
  *(a8 + 176) = *(a4 + 1);
  *(a8 + 192) = v27;
  *(a8 + 208) = v46;
  *(a8 + 216) = v45;
  v28 = *(a8 + 264);
  v29 = *(a8 + 272);
  sub_1B1D0D630(*(a8 + 224), *(a8 + 232), *(a8 + 240), *(a8 + 248), *(a8 + 256));
  *(a8 + 224) = v47;
  v30 = *(a5 + 1);
  *(a8 + 248) = *(a5 + 3);
  *(a8 + 232) = v30;
  *(a8 + 264) = v49;
  *(a8 + 272) = v48;
  v31 = *(a8 + 320);
  v32 = *(a8 + 328);
  sub_1B1D0D630(*(a8 + 280), *(a8 + 288), *(a8 + 296), *(a8 + 304), *(a8 + 312));
  *(a8 + 280) = v50;
  v33 = *(a6 + 3);
  *(a8 + 288) = *(a6 + 1);
  *(a8 + 304) = v33;
  *(a8 + 320) = v52;
  *(a8 + 328) = v51;
  v34 = *(a8 + 376);
  v35 = *(a8 + 384);
  sub_1B1D0D630(*(a8 + 336), *(a8 + 344), *(a8 + 352), *(a8 + 360), *(a8 + 368));
  *(a8 + 336) = v54;
  result = *(a7 + 1);
  v37 = *(a7 + 3);
  *v53 = result;
  *(v53 + 16) = v37;
  *(a8 + 376) = v56;
  *(a8 + 384) = v55;
  return result;
}

uint64_t sub_1B1D40844()
{
  v1 = *v0;
  v2 = 0x7265626D756ELL;
  v3 = 0x6144797269707865;
  if (v1 != 5)
  {
    v3 = 0x6F724664696C6176;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 7235952;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656D614E6C6C7566;
  if (v1 != 1)
  {
    v5 = 0x6570795464726163;
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

uint64_t sub_1B1D40920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1D6C064(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1D40948(uint64_t a1)
{
  v2 = sub_1B1D66650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D40984(uint64_t a1)
{
  v2 = sub_1B1D66650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.CreditCard.encode(to:)(void *a1)
{
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A08, &qword_1B1D88E80);
  v93 = *(v91 - 8);
  v3 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v44 - v4;
  v5 = v1[1];
  v89 = *v1;
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[4];
  v8 = v1[5];
  v10 = v1[6];
  v86 = v1[7];
  v87 = v10;
  v11 = v1[8];
  v84 = v1[9];
  v85 = v11;
  v12 = v1[10];
  v82 = v1[11];
  v83 = v12;
  v13 = v1[12];
  v80 = v1[13];
  v81 = v13;
  v14 = v1[15];
  v79 = v1[14];
  v78 = v14;
  v15 = v1[17];
  v77 = v1[16];
  v76 = v15;
  v16 = v1[19];
  v75 = v1[18];
  v74 = v16;
  v17 = v1[21];
  v73 = v1[20];
  v66 = v17;
  v18 = v1[23];
  v67 = v1[22];
  v68 = v18;
  v19 = v1[25];
  v69 = v1[24];
  v72 = v19;
  v20 = v1[27];
  v71 = v1[26];
  v70 = v20;
  v21 = v1[29];
  v59 = v1[28];
  v60 = v21;
  v22 = v1[31];
  v61 = v1[30];
  v65 = v22;
  v23 = v1[33];
  v64 = v1[32];
  v63 = v23;
  v24 = v1[35];
  v62 = v1[34];
  v52 = v24;
  v25 = v1[37];
  v53 = v1[36];
  v54 = v25;
  v26 = v1[39];
  v58 = v1[38];
  v57 = v26;
  v27 = v1[41];
  v56 = v1[40];
  v55 = v27;
  v28 = v1[43];
  v45 = v1[42];
  v46 = v28;
  v29 = v1[45];
  v47 = v1[44];
  v48 = v29;
  v30 = v1[47];
  v49 = v1[46];
  v51 = v30;
  v50 = v1[48];
  v31 = a1[3];
  v88 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  v32 = v89;
  sub_1B1D66328(v89, v5, v6, v7, v9);
  sub_1B1D66650();
  v33 = v90;
  v34 = v91;
  sub_1B1D7C63C();
  v94 = v32;
  v95 = v5;
  v96 = v6;
  v97 = v7;
  v35 = v33;
  v98 = v9;
  v99 = v8;
  v100 = v87;
  v101 = 0;
  v36 = sub_1B1D663C8();
  v37 = v92;
  sub_1B1D7C48C();
  if (v37)
  {
    sub_1B1D0D630(v94, v95, v96, v97, v98);
    return (*(v93 + 8))(v33, v34);
  }

  else
  {
    v39 = v76;
    v40 = v77;
    v41 = v78;
    v42 = v79;
    v43 = v93;
    sub_1B1D0D630(v94, v95, v96, v97, v98);
    v94 = v86;
    v95 = v85;
    v96 = v84;
    v97 = v83;
    v98 = v82;
    v99 = v81;
    v100 = v80;
    v101 = 1;
    sub_1B1D66328(v86, v85, v84, v83, v82);
    v92 = v36;
    sub_1B1D7C48C();
    sub_1B1D0D630(v94, v95, v96, v97, v98);
    v94 = v42;
    v95 = v41;
    v96 = v40;
    v97 = v39;
    v98 = v75;
    v99 = v74;
    v100 = v73;
    v101 = 2;
    sub_1B1D66328(v42, v41, v40, v39, v75);
    sub_1B1D7C48C();
    sub_1B1D0D630(v94, v95, v96, v97, v98);
    v94 = v66;
    v95 = v67;
    v96 = v68;
    v97 = v69;
    v98 = v72;
    v99 = v71;
    v100 = v70;
    v101 = 3;
    sub_1B1D66328(v66, v67, v68, v69, v72);
    sub_1B1D7C48C();
    sub_1B1D0D630(v94, v95, v96, v97, v98);
    v94 = v59;
    v95 = v60;
    v96 = v61;
    v97 = v65;
    v98 = v64;
    v99 = v63;
    v100 = v62;
    v101 = 4;
    sub_1B1D66328(v59, v60, v61, v65, v64);
    sub_1B1D7C48C();
    sub_1B1D0D630(v94, v95, v96, v97, v98);
    v94 = v52;
    v95 = v53;
    v96 = v54;
    v97 = v58;
    v98 = v57;
    v99 = v56;
    v100 = v55;
    v101 = 5;
    sub_1B1D66328(v52, v53, v54, v58, v57);
    sub_1B1D7C48C();
    sub_1B1D0D630(v94, v95, v96, v97, v98);
    v94 = v45;
    v95 = v46;
    v96 = v47;
    v97 = v48;
    v98 = v49;
    v99 = v51;
    v100 = v50;
    v101 = 6;
    sub_1B1D66328(v45, v46, v47, v48, v49);
    sub_1B1D7C48C();
    sub_1B1D0D630(v94, v95, v96, v97, v98);
    return (*(v43 + 8))(v35, v34);
  }
}

uint64_t ASImportableCredential.CreditCard.hash(into:)()
{
  v1 = v0[4];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[11];
  v36 = v0[12];
  v7 = v0[13];
  v56 = v0[14];
  v39 = v0[16];
  v40 = v0[17];
  v65 = v0[18];
  v37 = v0[20];
  v57 = v0[22];
  v66 = v0[25];
  v64 = v0[27];
  v8 = v0[29];
  v9 = v0[31];
  v69 = v0[32];
  v46 = v0[33];
  v44 = v0[34];
  v60 = v0[35];
  v67 = v0[36];
  v55 = v0[39];
  v49 = v0[38];
  v50 = v0[40];
  v47 = v0[41];
  v62 = v0[44];
  v63 = v0[45];
  v70 = v0[46];
  v52 = v0[47];
  v68 = v0[48];
  v51 = v0[43];
  v61 = v0[42];
  v48 = v0[37];
  v45 = v0[30];
  v58 = v0[28];
  v59 = v8;
  v42 = v0[23];
  v43 = v0[26];
  v53 = v0[21];
  v54 = v0[24];
  v41 = v0[19];
  v38 = v0[15];
  if (!v1)
  {
    sub_1B1D7C5EC();
    if (v6)
    {
      goto LABEL_15;
    }

LABEL_5:
    sub_1B1D7C5EC();
    v16 = v69;
    if (v65)
    {
      goto LABEL_21;
    }

LABEL_6:
    sub_1B1D7C5EC();
    v17 = v67;
    v18 = v64;
    v20 = v53;
    v19 = v54;
    if (v66)
    {
      goto LABEL_27;
    }

LABEL_7:
    sub_1B1D7C5EC();
    if (v16)
    {
      goto LABEL_32;
    }

LABEL_8:
    sub_1B1D7C5EC();
    v21 = v55;
    if (v55)
    {
      goto LABEL_37;
    }

    goto LABEL_9;
  }

  v31 = v0[13];
  v32 = v0[7];
  v33 = v0[9];
  v34 = v0[10];
  v35 = v0[31];
  v11 = *v0;
  v10 = v0[1];
  v12 = v0[2];
  v13 = v0[3];
  v14 = v0[5];
  v15 = v0[6];
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v11, v10);

  if (v10 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v15)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v11, v10, v12, v13, v1);
  v4 = v34;
  v9 = v35;
  v8 = v59;
  v2 = v32;
  v5 = v33;
  v7 = v31;
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_15:
  sub_1B1D7C5EC();
  v16 = v69;
  sub_1B1D7C5EC();
  sub_1B1C91B94(v2, v3);

  if (v3 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v7)
  {
    sub_1B1D7BE7C();
    v23 = v2;
    v24 = v3;
    v25 = v5;
    v26 = v4;
    v27 = v6;
    v16 = v69;
  }

  else
  {
    v23 = v2;
    v24 = v3;
    v25 = v5;
    v26 = v4;
    v27 = v6;
  }

  sub_1B1D0D630(v23, v24, v25, v26, v27);
  if (!v65)
  {
    goto LABEL_6;
  }

LABEL_21:
  sub_1B1D7C5EC();
  v17 = v67;
  v18 = v64;
  sub_1B1D7C5EC();
  if (v38 >> 60 == 15)
  {
    v28 = v38;
    sub_1B1C91B94(v56, v38);
    v29 = v37;

    v30 = v65;
  }

  else
  {
    sub_1B1C91B94(v56, v38);
    v29 = v37;

    v30 = v65;

    v28 = v38;
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v29)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v56, v28, v39, v40, v30);
  v16 = v69;
  v8 = v59;
  v20 = v53;
  v19 = v54;
  if (!v66)
  {
    goto LABEL_7;
  }

LABEL_27:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v20, v57);

  if (v57 >> 60 != 15)
  {
    v18 = v64;
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v18)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v20, v57, v42, v19, v66);
  v17 = v67;
  if (!v16)
  {
    goto LABEL_8;
  }

LABEL_32:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v58, v8);

  if (v8 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v44)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v58, v8, v45, v9, v16);
  v21 = v55;
  if (v55)
  {
LABEL_37:
    sub_1B1D7C5EC();
    sub_1B1D7C5EC();
    sub_1B1C91B94(v60, v17);

    if (v17 >> 60 != 15)
    {
      sub_1B1D7B4FC();
    }

    sub_1B1D2E888();
    sub_1B1D7BE7C();
    if (v47)
    {
      sub_1B1D7C5EC();
      sub_1B1D7BE7C();
      sub_1B1D0D630(v60, v17, v48, v49, v21);
      if (v70)
      {
        goto LABEL_41;
      }
    }

    else
    {
      sub_1B1D7C5EC();
      sub_1B1D0D630(v60, v17, v48, v49, v21);
      if (v70)
      {
        goto LABEL_41;
      }
    }

    return sub_1B1D7C5EC();
  }

LABEL_9:
  sub_1B1D7C5EC();
  if (!v70)
  {
    return sub_1B1D7C5EC();
  }

LABEL_41:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v61, v51);

  if (v51 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v68)
  {
    sub_1B1D7BE7C();
  }

  return sub_1B1D0D630(v61, v51, v62, v63, v70);
}

uint64_t ASImportableCredential.CreditCard.hashValue.getter()
{
  sub_1B1D7C5CC();
  ASImportableCredential.CreditCard.hash(into:)();
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.CreditCard.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A18, &qword_1B1D88E88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1B1D66650();
  sub_1B1D7C62C();
  if (v2)
  {
    v41 = v2;
    v54 = 0;
    v55 = 0;
    v51 = 0;
    v52 = 0;
    v46 = 0;
    v47 = 0;
    v44 = 0;
    v45 = 0;
    v43 = 0;
    v56 = 0;
    v57 = 0;
    v49 = 0;
    v50 = 0;
    v62 = 0;
    v63 = 0;
    v59 = 0;
    v60 = 0;
    v53 = 0;
    v48 = 0;
    v65 = 0uLL;
    v64 = 0;
    v61 = 0;
    v58 = 0;
    v40 = 0;
    v38 = 0;
    v117 = 0;
    v66 = 0;
    v67 = 0;
    v37 = 0;
    v42 = 0u;
    v36 = 0u;
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    *&v77 = 0;
    *(&v77 + 1) = v37;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0uLL;
    v82 = 0uLL;
    v83 = v66;
    v84 = v67;
    v85 = v117;
    v86 = v38;
    v87 = v40;
    v88 = v58;
    v89 = v60;
    v90 = v61;
    v91 = v63;
    v92 = v64;
    v93 = v65;
    v94 = v48;
    v95 = v50;
    v96 = v53;
    v97 = v55;
    v98 = v56;
    v99 = v59;
    v100 = v62;
    v101 = v44;
    v102 = v46;
    v103 = v49;
    v104 = v52;
    v106 = v42;
    v107 = v36;
    v105 = v57;
    v108 = v43;
    v109 = v45;
    v110 = v47;
    v111 = v51;
    v112 = v54;
    v116 = 0;
    v114 = 0u;
    v115 = 0u;
    v113 = 0u;
  }

  else
  {
    LOBYTE(v68[0]) = 0;
    sub_1B1D6644C();
    sub_1B1D7C3FC();
    v13 = *(&v77 + 1);
    v31 = v77;
    v32 = v78;
    v33 = v79;
    v34 = v80;
    v35 = v81;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    LOBYTE(v68[0]) = 1;
    sub_1B1D7C3FC();
    v37 = v13;
    *&v36 = a2;
    v30 = v77;
    v66 = v78;
    v67 = v79;
    v117 = v80;
    v40 = *(&v81 + 1);
    v14 = v81;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    LOBYTE(v68[0]) = 2;
    sub_1B1D7C3FC();
    v38 = v14;
    v60 = *(&v77 + 1);
    v58 = v77;
    v61 = v78;
    v63 = v79;
    v64 = v80;
    v65 = v81;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    LOBYTE(v68[0]) = 3;
    sub_1B1D7C3FC();
    v50 = *(&v77 + 1);
    v48 = v77;
    v53 = v78;
    v55 = v79;
    v56 = v80;
    v62 = *(&v81 + 1);
    v59 = v81;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    LOBYTE(v68[0]) = 4;
    sub_1B1D7C3FC();
    v46 = *(&v77 + 1);
    v44 = v77;
    v49 = v78;
    v52 = v79;
    v57 = v80;
    v42 = v81;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    LOBYTE(v68[0]) = 5;
    sub_1B1D7C3FC();
    v29 = v77;
    v43 = v78;
    v45 = v79;
    v47 = v80;
    v54 = *(&v81 + 1);
    v51 = v81;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    v69 = 6;
    sub_1B1D7C3FC();
    v41 = 0;
    (*(v6 + 8))(v9, v5);
    v27 = v71;
    v28 = v70;
    v25 = v73;
    v26 = v72;
    v23 = v75;
    v24 = v74;
    v22 = v76;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    *&v68[33] = v42;
    v15 = v31;
    v16 = v32;
    v68[0] = v31;
    v68[1] = v13;
    v18 = v33;
    v17 = v34;
    v68[2] = v32;
    v68[3] = v33;
    v19 = v35;
    v68[4] = v34;
    *&v68[5] = v35;
    *&v68[7] = v30;
    v68[9] = v66;
    v68[10] = v67;
    v68[11] = v117;
    v68[12] = v14;
    v20 = v40;
    v68[13] = v40;
    v68[14] = v58;
    v68[15] = v60;
    v68[16] = v61;
    v68[17] = v63;
    v68[18] = v64;
    *&v68[19] = v65;
    v68[21] = v48;
    v68[22] = v50;
    v68[23] = v53;
    v68[24] = v55;
    v68[25] = v56;
    v68[26] = v59;
    v68[27] = v62;
    v68[28] = v44;
    v68[29] = v46;
    v68[30] = v49;
    v68[31] = v52;
    v68[32] = v57;
    *&v68[35] = v29;
    v68[37] = v43;
    v68[38] = v45;
    v68[39] = v47;
    v68[40] = v51;
    v68[41] = v54;
    v68[42] = v28;
    v68[43] = v27;
    v68[44] = v26;
    v68[45] = v25;
    v68[46] = v24;
    v68[47] = v23;
    v68[48] = v22;
    memcpy(v36, v68, 0x188uLL);
    sub_1B1D666D4(v68, &v77);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    *&v77 = v15;
    *(&v77 + 1) = v13;
    v78 = v16;
    v79 = v18;
    v80 = v17;
    v81 = v19;
    v82 = v30;
    v83 = v66;
    v84 = v67;
    v85 = v117;
    v86 = v38;
    v87 = v20;
    v88 = v58;
    v89 = v60;
    v90 = v61;
    v91 = v63;
    v92 = v64;
    v93 = v65;
    v94 = v48;
    v95 = v50;
    v96 = v53;
    v97 = v55;
    v98 = v56;
    v99 = v59;
    v100 = v62;
    v101 = v44;
    v102 = v46;
    v103 = v49;
    v104 = v52;
    v106 = v42;
    v105 = v57;
    v107 = v29;
    v108 = v43;
    v109 = v45;
    v110 = v47;
    v111 = v51;
    v112 = v54;
    *&v113 = v28;
    *(&v113 + 1) = v27;
    *&v114 = v26;
    *(&v114 + 1) = v25;
    *&v115 = v24;
    *(&v115 + 1) = v23;
    v116 = v22;
  }

  return sub_1B1D666A4(&v77);
}

uint64_t sub_1B1D425C0()
{
  sub_1B1D7C5CC();
  ASImportableCredential.CreditCard.hash(into:)();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D42604()
{
  sub_1B1D7C5CC();
  ASImportableCredential.CreditCard.hash(into:)();
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.CustomFields.id.getter()
{
  v1 = *v0;
  sub_1B1C91B94(*v0, *(v0 + 8));
  return v1;
}

uint64_t ASImportableCredential.CustomFields.id.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1C91AE4(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ASImportableCredential.CustomFields.label.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ASImportableCredential.CustomFields.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ASImportableCredential.CustomFields.fields.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1B1D427AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6C6562616CLL;
  if (v2 != 1)
  {
    v4 = 0x73646C656966;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6C6562616CLL;
  if (*a2 != 1)
  {
    v8 = 0x73646C656966;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B1D7C50C();
  }

  return v11 & 1;
}

uint64_t sub_1B1D42898()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D42928()
{
  *v0;
  *v0;
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D429A4()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D42A30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B1D6C2C0();
  *a2 = result;
  return result;
}

void sub_1B1D42A60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6C6562616CLL;
  if (v2 != 1)
  {
    v5 = 0x73646C656966;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B1D42AAC()
{
  v1 = 0x6C6562616CLL;
  if (*v0 != 1)
  {
    v1 = 0x73646C656966;
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

uint64_t sub_1B1D42AF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1D6C2C0();
  *a1 = result;
  return result;
}

uint64_t sub_1B1D42B1C(uint64_t a1)
{
  v2 = sub_1B1D6670C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D42B58(uint64_t a1)
{
  v2 = sub_1B1D6670C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.CustomFields.init(id:label:fields:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = sub_1B1C91AE4(0, 0xF000000000000000);
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t ASImportableCredential.CustomFields.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A20, &qword_1B1D88E90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D6670C();
  sub_1B1D7C62C();
  if (!v2)
  {
    v30 = 0;
    sub_1B1D7C3DC();
    if (v11)
    {
      v12 = sub_1B1D7B4AC();
      if (v13 >> 60 == 15)
      {
        v14 = sub_1B1D7C2BC();
        swift_allocError();
        v16 = v15;
        v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0) + 48);
        *v16 = MEMORY[0x1E6969080];
        sub_1B1D7C3CC();
        sub_1B1D7C2AC();
        (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
        swift_willThrow();
        (*(v6 + 8))(v9, v5);
        return __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      v18 = v12;
      v19 = v13;
    }

    else
    {
      v18 = 0;
      v19 = 0xF000000000000000;
    }

    v29 = 1;
    v25 = sub_1B1D7C3DC();
    v26 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A30, &qword_1B1D88E98);
    v28 = 2;
    sub_1B1D66760();
    sub_1B1D7C43C();
    (*(v6 + 8))(v9, v5);
    v22 = v27;
    sub_1B1C91AE4(0, 0xF000000000000000);
    *a2 = v18;
    a2[1] = v19;
    v23 = v26;
    a2[2] = v25;
    a2[3] = v23;
    a2[4] = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ASImportableCredential.CustomFields.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A40, &qword_1B1D88EA0);
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v9 = v1[1];
  v8 = v1[2];
  v10 = v1[4];
  v16 = v1[3];
  v17 = v8;
  v15 = v10;
  if (v9 >> 60 != 15)
  {
    v11 = *v1;
    sub_1B1CE111C(v11, v9);
    sub_1B1D7B4BC();
    sub_1B1C91AE4(v11, v9);
  }

  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D6670C();
  sub_1B1D7C63C();
  v22 = 0;
  sub_1B1D7C47C();
  if (v2)
  {
    (*(v18 + 8))(v7, v4);
  }

  else
  {

    v21 = 1;
    sub_1B1D7C47C();
    v19 = v15;
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A30, &qword_1B1D88E98);
    sub_1B1D667E4();
    sub_1B1D7C4CC();
    return (*(v18 + 8))(v7, v4);
  }
}

uint64_t ASImportableCredential.CustomFields.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  v5 = v1[3];
  v4 = v1[4];
  if (v1[1] >> 60 == 15)
  {
    sub_1B1D7C5EC();
    if (v5)
    {
LABEL_3:
      sub_1B1D7C5EC();
      sub_1B1D7BE7C();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *v1;
    sub_1B1D7C5EC();
    sub_1B1D7B4FC();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  sub_1B1D7C5EC();
LABEL_6:

  return sub_1B1D58148(a1, v4);
}

uint64_t ASImportableCredential.CustomFields.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1B1D7C5CC();
  if (v2 >> 60 != 15)
  {
    sub_1B1D7C5EC();
    sub_1B1D7B4FC();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B1D7C5EC();
    goto LABEL_6;
  }

  sub_1B1D7C5EC();
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B1D7C5EC();
  sub_1B1D7BE7C();
LABEL_6:
  sub_1B1D58148(v7, v5);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D4332C(uint64_t a1)
{
  v3 = v1[2];
  v5 = v1[3];
  v4 = v1[4];
  if (v1[1] >> 60 == 15)
  {
    sub_1B1D7C5EC();
    if (v5)
    {
LABEL_3:
      sub_1B1D7C5EC();
      sub_1B1D7BE7C();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *v1;
    sub_1B1D7C5EC();
    sub_1B1D7B4FC();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  sub_1B1D7C5EC();
LABEL_6:

  return sub_1B1D58148(a1, v4);
}

uint64_t sub_1B1D433F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1B1D7C5CC();
  if (v2 >> 60 != 15)
  {
    sub_1B1D7C5EC();
    sub_1B1D7B4FC();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B1D7C5EC();
    goto LABEL_6;
  }

  sub_1B1D7C5EC();
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B1D7C5EC();
  sub_1B1D7BE7C();
LABEL_6:
  sub_1B1D58148(v7, v5);
  return sub_1B1D7C61C();
}

unint64_t sub_1B1D435D4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656D614E6C6C7566;
    v6 = 0x7461446575737369;
    if (a1 != 2)
    {
      v6 = 0x6144797269707865;
    }

    if (a1)
    {
      v5 = 0x7461446874726962;
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
    v1 = 0x7972746E756F63;
    v2 = 0x4E65736E6563696CLL;
    if (a1 != 7)
    {
      v2 = 0x4365736E6563696CLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x726F746972726574;
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

uint64_t sub_1B1D43724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1D6C30C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1D4374C(uint64_t a1)
{
  v2 = sub_1B1D66868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D43788(uint64_t a1)
{
  v2 = sub_1B1D66868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.GeneratedPassword.password.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ASImportableCredential.GeneratedPassword.password.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static ASImportableCredential.GeneratedPassword.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B1D7C50C();
  }
}

uint64_t sub_1B1D439C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64726F7773736170 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B1D7C50C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B1D43A4C(uint64_t a1)
{
  v2 = sub_1B1D66924();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D43A88(uint64_t a1)
{
  v2 = sub_1B1D66924();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.GeneratedPassword.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A68, &qword_1B1D88EB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66924();
  sub_1B1D7C63C();
  sub_1B1D7C49C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ASImportableCredential.GeneratedPassword.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1B1D7BE7C();
}

uint64_t ASImportableCredential.GeneratedPassword.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.GeneratedPassword.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A78, &qword_1B1D88EC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66924();
  sub_1B1D7C62C();
  if (!v2)
  {
    v11 = sub_1B1D7C40C();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1B1D43DE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A68, &qword_1B1D88EB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66924();
  sub_1B1D7C63C();
  sub_1B1D7C49C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1B1D43F1C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D43F68()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1B1D7BE7C();
}

uint64_t sub_1B1D43F70()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D43FB8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B1D7C50C();
  }
}

uint64_t ASImportableCredential.IdentityDocument.issuingCountry.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.IdentityDocument.issuingCountry.setter(__n128 *a1)
{
  v8 = a1[2];
  v3 = a1[3].n128_u64[0];
  v4 = v1[2].n128_u64[1];
  v5 = v1[3].n128_u64[0];
  sub_1B1D0D630(v1->n128_u64[0], v1->n128_u64[1], v1[1].n128_i64[0], v1[1].n128_i64[1], v1[2].n128_i64[0]);
  v6 = a1[1];
  *v1 = *a1;
  v1[1] = v6;
  result = v8;
  v1[2] = v8;
  v1[3].n128_u64[0] = v3;
  return result;
}

uint64_t ASImportableCredential.IdentityDocument.documentNumber.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.IdentityDocument.documentNumber.setter(__int128 *a1)
{
  v8 = a1[2];
  v3 = *(a1 + 6);
  v4 = v1[12];
  v5 = v1[13];
  sub_1B1D0D630(v1[7], v1[8], v1[9], v1[10], v1[11]);
  v6 = *a1;
  *(v1 + 9) = a1[1];
  *(v1 + 7) = v6;
  result = v8;
  *(v1 + 11) = v8;
  v1[13] = v3;
  return result;
}

uint64_t ASImportableCredential.IdentityDocument.identificationNumber.getter@<X0>(uint64_t *a1@<X8>)
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
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.IdentityDocument.identificationNumber.setter(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[19];
  v5 = v1[20];
  sub_1B1D0D630(v1[14], v1[15], v1[16], v1[17], v1[18]);
  v6 = *(a1 + 16);
  *(v1 + 7) = *a1;
  *(v1 + 8) = v6;
  result = v8;
  *(v1 + 9) = v8;
  v1[20] = v3;
  return result;
}

uint64_t ASImportableCredential.IdentityDocument.nationality.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[21];
  v3 = v1[22];
  v4 = v1[23];
  v5 = v1[24];
  v6 = v1[25];
  v7 = v1[26];
  v8 = v1[27];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.IdentityDocument.nationality.setter(__int128 *a1)
{
  v8 = a1[2];
  v3 = *(a1 + 6);
  v4 = v1[26];
  v5 = v1[27];
  sub_1B1D0D630(v1[21], v1[22], v1[23], v1[24], v1[25]);
  v6 = *a1;
  *(v1 + 23) = a1[1];
  *(v1 + 21) = v6;
  result = v8;
  *(v1 + 25) = v8;
  v1[27] = v3;
  return result;
}

uint64_t ASImportableCredential.IdentityDocument.fullName.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[28];
  v3 = v1[29];
  v4 = v1[30];
  v5 = v1[31];
  v6 = v1[32];
  v7 = v1[33];
  v8 = v1[34];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.IdentityDocument.fullName.setter(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[33];
  v5 = v1[34];
  sub_1B1D0D630(v1[28], v1[29], v1[30], v1[31], v1[32]);
  v6 = *(a1 + 16);
  *(v1 + 14) = *a1;
  *(v1 + 15) = v6;
  result = v8;
  *(v1 + 16) = v8;
  v1[34] = v3;
  return result;
}

uint64_t ASImportableCredential.IdentityDocument.birthDate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[35];
  v3 = v1[36];
  v4 = v1[37];
  v5 = v1[38];
  v6 = v1[39];
  v7 = v1[40];
  v8 = v1[41];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.IdentityDocument.birthDate.setter(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[40];
  v5 = v1[41];
  sub_1B1D0D630(v1[35], v1[36], v1[37], v1[38], v1[39]);
  v6 = *(a1 + 16);
  *(v1 + 35) = *a1;
  *(v1 + 37) = v6;
  result = v8;
  *(v1 + 39) = v8;
  v1[41] = v3;
  return result;
}

uint64_t ASImportableCredential.IdentityDocument.birthPlace.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[42];
  v3 = v1[43];
  v4 = v1[44];
  v5 = v1[45];
  v6 = v1[46];
  v7 = v1[47];
  v8 = v1[48];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.IdentityDocument.birthPlace.setter(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[47];
  v5 = v1[48];
  sub_1B1D0D630(v1[42], v1[43], v1[44], v1[45], v1[46]);
  v6 = *(a1 + 16);
  *(v1 + 21) = *a1;
  *(v1 + 22) = v6;
  result = v8;
  *(v1 + 23) = v8;
  v1[48] = v3;
  return result;
}

uint64_t ASImportableCredential.IdentityDocument.sex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[49];
  v3 = v1[50];
  v4 = v1[51];
  v5 = v1[52];
  v6 = v1[53];
  v7 = v1[54];
  v8 = v1[55];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.IdentityDocument.sex.setter(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[54];
  v5 = v1[55];
  sub_1B1D0D630(v1[49], v1[50], v1[51], v1[52], v1[53]);
  v6 = *(a1 + 16);
  *(v1 + 49) = *a1;
  *(v1 + 51) = v6;
  result = v8;
  *(v1 + 53) = v8;
  v1[55] = v3;
  return result;
}

uint64_t ASImportableCredential.IdentityDocument.issueDate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[56];
  v3 = v1[57];
  v4 = v1[58];
  v5 = v1[59];
  v6 = v1[60];
  v7 = v1[61];
  v8 = v1[62];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.IdentityDocument.issueDate.setter(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[61];
  v5 = v1[62];
  sub_1B1D0D630(v1[56], v1[57], v1[58], v1[59], v1[60]);
  v6 = *(a1 + 16);
  *(v1 + 28) = *a1;
  *(v1 + 29) = v6;
  result = v8;
  *(v1 + 30) = v8;
  v1[62] = v3;
  return result;
}

uint64_t ASImportableCredential.IdentityDocument.expiryDate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[63];
  v3 = v1[64];
  v4 = v1[65];
  v5 = v1[66];
  v6 = v1[67];
  v7 = v1[68];
  v8 = v1[69];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.IdentityDocument.expiryDate.setter(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[68];
  v5 = v1[69];
  sub_1B1D0D630(v1[63], v1[64], v1[65], v1[66], v1[67]);
  v6 = *(a1 + 16);
  *(v1 + 63) = *a1;
  *(v1 + 65) = v6;
  result = v8;
  *(v1 + 67) = v8;
  v1[69] = v3;
  return result;
}

uint64_t ASImportableCredential.IdentityDocument.issuingAuthority.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[70];
  v3 = v1[71];
  v4 = v1[72];
  v5 = v1[73];
  v6 = v1[74];
  v7 = v1[75];
  v8 = v1[76];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.IdentityDocument.issuingAuthority.setter(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[75];
  v5 = v1[76];
  sub_1B1D0D630(v1[70], v1[71], v1[72], v1[73], v1[74]);
  v6 = *(a1 + 16);
  *(v1 + 35) = *a1;
  *(v1 + 36) = v6;
  result = v8;
  *(v1 + 37) = v8;
  v1[76] = v3;
  return result;
}

__n128 ASImportableCredential.IdentityDocument.init(issuingCountry:documentNumber:identificationNumber:nationality:fullName:birthDate:birthPlace:sex:issueDate:expiryDate:issuingAuthority:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12)
{
  v54 = *(a1 + 32);
  v20 = *(a1 + 48);
  v21 = (a9 + 344);
  v55 = *a2;
  v57 = a2[5];
  v56 = a2[6];
  v58 = *a3;
  v60 = a3[5];
  v59 = a3[6];
  v61 = *a4;
  v63 = a4[5];
  v62 = a4[6];
  v64 = *a5;
  v66 = a5[5];
  v65 = a5[6];
  v67 = *a6;
  v69 = a6[5];
  v68 = a6[6];
  v70 = *a7;
  v72 = a7[5];
  v71 = a7[6];
  v74 = *a8;
  v76 = a8[5];
  v75 = a8[6];
  v77 = *a10;
  v79 = a10[5];
  v78 = a10[6];
  v82 = a11[5];
  v80 = *a11;
  v81 = a11[6];
  v85 = a12[5];
  v83 = *a12;
  v84 = a12[6];
  bzero(a9, 0x268uLL);
  sub_1B1D0D630(0, 0, 0, 0, 0);
  v22 = *(a1 + 16);
  *a9 = *a1;
  a9[1] = v22;
  a9[2] = v54;
  *(a9 + 6) = v20;
  v23 = *(a9 + 12);
  v24 = *(a9 + 13);
  sub_1B1D0D630(*(a9 + 7), *(a9 + 8), *(a9 + 9), *(a9 + 10), *(a9 + 11));
  *(a9 + 7) = v55;
  v25 = *(a2 + 3);
  a9[4] = *(a2 + 1);
  a9[5] = v25;
  *(a9 + 12) = v57;
  *(a9 + 13) = v56;
  v26 = *(a9 + 19);
  v27 = *(a9 + 20);
  sub_1B1D0D630(*(a9 + 14), *(a9 + 15), *(a9 + 16), *(a9 + 17), *(a9 + 18));
  *(a9 + 14) = v58;
  v28 = *(a3 + 1);
  *(a9 + 136) = *(a3 + 3);
  *(a9 + 120) = v28;
  *(a9 + 19) = v60;
  *(a9 + 20) = v59;
  v29 = *(a9 + 26);
  v30 = *(a9 + 27);
  sub_1B1D0D630(*(a9 + 21), *(a9 + 22), *(a9 + 23), *(a9 + 24), *(a9 + 25));
  *(a9 + 21) = v61;
  v31 = *(a4 + 3);
  a9[11] = *(a4 + 1);
  a9[12] = v31;
  *(a9 + 26) = v63;
  *(a9 + 27) = v62;
  v32 = *(a9 + 33);
  v33 = *(a9 + 34);
  sub_1B1D0D630(*(a9 + 28), *(a9 + 29), *(a9 + 30), *(a9 + 31), *(a9 + 32));
  *(a9 + 28) = v64;
  v34 = *(a5 + 1);
  *(a9 + 248) = *(a5 + 3);
  *(a9 + 232) = v34;
  *(a9 + 33) = v66;
  *(a9 + 34) = v65;
  v35 = *(a9 + 40);
  v36 = *(a9 + 41);
  sub_1B1D0D630(*(a9 + 35), *(a9 + 36), *(a9 + 37), *(a9 + 38), *(a9 + 39));
  *(a9 + 35) = v67;
  v37 = *(a6 + 3);
  a9[18] = *(a6 + 1);
  a9[19] = v37;
  *(a9 + 40) = v69;
  *(a9 + 41) = v68;
  v38 = *(a9 + 47);
  v39 = *(a9 + 48);
  sub_1B1D0D630(*(a9 + 42), *(a9 + 43), *(a9 + 44), *(a9 + 45), *(a9 + 46));
  *(a9 + 42) = v70;
  v40 = *(a7 + 3);
  *v21 = *(a7 + 1);
  *(a9 + 360) = v40;
  *(a9 + 47) = v72;
  *(a9 + 48) = v71;
  v41 = *(a9 + 54);
  v42 = *(a9 + 55);
  sub_1B1D0D630(*(a9 + 49), *(a9 + 50), *(a9 + 51), *(a9 + 52), *(a9 + 53));
  *(a9 + 49) = v74;
  v43 = *(a8 + 3);
  a9[25] = *(a8 + 1);
  a9[26] = v43;
  *(a9 + 54) = v76;
  *(a9 + 55) = v75;
  v44 = *(a9 + 61);
  v45 = *(a9 + 62);
  sub_1B1D0D630(*(a9 + 56), *(a9 + 57), *(a9 + 58), *(a9 + 59), *(a9 + 60));
  *(a9 + 56) = v77;
  v46 = *(a10 + 3);
  *(a9 + 456) = *(a10 + 1);
  *(a9 + 472) = v46;
  *(a9 + 61) = v79;
  *(a9 + 62) = v78;
  v47 = *(a9 + 68);
  v48 = *(a9 + 69);
  sub_1B1D0D630(*(a9 + 63), *(a9 + 64), *(a9 + 65), *(a9 + 66), *(a9 + 67));
  *(a9 + 63) = v80;
  v49 = *(a11 + 3);
  a9[32] = *(a11 + 1);
  a9[33] = v49;
  *(a9 + 68) = v82;
  *(a9 + 69) = v81;
  v50 = *(a9 + 75);
  v51 = *(a9 + 76);
  sub_1B1D0D630(*(a9 + 70), *(a9 + 71), *(a9 + 72), *(a9 + 73), *(a9 + 74));
  *(a9 + 70) = v83;
  result = *(a12 + 1);
  v53 = *(a12 + 3);
  *(a9 + 568) = result;
  *(a9 + 584) = v53;
  *(a9 + 75) = v85;
  *(a9 + 76) = v84;
  return result;
}

unint64_t sub_1B1D44B2C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x43676E6975737369;
    v7 = 0xD000000000000014;
    v8 = 0x6C616E6F6974616ELL;
    if (a1 != 3)
    {
      v8 = 0x656D614E6C6C7566;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x746E656D75636F64;
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
    v1 = 0x7461446575737369;
    v2 = 0x6144797269707865;
    if (a1 != 9)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x7461446874726962;
    v4 = 0x616C506874726962;
    if (a1 != 6)
    {
      v4 = 7890291;
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

uint64_t sub_1B1D44CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1D6C614(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1D44CFC(uint64_t a1)
{
  v2 = sub_1B1D66978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D44D38(uint64_t a1)
{
  v2 = sub_1B1D66978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.IdentityDocument.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A80, &qword_1B1D88EC8);
  v130 = *(v3 - 8);
  v131 = v3;
  v4 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v128 = &v54 - v5;
  v6 = v1[1];
  v127 = *v1;
  v7 = v1[2];
  v8 = v1[3];
  v10 = v1[4];
  v9 = v1[5];
  v11 = v1[6];
  v124 = v1[7];
  v125 = v11;
  v12 = v1[8];
  v122 = v1[9];
  v123 = v12;
  v13 = v1[10];
  v120 = v1[11];
  v121 = v13;
  v14 = v1[12];
  v118 = v1[13];
  v119 = v14;
  v15 = v1[15];
  v117 = v1[14];
  v116 = v15;
  v16 = v1[17];
  v115 = v1[16];
  v114 = v16;
  v17 = v1[19];
  v113 = v1[18];
  v112 = v17;
  v18 = v1[21];
  v111 = v1[20];
  v104 = v18;
  v19 = v1[23];
  v105 = v1[22];
  v106 = v19;
  v20 = v1[25];
  v107 = v1[24];
  v110 = v20;
  v21 = v1[27];
  v109 = v1[26];
  v108 = v21;
  v22 = v1[29];
  v97 = v1[28];
  v98 = v22;
  v23 = v1[31];
  v99 = v1[30];
  v100 = v23;
  v24 = v1[33];
  v103 = v1[32];
  v102 = v24;
  v25 = v1[35];
  v101 = v1[34];
  v90 = v25;
  v26 = v1[37];
  v91 = v1[36];
  v92 = v26;
  v27 = v1[39];
  v93 = v1[38];
  v96 = v27;
  v28 = v1[41];
  v95 = v1[40];
  v94 = v28;
  v29 = v1[43];
  v83 = v1[42];
  v84 = v29;
  v30 = v1[45];
  v85 = v1[44];
  v86 = v30;
  v31 = v1[47];
  v89 = v1[46];
  v88 = v31;
  v32 = v1[49];
  v87 = v1[48];
  v76 = v32;
  v33 = v1[51];
  v77 = v1[50];
  v78 = v33;
  v34 = v1[53];
  v82 = v1[52];
  v81 = v34;
  v35 = v1[55];
  v80 = v1[54];
  v79 = v35;
  v36 = v1[57];
  v69 = v1[56];
  v70 = v36;
  v37 = v1[59];
  v71 = v1[58];
  v75 = v37;
  v38 = v1[61];
  v74 = v1[60];
  v73 = v38;
  v39 = v1[63];
  v72 = v1[62];
  v62 = v39;
  v63 = v1[64];
  v64 = v1[65];
  v68 = v1[66];
  v67 = v1[67];
  v66 = v1[68];
  v65 = v1[69];
  v55 = v1[70];
  v56 = v1[71];
  v57 = v1[72];
  v58 = v1[73];
  v59 = v1[74];
  v61 = v1[75];
  v60 = v1[76];
  v40 = a1[3];
  v126 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v40);
  v41 = v127;
  sub_1B1D66328(v127, v6, v7, v8, v10);
  sub_1B1D66978();
  v42 = v128;
  sub_1B1D7C63C();
  v132 = v41;
  v133 = v6;
  v134 = v7;
  v135 = v8;
  v43 = v42;
  v136 = v10;
  v137 = v9;
  v138 = v125;
  v139 = 0;
  v44 = sub_1B1D663C8();
  v45 = v129;
  sub_1B1D7C48C();
  if (v45)
  {
    sub_1B1D0D630(v132, v133, v134, v135, v136);
    return (*(v130 + 8))(v42, v131);
  }

  else
  {
    v47 = v113;
    v48 = v114;
    v49 = v115;
    v50 = v116;
    v51 = v117;
    v52 = v130;
    sub_1B1D0D630(v132, v133, v134, v135, v136);
    v132 = v124;
    v133 = v123;
    v134 = v122;
    v135 = v121;
    v136 = v120;
    v137 = v119;
    v138 = v118;
    v139 = 1;
    sub_1B1D66328(v124, v123, v122, v121, v120);
    v129 = v44;
    sub_1B1D7C48C();
    sub_1B1D0D630(v132, v133, v134, v135, v136);
    v132 = v51;
    v133 = v50;
    v134 = v49;
    v135 = v48;
    v136 = v47;
    v137 = v112;
    v138 = v111;
    v139 = 2;
    sub_1B1D66328(v51, v50, v49, v48, v47);
    sub_1B1D7C48C();
    sub_1B1D0D630(v132, v133, v134, v135, v136);
    v132 = v104;
    v133 = v105;
    v134 = v106;
    v135 = v107;
    v136 = v110;
    v137 = v109;
    v138 = v108;
    v139 = 3;
    sub_1B1D66328(v104, v105, v106, v107, v110);
    sub_1B1D7C48C();
    sub_1B1D0D630(v132, v133, v134, v135, v136);
    v132 = v97;
    v133 = v98;
    v134 = v99;
    v135 = v100;
    v136 = v103;
    v137 = v102;
    v138 = v101;
    v139 = 4;
    sub_1B1D66328(v97, v98, v99, v100, v103);
    sub_1B1D7C48C();
    sub_1B1D0D630(v132, v133, v134, v135, v136);
    v132 = v90;
    v133 = v91;
    v134 = v92;
    v135 = v93;
    v136 = v96;
    v137 = v95;
    v138 = v94;
    v139 = 5;
    sub_1B1D66328(v90, v91, v92, v93, v96);
    sub_1B1D7C48C();
    sub_1B1D0D630(v132, v133, v134, v135, v136);
    v132 = v83;
    v133 = v84;
    v134 = v85;
    v135 = v86;
    v136 = v89;
    v137 = v88;
    v138 = v87;
    v139 = 6;
    sub_1B1D66328(v83, v84, v85, v86, v89);
    sub_1B1D7C48C();
    sub_1B1D0D630(v132, v133, v134, v135, v136);
    v132 = v76;
    v133 = v77;
    v134 = v78;
    v135 = v82;
    v136 = v81;
    v137 = v80;
    v138 = v79;
    v139 = 7;
    sub_1B1D66328(v76, v77, v78, v82, v81);
    sub_1B1D7C48C();
    sub_1B1D0D630(v132, v133, v134, v135, v136);
    v132 = v69;
    v133 = v70;
    v134 = v71;
    v135 = v75;
    v136 = v74;
    v137 = v73;
    v138 = v72;
    v139 = 8;
    sub_1B1D66328(v69, v70, v71, v75, v74);
    sub_1B1D7C48C();
    sub_1B1D0D630(v132, v133, v134, v135, v136);
    v132 = v62;
    v133 = v63;
    v134 = v64;
    v135 = v68;
    v136 = v67;
    v137 = v66;
    v138 = v65;
    v139 = 9;
    sub_1B1D66328(v62, v63, v64, v68, v67);
    sub_1B1D7C48C();
    sub_1B1D0D630(v132, v133, v134, v135, v136);
    v132 = v55;
    v133 = v56;
    v134 = v57;
    v135 = v58;
    v136 = v59;
    v137 = v61;
    v138 = v60;
    v139 = 10;
    sub_1B1D66328(v55, v56, v57, v58, v59);
    v53 = v131;
    sub_1B1D7C48C();
    sub_1B1D0D630(v132, v133, v134, v135, v136);
    return (*(v52 + 8))(v43, v53);
  }
}

uint64_t ASImportableCredential.IdentityDocument.hash(into:)()
{
  v1 = v0[4];
  v2 = v0[7];
  v33 = v0[8];
  v34 = v0[9];
  v35 = v0[10];
  v3 = v0[11];
  v36 = v0[12];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[15];
  v6 = v0[16];
  v68 = v0[17];
  v89 = v0[18];
  v38 = v0[19];
  v91 = v0[22];
  v77 = v0[23];
  v78 = v0[24];
  v67 = v0[25];
  v40 = v0[26];
  v79 = v0[28];
  v92 = v0[29];
  v42 = v0[30];
  v80 = v0[31];
  v69 = v0[32];
  v43 = v0[33];
  v41 = v0[34];
  v81 = v0[35];
  v93 = v0[36];
  v45 = v0[37];
  v46 = v0[38];
  v96 = v0[39];
  v47 = v0[40];
  v44 = v0[41];
  v82 = v0[42];
  v83 = v0[43];
  v50 = v0[45];
  v90 = v0[46];
  v48 = v0[48];
  v84 = v0[49];
  v94 = v0[50];
  v53 = v0[51];
  v54 = v0[52];
  v70 = v0[53];
  v52 = v0[55];
  v85 = v0[56];
  v58 = v0[58];
  v59 = v0[59];
  v71 = v0[60];
  v56 = v0[62];
  v62 = v0[64];
  v74 = v0[65];
  v86 = v0[66];
  v72 = v0[67];
  v63 = v0[68];
  v61 = v0[69];
  v95 = v0[71];
  v88 = v0[72];
  v97 = v0[74];
  v65 = v0[73];
  v66 = v0[75];
  v64 = v0[76];
  v87 = v0[70];
  v73 = v0[63];
  v60 = v0[61];
  v57 = v0[57];
  v55 = v0[54];
  v51 = v0[47];
  v49 = v0[44];
  v75 = v6;
  v76 = v0[21];
  v39 = v0[27];
  v37 = v0[20];
  if (!v1)
  {
    sub_1B1D7C5EC();
    v14 = v89;
    v15 = v3;
    v16 = v6;
    v17 = v4;
    if (v3)
    {
      goto LABEL_11;
    }

LABEL_5:
    sub_1B1D7C5EC();
    v18 = v68;
    if (v14)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v29 = v0[13];
  v30 = v0[7];
  v31 = v0[11];
  v32 = v0[15];
  v9 = *v0;
  v8 = v0[1];
  v11 = v0[2];
  v10 = v0[3];
  v13 = v0[5];
  v12 = v0[6];
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v9, v8);

  if (v8 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  v14 = v89;
  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v12)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v9, v8, v11, v10, v1);
  v16 = v75;
  v17 = v4;
  v7 = v32;
  v2 = v30;
  v15 = v31;
  v5 = v29;
  if (!v31)
  {
    goto LABEL_5;
  }

LABEL_11:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v2, v33);

  if (v33 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  if (v5)
  {
    sub_1B1D7C5EC();
    sub_1B1D7BE7C();
    v16 = v75;
    v14 = v89;
    sub_1B1D0D630(v2, v33, v34, v35, v15);
    v18 = v68;
    if (v89)
    {
      goto LABEL_15;
    }

LABEL_20:
    sub_1B1D7C5EC();
    v19 = v69;
    v20 = v67;
    if (v67)
    {
      goto LABEL_30;
    }

LABEL_21:
    sub_1B1D7C5EC();
    if (!v19)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

  sub_1B1D7C5EC();
  sub_1B1D0D630(v2, v33, v34, v35, v15);
  v16 = v75;
  v18 = v68;
  if (!v14)
  {
    goto LABEL_20;
  }

LABEL_15:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v17, v7);

  if (v7 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v37)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v17, v7, v16, v18, v14);
  v20 = v67;
  v19 = v69;
  if (!v67)
  {
    goto LABEL_21;
  }

LABEL_30:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v76, v91);

  if (v91 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  if (!v39)
  {
    sub_1B1D7C5EC();
    sub_1B1D0D630(v76, v91, v77, v78, v20);
    if (!v19)
    {
      goto LABEL_22;
    }

LABEL_36:
    sub_1B1D7C5EC();
    sub_1B1D7C5EC();
    sub_1B1C91B94(v79, v92);

    if (v92 >> 60 != 15)
    {
      sub_1B1D7B4FC();
    }

    sub_1B1D2E888();
    sub_1B1D7BE7C();
    if (v41)
    {
      sub_1B1D7C5EC();
      sub_1B1D7BE7C();
      sub_1B1D0D630(v79, v92, v42, v80, v19);
      if (v96)
      {
        goto LABEL_40;
      }
    }

    else
    {
      sub_1B1D7C5EC();
      sub_1B1D0D630(v79, v92, v42, v80, v19);
      if (v96)
      {
        goto LABEL_40;
      }
    }

LABEL_23:
    sub_1B1D7C5EC();
    if (!v90)
    {
      goto LABEL_24;
    }

LABEL_44:
    sub_1B1D7C5EC();
    v21 = v70;
    sub_1B1D7C5EC();
    sub_1B1C91B94(v82, v83);

    if (v83 >> 60 != 15)
    {
      sub_1B1D7B4FC();
    }

    sub_1B1D2E888();
    sub_1B1D7BE7C();
    if (v48)
    {
      sub_1B1D7C5EC();
      sub_1B1D7BE7C();
      sub_1B1D0D630(v82, v83, v49, v50, v90);
      if (v70)
      {
        goto LABEL_54;
      }
    }

    else
    {
      sub_1B1D7C5EC();
      sub_1B1D0D630(v82, v83, v49, v50, v90);
      if (v70)
      {
        goto LABEL_54;
      }
    }

LABEL_25:
    sub_1B1D7C5EC();
    v22 = v71;
    if (!v71)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

  sub_1B1D7C5EC();
  sub_1B1D7BE7C();
  sub_1B1D0D630(v76, v91, v77, v78, v20);
  if (v19)
  {
    goto LABEL_36;
  }

LABEL_22:
  sub_1B1D7C5EC();
  if (!v96)
  {
    goto LABEL_23;
  }

LABEL_40:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v81, v93);

  if (v93 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  if (v44)
  {
    sub_1B1D7C5EC();
    sub_1B1D7BE7C();
    sub_1B1D0D630(v81, v93, v45, v46, v96);
    if (v90)
    {
      goto LABEL_44;
    }
  }

  else
  {
    sub_1B1D7C5EC();
    sub_1B1D0D630(v81, v93, v45, v46, v96);
    if (v90)
    {
      goto LABEL_44;
    }
  }

LABEL_24:
  sub_1B1D7C5EC();
  v21 = v70;
  if (!v70)
  {
    goto LABEL_25;
  }

LABEL_54:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v84, v94);

  if (v94 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v52)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v84, v94, v53, v54, v21);
  v22 = v71;
  if (!v71)
  {
LABEL_26:
    sub_1B1D7C5EC();
    v23 = v72;
    v24 = v73;
    v25 = v74;
    if (!v72)
    {
      goto LABEL_27;
    }

LABEL_65:
    sub_1B1D7C5EC();
    sub_1B1D7C5EC();
    sub_1B1C91B94(v24, v62);

    if (v62 >> 60 != 15)
    {
      sub_1B1D7B4FC();
    }

    sub_1B1D2E888();
    sub_1B1D7BE7C();
    if (v61)
    {
      sub_1B1D7C5EC();
      sub_1B1D7BE7C();
      sub_1B1D0D630(v24, v62, v25, v86, v23);
      if (!v97)
      {
        return sub_1B1D7C5EC();
      }
    }

    else
    {
      sub_1B1D7C5EC();
      sub_1B1D0D630(v24, v62, v25, v86, v23);
      if (!v97)
      {
        return sub_1B1D7C5EC();
      }
    }

    goto LABEL_69;
  }

LABEL_59:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  if (v57 >> 60 == 15)
  {
    v27 = v57;
    sub_1B1C91B94(v85, v57);
    v28 = v56;
  }

  else
  {
    sub_1B1C91B94(v85, v57);

    v27 = v57;
    v28 = v56;
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v28)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v85, v27, v58, v59, v22);
  v24 = v73;
  v25 = v74;
  v23 = v72;
  if (v72)
  {
    goto LABEL_65;
  }

LABEL_27:
  sub_1B1D7C5EC();
  if (!v97)
  {
    return sub_1B1D7C5EC();
  }

LABEL_69:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v87, v95);

  if (v95 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v64)
  {
    sub_1B1D7BE7C();
  }

  return sub_1B1D0D630(v87, v95, v88, v65, v97);
}

uint64_t ASImportableCredential.IdentityDocument.hashValue.getter()
{
  sub_1B1D7C5CC();
  ASImportableCredential.IdentityDocument.hash(into:)();
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.IdentityDocument.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A90, &qword_1B1D88ED0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1B1D66978();
  sub_1B1D7C62C();
  if (v2)
  {
    v181 = v2;
    v89 = 0;
    v86 = 0;
    v79 = 0;
    v80 = 0;
    v74 = 0;
    v75 = 0;
    v65 = 0;
    v66 = 0;
    v60 = 0;
    v61 = 0;
    v54 = 0;
    v55 = 0;
    v78 = 0;
    v69 = 0;
    v70 = 0;
    v63 = 0;
    v64 = 0;
    v57 = 0;
    v58 = 0;
    v56 = 0;
    v82 = 0;
    v83 = 0;
    v71 = 0;
    v72 = 0;
    v67 = 0;
    v68 = 0;
    v62 = 0;
    v53 = 0;
    v84 = 0;
    v85 = 0;
    v76 = 0;
    v77 = 0;
    v59 = 0;
    v91 = 0;
    v92 = 0;
    v87 = 0;
    v88 = 0;
    v81 = 0;
    v73 = 0;
    v96 = 0uLL;
    v95 = 0;
    v93 = 0;
    v94 = 0;
    v90 = 0;
    v101 = 0uLL;
    v100 = 0;
    v99 = 0;
    v98 = 0;
    v97 = 0uLL;
    v50 = 0;
    v105 = 0;
    v104 = 0;
    v103 = 0;
    v102 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v48 = 0;
    v19 = 0;
    v51 = 0u;
    v52 = 0u;
  }

  else
  {
    v106[0] = 0;
    sub_1B1D6644C();
    sub_1B1D7C3FC();
    v21 = *(&v115 + 1);
    v43 = v116;
    v44 = v117;
    v45 = v115;
    v46 = v118;
    v47 = v119;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    v106[0] = 1;
    sub_1B1D7C3FC();
    v48 = v21;
    v41 = a2;
    v42 = v115;
    v102 = v116;
    v103 = v117;
    v22 = v118;
    v50 = *(&v119 + 1);
    v105 = v119;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    v106[0] = 2;
    sub_1B1D7C3FC();
    v104 = v22;
    v97 = v115;
    v98 = v116;
    v99 = v117;
    v100 = v118;
    v101 = v119;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    v106[0] = 3;
    sub_1B1D7C3FC();
    v92 = *(&v115 + 1);
    v90 = v115;
    v93 = v116;
    v94 = v117;
    v95 = v118;
    v96 = v119;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    v106[0] = 4;
    sub_1B1D7C3FC();
    v77 = *(&v115 + 1);
    v73 = v115;
    v81 = v116;
    v84 = v117;
    v87 = v118;
    v91 = *(&v119 + 1);
    v88 = v119;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    v106[0] = 5;
    sub_1B1D7C3FC();
    v63 = *(&v115 + 1);
    v59 = v115;
    v68 = v116;
    v71 = v117;
    v76 = v118;
    v85 = *(&v119 + 1);
    v82 = v119;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    v106[0] = 6;
    sub_1B1D7C3FC();
    v57 = *(&v115 + 1);
    v53 = v115;
    v62 = v116;
    v67 = v117;
    v72 = v118;
    v83 = *(&v119 + 1);
    v79 = v119;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    v106[0] = 7;
    sub_1B1D7C3FC();
    v60 = *(&v115 + 1);
    v55 = v115;
    v65 = v116;
    v70 = v117;
    v75 = v118;
    v52 = v119;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    v106[0] = 8;
    sub_1B1D7C3FC();
    v181 = 0;
    v51 = v115;
    v56 = v116;
    v58 = v117;
    v64 = v118;
    v78 = *(&v119 + 1);
    v69 = v119;
    sub_1B1D0D630(0, 0, 0, 0, 0);
    v106[0] = 9;
    v23 = v181;
    sub_1B1D7C3FC();
    v181 = v23;
    if (v23)
    {
      (*(v6 + 8))(v9, v5);
      v89 = 0;
      v86 = 0;
      v80 = 0;
      v74 = 0;
      v66 = 0;
      v61 = 0;
      v54 = 0;
    }

    else
    {
      v61 = *(&v115 + 1);
      v54 = v115;
      v66 = v116;
      v74 = v117;
      v80 = v118;
      v89 = *(&v119 + 1);
      v86 = v119;
      sub_1B1D0D630(0, 0, 0, 0, 0);
      v107 = 10;
      v24 = v181;
      sub_1B1D7C3FC();
      v181 = v24;
      if (!v24)
      {
        (*(v6 + 8))(v9, v5);
        v25 = v108;
        v26 = v110;
        v39 = v110;
        v40 = v108;
        v36 = v111;
        v37 = v109;
        v27 = v112;
        v38 = v112;
        v35 = v113;
        v28 = v114;
        sub_1B1D0D630(0, 0, 0, 0, 0);
        v29 = v44;
        *v106 = v45;
        *&v106[8] = v21;
        v30 = v43;
        *&v106[16] = v43;
        *&v106[24] = v44;
        *&v106[32] = v46;
        *&v106[40] = v47;
        *&v106[56] = v42;
        *&v106[72] = v102;
        *&v106[80] = v103;
        *&v106[88] = v104;
        *&v106[96] = v105;
        v31 = v50;
        *&v106[104] = v50;
        *&v106[112] = v97;
        *&v106[128] = v98;
        *&v106[136] = v99;
        *&v106[144] = v100;
        *&v106[152] = v101;
        *&v106[168] = v90;
        *&v106[176] = v92;
        *&v106[184] = v93;
        *&v106[192] = v94;
        *&v106[200] = v95;
        *&v106[208] = v96;
        *&v106[224] = v73;
        *&v106[232] = v77;
        *&v106[240] = v81;
        *&v106[248] = v84;
        *&v106[256] = v87;
        *&v106[264] = v88;
        *&v106[272] = v91;
        *&v106[280] = v59;
        *&v106[288] = v63;
        *&v106[296] = v68;
        *&v106[304] = v71;
        *&v106[312] = v76;
        *&v106[320] = v82;
        *&v106[328] = v85;
        *&v106[336] = v53;
        *&v106[344] = v57;
        *&v106[352] = v62;
        *&v106[360] = v67;
        *&v106[368] = v72;
        *&v106[376] = v79;
        *&v106[384] = v83;
        *&v106[392] = v55;
        *&v106[400] = v60;
        *&v106[408] = v65;
        *&v106[416] = v70;
        *&v106[424] = v75;
        *&v106[432] = v52;
        *&v106[448] = v51;
        *&v106[464] = v56;
        *&v106[472] = v58;
        *&v106[480] = v64;
        *&v106[488] = v69;
        *&v106[496] = v78;
        *&v106[504] = v54;
        *&v106[512] = v61;
        *&v106[520] = v66;
        *&v106[528] = v74;
        *&v106[536] = v80;
        *&v106[544] = v86;
        *&v106[552] = v89;
        *&v106[560] = v25;
        v32 = v37;
        *&v106[568] = v37;
        *&v106[576] = v26;
        v33 = v36;
        *&v106[584] = v36;
        *&v106[592] = v27;
        v34 = v35;
        *&v106[600] = v35;
        *&v106[608] = v28;
        memcpy(v41, v106, 0x268uLL);
        sub_1B1D669FC(v106, &v115);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        *&v115 = v45;
        *(&v115 + 1) = v21;
        v116 = v30;
        v117 = v29;
        v118 = v46;
        v119 = v47;
        v120 = v42;
        v121 = v102;
        v122 = v103;
        v123 = v104;
        v124 = v105;
        v125 = v31;
        v126 = v97;
        v127 = v98;
        v128 = v99;
        v129 = v100;
        v130 = v101;
        v131 = v90;
        v132 = v92;
        v133 = v93;
        v134 = v94;
        v135 = v95;
        v136 = v96;
        v137 = v73;
        v138 = v77;
        v139 = v81;
        v140 = v84;
        v141 = v87;
        v142 = v88;
        v143 = v91;
        v144 = v59;
        v145 = v63;
        v146 = v68;
        v147 = v71;
        v148 = v76;
        v149 = v82;
        v150 = v85;
        v151 = v53;
        v152 = v57;
        v153 = v62;
        v154 = v67;
        v155 = v72;
        v156 = v79;
        v157 = v83;
        v158 = v55;
        v159 = v60;
        v160 = v65;
        v161 = v70;
        v162 = v75;
        v163 = v52;
        v164 = v51;
        v165 = v56;
        v166 = v58;
        v167 = v64;
        v168 = v69;
        v169 = v78;
        v170 = v54;
        v171 = v61;
        v172 = v66;
        v173 = v74;
        v174 = v80;
        v175 = v86;
        v176 = v89;
        *&v177 = v40;
        *(&v177 + 1) = v32;
        *&v178 = v39;
        *(&v178 + 1) = v33;
        *&v179 = v38;
        *(&v179 + 1) = v34;
        v180 = v28;
        return sub_1B1D669CC(&v115);
      }

      (*(v6 + 8))(v9, v5);
    }

    v14 = *(&v47 + 1);
    v15 = v47;
    v19 = v45;
    v16 = v46;
    v18 = v43;
    v17 = v44;
    v12 = *(&v42 + 1);
    v13 = v42;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  *&v115 = v19;
  *(&v115 + 1) = v48;
  v116 = v18;
  v117 = v17;
  v118 = v16;
  *&v119 = v15;
  *(&v119 + 1) = v14;
  *&v120 = v13;
  *(&v120 + 1) = v12;
  v121 = v102;
  v122 = v103;
  v123 = v104;
  v124 = v105;
  v125 = v50;
  v126 = v97;
  v127 = v98;
  v128 = v99;
  v129 = v100;
  v130 = v101;
  v131 = v90;
  v132 = v92;
  v133 = v93;
  v134 = v94;
  v135 = v95;
  v136 = v96;
  v137 = v73;
  v138 = v77;
  v139 = v81;
  v140 = v84;
  v141 = v87;
  v142 = v88;
  v143 = v91;
  v144 = v59;
  v145 = v63;
  v146 = v68;
  v147 = v71;
  v148 = v76;
  v149 = v82;
  v150 = v85;
  v151 = v53;
  v152 = v57;
  v153 = v62;
  v154 = v67;
  v155 = v72;
  v156 = v79;
  v157 = v83;
  v158 = v55;
  v159 = v60;
  v160 = v65;
  v161 = v70;
  v162 = v75;
  v163 = v52;
  v164 = v51;
  v165 = v56;
  v166 = v58;
  v167 = v64;
  v168 = v69;
  v169 = v78;
  v170 = v54;
  v171 = v61;
  v172 = v66;
  v173 = v74;
  v174 = v80;
  v175 = v86;
  v176 = v89;
  v180 = 0;
  v178 = 0u;
  v179 = 0u;
  v177 = 0u;
  return sub_1B1D669CC(&v115);
}

uint64_t sub_1B1D47A74()
{
  sub_1B1D7C5CC();
  ASImportableCredential.IdentityDocument.hash(into:)();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D47AB8()
{
  sub_1B1D7C5CC();
  ASImportableCredential.IdentityDocument.hash(into:)();
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.Note.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  sub_1B1C91B94(v2, v3);
}

__n128 ASImportableCredential.Note.content.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v10 = *(a1 + 3);
  v5 = a1[5];
  v6 = a1[6];
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  sub_1B1C91AE4(*v1, *(v1 + 8));

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  result = v10;
  *(v1 + 24) = v10;
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;
  return result;
}

uint64_t static ASImportableCredential.Note.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v23 = *a1;
  v24 = v2;
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  sub_1B1C91B94(v23, v2);

  sub_1B1C91B94(v8, v9);

  LOBYTE(v5) = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v23, &v16);
  sub_1B1C91AE4(v16, v17);

  sub_1B1C91AE4(v23, v24);

  return v5 & 1;
}

uint64_t sub_1B1D47D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B1D7C50C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B1D47D98(uint64_t a1)
{
  v2 = sub_1B1D66A34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D47DD4(uint64_t a1)
{
  v2 = sub_1B1D66A34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.Note.encode(to:)(void *a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775A98, &qword_1B1D88ED8);
  v25 = *(v17 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v5 = &v14 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v16 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 48);
  v14 = *(v1 + 40);
  v15 = v8;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1C91B94(v6, v7);
  sub_1B1D66A34();

  sub_1B1D7C63C();
  v18 = v6;
  v19 = v7;
  v20 = v16;
  v21 = v15;
  v22 = v9;
  v23 = v14;
  v24 = v10;
  sub_1B1D663C8();
  v12 = v17;
  sub_1B1D7C4CC();
  sub_1B1C91AE4(v18, v19);

  return (*(v25 + 8))(v5, v12);
}

uint64_t sub_1B1D47FD0()
{
  v1 = *(v0 + 16);
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  if (v0[1] >> 60 == 15)
  {
    sub_1B1D7C5EC();
  }

  else
  {
    v6 = *v0;
    sub_1B1D7C5EC();
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  if (!v5)
  {
    return sub_1B1D7C5EC();
  }

  sub_1B1D7C5EC();

  return sub_1B1D7BE7C();
}

uint64_t sub_1B1D480D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_1B1D7C5CC();
  sub_1B1D7C5EC();
  if (v2 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v7)
  {
    sub_1B1D7BE7C();
  }

  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.Note.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775AA8, &qword_1B1D88EE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66A34();
  sub_1B1D7C62C();
  if (!v2)
  {
    sub_1B1D6644C();
    sub_1B1D7C43C();
    (*(v6 + 8))(v9, v5);
    v11 = v17;
    v12 = v18;
    v13 = v19;
    v14 = v20;
    *a2 = v16;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
    *(a2 + 40) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1B1D48364()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = *(v0 + 40);
  sub_1B1D7C5CC();
  ASImportableCredential.Note.hash(into:)(v5);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D483C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = *(v0 + 40);
  sub_1B1D7C5CC();
  ASImportableCredential.Note.hash(into:)(v5);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D48428(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v23 = *a1;
  v24 = v2;
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  sub_1B1C91B94(v23, v2);

  sub_1B1C91B94(v8, v9);

  LOBYTE(v5) = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(&v23, &v16);
  sub_1B1C91AE4(v16, v17);

  sub_1B1C91AE4(v23, v24);

  return v5 & 1;
}

uint64_t ASImportableCredential.ItemReference.reference.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1B1CE111C(v2, v3);

  return sub_1B1C91B94(v4, v5);
}

__n128 ASImportableCredential.ItemReference.reference.setter(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  sub_1B1CDEFDC(*v1, v1[1]);
  sub_1B1C91AE4(v3, v4);
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v6;
  return result;
}

__n128 ASImportableCredential.ItemReference.init(reference:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t static ASImportableCredential.ItemReference.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v18 = *a1;
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  sub_1B1CE111C(v18, v2);
  sub_1B1C91B94(v3, v4);
  sub_1B1CE111C(v5, v6);
  sub_1B1C91B94(v7, v8);
  LOBYTE(v3) = _s22AuthenticationServices22ASImportableLinkedItemV2eeoiySbAC_ACtFZ_0(&v18, &v14);
  v9 = v16;
  v10 = v17;
  sub_1B1CDEFDC(v14, v15);
  sub_1B1C91AE4(v9, v10);
  v11 = v20;
  v12 = v21;
  sub_1B1CDEFDC(v18, v19);
  sub_1B1C91AE4(v11, v12);
  return v3 & 1;
}

uint64_t sub_1B1D486C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x636E657265666572 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B1D7C50C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B1D48758(uint64_t a1)
{
  v2 = sub_1B1D66A88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D48794(uint64_t a1)
{
  v2 = sub_1B1D66A88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.ItemReference.encode(to:)(void *a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775AB0, &qword_1B1D88EE8);
  v20 = *(v15 - 8);
  v3 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v5 = &v15 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1CE111C(v6, v7);
  sub_1B1C91B94(v8, v9);
  sub_1B1D66A88();
  sub_1B1D7C63C();
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  sub_1B1D65048();
  v11 = v15;
  sub_1B1D7C4CC();
  v12 = v18;
  v13 = v19;
  sub_1B1CDEFDC(v16, v17);
  sub_1B1C91AE4(v12, v13);
  return (*(v20 + 8))(v5, v11);
}

uint64_t sub_1B1D48960()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B1D7B4FC();
  if (v4 >> 60 == 15)
  {
    return sub_1B1D7C5EC();
  }

  sub_1B1D7C5EC();

  return sub_1B1D7B4FC();
}

uint64_t sub_1B1D489E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B1D7C5CC();
  sub_1B1D7B4FC();
  sub_1B1D7C5EC();
  if (v4 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.ItemReference.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775AC0, &qword_1B1D88EF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66A88();
  sub_1B1D7C62C();
  if (!v2)
  {
    sub_1B1D64F70();
    sub_1B1D7C43C();
    (*(v6 + 8))(v9, v5);
    v11 = v13[1];
    *a2 = v13[0];
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1B1D48C1C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B1D7C5CC();
  sub_1B1D7B4FC();
  sub_1B1D7C5EC();
  if (v4 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D48CAC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v18 = *a1;
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  sub_1B1CE111C(v18, v2);
  sub_1B1C91B94(v3, v4);
  sub_1B1CE111C(v5, v6);
  sub_1B1C91B94(v7, v8);
  LOBYTE(v3) = _s22AuthenticationServices22ASImportableLinkedItemV2eeoiySbAC_ACtFZ_0(&v18, &v14);
  v9 = v16;
  v10 = v17;
  sub_1B1CDEFDC(v14, v15);
  sub_1B1C91AE4(v9, v10);
  v11 = v20;
  v12 = v21;
  sub_1B1CDEFDC(v18, v19);
  sub_1B1C91AE4(v11, v12);
  return v3 & 1;
}

uint64_t ASImportableCredential.Passkey.credentialID.getter()
{
  v1 = *v0;
  sub_1B1CE111C(*v0, *(v0 + 8));
  return v1;
}

uint64_t ASImportableCredential.Passkey.credentialID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1CDEFDC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ASImportableCredential.Passkey.relyingPartyIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ASImportableCredential.Passkey.relyingPartyIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ASImportableCredential.Passkey.userName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ASImportableCredential.Passkey.userName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ASImportableCredential.Passkey.userDisplayName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ASImportableCredential.Passkey.userDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ASImportableCredential.Passkey.userHandle.getter()
{
  v1 = *(v0 + 64);
  sub_1B1CE111C(v1, *(v0 + 72));
  return v1;
}

uint64_t ASImportableCredential.Passkey.userHandle.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1CDEFDC(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t ASImportableCredential.Passkey.key.getter()
{
  v1 = *(v0 + 80);
  sub_1B1CE111C(v1, *(v0 + 88));
  return v1;
}

uint64_t ASImportableCredential.Passkey.key.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1CDEFDC(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_1B1D490C4()
{
  *v0;
  *v0;
  *v0;
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D491C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B1D6C9C4();
  *a2 = result;
  return result;
}

void sub_1B1D491F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000064496C61;
  v4 = 0x69746E6564657263;
  v5 = 0xEF656D614E79616CLL;
  v6 = 0x7073694472657375;
  v7 = 0xEA0000000000656CLL;
  v8 = 0x646E614872657375;
  if (v2 != 4)
  {
    v8 = 7955819;
    v7 = 0xE300000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1682534514;
  if (v2 != 1)
  {
    v10 = 0x656D616E72657375;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1B1D492BC()
{
  v1 = *v0;
  v2 = 0x69746E6564657263;
  v3 = 0x7073694472657375;
  v4 = 0x646E614872657375;
  if (v1 != 4)
  {
    v4 = 7955819;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1682534514;
  if (v1 != 1)
  {
    v5 = 0x656D616E72657375;
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

uint64_t sub_1B1D49380@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1D6C9C4();
  *a1 = result;
  return result;
}

uint64_t sub_1B1D493A8(uint64_t a1)
{
  v2 = sub_1B1D66ADC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D493E4(uint64_t a1)
{
  v2 = sub_1B1D66ADC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.Passkey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775AC8, &qword_1B1D88EF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v46 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66ADC();
  sub_1B1D7C62C();
  if (!v2)
  {
    v59 = 0;
    sub_1B1D7C40C();
    v11 = sub_1B1D7B4AC();
    if (v12 >> 60 == 15)
    {
      v13 = sub_1B1D7C2BC();
      swift_allocError();
      v15 = v14;
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0) + 48);
      *v15 = MEMORY[0x1E6969080];
      sub_1B1D7C3CC();
      sub_1B1D7C2AC();
      (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v13);
      swift_willThrow();
    }

    else
    {
      v18 = v11;
      v53 = v12;
      v58 = 1;
      v19 = sub_1B1D7C40C();
      v52 = v20;
      v57 = 2;
      v21 = sub_1B1D7C40C();
      v51 = v22;
      v56 = 3;
      v48 = sub_1B1D7C40C();
      v49 = v21;
      v50 = v23;
      v55 = 4;
      sub_1B1D7C40C();
      v24 = sub_1B1D7B4AC();
      if (v25 >> 60 == 15)
      {

        v26 = sub_1B1D7C2BC();
        v52 = swift_allocError();
        v28 = v27;
        v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0) + 48);
        *v28 = MEMORY[0x1E6969080];
        sub_1B1D7C3CC();
        sub_1B1D7C2AC();
        (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
        swift_willThrow();
        v30 = v18;
        v31 = v53;
      }

      else
      {
        v46 = v24;
        v47 = v25;
        v54 = 5;
        sub_1B1D7C40C();
        v32 = sub_1B1D7B4AC();
        if (v33 >> 60 != 15)
        {
          v38 = v32;
          v39 = v9;
          v40 = v33;
          (*(v6 + 8))(v39, v5);
          v41 = v52;
          v42 = v53;
          *a2 = v18;
          a2[1] = v42;
          a2[2] = v19;
          a2[3] = v41;
          v43 = v51;
          a2[4] = v49;
          a2[5] = v43;
          v44 = v50;
          a2[6] = v48;
          a2[7] = v44;
          v45 = v47;
          a2[8] = v46;
          a2[9] = v45;
          a2[10] = v38;
          a2[11] = v40;
          return __swift_destroy_boxed_opaque_existential_1Tm(a1);
        }

        v34 = sub_1B1D7C2BC();
        v52 = swift_allocError();
        v36 = v35;
        v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0) + 48);
        *v36 = MEMORY[0x1E6969080];
        sub_1B1D7C3CC();
        sub_1B1D7C2AC();
        (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
        swift_willThrow();
        sub_1B1C91AE4(v18, v53);
        v30 = v46;
        v31 = v47;
      }

      sub_1B1C91AE4(v30, v31);
    }

    (*(v6 + 8))(v9, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ASImportableCredential.Passkey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775AD8, &qword_1B1D88F00);
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v21[7] = v1[3];
  v21[8] = v9;
  v10 = v1[4];
  v21[5] = v1[5];
  v21[6] = v10;
  v11 = v1[6];
  v21[3] = v1[7];
  v21[4] = v11;
  v13 = v1[8];
  v12 = v1[9];
  v15 = v1[10];
  v14 = v1[11];
  sub_1B1D7B4BC();
  v21[2] = sub_1B1D7B4BC();
  v21[9] = v16;
  v21[1] = sub_1B1D7B4BC();
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D66ADC();
  sub_1B1D7C63C();
  v29 = 0;
  v18 = v23;
  sub_1B1D7C49C();
  if (v18)
  {
    (*(v22 + 8))(v6, v3);
  }

  else
  {
    v19 = v22;

    v28 = 1;
    sub_1B1D7C49C();
    v27 = 2;
    sub_1B1D7C49C();
    v26 = 3;
    sub_1B1D7C49C();
    v25 = 4;
    sub_1B1D7C49C();

    v24 = 5;
    sub_1B1D7C49C();
    (*(v19 + 8))(v6, 0);
  }
}

uint64_t ASImportableCredential.Passkey.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[10];
  v12 = v0[11];
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7B4FC();

  return sub_1B1D7B4FC();
}

uint64_t ASImportableCredential.Passkey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[10];
  v12 = v0[11];
  sub_1B1D7C5CC();
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7B4FC();
  sub_1B1D7B4FC();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D49F3C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[10];
  v12 = v0[11];
  sub_1B1D7C5CC();
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7B4FC();
  sub_1B1D7B4FC();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D4A010()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[10];
  v12 = v0[11];
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7B4FC();

  return sub_1B1D7B4FC();
}

uint64_t sub_1B1D4A0D4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[10];
  v12 = v0[11];
  sub_1B1D7C5CC();
  sub_1B1D7B4FC();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7BE7C();
  sub_1B1D7B4FC();
  sub_1B1D7B4FC();
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.Passport.issuingCountry.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.Passport.issuingCountry.setter(__n128 *a1)
{
  v8 = a1[2];
  v3 = a1[3].n128_u64[0];
  v4 = v1[2].n128_u64[1];
  v5 = v1[3].n128_u64[0];
  sub_1B1D0D630(v1->n128_u64[0], v1->n128_u64[1], v1[1].n128_i64[0], v1[1].n128_i64[1], v1[2].n128_i64[0]);
  v6 = a1[1];
  *v1 = *a1;
  v1[1] = v6;
  result = v8;
  v1[2] = v8;
  v1[3].n128_u64[0] = v3;
  return result;
}

uint64_t ASImportableCredential.Passport.passportType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.Passport.passportType.setter(__int128 *a1)
{
  v8 = a1[2];
  v3 = *(a1 + 6);
  v4 = v1[12];
  v5 = v1[13];
  sub_1B1D0D630(v1[7], v1[8], v1[9], v1[10], v1[11]);
  v6 = *a1;
  *(v1 + 9) = a1[1];
  *(v1 + 7) = v6;
  result = v8;
  *(v1 + 11) = v8;
  v1[13] = v3;
  return result;
}

uint64_t ASImportableCredential.Passport.passportNumber.getter@<X0>(uint64_t *a1@<X8>)
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
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.Passport.passportNumber.setter(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[19];
  v5 = v1[20];
  sub_1B1D0D630(v1[14], v1[15], v1[16], v1[17], v1[18]);
  v6 = *(a1 + 16);
  *(v1 + 7) = *a1;
  *(v1 + 8) = v6;
  result = v8;
  *(v1 + 9) = v8;
  v1[20] = v3;
  return result;
}

uint64_t ASImportableCredential.Passport.nationalIdentificationNumber.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[21];
  v3 = v1[22];
  v4 = v1[23];
  v5 = v1[24];
  v6 = v1[25];
  v7 = v1[26];
  v8 = v1[27];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.Passport.nationalIdentificationNumber.setter(__int128 *a1)
{
  v8 = a1[2];
  v3 = *(a1 + 6);
  v4 = v1[26];
  v5 = v1[27];
  sub_1B1D0D630(v1[21], v1[22], v1[23], v1[24], v1[25]);
  v6 = *a1;
  *(v1 + 23) = a1[1];
  *(v1 + 21) = v6;
  result = v8;
  *(v1 + 25) = v8;
  v1[27] = v3;
  return result;
}

uint64_t ASImportableCredential.Passport.nationality.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[28];
  v3 = v1[29];
  v4 = v1[30];
  v5 = v1[31];
  v6 = v1[32];
  v7 = v1[33];
  v8 = v1[34];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.Passport.nationality.setter(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[33];
  v5 = v1[34];
  sub_1B1D0D630(v1[28], v1[29], v1[30], v1[31], v1[32]);
  v6 = *(a1 + 16);
  *(v1 + 14) = *a1;
  *(v1 + 15) = v6;
  result = v8;
  *(v1 + 16) = v8;
  v1[34] = v3;
  return result;
}

uint64_t ASImportableCredential.Passport.fullName.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[35];
  v3 = v1[36];
  v4 = v1[37];
  v5 = v1[38];
  v6 = v1[39];
  v7 = v1[40];
  v8 = v1[41];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.Passport.fullName.setter(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[40];
  v5 = v1[41];
  sub_1B1D0D630(v1[35], v1[36], v1[37], v1[38], v1[39]);
  v6 = *(a1 + 16);
  *(v1 + 35) = *a1;
  *(v1 + 37) = v6;
  result = v8;
  *(v1 + 39) = v8;
  v1[41] = v3;
  return result;
}

uint64_t ASImportableCredential.Passport.birthDate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[42];
  v3 = v1[43];
  v4 = v1[44];
  v5 = v1[45];
  v6 = v1[46];
  v7 = v1[47];
  v8 = v1[48];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.Passport.birthDate.setter(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[47];
  v5 = v1[48];
  sub_1B1D0D630(v1[42], v1[43], v1[44], v1[45], v1[46]);
  v6 = *(a1 + 16);
  *(v1 + 21) = *a1;
  *(v1 + 22) = v6;
  result = v8;
  *(v1 + 23) = v8;
  v1[48] = v3;
  return result;
}

uint64_t ASImportableCredential.Passport.birthPlace.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[49];
  v3 = v1[50];
  v4 = v1[51];
  v5 = v1[52];
  v6 = v1[53];
  v7 = v1[54];
  v8 = v1[55];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.Passport.birthPlace.setter(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[54];
  v5 = v1[55];
  sub_1B1D0D630(v1[49], v1[50], v1[51], v1[52], v1[53]);
  v6 = *(a1 + 16);
  *(v1 + 49) = *a1;
  *(v1 + 51) = v6;
  result = v8;
  *(v1 + 53) = v8;
  v1[55] = v3;
  return result;
}

uint64_t ASImportableCredential.Passport.sex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[56];
  v3 = v1[57];
  v4 = v1[58];
  v5 = v1[59];
  v6 = v1[60];
  v7 = v1[61];
  v8 = v1[62];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.Passport.sex.setter(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[61];
  v5 = v1[62];
  sub_1B1D0D630(v1[56], v1[57], v1[58], v1[59], v1[60]);
  v6 = *(a1 + 16);
  *(v1 + 28) = *a1;
  *(v1 + 29) = v6;
  result = v8;
  *(v1 + 30) = v8;
  v1[62] = v3;
  return result;
}

uint64_t ASImportableCredential.Passport.issueDate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[63];
  v3 = v1[64];
  v4 = v1[65];
  v5 = v1[66];
  v6 = v1[67];
  v7 = v1[68];
  v8 = v1[69];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.Passport.issueDate.setter(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[68];
  v5 = v1[69];
  sub_1B1D0D630(v1[63], v1[64], v1[65], v1[66], v1[67]);
  v6 = *(a1 + 16);
  *(v1 + 63) = *a1;
  *(v1 + 65) = v6;
  result = v8;
  *(v1 + 67) = v8;
  v1[69] = v3;
  return result;
}

uint64_t ASImportableCredential.Passport.expiryDate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[70];
  v3 = v1[71];
  v4 = v1[72];
  v5 = v1[73];
  v6 = v1[74];
  v7 = v1[75];
  v8 = v1[76];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.Passport.expiryDate.setter(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[75];
  v5 = v1[76];
  sub_1B1D0D630(v1[70], v1[71], v1[72], v1[73], v1[74]);
  v6 = *(a1 + 16);
  *(v1 + 35) = *a1;
  *(v1 + 36) = v6;
  result = v8;
  *(v1 + 37) = v8;
  v1[76] = v3;
  return result;
}

uint64_t ASImportableCredential.Passport.issuingAuthority.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[77];
  v3 = v1[78];
  v4 = v1[79];
  v5 = v1[80];
  v6 = v1[81];
  v7 = v1[82];
  v8 = v1[83];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 ASImportableCredential.Passport.issuingAuthority.setter(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[82];
  v5 = v1[83];
  sub_1B1D0D630(v1[77], v1[78], v1[79], v1[80], v1[81]);
  v6 = *(a1 + 16);
  *(v1 + 77) = *a1;
  *(v1 + 79) = v6;
  result = v8;
  *(v1 + 81) = v8;
  v1[83] = v3;
  return result;
}

__n128 ASImportableCredential.Passport.init(issuingCountry:passportType:passportNumber:nationalIdentificationNumber:nationality:fullName:birthDate:birthPlace:sex:issueDate:expiryDate:issuingAuthority:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13)
{
  v58 = *(a1 + 32);
  v21 = (a9 + 344);
  v22 = *(a1 + 48);
  v59 = *a2;
  v60 = a2[6];
  v61 = a2[5];
  v62 = *a3;
  v63 = a3[6];
  v64 = a3[5];
  v65 = *a4;
  v66 = a4[6];
  v67 = a4[5];
  v68 = *a5;
  v69 = a5[6];
  v70 = a5[5];
  v71 = *a6;
  v72 = a6[6];
  v73 = a6[5];
  v74 = *a7;
  v75 = a7[6];
  v76 = a7[5];
  v78 = *a8;
  v79 = a8[6];
  v80 = a8[5];
  v81 = *a10;
  v82 = a10[6];
  v83 = a10[5];
  v84 = *a11;
  v86 = a11[5];
  v85 = a11[6];
  v89 = a12[5];
  v87 = *a12;
  v88 = a12[6];
  v92 = a13[5];
  v90 = *a13;
  v91 = a13[6];
  bzero(a9, 0x2A0uLL);
  sub_1B1D0D630(0, 0, 0, 0, 0);
  v23 = *(a1 + 16);
  *a9 = *a1;
  a9[1] = v23;
  a9[2] = v58;
  *(a9 + 6) = v22;
  v24 = *(a9 + 12);
  v25 = *(a9 + 13);
  sub_1B1D0D630(*(a9 + 7), *(a9 + 8), *(a9 + 9), *(a9 + 10), *(a9 + 11));
  *(a9 + 7) = v59;
  v26 = *(a2 + 3);
  a9[4] = *(a2 + 1);
  a9[5] = v26;
  *(a9 + 12) = v61;
  *(a9 + 13) = v60;
  v27 = *(a9 + 19);
  v28 = *(a9 + 20);
  sub_1B1D0D630(*(a9 + 14), *(a9 + 15), *(a9 + 16), *(a9 + 17), *(a9 + 18));
  *(a9 + 14) = v62;
  v29 = *(a3 + 1);
  *(a9 + 136) = *(a3 + 3);
  *(a9 + 120) = v29;
  *(a9 + 19) = v64;
  *(a9 + 20) = v63;
  v30 = *(a9 + 26);
  v31 = *(a9 + 27);
  sub_1B1D0D630(*(a9 + 21), *(a9 + 22), *(a9 + 23), *(a9 + 24), *(a9 + 25));
  *(a9 + 21) = v65;
  v32 = *(a4 + 3);
  a9[11] = *(a4 + 1);
  a9[12] = v32;
  *(a9 + 26) = v67;
  *(a9 + 27) = v66;
  v33 = *(a9 + 33);
  v34 = *(a9 + 34);
  sub_1B1D0D630(*(a9 + 28), *(a9 + 29), *(a9 + 30), *(a9 + 31), *(a9 + 32));
  *(a9 + 28) = v68;
  v35 = *(a5 + 1);
  *(a9 + 248) = *(a5 + 3);
  *(a9 + 232) = v35;
  *(a9 + 33) = v70;
  *(a9 + 34) = v69;
  v36 = *(a9 + 40);
  v37 = *(a9 + 41);
  sub_1B1D0D630(*(a9 + 35), *(a9 + 36), *(a9 + 37), *(a9 + 38), *(a9 + 39));
  *(a9 + 35) = v71;
  v38 = *(a6 + 3);
  a9[18] = *(a6 + 1);
  a9[19] = v38;
  *(a9 + 40) = v73;
  *(a9 + 41) = v72;
  v39 = *(a9 + 47);
  v40 = *(a9 + 48);
  sub_1B1D0D630(*(a9 + 42), *(a9 + 43), *(a9 + 44), *(a9 + 45), *(a9 + 46));
  *(a9 + 42) = v74;
  v41 = *(a7 + 3);
  *v21 = *(a7 + 1);
  *(a9 + 360) = v41;
  *(a9 + 47) = v76;
  *(a9 + 48) = v75;
  v42 = *(a9 + 54);
  v43 = *(a9 + 55);
  sub_1B1D0D630(*(a9 + 49), *(a9 + 50), *(a9 + 51), *(a9 + 52), *(a9 + 53));
  *(a9 + 49) = v78;
  v44 = *(a8 + 3);
  a9[25] = *(a8 + 1);
  a9[26] = v44;
  *(a9 + 54) = v80;
  *(a9 + 55) = v79;
  v45 = *(a9 + 61);
  v46 = *(a9 + 62);
  sub_1B1D0D630(*(a9 + 56), *(a9 + 57), *(a9 + 58), *(a9 + 59), *(a9 + 60));
  *(a9 + 56) = v81;
  v47 = *(a10 + 3);
  *(a9 + 456) = *(a10 + 1);
  *(a9 + 472) = v47;
  *(a9 + 61) = v83;
  *(a9 + 62) = v82;
  v48 = *(a9 + 68);
  v49 = *(a9 + 69);
  sub_1B1D0D630(*(a9 + 63), *(a9 + 64), *(a9 + 65), *(a9 + 66), *(a9 + 67));
  *(a9 + 63) = v84;
  v50 = *(a11 + 3);
  a9[32] = *(a11 + 1);
  a9[33] = v50;
  *(a9 + 68) = v86;
  *(a9 + 69) = v85;
  v51 = *(a9 + 75);
  v52 = *(a9 + 76);
  sub_1B1D0D630(*(a9 + 70), *(a9 + 71), *(a9 + 72), *(a9 + 73), *(a9 + 74));
  *(a9 + 70) = v87;
  v53 = *(a12 + 3);
  *(a9 + 568) = *(a12 + 1);
  *(a9 + 584) = v53;
  *(a9 + 75) = v89;
  *(a9 + 76) = v88;
  v54 = *(a9 + 82);
  v55 = *(a9 + 83);
  sub_1B1D0D630(*(a9 + 77), *(a9 + 78), *(a9 + 79), *(a9 + 80), *(a9 + 81));
  *(a9 + 77) = v90;
  result = *(a13 + 1);
  v57 = *(a13 + 3);
  a9[39] = result;
  a9[40] = v57;
  *(a9 + 82) = v92;
  *(a9 + 83) = v91;
  return result;
}

unint64_t sub_1B1D4ADC8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x7461446575737369;
    v6 = 0x6144797269707865;
    if (a1 != 10)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x7461446874726962;
    v8 = 0x616C506874726962;
    if (a1 != 7)
    {
      v8 = 7890291;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
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
    v1 = 0x43676E6975737369;
    v2 = 0xD00000000000001CLL;
    v3 = 0x6C616E6F6974616ELL;
    if (a1 != 4)
    {
      v3 = 0x656D614E6C6C7566;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x74726F7073736170;
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
}

uint64_t sub_1B1D4AF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1D6CA10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1D4AFC0(uint64_t a1)
{
  v2 = sub_1B1D66B30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D4AFFC(uint64_t a1)
{
  v2 = sub_1B1D66B30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASImportableCredential.Passport.encode(to:)(void *a1)
{
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775AE0, &qword_1B1D88F08);
  v135 = *(v133 - 8);
  v3 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v52 - v4;
  v5 = v1[1];
  v131 = *v1;
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[4];
  v8 = v1[5];
  v10 = v1[6];
  v128 = v1[7];
  v129 = v10;
  v11 = v1[8];
  v126 = v1[9];
  v127 = v11;
  v12 = v1[10];
  v124 = v1[11];
  v125 = v12;
  v13 = v1[12];
  v122 = v1[13];
  v123 = v13;
  v14 = v1[15];
  v121 = v1[14];
  v120 = v14;
  v15 = v1[17];
  v119 = v1[16];
  v118 = v15;
  v16 = v1[19];
  v116 = v1[18];
  v117 = v16;
  v17 = v1[21];
  v115 = v1[20];
  v108 = v17;
  v18 = v1[23];
  v109 = v1[22];
  v110 = v18;
  v19 = v1[25];
  v111 = v1[24];
  v112 = v19;
  v20 = v1[27];
  v114 = v1[26];
  v113 = v20;
  v21 = v1[29];
  v101 = v1[28];
  v102 = v21;
  v22 = v1[31];
  v103 = v1[30];
  v104 = v22;
  v23 = v1[33];
  v105 = v1[32];
  v107 = v23;
  v24 = v1[35];
  v106 = v1[34];
  v94 = v24;
  v25 = v1[37];
  v95 = v1[36];
  v96 = v25;
  v26 = v1[39];
  v97 = v1[38];
  v98 = v26;
  v27 = v1[41];
  v100 = v1[40];
  v99 = v27;
  v28 = v1[43];
  v87 = v1[42];
  v88 = v28;
  v29 = v1[45];
  v89 = v1[44];
  v90 = v29;
  v30 = v1[47];
  v91 = v1[46];
  v93 = v30;
  v31 = v1[49];
  v92 = v1[48];
  v80 = v31;
  v32 = v1[51];
  v81 = v1[50];
  v82 = v32;
  v33 = v1[53];
  v83 = v1[52];
  v86 = v33;
  v34 = v1[55];
  v85 = v1[54];
  v84 = v34;
  v35 = v1[57];
  v73 = v1[56];
  v74 = v35;
  v36 = v1[59];
  v75 = v1[58];
  v76 = v36;
  v37 = v1[61];
  v79 = v1[60];
  v78 = v37;
  v38 = v1[63];
  v77 = v1[62];
  v66 = v38;
  v67 = v1[64];
  v68 = v1[65];
  v69 = v1[66];
  v72 = v1[67];
  v71 = v1[68];
  v70 = v1[69];
  v59 = v1[70];
  v60 = v1[71];
  v61 = v1[72];
  v62 = v1[73];
  v65 = v1[74];
  v64 = v1[75];
  v63 = v1[76];
  v52 = v1[77];
  v53 = v1[78];
  v54 = v1[79];
  v55 = v1[80];
  v58 = v1[81];
  v57 = v1[82];
  v56 = v1[83];
  v39 = a1[3];
  v130 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v39);
  v40 = v131;
  sub_1B1D66328(v131, v5, v6, v7, v9);
  sub_1B1D66B30();
  v41 = v132;
  sub_1B1D7C63C();
  v136 = v40;
  v137 = v5;
  v138 = v6;
  v139 = v7;
  v42 = v133;
  v43 = v41;
  v140 = v9;
  v141 = v8;
  v142 = v129;
  v143 = 0;
  v44 = sub_1B1D663C8();
  v45 = v134;
  sub_1B1D7C48C();
  if (v45)
  {
    sub_1B1D0D630(v136, v137, v138, v139, v140);
    return (*(v135 + 8))(v41, v42);
  }

  else
  {
    v47 = v42;
    v48 = v118;
    v49 = v119;
    v50 = v120;
    v51 = v121;
    sub_1B1D0D630(v136, v137, v138, v139, v140);
    v136 = v128;
    v137 = v127;
    v138 = v126;
    v139 = v125;
    v140 = v124;
    v141 = v123;
    v142 = v122;
    v143 = 1;
    sub_1B1D66328(v128, v127, v126, v125, v124);
    sub_1B1D7C48C();
    sub_1B1D0D630(v136, v137, v138, v139, v140);
    v136 = v51;
    v137 = v50;
    v138 = v49;
    v139 = v48;
    v140 = v116;
    v141 = v117;
    v142 = v115;
    v143 = 2;
    sub_1B1D66328(v51, v50, v49, v48, v116);
    v134 = v44;
    sub_1B1D7C48C();
    sub_1B1D0D630(v136, v137, v138, v139, v140);
    v136 = v108;
    v137 = v109;
    v138 = v110;
    v139 = v111;
    v140 = v112;
    v141 = v114;
    v142 = v113;
    v143 = 3;
    sub_1B1D66328(v108, v109, v110, v111, v112);
    sub_1B1D7C48C();
    sub_1B1D0D630(v136, v137, v138, v139, v140);
    v136 = v101;
    v137 = v102;
    v138 = v103;
    v139 = v104;
    v140 = v105;
    v141 = v107;
    v142 = v106;
    v143 = 4;
    sub_1B1D66328(v101, v102, v103, v104, v105);
    sub_1B1D7C48C();
    sub_1B1D0D630(v136, v137, v138, v139, v140);
    v136 = v94;
    v137 = v95;
    v138 = v96;
    v139 = v97;
    v140 = v98;
    v141 = v100;
    v142 = v99;
    v143 = 5;
    sub_1B1D66328(v94, v95, v96, v97, v98);
    sub_1B1D7C48C();
    sub_1B1D0D630(v136, v137, v138, v139, v140);
    v136 = v87;
    v137 = v88;
    v138 = v89;
    v139 = v90;
    v140 = v91;
    v141 = v93;
    v142 = v92;
    v143 = 6;
    sub_1B1D66328(v87, v88, v89, v90, v91);
    sub_1B1D7C48C();
    sub_1B1D0D630(v136, v137, v138, v139, v140);
    v136 = v80;
    v137 = v81;
    v138 = v82;
    v139 = v83;
    v140 = v86;
    v141 = v85;
    v142 = v84;
    v143 = 7;
    sub_1B1D66328(v80, v81, v82, v83, v86);
    sub_1B1D7C48C();
    sub_1B1D0D630(v136, v137, v138, v139, v140);
    v136 = v73;
    v137 = v74;
    v138 = v75;
    v139 = v76;
    v140 = v79;
    v141 = v78;
    v142 = v77;
    v143 = 8;
    sub_1B1D66328(v73, v74, v75, v76, v79);
    sub_1B1D7C48C();
    sub_1B1D0D630(v136, v137, v138, v139, v140);
    v136 = v66;
    v137 = v67;
    v138 = v68;
    v139 = v69;
    v140 = v72;
    v141 = v71;
    v142 = v70;
    v143 = 9;
    sub_1B1D66328(v66, v67, v68, v69, v72);
    sub_1B1D7C48C();
    sub_1B1D0D630(v136, v137, v138, v139, v140);
    v136 = v59;
    v137 = v60;
    v138 = v61;
    v139 = v62;
    v140 = v65;
    v141 = v64;
    v142 = v63;
    v143 = 10;
    sub_1B1D66328(v59, v60, v61, v62, v65);
    sub_1B1D7C48C();
    sub_1B1D0D630(v136, v137, v138, v139, v140);
    v136 = v52;
    v137 = v53;
    v138 = v54;
    v139 = v55;
    v140 = v58;
    v141 = v57;
    v142 = v56;
    v143 = 11;
    sub_1B1D66328(v52, v53, v54, v55, v58);
    sub_1B1D7C48C();
    sub_1B1D0D630(v136, v137, v138, v139, v140);
    return (*(v135 + 8))(v43, v47);
  }
}

uint64_t ASImportableCredential.Passport.hash(into:)()
{
  v1 = v0[4];
  v64 = v0[8];
  v74 = v0[10];
  v75 = v0[7];
  v2 = v0[11];
  v35 = v0[9];
  v36 = v0[12];
  v3 = v0[14];
  v34 = v0[13];
  v4 = v0[15];
  v66 = v0[17];
  v67 = v0[18];
  v37 = v0[16];
  v38 = v0[19];
  v65 = v0[20];
  v42 = v0[24];
  v68 = v0[25];
  v43 = v0[26];
  v39 = v0[27];
  v40 = v0[22];
  v76 = v0[21];
  v77 = v0[28];
  v99 = v0[29];
  v78 = v0[31];
  v105 = v0[32];
  v44 = v0[34];
  v45 = v0[33];
  v79 = v0[35];
  v100 = v0[36];
  v46 = v0[38];
  v106 = v0[39];
  v47 = v0[40];
  v96 = v0[41];
  v81 = v0[42];
  v82 = v0[43];
  v94 = v0[46];
  v48 = v0[48];
  v101 = v0[50];
  v71 = v0[53];
  v52 = v0[55];
  v53 = v0[54];
  v84 = v0[52];
  v85 = v0[56];
  v102 = v0[57];
  v54 = v0[59];
  v95 = v0[60];
  v55 = v0[61];
  v103 = v0[64];
  v88 = v0[65];
  v72 = v0[67];
  v56 = v0[66];
  v57 = v0[68];
  v98 = v0[69];
  v104 = v0[71];
  v89 = v0[70];
  v90 = v0[72];
  v73 = v0[74];
  v60 = v0[73];
  v61 = v0[75];
  v59 = v0[76];
  v92 = v0[79];
  v93 = v0[80];
  v107 = v0[81];
  v62 = v0[78];
  v63 = v0[82];
  v58 = v0[83];
  v91 = v0[77];
  v87 = v0[63];
  v86 = v0[58];
  v97 = v0[62];
  v69 = v0[30];
  v70 = v0[51];
  v83 = v0[49];
  v50 = v0[45];
  v51 = v0[47];
  v49 = v0[44];
  v80 = v0[37];
  v41 = v0[23];
  if (!v1)
  {
    sub_1B1D7C5EC();
    v11 = v2;
    v12 = v64;
    if (v2)
    {
      goto LABEL_20;
    }

LABEL_5:
    sub_1B1D7C5EC();
    v13 = v66;
    v14 = v67;
    v15 = v65;
    if (v67)
    {
      goto LABEL_26;
    }

LABEL_6:
    sub_1B1D7C5EC();
    v16 = v68;
    if (v68)
    {
      goto LABEL_31;
    }

LABEL_7:
    sub_1B1D7C5EC();
    v17 = v69;
    if (v105)
    {
      goto LABEL_36;
    }

LABEL_8:
    sub_1B1D7C5EC();
    if (v106)
    {
      goto LABEL_41;
    }

LABEL_9:
    sub_1B1D7C5EC();
    if (v94)
    {
      goto LABEL_47;
    }

LABEL_10:
    sub_1B1D7C5EC();
    v19 = v70;
    v18 = v71;
    v20 = v95;
    if (v71)
    {
      goto LABEL_52;
    }

LABEL_11:
    sub_1B1D7C5EC();
    if (v20)
    {
      goto LABEL_57;
    }

LABEL_12:
    sub_1B1D7C5EC();
    v21 = v72;
    if (v72)
    {
      goto LABEL_62;
    }

LABEL_13:
    sub_1B1D7C5EC();
    v22 = v73;
    if (v73)
    {
      goto LABEL_67;
    }

    goto LABEL_14;
  }

  v31 = v0[11];
  v32 = v0[14];
  v33 = v0[15];
  v5 = *v0;
  v6 = v0[1];
  v8 = v0[2];
  v7 = v0[3];
  v10 = v0[5];
  v9 = v0[6];
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v5, v6);

  if (v6 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  v12 = v64;
  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v9)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v5, v6, v8, v7, v1);
  v3 = v32;
  v4 = v33;
  v11 = v31;
  if (!v31)
  {
    goto LABEL_5;
  }

LABEL_20:
  sub_1B1D7C5EC();
  v13 = v66;
  v14 = v67;
  sub_1B1D7C5EC();
  sub_1B1C91B94(v75, v12);

  if (v12 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v34)
  {
    sub_1B1D7BE7C();
    v25 = v74;
    v24 = v75;
    v26 = v12;
    v27 = v35;
  }

  else
  {
    v24 = v75;
    v26 = v12;
    v27 = v35;
    v25 = v74;
  }

  sub_1B1D0D630(v24, v26, v27, v25, v11);
  v15 = v65;
  if (!v67)
  {
    goto LABEL_6;
  }

LABEL_26:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v3, v4);

  if (v4 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v15)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v3, v4, v37, v13, v14);
  v16 = v68;
  if (!v68)
  {
    goto LABEL_7;
  }

LABEL_31:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v76, v40);

  if (v40 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v39)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v76, v40, v41, v42, v16);
  v17 = v69;
  if (!v105)
  {
    goto LABEL_8;
  }

LABEL_36:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v77, v99);

  if (v99 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v44)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v77, v99, v17, v78, v105);
  if (!v106)
  {
    goto LABEL_9;
  }

LABEL_41:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v79, v100);

  if (v100 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v96)
  {
    sub_1B1D7BE7C();
    v28 = v79;
    v29 = v100;
    v30 = v80;
  }

  else
  {
    v28 = v79;
    v30 = v80;
    v29 = v100;
  }

  sub_1B1D0D630(v28, v29, v30, v46, v106);
  if (!v94)
  {
    goto LABEL_10;
  }

LABEL_47:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v81, v82);

  if (v82 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v48)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v81, v82, v49, v50, v94);
  v19 = v70;
  v20 = v95;
  v18 = v71;
  if (!v71)
  {
    goto LABEL_11;
  }

LABEL_52:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v83, v101);

  if (v101 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v52)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v83, v101, v19, v84, v18);
  v20 = v95;
  if (!v95)
  {
    goto LABEL_12;
  }

LABEL_57:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v85, v102);

  if (v102 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v97)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v85, v102, v86, v54, v20);
  v21 = v72;
  if (!v72)
  {
    goto LABEL_13;
  }

LABEL_62:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v87, v103);

  if (v103 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v98)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v87, v103, v88, v56, v21);
  v22 = v73;
  if (v73)
  {
LABEL_67:
    sub_1B1D7C5EC();
    sub_1B1D7C5EC();
    sub_1B1C91B94(v89, v104);

    if (v104 >> 60 != 15)
    {
      sub_1B1D7B4FC();
    }

    sub_1B1D2E888();
    sub_1B1D7BE7C();
    if (v59)
    {
      sub_1B1D7C5EC();
      sub_1B1D7BE7C();
      sub_1B1D0D630(v89, v104, v90, v60, v22);
      if (v107)
      {
        goto LABEL_71;
      }
    }

    else
    {
      sub_1B1D7C5EC();
      sub_1B1D0D630(v89, v104, v90, v60, v22);
      if (v107)
      {
        goto LABEL_71;
      }
    }

    return sub_1B1D7C5EC();
  }

LABEL_14:
  sub_1B1D7C5EC();
  if (!v107)
  {
    return sub_1B1D7C5EC();
  }

LABEL_71:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v91, v62);

  if (v62 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v58)
  {
    sub_1B1D7BE7C();
  }

  return sub_1B1D0D630(v91, v62, v92, v93, v107);
}

uint64_t ASImportableCredential.Passport.hashValue.getter()
{
  sub_1B1D7C5CC();
  ASImportableCredential.Passport.hash(into:)();
  return sub_1B1D7C61C();
}

uint64_t ASImportableCredential.Passport.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775AF0, &qword_1B1D88F10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1B1D66B30();
  sub_1B1D7C62C();
  if (v2)
  {
    v106 = v2;
    v95 = 0;
    v92 = 0;
    v90 = 0;
    v84 = 0;
    v85 = 0;
    v76 = 0;
    v77 = 0;
    v66 = 0;
    v67 = 0;
    v61 = 0;
    v62 = 0;
    v86 = 0;
    v71 = 0;
    v72 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v53 = 0;
    v54 = 0;
    v80 = 0;
    v81 = 0;
    v74 = 0;
    v75 = 0;
    v69 = 0;
    v70 = 0;
    v63 = 0;
    v64 = 0;
    v51 = 0;
    v52 = 0;
    v65 = 0;
    v55 = 0;
    v88 = 0;
    v89 = 0;
    v82 = 0;
    v83 = 0;
    v78 = 0;
    v79 = 0;
    v73 = 0;
    v68 = 0;
    v60 = 0;
    v93 = 0;
    v91 = 0uLL;
    v87 = 0;
    v98 = 0uLL;
    v97 = 0uLL;
    v96 = 0uLL;
    v94 = 0;
    v102 = 0uLL;
    v101 = 0;
    v100 = 0uLL;
    v99 = 0uLL;
    v48 = 0;
    v105 = 0;
    v104 = 0uLL;
    v103 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v46 = 0;
    v19 = 0;
    v49 = 0u;
    v50 = 0u;
  }

  else
  {
    LOBYTE(v107[0]) = 0;
    sub_1B1D6644C();
    sub_1B1D7C3FC();
    v21 = *&v115[8];
    v42 = *v115;
    v43 = *&v115[16];
    v44 = *&v115[32];
    v45 = *&v115[40];
    sub_1B1D0D630(0, 0, 0, 0, 0);
    LOBYTE(v107[0]) = 1;
    sub_1B1D7C3FC();
    v46 = v21;
    v40 = a2;
    v41 = *v115;
    v103 = *&v115[16];
    v104 = *&v115[24];
    v48 = *&v115[48];
    v22 = *&v115[40];
    sub_1B1D0D630(0, 0, 0, 0, 0);
    LOBYTE(v107[0]) = 2;
    sub_1B1D7C3FC();
    v105 = v22;
    v99 = *v115;
    v100 = *&v115[16];
    v101 = *&v115[32];
    v102 = *&v115[40];
    sub_1B1D0D630(0, 0, 0, 0, 0);
    LOBYTE(v107[0]) = 3;
    sub_1B1D7C3FC();
    v96 = *&v115[8];
    v94 = *v115;
    v97 = *&v115[24];
    v98 = *&v115[40];
    sub_1B1D0D630(0, 0, 0, 0, 0);
    LOBYTE(v107[0]) = 4;
    sub_1B1D7C3FC();
    v82 = *&v115[8];
    v79 = *v115;
    v87 = *&v115[16];
    v89 = *&v115[24];
    v91 = *&v115[32];
    v93 = *&v115[48];
    sub_1B1D0D630(0, 0, 0, 0, 0);
    LOBYTE(v107[0]) = 5;
    sub_1B1D7C3FC();
    v64 = *&v115[8];
    v60 = *v115;
    v68 = *&v115[16];
    v73 = *&v115[24];
    v78 = *&v115[32];
    v88 = *&v115[48];
    v83 = *&v115[40];
    sub_1B1D0D630(0, 0, 0, 0, 0);
    LOBYTE(v107[0]) = 6;
    sub_1B1D7C3FC();
    v55 = *&v115[8];
    v51 = *v115;
    v59 = *&v115[16];
    v65 = *&v115[24];
    v70 = *&v115[32];
    v80 = *&v115[48];
    v74 = *&v115[40];
    sub_1B1D0D630(0, 0, 0, 0, 0);
    LOBYTE(v107[0]) = 7;
    sub_1B1D7C3FC();
    v54 = *&v115[8];
    v52 = *v115;
    v57 = *&v115[16];
    v63 = *&v115[24];
    v69 = *&v115[32];
    v81 = *&v115[48];
    v75 = *&v115[40];
    sub_1B1D0D630(0, 0, 0, 0, 0);
    LOBYTE(v107[0]) = 8;
    sub_1B1D7C3FC();
    v106 = 0;
    v58 = *&v115[8];
    v53 = *v115;
    v66 = *&v115[16];
    v72 = *&v115[24];
    v85 = *&v115[32];
    v50 = *&v115[40];
    sub_1B1D0D630(0, 0, 0, 0, 0);
    LOBYTE(v107[0]) = 9;
    v23 = v106;
    sub_1B1D7C3FC();
    v106 = v23;
    if (v23)
    {
      (*(v6 + 8))(v9, v5);
      v95 = 0;
      v92 = 0;
      v90 = 0;
      v84 = 0;
      v76 = 0;
      v77 = 0;
      v67 = 0;
      v61 = 0;
      v62 = 0;
      v86 = 0;
      v71 = 0;
      v56 = 0;
      v49 = 0u;
    }

    else
    {
      v49 = *v115;
      v56 = *&v115[16];
      v62 = *&v115[24];
      v71 = *&v115[32];
      v86 = *&v115[48];
      v77 = *&v115[40];
      sub_1B1D0D630(0, 0, 0, 0, 0);
      LOBYTE(v107[0]) = 10;
      v24 = v106;
      sub_1B1D7C3FC();
      v106 = v24;
      if (v24)
      {
        (*(v6 + 8))(v9, v5);
        v95 = 0;
        v92 = 0;
        v90 = 0;
        v84 = 0;
        v76 = 0;
        v67 = 0;
        v61 = 0;
      }

      else
      {
        v67 = *&v115[8];
        v61 = *v115;
        v76 = *&v115[16];
        v84 = *&v115[24];
        v90 = *&v115[32];
        v95 = *&v115[48];
        v92 = *&v115[40];
        sub_1B1D0D630(0, 0, 0, 0, 0);
        v179 = 11;
        v25 = v106;
        sub_1B1D7C3FC();
        v106 = v25;
        if (!v25)
        {
          (*(v6 + 8))(v9, v5);
          v38 = v109;
          v39 = v108;
          v36 = v111;
          v37 = v110;
          v34 = v113;
          v35 = v112;
          v33 = v114;
          sub_1B1D0D630(0, 0, 0, 0, 0);
          *(&v107[30] + 8) = v50;
          *(&v107[31] + 8) = v49;
          v27 = v42;
          v26 = v43;
          *&v107[0] = v42;
          *(&v107[0] + 1) = v21;
          v107[1] = v43;
          v29 = *(&v43 + 1);
          v28 = v44;
          *&v107[2] = v44;
          v30 = v45;
          *(&v107[2] + 8) = v45;
          *(&v107[3] + 8) = v41;
          *(&v107[4] + 1) = v103;
          v107[5] = v104;
          *&v107[6] = v105;
          v31 = v48;
          *(&v107[6] + 1) = v48;
          v107[7] = v99;
          v107[8] = v100;
          *&v107[9] = v101;
          *(&v107[9] + 8) = v102;
          *(&v107[10] + 1) = v94;
          v107[11] = v96;
          v107[12] = v97;
          v107[13] = v98;
          *&v107[14] = v79;
          *(&v107[14] + 1) = v82;
          *&v107[15] = v87;
          *(&v107[15] + 1) = v89;
          v107[16] = v91;
          *&v107[17] = v93;
          *(&v107[17] + 1) = v60;
          *&v107[18] = v64;
          *(&v107[18] + 1) = v68;
          *&v107[19] = v73;
          *(&v107[19] + 1) = v78;
          *&v107[20] = v83;
          *(&v107[20] + 1) = v88;
          *&v107[21] = v51;
          *(&v107[21] + 1) = v55;
          *&v107[22] = v59;
          *(&v107[22] + 1) = v65;
          *&v107[23] = v70;
          *(&v107[23] + 1) = v74;
          *&v107[24] = v80;
          *(&v107[24] + 1) = v52;
          *&v107[25] = v54;
          *(&v107[25] + 1) = v57;
          *&v107[26] = v63;
          *(&v107[26] + 1) = v69;
          *&v107[27] = v75;
          *(&v107[27] + 1) = v81;
          *&v107[28] = v53;
          *(&v107[28] + 1) = v58;
          *&v107[29] = v66;
          *(&v107[29] + 1) = v72;
          *&v107[30] = v85;
          *(&v107[32] + 1) = v56;
          *&v107[33] = v62;
          *(&v107[33] + 1) = v71;
          *&v107[34] = v77;
          *(&v107[34] + 1) = v86;
          *&v107[35] = v61;
          *(&v107[35] + 1) = v67;
          *&v107[36] = v76;
          *(&v107[36] + 1) = v84;
          *&v107[37] = v90;
          *(&v107[37] + 1) = v92;
          *&v107[38] = v95;
          *(&v107[38] + 1) = v39;
          *&v107[39] = v38;
          *(&v107[39] + 1) = v37;
          *&v107[40] = v36;
          *(&v107[40] + 1) = v35;
          *&v107[41] = v34;
          *(&v107[41] + 1) = v33;
          memcpy(v40, v107, 0x2A0uLL);
          sub_1B1D66BB4(v107, v115);
          __swift_destroy_boxed_opaque_existential_1Tm(v47);
          *v115 = v27;
          *&v115[8] = v21;
          *&v115[16] = v26;
          *&v115[24] = v29;
          *&v115[32] = v28;
          *&v115[40] = v30;
          v116 = v41;
          v117 = v103;
          v118 = v104;
          v119 = v105;
          v120 = v31;
          v121 = v99;
          v122 = v100;
          v123 = v101;
          v124 = v102;
          v125 = v94;
          v126 = v96;
          v127 = v97;
          v128 = v98;
          v129 = v79;
          v130 = v82;
          v131 = v87;
          v132 = v89;
          v133 = v91;
          v134 = v93;
          v135 = v60;
          v136 = v64;
          v137 = v68;
          v138 = v73;
          v139 = v78;
          v140 = v83;
          v141 = v88;
          v142 = v51;
          v143 = v55;
          v144 = v59;
          v145 = v65;
          v146 = v70;
          v147 = v74;
          v148 = v80;
          v149 = v52;
          v150 = v54;
          v151 = v57;
          v152 = v63;
          v153 = v69;
          v154 = v75;
          v155 = v81;
          v156 = v53;
          v157 = v58;
          v158 = v66;
          v159 = v72;
          v161 = v50;
          v162 = v49;
          v160 = v85;
          v163 = v56;
          v164 = v62;
          v165 = v71;
          v166 = v77;
          v167 = v86;
          v168 = v61;
          v169 = v67;
          v170 = v76;
          v171 = v84;
          v172 = v90;
          v173 = v92;
          v174 = v95;
          *&v175 = v39;
          *(&v175 + 1) = v38;
          *&v176 = v37;
          *(&v176 + 1) = v36;
          *&v177 = v35;
          *(&v177 + 1) = v34;
          v178 = v33;
          return sub_1B1D66B84(v115);
        }

        (*(v6 + 8))(v9, v5);
      }
    }

    v14 = *(&v45 + 1);
    v15 = v45;
    v17 = *(&v43 + 1);
    v16 = v44;
    v19 = v42;
    v18 = v43;
    v12 = *(&v41 + 1);
    v13 = v41;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  *v115 = v19;
  *&v115[8] = v46;
  *&v115[16] = v18;
  *&v115[24] = v17;
  *&v115[32] = v16;
  *&v115[40] = v15;
  *&v115[48] = v14;
  *&v116 = v13;
  *(&v116 + 1) = v12;
  v117 = v103;
  v118 = v104;
  v119 = v105;
  v120 = v48;
  v121 = v99;
  v122 = v100;
  v123 = v101;
  v124 = v102;
  v125 = v94;
  v126 = v96;
  v127 = v97;
  v128 = v98;
  v129 = v79;
  v130 = v82;
  v131 = v87;
  v132 = v89;
  v133 = v91;
  v134 = v93;
  v135 = v60;
  v136 = v64;
  v137 = v68;
  v138 = v73;
  v139 = v78;
  v140 = v83;
  v141 = v88;
  v142 = v51;
  v143 = v55;
  v144 = v59;
  v145 = v65;
  v146 = v70;
  v147 = v74;
  v148 = v80;
  v149 = v52;
  v150 = v54;
  v151 = v57;
  v152 = v63;
  v153 = v69;
  v154 = v75;
  v155 = v81;
  v156 = v53;
  v157 = v58;
  v158 = v66;
  v159 = v72;
  v161 = v50;
  v162 = v49;
  v160 = v85;
  v163 = v56;
  v164 = v62;
  v165 = v71;
  v166 = v77;
  v167 = v86;
  v168 = v61;
  v169 = v67;
  v170 = v76;
  v171 = v84;
  v172 = v90;
  v173 = v92;
  v174 = v95;
  v176 = 0u;
  v177 = 0u;
  v175 = 0u;
  v178 = 0;
  return sub_1B1D66B84(v115);
}

uint64_t sub_1B1D4E190()
{
  sub_1B1D7C5CC();
  ASImportableCredential.Passport.hash(into:)();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D4E1D4()
{
  sub_1B1D7C5CC();
  ASImportableCredential.Passport.hash(into:)();
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D4E308@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[42];
  v3 = v1[43];
  v4 = v1[44];
  v5 = v1[45];
  v6 = v1[46];
  v7 = v1[47];
  v8 = v1[48];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 sub_1B1D4E330(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[47];
  v5 = v1[48];
  sub_1B1D0D630(v1[42], v1[43], v1[44], v1[45], v1[46]);
  v6 = *(a1 + 16);
  *(v1 + 21) = *a1;
  *(v1 + 22) = v6;
  result = v8;
  *(v1 + 23) = v8;
  v1[48] = v3;
  return result;
}

uint64_t sub_1B1D4E3B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[49];
  v3 = v1[50];
  v4 = v1[51];
  v5 = v1[52];
  v6 = v1[53];
  v7 = v1[54];
  v8 = v1[55];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 sub_1B1D4E3E0(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[54];
  v5 = v1[55];
  sub_1B1D0D630(v1[49], v1[50], v1[51], v1[52], v1[53]);
  v6 = *(a1 + 16);
  *(v1 + 49) = *a1;
  *(v1 + 51) = v6;
  result = v8;
  *(v1 + 53) = v8;
  v1[55] = v3;
  return result;
}

uint64_t sub_1B1D4E478@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[56];
  v3 = v1[57];
  v4 = v1[58];
  v5 = v1[59];
  v6 = v1[60];
  v7 = v1[61];
  v8 = v1[62];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B1D66328(v2, v3, v4, v5, v6);
}

__n128 sub_1B1D4E4A0(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1[61];
  v5 = v1[62];
  sub_1B1D0D630(v1[56], v1[57], v1[58], v1[59], v1[60]);
  v6 = *(a1 + 16);
  *(v1 + 28) = *a1;
  *(v1 + 29) = v6;
  result = v8;
  *(v1 + 30) = v8;
  v1[62] = v3;
  return result;
}

__n128 sub_1B1D4E530@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v47 = *(a1 + 32);
  v46 = *(a1 + 48);
  v19 = (a9 + 344);
  v48 = *a2;
  v49 = a2[6];
  v50 = a2[5];
  v51 = *a3;
  v52 = a3[6];
  v53 = a3[5];
  v54 = *a4;
  v55 = a4[6];
  v56 = a4[5];
  v57 = *a5;
  v58 = a5[6];
  v59 = a5[5];
  v62 = a6[5];
  v60 = *a6;
  v61 = a6[6];
  v65 = *a7;
  v67 = a7[6];
  v68 = a7[5];
  v71 = *a8;
  *(a9 + 496) = 0;
  *(a9 + 464) = 0u;
  *(a9 + 480) = 0u;
  *(a9 + 432) = 0u;
  *(a9 + 448) = 0u;
  *(a9 + 400) = 0u;
  *(a9 + 416) = 0u;
  *(a9 + 368) = 0u;
  *(a9 + 384) = 0u;
  *(a9 + 336) = 0u;
  *(a9 + 352) = 0u;
  *(a9 + 304) = 0u;
  *(a9 + 320) = 0u;
  *(a9 + 272) = 0u;
  *(a9 + 288) = 0u;
  *(a9 + 240) = 0u;
  *(a9 + 256) = 0u;
  *(a9 + 208) = 0u;
  *(a9 + 224) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 128) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0u;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *a9 = 0u;
  v63 = a8[6];
  v64 = a8[5];
  v66 = *a10;
  v69 = a10[6];
  v70 = a10[5];
  sub_1B1D0D630(0, 0, 0, 0, 0);
  v20 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v20;
  *(a9 + 32) = v47;
  *(a9 + 48) = v46;
  v21 = *(a9 + 96);
  v22 = *(a9 + 104);
  sub_1B1D0D630(*(a9 + 56), *(a9 + 64), *(a9 + 72), *(a9 + 80), *(a9 + 88));
  *(a9 + 56) = v48;
  v23 = *(a2 + 3);
  *(a9 + 64) = *(a2 + 1);
  *(a9 + 80) = v23;
  *(a9 + 96) = v50;
  *(a9 + 104) = v49;
  v24 = *(a9 + 152);
  v25 = *(a9 + 160);
  sub_1B1D0D630(*(a9 + 112), *(a9 + 120), *(a9 + 128), *(a9 + 136), *(a9 + 144));
  *(a9 + 112) = v51;
  v26 = *(a3 + 1);
  *(a9 + 136) = *(a3 + 3);
  *(a9 + 120) = v26;
  *(a9 + 152) = v53;
  *(a9 + 160) = v52;
  v27 = *(a9 + 208);
  v28 = *(a9 + 216);
  sub_1B1D0D630(*(a9 + 168), *(a9 + 176), *(a9 + 184), *(a9 + 192), *(a9 + 200));
  *(a9 + 168) = v54;
  v29 = *(a4 + 3);
  *(a9 + 176) = *(a4 + 1);
  *(a9 + 192) = v29;
  *(a9 + 208) = v56;
  *(a9 + 216) = v55;
  v30 = *(a9 + 264);
  v31 = *(a9 + 272);
  sub_1B1D0D630(*(a9 + 224), *(a9 + 232), *(a9 + 240), *(a9 + 248), *(a9 + 256));
  *(a9 + 224) = v57;
  v32 = *(a5 + 1);
  *(a9 + 248) = *(a5 + 3);
  *(a9 + 232) = v32;
  *(a9 + 264) = v59;
  *(a9 + 272) = v58;
  v33 = *(a9 + 320);
  v34 = *(a9 + 328);
  sub_1B1D0D630(*(a9 + 280), *(a9 + 288), *(a9 + 296), *(a9 + 304), *(a9 + 312));
  *(a9 + 280) = v60;
  v35 = *(a6 + 3);
  *(a9 + 288) = *(a6 + 1);
  *(a9 + 304) = v35;
  *(a9 + 320) = v62;
  *(a9 + 328) = v61;
  v36 = *(a9 + 376);
  v37 = *(a9 + 384);
  sub_1B1D0D630(*(a9 + 336), *(a9 + 344), *(a9 + 352), *(a9 + 360), *(a9 + 368));
  *(a9 + 336) = v65;
  v38 = *(a7 + 3);
  *v19 = *(a7 + 1);
  *(a9 + 360) = v38;
  *(a9 + 376) = v68;
  *(a9 + 384) = v67;
  v39 = *(a9 + 432);
  v40 = *(a9 + 440);
  sub_1B1D0D630(*(a9 + 392), *(a9 + 400), *(a9 + 408), *(a9 + 416), *(a9 + 424));
  *(a9 + 392) = v71;
  v41 = *(a8 + 3);
  *(a9 + 400) = *(a8 + 1);
  *(a9 + 416) = v41;
  *(a9 + 432) = v64;
  *(a9 + 440) = v63;
  v42 = *(a9 + 488);
  v43 = *(a9 + 496);
  sub_1B1D0D630(*(a9 + 448), *(a9 + 456), *(a9 + 464), *(a9 + 472), *(a9 + 480));
  *(a9 + 448) = v66;
  result = *(a10 + 1);
  v45 = *(a10 + 3);
  *(a9 + 456) = result;
  *(a9 + 472) = v45;
  *(a9 + 488) = v70;
  *(a9 + 496) = v69;
  return result;
}

uint64_t sub_1B1D4E850(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656C746974;
    v6 = 0x666E496E65766967;
    if (a1 != 2)
    {
      v6 = 0x326E65766967;
    }

    if (a1)
    {
      v5 = 0x6E65766967;
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
    v1 = 0x32656D616E727573;
    v2 = 0x69746E6564657263;
    if (a1 != 7)
    {
      v2 = 0x69746172656E6567;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x50656D616E727573;
    if (a1 != 4)
    {
      v3 = 0x656D616E727573;
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

uint64_t sub_1B1D4E98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1D6CE10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1D4E9B4(uint64_t a1)
{
  v2 = sub_1B1D66BEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D4E9F0(uint64_t a1)
{
  v2 = sub_1B1D66BEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1D4EA70(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v117 = a4;
  v118 = a5;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v120 = *(v116 - 8);
  v7 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v55 - v8;
  v9 = v5[1];
  v114 = *v5;
  v10 = v5[2];
  v11 = v5[3];
  v12 = v5[4];
  v13 = v5[5];
  v14 = v5[6];
  v111 = v5[7];
  v112 = v14;
  v15 = v5[8];
  v109 = v5[9];
  v110 = v15;
  v16 = v5[10];
  v107 = v5[11];
  v108 = v16;
  v17 = v5[13];
  v106 = v5[12];
  v105 = v17;
  v18 = v5[15];
  v104 = v5[14];
  v103 = v18;
  v19 = v5[17];
  v102 = v5[16];
  v101 = v19;
  v20 = v5[19];
  v100 = v5[18];
  v99 = v20;
  v21 = v5[21];
  v98 = v5[20];
  v91 = v21;
  v22 = v5[23];
  v92 = v5[22];
  v93 = v22;
  v23 = v5[25];
  v94 = v5[24];
  v97 = v23;
  v24 = v5[27];
  v96 = v5[26];
  v95 = v24;
  v25 = v5[29];
  v84 = v5[28];
  v85 = v25;
  v26 = v5[31];
  v86 = v5[30];
  v87 = v26;
  v27 = v5[33];
  v90 = v5[32];
  v89 = v27;
  v28 = v5[35];
  v88 = v5[34];
  v77 = v28;
  v29 = v5[37];
  v78 = v5[36];
  v79 = v29;
  v30 = v5[39];
  v83 = v5[38];
  v82 = v30;
  v31 = v5[41];
  v81 = v5[40];
  v80 = v31;
  v32 = v5[43];
  v70 = v5[42];
  v71 = v32;
  v33 = v5[45];
  v72 = v5[44];
  v76 = v33;
  v34 = v5[47];
  v75 = v5[46];
  v74 = v34;
  v35 = v5[49];
  v73 = v5[48];
  v63 = v35;
  v36 = v5[51];
  v64 = v5[50];
  v65 = v36;
  v37 = v5[53];
  v69 = v5[52];
  v68 = v37;
  v38 = v5[55];
  v67 = v5[54];
  v66 = v38;
  v39 = v5[57];
  v56 = v5[56];
  v57 = v39;
  v40 = v5[59];
  v58 = v5[58];
  v59 = v40;
  v41 = v5[61];
  v60 = v5[60];
  v62 = v41;
  v61 = v5[62];
  v42 = a1[3];
  v113 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  v43 = v114;
  v44 = sub_1B1D66328(v114, v9, v10, v11, v12);
  v117(v44);
  v45 = v115;
  v46 = v116;
  sub_1B1D7C63C();
  v121 = v43;
  v122 = v9;
  v123 = v10;
  v124 = v11;
  v125 = v12;
  v126 = v13;
  v127 = v112;
  v128 = 0;
  v47 = sub_1B1D663C8();
  v48 = v119;
  sub_1B1D7C48C();
  if (v48)
  {
    sub_1B1D0D630(v121, v122, v123, v124, v125);
    return (*(v120 + 8))(v45, v46);
  }

  else
  {
    v50 = v101;
    v51 = v102;
    v52 = v103;
    v53 = v104;
    v54 = v120;
    sub_1B1D0D630(v121, v122, v123, v124, v125);
    v121 = v111;
    v122 = v110;
    v123 = v109;
    v124 = v108;
    v125 = v107;
    v126 = v106;
    v127 = v105;
    v128 = 1;
    sub_1B1D66328(v111, v110, v109, v108, v107);
    v119 = v47;
    sub_1B1D7C48C();
    sub_1B1D0D630(v121, v122, v123, v124, v125);
    v121 = v53;
    v122 = v52;
    v123 = v51;
    v124 = v50;
    v125 = v100;
    v126 = v99;
    v127 = v98;
    v128 = 2;
    sub_1B1D66328(v53, v52, v51, v50, v100);
    sub_1B1D7C48C();
    sub_1B1D0D630(v121, v122, v123, v124, v125);
    v121 = v91;
    v122 = v92;
    v123 = v93;
    v124 = v94;
    v125 = v97;
    v126 = v96;
    v127 = v95;
    v128 = 3;
    sub_1B1D66328(v91, v92, v93, v94, v97);
    sub_1B1D7C48C();
    sub_1B1D0D630(v121, v122, v123, v124, v125);
    v121 = v84;
    v122 = v85;
    v123 = v86;
    v124 = v87;
    v125 = v90;
    v126 = v89;
    v127 = v88;
    v128 = 4;
    sub_1B1D66328(v84, v85, v86, v87, v90);
    sub_1B1D7C48C();
    sub_1B1D0D630(v121, v122, v123, v124, v125);
    v121 = v77;
    v122 = v78;
    v123 = v79;
    v124 = v83;
    v125 = v82;
    v126 = v81;
    v127 = v80;
    v128 = 5;
    sub_1B1D66328(v77, v78, v79, v83, v82);
    sub_1B1D7C48C();
    sub_1B1D0D630(v121, v122, v123, v124, v125);
    v121 = v70;
    v122 = v71;
    v123 = v72;
    v124 = v76;
    v125 = v75;
    v126 = v74;
    v127 = v73;
    v128 = 6;
    sub_1B1D66328(v70, v71, v72, v76, v75);
    sub_1B1D7C48C();
    sub_1B1D0D630(v121, v122, v123, v124, v125);
    v121 = v63;
    v122 = v64;
    v123 = v65;
    v124 = v69;
    v125 = v68;
    v126 = v67;
    v127 = v66;
    v128 = 7;
    sub_1B1D66328(v63, v64, v65, v69, v68);
    sub_1B1D7C48C();
    sub_1B1D0D630(v121, v122, v123, v124, v125);
    v121 = v56;
    v122 = v57;
    v123 = v58;
    v124 = v59;
    v125 = v60;
    v126 = v62;
    v127 = v61;
    v128 = 8;
    sub_1B1D66328(v56, v57, v58, v59, v60);
    sub_1B1D7C48C();
    sub_1B1D0D630(v121, v122, v123, v124, v125);
    return (*(v54 + 8))(v45, v46);
  }
}

uint64_t sub_1B1D4F2FC()
{
  v1 = v0[4];
  v2 = v0[7];
  v3 = v0[8];
  v26 = v0[9];
  v27 = v0[10];
  v4 = v0[11];
  v5 = v0[13];
  v6 = v0[18];
  v33 = v0[19];
  v28 = v0[12];
  v29 = v0[20];
  v70 = v0[22];
  v7 = v0[23];
  v50 = v0[24];
  v51 = v0[25];
  v35 = v0[26];
  v71 = v0[29];
  v60 = v0[30];
  v52 = v0[31];
  v53 = v0[32];
  v37 = v0[33];
  v61 = v0[35];
  v72 = v0[36];
  v38 = v0[37];
  v54 = v0[39];
  v40 = v0[40];
  v68 = v0[41];
  v62 = v0[42];
  v73 = v0[43];
  v41 = v0[44];
  v42 = v0[45];
  v55 = v0[46];
  v43 = v0[47];
  v69 = v0[48];
  v74 = v0[50];
  v63 = v0[49];
  v64 = v0[51];
  v46 = v0[52];
  v56 = v0[53];
  v47 = v0[54];
  v45 = v0[55];
  v66 = v0[58];
  v67 = v0[59];
  v75 = v0[60];
  v48 = v0[57];
  v49 = v0[61];
  v44 = v0[62];
  v65 = v0[56];
  v39 = v0[38];
  v59 = v0[28];
  v36 = v0[34];
  v58 = v0[21];
  v34 = v0[27];
  v31 = v0[16];
  v32 = v0[17];
  v30 = v0[15];
  v57 = v0[14];
  if (!v1)
  {
    sub_1B1D7C5EC();
    if (v4)
    {
      goto LABEL_17;
    }

LABEL_5:
    sub_1B1D7C5EC();
    v14 = v51;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

  v22 = v0[13];
  v23 = v0[7];
  v24 = v0[8];
  v25 = v0[18];
  v8 = *v0;
  v9 = v0[1];
  v10 = v0[2];
  v11 = v0[3];
  v12 = v0[5];
  v13 = v0[6];
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v8, v9);

  if (v9 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v13)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v8, v9, v10, v11, v1);
  v6 = v25;
  v2 = v23;
  v3 = v24;
  v5 = v22;
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_17:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v2, v3);

  if (v3 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  v14 = v51;
  sub_1B1D2E888();
  sub_1B1D7BE7C();
  if (v5)
  {
    sub_1B1D7C5EC();
    sub_1B1D7BE7C();
    sub_1B1D0D630(v2, v3, v26, v27, v4);
    if (!v6)
    {
LABEL_6:
      sub_1B1D7C5EC();
      v15 = v52;
      v16 = v50;
      if (!v14)
      {
        goto LABEL_7;
      }

      goto LABEL_28;
    }
  }

  else
  {
    sub_1B1D7C5EC();
    sub_1B1D0D630(v2, v3, v26, v27, v4);
    if (!v6)
    {
      goto LABEL_6;
    }
  }

LABEL_23:
  sub_1B1D7C5EC();
  v16 = v50;
  sub_1B1D7C5EC();
  sub_1B1C91B94(v57, v30);

  if (v30 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v29)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v57, v30, v31, v32, v6);
  v15 = v52;
  if (!v14)
  {
LABEL_7:
    sub_1B1D7C5EC();
    v17 = v53;
    if (!v53)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_28:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v58, v70);

  if (v70 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v34)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v58, v70, v7, v16, v14);
  v17 = v53;
  if (!v53)
  {
LABEL_8:
    sub_1B1D7C5EC();
    v18 = v54;
    if (!v54)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_33:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v59, v71);

  if (v71 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v36)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v59, v71, v60, v15, v17);
  v18 = v54;
  if (!v54)
  {
LABEL_9:
    sub_1B1D7C5EC();
    v19 = v55;
    if (!v55)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_38:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v61, v72);

  if (v72 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v68)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v61, v72, v38, v39, v18);
  v19 = v55;
  if (!v55)
  {
LABEL_10:
    sub_1B1D7C5EC();
    v20 = v56;
    if (!v56)
    {
      goto LABEL_11;
    }

LABEL_48:
    sub_1B1D7C5EC();
    sub_1B1D7C5EC();
    sub_1B1C91B94(v63, v74);

    if (v74 >> 60 != 15)
    {
      sub_1B1D7B4FC();
    }

    sub_1B1D2E888();
    sub_1B1D7BE7C();
    if (v45)
    {
      sub_1B1D7C5EC();
      sub_1B1D7BE7C();
      sub_1B1D0D630(v63, v74, v64, v46, v20);
      if (!v75)
      {
        return sub_1B1D7C5EC();
      }
    }

    else
    {
      sub_1B1D7C5EC();
      sub_1B1D0D630(v63, v74, v64, v46, v20);
      if (!v75)
      {
        return sub_1B1D7C5EC();
      }
    }

    goto LABEL_52;
  }

LABEL_43:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v62, v73);

  if (v73 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v69)
  {
    sub_1B1D7BE7C();
  }

  sub_1B1D0D630(v62, v73, v41, v42, v19);
  v20 = v56;
  if (v56)
  {
    goto LABEL_48;
  }

LABEL_11:
  sub_1B1D7C5EC();
  if (!v75)
  {
    return sub_1B1D7C5EC();
  }

LABEL_52:
  sub_1B1D7C5EC();
  sub_1B1D7C5EC();
  sub_1B1C91B94(v65, v48);

  if (v48 >> 60 != 15)
  {
    sub_1B1D7B4FC();
  }

  sub_1B1D2E888();
  sub_1B1D7BE7C();
  sub_1B1D7C5EC();
  if (v44)
  {
    sub_1B1D7BE7C();
  }

  return sub_1B1D0D630(v65, v48, v66, v67, v75);
}