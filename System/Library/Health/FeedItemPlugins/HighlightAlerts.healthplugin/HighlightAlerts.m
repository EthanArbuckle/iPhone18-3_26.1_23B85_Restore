uint64_t sub_29D9BD194(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_29DA336F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for HighlightAlertSampleInfo(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    sub_29D9C6334(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, MEMORY[0x29EDC9C68]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_29D9BD33C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_29DA336F4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for HighlightAlertSampleInfo(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    sub_29D9C6334(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, MEMORY[0x29EDC9C68]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 56);
    v18 = a1 + a4[8];

    return v17(v18, a2, a2, v16);
  }

  return result;
}

uint64_t sub_29D9BD4E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29DA33554();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_29DA343B4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_29D9BD608(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_29DA33554();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_29DA343B4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_29D9BD72C(uint64_t a1, uint64_t a2)
{
  sub_29D9C653C(0, &qword_2A1A2D4C8, &qword_2A1A2E010, 0x29EDBAD60, MEMORY[0x29EDBA1D0]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29D9BD7C4(uint64_t a1, uint64_t a2)
{
  sub_29D9C653C(0, &qword_2A1A2D4C8, &qword_2A1A2E010, 0x29EDBAD60, MEMORY[0x29EDBA1D0]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29D9BD890(uint64_t a1, uint64_t a2)
{
  sub_29D9C8898(0, &qword_2A1A2CBF0, sub_29D9C8864, MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29D9BD92C(uint64_t a1, uint64_t a2)
{
  sub_29D9C8898(0, &qword_2A1A2CBF0, sub_29D9C8864, MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29D9BDA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29DA343A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_29DA34374();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_29DA341E4();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_29D9BDB70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_29DA343A4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_29DA34374();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_29DA341E4();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_29D9BDCBC(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_29DA33554();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_29DA335B4();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_29DA34064();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_29D9BDE28(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_29DA33554();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_29DA335B4();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_29DA34064();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_29D9BDF94()
{
  MEMORY[0x29ED6E580](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D9BDFCC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D9BE00C()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D9BE048()
{
  MEMORY[0x29ED6E580](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D9BE080()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D9BE0D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = direct field offset for HighlightAlertDailyAveragesOperation.result;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_29D9BE138(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29DA33554();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_29D9BE1E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_29DA33554();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29D9BE288()
{
  MEMORY[0x29ED6E580](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D9BE2C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D9BE300(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_29DA34374();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
  }

  else
  {
    v10 = sub_29DA34284();
    if (*(*(v10 - 8) + 84) == a2)
    {
      v7 = v10;
      v8 = *(v10 - 8);
      v9 = a3[8];
    }

    else
    {
      v11 = sub_29DA34064();
      if (*(*(v11 - 8) + 84) != a2)
      {
        v14 = *(a1 + a3[10]);
        if (v14 >= 4)
        {
          return v14 - 3;
        }

        else
        {
          return 0;
        }
      }

      v7 = v11;
      v8 = *(v11 - 8);
      v9 = a3[9];
    }
  }

  v12 = *(v8 + 48);

  return v12(a1 + v9, a2, v7);
}

uint64_t sub_29D9BE44C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_29DA34374();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = sub_29DA34284();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[8];
    }

    else
    {
      result = sub_29DA34064();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[10]) = a2 + 3;
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[9];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

uint64_t sub_29D9BE598()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29D9BE5E8()
{
  v1 = (type metadata accessor for HighlightAlertState() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = v0 + v3;
  v9 = sub_29DA33754();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = v1[7];
  v11 = sub_29DA336F4();
  v12 = *(*(v11 - 8) + 8);
  v12(v8 + v10, v11);
  v12(v8 + v1[8], v11);
  v13 = *(v0 + v4 + 8);

  if (*(v0 + v5))
  {
    v14 = *(v0 + v5 + 8);
  }

  return MEMORY[0x2A1C733A0](v0, v5 + 16, v2 | 7);
}

uint64_t sub_29D9BE770()
{
  sub_29D9F30D0();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 16);

  v8 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2A1C733A0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_29D9BE83C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D9BE884()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D9BE8C0()
{
  MEMORY[0x29ED6E580](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D9BE8F8()
{
  v1 = type metadata accessor for HighlightAlertConfiguration(0);
  v2 = *(*(v1 - 1) + 80);
  v43 = *(*(v1 - 1) + 64);
  v3 = v0[2];

  v4 = v0[3];

  v5 = v0[4];

  v6 = v0 + ((v2 + 40) & ~v2);
  v7 = *(v6 + 1);

  v8 = &v6[v1[7]];
  type metadata accessor for HighlightAlertKind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v18 = sub_29DA343A4();
    (*(*(v18 - 8) + 8))(v8, v18);
    v19 = type metadata accessor for HighlightAlertDailyAveragesConfiguration();
    v20 = *(v19 + 20);
    v21 = sub_29DA34374();
    (*(*(v21 - 8) + 8))(&v8[v20], v21);
    v16 = (v19 + 24);
    v17 = sub_29DA341E4();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_6;
    }

    v10 = type metadata accessor for HighlightAlertDistributionConfiguration();
    v11 = v10[5];
    v12 = sub_29DA34374();
    v13 = *(*(v12 - 8) + 8);
    v13(&v8[v11], v12);
    v13(&v8[v10[7]], v12);
    v14 = v10[8];
    v15 = sub_29DA34284();
    (*(*(v15 - 8) + 8))(&v8[v14], v15);
    v16 = v10 + 9;
    v17 = sub_29DA34064();
  }

  (*(*(v17 - 8) + 8))(&v8[*v16], v17);
LABEL_6:
  v22 = v1[9];
  v23 = sub_29DA34394();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(&v6[v22], 1, v23))
  {
    (*(v24 + 8))(&v6[v22], v23);
  }

  v25 = v1[11];
  v26 = sub_29DA34264();
  v27 = *(v26 - 8);
  v28 = *(v27 + 8);
  v28(&v6[v25], v26);
  v29 = v1[12];
  v30 = sub_29DA34374();
  (*(*(v30 - 8) + 8))(&v6[v29], v30);
  v31 = v1[13];
  v32 = sub_29DA340E4();
  (*(*(v32 - 8) + 8))(&v6[v31], v32);
  v33 = v1[14];
  v34 = *(v27 + 48);
  if (!v34(&v6[v33], 1, v26))
  {
    v28(&v6[v33], v26);
  }

  v35 = v1[15];
  if (!v34(&v6[v35], 1, v26))
  {
    v28(&v6[v35], v26);
  }

  v36 = v1[16];
  if (!v34(&v6[v36], 1, v26))
  {
    v28(&v6[v36], v26);
  }

  v37 = v1[17];
  v38 = sub_29DA342E4();
  (*(*(v38 - 8) + 8))(&v6[v37], v38);
  v39 = v1[18];
  v40 = sub_29DA34274();
  (*(*(v40 - 8) + 8))(&v6[v39], v40);
  v41 = *&v6[v1[19] + 8];

  return MEMORY[0x2A1C733A0](v0, ((v2 + 40) & ~v2) + v43, v2 | 7);
}

uint64_t sub_29D9BEE24(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for HighlightAlertKind(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_19:
    v18 = *(v10 + 48);

    return v18(a1 + v11, a2, v9);
  }

  sub_29D9FDA4C(0, &qword_2A1A2DB80, MEMORY[0x29EDC4D60], MEMORY[0x29EDC9C68]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_19;
  }

  v13 = sub_29DA34264();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_19;
  }

  v14 = sub_29DA34374();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[12];
    goto LABEL_19;
  }

  v15 = sub_29DA340E4();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[13];
    goto LABEL_19;
  }

  sub_29D9FDA4C(0, &qword_2A1A2DB90, MEMORY[0x29EDC4BE0], MEMORY[0x29EDC9C68]);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[14];
    goto LABEL_19;
  }

  v17 = sub_29DA342E4();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a3[17];
    goto LABEL_19;
  }

  v19 = sub_29DA34274();
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[18];

  return v20(v21, a2, v19);
}

uint64_t sub_29D9BF158(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for HighlightAlertKind(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_17:
    v18 = *(v10 + 56);

    return v18(v5 + v11, a2, a2, v9);
  }

  sub_29D9FDA4C(0, &qword_2A1A2DB80, MEMORY[0x29EDC4D60], MEMORY[0x29EDC9C68]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_17;
  }

  v13 = sub_29DA34264();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_17;
  }

  v14 = sub_29DA34374();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[12];
    goto LABEL_17;
  }

  v15 = sub_29DA340E4();
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[13];
    goto LABEL_17;
  }

  sub_29D9FDA4C(0, &qword_2A1A2DB90, MEMORY[0x29EDC4BE0], MEMORY[0x29EDC9C68]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[14];
    goto LABEL_17;
  }

  v17 = sub_29DA342E4();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a4[17];
    goto LABEL_17;
  }

  v19 = sub_29DA34274();
  v20 = *(*(v19 - 8) + 56);
  v21 = v5 + a4[18];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_29D9BF48C()
{
  MEMORY[0x29ED6E580](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D9BF4C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D9BF4FC()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D9BF534()
{
  sub_29DA0007C();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v0 + 24);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = sub_29DA33A94();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D9BF640()
{
  MEMORY[0x29ED6E580](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D9BF688()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D9BF6D0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D9BF798()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D9BF7D0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D9BF8B8()
{
  MEMORY[0x29ED6E580](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D9BF8F0()
{
  v1 = (type metadata accessor for HighlightAlertState() - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_29DA33964();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 80);
  v6 = (((v2 + 48) & ~v2) + v3 + v5) & ~v5;
  v27 = v6;
  v7 = *(v28 + 64);
  v24 = sub_29DA33754();
  v8 = *(v24 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v22 = v10;
  v11 = *(v8 + 64);
  v12 = sub_29DA336F4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = (v10 + v11 + v14) & ~v14;
  v25 = *(v13 + 64);
  v26 = v2 | v5 | v9 | v14;
  v23 = (v25 + v14 + v15) & ~v14;

  v16 = *(v0 + 24);

  v17 = *(v0 + 40);

  v18 = v0 + ((v2 + 48) & ~v2);
  v19 = *(v8 + 8);
  v19(v18, v24);
  v20 = *(v13 + 8);
  v20(v18 + v1[7], v12);
  v20(v18 + v1[8], v12);
  (*(v28 + 8))(v0 + v27, v29);
  v19(v0 + v22, v24);
  v20(v0 + v15, v12);
  v20(v0 + v23, v12);

  return MEMORY[0x2A1C733A0](v0, v23 + v25, v26 | 7);
}

uint64_t sub_29D9BFBD0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  if (*(v0 + 56))
  {
    v3 = *(v0 + 64);
  }

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29D9BFC30()
{
  v1 = sub_29DA33964();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D9BFD9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D9BFDD4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D9BFE14()
{
  v1 = type metadata accessor for HighlightAlertConfiguration(0);
  v55 = *(*(v1 - 1) + 80);
  v53 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for HighlightAlertDailyAveragesConfiguration();
  v52 = *(*(v2 - 8) + 80);
  v51 = *(*(v2 - 8) + 64);
  v59 = sub_29DA336F4();
  v57 = *(v59 - 8);
  v50 = *(v57 + 80);
  v56 = *(v57 + 64);
  v3 = *(v0 + 16);

  v54 = (v55 + 24) & ~v55;
  v4 = v0 + v54;
  v5 = *(v0 + v54 + 8);

  v6 = v0 + v54 + v1[7];
  type metadata accessor for HighlightAlertKind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v58 = v2;
  if (EnumCaseMultiPayload == 1)
  {
    v16 = sub_29DA343A4();
    (*(*(v16 - 8) + 8))(v6, v16);
    v17 = *(v2 + 20);
    v18 = sub_29DA34374();
    (*(*(v18 - 8) + 8))(v6 + v17, v18);
    v14 = (v2 + 24);
    v15 = sub_29DA341E4();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_6;
    }

    v8 = type metadata accessor for HighlightAlertDistributionConfiguration();
    v9 = v8[5];
    v10 = sub_29DA34374();
    v11 = *(*(v10 - 8) + 8);
    v11(v6 + v9, v10);
    v11(v6 + v8[7], v10);
    v12 = v8[8];
    v13 = sub_29DA34284();
    (*(*(v13 - 8) + 8))(v6 + v12, v13);
    v14 = v8 + 9;
    v15 = sub_29DA34064();
  }

  (*(*(v15 - 8) + 8))(v6 + *v14, v15);
LABEL_6:
  v19 = v1[9];
  v20 = sub_29DA34394();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v4 + v19, 1, v20))
  {
    (*(v21 + 8))(v4 + v19, v20);
  }

  v22 = v1[11];
  v23 = sub_29DA34264();
  v24 = *(v23 - 8);
  v25 = *(v24 + 8);
  v25(v4 + v22, v23);
  v26 = v1[12];
  v27 = sub_29DA34374();
  v49 = *(*(v27 - 8) + 8);
  v49(v4 + v26, v27);
  v28 = v1[13];
  v29 = sub_29DA340E4();
  (*(*(v29 - 8) + 8))(v4 + v28, v29);
  v30 = v1[14];
  v31 = *(v24 + 48);
  if (!v31(v4 + v30, 1, v23))
  {
    v25(v4 + v30, v23);
  }

  v32 = v1[15];
  if (!v31(v4 + v32, 1, v23))
  {
    v25(v4 + v32, v23);
  }

  v33 = v1[16];
  if (!v31(v4 + v33, 1, v23))
  {
    v25(v4 + v33, v23);
  }

  v34 = (v53 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + v52 + 8) & ~v52;
  v37 = (v36 + v51 + v50) & ~v50;
  v38 = v1[17];
  v39 = sub_29DA342E4();
  (*(*(v39 - 8) + 8))(v4 + v38, v39);
  v40 = v1[18];
  v41 = sub_29DA34274();
  (*(*(v41 - 8) + 8))(v4 + v40, v41);
  v42 = *(v4 + v1[19] + 8);

  v43 = *(v0 + v34);

  v44 = *(v0 + v35);

  v45 = sub_29DA343A4();
  (*(*(v45 - 8) + 8))(v0 + v36, v45);
  v49(v0 + v36 + *(v58 + 20), v27);
  v46 = *(v58 + 24);
  v47 = sub_29DA341E4();
  (*(*(v47 - 8) + 8))(v0 + v36 + v46, v47);
  (*(v57 + 8))(v0 + v37, v59);

  return MEMORY[0x2A1C733A0](v0, v37 + v56, v55 | v52 | v50 | 7);
}

uint64_t sub_29D9C04E4()
{
  v1 = type metadata accessor for HighlightAlertConfiguration(0);
  v49 = *(*(v1 - 1) + 80);
  v47 = *(*(v1 - 1) + 64);
  v51 = sub_29DA336F4();
  v2 = *(v51 - 8);
  v46 = *(v2 + 80);
  v50 = *(v2 + 64);
  v3 = *(v0 + 16);

  v48 = (v49 + 24) & ~v49;
  v4 = v0 + v48;
  v5 = *(v0 + v48 + 8);

  v6 = v0 + v48 + v1[7];
  type metadata accessor for HighlightAlertKind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = sub_29DA343A4();
    (*(*(v16 - 8) + 8))(v6, v16);
    v17 = type metadata accessor for HighlightAlertDailyAveragesConfiguration();
    v18 = *(v17 + 20);
    v19 = sub_29DA34374();
    (*(*(v19 - 8) + 8))(v6 + v18, v19);
    v14 = (v17 + 24);
    v15 = sub_29DA341E4();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_6;
    }

    v8 = type metadata accessor for HighlightAlertDistributionConfiguration();
    v9 = v8[5];
    v10 = sub_29DA34374();
    v11 = *(*(v10 - 8) + 8);
    v11(v6 + v9, v10);
    v11(v6 + v8[7], v10);
    v12 = v8[8];
    v13 = sub_29DA34284();
    (*(*(v13 - 8) + 8))(v6 + v12, v13);
    v14 = v8 + 9;
    v15 = sub_29DA34064();
  }

  (*(*(v15 - 8) + 8))(v6 + *v14, v15);
LABEL_6:
  v20 = v1[9];
  v21 = sub_29DA34394();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v4 + v20, 1, v21))
  {
    (*(v22 + 8))(v4 + v20, v21);
  }

  v23 = v1[11];
  v24 = sub_29DA34264();
  v25 = *(v24 - 8);
  v26 = *(v25 + 8);
  v26(v4 + v23, v24);
  v27 = v1[12];
  v28 = sub_29DA34374();
  (*(*(v28 - 8) + 8))(v4 + v27, v28);
  v29 = v1[13];
  v30 = sub_29DA340E4();
  (*(*(v30 - 8) + 8))(v4 + v29, v30);
  v31 = v1[14];
  v32 = *(v25 + 48);
  if (!v32(v4 + v31, 1, v24))
  {
    v26(v4 + v31, v24);
  }

  v33 = v1[15];
  if (!v32(v4 + v33, 1, v24))
  {
    v26(v4 + v33, v24);
  }

  v34 = v1[16];
  if (!v32(v4 + v34, 1, v24))
  {
    v26(v4 + v34, v24);
  }

  v35 = (v47 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + v46 + 8) & ~v46;
  v38 = v1[17];
  v39 = sub_29DA342E4();
  (*(*(v39 - 8) + 8))(v4 + v38, v39);
  v40 = v1[18];
  v41 = sub_29DA34274();
  (*(*(v41 - 8) + 8))(v4 + v40, v41);
  v42 = *(v4 + v1[19] + 8);

  v43 = *(v0 + v35);

  v44 = *(v0 + v36);

  (*(v2 + 8))(v0 + v37, v51);

  return MEMORY[0x2A1C733A0](v0, v37 + v50, v49 | v46 | 7);
}

uint64_t sub_29D9C0AA8()
{
  v1 = type metadata accessor for HighlightAlertConfiguration(0);
  v56 = *(*(v1 - 1) + 80);
  v54 = *(*(v1 - 1) + 64);
  v2 = sub_29DA336F4();
  v57 = *(v2 - 8);
  v58 = v2;
  v53 = *(v57 + 80);
  v52 = *(v57 + 64);
  v3 = type metadata accessor for HighlightAlertDistributionConfiguration();
  v51 = *(*(v3 - 1) + 80);
  v60 = *(*(v3 - 1) + 64);
  v4 = *(v0 + 2);

  v5 = *(v0 + 3);

  v6 = *(v0 + 4);

  v61 = v0;
  v55 = (v56 + 40) & ~v56;
  v7 = &v0[v55];
  v8 = *&v0[v55 + 8];

  v9 = &v0[v55 + v1[7]];
  type metadata accessor for HighlightAlertKind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v18 = sub_29DA343A4();
    (*(*(v18 - 8) + 8))(v9, v18);
    v19 = type metadata accessor for HighlightAlertDailyAveragesConfiguration();
    v20 = *(v19 + 20);
    v21 = sub_29DA34374();
    (*(*(v21 - 8) + 8))(&v9[v20], v21);
    v16 = (v19 + 24);
    v17 = sub_29DA341E4();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_6;
    }

    v11 = v3[5];
    v12 = sub_29DA34374();
    v13 = *(*(v12 - 8) + 8);
    v13(&v9[v11], v12);
    v13(&v9[v3[7]], v12);
    v14 = v3[8];
    v15 = sub_29DA34284();
    (*(*(v15 - 8) + 8))(&v9[v14], v15);
    v16 = v3 + 9;
    v17 = sub_29DA34064();
  }

  (*(*(v17 - 8) + 8))(&v9[*v16], v17);
LABEL_6:
  v59 = v3;
  v22 = v1[9];
  v23 = sub_29DA34394();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(&v7[v22], 1, v23))
  {
    (*(v24 + 8))(&v7[v22], v23);
  }

  v25 = v1[11];
  v26 = sub_29DA34264();
  v27 = *(v26 - 8);
  v28 = *(v27 + 8);
  v28(&v7[v25], v26);
  v29 = v1[12];
  v30 = sub_29DA34374();
  v31 = (*(v30 - 8) + 8);
  v50 = *v31;
  (*v31)(&v7[v29], v30);
  v32 = v1[13];
  v33 = sub_29DA340E4();
  (*(*(v33 - 8) + 8))(&v7[v32], v33);
  v34 = v1[14];
  v35 = *(v27 + 48);
  if (!v35(&v7[v34], 1, v26))
  {
    v28(&v7[v34], v26);
  }

  v36 = v1[15];
  if (!v35(&v7[v36], 1, v26))
  {
    v28(&v7[v36], v26);
  }

  v37 = v1[16];
  if (!v35(&v7[v37], 1, v26))
  {
    v28(&v7[v37], v26);
  }

  v38 = (v55 + v54 + v53) & ~v53;
  v39 = (v38 + v52 + v51) & ~v51;
  v40 = v1[17];
  v41 = sub_29DA342E4();
  (*(*(v41 - 8) + 8))(&v7[v40], v41);
  v42 = v1[18];
  v43 = sub_29DA34274();
  (*(*(v43 - 8) + 8))(&v7[v42], v43);
  v44 = *&v7[v1[19] + 8];

  (*(v57 + 8))(&v61[v38], v58);
  v50(&v61[v39 + v59[5]], v30);
  v50(&v61[v39 + v59[7]], v30);
  v45 = v59[8];
  v46 = sub_29DA34284();
  (*(*(v46 - 8) + 8))(&v61[v39 + v45], v46);
  v47 = v59[9];
  v48 = sub_29DA34064();
  (*(*(v48 - 8) + 8))(&v61[v39 + v47], v48);

  return MEMORY[0x2A1C733A0](v61, v39 + v60, v56 | v53 | v51 | 7);
}

uint64_t sub_29D9C1180()
{
  v1 = type metadata accessor for HighlightAlertConfiguration(0);
  v57 = *(*(v1 - 1) + 80);
  v55 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for HighlightAlertDistributionConfiguration();
  v54 = *(*(v2 - 1) + 80);
  v53 = *(*(v2 - 1) + 64);
  v61 = sub_29DA336F4();
  v59 = *(v61 - 8);
  v52 = *(v59 + 80);
  v58 = *(v59 + 64);
  v3 = *(v0 + 16);

  v62 = v0;
  v56 = (v57 + 24) & ~v57;
  v4 = v0 + v56;
  v5 = *(v0 + v56 + 8);

  v6 = v0 + v56 + v1[7];
  type metadata accessor for HighlightAlertKind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v15 = sub_29DA343A4();
    (*(*(v15 - 8) + 8))(v6, v15);
    v16 = type metadata accessor for HighlightAlertDailyAveragesConfiguration();
    v17 = *(v16 + 20);
    v18 = sub_29DA34374();
    (*(*(v18 - 8) + 8))(v6 + v17, v18);
    v13 = (v16 + 24);
    v14 = sub_29DA341E4();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_6;
    }

    v8 = v2[5];
    v9 = sub_29DA34374();
    v10 = *(*(v9 - 8) + 8);
    v10(v6 + v8, v9);
    v10(v6 + v2[7], v9);
    v11 = v2[8];
    v12 = sub_29DA34284();
    (*(*(v12 - 8) + 8))(v6 + v11, v12);
    v13 = v2 + 9;
    v14 = sub_29DA34064();
  }

  (*(*(v14 - 8) + 8))(v6 + *v13, v14);
LABEL_6:
  v60 = v2;
  v19 = v1[9];
  v20 = sub_29DA34394();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v4 + v19, 1, v20))
  {
    (*(v21 + 8))(v4 + v19, v20);
  }

  v22 = v1[11];
  v23 = sub_29DA34264();
  v24 = *(v23 - 8);
  v25 = *(v24 + 8);
  v25(v4 + v22, v23);
  v26 = v1[12];
  v27 = sub_29DA34374();
  v28 = (*(v27 - 8) + 8);
  v51 = *v28;
  (*v28)(v4 + v26, v27);
  v29 = v1[13];
  v30 = sub_29DA340E4();
  (*(*(v30 - 8) + 8))(v4 + v29, v30);
  v31 = v1[14];
  v32 = *(v24 + 48);
  if (!v32(v4 + v31, 1, v23))
  {
    v25(v4 + v31, v23);
  }

  v33 = v1[15];
  if (!v32(v4 + v33, 1, v23))
  {
    v25(v4 + v33, v23);
  }

  v34 = v1[16];
  if (!v32(v4 + v34, 1, v23))
  {
    v25(v4 + v34, v23);
  }

  v35 = (v55 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + v54 + 8) & ~v54;
  v38 = (v37 + v53 + v52) & ~v52;
  v39 = v1[17];
  v40 = sub_29DA342E4();
  (*(*(v40 - 8) + 8))(v4 + v39, v40);
  v41 = v1[18];
  v42 = sub_29DA34274();
  (*(*(v42 - 8) + 8))(v4 + v41, v42);
  v43 = *(v4 + v1[19] + 8);

  v44 = *(v62 + v35);

  v45 = *(v62 + v36);

  v51(v62 + v37 + v60[5], v27);
  v51(v62 + v37 + v60[7], v27);
  v46 = v60[8];
  v47 = sub_29DA34284();
  (*(*(v47 - 8) + 8))(v62 + v37 + v46, v47);
  v48 = v60[9];
  v49 = sub_29DA34064();
  (*(*(v49 - 8) + 8))(v62 + v37 + v48, v49);
  (*(v59 + 8))(v62 + v38, v61);

  return MEMORY[0x2A1C733A0](v62, v38 + v58, v57 | v54 | v52 | 7);
}

uint64_t sub_29D9C1874()
{
  v1 = sub_29DA34604();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2A1C733A0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_29D9C1924()
{
  v1 = sub_29DA34604();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D9C19E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D9C1A9C()
{
  MEMORY[0x29ED6E580](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D9C1AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29DA33754();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_29DA336F4();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_29D9C1BF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_29DA33754();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_29DA336F4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_29D9C1D2C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t HighlightAlertCodableStateReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v54) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v54 & 0x7F) << v5;
        if ((v54 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        if (v13 == 1)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 52) |= 4u;
          while (1)
          {
            LOBYTE(v54) = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v54 & 0x7F) << v25;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v31 = 0;
              goto LABEL_74;
            }
          }

          if ([a2 hasError])
          {
            v31 = 0;
          }

          else
          {
            v31 = v27;
          }

LABEL_74:
          v47 = 24;
          goto LABEL_84;
        }

        if (v13 == 2)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 52) |= 8u;
          while (1)
          {
            LOBYTE(v54) = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v54 & 0x7F) << v41;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
            if (v11)
            {
              v31 = 0;
              goto LABEL_83;
            }
          }

          if ([a2 hasError])
          {
            v31 = 0;
          }

          else
          {
            v31 = v43;
          }

LABEL_83:
          v47 = 32;
LABEL_84:
          *(a1 + v47) = v31;
          goto LABEL_90;
        }

        if (v13 != 3)
        {
          goto LABEL_48;
        }

        v16 = PBReaderReadString();
        v17 = *(a1 + 40);
        *(a1 + 40) = v16;
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 52) |= 0x10u;
          while (1)
          {
            LOBYTE(v54) = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v54 & 0x7F) << v35;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              LOBYTE(v24) = 0;
              goto LABEL_76;
            }
          }

          v24 = (v37 != 0) & ~[a2 hasError];
LABEL_76:
          v48 = 48;
        }

        else
        {
          if (v13 != 7)
          {
LABEL_48:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_90;
          }

          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 52) |= 0x20u;
          while (1)
          {
            LOBYTE(v54) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v54 & 0x7F) << v18;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              LOBYTE(v24) = 0;
              goto LABEL_78;
            }
          }

          v24 = (v20 != 0) & ~[a2 hasError];
LABEL_78:
          v48 = 49;
        }

        *(a1 + v48) = v24;
      }

      else
      {
        if (v13 == 4)
        {
          *(a1 + 52) |= 1u;
          v54 = 0;
          v33 = [a2 position] + 8;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v54 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v50 = v54;
          v51 = 8;
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_48;
          }

          *(a1 + 52) |= 2u;
          v54 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v54 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v50 = v54;
          v51 = 16;
        }

        *(a1 + v51) = v50;
      }

LABEL_90:
      v53 = [a2 position];
    }

    while (v53 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_29D9C32D4()
{
  v1 = *v0;
  v2 = 0x69746172656E6567;
  v3 = 0x6E65644964656566;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x496D617267616964;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E49656C706D6173;
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

uint64_t sub_29D9C3398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D9C8344(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D9C33D8(uint64_t a1)
{
  v2 = sub_29D9C7018();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D9C3414(uint64_t a1)
{
  v2 = sub_29D9C7018();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D9C3450(void *a1)
{
  v3 = v1;
  sub_29D9C7480(0, &qword_2A1A2CA38, sub_29D9C7018, &type metadata for HighlightAlert.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v10 = &v22 - v9;
  v11 = a1[4];
  sub_29D9C706C(a1, a1[3]);
  sub_29D9C7018();
  sub_29DA35224();
  v27 = 0;
  sub_29DA336F4();
  sub_29D9C6F40(&qword_2A1A2D358, MEMORY[0x29EDB9BC8]);
  sub_29DA350D4();
  if (!v2)
  {
    v12 = type metadata accessor for HighlightAlert(0);
    v13 = v12[5];
    v26 = 1;
    type metadata accessor for HighlightAlertSampleInfo(0);
    sub_29D9C6F40(qword_2A1A2D1A8, type metadata accessor for HighlightAlertSampleInfo);
    sub_29DA350D4();
    v14 = (v3 + v12[6]);
    v15 = *v14;
    v16 = v14[1];
    v25 = 2;
    sub_29DA350A4();
    v17 = (v3 + v12[7]);
    v18 = *v17;
    v19 = v17[1];
    v24 = 3;
    sub_29DA35074();
    v20 = v12[8];
    v23 = 4;
    type metadata accessor for HighlightAlertDiagramInfo(0);
    sub_29D9C6F40(&qword_2A1A2D190, type metadata accessor for HighlightAlertDiagramInfo);
    sub_29DA35094();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_29D9C3758@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  sub_29D9C6334(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, MEMORY[0x29EDC9C68]);
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v37 = &v36 - v5;
  v38 = type metadata accessor for HighlightAlertSampleInfo(0);
  v6 = *(*(v38 - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29DA336F4();
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x2A1C7C4A8]();
  v43 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9C7480(0, &qword_2A1A2DAA0, sub_29D9C7018, &type metadata for HighlightAlert.CodingKeys, MEMORY[0x29EDC9E80]);
  v44 = v11;
  v39 = *(v11 - 8);
  v12 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v14 = &v36 - v13;
  v15 = type metadata accessor for HighlightAlert(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  sub_29D9C706C(a1, a1[3]);
  sub_29D9C7018();
  v42 = v14;
  v20 = v45;
  sub_29DA35214();
  if (v20)
  {
    return sub_29D9C7968(a1);
  }

  v21 = v39;
  v45 = v15;
  v22 = v40;
  v23 = v41;
  v50 = 0;
  sub_29D9C6F40(&qword_2A1A2DFE8, MEMORY[0x29EDB9BC8]);
  sub_29DA35054();
  v24 = *(v22 + 32);
  v25 = v43;
  v43 = v8;
  v24(v18, v25, v8);
  v49 = 1;
  sub_29D9C6F40(&qword_2A1A2DF10, type metadata accessor for HighlightAlertSampleInfo);
  sub_29DA35054();
  sub_29D9C70B0(v23, &v18[*(v45 + 20)]);
  v48 = 2;
  v26 = sub_29DA35024();
  v27 = v21;
  v28 = v45;
  v29 = &v18[*(v45 + 24)];
  *v29 = v26;
  v29[1] = v30;
  v47 = 3;
  v31 = sub_29DA34FF4();
  v32 = &v18[*(v28 + 28)];
  *v32 = v31;
  v32[1] = v33;
  type metadata accessor for HighlightAlertDiagramInfo(0);
  v46 = 4;
  sub_29D9C6F40(&qword_2A1A2DEF0, type metadata accessor for HighlightAlertDiagramInfo);
  v34 = v37;
  sub_29DA35014();
  (*(v27 + 8))(v42, v44);
  sub_29D9C7114(v34, &v18[*(v28 + 32)], &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo);
  sub_29D9C72D0(v18, v36, type metadata accessor for HighlightAlert);
  sub_29D9C7968(a1);
  return sub_29D9C7194(v18, type metadata accessor for HighlightAlert);
}

uint64_t sub_29D9C3E04(uint64_t a1)
{
  v1 = *(a1 + 20);
  sub_29D9C653C(0, &qword_2A1A2D4C8, &qword_2A1A2E010, 0x29EDBAD60, MEMORY[0x29EDBA1D0]);
  v2 = sub_29DA34774();
  v3 = [v2 sampleType];

  v4 = [v3 identifier];
  v5 = sub_29DA34854();

  return v5;
}

uint64_t sub_29D9C3EC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  sub_29D9C653C(0, &qword_2A1A2D4C8, &qword_2A1A2E010, 0x29EDBAD60, MEMORY[0x29EDBA1D0]);
  v4 = v3;
  v22 = *(v3 - 8);
  v5 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v23 = &v20 - v6;
  sub_29D9C7480(0, &qword_2A1A2DAB8, sub_29D9C742C, &type metadata for HighlightAlertSampleInfo.CodingKeys, MEMORY[0x29EDC9E80]);
  v8 = v7;
  v21 = *(v7 - 8);
  v9 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v11 = &v20 - v10;
  v12 = *(*(type metadata accessor for HighlightAlertSampleInfo(0) - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_29D9C706C(a1, a1[3]);
  sub_29D9C742C();
  v16 = v24;
  sub_29DA35214();
  if (!v16)
  {
    v17 = v21;
    v18 = v22;
    sub_29D9C74E8(&qword_2A1A2D4D0);
    sub_29DA35054();
    (*(v17 + 8))(v11, v8);
    (*(v18 + 32))(v14, v23, v4);
    sub_29D9C70B0(v14, v20);
  }

  return sub_29D9C7968(a1);
}

uint64_t sub_29D9C41A8()
{
  sub_29DA351B4();
  MEMORY[0x29ED6DD30](0);
  return sub_29DA351E4();
}

uint64_t sub_29D9C41EC()
{
  sub_29DA351B4();
  MEMORY[0x29ED6DD30](0);
  return sub_29DA351E4();
}

uint64_t sub_29D9C4250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x53656C6261646F63 && a2 == 0xED0000656C706D61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29DA35114();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29D9C42E0(uint64_t a1)
{
  v2 = sub_29D9C742C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D9C431C(uint64_t a1)
{
  v2 = sub_29D9C742C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D9C4370(void *a1)
{
  sub_29D9C7480(0, &qword_2A1A2CA58, sub_29D9C742C, &type metadata for HighlightAlertSampleInfo.CodingKeys, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_29D9C706C(a1, a1[3]);
  sub_29D9C742C();
  sub_29DA35224();
  sub_29D9C653C(0, &qword_2A1A2D4C8, &qword_2A1A2E010, 0x29EDBAD60, MEMORY[0x29EDBA1D0]);
  sub_29D9C74E8(&qword_2A1A2CBE8);
  sub_29DA350D4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_29D9C456C(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t *a4, const char *a5)
{
  v10 = sub_29DA34644();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9C653C(0, &qword_2A1A2D4C8, &qword_2A1A2E010, 0x29EDBAD60, MEMORY[0x29EDBA1D0]);
  v15 = sub_29DA34774();
  v16 = [v15 metadata];

  if (v16)
  {
    v17 = sub_29DA347A4();

    if (*(v17 + 16) && (v18 = sub_29DA1EDE0(a1, a2), (v19 & 1) != 0))
    {
      sub_29D9C790C(*(v17 + 56) + 32 * v18, v33);

      sub_29D9C790C(v33, v32);
      sub_29D9C79FC(0, a3, a4);
      if (swift_dynamicCast())
      {
        sub_29D9C7968(v33);
        return v31;
      }

      sub_29DA34614();

      v21 = sub_29DA34634();
      v22 = sub_29DA34B84();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v32[0] = v30;
        *v23 = 136446467;
        v31 = type metadata accessor for HighlightAlertSampleInfo(0);
        sub_29D9C79B4();
        v24 = sub_29DA34894();
        v29 = a5;
        v26 = sub_29D9EBB44(v24, v25, v32);

        *(v23 + 4) = v26;
        *(v23 + 12) = 2081;
        *(v23 + 14) = sub_29D9EBB44(a1, a2, v32);
        _os_log_impl(&dword_29D9BB000, v21, v22, v29, v23, 0x16u);
        v27 = v30;
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v27, -1, -1);
        MEMORY[0x29ED6E4C0](v23, -1, -1);
      }

      (*(v11 + 8))(v14, v10);
      sub_29D9C7968(v33);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_29D9C489C()
{
  v1 = v0;
  v2 = MEMORY[0x29EDC9C68];
  sub_29D9C6334(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v38 = &v36 - v5;
  v39 = sub_29DA33CB4();
  v6 = *(*(v39 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v39);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29DA336F4();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  MEMORY[0x2A1C7C4A8](v10);
  v11 = sub_29DA33554();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v36 - v17;
  sub_29D9C6334(0, qword_2A1A2E100, MEMORY[0x29EDB98E8], v2);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v22 = &v36 - v21;
  v23 = sub_29D9C4F74();
  if (v23 == 2)
  {
    sub_29DA33CE4();
    sub_29D9C653C(0, &qword_2A1A2D4C8, &qword_2A1A2E010, 0x29EDBAD60, MEMORY[0x29EDBA1D0]);
    v24 = sub_29DA34774();
    v25 = [v24 startDate];

    sub_29DA336C4();
    v26 = sub_29DA34774();
    v27 = [v26 endDate];

    sub_29DA336C4();
    sub_29DA33504();
    v28 = v38;
    sub_29DA334F4();
    (*(v12 + 8))(v16, v11);
    (*(v36 + 56))(v28, 0, 1, v37);
    sub_29D9C508C();
    v41 = MEMORY[0x29EDCA190];
    sub_29D9C6F40(&qword_2A17D1210, MEMORY[0x29EDC1CD0]);
    sub_29D9C7558(0);
    sub_29D9C6F40(&qword_2A17D1220, sub_29D9C7558);
    sub_29DA34CD4();
    return sub_29DA33CD4();
  }

  v30 = v23;
  v37 = v11;
  sub_29D9C653C(0, &qword_2A1A2D4C8, &qword_2A1A2E010, 0x29EDBAD60, MEMORY[0x29EDBA1D0]);
  v31 = sub_29DA34774();
  v32 = [v31 startDate];

  sub_29DA336C4();
  v38 = v1;
  v33 = sub_29DA34774();
  v34 = [v33 endDate];

  sub_29DA336C4();
  result = sub_29DA33504();
  if (v30)
  {
    v35 = v37;
    (*(v12 + 32))(v22, v18, v37);
  }

  else
  {
    if ((*MEMORY[0x29EDBA3B0] * 25) >> 64 != (25 * *MEMORY[0x29EDBA3B0]) >> 63)
    {
      __break(1u);
      return result;
    }

    sub_29DA334C4();
    v35 = v37;
    (*(v12 + 8))(v18, v37);
  }

  sub_29DA33CE4();
  (*(v12 + 56))(v22, 0, 1, v35);
  sub_29D9C508C();
  v41 = MEMORY[0x29EDCA190];
  sub_29D9C6F40(&qword_2A17D1210, MEMORY[0x29EDC1CD0]);
  sub_29D9C7558(0);
  sub_29D9C6F40(&qword_2A17D1220, sub_29D9C7558);
  sub_29DA34CD4();
  return sub_29DA33CC4();
}

BOOL sub_29D9C4F74()
{
  sub_29D9C653C(0, &qword_2A1A2D4C8, &qword_2A1A2E010, 0x29EDBAD60, MEMORY[0x29EDBA1D0]);
  v0 = sub_29DA34774();
  v1 = [v0 sampleType];

  v2 = [v1 identifier];
  v3 = sub_29DA34854();
  v5 = v4;

  v6 = *MEMORY[0x29EDBA490];
  if (sub_29DA34854() == v3 && v7 == v5)
  {

    return 0;
  }

  else
  {
    v9 = sub_29DA35114();

    return (v9 & 1) == 0;
  }
}

uint64_t sub_29D9C508C()
{
  sub_29D9C653C(0, &qword_2A1A2D4C8, &qword_2A1A2E010, 0x29EDBAD60, MEMORY[0x29EDBA1D0]);
  v0 = sub_29DA34774();
  v1 = [v0 sampleType];

  v2 = [v1 identifier];
  v3 = sub_29DA34854();
  v5 = v4;

  v6 = *MEMORY[0x29EDBA498];
  if (sub_29DA34854() == v3 && v7 == v5)
  {

LABEL_8:

    return 2;
  }

  v9 = sub_29DA35114();

  if (v9)
  {
    goto LABEL_8;
  }

  v11 = *MEMORY[0x29EDBA458];
  if (sub_29DA34854() == v3 && v12 == v5)
  {

LABEL_16:

    return 3;
  }

  v14 = sub_29DA35114();

  if (v14)
  {
    goto LABEL_16;
  }

  v15 = *MEMORY[0x29EDBA440];
  if (sub_29DA34854() == v3 && v16 == v5)
  {

LABEL_21:

    return 1;
  }

  v17 = sub_29DA35114();

  if (v17)
  {
    goto LABEL_21;
  }

  v18 = *MEMORY[0x29EDBA450];
  if (sub_29DA34854() == v3 && v19 == v5)
  {

LABEL_26:

    return 4;
  }

  v20 = sub_29DA35114();

  if (v20)
  {
    goto LABEL_26;
  }

  v21 = *MEMORY[0x29EDBA490];
  if (sub_29DA34854() == v3 && v22 == v5)
  {

    return 8;
  }

  else
  {
    v23 = sub_29DA35114();

    if (v23)
    {
      return 8;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_29D9C5344(void *a1)
{
  v3 = v1;
  sub_29D9C7480(0, &qword_2A1A2CA50, sub_29D9C71F4, &type metadata for HighlightAlertDiagramInfo.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v10 = &v20 - v9;
  v11 = a1[4];
  sub_29D9C706C(a1, a1[3]);
  sub_29D9C71F4();
  sub_29DA35224();
  v12 = *v3;
  v13 = v3[1];
  LOBYTE(v20) = 0;
  sub_29DA350A4();
  if (!v2)
  {
    v14 = type metadata accessor for HighlightAlertDiagramInfo(0);
    v15 = v14[5];
    LOBYTE(v20) = 1;
    sub_29DA33554();
    sub_29D9C6F40(qword_2A1A2D368, MEMORY[0x29EDB98E8]);
    sub_29DA350D4();
    v16 = v14[6];
    LOBYTE(v20) = 2;
    sub_29DA343B4();
    sub_29D9C6F40(&qword_2A1A2CC88, MEMORY[0x29EDC4D90]);
    sub_29DA350D4();
    v17 = v3 + v14[7];
    v18 = *v17;
    LOBYTE(v17) = v17[8];
    v20 = v18;
    v21 = v17;
    v22 = 3;
    sub_29D9C7338();
    sub_29DA350D4();
    v20 = *(v3 + v14[8]);
    v22 = 4;
    sub_29D9C6AB0(0);
    sub_29D9C738C(&qword_2A1A2CB88, sub_29D9C73F8);
    sub_29DA350D4();
    v20 = *(v3 + v14[9]);
    v22 = 5;
    sub_29DA35094();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_29D9C56B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v40 = sub_29DA343B4();
  v36 = *(v40 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8]();
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29DA33554();
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  MEMORY[0x2A1C7C4A8]();
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9C7480(0, &qword_2A1A2DAB0, sub_29D9C71F4, &type metadata for HighlightAlertDiagramInfo.CodingKeys, MEMORY[0x29EDC9E80]);
  v43 = v9;
  v41 = *(v9 - 8);
  v10 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v12 = &v33 - v11;
  v13 = type metadata accessor for HighlightAlertDiagramInfo(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[4];
  sub_29D9C706C(a1, a1[3]);
  sub_29D9C71F4();
  v42 = v12;
  v18 = v44;
  sub_29DA35214();
  if (v18)
  {
    return sub_29D9C7968(a1);
  }

  v19 = v39;
  v20 = v40;
  v34 = v16;
  v21 = a1;
  LOBYTE(v45) = 0;
  v22 = sub_29DA35024();
  v23 = v34;
  *v34 = v22;
  v23[1] = v24;
  LOBYTE(v45) = 1;
  sub_29D9C6F40(&qword_2A1A2DFF0, MEMORY[0x29EDB98E8]);
  v25 = v38;
  sub_29DA35054();
  v44 = v13;
  (*(v37 + 32))(v23 + *(v13 + 20), v8, v25);
  LOBYTE(v45) = 2;
  sub_29D9C6F40(&qword_2A1A2DB78, MEMORY[0x29EDC4D90]);
  sub_29DA35054();
  v26 = v44;
  (*(v36 + 32))(v34 + v44[6], v19, v20);
  v47 = 3;
  sub_29D9C7248();
  sub_29DA35054();
  v27 = v46;
  v28 = v34 + v26[7];
  *v28 = v45;
  v28[8] = v27;
  sub_29D9C6AB0(0);
  v47 = 4;
  sub_29D9C738C(&qword_2A1A2DB20, sub_29D9C729C);
  sub_29DA35054();
  *(v34 + v26[8]) = v45;
  v47 = 5;
  sub_29DA35014();
  (*(v41 + 8))(v42, v43);
  v29 = v26[9];
  v31 = v34;
  v30 = v35;
  *(v34 + v29) = v45;
  sub_29D9C72D0(v31, v30, type metadata accessor for HighlightAlertDiagramInfo);
  sub_29D9C7968(v21);
  return sub_29D9C7194(v31, type metadata accessor for HighlightAlertDiagramInfo);
}

uint64_t sub_29D9C5D70()
{
  v1 = *v0;
  sub_29DA351B4();
  MEMORY[0x29ED6DD30](v1);
  return sub_29DA351E4();
}

uint64_t sub_29D9C5DB8()
{
  v1 = *v0;
  sub_29DA351B4();
  MEMORY[0x29ED6DD30](v1);
  return sub_29DA351E4();
}

unint64_t sub_29D9C5DFC()
{
  v1 = *v0;
  v2 = 0x65746E4965746164;
  v3 = 0x50746E65746E6F63;
  if (v1 != 4)
  {
    v3 = 0x5079616C7265766FLL;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_29D9C5EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D9C8518(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D9C5F10(uint64_t a1)
{
  v2 = sub_29D9C71F4();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D9C5F4C(uint64_t a1)
{
  v2 = sub_29D9C71F4();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D9C5FB8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t variable initialization expression of HighlightAlertDailyAveragesOperation.result()
{
  sub_29D9C6088();
  swift_allocError();
  *v0 = 0;
  sub_29D9C6334(0, &qword_2A1A2D2B0, sub_29D9C60DC, MEMORY[0x29EDC3C80]);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_29DA33B74();
}

unint64_t sub_29D9C6088()
{
  result = qword_2A1A2CE28[0];
  if (!qword_2A1A2CE28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A2CE28);
  }

  return result;
}

void sub_29D9C60DC()
{
  if (!qword_2A1A2C9E0)
  {
    sub_29D9C6144();
    v0 = sub_29DA35204();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2C9E0);
    }
  }
}

unint64_t sub_29D9C6144()
{
  result = qword_2A1A2D3E8;
  if (!qword_2A1A2D3E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A2D3E8);
  }

  return result;
}

uint64_t variable initialization expression of HighlightAlertDailyAveragesOperation.configurationLock()
{
  sub_29D9C6334(0, qword_2A1A2CF28, type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration, MEMORY[0x29EDC9C68]);
  v1 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v3 = &v10 - v2;
  v4 = type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_29D9C6398();
  v6 = *(v5 + 52);
  v7 = (*(v5 + 48) + 3) & 0x1FFFFFFFCLL;
  v8 = swift_allocObject();
  *(v8 + ((*(*v8 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_29D9C7114(v3, v8 + *(*v8 + *MEMORY[0x29EDC9DE8] + 16), qword_2A1A2CF28, type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration);
  return v8;
}

void sub_29D9C6334(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D9C6398()
{
  if (!qword_2A1A2CA88)
  {
    sub_29D9C6334(255, qword_2A1A2CF28, type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration, MEMORY[0x29EDC9C68]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_29DA34E24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2CA88);
    }
  }
}

uint64_t variable initialization expression of AggregateChangeDetector.queries()
{
  sub_29D9C64B8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_29DA33B74();
}

void sub_29D9C64B8()
{
  if (!qword_2A1A2D2B8)
  {
    sub_29D9C653C(255, &qword_2A1A2CB80, &qword_2A1A2CAA0, 0x29EDBAD30, MEMORY[0x29EDC9A40]);
    v0 = sub_29DA33B64();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2D2B8);
    }
  }
}

void sub_29D9C653C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D9C79FC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t variable initialization expression of AggregateChangeDetector.otherChanges()
{
  sub_29D9C6334(0, &qword_2A1A2D2C0, sub_29D9C6624, MEMORY[0x29EDC3C80]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_29DA33B74();
}

uint64_t variable initialization expression of AggregateChangeDetector.lock()
{
  v0 = sub_29DA33854();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_29DA33844();
}

uint64_t variable initialization expression of AggregateChangeDetector.lock_pendingChangeSet@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29DA33A94();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

__n128 sub_29D9C671C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_29D9C672C(uint64_t a1, int a2)
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

uint64_t sub_29D9C674C(uint64_t result, int a2, int a3)
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

uint64_t sub_29D9C684C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D9C6884()
{
  sub_29DA336F4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HighlightAlertSampleInfo(319);
    if (v1 <= 0x3F)
    {
      sub_29D9C7A94(319, &qword_2A1A2DB70, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
      if (v2 <= 0x3F)
      {
        sub_29D9C6334(319, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, MEMORY[0x29EDC9C68]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_29D9C69B4()
{
  sub_29DA33554();
  if (v0 <= 0x3F)
  {
    sub_29DA343B4();
    if (v1 <= 0x3F)
    {
      sub_29D9C6AB0(319);
      if (v2 <= 0x3F)
      {
        sub_29D9C6334(319, &qword_2A1A2D490, sub_29D9C6AB0, MEMORY[0x29EDC9C68]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_29D9C6B0C()
{
  sub_29D9C653C(319, &qword_2A1A2D4C8, &qword_2A1A2E010, 0x29EDBAD60, MEMORY[0x29EDBA1D0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_29D9C6BB0(uint64_t a1, int a2)
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

uint64_t sub_29D9C6BD0(uint64_t result, int a2, int a3)
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

uint64_t sub_29D9C6C00(uint64_t a1, id *a2)
{
  result = sub_29DA34834();
  *a2 = 0;
  return result;
}

uint64_t sub_29D9C6C78(uint64_t a1, id *a2)
{
  v3 = sub_29DA34844();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_29D9C6CF8@<X0>(uint64_t *a1@<X8>)
{
  sub_29DA34854();
  v2 = sub_29DA34824();

  *a1 = v2;
  return result;
}

uint64_t sub_29D9C6D3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_29DA34854();
  v6 = v5;
  if (v4 == sub_29DA34854() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_29DA35114();
  }

  return v9 & 1;
}

uint64_t sub_29D9C6DCC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x29ED6D5E0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_29D9C6E20(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x29ED6D5F0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

void *sub_29D9C6EA0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_29D9C6F40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D9C7018()
{
  result = qword_2A1A2DCA0[0];
  if (!qword_2A1A2DCA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A2DCA0);
  }

  return result;
}

void *sub_29D9C706C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_29D9C70B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightAlertSampleInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D9C7114(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D9C6334(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D9C7194(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D9C71F4()
{
  result = qword_2A1A2DF08;
  if (!qword_2A1A2DF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DF08);
  }

  return result;
}

unint64_t sub_29D9C7248()
{
  result = qword_2A1A2DD78;
  if (!qword_2A1A2DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DD78);
  }

  return result;
}

uint64_t sub_29D9C72D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_29D9C7338()
{
  result = qword_2A1A2CF78;
  if (!qword_2A1A2CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2CF78);
  }

  return result;
}

uint64_t sub_29D9C738C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_29D9C6AB0(255);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D9C742C()
{
  result = qword_2A1A2DF28[0];
  if (!qword_2A1A2DF28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A2DF28);
  }

  return result;
}

void sub_29D9C7480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_29D9C74E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29D9C653C(255, &qword_2A1A2D4C8, &qword_2A1A2E010, 0x29EDBAD60, MEMORY[0x29EDBA1D0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D9C758C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_29DA34824();

  *a2 = v5;
  return result;
}

uint64_t sub_29D9C75D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_29DA34854();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_29D9C7600()
{
  sub_29D9C6F40(&qword_2A17D1280, type metadata accessor for Name);
  sub_29D9C6F40(&qword_2A17D1288, type metadata accessor for Name);

  return sub_29DA34FD4();
}

_DWORD *sub_29D9C76BC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_29D9C76CC@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_29D9C76D8()
{
  v2 = *v0;
  sub_29D9C6F40(&qword_2A17D1290, type metadata accessor for UILayoutPriority);
  sub_29D9C6F40(&qword_2A17D1298, type metadata accessor for UILayoutPriority);
  return sub_29DA34FD4();
}

uint64_t sub_29D9C7794()
{
  v1 = *v0;
  v2 = sub_29DA34854();
  v3 = MEMORY[0x29ED6D470](v2);

  return v3;
}

uint64_t sub_29D9C77D0()
{
  v1 = *v0;
  sub_29DA34854();
  sub_29DA348D4();
}

uint64_t sub_29D9C7824()
{
  v1 = *v0;
  sub_29DA34854();
  sub_29DA351B4();
  sub_29DA348D4();
  v2 = sub_29DA351E4();

  return v2;
}

uint64_t sub_29D9C790C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29D9C7968(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_29D9C79B4()
{
  result = qword_2A17D1228;
  if (!qword_2A17D1228)
  {
    type metadata accessor for HighlightAlertSampleInfo(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17D1228);
  }

  return result;
}

uint64_t sub_29D9C79FC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_29D9C7A94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for HighlightAlertSampleInfo.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for HighlightAlertSampleInfo.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HighlightAlertDiagramInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HighlightAlertDiagramInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HighlightAlert.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HighlightAlert.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29D9C7E80()
{
  result = qword_2A17D1238;
  if (!qword_2A17D1238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1238);
  }

  return result;
}

unint64_t sub_29D9C7ED8()
{
  result = qword_2A17D1240;
  if (!qword_2A17D1240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1240);
  }

  return result;
}

unint64_t sub_29D9C7F30()
{
  result = qword_2A17D1248;
  if (!qword_2A17D1248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1248);
  }

  return result;
}

unint64_t sub_29D9C8138()
{
  result = qword_2A1A2DF18;
  if (!qword_2A1A2DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DF18);
  }

  return result;
}

unint64_t sub_29D9C8190()
{
  result = qword_2A1A2DF20;
  if (!qword_2A1A2DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DF20);
  }

  return result;
}

unint64_t sub_29D9C81E8()
{
  result = qword_2A1A2DEF8;
  if (!qword_2A1A2DEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DEF8);
  }

  return result;
}

unint64_t sub_29D9C8240()
{
  result = qword_2A1A2DF00;
  if (!qword_2A1A2DF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DF00);
  }

  return result;
}

unint64_t sub_29D9C8298()
{
  result = qword_2A1A2DC90;
  if (!qword_2A1A2DC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DC90);
  }

  return result;
}

unint64_t sub_29D9C82F0()
{
  result = qword_2A1A2DC98;
  if (!qword_2A1A2DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DC98);
  }

  return result;
}

uint64_t sub_29D9C8344(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746172656E6567 && a2 == 0xEE00657461446E6FLL;
  if (v4 || (sub_29DA35114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E49656C706D6173 && a2 == 0xEA00000000006F66 || (sub_29DA35114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644964656566 && a2 == 0xEE00726569666974 || (sub_29DA35114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000029DA36A10 == a2 || (sub_29DA35114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x496D617267616964 && a2 == 0xEB000000006F666ELL)
  {

    return 4;
  }

  else
  {
    v6 = sub_29DA35114();

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

uint64_t sub_29D9C8518(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x800000029DA36A30 == a2;
  if (v4 || (sub_29DA35114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672 || (sub_29DA35114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000029DA36A50 == a2 || (sub_29DA35114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000029DA36A70 == a2 || (sub_29DA35114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x50746E65746E6F63 && a2 == 0xED000073746E696FLL || (sub_29DA35114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5079616C7265766FLL && a2 == 0xED000073746E696FLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_29DA35114();

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

id sub_29D9C87A8(uint64_t a1, void (*a2)(void), void *a3)
{
  a2(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  *a3 = result;
  return result;
}

unint64_t sub_29D9C8804()
{
  result = qword_2A17D12A0;
  if (!qword_2A17D12A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17D12A0);
  }

  return result;
}

void sub_29D9C8898(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D9C88FC()
{
  result = qword_2A1A2DB00;
  if (!qword_2A1A2DB00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A2DB00);
  }

  return result;
}

uint64_t type metadata accessor for HighlightAlertPluginData()
{
  result = qword_2A1A2DF90;
  if (!qword_2A1A2DF90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D9C89A8()
{
  sub_29D9C8898(319, &qword_2A1A2CBF0, sub_29D9C8864, MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_29D9C8A44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  sub_29D9C8898(0, &qword_2A1A2CBF0, sub_29D9C8864, MEMORY[0x29EDC9C68]);
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v6 = &v20 - v5;
  sub_29D9C9018(0, &qword_2A1A2DAC0, MEMORY[0x29EDC9E80]);
  v8 = v7;
  v21 = *(v7 - 8);
  v9 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v11 = &v20 - v10;
  v12 = *(*(type metadata accessor for HighlightAlertPluginData() - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9C8864(0);
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = a1[4];
  sub_29D9C706C(a1, a1[3]);
  sub_29D9C8FC4();
  v17 = v22;
  sub_29DA35214();
  if (!v17)
  {
    v18 = v21;
    sub_29D9C90D8(&qword_2A1A2CC00);
    sub_29DA35014();
    (*(v18 + 8))(v11, v8);
    sub_29D9C911C(v6, v14);
    sub_29D9C91B0(v14, v20);
  }

  sub_29D9C7968(a1);
  return sub_29D9C907C(v14);
}

uint64_t sub_29D9C8D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x41656C6261646F63 && a2 == 0xED0000726F68636ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29DA35114();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29D9C8DC0(uint64_t a1)
{
  v2 = sub_29D9C8FC4();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D9C8DFC(uint64_t a1)
{
  v2 = sub_29D9C8FC4();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D9C8E50(void *a1)
{
  sub_29D9C9018(0, &qword_2A1A2D420, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_29D9C706C(a1, a1[3]);
  sub_29D9C8FC4();
  sub_29DA35224();
  sub_29D9C8864(0);
  sub_29D9C90D8(&qword_2A1A2CC08);
  sub_29DA35094();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_29D9C8FC4()
{
  result = qword_2A1A2DFB8;
  if (!qword_2A1A2DFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DFB8);
  }

  return result;
}

void sub_29D9C9018(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D9C8FC4();
    v7 = a3(a1, &type metadata for HighlightAlertPluginData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D9C907C(uint64_t a1)
{
  v2 = type metadata accessor for HighlightAlertPluginData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D9C90D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29D9C8864(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D9C911C(uint64_t a1, uint64_t a2)
{
  sub_29D9C8898(0, &qword_2A1A2CBF0, sub_29D9C8864, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D9C91B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightAlertPluginData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D9C9228()
{
  result = qword_2A17D12A8;
  if (!qword_2A17D12A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D12A8);
  }

  return result;
}

unint64_t sub_29D9C9280()
{
  result = qword_2A1A2DFA8;
  if (!qword_2A1A2DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DFA8);
  }

  return result;
}

unint64_t sub_29D9C92D8()
{
  result = qword_2A1A2DFB0;
  if (!qword_2A1A2DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DFB0);
  }

  return result;
}

id sub_29D9C932C()
{
  result = HKDateFormatterFromTemplate();
  if (result)
  {
    qword_2A1A2D828 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29D9C9360()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDB9F70]) init];
  [v0 setAllowedUnits_];
  [v0 setUnitsStyle_];
  [v0 setMaximumUnitCount_];
  result = [v0 setZeroFormattingBehavior_];
  qword_2A1A2D838 = v0;
  return result;
}

uint64_t sub_29D9C93EC()
{
  v1 = OBJC_IVAR____TtC15HighlightAlerts25HighlightAlertTextSupport____lazy_storage___shouldNotShowPregnancy;
  v2 = *(v0 + OBJC_IVAR____TtC15HighlightAlerts25HighlightAlertTextSupport____lazy_storage___shouldNotShowPregnancy);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_29D9C9458(v0, *v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

id sub_29D9C9458(uint64_t a1, uint64_t a2)
{
  v29[3] = a2;
  v3 = sub_29DA34644();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v29 - v7;
  v9 = sub_29DA33F34();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA778] healthStore:*(a1 + OBJC_IVAR____TtC15HighlightAlerts25HighlightAlertTextSupport_healthStore) currentCountryCode:0];
  sub_29D9C79FC(0, &qword_2A1A2CB08, 0x29EDBABB0);
  v30 = v14;
  sub_29DA33F64();
  v15 = *MEMORY[0x29EDC3460];
  v16 = sub_29DA33F44();
  v17 = [v16 areAllRequirementsSatisfied];

  (*(v10 + 8))(v13, v9);
  sub_29DA34624();
  v18 = sub_29DA34634();
  v19 = sub_29DA34BA4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32[0] = v21;
    *v20 = 136315394;
    v22 = sub_29DA35254();
    v24 = sub_29D9EBB44(v22, v23, v32);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v31 = v17;
    v25 = sub_29DA348C4();
    v27 = sub_29D9EBB44(v25, v26, v32);

    *(v20 + 14) = v27;
    _os_log_impl(&dword_29D9BB000, v18, v19, "%s HighlightAlertTextSupport shouldNotShowPregnancy: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v21, -1, -1);
    MEMORY[0x29ED6E4C0](v20, -1, -1);
  }

  (*(v4 + 8))(v8, v3);
  return v17;
}

uint64_t sub_29D9C99D8()
{
  v0 = *(type metadata accessor for HighlightAlert(0) + 20);
  sub_29D9CC410();
  v1 = sub_29DA34774();
  v2 = [v1 sampleType];

  v3 = [v2 identifier];
  v4 = sub_29DA34854();
  v6 = v5;

  v7 = *MEMORY[0x29EDBA458];
  if (sub_29DA34854() == v4 && v8 == v6)
  {

LABEL_8:

    return 0xD000000000000036;
  }

  v10 = sub_29DA35114();

  if (v10)
  {
    goto LABEL_8;
  }

  v12 = *MEMORY[0x29EDBA498];
  if (sub_29DA34854() == v4 && v13 == v6)
  {

LABEL_16:

    return 0xD000000000000035;
  }

  v15 = sub_29DA35114();

  if (v15)
  {
    goto LABEL_16;
  }

  v16 = *MEMORY[0x29EDBA478];
  if (sub_29DA34854() == v4 && v17 == v6)
  {

LABEL_21:

    return 0xD000000000000037;
  }

  v18 = sub_29DA35114();

  if (v18)
  {
    goto LABEL_21;
  }

  v19 = *MEMORY[0x29EDBA440];
  if (sub_29DA34854() == v4 && v20 == v6)
  {

LABEL_26:

    v22 = sub_29D9CAA5C();
    if (v22 != 5)
    {
      return 0xD00000000000003ALL;
    }

    if ([objc_opt_self() isAppleInternalInstall])
    {
      return 0xD000000000000075;
    }

    return 0;
  }

  v21 = sub_29DA35114();

  if (v21)
  {
    goto LABEL_26;
  }

  v23 = *MEMORY[0x29EDBA450];
  if (sub_29DA34854() == v4 && v24 == v6)
  {
  }

  else
  {
    v25 = sub_29DA35114();

    if ((v25 & 1) == 0)
    {
      v26 = *MEMORY[0x29EDBA490];
      if (sub_29DA34854() == v4 && v27 == v6)
      {
      }

      else
      {
        v28 = sub_29DA35114();

        if ((v28 & 1) == 0)
        {
          v29 = *MEMORY[0x29EDBA430];
          if (sub_29DA34854() == v4 && v30 == v6)
          {
          }

          else
          {
            v31 = sub_29DA35114();

            if ((v31 & 1) == 0)
            {
              v33 = *MEMORY[0x29EDBA460];
              if (sub_29DA34854() == v4 && v34 == v6)
              {
              }

              else
              {
                v35 = sub_29DA35114();

                if ((v35 & 1) == 0)
                {
                  v36 = *MEMORY[0x29EDBA4D8];
                  if (sub_29DA34854() == v4 && v37 == v6)
                  {
                  }

                  else
                  {
                    v38 = sub_29DA35114();

                    if ((v38 & 1) == 0)
                    {
                      sub_29DA34DF4();
                      MEMORY[0x29ED6D450](0xD000000000000040, 0x800000029DA36B70);
                      v39 = sub_29DA34774();
                      v40 = [v39 sampleType];

                      v41 = [v40 identifier];
                      v42 = sub_29DA34854();
                      v44 = v43;

                      MEMORY[0x29ED6D450](v42, v44);

                      result = sub_29DA34F64();
                      __break(1u);
                      return result;
                    }
                  }

                  return 0xD000000000000032;
                }
              }

              return 0xD000000000000033;
            }
          }

          sub_29D9CB4A4(&v45);
          v32 = v45;

          return v32;
        }
      }

      return 0xD000000000000039;
    }
  }

  if (sub_29D9CB064() == 2)
  {
    if ([objc_opt_self() isAppleInternalInstall])
    {
      return 0xD000000000000068;
    }

    return 0;
  }

  return 0xD000000000000040;
}

unint64_t sub_29D9CA1C8()
{
  sub_29D9CC478(0, &qword_2A1A2DA80, sub_29D9CAA00, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29DA39160;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000029DA35F00;
  *(inited + 48) = sub_29D9CB770();
  *(inited + 56) = v1;
  *(inited + 64) = 0xD000000000000015;
  *(inited + 72) = 0x800000029DA35EE0;
  *(inited + 80) = sub_29D9CBA30();
  *(inited + 88) = v2;
  *(inited + 96) = 0xD00000000000001DLL;
  *(inited + 104) = 0x800000029DA35EA0;
  *(inited + 112) = sub_29D9CC090();
  *(inited + 120) = v3;
  *(inited + 128) = 0xD00000000000001CLL;
  *(inited + 136) = 0x800000029DA35EC0;
  *(inited + 144) = sub_29D9CC090();
  *(inited + 152) = v4;
  v5 = sub_29DA212A0(inited);
  swift_setDeallocating();
  sub_29D9CAA00();
  swift_arrayDestroy();
  return v5;
}

unint64_t sub_29D9CA300()
{
  v0 = *(type metadata accessor for HighlightAlert(0) + 20);
  sub_29D9CC410();
  v1 = sub_29DA34774();
  v2 = [v1 sampleType];

  v3 = [v2 identifier];
  v4 = sub_29DA34854();
  v6 = v5;

  v7 = *MEMORY[0x29EDBA478];
  if (sub_29DA34854() == v4 && v8 == v6)
  {

LABEL_8:

    return 0xD000000000000036;
  }

  v10 = sub_29DA35114();

  if (v10)
  {
    goto LABEL_8;
  }

  v12 = *MEMORY[0x29EDBA440];
  if (sub_29DA34854() == v4 && v13 == v6)
  {

LABEL_16:

    if (sub_29D9CAA5C() == 5)
    {
      return 0;
    }

    return 0xD000000000000039;
  }

  v15 = sub_29DA35114();

  if (v15)
  {
    goto LABEL_16;
  }

  v16 = *MEMORY[0x29EDBA450];
  if (sub_29DA34854() == v4 && v17 == v6)
  {
  }

  else
  {
    v18 = sub_29DA35114();

    if ((v18 & 1) == 0)
    {
      v19 = *MEMORY[0x29EDBA490];
      if (sub_29DA34854() == v4 && v20 == v6)
      {
      }

      else
      {
        v21 = sub_29DA35114();

        if ((v21 & 1) == 0)
        {
          v22 = *MEMORY[0x29EDBA430];
          if (sub_29DA34854() == v4 && v23 == v6)
          {
          }

          else
          {
            v24 = sub_29DA35114();

            if ((v24 & 1) == 0)
            {
              v26 = *MEMORY[0x29EDBA460];
              if (sub_29DA34854() == v4 && v27 == v6)
              {
              }

              else
              {
                v28 = sub_29DA35114();

                if ((v28 & 1) == 0)
                {
                  v29 = *MEMORY[0x29EDBA4D8];
                  if (sub_29DA34854() == v4 && v30 == v6)
                  {
                  }

                  else
                  {
                    v31 = sub_29DA35114();

                    if ((v31 & 1) == 0)
                    {
                      return 0;
                    }
                  }

                  return 0xD000000000000031;
                }
              }

              return 0xD000000000000032;
            }
          }

          sub_29D9CB4A4(v32);
          v25 = v32[4];

          return v25;
        }
      }

      return 0xD000000000000038;
    }
  }

  if (sub_29D9CB064() == 2)
  {
    return 0;
  }

  return 0xD00000000000003FLL;
}

uint64_t sub_29D9CA86C()
{
  sub_29D9CC660(v0 + OBJC_IVAR____TtC15HighlightAlerts25HighlightAlertTextSupport_highlightAlert, type metadata accessor for HighlightAlert);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HighlightAlertTextSupport()
{
  result = qword_2A1A2D810;
  if (!qword_2A1A2D810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D9CA958()
{
  result = type metadata accessor for HighlightAlert(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_29D9CAA00()
{
  if (!qword_2A1A2DB68)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A2DB68);
    }
  }
}

uint64_t sub_29D9CAA5C()
{
  v1 = v0;
  v2 = sub_29DA34644();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v48 = &v47 - v7;
  v8 = v0 + OBJC_IVAR____TtC15HighlightAlerts25HighlightAlertTextSupport_highlightAlert;
  v9 = type metadata accessor for HighlightAlert(0);
  v10 = *(v9 + 20);
  sub_29D9CC410();
  v11 = sub_29DA34774();
  v12 = [v11 sampleType];

  v13 = [v12 identifier];
  v14 = sub_29DA34854();
  v16 = v15;

  v17 = *MEMORY[0x29EDBA440];
  if (v14 == sub_29DA34854() && v16 == v18)
  {
  }

  else
  {
    v20 = sub_29DA35114();

    if ((v20 & 1) == 0)
    {
      return 5;
    }
  }

  v21 = sub_29DA34774();
  v22 = [v21 sampleType];

  v23 = [v22 hk_primaryMetadataKey];
  if (!v23 || (v24 = sub_29DA34854(), v26 = v25, v23, v27 = sub_29D9C4534(v24, v26), , !v27))
  {
    sub_29DA34624();

    v32 = sub_29DA34634();
    v33 = sub_29DA34B84();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 136446467;
      v51 = *v1;
      v52 = v35;
      sub_29D9CC3C8();
      v36 = sub_29DA34894();
      v38 = sub_29D9EBB44(v36, v37, &v52);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2081;
      *(v34 + 14) = sub_29D9EBB44(*&v8[*(v9 + 24)], *&v8[*(v9 + 24) + 8], &v52);
      _os_log_impl(&dword_29D9BB000, v32, v33, "%{public}s unable to extract audio exposure threshold limit for %{private}s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v35, -1, -1);
      MEMORY[0x29ED6E4C0](v34, -1, -1);
    }

    (*(v49 + 8))(v6, v50);
    return 5;
  }

  v28 = [objc_opt_self() decibelAWeightedSoundPressureLevelUnit];
  [v27 doubleValueForUnit_];
  v30 = v29;

  if (v30 >= 80.0 && v30 < 85.0)
  {

    return 0;
  }

  if (v30 < 85.0 || v30 >= 90.0)
  {
    if (v30 < 90.0 || v30 >= 95.0)
    {
      if (v30 < 95.0 || v30 >= 100.0)
      {
        if (v30 < 100.0)
        {
          v39 = v48;
          sub_29DA34624();

          v40 = sub_29DA34634();
          v41 = sub_29DA34B84();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            *v42 = 136446467;
            v51 = *v1;
            v52 = v43;
            sub_29D9CC3C8();
            v44 = sub_29DA34894();
            v46 = sub_29D9EBB44(v44, v45, &v52);

            *(v42 + 4) = v46;
            *(v42 + 12) = 2049;
            *(v42 + 14) = v30;
            _os_log_impl(&dword_29D9BB000, v40, v41, "%{public}s unsupported audio exposure threshold value provided to text support: %{private}f", v42, 0x16u);
            sub_29D9C7968(v43);
            MEMORY[0x29ED6E4C0](v43, -1, -1);
            MEMORY[0x29ED6E4C0](v42, -1, -1);
          }

          (*(v49 + 8))(v39, v50);
          return 5;
        }

        return 1028;
      }

      else
      {

        return 771;
      }
    }

    else
    {

      return 514;
    }
  }

  else
  {

    return 257;
  }
}

uint64_t sub_29D9CB064()
{
  v1 = v0;
  v2 = sub_29DA34644();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9CC478(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for HighlightAlertDiagramInfo(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1 + OBJC_IVAR____TtC15HighlightAlerts25HighlightAlertTextSupport_highlightAlert;
  v17 = type metadata accessor for HighlightAlert(0);
  sub_29D9CC4DC(&v16[v17[8]], v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_29D9CC570(v10);
    sub_29DA34624();

    v18 = sub_29DA34634();
    v19 = sub_29DA34BA4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 136446467;
      v39 = *v1;
      v40 = v21;
      sub_29D9CC3C8();
      v22 = sub_29DA34894();
      v24 = sub_29D9EBB44(v22, v23, &v40);
      v38 = v2;
      v25 = v24;

      *(v20 + 4) = v25;
      *(v20 + 12) = 2081;
      *(v20 + 14) = sub_29D9EBB44(*&v16[v17[6]], *&v16[v17[6] + 8], &v40);
      _os_log_impl(&dword_29D9BB000, v18, v19, "%{public}s diagramInfo not present for %{private}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v21, -1, -1);
      MEMORY[0x29ED6E4C0](v20, -1, -1);

      (*(v3 + 8))(v6, v38);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v31 = v17[5];
    v32 = *MEMORY[0x29EDBAF50];
    v33 = sub_29DA34854();
    v35 = sub_29D9C4550(v33, v34);

    if (v35 && (v36 = [v35 BOOLValue], v35, (v36 & 1) != 0))
    {
      return 257;
    }

    else
    {
      return 513;
    }
  }

  else
  {
    sub_29D9CC5FC(v10, v15);
    v26 = *&v15[*(v11 + 32)];
    v27 = (v26 + 40);
    v28 = *(v26 + 16) + 1;
    while (--v28)
    {
      v29 = *v27;
      v27 += 2;
      if (v29 >= 1.0)
      {
        sub_29D9CC660(v15, type metadata accessor for HighlightAlertDiagramInfo);
        return 257;
      }
    }

    sub_29D9CC660(v15, type metadata accessor for HighlightAlertDiagramInfo);
    return 0;
  }
}

uint64_t sub_29D9CB4A4@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(type metadata accessor for HighlightAlert(0) + 20);
  sub_29D9CC410();
  v5 = sub_29DA34774();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

    goto LABEL_7;
  }

  v7 = [v6 value];

  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 == 4)
      {
        v8 = sub_29D9C93EC();
        v9 = "SS_NOTIFICATION_1";
        v10 = "HIGHLIGHTALERT_SUBHEAD_VERY_LOW_WALKING_STEADINESS_NOTIFICATION_PREGNANCY_MODE_2";
        goto LABEL_11;
      }

LABEL_7:
      sub_29D9CBE80(v31);
      v11 = v31[0];
      v12 = v31[1];
      v13 = v31[2];
      v14 = v31[3];
      v15 = v31[4];
      v16 = v31[5];
      v18 = v31[6];
      result = v31[7];
      goto LABEL_40;
    }

    v26 = sub_29D9C93EC();
    v27 = "NG_STEADINESS_NOTIFICATION_1";
    v28 = "HIGHLIGHTALERT_SUBHEAD_LOW_WALKING_STEADINESS_NOTIFICATION_PREGNANCY_MODE_2";
LABEL_23:
    v29 = v28 - 32;
    v20 = "T_RATE_NOTIFICATION_1";
    v21 = "ING_STEADINESS_NOTIFICATION_1";
    v22 = (v26 & 1) == 0;
    if (v26)
    {
      v18 = 0xD00000000000002CLL;
    }

    else
    {
      v18 = 0xD000000000000024;
    }

    if (v26)
    {
      v15 = 0xD00000000000003CLL;
    }

    else
    {
      v15 = 0xD00000000000004BLL;
    }

    if (v26)
    {
      v23 = v27;
    }

    else
    {
      v23 = v29;
    }

    v24 = 0xD00000000000003DLL;
    v25 = 0xD00000000000004CLL;
    goto LABEL_33;
  }

  if (v7 == 1)
  {
    v26 = sub_29D9C93EC();
    v27 = "O_FITNESS_NOTIFICATION_1";
    v28 = "HIGHLIGHTALERT_SUBHEAD_LOW_WALKING_STEADINESS_NOTIFICATION_PREGNANCY_MODE_1";
    goto LABEL_23;
  }

  if (v7 != 2)
  {
    goto LABEL_7;
  }

  v8 = sub_29D9C93EC();
  v9 = "UBHEAD_UNSUPPORTED_VERSION_1";
  v10 = "HIGHLIGHTALERT_SUBHEAD_VERY_LOW_WALKING_STEADINESS_NOTIFICATION_PREGNANCY_MODE_1";
LABEL_11:
  v19 = v10 - 32;
  v20 = "EADLINE_UNSUPPORTED_VERSION_1";
  v21 = "ESS_NOTIFICATION_1";
  v22 = (v8 & 1) == 0;
  if (v8)
  {
    v18 = 0xD00000000000002CLL;
  }

  else
  {
    v18 = 0xD000000000000024;
  }

  if (v8)
  {
    v15 = 0xD000000000000041;
  }

  else
  {
    v15 = 0xD000000000000050;
  }

  if (v8)
  {
    v23 = v9;
  }

  else
  {
    v23 = v19;
  }

  v24 = 0xD000000000000042;
  v25 = 0xD000000000000051;
LABEL_33:
  if (v22)
  {
    v11 = v25;
  }

  else
  {
    v11 = v24;
  }

  if (v22)
  {
    v30 = v21;
  }

  else
  {
    v30 = v20;
  }

  v12 = v30 | 0x8000000000000000;
  v16 = v23 | 0x8000000000000000;

  v13 = v18;
  v14 = result;
LABEL_40:
  *a1 = v11;
  a1[1] = v12;
  a1[2] = v13;
  a1[3] = v14;
  a1[4] = v15;
  a1[5] = v16;
  a1[6] = v18;
  a1[7] = result;
  return result;
}

uint64_t sub_29D9CB770()
{
  v21 = sub_29DA336F4();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x2A1C7C4A8](v21);
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v18 - v3;
  v20 = sub_29DA33554();
  v5 = *(v20 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v20);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A2D820 != -1)
  {
    swift_once();
  }

  v19 = qword_2A1A2D828;
  v9 = *(type metadata accessor for HighlightAlert(0) + 20);
  sub_29D9CC410();
  v10 = sub_29DA34774();
  v11 = [v10 startDate];

  sub_29DA336C4();
  v12 = sub_29DA34774();
  v13 = [v12 endDate];

  sub_29DA336C4();
  sub_29DA33504();
  sub_29DA33524();
  (*(v5 + 8))(v8, v20);
  v14 = sub_29DA33694();
  (*(v0 + 8))(v4, v21);
  v15 = [v19 stringFromDate_];

  v16 = sub_29DA34854();
  return v16;
}

uint64_t sub_29D9CBA30()
{
  v1 = sub_29DA34644();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29DA336F4();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x2A1C7C4A8](v4 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v7 = sub_29DA33554();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v0;
  v12 = *(type metadata accessor for HighlightAlert(0) + 20);
  sub_29D9CC410();
  v13 = sub_29DA34774();
  v14 = [v13 startDate];

  sub_29DA336C4();
  v15 = sub_29DA34774();
  v16 = [v15 endDate];

  sub_29DA336C4();
  sub_29DA33504();
  sub_29DA33544();
  v18 = v17;
  (*(v8 + 8))(v11, v7);
  if (qword_2A1A2D830 != -1)
  {
    swift_once();
  }

  v19 = [qword_2A1A2D838 stringFromTimeInterval_];
  if (v19)
  {
    v20 = v19;
    v21 = sub_29DA34854();
  }

  else
  {
    v21 = 0x6D697420656D6F73;
    v22 = v36;
    sub_29DA34624();
    v23 = v35;

    v24 = sub_29DA34634();
    v25 = sub_29DA34B84();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = v23;
      v40 = v27;
      *v26 = 136446466;
      type metadata accessor for HighlightAlertTextSupport();

      v28 = sub_29DA34894();
      v30 = sub_29D9EBB44(v28, v29, &v40);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      v31 = sub_29DA34A44();
      v33 = sub_29D9EBB44(v31, v32, &v40);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_29D9BB000, v24, v25, "%{public}s: unable to format string for duration: %{public}s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v27, -1, -1);
      MEMORY[0x29ED6E4C0](v26, -1, -1);
    }

    (*(v37 + 8))(v22, v38);
  }

  return v21;
}

id sub_29D9CBE80@<X0>(unint64_t *a1@<X8>)
{
  v2 = sub_29DA34644();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA34624();
  v7 = sub_29DA34634();
  v8 = sub_29DA34B94();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    v11 = sub_29DA35254();
    v13 = sub_29D9EBB44(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29D9BB000, v7, v8, "%{public}s: Apple Walking Steadiness Event has an unknown value.", v9, 0xCu);
    sub_29D9C7968(v10);
    MEMORY[0x29ED6E4C0](v10, -1, -1);
    MEMORY[0x29ED6E4C0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  result = [objc_opt_self() isAppleInternalInstall];
  v15 = 0x800000029DA36DC0;
  v16 = 0xD00000000000005DLL;
  if (!result)
  {
    v16 = 0;
    v15 = 0xE000000000000000;
  }

  *a1 = v16;
  a1[1] = v15;
  a1[2] = 0xD00000000000001ALL;
  a1[3] = 0x800000029DA36C50;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0xD00000000000001ALL;
  a1[7] = 0x800000029DA36C50;
  return result;
}

uint64_t sub_29D9CC090()
{
  v1 = v0;
  v2 = sub_29DA34644();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0 + OBJC_IVAR____TtC15HighlightAlerts25HighlightAlertTextSupport_highlightAlert;
  v8 = type metadata accessor for HighlightAlert(0);
  sub_29D9CC370();
  v9 = sub_29DA34454();
  if (v9)
  {
    v10 = v9;
    v11 = *(v8 + 20);
    sub_29D9CC410();
    v12 = sub_29DA34774();
    v13 = [v10 hk:v12 formatPrimaryMetadataValueForObject:*(v1 + OBJC_IVAR____TtC15HighlightAlerts25HighlightAlertTextSupport_unitPreferenceController) unitPreferencesController:?];

    if (v13)
    {
      v14 = sub_29DA34854();

      return v14;
    }
  }

  sub_29DA34624();

  v16 = sub_29DA34634();
  v17 = sub_29DA34B64();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v2;
    v20 = v19;
    *v18 = 136446467;
    v26 = *v1;
    v27 = v19;
    sub_29D9CC3C8();
    v21 = sub_29DA34894();
    v23 = sub_29D9EBB44(v21, v22, &v27);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2081;
    *(v18 + 14) = sub_29D9EBB44(*&v7[*(v8 + 24)], *&v7[*(v8 + 24) + 8], &v27);
    _os_log_impl(&dword_29D9BB000, v16, v17, "%{public}s unable to format metadata value for %{private}s.", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v20, -1, -1);
    MEMORY[0x29ED6E4C0](v18, -1, -1);

    (*(v3 + 8))(v6, v25);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

unint64_t sub_29D9CC370()
{
  result = qword_2A1A2D690;
  if (!qword_2A1A2D690)
  {
    type metadata accessor for HighlightAlert(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2D690);
  }

  return result;
}

unint64_t sub_29D9CC3C8()
{
  result = qword_2A17D12B0;
  if (!qword_2A17D12B0)
  {
    type metadata accessor for HighlightAlertTextSupport();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17D12B0);
  }

  return result;
}

void sub_29D9CC410()
{
  if (!qword_2A1A2D4C8)
  {
    sub_29D9C79FC(255, &qword_2A1A2E010, 0x29EDBAD60);
    v0 = sub_29DA34784();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2D4C8);
    }
  }
}

void sub_29D9CC478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D9CC4DC(uint64_t a1, uint64_t a2)
{
  sub_29D9CC478(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D9CC570(uint64_t a1)
{
  sub_29D9CC478(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D9CC5FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightAlertDiagramInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D9CC660(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D9CC6C0()
{
  sub_29D9CFF44(0, &qword_2A1A2CC20, MEMORY[0x29EDB8AF0]);
  v2 = v1;
  v30 = *(v1 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v27 - v4;
  sub_29D9CFFD0();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9D01E8(0, &qword_2A1A2CC60, sub_29D9D00C4);
  v13 = v12;
  v31 = *(v12 - 8);
  v14 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v27 - v15;
  sub_29D9D01C8(0);
  v18 = v17;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 48))
  {
    v23 = *(v0 + 48);
  }

  else
  {
    v28 = v8;
    v29 = v20;
    swift_beginAccess();
    sub_29D9CFF44(0, &qword_2A1A2CC18, MEMORY[0x29EDB8B00]);
    v24 = v0;
    sub_29DA346D4();
    swift_endAccess();
    sub_29D9D0050();
    sub_29DA34724();
    (*(v30 + 8))(v5, v2);
    sub_29D9D00C4();
    sub_29D9D0294(&qword_2A1A2CC58, sub_29D9CFFD0);
    sub_29DA34714();
    (*(v28 + 8))(v11, v7);
    sub_29DA33A94();
    sub_29DA34664();
    (*(v31 + 8))(v16, v13);
    sub_29D9D0294(&qword_2A1A2CC70, sub_29D9D01C8);
    v23 = sub_29DA34704();
    (*(v29 + 8))(v22, v18);
    v25 = *(v0 + 48);
    *(v24 + 48) = v23;
  }

  return v23;
}

BOOL sub_29D9CCB34(void *a1)
{
  if (*a1 >> 62)
  {
    v1 = sub_29DA34D34();
  }

  else
  {
    v1 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

void sub_29D9CCB7C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  if (*a1 >> 62)
  {
LABEL_49:
    v3 = sub_29DA34D34();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v46 = objc_opt_self();
      v47 = v2 & 0xC000000000000001;
      v45 = v2 & 0xFFFFFFFFFFFFFF8;
      v5 = MEMORY[0x29EDCA198];
      while (1)
      {
        if (v47)
        {
          v9 = MEMORY[0x29ED6D970](v4, v2);
        }

        else
        {
          if (v4 >= *(v45 + 16))
          {
            goto LABEL_46;
          }

          v9 = *(v2 + 8 * v4 + 32);
        }

        v10 = v9;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v11 = [v46 sampleTypeChangeWithSampleType:v9 dateInterval:0 hasUnfrozenSeries:0];
        v12 = v5 & 0xC000000000000001;
        if (v11)
        {
          break;
        }

        if (v12)
        {
          if (v5 < 0)
          {
            v27 = v5;
          }

          else
          {
            v27 = v5 & 0xFFFFFFFFFFFFFF8;
          }

          v28 = v10;
          v29 = sub_29DA34F34();

          if (v29)
          {
            swift_unknownObjectRelease();

            v30 = sub_29DA34D34();
            v31 = sub_29DA04F48(v27, v30);

            v32 = sub_29DA1EE58(v28);
            v34 = v33;

            if ((v34 & 1) == 0)
            {
              goto LABEL_48;
            }

            v35 = *(*(v31 + 56) + 8 * v32);
            sub_29DA1F648(v32, v31);

            v5 = v31;
          }

          else
          {
          }
        }

        else
        {
          v39 = v10;
          v40 = sub_29DA1EE58(v10);
          if (v41)
          {
            v42 = v40;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_29DA2AE60();
            }

            v43 = *(*(v5 + 56) + 8 * v42);
            sub_29DA1F648(v42, v5);
          }

          else
          {
          }
        }

LABEL_6:
        ++v4;
        if (v8 == v3)
        {
          goto LABEL_51;
        }
      }

      v13 = v11;
      if (v12)
      {
        if (v5 < 0)
        {
          v14 = v5;
        }

        else
        {
          v14 = v5 & 0xFFFFFFFFFFFFFF8;
        }

        v15 = sub_29DA34D34();
        if (__OFADD__(v15, 1))
        {
          goto LABEL_45;
        }

        v5 = sub_29DA04F48(v14, v15 + 1);
      }

      v16 = v2;
      v2 = v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v10;
      v20 = sub_29DA1EE58(v10);
      v21 = *(v5 + 16);
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        goto LABEL_44;
      }

      v24 = v19;
      if (*(v5 + 24) < v23)
      {
        sub_29DA29EB0(v23, isUniquelyReferenced_nonNull_native);
        v25 = sub_29DA1EE58(v10);
        if ((v24 & 1) != (v26 & 1))
        {
          sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
          sub_29DA35144();
          __break(1u);
          return;
        }

        v20 = v25;
        if ((v24 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_4:
        v6 = *(v5 + 56);
        v7 = *(v6 + 8 * v20);
        *(v6 + 8 * v20) = v13;

LABEL_5:
        v3 = v2;
        v2 = v16;
        v8 = v4 + 1;
        goto LABEL_6;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v19)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_29DA2AE60();
        if (v24)
        {
          goto LABEL_4;
        }
      }

LABEL_33:
      *(v5 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      *(*(v5 + 48) + 8 * v20) = v10;
      *(*(v5 + 56) + 8 * v20) = v13;
      v36 = *(v5 + 16);
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_47;
      }

      *(v5 + 16) = v38;
      goto LABEL_5;
    }
  }

  v5 = MEMORY[0x29EDCA198];
LABEL_51:
  *a2 = v5;
}

uint64_t sub_29D9CCF3C(uint64_t *a1)
{
  v1 = *a1;

  return sub_29DA33A64();
}

uint64_t sub_29D9CCF7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29DA346E4();

  return v1;
}

uint64_t sub_29D9CCFF0(uint64_t a1)
{
  sub_29D9CFAB4(0, &qword_2A1A2CB58, MEMORY[0x29EDCA398]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = v10 - v4;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v10[1] = a1;

    sub_29DA346F4();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC15HighlightAlerts30HighlightAlertStateSyncManager_updateDelegate + 8) = &off_2A2460160;
    v7 = result;
    swift_unknownObjectWeakAssign();
    v8 = sub_29DA34A34();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    sub_29D9ED414(0, 0, v5, &unk_29DA392B0, v9);
  }

  return result;
}

uint64_t sub_29D9CD190()
{
  MEMORY[0x29ED6D450](60, 0xE100000000000000);
  v1 = *v0;
  sub_29D9CD6DC();
  v2 = sub_29DA34894();
  MEMORY[0x29ED6D450](v2);

  MEMORY[0x29ED6D450](32, 0xE100000000000000);
  sub_29DA34E94();
  MEMORY[0x29ED6D450](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_29D9CD274()
{
  sub_29D9BD9D8((v0 + 16));
  sub_29D9BD9D8((v0 + 32));
  v1 = *(v0 + 6);

  v2 = OBJC_IVAR____TtC15HighlightAlerts26HighlightAlertStateChanges__changedSampleTypes;
  sub_29D9CFF44(0, &qword_2A1A2CC18, MEMORY[0x29EDB8B00]);
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HighlightAlertStateChanges()
{
  result = qword_2A1A2D160;
  if (!qword_2A1A2D160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D9CD398()
{
  sub_29D9CFF44(319, &qword_2A1A2CC18, MEMORY[0x29EDB8B00]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29D9CD45C(uint64_t a1)
{
  v3 = sub_29DA34644();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA34614();

  v8 = sub_29DA34634();
  v9 = sub_29DA34BA4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20 = v3;
    v11 = v10;
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446467;
    v13 = sub_29D9CD190();
    v15 = sub_29D9EBB44(v13, v14, &v21);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2081;
    v16 = sub_29DA34AB4();
    v18 = sub_29D9EBB44(v16, v17, &v21);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_29D9BB000, v8, v9, "%{public}s: received alert state sync manager update with identifiers: %{private}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v12, -1, -1);
    MEMORY[0x29ED6E4C0](v11, -1, -1);

    result = (*(v4 + 8))(v7, v20);
  }

  else
  {

    result = (*(v4 + 8))(v7, v3);
  }

  if (*(a1 + 16))
  {

    sub_29D9CD820(a1, 0, v1, v1);
  }

  return result;
}

unint64_t sub_29D9CD6DC()
{
  result = qword_2A1A2D020;
  if (!qword_2A1A2D020)
  {
    type metadata accessor for HighlightAlertStateChanges();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1A2D020);
  }

  return result;
}

uint64_t sub_29D9CD724@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29DA346E4();

  *a2 = v5;
  return result;
}

uint64_t sub_29D9CD7A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29DA346F4();
}

uint64_t sub_29D9CD820(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v120 = a2;
  v132 = a1;
  sub_29D9CFAB4(0, &qword_2A1A2DC70, type metadata accessor for HighlightAlert);
  v7 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x2A1C7C4A8])();
  v122 = v108 - v8;
  v9 = type metadata accessor for HighlightAlert(0);
  v126 = *(v9 - 8);
  v10 = *(v126 + 64);
  (MEMORY[0x2A1C7C4A8])();
  v125 = v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_29DA33964();
  v133 = *(v127 - 8);
  v12 = *(v133 + 64);
  (MEMORY[0x2A1C7C4A8])();
  v14 = v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_29DA34644();
  v15 = *(v124 - 8);
  v16 = *(v15 + 64);
  v17 = (MEMORY[0x2A1C7C4A8])();
  v115 = v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v116 = v108 - v20;
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v23 = v108 - v22;
  v24 = MEMORY[0x2A1C7C4A8](v21);
  v109 = v108 - v25;
  MEMORY[0x2A1C7C4A8](v24);
  v27 = v108 - v26;
  sub_29DA34614();

  v28 = sub_29DA34634();
  v29 = sub_29DA34BA4();

  v30 = os_log_type_enabled(v28, v29);
  v123 = a3;
  v110 = a4;
  v113 = v23;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v136 = v32;
    *v31 = 136446210;
    v33 = sub_29D9CD190();
    v35 = sub_29D9EBB44(v33, v34, &v136);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_29D9BB000, v28, v29, "%{public}s: determining alert state updated sample types", v31, 0xCu);
    sub_29D9C7968(v32);
    MEMORY[0x29ED6E4C0](v32, -1, -1);
    MEMORY[0x29ED6E4C0](v31, -1, -1);
  }

  v121 = *(v15 + 8);
  v121(v27, v124);
  v36 = v15;
  v37 = MEMORY[0x29EDCA190];
  v139 = MEMORY[0x29EDCA190];
  Strong = swift_unknownObjectWeakLoadStrong();
  v40 = v122;
  v41 = v127;
  if (Strong)
  {
    v42 = *(Strong + qword_2A1A2D580);
    if (v132)
    {

      sub_29DA33B44();

      sub_29D9C706C(&v136, v138);
      v41 = v127;
      v43 = sub_29DA339C4();
    }

    else
    {

      sub_29DA33B44();

      sub_29D9C706C(&v136, v138);
      v40 = v122;
      v43 = sub_29DA339D4();
    }

    v37 = v43;
    swift_unknownObjectRelease();
    sub_29D9C7968(&v136);
  }

  v44 = *(v37 + 16);
  if (v44)
  {
    v128 = 0;
    v131 = *(v133 + 16);
    v45 = (*(v133 + 80) + 32) & ~*(v133 + 80);
    v108[1] = v37;
    v46 = v37 + v45;
    v133 += 16;
    v129 = *(v133 + 56);
    v130 = (v133 - 8);
    v126 += 56;
    v108[2] = v36;
    v117 = v36 + 8;
    v119 = MEMORY[0x29EDCA190];
    *&v39 = 136446467;
    v114 = v39;
    v118 = v9;
    v131(v14, v37 + v45, v41);
    while (1)
    {
      v132 = sub_29DA33924();
      v48 = v47;
      v49 = sub_29DA33954();
      if (v50 >> 60 == 15)
      {
        (*v130)(v14, v41);

        goto LABEL_11;
      }

      v51 = v49;
      v52 = v50;
      v53 = sub_29DA33474();
      v54 = *(v53 + 48);
      v55 = *(v53 + 52);
      swift_allocObject();
      sub_29DA33464();
      sub_29D9D0294(&qword_2A1A2DC88, type metadata accessor for HighlightAlert);
      v56 = v9;
      v57 = v40;
      v58 = v128;
      sub_29DA33454();
      if (v58)
      {

        sub_29D9CFBBC(v51, v52);

        v59 = v127;
        (*v130)(v14, v127);
        (*v126)(v57, 1, 1, v56);
        sub_29D9CFC24(v57);
        v128 = 0;
        v40 = v57;
        v9 = v56;
        v41 = v59;
        goto LABEL_11;
      }

      v128 = 0;

      (*v126)(v57, 0, 1, v56);
      v60 = v125;
      sub_29D9CFC9C(v57, v125);
      if (v120)
      {
        v61 = v116;
        sub_29DA34614();
        v62 = v123;

        v63 = sub_29DA34634();
        v64 = sub_29DA34B74();

        LODWORD(v119) = v64;
        if (!os_log_type_enabled(v63, v64))
        {
          goto LABEL_24;
        }

        v65 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v135[0] = v112;
        *v65 = v114;
        v136 = 0;
        v137 = 0xE000000000000000;
        v111 = v63;
        MEMORY[0x29ED6D450](60, 0xE100000000000000);
        v134 = *v62;
        sub_29D9CD6DC();
        v66 = sub_29DA34894();
        MEMORY[0x29ED6D450](v66);

        MEMORY[0x29ED6D450](32, 0xE100000000000000);
        v134 = v62;
        sub_29DA34E94();
        MEMORY[0x29ED6D450](62, 0xE100000000000000);
        v67 = sub_29D9EBB44(v136, v137, v135);

        *(v65 + 4) = v67;
        *(v65 + 12) = 2081;
        v68 = sub_29D9EBB44(v132, v48, v135);

        *(v65 + 14) = v68;
        v69 = v111;
        _os_log_impl(&dword_29D9BB000, v111, v119, "%{public}s: adding %{private}s for alert state update", v65, 0x16u);
        v70 = v112;
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v70, -1, -1);
        MEMORY[0x29ED6E4C0](v65, -1, -1);

        v71 = v116;
      }

      else
      {
        v40 = v57;
        v72 = sub_29DA33904();
        v61 = v115;
        if (v72 != 2 && (v72 & 1) != 0)
        {
          sub_29D9CFBBC(v51, v52);

          sub_29D9CFD00(v60);
          v41 = v127;
          (*v130)(v14, v127);
          v9 = v118;
          goto LABEL_11;
        }

        sub_29DA34614();
        v73 = v123;

        v63 = sub_29DA34634();
        v74 = sub_29DA34BA4();

        LODWORD(v119) = v74;
        if (!os_log_type_enabled(v63, v74))
        {
LABEL_24:

          v71 = v61;
          goto LABEL_25;
        }

        v75 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v135[0] = v112;
        *v75 = v114;
        v136 = 0;
        v137 = 0xE000000000000000;
        v111 = v63;
        MEMORY[0x29ED6D450](60, 0xE100000000000000);
        v134 = *v73;
        sub_29D9CD6DC();
        v76 = sub_29DA34894();
        MEMORY[0x29ED6D450](v76);

        MEMORY[0x29ED6D450](32, 0xE100000000000000);
        v134 = v73;
        sub_29DA34E94();
        MEMORY[0x29ED6D450](62, 0xE100000000000000);
        v77 = sub_29D9EBB44(v136, v137, v135);

        *(v75 + 4) = v77;
        *(v75 + 12) = 2081;
        v78 = sub_29D9EBB44(v132, v48, v135);

        *(v75 + 14) = v78;
        v79 = v111;
        _os_log_impl(&dword_29D9BB000, v111, v119, "%{public}s: adding %{private}s for alert state update of non-hidden feed item", v75, 0x16u);
        v80 = v112;
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v80, -1, -1);
        MEMORY[0x29ED6E4C0](v75, -1, -1);

        v71 = v115;
      }

LABEL_25:
      v121(v71, v124);
      v9 = v118;
      v81 = v125;
      v82 = *(v118 + 20);
      sub_29D9C653C(0, &qword_2A1A2D4C8, &qword_2A1A2E010, 0x29EDBAD60, MEMORY[0x29EDBA1D0]);
      v83 = sub_29DA34774();
      v84 = [v83 sampleType];

      MEMORY[0x29ED6D4A0]();
      v40 = v122;
      if (*((v139 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v85 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29DA34974();
        v9 = v118;
      }

      sub_29DA34994();
      sub_29D9CFBBC(v51, v52);
      sub_29D9CFD00(v81);
      v41 = v127;
      (*v130)(v14, v127);
      v119 = v139;
LABEL_11:
      v46 += v129;
      if (!--v44)
      {

        v86 = v119;
        goto LABEL_30;
      }

      v131(v14, v46, v41);
    }
  }

  v86 = MEMORY[0x29EDCA190];
LABEL_30:
  v87 = v113;
  if (v86 >> 62)
  {
    if (sub_29DA34D34())
    {
      goto LABEL_32;
    }
  }

  else if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:
    sub_29DA34614();

    v88 = sub_29DA34634();
    v89 = sub_29DA34BA4();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v136 = v91;
      *v90 = 136446467;
      v92 = sub_29D9CD190();
      v94 = sub_29D9EBB44(v92, v93, &v136);

      *(v90 + 4) = v94;
      *(v90 + 12) = 2081;
      v95 = sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
      v96 = MEMORY[0x29ED6D4D0](v86, v95);
      v98 = sub_29D9EBB44(v96, v97, &v136);

      *(v90 + 14) = v98;
      _os_log_impl(&dword_29D9BB000, v88, v89, "%{public}s: alert state updated sample types: %{private}s", v90, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v91, -1, -1);
      MEMORY[0x29ED6E4C0](v90, -1, -1);
    }

    v121(v87, v124);

    swift_getKeyPath();
    swift_getKeyPath();
    v136 = v86;

    return sub_29DA346F4();
  }

  v100 = v109;
  sub_29DA34614();

  v101 = sub_29DA34634();
  v102 = sub_29DA34BA4();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v136 = v104;
    *v103 = 136446210;
    v105 = sub_29D9CD190();
    v107 = sub_29D9EBB44(v105, v106, &v136);

    *(v103 + 4) = v107;
    _os_log_impl(&dword_29D9BB000, v101, v102, "%{public}s: no matching feed items for alert state updates", v103, 0xCu);
    sub_29D9C7968(v104);
    MEMORY[0x29ED6E4C0](v104, -1, -1);
    MEMORY[0x29ED6E4C0](v103, -1, -1);
  }

  return (v121)(v100, v124);
}

uint64_t sub_29D9CE8BC(void (**a1)(char *, uint64_t), int a2, void *a3, uint64_t a4)
{
  v128 = a4;
  v135 = a2;
  v148 = a1;
  sub_29D9CFAB4(0, &qword_2A1A2DC70, type metadata accessor for HighlightAlert);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v143 = &v121 - v7;
  v146 = type metadata accessor for HighlightAlert(0);
  v141 = *(v146 - 8);
  v8 = *(v141 + 64);
  MEMORY[0x2A1C7C4A8](v146);
  v138 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_29DA33964();
  v149 = *(v144 - 8);
  v10 = *(v149 + 64);
  MEMORY[0x2A1C7C4A8](v144);
  v12 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9CFAB4(0, &qword_2A1A2CB58, MEMORY[0x29EDCA398]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v16 = &v121 - v15;
  v17 = sub_29DA34644();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v131 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v132 = &v121 - v23;
  v24 = MEMORY[0x2A1C7C4A8](v22);
  v26 = &v121 - v25;
  v27 = MEMORY[0x2A1C7C4A8](v24);
  v125 = &v121 - v28;
  MEMORY[0x2A1C7C4A8](v27);
  v30 = &v121 - v29;
  sub_29DA34614();

  v31 = sub_29DA34634();
  v32 = sub_29DA34BA4();

  v33 = os_log_type_enabled(v31, v32);
  v137 = v17;
  v122 = v16;
  v127 = v26;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v152 = v35;
    *v34 = 136446210;
    v36 = sub_29D9CD190();
    v38 = v18;
    v39 = sub_29D9EBB44(v36, v37, &v152);

    *(v34 + 4) = v39;
    v18 = v38;
    _os_log_impl(&dword_29D9BB000, v31, v32, "%{public}s: determining alert state updated sample types", v34, 0xCu);
    sub_29D9C7968(v35);
    MEMORY[0x29ED6E4C0](v35, -1, -1);
    MEMORY[0x29ED6E4C0](v34, -1, -1);

    v40 = v38;
  }

  else
  {

    v40 = v18;
  }

  v136 = *(v40 + 8);
  v136(v30, v137);
  v41 = MEMORY[0x29EDCA190];
  v155 = MEMORY[0x29EDCA190];
  Strong = swift_unknownObjectWeakLoadStrong();
  v140 = a3;
  v44 = v144;
  if (Strong)
  {
    v45 = *(Strong + qword_2A1A2D580);
    if (v148)
    {

      sub_29DA33B44();

      sub_29D9C706C(&v152, v154);
      v41 = sub_29DA339C4();
    }

    else
    {

      sub_29DA33B44();

      sub_29D9C706C(&v152, v154);
      v41 = sub_29DA339D4();
    }

    swift_unknownObjectRelease();
    sub_29D9C7968(&v152);
  }

  v46 = *(v41 + 16);
  if (v46)
  {
    v47 = *(v149 + 16);
    v48 = (*(v149 + 80) + 32) & ~*(v149 + 80);
    v49 = v18;
    v123 = v41;
    v50 = v41 + v48;
    v148 = (v149 + 8);
    v149 += 16;
    v147 = *(v149 + 56);
    v141 += 56;
    v124 = v49;
    v133 = v49 + 8;
    v134 = MEMORY[0x29EDCA190];
    *&v43 = 136446467;
    v129 = v43;
    v142 = v47;
    v145 = v12;
    v47(v12, v41 + v48, v44);
    while (1)
    {
      v51 = sub_29DA33924();
      v53 = v52;
      v54 = sub_29DA33954();
      if (v55 >> 60 == 15)
      {
        (*v148)(v12, v44);

        goto LABEL_12;
      }

      v56 = v55;
      v57 = v51;
      v58 = v54;
      v59 = sub_29DA33474();
      v60 = *(v59 + 48);
      v61 = *(v59 + 52);
      swift_allocObject();
      sub_29DA33464();
      sub_29D9D0294(&qword_2A1A2DC88, type metadata accessor for HighlightAlert);
      v62 = v143;
      v63 = v146;
      sub_29DA33454();
      v139 = v58;

      (*v141)(v62, 0, 1, v63);
      v64 = v62;
      v65 = v138;
      sub_29D9CFC9C(v64, v138);
      if (v135)
      {
        break;
      }

      v77 = sub_29DA33904();
      v78 = v131;
      if (v77 != 2 && (v77 & 1) != 0)
      {
        sub_29D9CFBBC(v139, v56);

        sub_29D9CFD00(v65);
        v44 = v144;
        v12 = v145;
        (*v148)(v145, v144);
        v47 = v142;
        goto LABEL_12;
      }

      v130 = v57;
      sub_29DA34614();
      v79 = v140;

      v80 = sub_29DA34634();
      v81 = sub_29DA34BA4();

      LODWORD(v134) = v81;
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v151[0] = v126;
        *v82 = v129;
        v152 = 0;
        v153 = 0xE000000000000000;
        MEMORY[0x29ED6D450](60, 0xE100000000000000);
        v150 = *v79;
        sub_29D9CD6DC();
        v83 = sub_29DA34894();
        MEMORY[0x29ED6D450](v83);

        MEMORY[0x29ED6D450](32, 0xE100000000000000);
        v150 = v140;
        sub_29DA34E94();
        MEMORY[0x29ED6D450](62, 0xE100000000000000);
        v84 = sub_29D9EBB44(v152, v153, v151);

        *(v82 + 4) = v84;
        *(v82 + 12) = 2081;
        v85 = sub_29D9EBB44(v130, v53, v151);

        *(v82 + 14) = v85;
        _os_log_impl(&dword_29D9BB000, v80, v134, "%{public}s: adding %{private}s for alert state update of non-hidden feed item", v82, 0x16u);
        v86 = v126;
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v86, -1, -1);
        v87 = v82;
        v65 = v138;
        MEMORY[0x29ED6E4C0](v87, -1, -1);

        v88 = v131;
      }

      else
      {

        v88 = v78;
      }

      v136(v88, v137);
      v12 = v145;
      v92 = *(v146 + 20);
      sub_29D9C653C(0, &qword_2A1A2D4C8, &qword_2A1A2E010, 0x29EDBAD60, MEMORY[0x29EDBA1D0]);
      v93 = sub_29DA34774();
      v94 = [v93 sampleType];

      MEMORY[0x29ED6D4A0]();
      v47 = v142;
      if (*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_28;
      }

LABEL_25:
      sub_29DA34994();
      sub_29D9CFBBC(v139, v56);
      sub_29D9CFD00(v65);
      v44 = v144;
      (*v148)(v12, v144);
      v134 = v155;
LABEL_12:
      v50 += v147;
      if (!--v46)
      {

        v95 = v134;
        goto LABEL_31;
      }

      v47(v12, v50, v44);
    }

    v66 = v132;
    sub_29DA34614();

    v67 = sub_29DA34634();
    v68 = sub_29DA34B74();

    LODWORD(v130) = v68;
    v134 = v67;
    if (os_log_type_enabled(v67, v68))
    {
      v69 = v57;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v151[0] = v71;
      *v70 = v129;
      v152 = 0;
      v153 = 0xE000000000000000;
      MEMORY[0x29ED6D450](60, 0xE100000000000000);
      v150 = *v140;
      sub_29D9CD6DC();
      v72 = sub_29DA34894();
      MEMORY[0x29ED6D450](v72);

      MEMORY[0x29ED6D450](32, 0xE100000000000000);
      v150 = v140;
      sub_29DA34E94();
      MEMORY[0x29ED6D450](62, 0xE100000000000000);
      v73 = sub_29D9EBB44(v152, v153, v151);

      *(v70 + 4) = v73;
      v65 = v138;
      *(v70 + 12) = 2081;
      v74 = sub_29D9EBB44(v69, v53, v151);

      *(v70 + 14) = v74;
      v75 = v134;
      _os_log_impl(&dword_29D9BB000, v134, v130, "%{public}s: adding %{private}s for alert state update", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v71, -1, -1);
      MEMORY[0x29ED6E4C0](v70, -1, -1);

      v136(v132, v137);
      v12 = v145;
      v76 = v146;
      v47 = v142;
    }

    else
    {

      v136(v66, v137);
      v12 = v145;
      v76 = v146;
      v47 = v142;
      v65 = v138;
    }

    v89 = *(v76 + 20);
    sub_29D9C653C(0, &qword_2A1A2D4C8, &qword_2A1A2E010, 0x29EDBAD60, MEMORY[0x29EDBA1D0]);
    v90 = sub_29DA34774();
    v91 = [v90 sampleType];

    MEMORY[0x29ED6D4A0]();
    if (*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v155 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_25;
    }

LABEL_28:
    sub_29DA34974();
    v47 = v142;
    goto LABEL_25;
  }

  v95 = MEMORY[0x29EDCA190];
LABEL_31:
  v96 = v127;
  if (v95 >> 62)
  {
    if (sub_29DA34D34())
    {
      goto LABEL_33;
    }
  }

  else if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_33:
    sub_29DA34614();

    v97 = sub_29DA34634();
    v98 = sub_29DA34BA4();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v152 = v100;
      *v99 = 136446467;
      v101 = sub_29D9CD190();
      v103 = sub_29D9EBB44(v101, v102, &v152);

      *(v99 + 4) = v103;
      *(v99 + 12) = 2081;
      v104 = sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
      v105 = MEMORY[0x29ED6D4D0](v95, v104);
      v107 = sub_29D9EBB44(v105, v106, &v152);

      *(v99 + 14) = v107;
      _os_log_impl(&dword_29D9BB000, v97, v98, "%{public}s: alert state updated sample types: %{private}s", v99, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v100, -1, -1);
      MEMORY[0x29ED6E4C0](v99, -1, -1);
    }

    v136(v96, v137);

    sub_29D9CCFF0(v95);
  }

  v109 = v125;
  sub_29DA34614();

  v110 = sub_29DA34634();
  v111 = sub_29DA34BA4();

  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v152 = v113;
    *v112 = 136446210;
    v114 = sub_29D9CD190();
    v116 = sub_29D9EBB44(v114, v115, &v152);

    *(v112 + 4) = v116;
    _os_log_impl(&dword_29D9BB000, v110, v111, "%{public}s: no matching feed items for alert state updates", v112, 0xCu);
    sub_29D9C7968(v113);
    MEMORY[0x29ED6E4C0](v113, -1, -1);
    MEMORY[0x29ED6E4C0](v112, -1, -1);
  }

  v136(v109, v137);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC15HighlightAlerts30HighlightAlertStateSyncManager_updateDelegate + 8) = &off_2A2460160;
    v117 = result;
    swift_unknownObjectWeakAssign();
    v118 = sub_29DA34A34();
    v119 = v122;
    (*(*(v118 - 8) + 56))(v122, 1, 1, v118);
    v120 = swift_allocObject();
    v120[2] = 0;
    v120[3] = 0;
    v120[4] = v117;
    sub_29D9ED414(0, 0, v119, &unk_29DA392A8, v120);
  }

  return result;
}

void sub_29D9CFAB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29DA34CC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D9CFB08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29D9D02DC;

  return sub_29D9E07AC(a1, v4, v5, v6);
}

uint64_t sub_29D9CFBBC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29D9CFBD0(a1, a2);
  }

  return a1;
}

uint64_t sub_29D9CFBD0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_29D9CFC24(uint64_t a1)
{
  sub_29D9CFAB4(0, &qword_2A1A2DC70, type metadata accessor for HighlightAlert);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D9CFC9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightAlert(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D9CFD00(uint64_t a1)
{
  v2 = type metadata accessor for HighlightAlert(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D9CFD5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D9CFD9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29D9CFE50;

  return sub_29D9E07AC(a1, v4, v5, v6);
}

uint64_t sub_29D9CFE50()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_29D9CFF44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D9C653C(255, &qword_2A1A2CBA8, &qword_2A1A2DB10, 0x29EDBAD78, MEMORY[0x29EDC9A40]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D9CFFD0()
{
  if (!qword_2A1A2CC50)
  {
    sub_29D9CFF44(255, &qword_2A1A2CC20, MEMORY[0x29EDB8AF0]);
    sub_29D9D0050();
    v0 = sub_29DA34684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2CC50);
    }
  }
}

unint64_t sub_29D9D0050()
{
  result = qword_2A1A2CC28;
  if (!qword_2A1A2CC28)
  {
    sub_29D9CFF44(255, &qword_2A1A2CC20, MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2CC28);
  }

  return result;
}

void sub_29D9D00C4()
{
  if (!qword_2A1A2CBD8)
  {
    sub_29D9C79FC(255, &qword_2A1A2DB10, 0x29EDBAD78);
    sub_29D9C79FC(255, &qword_2A1A2D460, 0x29EDBAD80);
    sub_29D9D0160();
    v0 = sub_29DA347C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2CBD8);
    }
  }
}

unint64_t sub_29D9D0160()
{
  result = qword_2A1A2DB08;
  if (!qword_2A1A2DB08)
  {
    sub_29D9C79FC(255, &qword_2A1A2DB10, 0x29EDBAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DB08);
  }

  return result;
}

void sub_29D9D01E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_29D9CFFD0();
    a3(255);
    sub_29D9D0294(&qword_2A1A2CC58, sub_29D9CFFD0);
    v5 = sub_29DA34674();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D9D0294(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t HighlightAlertLocalizable.Substitution.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000015;
  if (a1 != 2)
  {
    v1 = 0xD000000000000011;
  }

  v2 = 0xD00000000000001CLL;
  if (!a1)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (a1 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t HighlightAlertLocalizable.Key.Headline.LowWalkingSteadinessNotification.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000004CLL;
  }

  else
  {
    return 0xD00000000000003DLL;
  }
}

unint64_t HighlightAlertLocalizable.Key.Subhead.LowWalkingSteadinessNotification.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    return 0xD00000000000003CLL;
  }

  else
  {
    return 0xD00000000000004BLL;
  }
}

unint64_t HighlightAlertLocalizable.Key.Headline.VeryLowWalkingSteadinessNotification.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000051;
  }

  else
  {
    return 0xD000000000000042;
  }
}

unint64_t HighlightAlertLocalizable.Key.Subhead.VeryLowWalkingSteadinessNotification.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    return 0xD000000000000041;
  }

  else
  {
    return 0xD000000000000050;
  }
}

uint64_t sub_29D9D080C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF656E694C65636ELL;
  v3 = 0x6572656665526F6ELL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v4 == 2)
    {
      v6 = 0x800000029DA369D0;
    }

    else
    {
      v6 = 0x800000029DA369F0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD00000000000001ELL;
    }

    else
    {
      v5 = 0x6572656665526F6ELL;
    }

    if (v4)
    {
      v6 = 0x800000029DA369B0;
    }

    else
    {
      v6 = 0xEF656E694C65636ELL;
    }
  }

  v7 = 0xD00000000000001ALL;
  v8 = 0x800000029DA369F0;
  if (a2 == 2)
  {
    v8 = 0x800000029DA369D0;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (a2)
  {
    v3 = 0xD00000000000001ELL;
    v2 = 0x800000029DA369B0;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
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
    v11 = sub_29DA35114();
  }

  return v11 & 1;
}

uint64_t sub_29D9D0940(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "NOTIFICATION_TIME";
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = "ENTAL_AUDIO_NOTIFICATION_1";
    }

    else
    {
      v3 = "NOTIFICATION_TIME";
    }
  }

  else if (a1 == 2)
  {
    v3 = "ENTAL_AUDIO_NOTIFICATION_2";
  }

  else if (a1 == 3)
  {
    v3 = "ENTAL_AUDIO_NOTIFICATION_3";
  }

  else
  {
    v3 = "ENTAL_AUDIO_NOTIFICATION_4";
  }

  v4 = "ENTAL_AUDIO_NOTIFICATION_2";
  v5 = "ENTAL_AUDIO_NOTIFICATION_3";
  if (a2 != 3)
  {
    v5 = "ENTAL_AUDIO_NOTIFICATION_4";
  }

  if (a2 != 2)
  {
    v4 = v5;
  }

  if (a2)
  {
    v2 = "ENTAL_AUDIO_NOTIFICATION_1";
  }

  if (a2 > 1u)
  {
    v2 = v4;
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_29DA35114();
  }

  return v6 & 1;
}

uint64_t sub_29D9D0A50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "UBHEAD_UNSUPPORTED_VERSION_1";
  v3 = a1;
  if (a1 > 1u)
  {
    v5 = 0xD000000000000050;
    if (v3 == 2)
    {
      v4 = "SS_NOTIFICATION_2";
    }

    else
    {
      v4 = "PREGNANCY_MODE_1";
    }
  }

  else
  {
    if (a1)
    {
      v4 = "SS_NOTIFICATION_1";
    }

    else
    {
      v4 = "UBHEAD_UNSUPPORTED_VERSION_1";
    }

    v5 = 0xD000000000000041;
  }

  v6 = "SS_NOTIFICATION_2";
  if (a2 != 2)
  {
    v6 = "PREGNANCY_MODE_1";
  }

  if (a2)
  {
    v2 = "SS_NOTIFICATION_1";
  }

  if (a2 <= 1u)
  {
    v7 = 0xD000000000000041;
  }

  else
  {
    v7 = 0xD000000000000050;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (v5 == v7 && (v4 | 0x8000000000000000) == (v8 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_29DA35114();
  }

  return v9 & 1;
}

uint64_t sub_29D9D0B58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "O_FITNESS_NOTIFICATION_1";
  v3 = a1;
  if (a1 > 1u)
  {
    v5 = 0xD00000000000004BLL;
    if (v3 == 2)
    {
      v4 = "NG_STEADINESS_NOTIFICATION_2";
    }

    else
    {
      v4 = "TIFICATION_PREGNANCY_MODE_1";
    }
  }

  else
  {
    if (a1)
    {
      v4 = "NG_STEADINESS_NOTIFICATION_1";
    }

    else
    {
      v4 = "O_FITNESS_NOTIFICATION_1";
    }

    v5 = 0xD00000000000003CLL;
  }

  v6 = "NG_STEADINESS_NOTIFICATION_2";
  if (a2 != 2)
  {
    v6 = "TIFICATION_PREGNANCY_MODE_1";
  }

  if (a2)
  {
    v2 = "NG_STEADINESS_NOTIFICATION_1";
  }

  if (a2 <= 1u)
  {
    v7 = 0xD00000000000003CLL;
  }

  else
  {
    v7 = 0xD00000000000004BLL;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (v5 == v7 && (v4 | 0x8000000000000000) == (v8 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_29DA35114();
  }

  return v9 & 1;
}

uint64_t sub_29D9D0C60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "_PREGNANCY_MODE_1";
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = "NTAL_AUDIO_NOTIFICATION_1";
    }

    else
    {
      v3 = "_PREGNANCY_MODE_1";
    }
  }

  else if (a1 == 2)
  {
    v3 = "NTAL_AUDIO_NOTIFICATION_2";
  }

  else if (a1 == 3)
  {
    v3 = "NTAL_AUDIO_NOTIFICATION_3";
  }

  else
  {
    v3 = "NTAL_AUDIO_NOTIFICATION_4";
  }

  v4 = "NTAL_AUDIO_NOTIFICATION_2";
  v5 = "NTAL_AUDIO_NOTIFICATION_3";
  if (a2 != 3)
  {
    v5 = "NTAL_AUDIO_NOTIFICATION_4";
  }

  if (a2 != 2)
  {
    v4 = v5;
  }

  if (a2)
  {
    v2 = "NTAL_AUDIO_NOTIFICATION_1";
  }

  if (a2 > 1u)
  {
    v2 = v4;
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_29DA35114();
  }

  return v6 & 1;
}

uint64_t sub_29D9D0D70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "LOWHR_NOTIFICATION_THRESHOLD";
      v3 = 0xD000000000000015;
    }

    else
    {
      v4 = "NOTIFICATION_DURATION";
      v3 = 0xD000000000000011;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD00000000000001CLL;
    }

    else
    {
      v3 = 0xD00000000000001DLL;
    }

    if (v2)
    {
      v4 = "HIGHHR_NOTIFICATION_THRESHOLD";
    }

    else
    {
      v4 = "ionDate";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a2 == 2)
    {
      v6 = "LOWHR_NOTIFICATION_THRESHOLD";
    }

    else
    {
      v6 = "NOTIFICATION_DURATION";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD00000000000001CLL;
    }

    else
    {
      v5 = 0xD00000000000001DLL;
    }

    if (a2)
    {
      v6 = "HIGHHR_NOTIFICATION_THRESHOLD";
    }

    else
    {
      v6 = "ionDate";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_29DA35114();
  }

  return v7 & 1;
}

uint64_t sub_29D9D0EA0()
{
  v1 = *v0;
  sub_29DA351B4();
  sub_29DA348D4();

  return sub_29DA351E4();
}

uint64_t sub_29D9D0F58()
{
  *v0;
  *v0;
  *v0;
  sub_29DA348D4();
}

uint64_t sub_29D9D0FFC()
{
  v1 = *v0;
  sub_29DA351B4();
  sub_29DA348D4();

  return sub_29DA351E4();
}

uint64_t sub_29D9D10B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s15HighlightAlerts0A16AlertLocalizableO12SubstitutionO8rawValueAESgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_29D9D10E0(unint64_t *a1@<X8>)
{
  v2 = "LOWHR_NOTIFICATION_THRESHOLD";
  v3 = 0xD000000000000015;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000011;
    v2 = "NOTIFICATION_DURATION";
  }

  v4 = 0xD00000000000001CLL;
  if (*v1)
  {
    v5 = "HIGHHR_NOTIFICATION_THRESHOLD";
  }

  else
  {
    v4 = 0xD00000000000001DLL;
    v5 = "ionDate";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_29D9D1184()
{
  v1 = *v0;
  sub_29DA351B4();
  sub_29DA348D4();

  return sub_29DA351E4();
}

uint64_t sub_29D9D1238()
{
  *v0;
  *v0;
  *v0;
  sub_29DA348D4();
}

uint64_t sub_29D9D12D8()
{
  v1 = *v0;
  sub_29DA351B4();
  sub_29DA348D4();

  return sub_29DA351E4();
}

uint64_t sub_29D9D1388@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s15HighlightAlerts0A16AlertLocalizableO3KeyO8HeadlineO30EnvironmentalAudioNotificationO8rawValueAISgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_29D9D13B8(void *a1@<X8>)
{
  v2 = *v1;
  v3 = "NOTIFICATION_TIME";
  v4 = "ENTAL_AUDIO_NOTIFICATION_2";
  v5 = "ENTAL_AUDIO_NOTIFICATION_3";
  if (v2 != 3)
  {
    v5 = "ENTAL_AUDIO_NOTIFICATION_4";
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (*v1)
  {
    v3 = "ENTAL_AUDIO_NOTIFICATION_1";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  *a1 = 0xD00000000000003ALL;
  a1[1] = v6 | 0x8000000000000000;
}

BOOL HighlightAlertLocalizable.Key.Headline.HighHeartRateNotification.init(rawValue:)()
{
  v0 = sub_29DA34FE4();

  return v0 != 0;
}

uint64_t sub_29D9D1490()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

uint64_t sub_29D9D1504()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

BOOL HighlightAlertLocalizable.Key.Headline.HypertensionNotification.init(rawValue:)()
{
  v0 = sub_29DA34FE4();

  return v0 != 0;
}

uint64_t sub_29D9D15E8()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

uint64_t sub_29D9D165C()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

BOOL HighlightAlertLocalizable.Key.Headline.IrregularRhythmNotification.init(rawValue:)()
{
  v0 = sub_29DA34FE4();

  return v0 != 0;
}

uint64_t sub_29D9D1740()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

uint64_t sub_29D9D17B4()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

BOOL HighlightAlertLocalizable.Key.Headline.LowCardioFitnessNotification.init(rawValue:)()
{
  v0 = sub_29DA34FE4();

  return v0 != 0;
}

uint64_t sub_29D9D1898()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

uint64_t sub_29D9D190C()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

BOOL HighlightAlertLocalizable.Key.Headline.LowHeartRateNotification.init(rawValue:)()
{
  v0 = sub_29DA34FE4();

  return v0 != 0;
}

uint64_t sub_29D9D19F0()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

uint64_t sub_29D9D1A64()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

uint64_t sub_29D9D1B0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000004CLL;
  }

  else
  {
    v4 = 0xD00000000000003DLL;
  }

  if (v3)
  {
    v5 = "T_RATE_NOTIFICATION_1";
  }

  else
  {
    v5 = "ING_STEADINESS_NOTIFICATION_1";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD00000000000004CLL;
  }

  else
  {
    v7 = 0xD00000000000003DLL;
  }

  if (*a2)
  {
    v8 = "ING_STEADINESS_NOTIFICATION_1";
  }

  else
  {
    v8 = "T_RATE_NOTIFICATION_1";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_29DA35114();
  }

  return v10 & 1;
}

uint64_t sub_29D9D1BB8()
{
  v1 = *v0;
  sub_29DA351B4();
  sub_29DA348D4();

  return sub_29DA351E4();
}

uint64_t sub_29D9D1C38()
{
  *v0;
  sub_29DA348D4();
}

uint64_t sub_29D9D1CA4()
{
  v1 = *v0;
  sub_29DA351B4();
  sub_29DA348D4();

  return sub_29DA351E4();
}

void sub_29D9D1D2C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000004CLL;
  }

  else
  {
    v2 = 0xD00000000000003DLL;
  }

  if (*v1)
  {
    v3 = "ING_STEADINESS_NOTIFICATION_1";
  }

  else
  {
    v3 = "T_RATE_NOTIFICATION_1";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_29D9D1D94(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "O_NOTIFICATION_1";
  }

  else
  {
    v2 = "OTIFICATION_PREGNANCY_MODE_1";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "O_NOTIFICATION_1";
  }

  else
  {
    v4 = "OTIFICATION_PREGNANCY_MODE_1";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_29DA35114();
  }

  return v5 & 1;
}

uint64_t sub_29D9D1E38()
{
  v1 = *v0;
  sub_29DA351B4();
  sub_29DA348D4();

  return sub_29DA351E4();
}

uint64_t sub_29D9D1EB0()
{
  *v0;
  sub_29DA348D4();
}

uint64_t sub_29D9D1F14()
{
  v1 = *v0;
  sub_29DA351B4();
  sub_29DA348D4();

  return sub_29DA351E4();
}

void sub_29D9D1F94(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "O_NOTIFICATION_1";
  }

  else
  {
    v2 = "OTIFICATION_PREGNANCY_MODE_1";
  }

  *a1 = 0xD000000000000040;
  a1[1] = v2 | 0x8000000000000000;
}

BOOL HighlightAlertLocalizable.Key.Headline.SleepApneaNotification.init(rawValue:)()
{
  v0 = sub_29DA34FE4();

  return v0 != 0;
}

uint64_t sub_29D9D2030()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

uint64_t sub_29D9D20A4()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

BOOL HighlightAlertLocalizable.Key.Headline.UnsupportedVersion.init(rawValue:)()
{
  v0 = sub_29DA34FE4();

  return v0 != 0;
}

uint64_t sub_29D9D21A4()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

uint64_t sub_29D9D2218()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

uint64_t sub_29D9D22B4()
{
  v0 = sub_29DA34FE4();

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

uint64_t sub_29D9D2310(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000051;
  }

  else
  {
    v4 = 0xD000000000000042;
  }

  if (v3)
  {
    v5 = "EADLINE_UNSUPPORTED_VERSION_1";
  }

  else
  {
    v5 = "ESS_NOTIFICATION_1";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000051;
  }

  else
  {
    v7 = 0xD000000000000042;
  }

  if (*a2)
  {
    v8 = "ESS_NOTIFICATION_1";
  }

  else
  {
    v8 = "EADLINE_UNSUPPORTED_VERSION_1";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_29DA35114();
  }

  return v10 & 1;
}

uint64_t sub_29D9D23BC()
{
  v1 = *v0;
  sub_29DA351B4();
  sub_29DA348D4();

  return sub_29DA351E4();
}

uint64_t sub_29D9D243C()
{
  *v0;
  sub_29DA348D4();
}

uint64_t sub_29D9D24A8()
{
  v1 = *v0;
  sub_29DA351B4();
  sub_29DA348D4();

  return sub_29DA351E4();
}

uint64_t sub_29D9D2530@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_29DA34FE4();

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

void sub_29D9D258C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000051;
  }

  else
  {
    v2 = 0xD000000000000042;
  }

  if (*v1)
  {
    v3 = "ESS_NOTIFICATION_1";
  }

  else
  {
    v3 = "EADLINE_UNSUPPORTED_VERSION_1";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_29D9D25F8()
{
  v1 = *v0;
  sub_29DA351B4();
  sub_29DA348D4();

  return sub_29DA351E4();
}

uint64_t sub_29D9D26AC()
{
  *v0;
  *v0;
  *v0;
  sub_29DA348D4();
}

uint64_t sub_29D9D274C()
{
  v1 = *v0;
  sub_29DA351B4();
  sub_29DA348D4();

  return sub_29DA351E4();
}

uint64_t sub_29D9D27FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s15HighlightAlerts0A16AlertLocalizableO3KeyO7SubheadO30EnvironmentalAudioNotificationO8rawValueAISgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_29D9D282C(void *a1@<X8>)
{
  v2 = *v1;
  v3 = "_PREGNANCY_MODE_1";
  v4 = "NTAL_AUDIO_NOTIFICATION_2";
  v5 = "NTAL_AUDIO_NOTIFICATION_3";
  if (v2 != 3)
  {
    v5 = "NTAL_AUDIO_NOTIFICATION_4";
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (*v1)
  {
    v3 = "NTAL_AUDIO_NOTIFICATION_1";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  *a1 = 0xD000000000000039;
  a1[1] = v6 | 0x8000000000000000;
}

BOOL HighlightAlertLocalizable.Key.Subhead.HypertensionNotification.init(rawValue:)()
{
  v0 = sub_29DA34FE4();

  return v0 != 0;
}

uint64_t sub_29D9D2904()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

uint64_t sub_29D9D2978()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

BOOL HighlightAlertLocalizable.Key.Subhead.IrregularRhythmNotification.init(rawValue:)()
{
  v0 = sub_29DA34FE4();

  return v0 != 0;
}

uint64_t sub_29D9D2A5C()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

uint64_t sub_29D9D2AD0()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

BOOL HighlightAlertLocalizable.Key.Subhead.LowCardioFitnessNotification.init(rawValue:)()
{
  v0 = sub_29DA34FE4();

  return v0 != 0;
}

uint64_t sub_29D9D2BB4()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

uint64_t sub_29D9D2C28()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

uint64_t sub_29D9D2CD4()
{
  v1 = *v0;
  sub_29DA351B4();
  sub_29DA348D4();

  return sub_29DA351E4();
}

uint64_t sub_29D9D2D80()
{
  *v0;
  *v0;
  *v0;
  sub_29DA348D4();
}

uint64_t sub_29D9D2E18()
{
  v1 = *v0;
  sub_29DA351B4();
  sub_29DA348D4();

  return sub_29DA351E4();
}

uint64_t sub_29D9D2EC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s15HighlightAlerts0A16AlertLocalizableO3KeyO7SubheadO32LowWalkingSteadinessNotificationO8rawValueAISgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_29D9D2EF0(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000003CLL;
  v3 = "O_FITNESS_NOTIFICATION_1";
  v4 = "NG_STEADINESS_NOTIFICATION_2";
  if (*v1 != 2)
  {
    v4 = "TIFICATION_PREGNANCY_MODE_1";
  }

  if (*v1)
  {
    v3 = "NG_STEADINESS_NOTIFICATION_1";
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v2 = 0xD00000000000004BLL;
    v5 = v4;
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t sub_29D9D2F7C(_BYTE *a1, _BYTE *a2)
{
  v2 = "_HEADPHONE_AUDIO_NOTIFICATION_1";
  if (*a1 == 1)
  {
    v3 = "_HEADPHONE_AUDIO_NOTIFICATION_1";
  }

  else
  {
    v3 = "_HEADPHONE_AUDIO_NOTIFICATION_2";
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = "TIFICATION_PREGNANCY_MODE_2";
  }

  if (*a2 != 1)
  {
    v2 = "_HEADPHONE_AUDIO_NOTIFICATION_2";
  }

  if (*a2)
  {
    v5 = v2;
  }

  else
  {
    v5 = "TIFICATION_PREGNANCY_MODE_2";
  }

  if ((v4 | 0x8000000000000000) == (v5 | 0x8000000000000000))
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_29DA35114();
  }

  return v6 & 1;
}

uint64_t sub_29D9D303C()
{
  v1 = *v0;
  sub_29DA351B4();
  sub_29DA348D4();

  return sub_29DA351E4();
}

uint64_t sub_29D9D30C8()
{
  *v0;
  *v0;
  sub_29DA348D4();
}

uint64_t sub_29D9D3140()
{
  v1 = *v0;
  sub_29DA351B4();
  sub_29DA348D4();

  return sub_29DA351E4();
}

uint64_t sub_29D9D31C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s15HighlightAlerts0A16AlertLocalizableO3KeyO7SubheadO34SevenDayHeadphoneAudioNotificationO8rawValueAISgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_29D9D31F8(void *a1@<X8>)
{
  v2 = "TIFICATION_PREGNANCY_MODE_2";
  v3 = "_HEADPHONE_AUDIO_NOTIFICATION_1";
  if (*v1 != 1)
  {
    v3 = "_HEADPHONE_AUDIO_NOTIFICATION_2";
  }

  if (*v1)
  {
    v2 = v3;
  }

  *a1 = 0xD00000000000003FLL;
  a1[1] = v2 | 0x8000000000000000;
}

BOOL HighlightAlertLocalizable.Key.Subhead.SleepApneaNotification.init(rawValue:)()
{
  v0 = sub_29DA34FE4();

  return v0 != 0;
}

uint64_t sub_29D9D32A8()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

uint64_t sub_29D9D331C()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

BOOL HighlightAlertLocalizable.Key.Subhead.UnsupportedVersion.init(rawValue:)()
{
  v0 = sub_29DA34FE4();

  return v0 != 0;
}

uint64_t sub_29D9D341C()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

uint64_t sub_29D9D3490()
{
  sub_29DA351B4();
  sub_29DA348D4();
  return sub_29DA351E4();
}

uint64_t sub_29D9D34F0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_29DA34FE4();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_29D9D358C()
{
  v1 = *v0;
  sub_29DA351B4();
  sub_29DA348D4();

  return sub_29DA351E4();
}

uint64_t sub_29D9D3638()
{
  *v0;
  *v0;
  *v0;
  sub_29DA348D4();
}

uint64_t sub_29D9D36D0()
{
  v1 = *v0;
  sub_29DA351B4();
  sub_29DA348D4();

  return sub_29DA351E4();
}

uint64_t sub_29D9D3778@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s15HighlightAlerts0A16AlertLocalizableO3KeyO7SubheadO36VeryLowWalkingSteadinessNotificationO8rawValueAISgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_29D9D37A8(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000041;
  v3 = "UBHEAD_UNSUPPORTED_VERSION_1";
  v4 = "SS_NOTIFICATION_2";
  if (*v1 != 2)
  {
    v4 = "PREGNANCY_MODE_1";
  }

  if (*v1)
  {
    v3 = "SS_NOTIFICATION_1";
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v2 = 0xD000000000000050;
    v5 = v4;
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t _s15HighlightAlerts0A16AlertLocalizableO12SubstitutionO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_29DA34FE4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t _s15HighlightAlerts0A16AlertLocalizableO3KeyO8HeadlineO30EnvironmentalAudioNotificationO8rawValueAISgSS_tcfC_0()
{
  v0 = sub_29DA34FE4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t _s15HighlightAlerts0A16AlertLocalizableO3KeyO7SubheadO30EnvironmentalAudioNotificationO8rawValueAISgSS_tcfC_0()
{
  v0 = sub_29DA34FE4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t _s15HighlightAlerts0A16AlertLocalizableO3KeyO7SubheadO32LowWalkingSteadinessNotificationO8rawValueAISgSS_tcfC_0()
{
  v0 = sub_29DA34FE4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t _s15HighlightAlerts0A16AlertLocalizableO3KeyO7SubheadO34SevenDayHeadphoneAudioNotificationO8rawValueAISgSS_tcfC_0()
{
  v0 = sub_29DA34FE4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t _s15HighlightAlerts0A16AlertLocalizableO3KeyO7SubheadO36VeryLowWalkingSteadinessNotificationO8rawValueAISgSS_tcfC_0()
{
  v0 = sub_29DA34FE4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_29D9D39F0()
{
  result = qword_2A17D12B8;
  if (!qword_2A17D12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D12B8);
  }

  return result;
}

unint64_t sub_29D9D3A78()
{
  result = qword_2A17D12D0;
  if (!qword_2A17D12D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D12D0);
  }

  return result;
}

uint64_t sub_29D9D3AFC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_29D9D4564(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D9D3B50()
{
  result = qword_2A17D12E8;
  if (!qword_2A17D12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D12E8);
  }

  return result;
}

unint64_t sub_29D9D3BD8()
{
  result = qword_2A17D1300;
  if (!qword_2A17D1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1300);
  }

  return result;
}

unint64_t sub_29D9D3C60()
{
  result = qword_2A17D1318;
  if (!qword_2A17D1318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1318);
  }

  return result;
}

unint64_t sub_29D9D3CE8()
{
  result = qword_2A17D1330;
  if (!qword_2A17D1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1330);
  }

  return result;
}

unint64_t sub_29D9D3D70()
{
  result = qword_2A17D1348;
  if (!qword_2A17D1348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1348);
  }

  return result;
}

unint64_t sub_29D9D3DF8()
{
  result = qword_2A17D1360;
  if (!qword_2A17D1360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1360);
  }

  return result;
}

unint64_t sub_29D9D3E80()
{
  result = qword_2A17D1378;
  if (!qword_2A17D1378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1378);
  }

  return result;
}

unint64_t sub_29D9D3F08()
{
  result = qword_2A17D1390;
  if (!qword_2A17D1390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1390);
  }

  return result;
}

unint64_t sub_29D9D3F90()
{
  result = qword_2A17D13A8;
  if (!qword_2A17D13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D13A8);
  }

  return result;
}

unint64_t sub_29D9D4018()
{
  result = qword_2A17D13C0;
  if (!qword_2A17D13C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D13C0);
  }

  return result;
}

unint64_t sub_29D9D40A0()
{
  result = qword_2A17D13D8;
  if (!qword_2A17D13D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D13D8);
  }

  return result;
}

unint64_t sub_29D9D4128()
{
  result = qword_2A17D13F0;
  if (!qword_2A17D13F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D13F0);
  }

  return result;
}

unint64_t sub_29D9D41B0()
{
  result = qword_2A17D1408;
  if (!qword_2A17D1408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1408);
  }

  return result;
}

unint64_t sub_29D9D4238()
{
  result = qword_2A17D1420;
  if (!qword_2A17D1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1420);
  }

  return result;
}

unint64_t sub_29D9D42C0()
{
  result = qword_2A17D1438;
  if (!qword_2A17D1438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1438);
  }

  return result;
}

unint64_t sub_29D9D4348()
{
  result = qword_2A17D1450;
  if (!qword_2A17D1450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1450);
  }

  return result;
}

unint64_t sub_29D9D43D0()
{
  result = qword_2A17D1468;
  if (!qword_2A17D1468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1468);
  }

  return result;
}

unint64_t sub_29D9D4458()
{
  result = qword_2A17D1480;
  if (!qword_2A17D1480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1480);
  }

  return result;
}

unint64_t sub_29D9D44E0()
{
  result = qword_2A17D1498;
  if (!qword_2A17D1498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1498);
  }

  return result;
}

void sub_29D9D4564(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29DA349A4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for HighlightAlertEventQueryOperationError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HighlightAlertEventQueryOperationError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for HighlightAlertLocalizable.Key.Subhead.SevenDayHeadphoneAudioNotification(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HighlightAlertLocalizable.Key.Subhead.SevenDayHeadphoneAudioNotification(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for HighlightAlertFeedIdentifier.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HighlightAlertFeedIdentifier.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for HighlightAlertDailyAveragesConfiguration()
{
  result = qword_2A1A2DD00;
  if (!qword_2A1A2DD00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D9D4B98()
{
  result = sub_29DA343A4();
  if (v1 <= 0x3F)
  {
    result = sub_29DA34374();
    if (v2 <= 0x3F)
    {
      result = sub_29DA341E4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29D9D4C34(void *a1)
{
  v3 = v1;
  sub_29D9D6660(0, &qword_2A17D14D0, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v10 = &v21[-v9];
  v11 = a1[4];
  sub_29D9C706C(a1, a1[3]);
  sub_29D9D65A4();
  sub_29DA35224();
  v12 = *v3;
  v13 = v3[1];
  v21[15] = 0;
  sub_29DA350A4();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v21[14] = 1;
    sub_29DA35074();
    v16 = v3[4];
    v17 = v3[5];
    v21[13] = 2;
    sub_29DA350A4();
    v18 = v3[6];
    v19 = v3[7];
    v21[12] = 3;
    sub_29DA350A4();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_29D9D4DE0()
{
  v1 = 0x786966667573;
  v2 = 0xD00000000000001ALL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_29D9D4E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D9D6134(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D9D4E9C(uint64_t a1)
{
  v2 = sub_29D9D65A4();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D9D4ED8(uint64_t a1)
{
  v2 = sub_29D9D65A4();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D9D4F14()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_29D9D4F44(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_29DA35114() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v6 || v4 != v7) && (sub_29DA35114() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((v3 != v8 || v5 != v9) && (sub_29DA35114() & 1) == 0)
  {
    return 0;
  }

  if (v13 == v10 && v14 == v11)
  {
    return 1;
  }

  return sub_29DA35114();
}

double sub_29D9D5098@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29D9D62A0(a1, v7);
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

char *sub_29D9D50F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29D9D5FA4(0, &qword_2A1A2DA88, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29D9D524C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29D9D5E90(0, &qword_2A1A2D3F0, type metadata accessor for CGPoint);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}