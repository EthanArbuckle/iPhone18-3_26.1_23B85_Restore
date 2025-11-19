uint64_t _s14descr2A243C641C15SettingsContentVMa()
{
  result = qword_2A1A241D0;
  if (!qword_2A1A241D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D87B708()
{
  sub_29D9346E8();
  if (v0 <= 0x3F)
  {
    sub_29D87D764(319, &qword_2A1A241E0, &_s14descr2A243C641C15SettingsContentV6HeaderVN, MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      sub_29D87D764(319, &qword_2A1A241E8, &_s14descr2A243C641C15SettingsContentV6FooterVN, MEMORY[0x29EDC9C68]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t _s14descr2A243C641C15SettingsContentV11SwitchStateVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *_s14descr2A243C641C15SettingsContentV11SwitchStateVwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_29D87B98C(void *a1)
{
  sub_29D87E314(0, &qword_2A17B6EC8, sub_29D87E2C0, &_s14descr2A243C641C15SettingsContentV11SwitchStateV10CodingKeysON, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3, v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D87E2C0();
  sub_29D93AED8();
  v14 = 0;
  sub_29D93ACF8();
  if (!v1)
  {
    v13 = 1;
    sub_29D93ACF8();
  }

  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_29D87BB18()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0x64656C62616E65;
  }

  *v0;
  return result;
}

uint64_t sub_29D87BB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v6 || (sub_29D93AD78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000029D96A3B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29D93AD78();

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

uint64_t sub_29D87BC3C(uint64_t a1)
{
  v2 = sub_29D87E2C0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D87BC78(uint64_t a1)
{
  v2 = sub_29D87E2C0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D87BCB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D87DC8C(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_29D87BCEC(void *a1)
{
  v2 = *v1;
  v1[1];
  return sub_29D87B98C(a1);
}

uint64_t sub_29D87BD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6554726564616568 && a2 == 0xEA00000000007478)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29D93AD78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29D87BDF0(uint64_t a1)
{
  v2 = sub_29D87E26C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D87BE2C(uint64_t a1)
{
  v2 = sub_29D87E26C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D87BE68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  sub_29D87E314(0, &qword_2A17B6EA0, sub_29D87E26C, &_s14descr2A243C641C15SettingsContentV6HeaderV10CodingKeysON, MEMORY[0x29EDC9E80]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4, v8);
  v10 = &v17 - v9;
  v11 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D87E26C();
  sub_29D93AEC8();
  if (v2)
  {
    return sub_29D69417C(a1);
  }

  v12 = v18;
  v13 = sub_29D93AC58();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  result = sub_29D69417C(a1);
  *v12 = v13;
  v12[1] = v15;
  return result;
}

uint64_t sub_29D87C018(void *a1)
{
  sub_29D87E314(0, &qword_2A17B6EB0, sub_29D87E26C, &_s14descr2A243C641C15SettingsContentV6HeaderV10CodingKeysON, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3, v7);
  v9 = &v14 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D87E26C();
  sub_29D93AED8();
  sub_29D93ACE8();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_29D87C180(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_29D93AD78();
  }
}

uint64_t sub_29D87C1B0(void *a1)
{
  v3 = v1;
  sub_29D87E314(0, &qword_2A17B6E98, sub_29D87E218, &_s14descr2A243C641C15SettingsContentV6FooterV10CodingKeysON, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v11 = &v20 - v10;
  v12 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D87E218();
  sub_29D93AED8();
  v13 = *v3;
  v14 = v3[1];
  v23 = 0;
  sub_29D93ACE8();
  if (!v2)
  {
    v15 = v3[2];
    v16 = v3[3];
    v22 = 1;
    sub_29D93ACB8();
    v17 = v3[4];
    v18 = v3[5];
    v21 = 2;
    sub_29D93ACB8();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_29D87C35C(void *a1)
{
  v3 = v1;
  sub_29D87E314(0, &qword_2A17B6E68, sub_29D87D95C, &_s14descr2A243C641C15SettingsContentV10CodingKeysON, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v11 = v21 - v10;
  v12 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D87D95C();
  sub_29D93AED8();
  LOBYTE(v21[0]) = 0;
  sub_29D9346E8();
  sub_29D87D9B0(&qword_2A17B1D68);
  sub_29D93AD18();
  if (!v2)
  {
    v13 = _s14descr2A243C641C15SettingsContentVMa();
    v14 = (v3 + v13[5]);
    v15 = *v14;
    LOBYTE(v14) = v14[1];
    LOBYTE(v21[0]) = v15;
    BYTE1(v21[0]) = v14;
    v22 = 1;
    sub_29D87DAF0();
    sub_29D93AD18();
    v16 = (v3 + v13[6]);
    v17 = *v16;
    LOBYTE(v16) = v16[1];
    LOBYTE(v21[0]) = v17;
    BYTE1(v21[0]) = v16;
    v22 = 2;
    sub_29D93AD18();
    v21[0] = *(v3 + v13[7]);
    v22 = 3;
    sub_29D87DB44();
    sub_29D93ACD8();
    v18 = (v3 + v13[8]);
    v19 = v18[1];
    v21[0] = *v18;
    v21[1] = v19;
    v21[2] = v18[2];
    v22 = 4;
    sub_29D87DB98();
    sub_29D93ACD8();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_29D87C640@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_29D9346E8();
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D87E314(0, &qword_2A17B6E40, sub_29D87D95C, &_s14descr2A243C641C15SettingsContentV10CodingKeysON, MEMORY[0x29EDC9E80]);
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v29 - v10;
  v12 = _s14descr2A243C641C15SettingsContentVMa();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D87D95C();
  v35 = v11;
  v18 = v36;
  sub_29D93AEC8();
  if (v18)
  {
    return sub_29D69417C(a1);
  }

  v19 = v31;
  LOBYTE(v37) = 0;
  sub_29D87D9B0(&qword_2A17B1D10);
  v20 = v32;
  sub_29D93AC88();
  (*(v19 + 32))(v16, v20, v3);
  v40 = 1;
  sub_29D87D9F4();
  sub_29D93AC88();
  v21 = BYTE1(v37);
  v22 = &v16[v12[5]];
  *v22 = v37;
  v22[1] = v21;
  v40 = 2;
  sub_29D93AC88();
  v23 = BYTE1(v37);
  v24 = &v16[v12[6]];
  *v24 = v37;
  v24[1] = v23;
  v40 = 3;
  sub_29D87DA48();
  sub_29D93AC48();
  v25 = v33;
  *&v16[v12[7]] = v37;
  v40 = 4;
  sub_29D87DA9C();
  sub_29D93AC48();
  (*(v25 + 8))(v35, v34);
  v26 = &v16[v12[8]];
  v27 = v38;
  *v26 = v37;
  *(v26 + 1) = v27;
  *(v26 + 2) = v39;
  sub_29D6E5560(v16, v30);
  sub_29D69417C(a1);
  return sub_29D6E5644(v16);
}

uint64_t sub_29D87CB08()
{
  v1 = 0x694C7265746F6F66;
  if (*v0 != 1)
  {
    v1 = 0x4C52556B6E696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65547265746F6F66;
  }
}

uint64_t sub_29D87CB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D87DE6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D87CB90(uint64_t a1)
{
  v2 = sub_29D87E218();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D87CBCC(uint64_t a1)
{
  v2 = sub_29D87E218();

  return MEMORY[0x2A1C73280](a1, v2);
}

double sub_29D87CC08@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29D87DF94(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_29D87CC64(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_29D87D4B8(v7, v8) & 1;
}

unint64_t sub_29D87CCAC()
{
  v1 = *v0;
  v2 = 0x5365727574616566;
  v3 = 0x726564616568;
  if (v1 != 3)
  {
    v3 = 0x7265746F6F66;
  }

  if (v1 == 2)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = v3;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_29D87CD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D87E7DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D87CD88(uint64_t a1)
{
  v2 = sub_29D87D95C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D87CDC4(uint64_t a1)
{
  v2 = sub_29D87D95C();

  return MEMORY[0x2A1C73280](a1, v2);
}

BOOL sub_29D87CE34(uint64_t a1, uint64_t a2)
{
  if ((sub_29D9346D8() & 1) == 0)
  {
    return 0;
  }

  v4 = _s14descr2A243C641C15SettingsContentVMa();
  result = 0;
  v6 = v4[5];
  v7 = a1 + v6;
  v8 = *(a1 + v6);
  v9 = (a2 + v6);
  if (v8 == *v9 && ((*(v7 + 1) ^ v9[1]) & 1) == 0)
  {
    result = 0;
    v10 = v4[6];
    v11 = a1 + v10;
    v12 = *(a1 + v10);
    v13 = (a2 + v10);
    if (v12 == *v13 && ((*(v11 + 1) ^ v13[1]) & 1) == 0)
    {
      v14 = v4[7];
      v15 = (a1 + v14);
      v16 = *(a1 + v14 + 8);
      v17 = (a2 + v14);
      v18 = v17[1];
      if (v16)
      {
        if (!v18)
        {
          return 0;
        }

        if (*v15 != *v17 || v16 != v18)
        {
          v20 = v4;
          v21 = sub_29D93AD78();
          v4 = v20;
          if ((v21 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v18)
      {
        return 0;
      }

      v22 = v4[8];
      v23 = *(a1 + v22);
      v24 = *(a1 + v22 + 8);
      v25 = *(a1 + v22 + 24);
      v47 = *(a1 + v22 + 16);
      v26 = *(a1 + v22 + 32);
      v27 = *(a1 + v22 + 40);
      v28 = (a2 + v22);
      v29 = *v28;
      v30 = v28[1];
      v31 = v28[2];
      v32 = v28[3];
      v33 = v28[4];
      v34 = v28[5];
      if (v24)
      {
        if (v30)
        {
          v44 = v26;
          if (v23 == v29 && v24 == v30)
          {
            goto LABEL_20;
          }

          v35 = v24;
          v36 = v27;
          v37 = v23;
          v38 = v25;
          v39 = sub_29D93AD78();
          v25 = v38;
          v23 = v37;
          v27 = v36;
          v24 = v35;
          if (v39)
          {
LABEL_20:
            if (v25)
            {
              if (!v32)
              {
                sub_29D87DBEC(v29, v30);
                sub_29D87DBEC(v23, v24);
                goto LABEL_36;
              }

              if ((v47 != v31 || v25 != v32) && (sub_29D93AD78() & 1) == 0)
              {
                sub_29D87DBEC(v29, v30);
                sub_29D87DBEC(v23, v24);

LABEL_36:

LABEL_40:

                v40 = v23;
                v41 = v24;
                goto LABEL_41;
              }

              goto LABEL_29;
            }

            if (!v32)
            {
LABEL_29:
              if (v27)
              {
                if (!v34)
                {
                  sub_29D87DBEC(v29, v30);
                  sub_29D87DBEC(v23, v24);

                  goto LABEL_40;
                }

                if (v44 == v33 && v27 == v34)
                {
                  sub_29D87DBEC(v29, v30);
                  sub_29D87DBEC(v23, v24);

                  v42 = v23;
                  v43 = v24;
LABEL_47:
                  sub_29D87DC3C(v42, v43);
                  return 1;
                }

                v46 = sub_29D93AD78();
                sub_29D87DBEC(v29, v30);
                sub_29D87DBEC(v23, v24);

                sub_29D87DC3C(v23, v24);
                return (v46 & 1) != 0;
              }

              if (!v34)
              {
                sub_29D87DBEC(v29, v30);
                sub_29D87DBEC(v23, v24);

                v42 = v23;
                v43 = v24;
                goto LABEL_47;
              }
            }
          }

          sub_29D87DBEC(v29, v30);
          sub_29D87DBEC(v23, v24);

          v40 = v23;
          v41 = v24;
          goto LABEL_41;
        }
      }

      else if (!v30)
      {
        return 1;
      }

      v45 = *v28;
      sub_29D87DBEC(*v28, v28[1]);
      sub_29D87DBEC(v23, v24);
      sub_29D87DC3C(v23, v24);
      v40 = v45;
      v41 = v30;
LABEL_41:
      sub_29D87DC3C(v40, v41);
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D87D4B8(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_29D93AD78() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_29D93AD78() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (v9 && (a1[4] == a2[4] && v8 == v9 || (sub_29D93AD78() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v9)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_29D87D57C()
{
  sub_29D87D764(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D93F680;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = sub_29D9334A8();
  *(v0 + 40) = v1;
  v2 = sub_29D9334A8();
  v4 = v3;

  *(v0 + 48) = v2;
  *(v0 + 56) = v4;
  sub_29D87D764(0, &qword_2A17B3628, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
  sub_29D738398();
  v5 = sub_29D939CA8();

  return v5;
}

void sub_29D87D764(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D87D7B4()
{
  sub_29D87D764(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D93F680;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = sub_29D9334A8();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_29D9334A8();
  *(v0 + 56) = v2;
  sub_29D87D764(0, &qword_2A17B3628, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
  sub_29D738398();
  v3 = sub_29D939CA8();

  return v3;
}

unint64_t sub_29D87D95C()
{
  result = qword_2A17B6E48;
  if (!qword_2A17B6E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E48);
  }

  return result;
}

uint64_t sub_29D87D9B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29D9346E8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D87D9F4()
{
  result = qword_2A17B6E50;
  if (!qword_2A17B6E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E50);
  }

  return result;
}

unint64_t sub_29D87DA48()
{
  result = qword_2A17B6E58;
  if (!qword_2A17B6E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E58);
  }

  return result;
}

unint64_t sub_29D87DA9C()
{
  result = qword_2A17B6E60;
  if (!qword_2A17B6E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E60);
  }

  return result;
}

unint64_t sub_29D87DAF0()
{
  result = qword_2A17B6E70;
  if (!qword_2A17B6E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E70);
  }

  return result;
}

unint64_t sub_29D87DB44()
{
  result = qword_2A17B6E78;
  if (!qword_2A17B6E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E78);
  }

  return result;
}

unint64_t sub_29D87DB98()
{
  result = qword_2A17B6E80;
  if (!qword_2A17B6E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E80);
  }

  return result;
}

uint64_t sub_29D87DBEC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29D935E88();
    sub_29D935E88();

    return sub_29D935E88();
  }

  return result;
}

uint64_t sub_29D87DC3C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_29D87DC8C(uint64_t *a1)
{
  sub_29D87E314(0, &qword_2A17B6EB8, sub_29D87E2C0, &_s14descr2A243C641C15SettingsContentV11SwitchStateV10CodingKeysON, MEMORY[0x29EDC9E80]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3, v7);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D87E2C0();
  sub_29D93AEC8();
  if (v1)
  {
    return sub_29D69417C(a1);
  }

  v17 = 0;
  v11 = sub_29D93AC68();
  v16 = 1;
  v13 = sub_29D93AC68();
  (*(v5 + 8))(v9, v4);
  sub_29D69417C(a1);
  if (v13)
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 0xFFFFFFFE | v11 & 1;
}

uint64_t sub_29D87DE6C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65547265746F6F66 && a2 == 0xEA00000000007478 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x694C7265746F6F66 && a2 == 0xEA00000000006B6ELL || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C52556B6E696CLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_29D93AD78();

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

uint64_t sub_29D87DF94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  sub_29D87E314(0, &qword_2A17B6E88, sub_29D87E218, &_s14descr2A243C641C15SettingsContentV6FooterV10CodingKeysON, MEMORY[0x29EDC9E80]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4, v8);
  v10 = &v24 - v9;
  v11 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D87E218();
  sub_29D93AEC8();
  if (v2)
  {
    return sub_29D69417C(a1);
  }

  v12 = v6;
  v13 = v27;
  v30 = 0;
  v14 = sub_29D93AC58();
  v16 = v15;
  v26 = v14;
  v29 = 1;
  v24 = sub_29D93AC28();
  v25 = v17;
  v28 = 2;
  v18 = sub_29D93AC28();
  v19 = v10;
  v21 = v20;
  (*(v12 + 8))(v19, v5);
  result = sub_29D69417C(a1);
  *v13 = v26;
  v13[1] = v16;
  v23 = v25;
  v13[2] = v24;
  v13[3] = v23;
  v13[4] = v18;
  v13[5] = v21;
  return result;
}

unint64_t sub_29D87E218()
{
  result = qword_2A17B6E90;
  if (!qword_2A17B6E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E90);
  }

  return result;
}

unint64_t sub_29D87E26C()
{
  result = qword_2A17B6EA8;
  if (!qword_2A17B6EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6EA8);
  }

  return result;
}

unint64_t sub_29D87E2C0()
{
  result = qword_2A17B6EC0;
  if (!qword_2A17B6EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6EC0);
  }

  return result;
}

void sub_29D87E314(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_29D87E3C0()
{
  result = qword_2A17B6ED0;
  if (!qword_2A17B6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6ED0);
  }

  return result;
}

unint64_t sub_29D87E418()
{
  result = qword_2A17B6ED8;
  if (!qword_2A17B6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6ED8);
  }

  return result;
}

unint64_t sub_29D87E470()
{
  result = qword_2A17B6EE0;
  if (!qword_2A17B6EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6EE0);
  }

  return result;
}

unint64_t sub_29D87E4C8()
{
  result = qword_2A17B6EE8;
  if (!qword_2A17B6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6EE8);
  }

  return result;
}

unint64_t sub_29D87E520()
{
  result = qword_2A17B6EF0;
  if (!qword_2A17B6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6EF0);
  }

  return result;
}

unint64_t sub_29D87E578()
{
  result = qword_2A17B6EF8;
  if (!qword_2A17B6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6EF8);
  }

  return result;
}

unint64_t sub_29D87E5D0()
{
  result = qword_2A17B6F00;
  if (!qword_2A17B6F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6F00);
  }

  return result;
}

unint64_t sub_29D87E628()
{
  result = qword_2A17B6F08;
  if (!qword_2A17B6F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6F08);
  }

  return result;
}

unint64_t sub_29D87E680()
{
  result = qword_2A17B6F10;
  if (!qword_2A17B6F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6F10);
  }

  return result;
}

unint64_t sub_29D87E6D8()
{
  result = qword_2A17B6F18;
  if (!qword_2A17B6F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6F18);
  }

  return result;
}

unint64_t sub_29D87E730()
{
  result = qword_2A17B6F20;
  if (!qword_2A17B6F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6F20);
  }

  return result;
}

unint64_t sub_29D87E788()
{
  result = qword_2A17B6F28;
  if (!qword_2A17B6F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6F28);
  }

  return result;
}

uint64_t sub_29D87E7DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000029D96A370 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5365727574616566 && a2 == 0xED00006863746977 || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000029D96A390 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (sub_29D93AD78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_29D93AD78();

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

uint64_t sub_29D87E99C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_29D9346E8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8 = MEMORY[0x2A1C7C4A8](v4, v7);
  v36 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v13 = v34 - v12;
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v34 - v15;
  v17 = sub_29D934798();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6CBC0C();
  v23 = sub_29D934758();
  (*(v18 + 8))(v22, v17);
  if (v23)
  {
    v34[0] = objc_opt_self();
    v24 = [v34[0] isBradycardiaDetectionEnabled];
    v25 = v5[13];
    v34[1] = v23;
    v35 = a1;
    if (v24)
    {
      v26 = *MEMORY[0x29EDC1760];
      v25(v16, v26, v4);
    }

    else
    {
      v25(v16, *MEMORY[0x29EDC1768], v4);
      v26 = *MEMORY[0x29EDC1760];
    }

    v25(v13, v26, v4);
    v28 = sub_29D9346D8();
    v29 = v5[1];
    v29(v13, v4);
    v29(v16, v4);
    sub_29D6CBCA0(v28 & 1);
    if ([v34[0] isBradycardiaDetectionEnabled])
    {
      v30 = v26;
    }

    else
    {
      v30 = *MEMORY[0x29EDC1768];
    }

    v31 = v36;
    v25(v36, v30, v4);
    sub_29D9347C8();
    sub_29D9347A8();
    v29(v31, v4);
    a1 = v35;
    sub_29D9368E8();
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v32 = sub_29D9368F8();
  return (*(*(v32 - 8) + 56))(a1, v27, 1, v32);
}

uint64_t sub_29D87ED68@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() isBradycardiaDetectionEnabled];
  v3 = sub_29D9346E8();
  v4 = *(*(v3 - 8) + 104);
  v5 = MEMORY[0x29EDC1760];
  if (!v2)
  {
    v5 = MEMORY[0x29EDC1768];
  }

  v6 = *v5;

  return v4(a1, v6, v3);
}

id sub_29D87EE30()
{
  v0 = objc_opt_self();
  if (![v0 isBradycardiaDetectionEnabled])
  {
    return 0;
  }

  v1 = [v0 bradycardiaThresholdHeartRate];
  v2 = [objc_opt_self() _countPerMinuteUnit];
  v3 = [objc_opt_self() quantityWithUnit:v2 doubleValue:v1];

  return v3;
}

void sub_29D87EEE8(void *a1)
{
  [a1 _beatsPerMinute];
  v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
  [objc_opt_self() setBradycardiaThresholdHeartRate_];
}

id sub_29D87EF6C()
{
  v0 = objc_opt_self();

  return [v0 setBradycardiaThresholdHeartRate_];
}

uint64_t sub_29D87EFA8(uint64_t a1, uint64_t a2)
{
  sub_29D6945AC(a2 + 16, v5);
  sub_29D693E2C(v5, v5[3]);
  sub_29D936808();
  sub_29D69417C(v5);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(a2 + 64);
    swift_getObjectType();
    sub_29D9367C8();
    return sub_29D936978();
  }

  return result;
}

uint64_t sub_29D87F040(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_29D87F094()
{
  sub_29D69417C((v0 + 16));
  sub_29D68B77C(v0 + 56);
  sub_29D68B77C(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_29D87F14C()
{
  sub_29D744388(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v5 = v34 - v4;
  sub_29D7061EC(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v6, v10);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D706220();
  v35 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7062B4();
  v20 = *(v19 - 8);
  v36 = v19;
  v37 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v0 + qword_2A17B6F30);
  swift_beginAccess();
  sub_29D744388(0, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);
  sub_29D9383A8();
  swift_endAccess();
  sub_29D8809E8(&qword_2A1A249F0, sub_29D7061EC);
  sub_29D938548();
  (*(v8 + 8))(v12, v7);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v26 = sub_29D93A468();
  v38 = v26;
  v27 = sub_29D93A448();
  (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
  sub_29D8809E8(&qword_2A17B2A18, sub_29D706220);
  sub_29D706380();
  v28 = v35;
  sub_29D938538();
  sub_29D7339C0(v5);

  (*(v14 + 8))(v18, v28);
  swift_allocObject();
  v29 = v34[1];
  swift_unknownObjectWeakInit();
  sub_29D8809E8(&qword_2A17B2A28, sub_29D7062B4);
  v30 = v36;
  v31 = sub_29D938588();

  (*(v37 + 8))(v24, v30);
  v32 = *(v29 + qword_2A17B6F38);
  *(v29 + qword_2A17B6F38) = v31;
}

uint64_t sub_29D87F624()
{
  v1 = *(v0 + qword_2A17B6F30);

  v2 = *(v0 + qword_2A17B6F38);
}

uint64_t sub_29D87F67C(uint64_t a1)
{
  v2 = *(a1 + qword_2A17B6F30);

  v3 = *(a1 + qword_2A17B6F38);
}

uint64_t sub_29D87F7A0()
{
  v1 = *(v0 + qword_2A17B6F68);
}

id sub_29D87F7F8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D87F838(uint64_t a1)
{
  v2 = *(a1 + qword_2A17B6F68);
}

id sub_29D87F88C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  sub_29D744388(0, &qword_2A17B1FF0, MEMORY[0x29EDC1C10], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = v22 - v9;
  *(v3 + qword_2A17B6F38) = 0;
  v11 = [objc_allocWithZone(MEMORY[0x29EDBABF8]) initWithHealthStore_];
  v12 = type metadata accessor for BradycardiaFeatureStatusAvailability();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v3 + qword_2A17B6F30) = sub_29D9320E4(v11);
  v15 = type metadata accessor for BradycardiaThresholdSpecifierConfiguration();
  swift_allocObject();

  v17 = sub_29D7428F0(v16);
  sub_29D6CBBE8();
  v18 = sub_29D934C58();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v10, a2, v18);
  (*(v19 + 56))(v10, 0, 1, v18);
  v22[4] = v15;
  v22[5] = sub_29D8809E8(&qword_2A17B6F88, type metadata accessor for BradycardiaThresholdSpecifierConfiguration);
  v22[1] = v17;

  v20 = sub_29D936E88();
  sub_29D87F14C();

  (*(v19 + 8))(a2, v18);
  return v20;
}

char *sub_29D87FB10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_29D934C58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a2, v6);
  v12 = objc_allocWithZone(type metadata accessor for BradycardiaSettingsDataSource(0));
  v13 = sub_29D87F88C(a1, v11);
  v14 = qword_2A17B6F60;
  *(v3 + qword_2A17B6F60) = v13;
  v15 = v13;
  sub_29D936EB8();

  type metadata accessor for BradycardiaSettingsViewControllerDelegate();
  v16 = swift_allocObject();
  *(v16 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v16 + 80) = 0;
  swift_unknownObjectWeakInit();
  sub_29D679D3C(&v29, v16 + 16);
  *(v3 + qword_2A17B6F68) = v16;
  v17 = *(v3 + v14);
  sub_29D8809E8(&qword_2A17B6F80, type metadata accessor for BradycardiaSettingsViewControllerDelegate);

  v18 = v17;
  v19 = sub_29D9365D8();
  sub_29D6CBB5C();
  v20 = sub_29D939D28();

  [v19 setTitle_];

  v21 = qword_2A17B6F68;
  v22 = *&v19[qword_2A17B6F68];
  v23 = *&v19[qword_2A17B6F60];

  v24 = v23;
  sub_29D936E98();
  v26 = v25;

  *(v22 + 64) = v26;
  swift_unknownObjectWeakAssign();

  sub_29D936978();
  *(*&v19[v21] + 80) = MEMORY[0x29EDC2810];
  swift_unknownObjectWeakAssign();
  sub_29D9365E8();

  (*(v7 + 8))(a2, v6);
  return v19;
}

uint64_t sub_29D87FDF4()
{
  v0 = objc_opt_self();
  if ([v0 isBradycardiaDetectionEnabled])
  {
    v1 = [v0 bradycardiaThresholdHeartRate];
    v2 = [objc_opt_self() _countPerMinuteUnit];
    v3 = [objc_opt_self() quantityWithUnit:v2 doubleValue:v1];

    [v3 _beatsPerMinute];
    v5 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
    v6 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
    sub_29D8EFDF0(v5, v6);

    v7 = sub_29D939D28();

    v8 = [v0 bradycardiaHeartThresholdFooterDescriptionWithThresholdValue_];

    v9 = sub_29D939D68();
  }

  else
  {
    v10 = sub_29D939D28();
    v8 = [v0 bradycardiaHeartThresholdFooterDescriptionWithThresholdValue_];

    v9 = sub_29D939D68();
  }

  return v9;
}

uint64_t sub_29D87FFC0()
{
  v0 = [objc_opt_self() bradycardiaHeartRateOptions];
  sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
  v1 = sub_29D939F38();

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x29EDCA190];
  }

  v2 = sub_29D93A928();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v14 = MEMORY[0x29EDCA190];
  result = sub_29D93AAD8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = objc_opt_self();
    v5 = objc_opt_self();
    v6 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x29ED6AE30](v6, v1);
      }

      else
      {
        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      [v7 doubleValue];
      v10 = v9;
      v11 = [v4 _countPerMinuteUnit];
      v12 = [v5 quantityWithUnit:v11 doubleValue:v10];

      sub_29D93AAB8();
      v13 = *(v14 + 16);
      sub_29D93AAE8();
      sub_29D93AAF8();
      sub_29D93AAC8();
    }

    while (v2 != v6);

    return v14;
  }

  return result;
}

uint64_t sub_29D8801B0(uint64_t a1)
{
  v2 = v1;
  swift_unknownObjectRetain();
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
LABEL_56:
    sub_29D936978();
    aBlock = 0;
    v63 = 0xE000000000000000;
    sub_29D93AA18();

    aBlock = 0xD000000000000021;
    v63 = 0x800000029D96A580;
    v68 = a1;
    swift_unknownObjectRetain();
    v56 = sub_29D939DA8();
    MEMORY[0x29ED6A240](v56);

    result = sub_29D93AB28();
    __break(1u);
    return result;
  }

  v5 = v4;
  v6 = [v4 identifier];
  if (v6)
  {
    v7 = v6;
    v8 = sub_29D939D68();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  sub_29D936918();
  v11 = sub_29D936908();
  if (v10)
  {
    if (v8 == v11 && v10 == v12)
    {

LABEL_11:
      sub_29D6945AC((v2 + 2), &aBlock);
      sub_29D693E2C(&aBlock, v65);
      sub_29D936818();
      sub_29D69417C(&aBlock);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = v2[8];
        swift_getObjectType();
        sub_29D9367B8();
        sub_29D936978();
      }

      return sub_29D936978();
    }

    v13 = sub_29D93AD78();

    if (v13)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v57[2] = a1;
  v15 = v2[5];
  v16 = sub_29D693E2C(v2 + 2, v15);
  v57[1] = v57;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16, v16);
  v20 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20);
  v21 = sub_29D9367D8();
  (*(v17 + 8))(v20, v15);
  if (v21 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
  {
    v23 = 0;
    v60 = v21 & 0xFFFFFFFFFFFFFF8;
    v61 = v21 & 0xC000000000000001;
    v58 = i;
    v59 = v5;
    while (1)
    {
      if (v61)
      {
        v24 = MEMORY[0x29ED6AE30](v23, v21);
      }

      else
      {
        if (v23 >= *(v60 + 16))
        {
          goto LABEL_49;
        }

        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      v27 = [v5 identifier];
      if (v27)
      {
        v28 = v27;
        v29 = sub_29D939D68();
        v31 = v30;
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      v32 = v2;
      sub_29D6945AC((v2 + 2), &aBlock);
      a1 = v65;
      sub_29D693E2C(&aBlock, v65);
      v33 = sub_29D9367E8();
      if (v31)
      {
        if (v29 == v33 && v31 == v34)
        {

          sub_29D69417C(&aBlock);

          goto LABEL_34;
        }

        a1 = sub_29D93AD78();

        sub_29D69417C(&aBlock);
        if (a1)
        {

LABEL_34:
          [v25 _beatsPerMinute];
          if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v35 > -9.22337204e18)
          {
            if (v35 < 9.22337204e18)
            {
              v36 = v35;
              if ([objc_opt_self() bradycardiaWarningThreshold] > v35)
              {
LABEL_40:
                sub_29D6945AC((v2 + 2), &aBlock);
                sub_29D693E2C(&aBlock, v65);
                sub_29D936808();
                sub_29D69417C(&aBlock);
                if (swift_unknownObjectWeakLoadStrong())
                {
                  v48 = v32[8];
                  swift_getObjectType();
                  sub_29D9367B8();
                  sub_29D936978();
                }
              }

              else
              {
                v37 = v2;
                v38 = v2[5];
                v39 = v2[6];
                v40 = sub_29D693E2C(v37 + 2, v38);
                v41 = *(v38 - 8);
                v42 = *(v41 + 64);
                MEMORY[0x2A1C7C4A8](v40, v40);
                v44 = v57 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v41 + 16))(v44);
                v45 = sub_29D9367F8();
                (*(v41 + 8))(v44, v38);
                if (v45)
                {
                  sub_29D69567C(0, &qword_2A17B4700, 0x29EDBACF8);
                  v46 = v25;
                  v47 = sub_29D93A708();

                  v2 = v32;
                  if (v47)
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                  v2 = v32;
                }

                v49 = objc_opt_self();
                v50 = swift_allocObject();
                *(v50 + 16) = v2;
                *(v50 + 24) = v25;
                v66 = sub_29D8809C8;
                v67 = v50;
                aBlock = MEMORY[0x29EDCA5F8];
                v63 = 1107296256;
                v64 = sub_29D87F040;
                v65 = &unk_2A244AA30;
                v51 = _Block_copy(&aBlock);
                v25 = v25;

                v52 = [v49 hkhr:v36 bradycardiaConfirmationControllerWithValue:v51 confirmHandler:0 cancelHandler:?];
                _Block_release(v51);
                if (swift_unknownObjectWeakLoadStrong())
                {
                  v53 = v32[10];
                  swift_getObjectType();
                  v54 = sub_29D936F08();
                  sub_29D936978();
                  [v54 presentViewController:v52 animated:1 completion:0];
                }
              }

              return sub_29D936978();
            }

            goto LABEL_55;
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }
      }

      else
      {

        sub_29D69417C(&aBlock);
      }

      ++v23;
      v5 = v59;
      if (v26 == v58)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

LABEL_51:

  return sub_29D936978();
}

uint64_t sub_29D8809D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D8809E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D880A30@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29D937B88();
  v3 = MEMORY[0x29EDC7800];
  a1[3] = v2;
  a1[4] = v3;
  sub_29D693F78(a1);
  sub_29D937B38();
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D937B48();
  v4 = [objc_opt_self() hk_appTintColor];
  v5 = sub_29D937A98();
  sub_29D937A68();
  return v5(v7, 0);
}

uint64_t sub_29D880B6C(uint64_t a1)
{
  v2 = sub_29D880EA0();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29D880BB8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_29D93AD78();
  }
}

uint64_t sub_29D880BE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_29D93AE58();
  sub_29D939E18();
  return sub_29D93AE98();
}

uint64_t sub_29D880C34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29D939E18();
}

uint64_t sub_29D880C3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_29D93AE58();
  sub_29D939E18();
  return sub_29D93AE98();
}

id sub_29D880C84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v10 = v2[4];
  a2[3] = a1;
  a2[4] = sub_29D880F50();
  v8 = swift_allocObject();
  *a2 = v8;
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v7;
  v8[5] = v6;
  v8[6] = v10;
  sub_29D935E88();
  sub_29D935E88();

  return v10;
}

uint64_t sub_29D880D24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = type metadata accessor for AFibBurdenPDFProvider();
  v4 = swift_allocObject();
  v4[2] = v2;
  v5 = sub_29D935EC8();
  v6 = v2;
  v7 = sub_29D935E98();
  v8 = MEMORY[0x29EDC24D0];
  v4[6] = v5;
  v4[7] = v8;
  v4[3] = v7;
  v9 = HKHRAFibBurdenLogForCategory();
  v10 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v9 healthDataSource:v6];

  v4[8] = v10;
  v12[3] = v3;
  v12[4] = sub_29D8812E0(&qword_2A17B6FA8, type metadata accessor for AFibBurdenPDFProvider);
  v12[0] = v4;
  sub_29D93A398();
  return sub_29D69417C(v12);
}

uint64_t sub_29D880E60(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  return sub_29D880FA4(a2);
}

unint64_t sub_29D880EA0()
{
  result = qword_2A17B6F90;
  if (!qword_2A17B6F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6F90);
  }

  return result;
}

unint64_t sub_29D880EFC()
{
  result = qword_2A17B6F98;
  if (!qword_2A17B6F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6F98);
  }

  return result;
}

unint64_t sub_29D880F50()
{
  result = qword_2A17B6FA0;
  if (!qword_2A17B6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6FA0);
  }

  return result;
}

uint64_t sub_29D880FA4(void *a1)
{
  v3 = sub_29D939968();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D939998();
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v24, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6FC794();
  v14 = sub_29D93A468();
  v15 = *v1;
  v27 = v1[1];
  v28 = v15;
  v16 = *(v1 + 4);
  v17 = swift_allocObject();
  v18 = v1[1];
  *(v17 + 24) = *v1;
  *(v17 + 16) = a1;
  *(v17 + 40) = v18;
  *(v17 + 56) = *(v1 + 4);
  aBlock[4] = sub_29D8812BC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A244AAD0;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  sub_29D738808(&v28, v25);
  sub_29D738808(&v27, v25);
  v21 = v16;

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D8812E0(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D6C2DFC(0);
  sub_29D8812E0(&qword_2A1A24980, sub_29D6C2DFC);
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v13, v8, v19);
  _Block_release(v19);

  (*(v4 + 8))(v8, v3);
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_29D8812C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D8812E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D8813F0(void *a1)
{
  v2 = [a1 healthDataSource];
  if (v2)
  {
    v3 = v2;
    v4 = sub_29D73F010(MEMORY[0x29EDCA190]);
    v5 = sub_29D8818C8();
    v6 = MEMORY[0x29EDC99B0];
    v39 = MEMORY[0x29EDC99B0];
    *&v38 = v5;
    *(&v38 + 1) = v7;
    sub_29D6940E0(&v38, v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v4;
    sub_29D69242C(v37, 0xD00000000000001BLL, 0x800000029D96A7B0, isUniquelyReferenced_nonNull_native);
    v9 = v40;
    v10 = sub_29D8819E4();
    v39 = v6;
    *&v38 = v10;
    *(&v38 + 1) = v11;
    sub_29D6940E0(&v38, v37);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v37, 0xD000000000000010, 0x800000029D96A7D0, v12);
    v40 = v9;
    v13 = HKHRAFibBurdenDetermineIsFocusModeOn();
    if (v13)
    {
      v14 = v13;
      v39 = sub_29D6B73CC();
      *&v38 = v14;
      sub_29D6940E0(&v38, v37);
      v15 = swift_isUniquelyReferenced_nonNull_native();
      sub_29D69242C(v37, 0x4D7375636F467369, 0xED00006E4F65646FLL, v15);
      v40 = v9;
    }

    else
    {
      sub_29D8C42F8(0x4D7375636F467369, 0xED00006E4F65646FLL, &v38);
      sub_29D6FE6B0(&v38);
    }

    v16 = *MEMORY[0x29EDBA380];
    v17 = sub_29D939D68();
    v19 = v18;
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v20 = sub_29D937898();
    v21 = sub_29D69C6C0(v20, qword_2A1A2BF28);
    type metadata accessor for AFibBurdenNotificationInteractionAnalyticsEvent();
    v22 = sub_29D93A308();
    v39 = v6;
    *&v38 = v22;
    *(&v38 + 1) = v23;
    sub_29D6940E0(&v38, v37);
    v24 = v40;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v37, v17, v19, v25);

    v40 = v24;
    v26 = *MEMORY[0x29EDBA378];
    v27 = sub_29D939D68();
    v29 = v28;
    v30 = [a1 environmentDataSource];
    v31 = sub_29D8A3AD8(v3, v30, v21);

    v39 = sub_29D6B73CC();
    *&v38 = v31;
    sub_29D6940E0(&v38, v37);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v37, v27, v29, v32);

    v40 = v24;
    v33 = sub_29D7DB5A8(v3, *MEMORY[0x29EDBA6B0], 0, v21);
    if (v34)
    {
      v39 = v6;
      *&v38 = v33;
      *(&v38 + 1) = v34;
      sub_29D6940E0(&v38, v37);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      sub_29D69242C(v37, 0x5665727574616566, 0xEE006E6F69737265, v35);
      sub_29D936978();
      return v24;
    }

    else
    {
      sub_29D8C42F8(0x5665727574616566, 0xEE006E6F69737265, &v38);
      sub_29D936978();
      sub_29D6FE6B0(&v38);
      return v40;
    }
  }

  else
  {
    result = sub_29D93AB28();
    __break(1u);
  }

  return result;
}

uint64_t sub_29D8818C8()
{
  v1 = 0x7461642077656976;
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *MEMORY[0x29EDBCCF8];
  if (sub_29D939D68() == v2 && v5 == v3)
  {
    goto LABEL_12;
  }

  v7 = sub_29D93AD78();

  if (v7)
  {
    return v1;
  }

  v1 = 0x7373696D736964;
  v8 = *MEMORY[0x29EDBCD00];
  if (sub_29D939D68() == v2 && v9 == v3)
  {
LABEL_12:

    return v1;
  }

  v11 = sub_29D93AD78();

  if ((v11 & 1) == 0)
  {
    v13 = *MEMORY[0x29EDBA3A8];
    return sub_29D939D68();
  }

  return v1;
}

uint64_t sub_29D8819E4()
{
  v1 = *(v0 + 16);
  v2 = [v1 content];
  v3 = [v2 categoryIdentifier];

  v4 = sub_29D939D68();
  v6 = v5;

  v7 = *MEMORY[0x29EDC5288];
  if (sub_29D939D68() == v4 && v8 == v6)
  {

LABEL_8:

    v11 = [v1 content];
    v12 = [v11 userInfo];

    v13 = sub_29D939C68();
    *&v22[0] = 0xD000000000000012;
    *(&v22[0] + 1) = 0x800000029D96A6F0;
    sub_29D93A9A8();
    if (*(v13 + 16) && (v14 = sub_29D6908F8(v23), (v15 & 1) != 0))
    {
      sub_29D694294(*(v13 + 56) + 32 * v14, v22);
      sub_29D69466C(v23);

      sub_29D6FE6B0(v22);
      return 0xD000000000000021;
    }

    else
    {

      sub_29D69466C(v23);
      memset(v22, 0, sizeof(v22));
      sub_29D6FE6B0(v22);
      return 0xD000000000000024;
    }
  }

  v10 = sub_29D93AD78();

  if (v10)
  {
    goto LABEL_8;
  }

  v17 = *MEMORY[0x29EDC5280];
  if (sub_29D939D68() == v4 && v18 == v6)
  {
  }

  else
  {
    v20 = sub_29D93AD78();

    if ((v20 & 1) == 0)
    {
      v21 = *MEMORY[0x29EDBA3A8];
      return sub_29D939D68();
    }
  }

  return 0xD000000000000010;
}

uint64_t sub_29D881C74()
{
  v1 = *(v0 + 32);

  sub_29D69417C((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t PromotionAvailabilityState.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000015;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x6E6564646968;
}

uint64_t sub_29D881D54(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6E6564646968;
  v3 = *a1;
  v4 = 0xE600000000000000;
  v5 = 0x800000029D9572F0;
  if (v3 == 1)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0x6E6564646968;
  }

  if (v3 == 1)
  {
    v4 = 0x800000029D9572F0;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (v3)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0x800000029D9572D0;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000015;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0x800000029D9572D0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_29D93AD78();
  }

  return v11 & 1;
}

uint64_t sub_29D881E2C()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D881ED8()
{
  *v0;
  *v0;
  sub_29D939E18();
}

uint64_t sub_29D881F70()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D882018@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s5Heart26PromotionAvailabilityStateO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_29D882048(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6564646968;
  if (v2 == 1)
  {
    v4 = 0xD000000000000014;
    v3 = 0x800000029D9572F0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (v5)
  {
    v3 = 0x800000029D9572D0;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_29D88217C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000029D96AA00 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_29D93AD78();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_29D882210(uint64_t a1)
{
  v2 = sub_29D88682C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D88224C(uint64_t a1)
{
  v2 = sub_29D88682C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t PromotionUserData.encode(to:)(void *a1, char a2)
{
  sub_29D8875CC(0, &qword_2A17B6FB0, MEMORY[0x29EDC9E88]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4, v8);
  v10 = &v13[-v9];
  v11 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D88682C();
  sub_29D93AED8();
  v13[15] = a2;
  sub_29D886880();
  sub_29D93AD18();
  return (*(v6 + 8))(v10, v5);
}

void *sub_29D8823F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D8868D4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_29D882494()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  return v1;
}

uint64_t sub_29D882514()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  return v1;
}

uint64_t sub_29D8825BC()
{
  sub_29D887064();
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_29D934648();
}

id sub_29D882658()
{
  [*&v0[OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_heartRhythmAvailability] removeHeartRhythmAvailabilityObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeartPromotionAvailability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D8828C8()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_irregularRhythmNotificationsStatusManager + 32);
  sub_29D693E2C((v0 + OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_irregularRhythmNotificationsStatusManager), *(v0 + OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_irregularRhythmNotificationsStatusManager + 24));
  sub_29D937258();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = ObjectType;
  sub_29D6B7D8C();
  sub_29D887518(&qword_2A1A22420, sub_29D6B7D8C);
  sub_29D938588();

  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();
}

uint64_t sub_29D882A2C(uint64_t a1)
{
  sub_29D886FC8(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v27 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v13 = sub_29D937898();
    sub_29D69C6C0(v13, qword_2A1A2C008);
    v14 = sub_29D937878();
    v15 = sub_29D93A2A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v16 = 136446210;
      v18 = sub_29D93AF08();
      v20 = sub_29D6C2364(v18, v19, &v27);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_29D677000, v14, v15, "[%{public}s]: Received IRN feature status update", v16, 0xCu);
      sub_29D69417C(v17);
      MEMORY[0x29ED6BE30](v17, -1, -1);
      MEMORY[0x29ED6BE30](v16, -1, -1);
    }

    v21 = sub_29D9371A8();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v10, a1, v21);
    (*(v22 + 56))(v10, 0, 1, v21);
    sub_29D887064();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29D6E8508(v10, v7);
    v27 = v12;
    v23 = v12;
    sub_29D934658();
    sub_29D8870E8(v10, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
    v24 = sub_29D884360(0);
    swift_getKeyPath();
    swift_getKeyPath();
    LOWORD(v27) = v24;
    v25 = v23;
    sub_29D9383D8();
    sub_29D883BDC();
    sub_29D883868();
    v26 = sub_29D884360(2);
    swift_getKeyPath();
    swift_getKeyPath();
    LOWORD(v27) = v26;
    return sub_29D9383D8();
  }

  return result;
}

uint64_t sub_29D882DD0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_hypertensionNotificationsFeatureStatusManager;
  swift_beginAccess();
  sub_29D7C0420(v1 + v3, v15);
  v4 = v16;
  if (!v16)
  {
    return sub_29D7C0518(v15);
  }

  v5 = sub_29D693E2C(v15, v16);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9);
  sub_29D7C0518(v15);
  v10 = sub_29D937258();
  (*(v6 + 8))(v9, v4);
  v14[1] = v10;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = ObjectType;
  sub_29D6B7D8C();
  sub_29D887518(&qword_2A1A22420, sub_29D6B7D8C);
  sub_29D938588();

  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();
}

void sub_29D883020(uint64_t a1)
{
  sub_29D886FC8(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v24 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v13 = sub_29D937898();
    sub_29D69C6C0(v13, qword_2A1A2C008);
    v14 = sub_29D937878();
    v15 = sub_29D93A2A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136446210;
      v18 = sub_29D93AF08();
      v20 = sub_29D6C2364(v18, v19, &v24);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_29D677000, v14, v15, "[%{public}s]: Hypertension Notifications promotion status did update", v16, 0xCu);
      sub_29D69417C(v17);
      MEMORY[0x29ED6BE30](v17, -1, -1);
      MEMORY[0x29ED6BE30](v16, -1, -1);
    }

    v21 = sub_29D9371A8();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v10, a1, v21);
    (*(v22 + 56))(v10, 0, 1, v21);
    sub_29D887064();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29D6E8508(v10, v7);
    v24 = v12;
    v23 = v12;
    sub_29D934658();
    sub_29D8870E8(v10, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
    sub_29D883BDC();
  }
}

uint64_t sub_29D883338()
{
  ObjectType = swift_getObjectType();
  sub_29D7C0420(v0 + OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_aFibBurdenFeatureStatusManager, v5);
  if (!v6)
  {
    return sub_29D7C0518(v5);
  }

  sub_29D693E2C(v5, v6);
  sub_29D937258();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = ObjectType;
  sub_29D6B7D8C();
  sub_29D887518(&qword_2A1A22420, sub_29D6B7D8C);
  sub_29D938588();

  sub_29D69417C(v5);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();
}

uint64_t sub_29D8834C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D886FC8(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v21 - v12;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v16, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = a3;
    v21 = 0;
    sub_29D9371C8();

    v17 = sub_29D9371A8();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v13, a1, v17);
    (*(v18 + 56))(v13, 0, 1, v17);
    sub_29D887064();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29D6E8508(v13, v10);
    v21 = v15;
    v19 = v15;
    sub_29D934658();
    sub_29D8870E8(v13, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
    sub_29D883868();
    v20 = sub_29D884360(2);
    swift_getKeyPath();
    swift_getKeyPath();
    LOWORD(v21) = v20;
    v19;
    sub_29D9383D8();
    LOWORD(v17) = sub_29D884360(0);
    swift_getKeyPath();
    swift_getKeyPath();
    LOWORD(v21) = v17;
    return sub_29D9383D8();
  }

  return result;
}

uint64_t sub_29D8837D4()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](0xD00000000000002ALL, 0x800000029D96AB20);
  return 91;
}

uint64_t sub_29D883868()
{
  sub_29D886FC8(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v5 = &v19 - v4;
  v6 = sub_29D9371A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D887064();
  swift_getKeyPath();
  swift_getKeyPath();
  v21[0] = v0;
  v12 = v0;
  sub_29D934648();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_29D8870E8(v5, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  }

  (*(v7 + 32))(v11, v5, v6);
  sub_29D7C0420(v12 + OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_aFibBurdenFeatureStatusManager, &v19);
  if (v20)
  {
    sub_29D6959E8(&v19, v21);
    sub_29D693E2C(v21, v21[3]);
    v14 = sub_29D937248();
    v15 = sub_29D883EC8(v11, 1, v14, 1);

    if (sub_29D884360(2) > 1u)
    {
      v17 = HIWORD(v15);
    }

    else
    {
      v16 = sub_29D93AD78();

      if (v16)
      {
        LOBYTE(v17) = BYTE2(v15);
      }

      else
      {
        LOBYTE(v17) = 2;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOWORD(v19) = v15;
    BYTE2(v19) = v17;
    BYTE3(v19) = HIBYTE(v15);
    v18 = v12;
    sub_29D9383D8();
    (*(v7 + 8))(v11, v6);
    return sub_29D69417C(v21);
  }

  else
  {
    (*(v7 + 8))(v11, v6);
    return sub_29D7C0518(&v19);
  }
}

uint64_t sub_29D883BDC()
{
  sub_29D886FC8(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v5 = &v18 - v4;
  v6 = sub_29D9371A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D887064();
  swift_getKeyPath();
  swift_getKeyPath();
  v21[0] = v0;
  v12 = v0;
  sub_29D934648();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_29D8870E8(v5, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  }

  (*(v7 + 32))(v11, v5, v6);
  v14 = OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_hypertensionNotificationsFeatureStatusManager;
  swift_beginAccess();
  sub_29D7C0420(v12 + v14, &v19);
  if (v20)
  {
    sub_29D6959E8(&v19, v21);
    sub_29D693E2C(v21, v21[3]);
    v15 = sub_29D937248();
    v16 = sub_29D883EC8(v11, 1, v15, 0);

    swift_getKeyPath();
    swift_getKeyPath();
    LODWORD(v19) = v16;
    v17 = v12;
    sub_29D9383D8();
    (*(v7 + 8))(v11, v6);
    return sub_29D69417C(v21);
  }

  else
  {
    (*(v7 + 8))(v11, v6);
    return sub_29D7C0518(&v19);
  }
}

uint64_t sub_29D883EC8(uint64_t a1, int a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *MEMORY[0x29EDBA578];
  v10 = sub_29D9371B8();
  v11 = [v10 areAllRequirementsSatisfied];

  v52 = a3;
  if (a4)
  {
    v12 = sub_29D937198();
    v13 = v11 | v12;
    if (!v11 || (v12 & 1) != 0)
    {
      goto LABEL_11;
    }

    if (a2)
    {
LABEL_5:
      v13 = 0;
      v14 = a2 << 24;
      v15 = sub_29D885180(a3) << 16;
      goto LABEL_16;
    }
  }

  else
  {
    if (a2)
    {
      v16 = v11;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      goto LABEL_5;
    }
  }

  v13 = 0;
LABEL_11:
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v17 = sub_29D937898();
  sub_29D69C6C0(v17, qword_2A1A2C008);
  v18 = v5;
  v19 = a3;
  v20 = sub_29D937878();
  v21 = sub_29D93A2A8();

  if (os_log_type_enabled(v20, v21))
  {
    v51 = v13;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v53 = v23;
    *v22 = 136446722;
    swift_getObjectType();
    sub_29D88701C();
    v24 = sub_29D939DA8();
    v26 = sub_29D6C2364(v24, v25, &v53);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_29D6C2364(0xD000000000000063, 0x800000029D96AAB0, &v53);
    *(v22 + 22) = 2082;
    v27 = sub_29D93A518();
    v29 = sub_29D6C2364(v27, v28, &v53);

    *(v22 + 24) = v29;
    _os_log_impl(&dword_29D677000, v20, v21, "[%{public}s.%{public}s] %{public}s discover promotion should be hidden.", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v23, -1, -1);
    v30 = v22;
    v13 = v51;
    MEMORY[0x29ED6BE30](v30, -1, -1);
  }

  v14 = 0;
  v15 = 0x20000;
LABEL_16:
  v31 = *MEMORY[0x29EDBA570];
  v32 = sub_29D9371B8();
  v33 = [v32 areAllRequirementsSatisfied];

  if (v33 && (v13 & 1) == 0 && a2)
  {
    v34 = sub_29D885180(v52);
    v35 = a2 << 8;
    v36 = v34;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v37 = sub_29D937898();
    sub_29D69C6C0(v37, qword_2A1A2C008);
    v38 = v5;
    v39 = v52;
    v40 = sub_29D937878();
    v41 = sub_29D93A2A8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v53 = v43;
      *v42 = 136446722;
      swift_getObjectType();
      sub_29D88701C();
      v44 = sub_29D939DA8();
      v46 = sub_29D6C2364(v44, v45, &v53);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2082;
      *(v42 + 14) = sub_29D6C2364(0xD000000000000063, 0x800000029D96AAB0, &v53);
      *(v42 + 22) = 2082;
      v47 = sub_29D93A518();
      v49 = sub_29D6C2364(v47, v48, &v53);

      *(v42 + 24) = v49;
      _os_log_impl(&dword_29D677000, v40, v41, "[%{public}s.%{public}s] %{public}s non-discover promotion should be hidden.", v42, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v43, -1, -1);
      MEMORY[0x29ED6BE30](v42, -1, -1);
    }

    v35 = 0;
    v36 = 2;
  }

  return v14 | v15 | v36 | v35;
}

uint64_t sub_29D884360(char a1)
{
  if (sub_29D8848C4(a1))
  {
    LODWORD(v3) = 0;
  }

  else
  {
    v3 = sub_29D887144(a1) & 1;
  }

  v4 = sub_29D8848C4(a1);
  v5 = sub_29D884C94(a1);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v6 = sub_29D937898();
  sub_29D69C6C0(v6, qword_2A1A2C008);
  v7 = v1;
  v8 = sub_29D937878();
  v9 = sub_29D93A2A8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v4;
    v11 = 0xD000000000000012;
    v12 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v44 = v42;
    *v12 = 136447746;
    v43 = v7;
    swift_getObjectType();
    sub_29D88701C();
    v13 = sub_29D939DA8();
    v15 = sub_29D6C2364(v13, v14, &v44);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_29D6C2364(0xD000000000000018, 0x800000029D96AA90, &v44);
    *(v12 + 22) = 2082;
    if (a1)
    {
      if (a1 == 1)
      {
        v11 = 0x6472754262694661;
      }

      else
      {
        v11 = 0x7461654662694661;
      }

      if (a1 == 1)
      {
        v16 = 0xEA00000000006E65;
      }

      else
      {
        v16 = 0xEC00000073657275;
      }
    }

    else
    {
      v16 = 0x800000029D96AA70;
    }

    v17 = sub_29D6C2364(v11, v16, &v44);

    *(v12 + 24) = v17;
    *(v12 + 32) = 2082;
    v18 = sub_29D939DA8();
    v20 = sub_29D6C2364(v18, v19, &v44);

    *(v12 + 34) = v20;
    *(v12 + 42) = 2082;
    if (v10)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (v10)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    v23 = sub_29D6C2364(v21, v22, &v44);

    *(v12 + 44) = v23;
    *(v12 + 52) = 2082;
    v24 = sub_29D6C2364(0x65736C6166, 0xE500000000000000, &v44);

    *(v12 + 54) = v24;
    *(v12 + 62) = 2082;
    if (v5)
    {
      v25 = 1702195828;
    }

    else
    {
      v25 = 0x65736C6166;
    }

    if (v5)
    {
      v26 = 0xE400000000000000;
    }

    else
    {
      v26 = 0xE500000000000000;
    }

    v27 = sub_29D6C2364(v25, v26, &v44);
    v4 = v10;

    *(v12 + 64) = v27;
    _os_log_impl(&dword_29D677000, v8, v9, "[%{public}s.%{public}s] promotion: %{public}s (shouldAdvertisePromotionType: %{public}s, isOnboardingCompleted: %{public}s, isRescinded: %{public}s, isExcluded: %{public}s)", v12, 0x48u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v42, -1, -1);
    MEMORY[0x29ED6BE30](v12, -1, -1);

    v7 = v43;
  }

  else
  {
  }

  if ((v3 == 0) | (v4 | v5) & 1)
  {
    v28 = v7;
    v29 = sub_29D937878();
    v30 = sub_29D93A2A8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v3;
      v32 = 0xD000000000000012;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44 = v34;
      *v33 = 136446722;
      swift_getObjectType();
      sub_29D88701C();
      v35 = sub_29D939DA8();
      v37 = sub_29D6C2364(v35, v36, &v44);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_29D6C2364(0xD000000000000018, 0x800000029D96AA90, &v44);
      *(v33 + 22) = 2082;
      if (a1)
      {
        if (a1 == 1)
        {
          v32 = 0x6472754262694661;
        }

        else
        {
          v32 = 0x7461654662694661;
        }

        if (a1 == 1)
        {
          v38 = 0xEA00000000006E65;
        }

        else
        {
          v38 = 0xEC00000073657275;
        }
      }

      else
      {
        v38 = 0x800000029D96AA70;
      }

      LODWORD(v3) = v31;
      v40 = sub_29D6C2364(v32, v38, &v44);

      *(v33 + 24) = v40;
      _os_log_impl(&dword_29D677000, v29, v30, "[%{public}s.%{public}s] %{public}s promotion should be hidden.", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v34, -1, -1);
      MEMORY[0x29ED6BE30](v33, -1, -1);
    }

    v39 = 2;
  }

  else
  {
    v39 = sub_29D884D48(a1);
  }

  return v39 | (v3 << 8);
}

uint64_t sub_29D8848DC(char a1, uint64_t (*a2)(uint64_t))
{
  v28 = a2;
  v4 = sub_29D9371A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D886FC8(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v28 - v17;
  if (!a1)
  {
    sub_29D887064();
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = v2;
    v22 = v2;
    sub_29D934648();

    if ((*(v5 + 48))(v18, 1, v4))
    {
      v20 = MEMORY[0x29EDC2D78];
      v21 = v18;
      goto LABEL_7;
    }

    (*(v5 + 16))(v9, v18, v4);
    v26 = MEMORY[0x29EDC2D78];
    v27 = v18;
LABEL_14:
    sub_29D8870E8(v27, &unk_2A1A24700, v26);
    v23 = sub_29D937198();
    (*(v5 + 8))(v9, v4);
    return v23 & 1;
  }

  if (a1 == 1)
  {
    sub_29D887064();
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = v2;
    v19 = v2;
    sub_29D934648();

    if ((*(v5 + 48))(v15, 1, v4))
    {
      v20 = MEMORY[0x29EDC2D78];
      v21 = v15;
LABEL_7:
      sub_29D8870E8(v21, &unk_2A1A24700, v20);
      v23 = 1;
      return v23 & 1;
    }

    (*(v5 + 16))(v9, v15, v4);
    v26 = MEMORY[0x29EDC2D78];
    v27 = v15;
    goto LABEL_14;
  }

  v23 = 1;
  if (v28(1))
  {
    return v23 & 1;
  }

  v24 = v28;

  return v24(0);
}

uint64_t sub_29D884C94(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    v2 = 0;
  }

  else if (sub_29D884360(2) > 1u)
  {

    v2 = 0;
  }

  else
  {
    v1 = sub_29D93AD78();

    v2 = v1 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_29D884D48(char a1)
{
  if (sub_29D885510())
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v3 = sub_29D937898();
    sub_29D69C6C0(v3, qword_2A1A2C008);
    v4 = v1;
    v5 = sub_29D937878();
    v6 = sub_29D93A2A8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = 0xD000000000000012;
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v28 = v9;
      *v8 = 136446722;
      swift_getObjectType();
      sub_29D88701C();
      v10 = sub_29D939DA8();
      v12 = sub_29D6C2364(v10, v11, &v28);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_29D6C2364(0xD000000000000017, 0x800000029D96AA50, &v28);
      *(v8 + 22) = 2082;
      if (a1)
      {
        if (a1 == 1)
        {
          v7 = 0x6472754262694661;
        }

        else
        {
          v7 = 0x7461654662694661;
        }

        if (a1 == 1)
        {
          v13 = 0xEA00000000006E65;
        }

        else
        {
          v13 = 0xEC00000073657275;
        }
      }

      else
      {
        v13 = 0x800000029D96AA70;
      }

      v25 = sub_29D6C2364(v7, v13, &v28);

      *(v8 + 24) = v25;
      _os_log_impl(&dword_29D677000, v5, v6, "[%{public}s.%{public}s] Age set. Showing %{public}s promotion with high priority.", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v9, -1, -1);
      MEMORY[0x29ED6BE30](v8, -1, -1);
    }

    return 0;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v14 = sub_29D937898();
    sub_29D69C6C0(v14, qword_2A1A2C008);
    v15 = v1;
    v16 = sub_29D937878();
    v17 = sub_29D93A2A8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = 0xD000000000000012;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136446722;
      swift_getObjectType();
      sub_29D88701C();
      v21 = sub_29D939DA8();
      v23 = sub_29D6C2364(v21, v22, &v28);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_29D6C2364(0xD000000000000017, 0x800000029D96AA50, &v28);
      *(v19 + 22) = 2082;
      if (a1)
      {
        if (a1 == 1)
        {
          v18 = 0x6472754262694661;
        }

        else
        {
          v18 = 0x7461654662694661;
        }

        if (a1 == 1)
        {
          v24 = 0xEA00000000006E65;
        }

        else
        {
          v24 = 0xEC00000073657275;
        }
      }

      else
      {
        v24 = 0x800000029D96AA70;
      }

      v27 = sub_29D6C2364(v18, v24, &v28);

      *(v19 + 24) = v27;
      _os_log_impl(&dword_29D677000, v16, v17, "[%{public}s.%{public}s] Age not set. Showing %{public}s promotion with low priority.", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v20, -1, -1);
      MEMORY[0x29ED6BE30](v19, -1, -1);
    }

    return 1;
  }
}

uint64_t sub_29D885180(void *a1)
{
  if (sub_29D885510())
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v3 = sub_29D937898();
    sub_29D69C6C0(v3, qword_2A1A2C008);
    v4 = v1;
    v5 = a1;
    v6 = sub_29D937878();
    v7 = sub_29D93A2A8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v30 = v9;
      *v8 = 136446722;
      swift_getObjectType();
      sub_29D88701C();
      v10 = sub_29D939DA8();
      v12 = sub_29D6C2364(v10, v11, &v30);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_29D6C2364(0xD000000000000028, 0x800000029D96AA20, &v30);
      *(v8 + 22) = 2082;
      v13 = sub_29D93A518();
      v15 = sub_29D6C2364(v13, v14, &v30);

      *(v8 + 24) = v15;
      _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s.%{public}s] Age set. Showing %{public}s promotion with high priority.", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v9, -1, -1);
      MEMORY[0x29ED6BE30](v8, -1, -1);
    }

    return 0;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v17 = sub_29D937898();
    sub_29D69C6C0(v17, qword_2A1A2C008);
    v18 = v1;
    v19 = a1;
    v20 = sub_29D937878();
    v21 = sub_29D93A2A8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136446722;
      swift_getObjectType();
      sub_29D88701C();
      v24 = sub_29D939DA8();
      v26 = sub_29D6C2364(v24, v25, &v30);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_29D6C2364(0xD000000000000028, 0x800000029D96AA20, &v30);
      *(v22 + 22) = 2082;
      v27 = sub_29D93A518();
      v29 = sub_29D6C2364(v27, v28, &v30);

      *(v22 + 24) = v29;
      _os_log_impl(&dword_29D677000, v20, v21, "[%{public}s.%{public}s] Age not set. Showing %{public}s promotion with low priority.", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v23, -1, -1);
      MEMORY[0x29ED6BE30](v22, -1, -1);
    }

    return 1;
  }
}

BOOL sub_29D885510()
{
  v17[1] = *MEMORY[0x29EDCA608];
  sub_29D886FC8(0, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v5 = v17 - v4;
  v6 = *(v0 + OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_healthStore);
  v17[0] = 0;
  v7 = [v6 dateOfBirthComponentsWithError_];
  v8 = v17[0];
  if (v7)
  {
    sub_29D933298();
    v9 = v8;

    v10 = 0;
  }

  else
  {
    v11 = v17[0];
    v12 = sub_29D933598();

    swift_willThrow();
    v10 = 1;
  }

  v13 = sub_29D933318();
  (*(*(v13 - 8) + 56))(v5, v10, 1, v13);
  sub_29D8870E8(v5, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v14 = *MEMORY[0x29EDCA608];
  return v7 != 0;
}

uint64_t sub_29D8856E8()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2C008);
  v3 = sub_29D937878();
  v4 = sub_29D93A2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = sub_29D93AF08();
    v9 = sub_29D6C2364(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_29D677000, v3, v4, "[%{public}s]: Heart rhythm availability did update", v5, 0xCu);
    sub_29D69417C(v6);
    MEMORY[0x29ED6BE30](v6, -1, -1);
    MEMORY[0x29ED6BE30](v5, -1, -1);
  }

  v10 = sub_29D884360(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v10;
  v11 = v1;
  sub_29D9383D8();
  sub_29D883BDC();
  sub_29D883868();
  v12 = sub_29D884360(2);
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v12;
  v13 = v11;
  return sub_29D9383D8();
}

uint64_t sub_29D88592C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_hypertensionNotificationsFeatureStatusManager;
  swift_beginAccess();
  sub_29D7C0420(v3 + v4, v9);
  if (v9[3])
  {
    sub_29D6945AC(v9, v8);
    sub_29D7C0518(v9);
    sub_29D693E2C(v8, v8[3]);
    sub_29D937238();
    v5 = sub_29D9371A8();
    (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
    return sub_29D69417C(v8);
  }

  else
  {
    sub_29D7C0518(v9);
    v7 = sub_29D9371A8();
    return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
  }
}

uint64_t sub_29D885C2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_irregularRhythmNotificationsStatusManager);
  v4 = v3[4];
  sub_29D693E2C(v3, v3[3]);
  sub_29D937238();
  v5 = sub_29D9371A8();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t sub_29D885EF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D7C0420(*a1 + OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_aFibBurdenFeatureStatusManager, v6);
  if (v7)
  {
    sub_29D693E2C(v6, v7);
    sub_29D937238();
    v4 = sub_29D9371A8();
    (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
    return sub_29D69417C(v6);
  }

  else
  {
    sub_29D7C0518(v6);
    v3 = sub_29D9371A8();
    return (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  }
}

uint64_t sub_29D8860CC(uint64_t a1, void *a2)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  swift_getObjectType();
  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](0xD00000000000003CLL, 0x800000029D95D3F0);
  v4 = a2;
  sub_29D6B7370(0, &qword_2A1A24850);
  v5 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v5);

  return 0;
}

uint64_t sub_29D8861B8@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  *a2 = v5;
  return result;
}

uint64_t sub_29D886234(int *a1, void **a2)
{
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = *a1;
  v4 = v3;
  return sub_29D9383D8();
}

uint64_t sub_29D8862A4(uint64_t a1, void **a2)
{
  v4 = MEMORY[0x29EDC2D78];
  sub_29D886FC8(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v17 - v12;
  sub_29D6E8508(a1, v17 - v12);
  v14 = *a2;
  sub_29D887064();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D6E8508(v13, v10);
  v17[1] = v14;
  v15 = v14;
  sub_29D934658();
  return sub_29D8870E8(v13, &unk_2A1A24700, v4);
}

uint64_t sub_29D8863E8(void **a1)
{
  v1 = *a1;
  sub_29D887064();
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_29D934648();
}

BOOL sub_29D886488(unsigned __int16 a1, unsigned __int16 a2)
{
  v3 = 0x6E6564646968;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0x6E6564646968;
    }

    if (v4 == 1)
    {
      v6 = 0x800000029D9572F0;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0x800000029D9572D0;
    v5 = 0xD000000000000015;
  }

  v7 = a2;
  v8 = a1;
  v9 = 0xE600000000000000;
  if (a2 == 1)
  {
    v3 = 0xD000000000000014;
    v9 = 0x800000029D9572F0;
  }

  if (a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xD000000000000015;
  }

  if (a2)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0x800000029D9572D0;
  }

  if (v5 == v10 && v6 == v11)
  {
  }

  else
  {
    v12 = sub_29D93AD78();

    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  return (v7 ^ v8) < 0x100;
}

uint64_t sub_29D8865A0(unsigned int a1, unsigned int a2)
{
  v4 = 0x6E6564646968;
  v5 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0x6E6564646968;
    }

    if (v5 == 1)
    {
      v7 = 0x800000029D9572F0;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    v8 = a2;
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_16:
    v10 = 0x800000029D9572D0;
    v9 = 0xD000000000000015;
    goto LABEL_17;
  }

  v7 = 0x800000029D9572D0;
  v6 = 0xD000000000000015;
  v8 = a2;
  if (!a2)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (v8 == 1)
  {
    v9 = 0xD000000000000014;
  }

  else
  {
    v9 = 0x6E6564646968;
  }

  if (v8 == 1)
  {
    v10 = 0x800000029D9572F0;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

LABEL_17:
  v11 = a2 >> 8;
  if (v6 == v9 && v7 == v10)
  {

    if (v11 != BYTE1(a1))
    {
      return 0;
    }

LABEL_23:
    if (BYTE2(a1))
    {
      if (BYTE2(a1) == 1)
      {
        v14 = 0x800000029D9572F0;
        v15 = 0xD000000000000014;
        v16 = BYTE2(a2);
        if (!BYTE2(a2))
        {
          goto LABEL_31;
        }

LABEL_28:
        if (v16 == 1)
        {
          v17 = 0x800000029D9572F0;
          v4 = 0xD000000000000014;
        }

        else
        {
          v17 = 0xE600000000000000;
        }

        goto LABEL_33;
      }

      v14 = 0xE600000000000000;
      v15 = 0x6E6564646968;
      v16 = BYTE2(a2);
      if (BYTE2(a2))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = 0x800000029D9572D0;
      v15 = 0xD000000000000015;
      v16 = BYTE2(a2);
      if (BYTE2(a2))
      {
        goto LABEL_28;
      }
    }

LABEL_31:
    v17 = 0x800000029D9572D0;
    v4 = 0xD000000000000015;
LABEL_33:
    v18 = HIBYTE(a1);
    v19 = HIBYTE(a2);
    if (v15 == v4 && v14 == v17)
    {

      goto LABEL_37;
    }

    v20 = sub_29D93AD78();

    if (v20)
    {
LABEL_37:
      if (v18 == v19)
      {
        return 1;
      }
    }

    return 0;
  }

  v12 = sub_29D93AD78();

  result = 0;
  if ((v12 & 1) != 0 && v11 == BYTE1(a1))
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t _s5Heart26PromotionAvailabilityStateO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_29D93ABF8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_29D88682C()
{
  result = qword_2A17B6FB8;
  if (!qword_2A17B6FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6FB8);
  }

  return result;
}

unint64_t sub_29D886880()
{
  result = qword_2A17B6FC0;
  if (!qword_2A17B6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6FC0);
  }

  return result;
}

void *sub_29D8868D4(uint64_t *a1)
{
  sub_29D8875CC(0, &qword_2A17B6FF0, MEMORY[0x29EDC9E80]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3, v7);
  v9 = &v13[-v8];
  v10 = a1[4];
  v11 = sub_29D693E2C(a1, a1[3]);
  sub_29D88682C();
  sub_29D93AEC8();
  if (!v1)
  {
    sub_29D887630();
    sub_29D93AC88();
    (*(v5 + 8))(v9, v4);
    v11 = v13[15];
  }

  sub_29D69417C(a1);
  return v11;
}

unint64_t sub_29D886A70()
{
  result = qword_2A17B6FC8;
  if (!qword_2A17B6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6FC8);
  }

  return result;
}

uint64_t type metadata accessor for HeartPromotionAvailability()
{
  result = qword_2A1A24408;
  if (!qword_2A1A24408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D886B38()
{
  sub_29D886C68(319, &qword_2A1A222A8);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_29D886C68(319, &qword_2A1A222A0);
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_29D886C68(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29D9383E8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for HeartFeaturePromotionResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[4])
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

uint64_t storeEnumTagSinglePayload for HeartFeaturePromotionResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeartPromotionResult(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
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

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
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

_WORD *storeEnumTagSinglePayload for HeartPromotionResult(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29D886EBC()
{
  result = qword_2A17B6FD0;
  if (!qword_2A17B6FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6FD0);
  }

  return result;
}

unint64_t sub_29D886F14()
{
  result = qword_2A17B6FD8;
  if (!qword_2A17B6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6FD8);
  }

  return result;
}

unint64_t sub_29D886F6C()
{
  result = qword_2A17B6FE0;
  if (!qword_2A17B6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6FE0);
  }

  return result;
}

void sub_29D886FC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29D88701C()
{
  result = qword_2A1A25710;
  if (!qword_2A1A25710)
  {
    type metadata accessor for HeartPromotionAvailability();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1A25710);
  }

  return result;
}

void sub_29D887064()
{
  if (!qword_2A1A24730)
  {
    type metadata accessor for HeartPromotionAvailability();
    sub_29D886FC8(255, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
    v0 = sub_29D934668();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24730);
    }
  }
}

uint64_t sub_29D8870E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D886FC8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_29D887144(char a1)
{
  while (1)
  {
    v2 = a1;
    v3 = sub_29D9371A8();
    v4 = *(v3 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x2A1C7C4A8](v3, v6);
    v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_29D886FC8(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
    v10 = *(*(v9 - 8) + 64);
    v12 = MEMORY[0x2A1C7C4A8](v9 - 8, v11);
    v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x2A1C7C4A8](v12, v15);
    v17 = &v29 - v16;
    if (!v2)
    {
      break;
    }

    if (v2 == 1)
    {
      sub_29D887064();
      swift_getKeyPath();
      swift_getKeyPath();
      v30 = v1;
      v18 = v1;
      sub_29D934648();

      if ((*(v4 + 48))(v14, 1, v3))
      {
        v19 = MEMORY[0x29EDC2D78];
        v20 = v14;
LABEL_7:
        sub_29D8870E8(v20, &unk_2A1A24700, v19);
        return 0;
      }

      (*(v4 + 16))(v8, v14, v3);
      v24 = MEMORY[0x29EDC2D78];
      v25 = v14;
      goto LABEL_14;
    }

    v23 = sub_29D887144(0);
    result = 0;
    if ((v23 & 1) == 0)
    {
      return result;
    }

    a1 = 1;
    v1 = v31;
  }

  sub_29D887064();
  swift_getKeyPath();
  swift_getKeyPath();
  v30 = v1;
  v21 = v1;
  sub_29D934648();

  if ((*(v4 + 48))(v17, 1, v3))
  {
    v19 = MEMORY[0x29EDC2D78];
    v20 = v17;
    goto LABEL_7;
  }

  (*(v4 + 16))(v8, v17, v3);
  v24 = MEMORY[0x29EDC2D78];
  v25 = v17;
LABEL_14:
  sub_29D8870E8(v25, &unk_2A1A24700, v24);
  v26 = *MEMORY[0x29EDBA578];
  v27 = sub_29D9371B8();
  (*(v4 + 8))(v8, v3);
  v28 = [v27 areAllRequirementsSatisfied];

  return v28;
}

uint64_t sub_29D887518(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D887568(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_29D883020(a1);
}

uint64_t sub_29D887570(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_29D882A2C(a1);
}

unint64_t sub_29D887578()
{
  result = qword_2A17B6FE8;
  if (!qword_2A17B6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6FE8);
  }

  return result;
}

void sub_29D8875CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D88682C();
    v7 = a3(a1, &type metadata for PromotionUserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D887630()
{
  result = qword_2A17B6FF8;
  if (!qword_2A17B6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6FF8);
  }

  return result;
}

unint64_t sub_29D887698()
{
  result = qword_2A17B7000;
  if (!qword_2A17B7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7000);
  }

  return result;
}

id sub_29D8876EC@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  sub_29D72CCA4(0, &qword_2A17B3428, MEMORY[0x29EDB9D58]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v85 = v75 - v9;
  sub_29D72CCA4(0, &qword_2A17B1F98, MEMORY[0x29EDB9D18]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v14 = v75 - v13;
  v15 = sub_29D933CE8();
  v16 = *(v15 - 8);
  v17 = v16[8];
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2u)
  {
    if (a1 != 3)
    {
      v84 = v16;
      if (a1 == 4)
      {
        sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
        v33 = v20;
        v34 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA930]);
        v82 = v34;
        v35 = v16[2];
        v35(v33, v3, v15);
        v36 = v35;
        v37 = *(v3 + *(type metadata accessor for AFibBurdenPDFChartPointProviderFactory() + 20));
        v38 = type metadata accessor for AFibBurdenPDFChartDailySumQuery();
        a2[3] = v38;
        a2[4] = &off_2A2445540;
        v39 = sub_29D693F78(a2);
        v80 = v33;
        v81 = v36;
        v36(v39, v33, v15);
        v40 = v38[5];
        v76 = v39;
        *(v39 + v40) = v37;
        *(v39 + v38[6]) = v34;
        *(v39 + v38[9]) = 0;
        v36(v14, v33, v15);
        v79 = v16[7];
        v79(v14, 0, 1, v15);
        v77 = sub_29D933D38();
        v78 = *(*(v77 - 8) + 56);
        v41 = v85;
        (v78)(v85, 1, 1, v77);
        v42 = v38[7];
        v43 = v37;
        v82 = v82;
        sub_29D933308();
        v44 = v80;
        v81(v14, v80, v15);
        v79(v14, 0, 1, v15);
        (v78)(v41, 1, 1, v77);
        v45 = v38[8];
        sub_29D933308();

        return (v84[1])(v44, v15);
      }

      else
      {
        sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
        v58 = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA4A8]);
        v82 = v58;
        v59 = v16;
        v60 = v16[2];
        v60(v20, v3, v15);
        v61 = v60;
        v81 = v60;
        v62 = *(type metadata accessor for AFibBurdenPDFChartPointProviderFactory() + 20);
        v83 = v14;
        v63 = v15;
        v64 = *(v3 + v62);
        v65 = type metadata accessor for AFibBurdenPDFChartDailySumQuery();
        a2[3] = v65;
        a2[4] = &off_2A2445540;
        v66 = sub_29D693F78(a2);
        v61(v66, v20, v63);
        v67 = v65[5];
        v78 = v66;
        *(v66 + v67) = v64;
        *(v66 + v65[6]) = v58;
        *(v66 + v65[9]) = 1;
        v68 = v83;
        v61(v83, v20, v63);
        v79 = v59[7];
        v79(v68, 0, 1, v63);
        v76 = sub_29D933D38();
        v69 = *(v76 - 8);
        v70 = *(v69 + 56);
        v77 = v69 + 56;
        v71 = v85;
        v70(v85, 1, 1, v76);
        v75[1] = v65[7];
        v72 = v64;
        v82 = v82;
        v73 = v83;
        sub_29D933308();
        v81(v73, v20, v63);
        v79(v73, 0, 1, v63);
        v70(v71, 1, 1, v76);
        v74 = v65[8];
        sub_29D933308();

        return (v84[1])(v20, v63);
      }
    }

    sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
    v53 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA898]);
    v54 = type metadata accessor for AFibBurdenPDFChartAverageQuery();
    a2[3] = v54;
    a2[4] = &off_2A2442D58;
    v55 = sub_29D693F78(a2);
    (v16[2])(v55, v3, v15);
    v52 = *(v3 + *(type metadata accessor for AFibBurdenPDFChartPointProviderFactory() + 20));
    *(v55 + *(v54 + 20)) = v52;
    *(v55 + *(v54 + 24)) = v53;
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
      v21 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA848]);
      v82 = v21;
      v22 = v16[2];
      v22(v20, v3, v15);
      v23 = v22;
      v24 = *(v3 + *(type metadata accessor for AFibBurdenPDFChartPointProviderFactory() + 20));
      v25 = type metadata accessor for AFibBurdenPDFChartDailySumQuery();
      a2[3] = v25;
      a2[4] = &off_2A2445540;
      v26 = sub_29D693F78(a2);
      v81 = v23;
      v23(v26, v20, v15);
      *(v26 + v25[5]) = v24;
      *(v26 + v25[6]) = v21;
      *(v26 + v25[9]) = 0;
      v23(v14, v20, v15);
      v84 = v16;
      v79 = v16[7];
      v79(v14, 0, 1, v15);
      v77 = sub_29D933D38();
      v27 = *(v77 - 8);
      v28 = *(v27 + 56);
      v78 = (v27 + 56);
      v28(v85, 1, 1, v77);
      v76 = v25[7];
      v29 = v24;
      v82 = v82;
      v30 = v85;
      sub_29D933308();
      v81(v14, v20, v15);
      v79(v14, 0, 1, v15);
      v28(v30, 1, 1, v77);
      v31 = v25[8];
      sub_29D933308();

      return (v84[1])(v20, v15);
    }

    v56 = type metadata accessor for AFibBurdenPDFChartSleepQuery();
    a2[3] = v56;
    a2[4] = &off_2A244E8D8;
    v57 = sub_29D693F78(a2);
    (v16[2])(v57, v3, v15);
    v52 = *(v3 + *(type metadata accessor for AFibBurdenPDFChartPointProviderFactory() + 20));
    *(v57 + *(v56 + 20)) = v52;
  }

  else
  {
    sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
    v46 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
    v47 = type metadata accessor for AFibBurdenPDFChartJulianIndexedSevenDaySampleQuery();
    a2[3] = v47;
    a2[4] = &off_2A244EDB8;
    v48 = sub_29D693F78(a2);
    (v16[2])(v48, v3, v15);
    v49 = type metadata accessor for AFibBurdenPDFChartPointProviderFactory();
    v50 = *(v3 + *(v49 + 24));
    v85 = *(v3 + *(v49 + 20));
    *(v48 + v47[5]) = v85;
    *(v48 + v47[6]) = v46;
    *(v48 + v47[7]) = v50;
    v51 = v50;
    v52 = v85;
  }

  return v52;
}

uint64_t type metadata accessor for AFibBurdenPDFChartPointProviderFactory()
{
  result = qword_2A17B7008;
  if (!qword_2A17B7008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8883E0()
{
  result = sub_29D933CE8();
  if (v1 <= 0x3F)
  {
    result = sub_29D69567C(319, &qword_2A1A22230, 0x29EDBABE8);
    if (v2 <= 0x3F)
    {
      result = sub_29D934948();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

id sub_29D88848C()
{
  *&v0[OBJC_IVAR____TtC5Heart50CardioFitnessOnboardingSetupCompleteViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC5Heart50CardioFitnessOnboardingSetupCompleteViewController_symbolView;
  type metadata accessor for CardioFitnessOnboardingSetupCompleteSymbolView();
  *&v0[v1] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_29D9334A8();

  v4 = sub_29D939D28();

  v8.receiver = v0;
  v8.super_class = type metadata accessor for CardioFitnessOnboardingSetupCompleteViewController();
  v5 = objc_msgSendSuper2(&v8, sel_initWithTitle_detailText_icon_contentLayout_, v4, 0, 0, 2, 0xE000000000000000);

  v6 = v5;
  sub_29D8885E8();

  return v6;
}

void sub_29D8885E8()
{
  v1 = [v0 headerView];
  v2 = [v1 customIconContainerView];

  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5Heart50CardioFitnessOnboardingSetupCompleteViewController_symbolView];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    [v2 setClipsToBounds_];
    [v2 addSubview_];
    v4 = objc_opt_self();
    sub_29D6A0C58();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_29D941B10;
    v6 = [v3 centerXAnchor];
    v7 = [v2 centerXAnchor];
    v8 = [v6 constraintEqualToAnchor_];

    *(v5 + 32) = v8;
    v9 = [v3 centerYAnchor];
    v10 = [v2 centerYAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    *(v5 + 40) = v11;
    sub_29D6D37A4();
    v12 = sub_29D939F18();

    [v4 activateConstraints_];
  }
}

void sub_29D888800()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CardioFitnessOnboardingSetupCompleteViewController();
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_29D9334A8();

  v3 = sub_29D939D28();

  v4 = [v0 navigationItem];
  [v4 setHidesBackButton_];
}

id sub_29D888B68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardioFitnessOnboardingSetupCompleteViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D888C0C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC5Heart50CardioFitnessOnboardingSetupCompleteViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

uint64_t sub_29D888C68(void *a1, char *a2, unsigned __int8 a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v9 = sub_29D937898();
  sub_29D69C6C0(v9, qword_2A1A2C008);
  v10 = a1;
  v11 = sub_29D937878();
  v12 = sub_29D93A2A8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136446722;
    nullsub_1(ObjectType);
    v15 = sub_29D93AF08();
    v17 = sub_29D6C2364(v15, v16, &v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_29D6C2364(0xD00000000000002FLL, 0x800000029D969A70, &v23);
    *(v13 + 22) = 2082;
    v18 = sub_29D939DA8();
    v20 = sub_29D6C2364(v18, v19, &v23);

    *(v13 + 24) = v20;
    _os_log_impl(&dword_29D677000, v11, v12, "[%{public}s.%{public}s]: Primary button tapped for stage: %{public}s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v14, -1, -1);
    MEMORY[0x29ED6BE30](v13, -1, -1);
  }

  v21 = swift_getObjectType();
  return sub_29D828F94(a2, a3, v10, a4, 0, v21);
}

uint64_t sub_29D888EB8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, void, uint64_t))
{
  ObjectType = swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v8 = sub_29D937898();
  sub_29D69C6C0(v8, qword_2A1A2C008);
  v9 = a1;
  v10 = sub_29D937878();
  v11 = sub_29D93A2A8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136446722;
    nullsub_1(ObjectType);
    v14 = sub_29D93AF08();
    v16 = sub_29D6C2364(v14, v15, &v21);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_29D6C2364(0xD00000000000002FLL, 0x800000029D969A70, &v21);
    *(v12 + 22) = 2082;
    v17 = sub_29D939DA8();
    v19 = sub_29D6C2364(v17, v18, &v21);

    *(v12 + 24) = v19;
    _os_log_impl(&dword_29D677000, v10, v11, "[%{public}s.%{public}s]: Primary button tapped for stage: %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v13, -1, -1);
    MEMORY[0x29ED6BE30](v12, -1, -1);
  }

  return a4(v9, 0, a2);
}

void sub_29D8890C0(void *a1, char a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = a3;
  v7 = a1;
  sub_29D828F94(v8, 0, v7, &off_2A24404E0, a2 & 1, ObjectType);
}

uint64_t sub_29D88914C(void *a1, char a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = 2;
  *(v7 + 32) = a1;
  *(v7 + 40) = &off_2A2444A28;
  *(v7 + 48) = a2 & 1;
  *(v7 + 56) = ObjectType;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_29D8894B4;
  *(v8 + 24) = v7;
  v9 = *&a3[OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_model];
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a1;
  v10[4] = &off_2A2444A28;
  v10[5] = sub_29D8894CC;
  v10[6] = v8;
  v10[7] = ObjectType;
  v11 = a1;
  v12 = a3;
  v13 = v11;

  sub_29D8FF944(sub_29D8894D4, v10);
}

uint64_t sub_29D8892A4(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v5 = sub_29D937898();
  sub_29D69C6C0(v5, qword_2A1A2C008);
  v6 = a1;
  v7 = sub_29D937878();
  v8 = sub_29D93A2A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446722;
    nullsub_1(ObjectType);
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, &v19);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_29D6C2364(0xD000000000000031, 0x800000029D96AC40, &v19);
    *(v9 + 22) = 2082;
    v14 = sub_29D939DA8();
    v16 = sub_29D6C2364(v14, v15, &v19);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s.%{public}s]: Secondary button tapped for stage: %{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  v17 = swift_getObjectType();
  return sub_29D828F94(a2, 3u, v6, &off_2A244AFE8, 1, v17);
}

uint64_t sub_29D8894E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void))
{
  v29 = a2;
  v30 = a3;
  v7 = type metadata accessor for BloodPressureDayCoordinate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v7 - 8, v10);
  v28 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v11, v13);
  v16 = &v25 - v15;
  v27 = *(a1 + 16);
  if (v27)
  {
    v17 = 0;
    v18 = MEMORY[0x29EDCA190];
    v25 = a4;
    v26 = a1;
    while (v17 < *(a1 + 16))
    {
      v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v20 = *(v8 + 72);
      sub_29D88B7A0(a1 + v19 + v20 * v17, v16, type metadata accessor for BloodPressureDayCoordinate);
      v21 = a4(v16, v29, v30);
      if (v4)
      {
        sub_29D88B740(v16, type metadata accessor for BloodPressureDayCoordinate);

        goto LABEL_15;
      }

      if (v21)
      {
        sub_29D88B860(v16, v28, type metadata accessor for BloodPressureDayCoordinate);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_29D7EE738(0, *(v18 + 16) + 1, 1);
          v18 = v31;
        }

        v24 = *(v18 + 16);
        v23 = *(v18 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_29D7EE738(v23 > 1, v24 + 1, 1);
          v18 = v31;
        }

        *(v18 + 16) = v24 + 1;
        result = sub_29D88B860(v28, v18 + v19 + v24 * v20, type metadata accessor for BloodPressureDayCoordinate);
        a4 = v25;
        a1 = v26;
      }

      else
      {
        result = sub_29D88B740(v16, type metadata accessor for BloodPressureDayCoordinate);
      }

      if (v27 == ++v17)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x29EDCA190];
LABEL_15:

    return v18;
  }

  return result;
}

uint64_t sub_29D889768(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v19[3] = a1;
  v4 = sub_29D9331D8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a3;
  v10 = *(v9 + 16);
  v12 = (v11 + 16);
  v13 = (v11 + 8);
  result = sub_29D935E88();
  v15 = 0;
  while (1)
  {
    v16 = v15;
    if (v10 == v15)
    {
LABEL_5:

      return v10 == v16;
    }

    if (v15 >= *(v9 + 16))
    {
      break;
    }

    v17 = type metadata accessor for BloodPressurePDFSampleInterval();
    ++v15;
    (*v12)(v8, v9 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)) + *(*(v17 - 8) + 72) * v16 + *(v17 + 20), v4);
    v18 = sub_29D9331B8();
    result = (*v13)(v8, v4);
    if (v18)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29D889924(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v19[3] = a1;
  v4 = sub_29D9331D8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a3;
  v10 = *(v9 + 16);
  v12 = (v11 + 16);
  v13 = (v11 + 8);
  result = sub_29D935E88();
  v15 = 0;
  while (1)
  {
    v16 = v15;
    if (v10 == v15)
    {
LABEL_5:

      return v10 != v16;
    }

    if (v15 >= *(v9 + 16))
    {
      break;
    }

    v17 = type metadata accessor for BloodPressurePDFSampleInterval();
    ++v15;
    (*v12)(v8, v9 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)) + *(*(v17 - 8) + 72) * v16 + *(v17 + 20), v4);
    v18 = sub_29D9331B8();
    result = (*v13)(v8, v4);
    if (v18)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29D889AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D9339F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7CDA98(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D88B7A0(a1, v14, sub_29D7CDA98);
  v15 = sub_29D933318();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_29D88B740(v14, sub_29D7CDA98);
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v17 = sub_29D937898();
    sub_29D69C6C0(v17, qword_2A1A2BF10);
    (*(v5 + 16))(v9, a2, v4);
    v18 = sub_29D937878();
    v19 = sub_29D93A288();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_29D6C2364(0xD000000000000028, 0x800000029D9513F0, &v31);
      *(v20 + 12) = 2080;
      sub_29D88B808();
      v22 = sub_29D93AD38();
      v24 = v23;
      (*(v5 + 8))(v9, v4);
      v25 = sub_29D6C2364(v22, v24, &v31);

      *(v20 + 14) = v25;
      _os_log_impl(&dword_29D677000, v18, v19, "[%{public}s] Could not get date of birth components to determine age on interval date: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v21, -1, -1);
      MEMORY[0x29ED6BE30](v20, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }

    return 0;
  }

  else
  {
    v26 = sub_29D933288();
    (*(v16 + 8))(v14, v15);
    v27 = sub_29D933958();
    [v26 hk:v27 ageWithCurrentDate:?];

    v28 = sub_29D93A138();
    return v28;
  }
}

uint64_t sub_29D889E9C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v221 = a3;
  v206 = a6;
  v233 = *MEMORY[0x29EDCA608];
  v10 = type metadata accessor for BloodPressureDayCoordinate();
  v220 = *(v10 - 1);
  v11 = *(v220 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v214 = v205 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = v205 - v16;
  v215 = type metadata accessor for BloodPressurePDFSampleInterval();
  v212 = *(v215 - 8);
  v18 = *(v212 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v215, v19);
  v210 = v205 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v213 = v205 - v24;
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  *&v211 = v205 - v27;
  MEMORY[0x2A1C7C4A8](v26, v28);
  v30 = v205 - v29;
  v31 = MEMORY[0x29EDCA190];
  *&v224 = MEMORY[0x29EDCA190];
  *(&v224 + 1) = sub_29D73F938(MEMORY[0x29EDCA190]);
  LOWORD(v225) = 1;
  *(&v225 + 1) = v31;
  v226 = sub_29D73F938(v31);
  *&v223 = a2;
  *(&v223 + 1) = a4;
  *&v231[0] = 0;
  v32 = a2;
  v216 = a4;
  v33 = [v32 categoriesForClassificationGuidelines:a4 error:v231];
  v34 = *&v231[0];
  if (!v33)
  {
    v56 = *&v231[0];

    v57 = sub_29D933598();

    swift_willThrow();
    if (qword_2A1A24658 != -1)
    {
      goto LABEL_145;
    }

    goto LABEL_19;
  }

  v35 = v33;
  v205[2] = a1;
  v218 = v32;
  type metadata accessor for HKBloodPressureClassificationCategory(0);
  v205[1] = v36;
  v37 = sub_29D939F38();
  v38 = v34;

  *&v224 = v37;
  v39 = *(v37 + 16);
  v209 = a5;
  v219 = v10;
  v217 = v37;
  v208 = v30;
  if (v39)
  {
    v40 = v37 + 32;
    sub_29D935E88();
    v41 = v217;
    v32 = 0;
    v42 = *(&v224 + 1);
    while (1)
    {
      if (v32 >= *(v41 + 16))
      {
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        swift_once();
LABEL_19:
        v58 = sub_29D937898();
        sub_29D69C6C0(v58, qword_2A1A2BF10);
        v59 = sub_29D937878();
        v60 = sub_29D93A288();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *&v231[0] = v62;
          *v61 = 136446466;
          *(v61 + 4) = sub_29D6C2364(0xD000000000000028, 0x800000029D9513F0, v231);
          *(v61 + 12) = 2080;
          v63 = sub_29D93A628();
          v65 = sub_29D6C2364(v63, v64, v231);

          *(v61 + 14) = v65;
          _os_log_impl(&dword_29D677000, v59, v60, "[%{public}s] Could not get categories for guideline: %s", v61, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29ED6BE30](v62, -1, -1);
          MEMORY[0x29ED6BE30](v61, -1, -1);
        }

        else
        {
        }

        goto LABEL_127;
      }

      v43 = *(v40 + 8 * v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v231[0] = v42;
      v45 = sub_29D6959E0(v43);
      v47 = v42[2];
      v48 = (v46 & 1) == 0;
      v49 = __OFADD__(v47, v48);
      v50 = v47 + v48;
      if (v49)
      {
        goto LABEL_130;
      }

      v51 = v46;
      if (v42[3] < v50)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      v55 = v45;
      sub_29D69380C();
      v45 = v55;
      v42 = *&v231[0];
      if ((v51 & 1) == 0)
      {
LABEL_13:
        v42[(v45 >> 6) + 8] |= 1 << v45;
        *(v42[6] + 8 * v45) = v43;
        *(v42[7] + 8 * v45) = 0;
        v53 = v42[2];
        v49 = __OFADD__(v53, 1);
        v54 = v53 + 1;
        if (v49)
        {
          goto LABEL_133;
        }

        v42[2] = v54;
        goto LABEL_5;
      }

LABEL_4:
      *(v42[7] + 8 * v45) = 0;

LABEL_5:
      ++v32;
      v41 = v217;
      if (v39 == v32)
      {
        *(&v224 + 1) = v42;
        a5 = v209;
        v10 = v219;
        v30 = v208;
        goto LABEL_22;
      }
    }

    sub_29D6919A8(v50, isUniquelyReferenced_nonNull_native);
    v45 = sub_29D6959E0(v43);
    if ((v51 & 1) != (v52 & 1))
    {
      *(&v224 + 1) = v42;
LABEL_153:
      result = sub_29D93ADC8();
      __break(1u);
      return result;
    }

LABEL_12:
    v42 = *&v231[0];
    if ((v51 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_4;
  }

  sub_29D935E88();
LABEL_22:
  *&v231[0] = MEMORY[0x29EDCA190];
  v66 = v218;
  if (a5)
  {
    *&v227 = 0;
    sub_29D935E88();
    v67 = [v66 categoriesForClassificationGuidelines:2 error:&v227];
    v68 = v227;
    if (!v67)
    {
      v102 = v227;

      swift_bridgeObjectRelease_n();
      v103 = sub_29D933598();

      swift_willThrow();
      if (qword_2A1A24658 != -1)
      {
        goto LABEL_151;
      }

      goto LABEL_62;
    }

    v69 = v67;
    v70 = sub_29D939F38();
    v71 = v68;

    *(&v225 + 1) = v70;
    v72 = *(v70 + 16);
    if (v72)
    {
      sub_29D935E88();
      v73 = 0;
      v74 = v226;
      while (1)
      {
        if (v73 >= *(v70 + 16))
        {
          goto LABEL_134;
        }

        v75 = *(v70 + 8 * v73 + 32);
        v76 = swift_isUniquelyReferenced_nonNull_native();
        *&v227 = v74;
        v32 = sub_29D6959E0(v75);
        v78 = v74[2];
        v79 = (v77 & 1) == 0;
        v80 = v78 + v79;
        if (__OFADD__(v78, v79))
        {
          goto LABEL_135;
        }

        v81 = v77;
        if (v74[3] >= v80)
        {
          if ((v76 & 1) == 0)
          {
            sub_29D69380C();
          }
        }

        else
        {
          sub_29D6919A8(v80, v76);
          v82 = sub_29D6959E0(v75);
          if ((v81 & 1) != (v83 & 1))
          {
            v226 = v74;
            goto LABEL_153;
          }

          v32 = v82;
        }

        v66 = v218;
        v74 = v227;
        if (v81)
        {
          *(*(v227 + 56) + 8 * v32) = 0;
        }

        else
        {
          *(v227 + 8 * (v32 >> 6) + 64) |= 1 << v32;
          *(v74[6] + 8 * v32) = v75;
          *(v74[7] + 8 * v32) = 0;
          v84 = v74[2];
          v49 = __OFADD__(v84, 1);
          v85 = v84 + 1;
          if (v49)
          {
            goto LABEL_138;
          }

          v74[2] = v85;
        }

        if (v72 == ++v73)
        {
          v226 = v74;

          v30 = v208;
          break;
        }
      }
    }

    v86 = v209;
    v87 = *(v209 + 16);
    if (v87)
    {
      v88 = 0;
      v89 = MEMORY[0x29EDCA190];
      v90 = v213;
      do
      {
        if (v88 >= *(v86 + 16))
        {
          goto LABEL_136;
        }

        v32 = (*(v212 + 80) + 32) & ~*(v212 + 80);
        v91 = *(v212 + 72);
        sub_29D88B7A0(v86 + v32 + v91 * v88, v30, type metadata accessor for BloodPressurePDFSampleInterval);
        if (v30[*(v215 + 24)] == 1)
        {
          sub_29D88B860(v30, v211, type metadata accessor for BloodPressurePDFSampleInterval);
          v92 = swift_isUniquelyReferenced_nonNull_native();
          *&v227 = v89;
          if ((v92 & 1) == 0)
          {
            sub_29D7EE660(0, *(v89 + 16) + 1, 1);
            v89 = v227;
          }

          v94 = *(v89 + 16);
          v93 = *(v89 + 24);
          if (v94 >= v93 >> 1)
          {
            sub_29D7EE660(v93 > 1, v94 + 1, 1);
            v89 = v227;
          }

          *(v89 + 16) = v94 + 1;
          sub_29D88B860(v211, v89 + v32 + v94 * v91, type metadata accessor for BloodPressurePDFSampleInterval);
          v90 = v213;
          v30 = v208;
        }

        else
        {
          sub_29D88B740(v30, type metadata accessor for BloodPressurePDFSampleInterval);
        }

        ++v88;
      }

      while (v87 != v88);
      v95 = v86;
      v96 = 0;
      v97 = v95 + v32;
      v98 = MEMORY[0x29EDCA190];
      v212 = v87;
      do
      {
        if (v96 >= *(v209 + 16))
        {
          goto LABEL_137;
        }

        sub_29D88B7A0(v97, v90, type metadata accessor for BloodPressurePDFSampleInterval);
        if (v90[*(v215 + 24)] == 2)
        {
          sub_29D88B860(v90, v210, type metadata accessor for BloodPressurePDFSampleInterval);
          v99 = swift_isUniquelyReferenced_nonNull_native();
          *&v227 = v98;
          if ((v99 & 1) == 0)
          {
            sub_29D7EE660(0, *(v98 + 16) + 1, 1);
            v98 = v227;
          }

          v101 = *(v98 + 16);
          v100 = *(v98 + 24);
          if (v101 >= v100 >> 1)
          {
            sub_29D7EE660(v100 > 1, v101 + 1, 1);
            v98 = v227;
          }

          *(v98 + 16) = v101 + 1;
          sub_29D88B860(v210, v98 + v32 + v101 * v91, type metadata accessor for BloodPressurePDFSampleInterval);
          v90 = v213;
          v87 = v212;
        }

        else
        {
          sub_29D88B740(v90, type metadata accessor for BloodPressurePDFSampleInterval);
        }

        ++v96;
        v97 += v91;
      }

      while (v87 != v96);
      v66 = v218;
    }

    else
    {
      v89 = MEMORY[0x29EDCA190];
      v98 = MEMORY[0x29EDCA190];
    }

    sub_29D88BF3C(v89);
    sub_29D88BF3C(v98);
    v10 = v219;
  }

  v112 = sub_29D935E88();
  v113 = sub_29D8894E4(v112, &v223, v231, sub_29D889768);
  v114 = sub_29D935E88();
  v115 = sub_29D8894E4(v114, &v223, v231, sub_29D889924);
  v117 = *(v113 + 16);
  LOBYTE(v225) = v117 != 0;
  v215 = v115;
  v118 = *(v115 + 16);
  BYTE1(v225) = v118 != 0;
  v212 = v113;
  if (!v117)
  {
    goto LABEL_96;
  }

  v119 = 0;
  *&v211 = v113 + ((*(v220 + 80) + 32) & ~*(v220 + 80));
  v208 = "er";
  *&v116 = 136446466;
  v207 = v116;
  while (1)
  {
    if (v119 >= *(v113 + 16))
    {
      goto LABEL_131;
    }

    sub_29D88B7A0(v211 + *(v220 + 72) * v119, v17, type metadata accessor for BloodPressureDayCoordinate);
    v120 = sub_29D889AE0(v221, v17);
    v121 = *&v17[v10[5]];
    v122 = *&v17[v10[7]];
    v32 = sub_29D93A618();
    v123 = *&v17[v10[6]];
    v124 = *&v17[v10[8]];
    v125 = sub_29D93A618();
    v213 = v120;
    v126 = *(&v224 + 1);
    v127 = swift_isUniquelyReferenced_nonNull_native();
    *&v227 = v126;
    v129 = sub_29D6959E0(v32);
    v130 = *(v126 + 16);
    v131 = (v128 & 1) == 0;
    v132 = v130 + v131;
    if (__OFADD__(v130, v131))
    {
      goto LABEL_139;
    }

    v133 = v128;
    if (*(v126 + 24) >= v132)
    {
      if ((v127 & 1) == 0)
      {
        sub_29D69380C();
      }
    }

    else
    {
      sub_29D6919A8(v132, v127);
      v134 = sub_29D6959E0(v32);
      if ((v133 & 1) != (v135 & 1))
      {
        goto LABEL_153;
      }

      v129 = v134;
    }

    v66 = v218;
    if ((v133 & 1) == 0)
    {
      goto LABEL_140;
    }

    v136 = v227;
    v137 = *(v227 + 56);
    v138 = *(v137 + 8 * v129);
    v49 = __OFADD__(v138, 1);
    v139 = v138 + 1;
    if (v49)
    {
      goto LABEL_141;
    }

    *(v137 + 8 * v129) = v139;
    *(&v224 + 1) = v136;
    v140 = sub_29D939D68();
    v142 = v141;
    if (v140 != sub_29D939D68() || v142 != v143)
    {
      break;
    }

LABEL_86:

    v10 = v219;
    v113 = v212;
LABEL_71:
    ++v119;
    sub_29D88B740(v17, type metadata accessor for BloodPressureDayCoordinate);
    if (v117 == v119)
    {
      v118 = *(v215 + 16);
LABEL_96:
      v160 = v214;
      if (!v118)
      {
LABEL_125:

        sub_29D88B740(v221, sub_29D7CDA98);

        goto LABEL_128;
      }

      v161 = 0;
      v216 = v215 + ((*(v220 + 80) + 32) & ~*(v220 + 80));
      v213 = "er";
      *&v116 = 136446466;
      v211 = v116;
      v162 = v118;
      while (1)
      {
        if (v161 >= *(v215 + 16))
        {
          goto LABEL_132;
        }

        sub_29D88B7A0(v216 + *(v220 + 72) * v161, v160, type metadata accessor for BloodPressureDayCoordinate);
        v163 = sub_29D889AE0(v221, v160);
        v164 = *(v160 + v10[5]);
        v165 = *(v160 + v10[7]);
        v166 = sub_29D93A618();
        v167 = *(v160 + v10[6]);
        v168 = *(v160 + v10[8]);
        v169 = sub_29D93A618();
        v170 = v226;
        v171 = swift_isUniquelyReferenced_nonNull_native();
        *&v227 = v170;
        v172 = sub_29D6959E0(v166);
        v174 = *(v170 + 16);
        v175 = (v173 & 1) == 0;
        v49 = __OFADD__(v174, v175);
        v176 = v174 + v175;
        if (v49)
        {
          goto LABEL_142;
        }

        v32 = v173;
        if (*(v170 + 24) < v176)
        {
          break;
        }

        if (v171)
        {
          goto LABEL_105;
        }

        v198 = v172;
        sub_29D69380C();
        v172 = v198;
        if ((v32 & 1) == 0)
        {
          goto LABEL_143;
        }

LABEL_106:
        v178 = v227;
        v179 = *(v227 + 56);
        v180 = *(v179 + 8 * v172);
        v49 = __OFADD__(v180, 1);
        v181 = v180 + 1;
        if (v49)
        {
          goto LABEL_144;
        }

        *(v179 + 8 * v172) = v181;
        v226 = v178;
        v182 = sub_29D939D68();
        v184 = v183;
        if (v182 == sub_29D939D68() && v184 == v185)
        {
        }

        else
        {
          v32 = sub_29D93AD78();

          if ((v32 & 1) == 0)
          {
            v186 = v226;
            v187 = swift_isUniquelyReferenced_nonNull_native();
            *&v227 = v186;
            v188 = sub_29D6959E0(v169);
            v190 = *(v186 + 16);
            v191 = (v189 & 1) == 0;
            v49 = __OFADD__(v190, v191);
            v192 = v190 + v191;
            if (v49)
            {
              goto LABEL_149;
            }

            v32 = v189;
            if (*(v186 + 24) < v192)
            {
              sub_29D6919A8(v192, v187);
              v188 = sub_29D6959E0(v169);
              if ((v32 & 1) != (v193 & 1))
              {
                goto LABEL_153;
              }

              goto LABEL_117;
            }

            if (v187)
            {
LABEL_117:
              if ((v32 & 1) == 0)
              {
                goto LABEL_124;
              }
            }

            else
            {
              v199 = v188;
              sub_29D69380C();
              v188 = v199;
              if ((v32 & 1) == 0)
              {
LABEL_124:
                __break(1u);
                goto LABEL_125;
              }
            }

            v194 = v227;
            v195 = *(v227 + 56);
            v196 = *(v195 + 8 * v188);
            v49 = __OFADD__(v196, 1);
            v197 = v196 + 1;
            if (v49)
            {
              goto LABEL_150;
            }

            *(v195 + 8 * v188) = v197;

            v226 = v194;
            goto LABEL_120;
          }
        }

LABEL_120:
        v10 = v219;
        ++v161;
        v160 = v214;
        sub_29D88B740(v214, type metadata accessor for BloodPressureDayCoordinate);
        if (v162 == v161)
        {
          goto LABEL_125;
        }
      }

      sub_29D6919A8(v176, v171);
      v172 = sub_29D6959E0(v166);
      if ((v32 & 1) != (v177 & 1))
      {
        goto LABEL_153;
      }

LABEL_105:
      if ((v32 & 1) == 0)
      {
        goto LABEL_143;
      }

      goto LABEL_106;
    }
  }

  v144 = sub_29D93AD78();

  if (v144)
  {

    goto LABEL_86;
  }

  v145 = *(&v224 + 1);
  v146 = swift_isUniquelyReferenced_nonNull_native();
  *&v227 = v145;
  v147 = sub_29D6959E0(v125);
  v149 = *(v145 + 16);
  v150 = (v148 & 1) == 0;
  v49 = __OFADD__(v149, v150);
  v151 = v149 + v150;
  if (!v49)
  {
    v152 = v148;
    if (*(v145 + 24) >= v151)
    {
      v113 = v212;
      if ((v146 & 1) == 0)
      {
        v159 = v147;
        sub_29D69380C();
        v113 = v212;
        v147 = v159;
      }
    }

    else
    {
      sub_29D6919A8(v151, v146);
      v147 = sub_29D6959E0(v125);
      if ((v152 & 1) != (v153 & 1))
      {
        goto LABEL_153;
      }

      v113 = v212;
    }

    v154 = v213;
    if ((v152 & 1) == 0)
    {
      goto LABEL_147;
    }

    v155 = v227;
    v156 = *(v227 + 56);
    v157 = *(v156 + 8 * v147);
    v49 = __OFADD__(v157, 1);
    v158 = v157 + 1;
    if (v49)
    {
      goto LABEL_148;
    }

    *(v156 + 8 * v147) = v158;

    *(&v224 + 1) = v155;
    v10 = v219;
    goto LABEL_71;
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  swift_once();
LABEL_62:
  v104 = sub_29D937898();
  sub_29D69C6C0(v104, qword_2A1A2BF10);
  v105 = sub_29D937878();
  v106 = sub_29D93A288();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *&v227 = v108;
    *v107 = 136446466;
    *(v107 + 4) = sub_29D6C2364(0xD000000000000028, 0x800000029D9513F0, &v227);
    *(v107 + 12) = 2080;
    v109 = sub_29D93A628();
    v111 = sub_29D6C2364(v109, v110, &v227);

    *(v107 + 14) = v111;
    _os_log_impl(&dword_29D677000, v105, v106, "[%{public}s] Could not get categories for guideline: %s", v107, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v108, -1, -1);
    MEMORY[0x29ED6BE30](v107, -1, -1);
  }

  else
  {
  }

LABEL_127:
  sub_29D88B740(v221, sub_29D7CDA98);
LABEL_128:
  v227 = v223;
  v228 = v224;
  v229 = v225;
  v230 = v226;
  v231[0] = v223;
  v231[1] = v224;
  v231[2] = v225;
  v232 = v226;
  sub_29D88B708(&v227, v222);
  result = sub_29D7FF824(v231);
  v201 = v228;
  v202 = v229;
  v203 = v206;
  *v206 = v227;
  v203[1] = v201;
  v203[2] = v202;
  *(v203 + 6) = v230;
  v204 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29D88B740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D88B7A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_29D88B808()
{
  result = qword_2A17B7B10;
  if (!qword_2A17B7B10)
  {
    sub_29D9339F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7B10);
  }

  return result;
}

uint64_t sub_29D88B860(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29D88B8D8(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v3 = *(v1 + 56);
        v4 = objc_allocWithZone(type metadata accessor for AFibBurdenOnboardingGetStartedViewController());
        sub_29D6F327C();
      }

      else
      {
        v7 = objc_allocWithZone(type metadata accessor for AFibBurdenOnboardingHowItWorksViewController());
        sub_29D8780BC(1);
      }
    }

    else
    {
      v6 = objc_allocWithZone(type metadata accessor for AFibBurdenOnboardingStartViewController());
      sub_29D843318(1, 0, 0);
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v5 = objc_allocWithZone(type metadata accessor for AFibBurdenOnboardingShouldKnowViewController());
      sub_29D8B0F4C(1);
    }

    else
    {
      sub_29D6945AC(v1 + 16, v11);
      sub_29D6945AC(v1 + 64, v10);
      v9 = objc_allocWithZone(type metadata accessor for AFibBurdenOnboardingSetupCompleteViewController());
      sub_29D920BB8(v11, v10);
    }
  }

  else if (a1 == 3)
  {
    v2 = objc_allocWithZone(type metadata accessor for AFibBurdenOnboardingResultsViewController());
    sub_29D85FAE0(1);
  }

  else
  {
    v8 = objc_allocWithZone(type metadata accessor for AFibBurdenOnboardingLifeFactorsViewController());
    sub_29D738970(1);
  }
}

uint64_t sub_29D88BA4C()
{
  sub_29D69417C((v0 + 16));
  sub_29D69417C((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t static String.hypertensionAccessibilityIdentifier(_:)()
{
  sub_29D782F64(0, &qword_2A1A21F18, MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D93F680;
  v1 = *MEMORY[0x29EDC43E0];
  *(v0 + 32) = sub_29D939D68();
  *(v0 + 40) = v2;
  *(v0 + 48) = 0xD000000000000019;
  *(v0 + 56) = 0x800000029D95FDD0;
  v3 = sub_29D935E88();
  sub_29D88BBC8(v3);
  sub_29D782F64(0, &qword_2A17B3628, MEMORY[0x29EDC9A40]);
  sub_29D738398();
  v4 = sub_29D939CA8();

  return v4;
}

uint64_t sub_29D88BBC8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_29D68F740(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_29D88BCEC(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_29D93A928();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_29D93A928();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_29D88C47C(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_29D88BDE4(void *result)
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

  result = sub_29D68FADC(result, v11, 1, v3);
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

  sub_29D694718();
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

uint64_t sub_29D88BF94(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_29D88C100(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  v6 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_29D93AA48();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_29D6C320C();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_29D88C220(uint64_t result, uint64_t (*a2)(void), unint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_29D695734(0, a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_29D88C348(void *result)
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

  result = sub_29D6903BC(result, v11, 1, v3);
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

  sub_29D695734(0, &unk_2A1A246A0);
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

uint64_t sub_29D88C47C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_29D93A928();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_29D93AA48();
  *v1 = result;
  return result;
}

uint64_t sub_29D88C51C(uint64_t a1, int a2)
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

uint64_t sub_29D88C564(uint64_t result, int a2, int a3)
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

uint64_t sub_29D88C5D0(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v7 = *v3;
  sub_29D897AA8();
  v30 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + *(v7 + qword_2A17D09A8 + 24)) = MEMORY[0x29EDCA1A0];
  *(v3 + *(*v3 + qword_2A17D09A8 + 32)) = 0;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v14 = sub_29D937898();
  sub_29D69C6C0(v14, qword_2A1A2C008);
  v15 = sub_29D937878();
  v16 = sub_29D93A288();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    HIDWORD(v28) = v5;
    v5 = v17;
    v18 = swift_slowAlloc();
    v29 = a2;
    v19 = v18;
    v31 = v18;
    *v5 = 136446722;
    v20 = sub_29D93AF08();
    v22 = sub_29D6C2364(v20, v21, &v31);

    *(v5 + 4) = v22;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_29D6C2364(0xD000000000000036, 0x800000029D96ACE0, &v31);
    *(v5 + 22) = 2080;
    *(v5 + 24) = sub_29D6C2364(0xD00000000000002CLL, 0x800000029D96B020, &v31);
    _os_log_impl(&dword_29D677000, v15, v16, "[%{public}s.%{public}s]: Initializing data source: %s", v5, 0x20u);
    swift_arrayDestroy();
    v23 = v19;
    a2 = v29;
    MEMORY[0x29ED6BE30](v23, -1, -1);
    v24 = v5;
    LOBYTE(v5) = BYTE4(v28);
    MEMORY[0x29ED6BE30](v24, -1, -1);
  }

  v25 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B8] healthStore:a2];
  *(v4 + *(*v4 + qword_2A17D09A8 + 16)) = v25;
  (*(v9 + 104))(v13, *MEMORY[0x29EDC1FF8], v30);

  v26 = sub_29D935538();

  if (v5)
  {
    sub_29D8929F0(a2);
  }

  else
  {
    sub_29D894710(sub_29D897AA8, &unk_2A244B688, &unk_2A244B750, sub_29D897DF0);
  }

  return v26;
}

uint64_t sub_29D88C9BC(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v7 = *v3;
  sub_29D897708();
  v30 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + *(v7 + qword_2A17D09A8 + 24)) = MEMORY[0x29EDCA1A0];
  *(v3 + *(*v3 + qword_2A17D09A8 + 32)) = 0;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v14 = sub_29D937898();
  sub_29D69C6C0(v14, qword_2A1A2C008);
  v15 = sub_29D937878();
  v16 = sub_29D93A288();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    HIDWORD(v28) = v5;
    v5 = v17;
    v18 = swift_slowAlloc();
    v29 = a2;
    v19 = v18;
    v31 = v18;
    *v5 = 136446722;
    v20 = sub_29D93AF08();
    v22 = sub_29D6C2364(v20, v21, &v31);

    *(v5 + 4) = v22;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_29D6C2364(0xD000000000000036, 0x800000029D96ACE0, &v31);
    *(v5 + 22) = 2080;
    *(v5 + 24) = sub_29D6C2364(0xD00000000000003BLL, 0x800000029D96AFE0, &v31);
    _os_log_impl(&dword_29D677000, v15, v16, "[%{public}s.%{public}s]: Initializing data source: %s", v5, 0x20u);
    swift_arrayDestroy();
    v23 = v19;
    a2 = v29;
    MEMORY[0x29ED6BE30](v23, -1, -1);
    v24 = v5;
    LOBYTE(v5) = BYTE4(v28);
    MEMORY[0x29ED6BE30](v24, -1, -1);
  }

  v25 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B8] healthStore:a2];
  *(v4 + *(*v4 + qword_2A17D09A8 + 16)) = v25;
  (*(v9 + 104))(v13, *MEMORY[0x29EDC1FF8], v30);

  v26 = sub_29D935538();

  if (v5)
  {
    sub_29D893880(a2);
  }

  else
  {
    sub_29D894710(sub_29D897708, &unk_2A244B598, &unk_2A244B660, sub_29D897A78);
  }

  return v26;
}

uint64_t sub_29D88CDA8(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v7 = *v3;
  sub_29D8929B4(0);
  v30 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + *(v7 + qword_2A17D09A8 + 24)) = MEMORY[0x29EDCA1A0];
  *(v3 + *(*v3 + qword_2A17D09A8 + 32)) = 0;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v14 = sub_29D937898();
  sub_29D69C6C0(v14, qword_2A1A2C008);
  v15 = sub_29D937878();
  v16 = sub_29D93A288();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    HIDWORD(v28) = v5;
    v5 = v17;
    v18 = swift_slowAlloc();
    v29 = a2;
    v19 = v18;
    v31 = v18;
    *v5 = 136446722;
    v20 = sub_29D93AF08();
    v22 = sub_29D6C2364(v20, v21, &v31);

    *(v5 + 4) = v22;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_29D6C2364(0xD000000000000036, 0x800000029D96ACE0, &v31);
    *(v5 + 22) = 2080;
    *(v5 + 24) = sub_29D6C2364(0xD00000000000001DLL, 0x800000029D96AD20, &v31);
    _os_log_impl(&dword_29D677000, v15, v16, "[%{public}s.%{public}s]: Initializing data source: %s", v5, 0x20u);
    swift_arrayDestroy();
    v23 = v19;
    a2 = v29;
    MEMORY[0x29ED6BE30](v23, -1, -1);
    v24 = v5;
    LOBYTE(v5) = BYTE4(v28);
    MEMORY[0x29ED6BE30](v24, -1, -1);
  }

  v25 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B8] healthStore:a2];
  *(v4 + *(*v4 + qword_2A17D09A8 + 16)) = v25;
  (*(v9 + 104))(v13, *MEMORY[0x29EDC1FF8], v30);

  v26 = sub_29D935538();

  if (v5)
  {
    sub_29D89504C(a2);
  }

  else
  {
    sub_29D894710(sub_29D8929B4, &unk_2A244B1B0, &unk_2A244B278, sub_29D8962AC);
  }

  return v26;
}

uint64_t sub_29D88D194(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v7 = *v3;
  sub_29D897E20();
  v30 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + *(v7 + qword_2A17D09A8 + 24)) = MEMORY[0x29EDCA1A0];
  *(v3 + *(*v3 + qword_2A17D09A8 + 32)) = 0;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v14 = sub_29D937898();
  sub_29D69C6C0(v14, qword_2A1A2C008);
  v15 = sub_29D937878();
  v16 = sub_29D93A288();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    HIDWORD(v28) = v5;
    v5 = v17;
    v18 = swift_slowAlloc();
    v29 = a2;
    v19 = v18;
    v31 = v18;
    *v5 = 136446722;
    v20 = sub_29D93AF08();
    v22 = sub_29D6C2364(v20, v21, &v31);

    *(v5 + 4) = v22;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_29D6C2364(0xD000000000000036, 0x800000029D96ACE0, &v31);
    *(v5 + 22) = 2080;
    *(v5 + 24) = sub_29D6C2364(0xD00000000000006ELL, 0x800000029D96B050, &v31);
    _os_log_impl(&dword_29D677000, v15, v16, "[%{public}s.%{public}s]: Initializing data source: %s", v5, 0x20u);
    swift_arrayDestroy();
    v23 = v19;
    a2 = v29;
    MEMORY[0x29ED6BE30](v23, -1, -1);
    v24 = v5;
    LOBYTE(v5) = BYTE4(v28);
    MEMORY[0x29ED6BE30](v24, -1, -1);
  }

  v25 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B8] healthStore:a2];
  *(v4 + *(*v4 + qword_2A17D09A8 + 16)) = v25;
  (*(v9 + 104))(v13, *MEMORY[0x29EDC1FF8], v30);

  v26 = sub_29D935538();

  if (v5)
  {
    sub_29D8962DC(a2);
  }

  else
  {
    sub_29D894710(sub_29D897E20, &unk_2A244B778, &unk_2A244B840, sub_29D898398);
  }

  return v26;
}

uint64_t sub_29D88D580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = a4(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v14 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *MEMORY[0x29EDBA5A0];

    v12 = sub_29D9371B8();
    LODWORD(v11) = [v12 areAllRequirementsSatisfied];

    v13 = MEMORY[0x29EDC2000];
    if (!v11)
    {
      v13 = MEMORY[0x29EDC1FF8];
    }

    (*(v5 + 104))(v9, *v13, v4);
    sub_29D935528();
  }

  return result;
}

uint64_t sub_29D88D6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  sub_29D897AA8();
  v6[4] = v8;
  v9 = *(v8 - 8);
  v6[5] = v9;
  v10 = *(v9 + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = sub_29D939FF8();
  v6[8] = sub_29D939FE8();
  v11 = swift_task_alloc();
  v6[9] = v11;
  *v11 = v6;
  v11[1] = sub_29D88D7E4;

  return sub_29D7023D4(0, a5);
}

uint64_t sub_29D88D7E4(char a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 80) = a1;

  v6 = sub_29D939FD8();

  return MEMORY[0x2A1C73D48](sub_29D8983E0, v6, v5);
}

uint64_t sub_29D88D928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  sub_29D897708();
  v6[4] = v8;
  v9 = *(v8 - 8);
  v6[5] = v9;
  v10 = *(v9 + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = sub_29D939FF8();
  v6[8] = sub_29D939FE8();
  v11 = swift_task_alloc();
  v6[9] = v11;
  *v11 = v6;
  v11[1] = sub_29D88D7E4;

  return sub_29D7023D4(0, a5);
}

uint64_t sub_29D88DA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  sub_29D8929B4(0);
  v6[4] = v8;
  v9 = *(v8 - 8);
  v6[5] = v9;
  v10 = *(v9 + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = sub_29D939FF8();
  v6[8] = sub_29D939FE8();
  v11 = swift_task_alloc();
  v6[9] = v11;
  *v11 = v6;
  v11[1] = sub_29D88D7E4;

  return sub_29D7023D4(0, a5);
}

uint64_t sub_29D88DB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  sub_29D897E20();
  v6[4] = v8;
  v9 = *(v8 - 8);
  v6[5] = v9;
  v10 = *(v9 + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = sub_29D939FF8();
  v6[8] = sub_29D939FE8();
  v11 = swift_task_alloc();
  v6[9] = v11;
  *v11 = v6;
  v11[1] = sub_29D88D7E4;

  return sub_29D7023D4(0, a5);
}

uint64_t sub_29D88DC58(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a4;
  v9 = sub_29D9371A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  sub_29D892620(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v17 = &v28 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    v20 = sub_29D93A028();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
    (*(v10 + 16))(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
    sub_29D939FF8();

    v21 = a3;
    v29 = a6;
    v22 = v21;
    v23 = sub_29D939FE8();
    v24 = (*(v10 + 80) + 48) & ~*(v10 + 80);
    v25 = swift_allocObject();
    v26 = MEMORY[0x29EDCA390];
    *(v25 + 2) = v23;
    *(v25 + 3) = v26;
    *(v25 + 4) = v19;
    *(v25 + 5) = v22;
    (*(v10 + 32))(&v25[v24], &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    v27 = v29;
    *&v25[(v11 + v24 + 7) & 0xFFFFFFFFFFFFFFF8] = v30;
    sub_29D6BEBA4(0, 0, v17, v27, v25);
  }

  return result;
}

uint64_t sub_29D88DECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  sub_29D8929B4(0);
  v6[4] = v8;
  v9 = *(v8 - 8);
  v6[5] = v9;
  v10 = *(v9 + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = sub_29D939FF8();
  v6[8] = sub_29D939FE8();
  v11 = swift_task_alloc();
  v6[9] = v11;
  *v11 = v6;
  v11[1] = sub_29D88DFDC;

  return sub_29D7023D4(0, a5);
}

uint64_t sub_29D88DFDC(char a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 80) = a1;

  v6 = sub_29D939FD8();

  return MEMORY[0x2A1C73D48](sub_29D88E120, v6, v5);
}

uint64_t sub_29D88E120()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  *(v7 + *(*v7 + qword_2A17D09A8 + 32)) = v1;
  v8 = *MEMORY[0x29EDBA5A0];
  v9 = sub_29D9371B8();
  v10 = [v9 areAllRequirementsSatisfied];

  v11 = MEMORY[0x29EDC2000];
  if ((v10 & v1) == 0)
  {
    v11 = MEMORY[0x29EDC1FF8];
  }

  (*(v4 + 104))(v3, *v11, v6);
  sub_29D935528();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_29D88E254(unint64_t a1)
{
  v3 = *v1;
  sub_29D897AA8();
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = *(v26 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v25 - v9;
  v11 = sub_29D9371A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v1 + *(v3 + qword_2A17D09A8 + 16));
  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  sub_29D937278();
  if (a1 >> 62)
  {
    v18 = sub_29D93A928();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = v18 > 0;
  v20 = *MEMORY[0x29EDBA5A0];
  v21 = sub_29D9371B8();
  v22 = [v21 areAllRequirementsSatisfied];

  v23 = MEMORY[0x29EDC2000];
  if ((v22 & v19) == 0)
  {
    v23 = MEMORY[0x29EDC1FF8];
  }

  (*(v26 + 104))(v10, *v23, v27);
  sub_29D935528();
  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_29D88E6BC(unint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  v5 = a2(0);
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = &v26 - v10;
  v12 = sub_29D9371A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v2 + *(v4 + qword_2A17D09A8 + 16));
  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  sub_29D937278();
  if (a1 >> 62)
  {
    v19 = sub_29D93A928();
  }

  else
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v19 > 0;
  v21 = *MEMORY[0x29EDBA5A0];
  v22 = sub_29D9371B8();
  v23 = [v22 areAllRequirementsSatisfied];

  v24 = MEMORY[0x29EDC2000];
  if ((v23 & v20) == 0)
  {
    v24 = MEMORY[0x29EDC1FF8];
  }

  (*(v27 + 104))(v11, *v24, v28);
  sub_29D935528();
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_29D88EB28(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_29D88EE1C(a1, a2, a3, a4);
  v5 = sub_29D935248();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_29D935238();
  v9 = sub_29D935958();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_29D935938();
  sub_29D85F948(0, &qword_2A17B1088, &qword_2A17B1090);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29D93F680;
  v13 = sub_29D8925D8(&qword_2A17B7028, sub_29D892420);
  *(v12 + 32) = v4;
  *(v12 + 40) = v13;
  v14 = MEMORY[0x29EDC1EB0];
  *(v12 + 48) = v8;
  *(v12 + 56) = v14;
  v15 = sub_29D935968();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  v18 = sub_29D935978();

  sub_29D935948();
  sub_29D892620(0, &qword_2A17B7058, sub_29D892684, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93F680;
  *(inited + 32) = 1;
  v20 = sub_29D89275C();
  *(inited + 40) = v4;
  *(inited + 48) = v20;
  v21 = MEMORY[0x29EDC2908];
  *(inited + 56) = v13;
  *(inited + 64) = 2;
  *(inited + 72) = v18;
  *(inited + 80) = v21;
  *(inited + 88) = MEMORY[0x29EDC2280];
  sub_29D73FA18(inited);
  swift_setDeallocating();
  sub_29D892684();

  swift_arrayDestroy();
  v22 = sub_29D936658();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();

  v25 = sub_29D936648();
  v26 = sub_29D936338();
  sub_29D89290C(0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_29D88CDA8(v25, v26, 0);

  return v30;
}

uint64_t sub_29D88EE1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_29D89716C();
  sub_29D88F074(a1, a2, a3, a4);
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v8 = sub_29D937898();
  sub_29D69C6C0(v8, qword_2A1A2BF10);

  v9 = sub_29D937878();
  v10 = sub_29D93A268();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136446978;
    *(v11 + 4) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D9514D0, &v23);
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D96ADC0, &v23);
    *(v11 + 22) = 2080;
    v13 = sub_29D9357A8();
    v15 = sub_29D6C2364(v13, v14, &v23);

    *(v11 + 24) = v15;
    *(v11 + 32) = 2080;
    v16 = sub_29D9357A8();
    v18 = sub_29D6C2364(v16, v17, &v23);

    *(v11 + 34) = v18;
    _os_log_impl(&dword_29D677000, v9, v10, "[%{public}s.%{public}s]: Making PrimarySecondaryDataSource with primaryDataSource: %s, secondaryDataSource: %s", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v12, -1, -1);
    MEMORY[0x29ED6BE30](v11, -1, -1);
  }

  sub_29D892420();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  return sub_29D935ED8();
}

uint64_t sub_29D88F074(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v50 = a4;
  v51 = a3;
  v48 = a1;
  v49 = a2;
  v4 = sub_29D9356A8();
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v52 = &v47 - v10;
  v11 = sub_29D936378();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v15 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D877C0C();
  v47 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = (&v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v22 = sub_29D937898();
  sub_29D69C6C0(v22, qword_2A1A2BF10);
  v23 = sub_29D937878();
  v24 = sub_29D93A268();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v56[0] = v26;
    *v25 = 136446466;
    *(v25 + 4) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D9514D0, v56);
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_29D6C2364(0xD000000000000033, 0x800000029D96ADF0, v56);
    _os_log_impl(&dword_29D677000, v23, v24, "[%{public}s.%{public}s]: Creating Blood Pressure Journal summary data source", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v26, -1, -1);
    MEMORY[0x29ED6BE30](v25, -1, -1);
  }

  v27 = v48;
  sub_29D936318();
  sub_29D693E2C(v56, v56[3]);
  v28 = sub_29D933EC8();
  v29 = sub_29D93A598();

  sub_29D69417C(v56);
  sub_29D75A420();
  v31 = objc_allocWithZone(v30);
  v32 = v29;
  v33 = sub_29D936A38();
  (*(v12 + 16))(&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v11);
  v34 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v35 = swift_allocObject();
  v36 = v51;
  *(v35 + 16) = v49;
  *(v35 + 24) = v36;
  *(v35 + 32) = v50;
  (*(v12 + 32))(v35 + v34, v15, v11);
  *v21 = sub_29D8974E0;
  v21[1] = v35;
  (*(v17 + 104))(v21, *MEMORY[0x29EDC2720], v47);
  sub_29D877D44();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = v33;
  sub_29D935E88();
  sub_29D935328();
  sub_29D935588();

  v41 = v52;
  sub_29D935658();
  v42 = v53;
  sub_29D935618();
  v43 = v55;
  v44 = *(v54 + 8);
  v44(v41, v55);
  sub_29D89259C(0);
  sub_29D8925D8(&qword_2A17B7048, sub_29D89259C);
  v45 = sub_29D9355A8();

  v44(v42, v43);
  return v45;
}

uint64_t sub_29D88F5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = sub_29D935DA8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6945AC(a1, v38);
  sub_29D695734(0, &qword_2A17B1140);
  sub_29D934528();
  if (swift_dynamicCast())
  {
    v35 = v37;
    v36 = a1;
    v15 = sub_29D934508();
    v16 = sub_29D934288();
    v18 = sub_29D6A173C(v16, v17, v15);

    v19 = sub_29D936338();
    sub_29D88FA18(v19, v18 & 1, v38);

    v20 = sub_29D936338();
    v21 = v20;
    if (v18)
    {
      sub_29D890E60(v20, v14);
    }

    else
    {
      sub_29D8915E8(v20, a3, a4, a5, v14);
    }

    v28 = v36;

    sub_29D85F948(0, &qword_2A17B1138, &qword_2A17B1140);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_29D943EA0;
    v29 = v39;
    v30 = v40;
    v31 = sub_29D693E2C(v38, v39);
    *(v27 + 56) = v29;
    *(v27 + 64) = *(v30 + 8);
    v32 = sub_29D693F78((v27 + 32));
    (*(*(v29 - 8) + 16))(v32, v31, v29);
    sub_29D6945AC(v28, v27 + 72);
    *(v27 + 136) = v9;
    *(v27 + 144) = sub_29D8925D8(&qword_2A17B2708, MEMORY[0x29EDC23F8]);
    v33 = sub_29D693F78((v27 + 112));
    (*(v10 + 32))(v33, v14, v9);

    sub_29D69417C(v38);
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v22 = sub_29D937898();
    sub_29D69C6C0(v22, qword_2A1A2BF10);
    v23 = sub_29D937878();
    v24 = sub_29D93A288();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D9514D0, v38);
      _os_log_impl(&dword_29D677000, v23, v24, "[%s] Item is not a FeedItem. Returning.", v25, 0xCu);
      sub_29D69417C(v26);
      MEMORY[0x29ED6BE30](v26, -1, -1);
      MEMORY[0x29ED6BE30](v25, -1, -1);
    }

    sub_29D85F948(0, &qword_2A17B1138, &qword_2A17B1140);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_29D93DDB0;
    sub_29D6945AC(a1, v27 + 32);
  }

  return v27;
}

void sub_29D88FA18(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v54 = a3;
  sub_29D892620(0, &qword_2A17B7090, MEMORY[0x29EDC23D8], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v49 - v12;
  v14 = sub_29D933AA8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v17 = sub_29D939D18();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x2A1C7C4A8](v17, v20);
  v23 = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21, v24);
  v26 = v49 - v25;
  sub_29D937B88();
  v55 = swift_allocBox();
  sub_29D937B18();
  sub_29D937AF8();
  sub_29D939D08();
  if (a2)
  {
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v27 = qword_2A1A2BE98;
    (*(v18 + 16))(v23, v26, v17);
    sub_29D935E88();
    v28 = v27;
    sub_29D933A98();
    sub_29D939D98();
    (*(v18 + 8))(v26, v17);
    v29 = sub_29D935D58();
    (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
    v56 = &unk_2A243F128;

    sub_29D88BBC8(&unk_2A243F0F8);
    v56 = &unk_2A243D870;
    v30 = sub_29D935E88();
    sub_29D88BBC8(v30);
    v31 = sub_29D939F18();
    v32 = HKUIJoinStringsForAutomationIdentifier();

    if (v32)
    {
      sub_29D939D68();

      v33 = sub_29D935D78();
      v34 = v54;
      v54[3] = v33;
      v34[4] = sub_29D8925D8(&qword_2A17B70A0, MEMORY[0x29EDC23E0]);
      sub_29D693F78(v34);
      sub_29D935D68();
LABEL_10:

      return;
    }

    __break(1u);
  }

  else
  {
    v52 = a1;
    v53 = v10;
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v35 = qword_2A1A2BE98;
    v49[2] = unk_2A1A2BEA0;
    v51 = *(v18 + 16);
    v51(v23, v26, v17);
    sub_29D935E88();
    v50 = v35;
    sub_29D933A98();
    v36 = sub_29D939D98();
    v49[0] = v37;
    v49[1] = v36;
    v38 = *(v18 + 8);
    v38(v26, v17);
    v39 = sub_29D935D58();
    (*(*(v39 - 8) + 56))(v53, 1, 1, v39);

    sub_29D939D08();
    v51(v23, v26, v17);
    sub_29D935E88();
    v40 = v50;
    sub_29D933A98();
    sub_29D939D98();
    v38(v26, v17);
    v41 = swift_allocObject();
    v42 = v52;
    *(v41 + 16) = v52;
    v56 = &unk_2A243F188;
    v43 = v42;
    sub_29D88BBC8(&unk_2A243F158);
    v56 = &unk_2A243D870;
    v44 = sub_29D935E88();
    sub_29D88BBC8(v44);
    v45 = sub_29D939F18();
    v46 = HKUIJoinStringsForAutomationIdentifier();

    if (v46)
    {
      sub_29D939D68();

      v47 = sub_29D936848();
      v48 = v54;
      v54[3] = v47;
      v48[4] = sub_29D8925D8(&qword_2A17B7098, MEMORY[0x29EDC28D0]);
      sub_29D693F78(v48);
      sub_29D936838();
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_29D890164()
{
  sub_29D935D48();
  sub_29D93A348();
  sub_29D936828();
  sub_29D93A348();
  sub_29D936DB8();
  return sub_29D93A348();
}

uint64_t sub_29D8901CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D937B88();
  v3 = swift_projectBox();
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

void sub_29D89025C(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x29EDC51F8]) initWithHealthStore_];
  if (a1 && (type metadata accessor for BloodPressureDataTypeDetailViewController(), swift_dynamicCastClass()))
  {
    v5 = sub_29D7D0C64();
  }

  else
  {
    v5 = 5;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a1;
  v11[4] = sub_29D897634;
  v11[5] = v6;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1107296256;
  v11[2] = sub_29D6C1F54;
  v11[3] = &unk_2A244B3A8;
  v7 = _Block_copy(v11);
  v8 = v4;
  v9 = a2;
  v10 = a1;

  [v8 fetchActiveJournalWithCompletion_];
  _Block_release(v7);
}

uint64_t sub_29D8903A8(void *a1, void *a2, void *a3, int a4, void *a5, void *a6)
{
  v51 = a4;
  v53 = a1;
  v10 = sub_29D939968();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_29D939998();
  v52 = *(v54 - 8);
  v16 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v54, v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v50 = a5;
    v20 = a2;
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v21 = sub_29D937898();
    sub_29D69C6C0(v21, qword_2A1A2BF10);
    v22 = a2;
    v23 = sub_29D937878();
    v24 = sub_29D93A288();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v48 = a3;
      v26 = v25;
      v27 = swift_slowAlloc();
      v49 = v11;
      v28 = v27;
      aBlock[0] = v27;
      *v26 = 136446722;
      v47 = a6;
      *(v26 + 4) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D9514D0, aBlock);
      *(v26 + 12) = 2082;
      *(v26 + 14) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D96AF70, aBlock);
      *(v26 + 22) = 2080;
      v55 = a2;
      v29 = a2;
      sub_29D695734(0, &qword_2A1A24850);
      v30 = sub_29D939DA8();
      v32 = sub_29D6C2364(v30, v31, aBlock);
      a6 = v47;

      *(v26 + 24) = v32;
      _os_log_impl(&dword_29D677000, v23, v24, "[%{public}s.%{public}s]: Error fetching active journal from health store: %s", v26, 0x20u);
      swift_arrayDestroy();
      v33 = v28;
      v11 = v49;
      MEMORY[0x29ED6BE30](v33, -1, -1);
      v34 = v26;
      a3 = v48;
      MEMORY[0x29ED6BE30](v34, -1, -1);
    }

    else
    {
    }

    a5 = v50;
  }

  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v35 = sub_29D93A468();
  v36 = swift_allocObject();
  v37 = v53;
  *(v36 + 16) = v53;
  *(v36 + 24) = a3;
  *(v36 + 32) = v51;
  *(v36 + 40) = a5;
  *(v36 + 48) = a6;
  aBlock[4] = sub_29D897644;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A244B3F8;
  v38 = _Block_copy(aBlock);
  v39 = a6;
  v40 = v38;
  v41 = v39;
  v42 = v37;
  v43 = a3;
  v44 = a5;

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D8925D8(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D892620(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v19, v15, v40);
  _Block_release(v40);

  (*(v11 + 8))(v15, v10);
  return (*(v52 + 8))(v19, v54);
}

void sub_29D8908C0(void *a1, void *a2, char a3, void *a4, void *a5)
{
  sub_29D892620(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v14 = &v79[-v13];
  type metadata accessor for BloodPressureSettingsFacade();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a4;
  v16 = type metadata accessor for BloodPressureJournalSettingsViewModel();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = a1;
  v20 = a2;
  v21 = a4;
  v15[5] = sub_29D7F280C(a1, 1);
  v22 = sub_29D93A028();
  v23 = *(*(v22 - 8) + 56);
  v23(v14, 1, 1, v22);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v15;

  sub_29D6BEBA4(0, 0, v14, &unk_29D951580, v24);

  v23(v14, 1, 1, v22);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v21;
  v25[5] = v15;
  v26 = v21;

  sub_29D6BEBA4(0, 0, v14, &unk_29D9409E0, v25);

  v27 = objc_allocWithZone(type metadata accessor for BloodPressureJournalSettingsViewController());
  v28 = v26;

  v30 = sub_29D8D9220(v29, a3, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = v15;
  *(v31 + 24) = v30;
  v32 = v30;

  v33 = v32;
  v34 = sub_29D938D08();
  v36 = v35;
  v37 = type metadata accessor for BloodPressureJournalSettingsView();
  v38 = (v36 + v37[8]);
  v39 = *v38;
  v40 = v38[1];
  *v38 = sub_29D6C2FD0;
  v38[1] = v31;
  sub_29D694784(v39);
  v34(v79, 0);
  v41 = swift_allocObject();
  *(v41 + 16) = v28;
  *(v41 + 24) = v33;
  v42 = v28;
  v43 = v33;
  v44 = sub_29D938D08();
  v46 = (v45 + v37[5]);
  v47 = *v46;
  v48 = v46[1];
  *v46 = sub_29D6C2FD8;
  v46[1] = v41;
  sub_29D694784(v47);
  v44(v79, 0);
  v49 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v50 = swift_allocObject();
  *(v50 + 16) = v15;
  *(v50 + 24) = v49;

  v51 = sub_29D938D08();
  v53 = (v52 + v37[6]);
  v54 = *v53;
  v55 = v53[1];
  *v53 = sub_29D6C2FE0;
  v53[1] = v50;
  sub_29D694784(v54);
  v51(v79, 0);

  v56 = swift_allocObject();
  *(v56 + 16) = v42;
  *(v56 + 24) = a3;
  *(v56 + 32) = v43;
  v57 = v42;
  v58 = v43;
  v59 = sub_29D938D08();
  v61 = (v60 + v37[7]);
  v62 = *v61;
  v63 = v61[1];
  *v61 = sub_29D6C2FE8;
  v61[1] = v56;
  sub_29D694784(v62);
  v59(v79, 0);
  v64 = swift_allocObject();
  *(v64 + 16) = v58;
  v65 = v58;
  v66 = sub_29D938D08();
  v68 = (v67 + v37[9]);
  v69 = *v68;
  v70 = v68[1];
  *v68 = sub_29D6C2FF8;
  v68[1] = v64;
  sub_29D694784(v69);
  v66(v79, 0);
  v71 = swift_allocObject();
  *(v71 + 16) = v65;
  v72 = v65;
  v73 = sub_29D938D08();
  v75 = (v74 + v37[10]);
  v76 = *v75;
  v77 = v75[1];
  *v75 = sub_29D6C3000;
  v75[1] = v71;
  sub_29D694784(v76);
  v73(v79, 0);

  v78 = [objc_allocWithZone(MEMORY[0x29EDC7B80]) initWithRootViewController_];
  if (a5)
  {
    [a5 presentViewController:v78 animated:1 completion:0];
  }
}

void sub_29D890E60(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v59 = a2;
  v58 = sub_29D936BE8();
  v56 = *(v58 - 8);
  v2 = *(v56 + 64);
  MEMORY[0x2A1C7C4A8](v58, v3);
  v57 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D892620(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v64 = &v56 - v8;
  v9 = sub_29D935C78();
  v61 = *(v9 - 8);
  v62 = v9;
  v10 = *(v61 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v67 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D933AA8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v60 = sub_29D939D18();
  v16 = *(v60 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v60, v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v56 - v23;
  v25 = sub_29D937A28();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v25, v28);
  v30 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29D937B88();
  v65 = *(v31 - 8);
  v66 = v31;
  v32 = *(v65 + 64);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v35 = &v56 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B78();
  (*(v26 + 104))(v30, *MEMORY[0x29EDC77D8], v25);
  v36 = sub_29D937A98();
  sub_29D937A78();
  v36(v69, 0);
  v37 = sub_29D937A98();
  sub_29D937A18();
  v37(v69, 0);
  v38 = objc_opt_self();
  v39 = [v38 linkColor];
  v40 = sub_29D937A98();
  sub_29D937A68();
  v40(v69, 0);
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v41 = qword_2A1A2BE98;
  v42 = v60;
  (*(v16 + 16))(v21, v24, v60);
  sub_29D935E88();
  v43 = v41;
  sub_29D933A98();
  sub_29D939D98();
  (*(v16 + 8))(v24, v42);
  sub_29D937B48();
  v44 = swift_allocObject();
  v45 = v63;
  *(v44 + 16) = v63;
  v46 = v66;
  v69[3] = v66;
  v69[4] = MEMORY[0x29EDC7800];
  v47 = sub_29D693F78(v69);
  (*(v65 + 16))(v47, v35, v46);
  *v67 = 1;
  v48 = *MEMORY[0x29EDC22C0];
  (*(v61 + 104))();
  v49 = v45;

  v50 = v64;
  sub_29D9379D8();
  v51 = [v38 secondarySystemGroupedBackgroundColor];
  sub_29D9379B8();
  sub_29D933E48();
  sub_29D9379A8();
  v52 = sub_29D9379E8();
  (*(*(v52 - 8) + 56))(v50, 0, 1, v52);
  v68 = &unk_2A243F1E8;
  sub_29D88BBC8(&unk_2A243F1B8);
  v68 = &unk_2A243D870;
  v53 = sub_29D935E88();
  sub_29D88BBC8(v53);
  v54 = sub_29D939F18();
  v55 = HKUIJoinStringsForAutomationIdentifier();

  if (v55)
  {
    sub_29D939D68();

    (*(v56 + 104))(v57, *MEMORY[0x29EDC2A38], v58);
    sub_29D935D98();

    (*(v65 + 8))(v35, v66);
  }

  else
  {
    __break(1u);
  }
}

void sub_29D8915E8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v70 = a4;
  v71 = a1;
  v72 = a3;
  v69 = a2;
  v65 = a5;
  v64 = sub_29D936BE8();
  v62 = *(v64 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x2A1C7C4A8](v64, v6);
  v63 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D892620(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v74 = &v61 - v11;
  v12 = sub_29D935C78();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = *(v67 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v73 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D933AA8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8, v18);
  v66 = sub_29D939D18();
  v19 = *(v66 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x2A1C7C4A8](v66, v21);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22, v25);
  v27 = &v61 - v26;
  v28 = sub_29D937A28();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v28, v31);
  v33 = &v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29D937B88();
  v75 = *(v34 - 8);
  v76 = v34;
  v35 = *(v75 + 64);
  MEMORY[0x2A1C7C4A8](v34, v36);
  v38 = &v61 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B78();
  (*(v29 + 104))(v33, *MEMORY[0x29EDC77D8], v28);
  v39 = sub_29D937A98();
  sub_29D937A78();
  v39(v78, 0);
  v40 = sub_29D937A98();
  sub_29D937A18();
  v40(v78, 0);
  v41 = objc_opt_self();
  v42 = [v41 linkColor];
  v43 = sub_29D937A98();
  sub_29D937A68();
  v43(v78, 0);
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v44 = qword_2A1A2BE98;
  v45 = v66;
  (*(v19 + 16))(v24, v27, v66);
  sub_29D935E88();
  v46 = v44;
  sub_29D933A98();
  sub_29D939D98();
  (*(v19 + 8))(v27, v45);
  sub_29D937B48();
  v47 = swift_allocObject();
  v49 = v71;
  v48 = v72;
  v50 = v69;
  *(v47 + 16) = v71;
  *(v47 + 24) = v50;
  *(v47 + 32) = v48;
  *(v47 + 40) = v70;
  v51 = v76;
  v78[3] = v76;
  v78[4] = MEMORY[0x29EDC7800];
  v52 = sub_29D693F78(v78);
  (*(v75 + 16))(v52, v38, v51);
  v53 = v73;
  *v73 = 1;
  (*(v67 + 104))(v53, *MEMORY[0x29EDC22C0], v68);
  v54 = v49;
  sub_29D935E88();

  v55 = v74;
  sub_29D9379D8();
  v56 = [v41 secondarySystemGroupedBackgroundColor];
  sub_29D9379B8();
  sub_29D933E48();
  sub_29D9379A8();
  v57 = sub_29D9379E8();
  (*(*(v57 - 8) + 56))(v55, 0, 1, v57);
  v77 = &unk_2A243F248;
  sub_29D88BBC8(&unk_2A243F218);
  v77 = &unk_2A243D870;
  v58 = sub_29D935E88();
  sub_29D88BBC8(v58);
  v59 = sub_29D939F18();
  v60 = HKUIJoinStringsForAutomationIdentifier();

  if (v60)
  {
    sub_29D939D68();

    (*(v62 + 104))(v63, *MEMORY[0x29EDC2A38], v64);
    sub_29D935D98();

    (*(v75 + 8))(v38, v76);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D891D9C(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = MEMORY[0x29EDB9BC8];
  sub_29D892620(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v13 = &v23 - v12;
  type metadata accessor for BloodPressureJournalLoggingFlowManager();
  *(swift_initStackObject() + 16) = a2;
  type metadata accessor for BloodPressureJournalLoggingAnalyticsUtilities();
  v14 = swift_allocObject();
  v14[3] = 0;
  v14[4] = 0;
  v14[2] = a2;
  type metadata accessor for BloodPressureJournalAnalyticsUtilities();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = 0;
  v14[5] = v15;
  v16 = sub_29D9339F8();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = a2;
  sub_29D8D1130(0, 6, a5, v13, 2, 2);
  sub_29D8975A0(v13, &qword_2A1A25780, v8);
  type metadata accessor for BloodPressureDataTypeDetailViewController();
  if (swift_dynamicCastClass())
  {
    v18 = sub_29D7D0C64();
  }

  else
  {
    v18 = 5;
  }

  type metadata accessor for BloodPressureJournalInteractionAnalyticsUtilities();
  v19 = swift_allocObject();
  v19[4] = 0;
  v19[5] = 0;
  v19[2] = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = 0;
  v19[3] = v20;
  v21 = v17;
  sub_29D6AA594(v18, 5);

  sub_29D783980(a1, 1, a5, 0);
}

uint64_t sub_29D891FE8(void *a1, void *a2)
{
  v4 = sub_29D939968();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29D939998();
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v26, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BloodPressureDataTypeDetailViewController();
  if (swift_dynamicCastClass())
  {
    v15 = sub_29D7D0C64();
  }

  else
  {
    v15 = 5;
  }

  type metadata accessor for BloodPressureJournalInteractionAnalyticsUtilities();
  v16 = swift_allocObject();
  v16[4] = 0;
  v16[5] = 0;
  v16[2] = a2;
  type metadata accessor for BloodPressureJournalAnalyticsUtilities();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = 0;
  v16[3] = v17;
  v18 = a2;
  sub_29D6AA594(v15, 3);

  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v19 = sub_29D93A468();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = a1;
  aBlock[4] = sub_29D897570;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A244B308;
  v21 = _Block_copy(aBlock);
  v22 = v18;
  v23 = a1;

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D8925D8(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D892620(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v14, v9, v21);
  _Block_release(v21);

  (*(v5 + 8))(v9, v4);
  return (*(v10 + 8))(v14, v26);
}

uint64_t sub_29D892364(void *a1, void *a2)
{
  type metadata accessor for BloodPressureJournalCreationFlowManager();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  *(inited + 16) = a1;
  v5 = a1;
  v6 = sub_29D89AE08(0, 0, 0, 7);
  [a2 presentViewController:v6 animated:1 completion:0];

  swift_setDeallocating();
  v7 = *(inited + 32);
}

void sub_29D892420()
{
  if (!qword_2A17B7030)
  {
    sub_29D892508();
    sub_29D75A38C();
    sub_29D8925D8(&qword_2A17B7050, sub_29D892508);
    sub_29D8925D8(&qword_2A17B3C00, sub_29D75A38C);
    v0 = sub_29D935EE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7030);
    }
  }
}

void sub_29D892508()
{
  if (!qword_2A17B7038)
  {
    sub_29D89259C(255);
    sub_29D8925D8(&qword_2A17B7048, sub_29D89259C);
    v0 = sub_29D9357B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7038);
    }
  }
}

uint64_t sub_29D8925D8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D892620(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D892684()
{
  if (!qword_2A17B7060)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_29D8926F4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B7060);
    }
  }
}

unint64_t sub_29D8926F4()
{
  result = qword_2A17B37D8;
  if (!qword_2A17B37D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B37D8);
  }

  return result;
}

unint64_t sub_29D89275C()
{
  result = qword_2A17B7068;
  if (!qword_2A17B7068)
  {
    sub_29D892420();
    sub_29D8925D8(&qword_2A17B7070, sub_29D892508);
    sub_29D8925D8(&qword_2A17B7078, sub_29D75A38C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7068);
  }

  return result;
}

uint64_t sub_29D892838(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29D88E254(v1);
  }

  return result;
}

uint64_t sub_29D892898(unint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29D88E6BC(v4, a3);
  }

  return result;
}

void sub_29D892948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29D8929F0(void *a1)
{
  v86 = a1;
  v2 = *v1;
  sub_29D897AA8();
  v83 = v3;
  v82 = *(v3 - 1);
  v4 = *(v82 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v81 = (v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_29D93A248();
  v92 = *(v7 - 8);
  v93 = v7;
  v8 = *(v92 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v87 = v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D733548();
  v95 = *(v11 - 8);
  v96 = v11;
  v12 = *(v95 + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v94 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D73370C();
  v98 = *(v15 - 8);
  v99 = v15;
  v16 = *(v98 + 64);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v97 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x29EDC9C68];
  sub_29D892620(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20 - 8, v22);
  v91 = v78 - v23;
  sub_29D710880();
  v89 = *(v24 - 1);
  v90 = v24;
  v25 = v89[8];
  MEMORY[0x2A1C7C4A8](v24, v26);
  v88 = v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D892620(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], v19);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v28 - 8, v30);
  v32 = v78 - v31;
  v33 = sub_29D9371A8();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v37 = MEMORY[0x2A1C7C4A8](v33, v36);
  v38 = v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v37, v39);
  v41 = v78 - v40;
  v42 = *(v2 + qword_2A17D09A8 + 16);
  v100 = v1;
  v43 = *(v1 + v42);
  v44 = sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  v45 = v86;
  v84 = v44;
  v85 = v43;
  sub_29D937278();
  v86 = v45;
  v79 = v2;
  v46 = sub_29D93A028();
  v47 = *(*(v46 - 8) + 56);
  v80 = v32;
  v47(v32, 1, 1, v46);
  (*(v34 + 16))(v38, v41, v33);
  sub_29D939FF8();
  v83 = v45;
  v48 = v100;

  v49 = sub_29D939FE8();
  v50 = (*(v34 + 80) + 48) & ~*(v34 + 80);
  v51 = (v35 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = MEMORY[0x29EDCA390];
  *(v52 + 2) = v49;
  *(v52 + 3) = v53;
  v54 = v83;
  *(v52 + 4) = v48;
  *(v52 + 5) = v54;
  (*(v34 + 32))(&v52[v50], v38, v33);
  *&v52[v51] = v2;
  sub_29D6BEBA4(0, 0, v80, &unk_29D9515B8, v52);

  (*(v34 + 8))(v41, v33);
  v55 = v86;
  v101 = sub_29D937288();
  v78[1] = sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v56 = sub_29D93A468();
  v103 = v56;
  v84 = sub_29D93A448();
  v57 = *(v84 - 8);
  v83 = *(v57 + 56);
  v85 = v57 + 56;
  v58 = v91;
  (v83)(v91, 1, 1, v84);
  sub_29D6B7D8C();
  v78[0] = MEMORY[0x29EDB8A00];
  sub_29D8925D8(&qword_2A1A22420, sub_29D6B7D8C);
  v82 = sub_29D706380();
  v59 = v88;
  sub_29D938538();
  v81 = MEMORY[0x29EDCA298];
  sub_29D8975A0(v58, &unk_2A1A248F0, MEMORY[0x29EDCA298]);

  v60 = swift_allocObject();
  v61 = v100;
  swift_weakInit();
  v62 = swift_allocObject();
  v62[2] = v60;
  v62[3] = v55;
  v62[4] = v79;
  v80 = MEMORY[0x29EDB89E8];
  sub_29D8925D8(&qword_2A17B2C70, sub_29D710880);
  v63 = v55;
  v64 = v90;
  sub_29D938588();

  (v89[1])(v59, v64);
  v65 = *(*v61 + qword_2A17D09A8 + 24);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();

  sub_29D69567C(0, &qword_2A1A22220, 0x29EDBAB18);
  v66 = MEMORY[0x29ED6A7D0](*MEMORY[0x29EDBA4F8]);
  sub_29D6A0C58();
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_29D940030;
  *(v67 + 32) = v66;
  v101 = 0;
  v102 = 0xE000000000000000;
  v90 = v66;
  sub_29D93AA18();

  v101 = sub_29D93AF08();
  v102 = v68;
  MEMORY[0x29ED6A240](0xD000000000000015, 0x800000029D95D280);
  v69 = v87;
  sub_29D93A258();

  v70 = swift_allocObject();
  *(v70 + 16) = v63;
  *(v70 + 24) = v63;
  v89 = v63;
  sub_29D938228();
  sub_29D895F60();
  sub_29D895EDC();
  sub_29D8925D8(&qword_2A1A22238, MEMORY[0x29EDC2E88]);
  sub_29D8925D8(&qword_2A17B34D0, sub_29D895EDC);
  v71 = v94;
  v72 = v93;
  sub_29D938508();

  (*(v92 + 8))(v69, v72);
  v73 = sub_29D93A468();
  v101 = v73;
  (v83)(v58, 1, 1, v84);
  sub_29D8925D8(&qword_2A17B34E0, sub_29D733548);
  v75 = v96;
  v74 = v97;
  sub_29D938538();
  sub_29D8975A0(v58, &unk_2A1A248F0, v81);
  (*(v95 + 8))(v71, v75);

  swift_allocObject();
  swift_weakInit();
  sub_29D8925D8(&qword_2A17B34F0, sub_29D73370C);
  v76 = v99;
  sub_29D938478();

  (*(v98 + 8))(v74, v76);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();
}

uint64_t sub_29D893880(void *a1)
{
  v86 = a1;
  v2 = *v1;
  sub_29D897708();
  v83 = v3;
  v82 = *(v3 - 1);
  v4 = *(v82 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v81 = (v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_29D93A248();
  v92 = *(v7 - 8);
  v93 = v7;
  v8 = *(v92 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v87 = v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D733548();
  v95 = *(v11 - 8);
  v96 = v11;
  v12 = *(v95 + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v94 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D73370C();
  v98 = *(v15 - 8);
  v99 = v15;
  v16 = *(v98 + 64);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v97 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x29EDC9C68];
  sub_29D892620(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20 - 8, v22);
  v91 = v78 - v23;
  sub_29D710880();
  v89 = *(v24 - 1);
  v90 = v24;
  v25 = v89[8];
  MEMORY[0x2A1C7C4A8](v24, v26);
  v88 = v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D892620(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], v19);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v28 - 8, v30);
  v32 = v78 - v31;
  v33 = sub_29D9371A8();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v37 = MEMORY[0x2A1C7C4A8](v33, v36);
  v38 = v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v37, v39);
  v41 = v78 - v40;
  v42 = *(v2 + qword_2A17D09A8 + 16);
  v100 = v1;
  v43 = *(v1 + v42);
  v44 = sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  v45 = v86;
  v84 = v44;
  v85 = v43;
  sub_29D937278();
  v86 = v45;
  v79 = v2;
  v46 = sub_29D93A028();
  v47 = *(*(v46 - 8) + 56);
  v80 = v32;
  v47(v32, 1, 1, v46);
  (*(v34 + 16))(v38, v41, v33);
  sub_29D939FF8();
  v83 = v45;
  v48 = v100;

  v49 = sub_29D939FE8();
  v50 = (*(v34 + 80) + 48) & ~*(v34 + 80);
  v51 = (v35 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = MEMORY[0x29EDCA390];
  *(v52 + 2) = v49;
  *(v52 + 3) = v53;
  v54 = v83;
  *(v52 + 4) = v48;
  *(v52 + 5) = v54;
  (*(v34 + 32))(&v52[v50], v38, v33);
  *&v52[v51] = v2;
  sub_29D6BEBA4(0, 0, v80, &unk_29D951598, v52);

  (*(v34 + 8))(v41, v33);
  v55 = v86;
  v101 = sub_29D937288();
  v78[1] = sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v56 = sub_29D93A468();
  v103 = v56;
  v84 = sub_29D93A448();
  v57 = *(v84 - 8);
  v83 = *(v57 + 56);
  v85 = v57 + 56;
  v58 = v91;
  (v83)(v91, 1, 1, v84);
  sub_29D6B7D8C();
  v78[0] = MEMORY[0x29EDB8A00];
  sub_29D8925D8(&qword_2A1A22420, sub_29D6B7D8C);
  v82 = sub_29D706380();
  v59 = v88;
  sub_29D938538();
  v81 = MEMORY[0x29EDCA298];
  sub_29D8975A0(v58, &unk_2A1A248F0, MEMORY[0x29EDCA298]);

  v60 = swift_allocObject();
  v61 = v100;
  swift_weakInit();
  v62 = swift_allocObject();
  v62[2] = v60;
  v62[3] = v55;
  v62[4] = v79;
  v80 = MEMORY[0x29EDB89E8];
  sub_29D8925D8(&qword_2A17B2C70, sub_29D710880);
  v63 = v55;
  v64 = v90;
  sub_29D938588();

  (v89[1])(v59, v64);
  v65 = *(*v61 + qword_2A17D09A8 + 24);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();

  sub_29D69567C(0, &qword_2A1A22220, 0x29EDBAB18);
  v66 = MEMORY[0x29ED6A7D0](*MEMORY[0x29EDBA4F8]);
  sub_29D6A0C58();
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_29D940030;
  *(v67 + 32) = v66;
  v101 = 0;
  v102 = 0xE000000000000000;
  v90 = v66;
  sub_29D93AA18();

  v101 = sub_29D93AF08();
  v102 = v68;
  MEMORY[0x29ED6A240](0xD000000000000015, 0x800000029D95D280);
  v69 = v87;
  sub_29D93A258();

  v70 = swift_allocObject();
  *(v70 + 16) = v63;
  *(v70 + 24) = v63;
  v89 = v63;
  sub_29D938228();
  sub_29D895F60();
  sub_29D895EDC();
  sub_29D8925D8(&qword_2A1A22238, MEMORY[0x29EDC2E88]);
  sub_29D8925D8(&qword_2A17B34D0, sub_29D895EDC);
  v71 = v94;
  v72 = v93;
  sub_29D938508();

  (*(v92 + 8))(v69, v72);
  v73 = sub_29D93A468();
  v101 = v73;
  (v83)(v58, 1, 1, v84);
  sub_29D8925D8(&qword_2A17B34E0, sub_29D733548);
  v75 = v96;
  v74 = v97;
  sub_29D938538();
  sub_29D8975A0(v58, &unk_2A1A248F0, v81);
  (*(v95 + 8))(v71, v75);

  swift_allocObject();
  swift_weakInit();
  sub_29D8925D8(&qword_2A17B34F0, sub_29D73370C);
  v76 = v99;
  sub_29D938478();

  (*(v98 + 8))(v74, v76);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();
}

uint64_t sub_29D894710(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a3;
  v63 = a4;
  v59 = a2;
  v6 = v4;
  v7 = *v4;
  sub_29D892620(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v57 = v56 - v11;
  sub_29D710880();
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = *(v60 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v58 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v16, v19);
  v64 = v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = v56 - v23;
  v25 = sub_29D9371A8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v25, v28);
  v30 = v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v7;
  v31 = *(v6 + *(v7 + qword_2A17D09A8 + 16));
  v56[1] = sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  sub_29D937278();
  v32 = *MEMORY[0x29EDBA5A0];
  v33 = sub_29D9371B8();
  LODWORD(a1) = [v33 areAllRequirementsSatisfied];

  v34 = MEMORY[0x29EDC2000];
  if (!a1)
  {
    v34 = MEMORY[0x29EDC1FF8];
  }

  (*(v17 + 104))(v24, *v34, v16);
  sub_29D935528();
  (*(v26 + 8))(v30, v25);
  v35 = v65;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v36 = sub_29D937898();
  sub_29D69C6C0(v36, qword_2A1A2C008);

  v37 = sub_29D937878();
  v38 = sub_29D93A268();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v66[0] = v40;
    *v39 = 136446722;
    v41 = sub_29D93AF08();
    v43 = sub_29D6C2364(v41, v42, v66);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2082;
    *(v39 + 14) = sub_29D6C2364(0xD00000000000001ELL, 0x800000029D96ADA0, v66);
    *(v39 + 22) = 2080;
    sub_29D935518();
    v44 = sub_29D939DA8();
    v46 = sub_29D6C2364(v44, v45, v66);

    *(v39 + 24) = v46;
    _os_log_impl(&dword_29D677000, v37, v38, "[%{public}s.%{public}s]: Visibility: %s", v39, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v40, -1, -1);
    MEMORY[0x29ED6BE30](v39, -1, -1);
  }

  v66[0] = sub_29D937288();
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v47 = sub_29D93A468();
  v66[3] = v47;
  v48 = sub_29D93A448();
  v49 = v57;
  (*(*(v48 - 8) + 56))(v57, 1, 1, v48);
  sub_29D6B7D8C();
  sub_29D8925D8(&qword_2A1A22420, sub_29D6B7D8C);
  sub_29D706380();
  v50 = v58;
  sub_29D938538();
  sub_29D8975A0(v49, &unk_2A1A248F0, MEMORY[0x29EDCA298]);

  v51 = swift_allocObject();
  swift_weakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  *(v52 + 24) = v35;
  sub_29D8925D8(&qword_2A17B2C70, sub_29D710880);
  v53 = v61;
  sub_29D938588();

  (*(v60 + 8))(v50, v53);
  v54 = *(*v6 + qword_2A17D09A8 + 24);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();
}

uint64_t sub_29D89504C(void *a1)
{
  v86 = a1;
  v2 = *v1;
  sub_29D8929B4(0);
  v83 = v3;
  v82 = *(v3 - 1);
  v4 = *(v82 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v81 = (v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_29D93A248();
  v92 = *(v7 - 8);
  v93 = v7;
  v8 = *(v92 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v87 = v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D733548();
  v95 = *(v11 - 8);
  v96 = v11;
  v12 = *(v95 + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v94 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D73370C();
  v98 = *(v15 - 8);
  v99 = v15;
  v16 = *(v98 + 64);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v97 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x29EDC9C68];
  sub_29D892620(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20 - 8, v22);
  v91 = v78 - v23;
  sub_29D710880();
  v89 = *(v24 - 1);
  v90 = v24;
  v25 = v89[8];
  MEMORY[0x2A1C7C4A8](v24, v26);
  v88 = v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D892620(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], v19);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v28 - 8, v30);
  v32 = v78 - v31;
  v33 = sub_29D9371A8();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v37 = MEMORY[0x2A1C7C4A8](v33, v36);
  v38 = v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v37, v39);
  v41 = v78 - v40;
  v42 = *(v2 + qword_2A17D09A8 + 16);
  v100 = v1;
  v43 = *(v1 + v42);
  v44 = sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  v45 = v86;
  v84 = v44;
  v85 = v43;
  sub_29D937278();
  v86 = v45;
  v79 = v2;
  v46 = sub_29D93A028();
  v47 = *(*(v46 - 8) + 56);
  v80 = v32;
  v47(v32, 1, 1, v46);
  (*(v34 + 16))(v38, v41, v33);
  sub_29D939FF8();
  v83 = v45;
  v48 = v100;

  v49 = sub_29D939FE8();
  v50 = (*(v34 + 80) + 48) & ~*(v34 + 80);
  v51 = (v35 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = MEMORY[0x29EDCA390];
  *(v52 + 2) = v49;
  *(v52 + 3) = v53;
  v54 = v83;
  *(v52 + 4) = v48;
  *(v52 + 5) = v54;
  (*(v34 + 32))(&v52[v50], v38, v33);
  *&v52[v51] = v2;
  sub_29D6BEBA4(0, 0, v80, &unk_29D951568, v52);

  (*(v34 + 8))(v41, v33);
  v55 = v86;
  v101 = sub_29D937288();
  v78[1] = sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v56 = sub_29D93A468();
  v103 = v56;
  v84 = sub_29D93A448();
  v57 = *(v84 - 8);
  v83 = *(v57 + 56);
  v85 = v57 + 56;
  v58 = v91;
  (v83)(v91, 1, 1, v84);
  sub_29D6B7D8C();
  v78[0] = MEMORY[0x29EDB8A00];
  sub_29D8925D8(&qword_2A1A22420, sub_29D6B7D8C);
  v82 = sub_29D706380();
  v59 = v88;
  sub_29D938538();
  v81 = MEMORY[0x29EDCA298];
  sub_29D8975A0(v58, &unk_2A1A248F0, MEMORY[0x29EDCA298]);

  v60 = swift_allocObject();
  v61 = v100;
  swift_weakInit();
  v62 = swift_allocObject();
  v62[2] = v60;
  v62[3] = v55;
  v62[4] = v79;
  v80 = MEMORY[0x29EDB89E8];
  sub_29D8925D8(&qword_2A17B2C70, sub_29D710880);
  v63 = v55;
  v64 = v90;
  sub_29D938588();

  (v89[1])(v59, v64);
  v65 = *(*v61 + qword_2A17D09A8 + 24);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();

  sub_29D69567C(0, &qword_2A1A22220, 0x29EDBAB18);
  v66 = MEMORY[0x29ED6A7D0](*MEMORY[0x29EDBA4F8]);
  sub_29D6A0C58();
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_29D940030;
  *(v67 + 32) = v66;
  v101 = 0;
  v102 = 0xE000000000000000;
  v90 = v66;
  sub_29D93AA18();

  v101 = sub_29D93AF08();
  v102 = v68;
  MEMORY[0x29ED6A240](0xD000000000000015, 0x800000029D95D280);
  v69 = v87;
  sub_29D93A258();

  v70 = swift_allocObject();
  *(v70 + 16) = v63;
  *(v70 + 24) = v63;
  v89 = v63;
  sub_29D938228();
  sub_29D895F60();
  sub_29D895EDC();
  sub_29D8925D8(&qword_2A1A22238, MEMORY[0x29EDC2E88]);
  sub_29D8925D8(&qword_2A17B34D0, sub_29D895EDC);
  v71 = v94;
  v72 = v93;
  sub_29D938508();

  (*(v92 + 8))(v69, v72);
  v73 = sub_29D93A468();
  v101 = v73;
  (v83)(v58, 1, 1, v84);
  sub_29D8925D8(&qword_2A17B34E0, sub_29D733548);
  v75 = v96;
  v74 = v97;
  sub_29D938538();
  sub_29D8975A0(v58, &unk_2A1A248F0, v81);
  (*(v95 + 8))(v71, v75);

  swift_allocObject();
  swift_weakInit();
  sub_29D8925D8(&qword_2A17B34F0, sub_29D73370C);
  v76 = v99;
  sub_29D938478();

  (*(v98 + 8))(v74, v76);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();
}

void sub_29D895EDC()
{
  if (!qword_2A17B34C8)
  {
    sub_29D895F60();
    sub_29D695734(255, &qword_2A1A24850);
    v0 = sub_29D938238();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B34C8);
    }
  }
}

void sub_29D895F60()
{
  if (!qword_2A17B2958)
  {
    sub_29D69567C(255, &unk_2A17B37A0, 0x29EDBAD60);
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2958);
    }
  }
}

uint64_t sub_29D89603C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29D9371A8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_29D6C383C;

  return sub_29D88DA38(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_29D896174(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29D9371A8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_29D6C383C;

  return sub_29D88DECC(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_29D8962DC(void *a1)
{
  v86 = a1;
  v2 = *v1;
  sub_29D897E20();
  v83 = v3;
  v82 = *(v3 - 1);
  v4 = *(v82 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v81 = (v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_29D93A248();
  v92 = *(v7 - 8);
  v93 = v7;
  v8 = *(v92 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v87 = v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D733548();
  v95 = *(v11 - 8);
  v96 = v11;
  v12 = *(v95 + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v94 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D73370C();
  v98 = *(v15 - 8);
  v99 = v15;
  v16 = *(v98 + 64);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v97 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x29EDC9C68];
  sub_29D892620(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20 - 8, v22);
  v91 = v78 - v23;
  sub_29D710880();
  v89 = *(v24 - 1);
  v90 = v24;
  v25 = v89[8];
  MEMORY[0x2A1C7C4A8](v24, v26);
  v88 = v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D892620(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], v19);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v28 - 8, v30);
  v32 = v78 - v31;
  v33 = sub_29D9371A8();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v37 = MEMORY[0x2A1C7C4A8](v33, v36);
  v38 = v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v37, v39);
  v41 = v78 - v40;
  v42 = *(v2 + qword_2A17D09A8 + 16);
  v100 = v1;
  v43 = *(v1 + v42);
  v44 = sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  v45 = v86;
  v84 = v44;
  v85 = v43;
  sub_29D937278();
  v86 = v45;
  v79 = v2;
  v46 = sub_29D93A028();
  v47 = *(*(v46 - 8) + 56);
  v80 = v32;
  v47(v32, 1, 1, v46);
  (*(v34 + 16))(v38, v41, v33);
  sub_29D939FF8();
  v83 = v45;
  v48 = v100;

  v49 = sub_29D939FE8();
  v50 = (*(v34 + 80) + 48) & ~*(v34 + 80);
  v51 = (v35 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = MEMORY[0x29EDCA390];
  *(v52 + 2) = v49;
  *(v52 + 3) = v53;
  v54 = v83;
  *(v52 + 4) = v48;
  *(v52 + 5) = v54;
  (*(v34 + 32))(&v52[v50], v38, v33);
  *&v52[v51] = v2;
  sub_29D6BEBA4(0, 0, v80, &unk_29D9515D8, v52);

  (*(v34 + 8))(v41, v33);
  v55 = v86;
  v101 = sub_29D937288();
  v78[1] = sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v56 = sub_29D93A468();
  v103 = v56;
  v84 = sub_29D93A448();
  v57 = *(v84 - 8);
  v83 = *(v57 + 56);
  v85 = v57 + 56;
  v58 = v91;
  (v83)(v91, 1, 1, v84);
  sub_29D6B7D8C();
  v78[0] = MEMORY[0x29EDB8A00];
  sub_29D8925D8(&qword_2A1A22420, sub_29D6B7D8C);
  v82 = sub_29D706380();
  v59 = v88;
  sub_29D938538();
  v81 = MEMORY[0x29EDCA298];
  sub_29D8975A0(v58, &unk_2A1A248F0, MEMORY[0x29EDCA298]);

  v60 = swift_allocObject();
  v61 = v100;
  swift_weakInit();
  v62 = swift_allocObject();
  v62[2] = v60;
  v62[3] = v55;
  v62[4] = v79;
  v80 = MEMORY[0x29EDB89E8];
  sub_29D8925D8(&qword_2A17B2C70, sub_29D710880);
  v63 = v55;
  v64 = v90;
  sub_29D938588();

  (v89[1])(v59, v64);
  v65 = *(*v61 + qword_2A17D09A8 + 24);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();

  sub_29D69567C(0, &qword_2A1A22220, 0x29EDBAB18);
  v66 = MEMORY[0x29ED6A7D0](*MEMORY[0x29EDBA4F8]);
  sub_29D6A0C58();
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_29D940030;
  *(v67 + 32) = v66;
  v101 = 0;
  v102 = 0xE000000000000000;
  v90 = v66;
  sub_29D93AA18();

  v101 = sub_29D93AF08();
  v102 = v68;
  MEMORY[0x29ED6A240](0xD000000000000015, 0x800000029D95D280);
  v69 = v87;
  sub_29D93A258();

  v70 = swift_allocObject();
  *(v70 + 16) = v63;
  *(v70 + 24) = v63;
  v89 = v63;
  sub_29D938228();
  sub_29D895F60();
  sub_29D895EDC();
  sub_29D8925D8(&qword_2A1A22238, MEMORY[0x29EDC2E88]);
  sub_29D8925D8(&qword_2A17B34D0, sub_29D895EDC);
  v71 = v94;
  v72 = v93;
  sub_29D938508();

  (*(v92 + 8))(v69, v72);
  v73 = sub_29D93A468();
  v101 = v73;
  (v83)(v58, 1, 1, v84);
  sub_29D8925D8(&qword_2A17B34E0, sub_29D733548);
  v75 = v96;
  v74 = v97;
  sub_29D938538();
  sub_29D8975A0(v58, &unk_2A1A248F0, v81);
  (*(v95 + 8))(v71, v75);

  swift_allocObject();
  swift_weakInit();
  sub_29D8925D8(&qword_2A17B34F0, sub_29D73370C);
  v76 = v99;
  sub_29D938478();

  (*(v98 + 8))(v74, v76);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();
}