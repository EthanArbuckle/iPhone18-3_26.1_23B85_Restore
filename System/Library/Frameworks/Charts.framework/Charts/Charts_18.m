void sub_1AADFA7BC()
{
  if (!qword_1ED9AEEE8)
  {
    sub_1AACD4088();
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AEEE8);
    }
  }
}

void sub_1AADFA820()
{
  if (!qword_1ED9B16D8)
  {
    sub_1AAD9B578();
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B16D8);
    }
  }
}

void sub_1AADFA884()
{
  if (!qword_1ED9B1E28)
  {
    sub_1AACB62F8();
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B1E28);
    }
  }
}

void sub_1AADFA8E8()
{
  if (!qword_1ED9B2930)
  {
    sub_1AACB62F8();
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2930);
    }
  }
}

void sub_1AADFA94C()
{
  if (!qword_1EB424208)
  {
    sub_1AAD6CB80();
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424208);
    }
  }
}

void sub_1AADFA9B0()
{
  if (!qword_1EB424218)
  {
    sub_1AAD9B96C();
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424218);
    }
  }
}

void sub_1AADFAA14()
{
  if (!qword_1ED9B2978)
  {
    sub_1AACD4E48();
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2978);
    }
  }
}

void sub_1AADFAA78()
{
  if (!qword_1ED9B1E30)
  {
    sub_1AACB62F8();
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B1E30);
    }
  }
}

void sub_1AADFAADC()
{
  if (!qword_1EB424D48)
  {
    sub_1AACBB650(255, &qword_1ED9B37E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB424D48);
    }
  }
}

void sub_1AADFAB58()
{
  if (!qword_1ED9B1E20)
  {
    sub_1AACB62F8();
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B1E20);
    }
  }
}

void sub_1AADFABBC()
{
  if (!qword_1ED9B0C60)
  {
    sub_1AACFDD38();
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B0C60);
    }
  }
}

unint64_t sub_1AADFAC20()
{
  result = qword_1ED9AF968;
  if (!qword_1ED9AF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AF968);
  }

  return result;
}

unint64_t sub_1AADFAD78()
{
  result = qword_1ED9AFDE8[0];
  if (!qword_1ED9AFDE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9AFDE8);
  }

  return result;
}

unint64_t sub_1AADFADCC()
{
  result = qword_1ED9AFB50[0];
  if (!qword_1ED9AFB50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9AFB50);
  }

  return result;
}

uint64_t sub_1AADFAE20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AADFAEBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1AADFAF24()
{
  result = qword_1ED9AF650;
  if (!qword_1ED9AF650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AF650);
  }

  return result;
}

uint64_t sub_1AADFAF78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AADFAFD8()
{
  if (!qword_1ED9AD7A8)
  {
    sub_1AAD9B370();
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AD7A8);
    }
  }
}

uint64_t sub_1AADFB03C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1AADFB0A8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1AADFB0A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1AADFB134()
{
  if (!qword_1ED9ADAA0)
  {
    sub_1AACCBD48(255, &qword_1ED9ADAB0, sub_1AADFB1E4);
    sub_1AACCD4DC(255, &qword_1ED9B2B90, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980AB8]);
    v0 = sub_1AAF8DF74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9ADAA0);
    }
  }
}

void sub_1AADFB1E4()
{
  if (!qword_1ED9ADB10)
  {
    sub_1AADFB2D8();
    sub_1AADF9B5C(255);
    sub_1AADFA340();
    sub_1AADFA3D4();
    sub_1AACCC5FC(&qword_1ED9AF7A0, sub_1AADFA340);
    swift_getOpaqueTypeConformance2();
    v0 = sub_1AAF8DC24();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9ADB10);
    }
  }
}

void sub_1AADFB2D8()
{
  if (!qword_1ED9ADA18)
  {
    sub_1AADF9B5C(255);
    sub_1AADFA340();
    sub_1AADFA3D4();
    sub_1AACCC5FC(&qword_1ED9AF7A0, sub_1AADFA340);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1ED9ADA18);
    }
  }
}

unint64_t sub_1AADFB3F4()
{
  result = qword_1ED9AF518;
  if (!qword_1ED9AF518)
  {
    sub_1AACCBD48(255, &qword_1ED9ADAB0, sub_1AADFB1E4);
    sub_1AACCC5FC(&qword_1ED9AF528, sub_1AADFB1E4);
    sub_1AACCFA24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AF518);
  }

  return result;
}

void sub_1AADFB4C0()
{
  if (!qword_1EB424238)
  {
    sub_1AAD81BA0();
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424238);
    }
  }
}

uint64_t sub_1AADFB524(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1AADF9D6C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1AADFB594()
{
  if (!qword_1ED9B2958)
  {
    sub_1AACB62F8();
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2958);
    }
  }
}

uint64_t View.chartScrollableAxes(_:)(char a1)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;
  sub_1AAF8EBB4();
}

uint64_t sub_1AADFB6D4()
{
  sub_1AACBFF9C();

  return sub_1AAF8E144();
}

uint64_t sub_1AADFB71C(uint64_t a1)
{
  sub_1AACBF6A8(a1, v3);
  sub_1AACBF6A8(v3, &v2);
  sub_1AACBFF9C();
  sub_1AAF8E154();
  return sub_1AACB2684(v3);
}

uint64_t sub_1AADFB838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1AACD78AC(a1, a3, a5);
  v7 = v5;
  if (v8 > 1u)
  {
    sub_1AACCA728(v5, v6, 2);
    result = sub_1AAF902C4();
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v7;
    sub_1AAF8EBB4();
  }

  return result;
}

uint64_t sub_1AADFB984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[3] = a4;
  v11[4] = a6;
  v9 = sub_1AACB2508(v11);
  (*(*(a4 - 8) + 16))(v9, a2, a4);
  return sub_1AAE04FF4(v11, a1 + 40, &qword_1ED9B3728, &type metadata for AnyChartScrollTargetBehavior);
}

uint64_t sub_1AADFBA3C()
{
  sub_1AAE04F70();

  return sub_1AAF8E144();
}

uint64_t sub_1AADFBAC4(uint64_t a1)
{
  sub_1AAE04F38(a1, v3);
  sub_1AAE04F38(v3, &v2);
  sub_1AAE04F70();
  sub_1AAF8E154();
  return sub_1AAE04FC4(v3);
}

uint64_t sub_1AADFBB48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AAF8EF74();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  (*(v8 + 16))(&v10[-v6], a2, v5);
  sub_1AAE84B68(v7, v10);
  v10[41] = 1;
  return sub_1AAE04FF4(v10, a1, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
}

uint64_t sub_1AADFBC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v17[2] = a6;
  v17[1] = a7;
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  swift_getKeyPath();
  (*(v12 + 16))(v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v14 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  *(v15 + 5) = a5;
  (*(v12 + 32))(&v15[v14], v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  sub_1AAF8EBB4();
}

uint64_t sub_1AADFBE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v19[2] = a6;
  v19[0] = a5;
  v19[1] = a7;
  v11 = sub_1AAF8EF74();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v19 - v13;
  swift_getKeyPath();
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  v17 = v19[0];
  *(v16 + 4) = a4;
  *(v16 + 5) = v17;
  (*(v12 + 32))(&v16[v15], v14, v11);
  sub_1AAF8EBB4();
}

uint64_t sub_1AADFBF90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AAF8EF74();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  (*(v8 + 16))(&v10[-v6], a2, v5);
  sub_1AAE84B68(v7, v10);
  v10[41] = 1;
  return sub_1AAE04FF4(v10, a1 + 48, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
}

uint64_t sub_1AADFC0A0@<X0>(char a1@<W0>, __int128 *a2@<X1>, _BYTE *a3@<X8>)
{
  sub_1AAE05074(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = type metadata accessor for ValueAlignedChartScrollTargetBehavior(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = type metadata accessor for AutomaticScrollLimitModifier(0);
  v14 = *(v13 + 24);
  *&a3[v14] = swift_getKeyPath();
  sub_1AACCF570(0, qword_1ED9B2F78, sub_1AACCB9E0, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v15 = *(v13 + 28);
  *&a3[v15] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  sub_1AACBB198(a2, v21);
  sub_1AAE049CC();
  v16 = swift_dynamicCast();
  v17 = *(v10 + 56);
  if (v16)
  {
    v17(v8, 0, 1, v9);
    sub_1AAE050A8(v8, v12, type metadata accessor for ValueAlignedChartScrollTargetBehavior);
    v18 = v12[*(v9 + 32)];
    result = sub_1AACDCF10(v12, type metadata accessor for ValueAlignedChartScrollTargetBehavior);
  }

  else
  {
    v17(v8, 1, 1, v9);
    result = sub_1AACDCF10(v8, sub_1AAE05074);
    v18 = 3;
  }

  a3[1] = v18;
  return result;
}

uint64_t sub_1AADFC318@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AAF8E134();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACCF570(0, qword_1ED9B2F78, sub_1AACCB9E0, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for AutomaticScrollLimitModifier(0);
  sub_1AAE04938(v1 + *(v10 + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1AAE050A8(v9, a1, sub_1AACCB9E0);
  }

  sub_1AAF8FD14();
  v12 = sub_1AAF8E764();
  sub_1AAF8D7B4();

  sub_1AAF8E124();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1AADFC510@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AAF8E134();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACCF570(0, qword_1ED9B2F78, sub_1AACCB9E0, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for AutomaticScrollLimitModifier(0);
  sub_1AAE04938(v1 + *(v10 + 28), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1AAE050A8(v9, a1, sub_1AACCB9E0);
  }

  sub_1AAF8FD14();
  v12 = sub_1AAF8E764();
  sub_1AAF8D7B4();

  sub_1AAF8E124();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1AADFC708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  sub_1AACCB9E0(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE04E7C(a1, v9, sub_1AACCB9E0);
  return a5(v9);
}

uint64_t sub_1AADFC7AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AAF8E574();
  v64 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v62 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE048D4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v63 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v57 - v9;
  sub_1AACCB9E0(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v57 - v13;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v57 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v57 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v26 = v57 - v25;
  if (v1[1] > 1u)
  {
    if (v1[1] != 2)
    {
      v38 = sub_1AAF8E544();
      v34 = *(*(v38 - 8) + 56);
      v35 = v38;
      v36 = a1;
      v37 = 1;
      goto LABEL_12;
    }

    sub_1AAF8E534();
  }

  else
  {
    if (!v1[1])
    {
      v59 = v23;
      v60 = v24;
      v61 = a1;
      v27 = *v1;
      v28 = sub_1AAF8E774();
      sub_1AAF8E784();
      if (sub_1AAF8E784() != v28)
      {
        goto LABEL_18;
      }

      v57[1] = v27;
      v58 = v1;
      sub_1AADFC318(v26);
      v29 = v64;
      (*(v64 + 104))(v21, *MEMORY[0x1E697FF38], v3);
      (*(v29 + 56))(v21, 0, 1, v3);
      v30 = *(v6 + 48);
      sub_1AAE04E7C(v26, v10, sub_1AACCB9E0);
      sub_1AAE04E7C(v21, &v10[v30], sub_1AACCB9E0);
      v31 = *(v29 + 48);
      if (v31(v10, 1, v3) == 1)
      {
        sub_1AACDCF10(v21, sub_1AACCB9E0);
        sub_1AACDCF10(v26, sub_1AACCB9E0);
        if (v31(&v10[v30], 1, v3) == 1)
        {
          v32 = v10;
LABEL_22:
          sub_1AACDCF10(v32, sub_1AACCB9E0);
LABEL_30:
          v47 = v61;
          sub_1AAF8E524();
          goto LABEL_31;
        }
      }

      else
      {
        sub_1AAE04E7C(v10, v18, sub_1AACCB9E0);
        if (v31(&v10[v30], 1, v3) != 1)
        {
          v48 = v64;
          v49 = &v10[v30];
          v50 = v62;
          (*(v64 + 32))(v62, v49, v3);
          sub_1AAE04858(&qword_1EB424E90, MEMORY[0x1E697FF50]);
          v57[0] = sub_1AAF8F5F4();
          v51 = *(v48 + 8);
          v51(v50, v3);
          sub_1AACDCF10(v21, sub_1AACCB9E0);
          sub_1AACDCF10(v26, sub_1AACCB9E0);
          v51(v18, v3);
          sub_1AACDCF10(v10, sub_1AACCB9E0);
          if (v57[0])
          {
            goto LABEL_30;
          }

LABEL_18:
          v40 = sub_1AAF8E794();
          sub_1AAF8E784();
          if (sub_1AAF8E784() == v40)
          {
            v41 = v60;
            sub_1AADFC510(v60);
            v42 = v64;
            (*(v64 + 104))(v14, *MEMORY[0x1E697FF38], v3);
            (*(v42 + 56))(v14, 0, 1, v3);
            v43 = *(v6 + 48);
            v44 = v63;
            sub_1AAE04E7C(v41, v63, sub_1AACCB9E0);
            sub_1AAE04E7C(v14, v44 + v43, sub_1AACCB9E0);
            v45 = *(v42 + 48);
            if (v45(v44, 1, v3) == 1)
            {
              sub_1AACDCF10(v14, sub_1AACCB9E0);
              sub_1AACDCF10(v41, sub_1AACCB9E0);
              if (v45(v44 + v43, 1, v3) == 1)
              {
                v32 = v44;
                goto LABEL_22;
              }

              goto LABEL_25;
            }

            v46 = v59;
            sub_1AAE04E7C(v44, v59, sub_1AACCB9E0);
            if (v45(v44 + v43, 1, v3) == 1)
            {
              sub_1AACDCF10(v14, sub_1AACCB9E0);
              sub_1AACDCF10(v41, sub_1AACCB9E0);
              (*(v64 + 8))(v46, v3);
LABEL_25:
              sub_1AACDCF10(v44, sub_1AAE048D4);
              goto LABEL_26;
            }

            v52 = v64;
            v53 = v62;
            (*(v64 + 32))(v62, v44 + v43, v3);
            sub_1AAE04858(&qword_1EB424E90, MEMORY[0x1E697FF50]);
            v54 = sub_1AAF8F5F4();
            v55 = *(v52 + 8);
            v55(v53, v3);
            sub_1AACDCF10(v14, sub_1AACCB9E0);
            sub_1AACDCF10(v41, sub_1AACCB9E0);
            v55(v46, v3);
            sub_1AACDCF10(v44, sub_1AACCB9E0);
            if (v54)
            {
              goto LABEL_30;
            }
          }

LABEL_26:
          v47 = v61;
          sub_1AAF8E534();
LABEL_31:
          v56 = sub_1AAF8E544();
          return (*(*(v56 - 8) + 56))(v47, 0, 1, v56);
        }

        sub_1AACDCF10(v21, sub_1AACCB9E0);
        sub_1AACDCF10(v26, sub_1AACCB9E0);
        (*(v64 + 8))(v18, v3);
      }

      sub_1AACDCF10(v10, sub_1AAE048D4);
      goto LABEL_18;
    }

    sub_1AAF8E524();
  }

  v33 = sub_1AAF8E544();
  v34 = *(*(v33 - 8) + 56);
  v35 = v33;
  v36 = a1;
  v37 = 0;
LABEL_12:

  return v34(v36, v37, 1, v35);
}

uint64_t sub_1AADFD0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v27 = a2;
  sub_1AAE05240(0, &qword_1EB424E60, MEMORY[0x1E697F948]);
  v26 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - v3;
  sub_1AAE04710();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE048A0(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AAF8E544();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADFC7AC(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1AACDCF10(v12, sub_1AAE048A0);
    sub_1AAE047C4();
    v18 = v17;
    (*(*(v17 - 8) + 16))(v4, v25, v17);
    swift_storeEnumTagMultiPayload();
    v19 = sub_1AAE04858(&qword_1EB424E78, sub_1AAE047C4);
    v28 = v18;
    v29 = v19;
    swift_getOpaqueTypeConformance2();
    return sub_1AAF8E374();
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_1AAE047C4();
    v22 = v21;
    v23 = sub_1AAE04858(&qword_1EB424E78, sub_1AAE047C4);
    sub_1AAF8EB54();
    (*(v7 + 16))(v4, v9, v6);
    swift_storeEnumTagMultiPayload();
    v28 = v22;
    v29 = v23;
    swift_getOpaqueTypeConformance2();
    sub_1AAF8E374();
    (*(v7 + 8))(v9, v6);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_1AADFD528(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  sub_1AACCCCDC(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ChartModel.Scenegraph();
  v6 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ChartProxy();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AAF8E704();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ChartScrollTargetBehaviorContext(0);
  v16 = MEMORY[0x1EEE9AC00](v24);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a2, v12, v16);
  swift_getKeyPath();
  sub_1AAF8E6D4();
  v19 = v23;

  v20 = *(v6 + 48);
  if ((v20)(v5, 1, v19) == 1)
  {
    v21 = sub_1AAE27BB0(v8);
    if (v20(v5, 1, v19, v21) != 1)
    {
      sub_1AACDCF10(v5, sub_1AACCCCDC);
    }
  }

  else
  {
    sub_1AAE050A8(v5, v8, type metadata accessor for ChartModel.Scenegraph);
  }

  sub_1AAE050A8(v8, v11, type metadata accessor for ChartModel.Scenegraph);
  (*(v13 + 32))(v18, v15, v12);
  sub_1AAE050A8(v11, &v18[*(v24 + 20)], type metadata accessor for ChartProxy);
  ValueAlignedChartScrollTargetBehavior.updateTarget(_:context:)(v25, v18);
  return sub_1AACDCF10(v18, type metadata accessor for ChartScrollTargetBehaviorContext);
}

uint64_t sub_1AADFD894(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  sub_1AACCCCDC(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ChartModel.Scenegraph();
  v6 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ChartProxy();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AAF8E704();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ChartScrollTargetBehaviorContext(0);
  v16 = MEMORY[0x1EEE9AC00](v26);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a2, v12, v16);
  swift_getKeyPath();
  sub_1AAF8E6D4();
  v19 = v25;

  v20 = *(v6 + 48);
  if ((v20)(v5, 1, v19) == 1)
  {
    v21 = sub_1AAE27BB0(v8);
    if (v20(v5, 1, v19, v21) != 1)
    {
      sub_1AACDCF10(v5, sub_1AACCCCDC);
    }
  }

  else
  {
    sub_1AAE050A8(v5, v8, type metadata accessor for ChartModel.Scenegraph);
  }

  sub_1AAE050A8(v8, v11, type metadata accessor for ChartModel.Scenegraph);
  (*(v13 + 32))(v18, v15, v12);
  sub_1AAE050A8(v11, &v18[*(v26 + 20)], type metadata accessor for ChartProxy);
  v22 = v27[3];
  v23 = v27[4];
  sub_1AACBB42C(v27, v22);
  (*(v23 + 16))(v28, v18, v22, v23);
  return sub_1AACDCF10(v18, type metadata accessor for ChartScrollTargetBehaviorContext);
}

uint64_t ChartScrollTargetBehavior.updateTarget(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v27 = a1;
  v28 = a3;
  sub_1AACCCCDC(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChartModel.Scenegraph();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ChartProxy();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v26 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AAF8E704();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ChartScrollTargetBehaviorContext(0);
  v18 = MEMORY[0x1EEE9AC00](v25);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a2, v14, v18);
  swift_getKeyPath();
  sub_1AAF8E6D4();

  v21 = *(v9 + 48);
  if ((v21)(v7, 1, v8) == 1)
  {
    v22 = sub_1AAE27BB0(v11);
    if (v21(v7, 1, v8, v22) != 1)
    {
      sub_1AACDCF10(v7, sub_1AACCCCDC);
    }
  }

  else
  {
    sub_1AAE050A8(v7, v11, type metadata accessor for ChartModel.Scenegraph);
  }

  v23 = v26;
  sub_1AAE050A8(v11, v26, type metadata accessor for ChartModel.Scenegraph);
  (*(v15 + 32))(v20, v17, v14);
  sub_1AAE050A8(v23, &v20[*(v25 + 20)], type metadata accessor for ChartProxy);
  (*(v29 + 16))(v27, v20, v28);
  return sub_1AACDCF10(v20, type metadata accessor for ChartScrollTargetBehaviorContext);
}

uint64_t sub_1AADFDFF4(uint64_t a1)
{
  sub_1AACCCCDC(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1AAE04E7C(a1, &v9 - v6, sub_1AACCCCDC);
  sub_1AAE04E7C(v7, v4, sub_1AACCCCDC);
  sub_1AAE04EE4();
  sub_1AAF8E154();
  return sub_1AACDCF10(v7, sub_1AACCCCDC);
}

uint64_t static ChartScrollTargetBehavior.valueAligned<A>(unit:majorAlignment:limitBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v23 = a6;
  type metadata accessor for MajorValueAlignment();
  v13 = sub_1AAF8FE74();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a3) = *a3;
  (*(v21 + 16))(v20, a1, a4, v18);
  (*(v14 + 16))(v16, a2, v13);
  v24 = a3;
  return ValueAlignedChartScrollTargetBehavior.init<A>(unit:majorAlignment:limitBehavior:)(v20, v16, &v24, a4, a5, a7);
}

uint64_t ValueAlignedChartScrollTargetBehavior.init<A>(unit:majorAlignment:limitBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = type metadata accessor for MajorValueAlignmentStorage(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  v18 = *a3;
  sub_1AAE00B14(a1, a4, a5, a6);
  (*(*(a4 - 8) + 8))(a1, a4);
  v19 = type metadata accessor for ValueAlignedChartScrollTargetBehavior(0);
  sub_1AAE04E7C(a6, a6 + v19[5], type metadata accessor for ValueAlignment);
  v20 = type metadata accessor for MajorValueAlignment();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(a2, 1, v20) == 1)
  {
    v22 = sub_1AAF8FE74();
    (*(*(v22 - 8) + 8))(a2, v22);
    v23 = type metadata accessor for ValueAlignment(0);
    (*(*(v23 - 8) + 56))(v17, 2, 2, v23);
  }

  else
  {
    sub_1AAE04E7C(a2, v14, type metadata accessor for MajorValueAlignmentStorage);
    (*(v21 + 8))(a2, v20);
    sub_1AAE050A8(v14, v17, type metadata accessor for MajorValueAlignmentStorage);
  }

  v24 = v19[6];
  sub_1AAE050A8(v17, a6 + v24, type metadata accessor for MajorValueAlignmentStorage);
  result = sub_1AAE04E7C(a6 + v24, a6 + v19[7], type metadata accessor for MajorValueAlignmentStorage);
  *(a6 + v19[8]) = v18;
  return result;
}

uint64_t static ChartScrollTargetBehavior.valueAligned<>(matching:majorAlignment:limitBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MajorValueAlignmentStorage(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  sub_1AAE03A08();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1AAF8C774();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a3;
  (*(v18 + 16))(v21, a1, v17, v19);
  sub_1AAE04E7C(a2, v16, sub_1AAE03A08);
  (*(v18 + 32))(a4, v21, v17);
  v23 = type metadata accessor for ValueAlignment(0);
  swift_storeEnumTagMultiPayload();
  v24 = type metadata accessor for ValueAlignedChartScrollTargetBehavior(0);
  sub_1AAE04E7C(a4, a4 + v24[5], type metadata accessor for ValueAlignment);
  sub_1AAE04E10(0, &qword_1EB424D70, MEMORY[0x1E6969530], &protocol witness table for Date, type metadata accessor for MajorValueAlignment);
  if ((*(*(v25 - 8) + 48))(v16, 1, v25) == 1)
  {
    sub_1AACDCF10(v16, sub_1AAE03A08);
    (*(*(v23 - 8) + 56))(v13, 2, 2, v23);
  }

  else
  {
    sub_1AAE04E7C(v16, v10, type metadata accessor for MajorValueAlignmentStorage);
    sub_1AAE03A98(v16);
    sub_1AAE050A8(v10, v13, type metadata accessor for MajorValueAlignmentStorage);
  }

  v26 = v24[6];
  sub_1AAE050A8(v13, a4 + v26, type metadata accessor for MajorValueAlignmentStorage);
  result = sub_1AAE04E7C(a4 + v26, a4 + v24[7], type metadata accessor for MajorValueAlignmentStorage);
  *(a4 + v24[8]) = v22;
  return result;
}

uint64_t ValueAlignedChartScrollTargetBehavior.init(matching:majorAlignment:limitBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MajorValueAlignmentStorage(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = *a3;
  v15 = sub_1AAF8C774();
  (*(*(v15 - 8) + 32))(a4, a1, v15);
  v16 = type metadata accessor for ValueAlignment(0);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for ValueAlignedChartScrollTargetBehavior(0);
  sub_1AAE04E7C(a4, a4 + v17[5], type metadata accessor for ValueAlignment);
  sub_1AAE04E10(0, &qword_1EB424D70, MEMORY[0x1E6969530], &protocol witness table for Date, type metadata accessor for MajorValueAlignment);
  if ((*(*(v18 - 8) + 48))(a2, 1, v18) == 1)
  {
    sub_1AACDCF10(a2, sub_1AAE03A08);
    (*(*(v16 - 8) + 56))(v13, 2, 2, v16);
  }

  else
  {
    sub_1AAE04E7C(a2, v10, type metadata accessor for MajorValueAlignmentStorage);
    sub_1AAE03A98(a2);
    sub_1AAE050A8(v10, v13, type metadata accessor for MajorValueAlignmentStorage);
  }

  v19 = v17[6];
  sub_1AAE050A8(v13, a4 + v19, type metadata accessor for MajorValueAlignmentStorage);
  result = sub_1AAE04E7C(a4 + v19, a4 + v17[7], type metadata accessor for MajorValueAlignmentStorage);
  *(a4 + v17[8]) = v14;
  return result;
}

uint64_t static ChartScrollTargetBehavior.valueAligned<A, B>(xUnit:yUnit:xMajorAlignment:yMajorAlignment:limitBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v37 = a8;
  v38 = a2;
  v34 = a5;
  v35 = a1;
  v39 = a3;
  v40 = a4;
  v44 = a9;
  v41 = a12;
  v42 = a11;
  v43 = a10;
  type metadata accessor for MajorValueAlignment();
  v36 = sub_1AAF8FE74();
  v14 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v33 = &v32 - v15;
  type metadata accessor for MajorValueAlignment();
  v16 = sub_1AAF8FE74();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v32 - v18;
  v20 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v32 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *v34;
  (*(v29 + 16))(v27, v35, a6, v25);
  (*(v20 + 16))(v23, v38, a7);
  (*(v17 + 16))(v19, v39, v16);
  v30 = v33;
  (*(v14 + 16))(v33, v40, v36);
  v45 = v28;
  return ValueAlignedChartScrollTargetBehavior.init<A, B>(xUnit:yUnit:xMajorAlignment:yMajorAlignment:limitBehavior:)(v27, v23, v19, v30, &v45, a6, a7, v37, v44, v43, v42);
}

uint64_t ValueAlignedChartScrollTargetBehavior.init<A, B>(xUnit:yUnit:xMajorAlignment:yMajorAlignment:limitBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v49 = a4;
  v46 = a3;
  v18 = type metadata accessor for MajorValueAlignmentStorage(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v45 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v51 = &v44 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v44 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v44 - v26;
  v50 = *a5;
  sub_1AAE00B14(a1, a6, a8, a9);
  v28 = type metadata accessor for ValueAlignedChartScrollTargetBehavior(0);
  v29 = v28[5];
  v47 = a9;
  v48 = a11;
  v30 = v46;
  sub_1AAE00B14(a2, a7, a11, (a9 + v29));
  (*(*(a7 - 8) + 8))(a2, a7);
  (*(*(a6 - 8) + 8))(a1, a6);
  v31 = type metadata accessor for MajorValueAlignment();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    v33 = sub_1AAF8FE74();
    (*(*(v33 - 8) + 8))(v30, v33);
    v34 = type metadata accessor for ValueAlignment(0);
    (*(*(v34 - 8) + 56))(v27, 2, 2, v34);
  }

  else
  {
    sub_1AAE04E7C(v30, v24, type metadata accessor for MajorValueAlignmentStorage);
    (*(v32 + 8))(v30, v31);
    sub_1AAE050A8(v24, v27, type metadata accessor for MajorValueAlignmentStorage);
  }

  v35 = v47;
  sub_1AAE050A8(v27, v47 + v28[6], type metadata accessor for MajorValueAlignmentStorage);
  v36 = type metadata accessor for MajorValueAlignment();
  v37 = *(v36 - 8);
  v38 = v49;
  if ((*(v37 + 48))(v49, 1, v36) == 1)
  {
    v39 = sub_1AAF8FE74();
    (*(*(v39 - 8) + 8))(v38, v39);
    v40 = type metadata accessor for ValueAlignment(0);
    v41 = v51;
    (*(*(v40 - 8) + 56))(v51, 2, 2, v40);
  }

  else
  {
    v42 = v45;
    sub_1AAE04E7C(v38, v45, type metadata accessor for MajorValueAlignmentStorage);
    (*(v37 + 8))(v38, v36);
    v41 = v51;
    sub_1AAE050A8(v42, v51, type metadata accessor for MajorValueAlignmentStorage);
  }

  result = sub_1AAE050A8(v41, v35 + v28[7], type metadata accessor for MajorValueAlignmentStorage);
  *(v35 + v28[8]) = v50;
  return result;
}

uint64_t static ChartScrollTargetBehavior.valueAligned<>(xMatching:yMatching:xMajorAlignment:yMajorAlignment:limitBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  v48 = a2;
  v49 = a3;
  v47 = a1;
  v9 = type metadata accessor for MajorValueAlignmentStorage(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v45 - v16;
  sub_1AAE03A08();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  v23 = sub_1AAF8C774();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v45 - v29;
  v51 = *a5;
  v31 = *(v24 + 16);
  v31(&v45 - v29, v47, v23, v28);
  (v31)(v26, v48, v23);
  sub_1AAE04E7C(v49, v22, sub_1AAE03A08);
  sub_1AAE04E7C(a4, v19, sub_1AAE03A08);
  v32 = *(v24 + 32);
  v32(a6, v30, v23);
  v33 = type metadata accessor for ValueAlignment(0);
  swift_storeEnumTagMultiPayload();
  v34 = type metadata accessor for ValueAlignedChartScrollTargetBehavior(0);
  v32(a6 + v34[5], v26, v23);
  swift_storeEnumTagMultiPayload();
  sub_1AAE04E10(0, &qword_1EB424D70, MEMORY[0x1E6969530], &protocol witness table for Date, type metadata accessor for MajorValueAlignment);
  v36 = v35;
  v37 = *(*(v35 - 8) + 48);
  if (v37(v22, 1, v35) == 1)
  {
    sub_1AACDCF10(v22, sub_1AAE03A08);
    v38 = v50;
    (*(*(v33 - 8) + 56))(v50, 2, 2, v33);
  }

  else
  {
    v39 = v45;
    sub_1AAE04E7C(v22, v45, type metadata accessor for MajorValueAlignmentStorage);
    sub_1AAE03A98(v22);
    v40 = v39;
    v38 = v50;
    sub_1AAE050A8(v40, v50, type metadata accessor for MajorValueAlignmentStorage);
  }

  sub_1AAE050A8(v38, a6 + v34[6], type metadata accessor for MajorValueAlignmentStorage);
  if (v37(v19, 1, v36) == 1)
  {
    sub_1AACDCF10(v19, sub_1AAE03A08);
    v41 = v52;
    (*(*(v33 - 8) + 56))(v52, 2, 2, v33);
  }

  else
  {
    v42 = v46;
    sub_1AAE04E7C(v19, v46, type metadata accessor for MajorValueAlignmentStorage);
    sub_1AAE03A98(v19);
    v43 = v42;
    v41 = v52;
    sub_1AAE050A8(v43, v52, type metadata accessor for MajorValueAlignmentStorage);
  }

  result = sub_1AAE050A8(v41, a6 + v34[7], type metadata accessor for MajorValueAlignmentStorage);
  *(a6 + v34[8]) = v51;
  return result;
}

uint64_t ValueAlignedChartScrollTargetBehavior.init(xMatching:yMatching:xMajorAlignment:yMajorAlignment:limitBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a4;
  v34 = a2;
  v10 = type metadata accessor for MajorValueAlignmentStorage(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v32 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v35 = *a5;
  v20 = sub_1AAF8C774();
  v21 = *(*(v20 - 8) + 32);
  v21(a6, a1, v20);
  v22 = type metadata accessor for ValueAlignment(0);
  swift_storeEnumTagMultiPayload();
  v23 = type metadata accessor for ValueAlignedChartScrollTargetBehavior(0);
  v21(a6 + v23[5], v34, v20);
  swift_storeEnumTagMultiPayload();
  sub_1AAE04E10(0, &qword_1EB424D70, MEMORY[0x1E6969530], &protocol witness table for Date, type metadata accessor for MajorValueAlignment);
  v25 = v24;
  v26 = *(*(v24 - 8) + 48);
  if (v26(a3, 1, v24) == 1)
  {
    sub_1AACDCF10(a3, sub_1AAE03A08);
    (*(*(v22 - 8) + 56))(v19, 2, 2, v22);
  }

  else
  {
    sub_1AAE04E7C(a3, v16, type metadata accessor for MajorValueAlignmentStorage);
    sub_1AAE03A98(a3);
    sub_1AAE050A8(v16, v19, type metadata accessor for MajorValueAlignmentStorage);
  }

  sub_1AAE050A8(v19, a6 + v23[6], type metadata accessor for MajorValueAlignmentStorage);
  v27 = v36;
  v28 = v26(v36, 1, v25);
  v29 = v37;
  if (v28 == 1)
  {
    sub_1AACDCF10(v27, sub_1AAE03A08);
    (*(*(v22 - 8) + 56))(v29, 2, 2, v22);
  }

  else
  {
    v30 = v33;
    sub_1AAE04E7C(v27, v33, type metadata accessor for MajorValueAlignmentStorage);
    sub_1AAE03A98(v27);
    sub_1AAE050A8(v30, v29, type metadata accessor for MajorValueAlignmentStorage);
  }

  result = sub_1AAE050A8(v29, a6 + v23[7], type metadata accessor for MajorValueAlignmentStorage);
  *(a6 + v23[8]) = v35;
  return result;
}

uint64_t static ChartScrollTargetBehavior.valueAligned<A>(xMatching:yUnit:xMajorAlignment:yMajorAlignment:limitBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v34 = a9;
  v35 = a8;
  v32 = a3;
  v33 = a4;
  v30 = a1;
  v31 = a2;
  type metadata accessor for MajorValueAlignment();
  v12 = sub_1AAF8FE74();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  sub_1AAE03A08();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1AAF8C774();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a5) = *a5;
  (*(v27 + 16))(v26, v30, v24);
  (*(v19 + 16))(v22, v31, a6);
  sub_1AAE04E7C(v32, v18, sub_1AAE03A08);
  (*(v13 + 16))(v15, v33, v12);
  v36 = a5;
  return ValueAlignedChartScrollTargetBehavior.init<A>(xMatching:yUnit:xMajorAlignment:yMajorAlignment:limitBehavior:)(v26, v22, v18, v15, &v36, a6, a7, v34);
}

uint64_t ValueAlignedChartScrollTargetBehavior.init<A>(xMatching:yUnit:xMajorAlignment:yMajorAlignment:limitBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a4;
  v43 = a3;
  v14 = type metadata accessor for MajorValueAlignmentStorage(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v42 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v47 = &v40 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v41 = &v40 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  v45 = *a5;
  v23 = sub_1AAF8C774();
  v24 = *(v23 - 8);
  (*(v24 + 16))(a8, a1, v23);
  v25 = type metadata accessor for ValueAlignment(0);
  swift_storeEnumTagMultiPayload();
  v26 = type metadata accessor for ValueAlignedChartScrollTargetBehavior(0);
  v27 = (a8 + v26[5]);
  v44 = a7;
  sub_1AAE00B14(a2, a6, a7, v27);
  (*(*(a6 - 8) + 8))(a2, a6);
  v28 = v23;
  v29 = v43;
  (*(v24 + 8))(a1, v28);
  sub_1AAE04E10(0, &qword_1EB424D70, MEMORY[0x1E6969530], &protocol witness table for Date, type metadata accessor for MajorValueAlignment);
  if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
  {
    sub_1AACDCF10(v29, sub_1AAE03A08);
    (*(*(v25 - 8) + 56))(v22, 2, 2, v25);
  }

  else
  {
    v31 = v41;
    sub_1AAE04E7C(v29, v41, type metadata accessor for MajorValueAlignmentStorage);
    sub_1AAE03A98(v29);
    sub_1AAE050A8(v31, v22, type metadata accessor for MajorValueAlignmentStorage);
  }

  v32 = v25;
  sub_1AAE050A8(v22, a8 + v26[6], type metadata accessor for MajorValueAlignmentStorage);
  v33 = type metadata accessor for MajorValueAlignment();
  v34 = *(v33 - 8);
  v35 = v46;
  if ((*(v34 + 48))(v46, 1, v33) == 1)
  {
    v36 = sub_1AAF8FE74();
    (*(*(v36 - 8) + 8))(v35, v36);
    v37 = v47;
    (*(*(v32 - 8) + 56))(v47, 2, 2, v32);
  }

  else
  {
    v38 = v42;
    sub_1AAE04E7C(v35, v42, type metadata accessor for MajorValueAlignmentStorage);
    (*(v34 + 8))(v35, v33);
    v37 = v47;
    sub_1AAE050A8(v38, v47, type metadata accessor for MajorValueAlignmentStorage);
  }

  result = sub_1AAE050A8(v37, a8 + v26[7], type metadata accessor for MajorValueAlignmentStorage);
  *(a8 + v26[8]) = v45;
  return result;
}

uint64_t static ChartScrollTargetBehavior.valueAligned<A>(xUnit:yMatching:xMajorAlignment:yMajorAlignment:limitBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v33 = a9;
  v34 = a8;
  v30 = a7;
  v31 = a3;
  v32 = a4;
  v28 = a1;
  v29 = a2;
  sub_1AAE03A08();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MajorValueAlignment();
  v14 = sub_1AAF8FE74();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - v16;
  v18 = sub_1AAF8C774();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a5) = *a5;
  (*(v26 + 16))(v25, v28, a6, v23);
  (*(v19 + 16))(v21, v29, v18);
  (*(v15 + 16))(v17, v31, v14);
  sub_1AAE04E7C(v32, v13, sub_1AAE03A08);
  v35 = a5;
  return ValueAlignedChartScrollTargetBehavior.init<A>(xUnit:yMatching:xMajorAlignment:yMajorAlignment:limitBehavior:)(v25, v21, v17, v13, &v35, a6, v30, v33);
}

uint64_t ValueAlignedChartScrollTargetBehavior.init<A>(xUnit:yMatching:xMajorAlignment:yMajorAlignment:limitBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v40 = a4;
  v15 = type metadata accessor for MajorValueAlignmentStorage(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v38 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v37 - v24;
  v39 = *a5;
  sub_1AAE00B14(a1, a6, a7, a8);
  (*(*(a6 - 8) + 8))(a1, a6);
  v26 = type metadata accessor for ValueAlignedChartScrollTargetBehavior(0);
  v27 = v26[5];
  v28 = sub_1AAF8C774();
  (*(*(v28 - 8) + 32))(a8 + v27, a2, v28);
  v29 = type metadata accessor for ValueAlignment(0);
  swift_storeEnumTagMultiPayload();
  v30 = type metadata accessor for MajorValueAlignment();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(a3, 1, v30) == 1)
  {
    v32 = sub_1AAF8FE74();
    (*(*(v32 - 8) + 8))(a3, v32);
    (*(*(v29 - 8) + 56))(v25, 2, 2, v29);
  }

  else
  {
    sub_1AAE04E7C(a3, v22, type metadata accessor for MajorValueAlignmentStorage);
    (*(v31 + 8))(a3, v30);
    sub_1AAE050A8(v22, v25, type metadata accessor for MajorValueAlignmentStorage);
  }

  sub_1AAE050A8(v25, a8 + v26[6], type metadata accessor for MajorValueAlignmentStorage);
  sub_1AAE04E10(0, &qword_1EB424D70, MEMORY[0x1E6969530], &protocol witness table for Date, type metadata accessor for MajorValueAlignment);
  v34 = v40;
  if ((*(*(v33 - 8) + 48))(v40, 1, v33) == 1)
  {
    sub_1AACDCF10(v34, sub_1AAE03A08);
    (*(*(v29 - 8) + 56))(v19, 2, 2, v29);
  }

  else
  {
    v35 = v38;
    sub_1AAE04E7C(v34, v38, type metadata accessor for MajorValueAlignmentStorage);
    sub_1AAE03A98(v34);
    sub_1AAE050A8(v35, v19, type metadata accessor for MajorValueAlignmentStorage);
  }

  result = sub_1AAE050A8(v19, a8 + v26[7], type metadata accessor for MajorValueAlignmentStorage);
  *(a8 + v26[8]) = v39;
  return result;
}

uint64_t sub_1AAE00B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = sub_1AACD78AC(a1, a2, a3);
  if (v7)
  {
    if (v7 != 1)
    {
      sub_1AACCA728(v5, v6, 2);
    }

    result = sub_1AAF902C4();
    __break(1u);
  }

  else
  {
    *a4 = v5;
    type metadata accessor for ValueAlignment(0);

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1AAE00BCC(uint64_t a1, double a2)
{
  v118 = a1;
  v123 = sub_1AAF8CB24();
  v117 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v116 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1AAF8CB14();
  v126 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1AAF8CAE4();
  v128 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v112 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE04DDC(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v110 = &v92 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v111 = &v92 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v108 = &v92 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v113 = &v92 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v92 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v92 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v127 = &v92 - v24;
  v25 = sub_1AAF8CA64();
  v120 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v109 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v106 = &v92 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v107 = &v92 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v92 - v32;
  v34 = sub_1AAF8C774();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v92 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ValueAlignment(0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = (&v92 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AAE04E7C(v122, v40, type metadata accessor for ValueAlignment);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    *&result = *v40 * round(a2 / *v40);
    return result;
  }

  v104 = v19;
  v122 = v8;
  v102 = v35;
  v41 = *(v35 + 32);
  v124 = v37;
  v103 = v34;
  v41(v37, v40, v34);
  v119 = v33;
  sub_1AAF8C844();
  v101 = *MEMORY[0x1E69698D0];
  v42 = *(v128 + 13);
  v99 = v128 + 104;
  v100 = v42;
  v43 = v112;
  v42(v112);
  v44 = *MEMORY[0x1E6969998];
  v105 = v25;
  v45 = v126;
  v46 = *(v126 + 104);
  v95 = v126 + 104;
  v98 = v46;
  v47 = v114;
  v48 = v115;
  v46(v114, v44, v115);
  v97 = *MEMORY[0x1E69699C8];
  v121 = v22;
  v49 = v117;
  v96 = *(v117 + 104);
  v50 = v116;
  v51 = v123;
  v96(v116);
  sub_1AAF8CB74();
  v117 = *(v49 + 8);
  (v117)(v50, v51);
  v52 = *(v45 + 8);
  v126 = v45 + 8;
  v94 = v52;
  v52(v47, v48);
  v53 = *(v128 + 1);
  v128 = (v128 + 8);
  v93 = v53;
  v54 = v43;
  v55 = v43;
  v56 = v125;
  v53(v55, v125);
  v100(v54, v101, v56);
  v98(v47, *MEMORY[0x1E69699A0], v48);
  v57 = v105;
  v58 = v123;
  (v96)(v50, v97, v123);
  v59 = v121;
  sub_1AAF8CB74();
  (v117)(v50, v58);
  v94(v47, v48);
  v60 = v120;
  v61 = v54;
  v62 = v57;
  v93(v61, v125);
  v63 = v113;
  sub_1AAE04E7C(v127, v113, sub_1AAE04DDC);
  v64 = *(v60 + 48);
  v65 = v64(v63, 1, v57);
  v128 = v64;
  if (v65 == 1)
  {
    goto LABEL_5;
  }

  v66 = v107;
  v126 = *(v60 + 32);
  (v126)(v107, v63, v57);
  v63 = v108;
  sub_1AAE04E7C(v59, v108, sub_1AAE04DDC);
  if (v64(v63, 1, v57) == 1)
  {
    (*(v60 + 8))(v66, v57);
LABEL_5:
    v67 = v122;
    sub_1AACDCF10(v63, sub_1AAE04DDC);
    v68 = v127;
    v69 = v110;
    sub_1AAE04E7C(v127, v110, sub_1AAE04DDC);
    v70 = v128;
    v71 = v128(v69, 1, v62);
    v72 = v104;
    v73 = v124;
    v74 = v111;
    if (v71 == 1)
    {
      sub_1AAE04E7C(v121, v111, sub_1AAE04DDC);
      if (v70(v69, 1, v62) != 1)
      {
        sub_1AACDCF10(v69, sub_1AAE04DDC);
      }
    }

    else
    {
      (*(v60 + 32))(v111, v69, v62);
      (*(v60 + 56))(v74, 0, 1, v62);
    }

    sub_1AAE050A8(v74, v72, sub_1AAE04DDC);
    v76 = v73;
    v77 = v121;
    goto LABEL_18;
  }

  v78 = v59;
  v79 = v106;
  v80 = v57;
  v81 = v126;
  (v126)(v106, v63, v57);
  sub_1AAF8CA34();
  v83 = fabs(v82);
  sub_1AAF8CA34();
  v85 = fabs(v84);
  if (v83 >= v85)
  {
    v86 = v66;
  }

  else
  {
    v86 = v79;
  }

  if (v83 >= v85)
  {
    v87 = v79;
  }

  else
  {
    v87 = v66;
  }

  v77 = v78;
  (*(v60 + 8))(v86, v57);
  v72 = v104;
  v81(v104, v87, v57);
  (*(v60 + 56))(v72, 0, 1, v57);
  v67 = v122;
  v76 = v124;
  v70 = v128;
  v62 = v80;
  v68 = v127;
LABEL_18:
  sub_1AAE04E7C(v72, v67, sub_1AAE04DDC);
  if (v70(v67, 1, v62) == 1)
  {
    sub_1AACDCF10(v72, sub_1AAE04DDC);
    sub_1AACDCF10(v77, sub_1AAE04DDC);
    sub_1AACDCF10(v68, sub_1AAE04DDC);
    (*(v60 + 8))(v119, v62);
    (*(v102 + 8))(v76, v103);
    sub_1AACDCF10(v67, sub_1AAE04DDC);
    *&result = 0.0;
  }

  else
  {
    v88 = v109;
    (*(v60 + 32))(v109, v67, v62);
    sub_1AAF8C854();
    v90 = v89;
    v91 = *(v60 + 8);
    v91(v88, v62);
    sub_1AACDCF10(v72, sub_1AAE04DDC);
    sub_1AACDCF10(v77, sub_1AAE04DDC);
    sub_1AACDCF10(v68, sub_1AAE04DDC);
    v91(v119, v62);
    (*(v102 + 8))(v76, v103);
    return v90;
  }

  return result;
}

uint64_t sub_1AAE01838(char a1, uint64_t a2, double a3)
{
  v50 = a2;
  v49 = sub_1AAF8CB24();
  v5 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AAF8CB14();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AAF8CAE4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE04DDC(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v46 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v43 - v18;
  v19 = sub_1AAF8CA64();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v44 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v52 = &v43 - v22;
  v23 = sub_1AAF8C774();
  v53 = *(v23 - 8);
  v54 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v56 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ValueAlignment(0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AAE04E7C(v51, v27, type metadata accessor for ValueAlignment);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v53 + 32))(v56, v27, v54);
    sub_1AAF8C844();
    v28 = *MEMORY[0x1E69698D0];
    v29 = *(v12 + 104);
    v43 = v11;
    v29(v14, v28, v11);
    v30 = MEMORY[0x1E6969998];
    if (a1)
    {
      v30 = MEMORY[0x1E69699A0];
    }

    (*(v8 + 104))(v10, *v30, v7);
    v31 = v45;
    v32 = v49;
    (*(v5 + 104))(v45, *MEMORY[0x1E69699C8], v49);
    v33 = v55;
    sub_1AAF8CB74();
    (*(v5 + 8))(v31, v32);
    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v14, v43);
    v34 = v33;
    v35 = v46;
    sub_1AAE04E7C(v34, v46, sub_1AAE04DDC);
    v37 = v47;
    v36 = v48;
    if ((*(v47 + 48))(v35, 1, v48) == 1)
    {
      sub_1AACDCF10(v55, sub_1AAE04DDC);
      (*(v37 + 8))(v52, v36);
      (*(v53 + 8))(v56, v54);
      *&result = 0.0;
    }

    else
    {
      v39 = v44;
      (*(v37 + 32))(v44, v35, v36);
      sub_1AAF8C854();
      v41 = v40;
      v42 = *(v37 + 8);
      v42(v39, v36);
      sub_1AACDCF10(v55, sub_1AAE04DDC);
      v42(v52, v36);
      (*(v53 + 8))(v56, v54);
      return v41;
    }
  }

  else if (a1)
  {
    *&result = a3 - *v27;
  }

  else
  {
    *&result = *v27 + a3;
  }

  return result;
}

uint64_t static MajorValueAlignment.unit<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MajorValueAlignmentStorage(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AAE00B14(a1, a2, a3, v10);
  v11 = type metadata accessor for ValueAlignment(0);
  (*(*(v11 - 8) + 56))(v10, 0, 2, v11);
  return sub_1AAE050A8(v10, a4, type metadata accessor for MajorValueAlignmentStorage);
}

uint64_t static MajorValueAlignment.matching<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AAF8C774();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = type metadata accessor for ValueAlignment(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 2, v5);
}

uint64_t static MajorValueAlignment.page.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MajorValueAlignmentStorage(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ValueAlignment(0);
  (*(*(v5 - 8) + 56))(v4, 1, 2, v5);
  return sub_1AAE050A8(v4, a1, type metadata accessor for MajorValueAlignmentStorage);
}

uint64_t ValueAlignedChartScrollTargetBehavior.updateTarget(_:context:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AAF8CBA4();
  v144 = *(v4 - 8);
  v145 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v143 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for ValueAlignment(0);
  v146 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v140 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v133 - v8;
  v10 = type metadata accessor for MajorValueAlignmentStorage(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v137 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v136 = &v133 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v135 = &v133 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v134 = (&v133 - v17);
  sub_1AAE03B2C(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v138 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v139 = (&v133 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v133 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v147 = (&v133 - v26);
  v27 = type metadata accessor for ChartProxy();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v133 - v31;
  v33 = sub_1AAF8D9A4();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v133 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = a1;
  sub_1AAF8D994();
  v38 = v37;
  v40 = v39;
  sub_1AAF8E6B4();
  v42 = v41;
  sub_1AAF8E6C4();
  v44 = v42 - v43;
  if (v38 > 0.0)
  {
    v45 = v38;
  }

  else
  {
    v45 = 0.0;
  }

  if (v44 >= v45)
  {
    v46 = v45;
  }

  else
  {
    v46 = v44;
  }

  sub_1AAF8E6B4();
  v48 = v47;
  sub_1AAF8E6C4();
  v50 = v48 - v49;
  if (v40 > 0.0)
  {
    v51 = v40;
  }

  else
  {
    v51 = 0.0;
  }

  if (v50 >= v51)
  {
    v50 = v51;
  }

  v164 = v46;
  v163 = v50;
  sub_1AAF8E6A4();
  sub_1AAF8D994();
  v53 = v52;
  v55 = v54;
  (*(v34 + 8))(v36, v33);
  sub_1AAF8E6B4();
  v57 = v56;
  sub_1AAF8E6C4();
  v59 = v57 - v58;
  if (v53 > 0.0)
  {
    v60 = v53;
  }

  else
  {
    v60 = 0.0;
  }

  if (v59 >= v60)
  {
    v61 = v60;
  }

  else
  {
    v61 = v59;
  }

  sub_1AAF8E6B4();
  v63 = v62;
  sub_1AAF8E6C4();
  v65 = v63 - v64;
  if (v55 > 0.0)
  {
    v66 = v55;
  }

  else
  {
    v66 = 0.0;
  }

  if (v65 >= v66)
  {
    v67 = v66;
  }

  else
  {
    v67 = v65;
  }

  sub_1AAF8E6F4();
  if (fabs(v68) <= 0.3)
  {
    sub_1AAF8E6F4();
    v69 = fabs(v70) > 0.3;
  }

  else
  {
    v69 = 1;
  }

  v141 = v69;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v133 - 2) = v72;
  swift_getKeyPath();
  swift_getAtKeyPath();

  sub_1AAF8E6E4();
  v73 = sub_1AAF8E774();
  sub_1AAF8E784();
  if (sub_1AAF8E784() == v73)
  {
    v74 = type metadata accessor for ChartScrollTargetBehaviorContext(0);
    sub_1AAE04E7C(a2 + *(v74 + 20), v32, type metadata accessor for ChartProxy);
    sub_1AAD050BC((v32 + 536), v150);
    sub_1AACDCF10(v32, type metadata accessor for ChartModel.Scenegraph);
    v168 = v150[3];
    v169 = v150[4];
    v170[0] = v151[0];
    *(v170 + 9) = *(v151 + 9);
    v165 = v150[0];
    v166 = v150[1];
    v167 = v150[2];
    sub_1AAE04E7C(&v165, v171, sub_1AACCF364);
    sub_1AAD09944(v150);
    if (BYTE8(v170[1]) != 255)
    {
      v171[4] = v169;
      v171[5] = v170[0];
      v172 = *&v170[1];
      v171[0] = v165;
      v171[1] = v166;
      v171[2] = v167;
      v171[3] = v168;
      v173 = BYTE8(v170[1]);
      v133 = v29;
      if (!v141)
      {
        v82 = v9;
        v86 = v146;
        v85 = v147;
        (*(v146 + 56))(v147, 1, 1, v149);
        goto LABEL_40;
      }

      v75 = type metadata accessor for ValueAlignedChartScrollTargetBehavior(0);
      v76 = v134;
      sub_1AAE04E7C(v142 + *(v75 + 24), v134, type metadata accessor for MajorValueAlignmentStorage);
      v77 = *&v159[1];
      v78 = v160;
      v79 = v76;
      v80 = v135;
      sub_1AAE050A8(v79, v135, type metadata accessor for MajorValueAlignmentStorage);
      v134 = *(v146 + 48);
      v81 = (v134)(v80, 2, v149);
      v82 = v9;
      if (v81)
      {
        if (v81 != 1)
        {
          v87 = 1;
          v84 = v147;
LABEL_39:
          v86 = v146;
          v88 = 1;
          v89 = v84;
          v90 = v149;
          (*(v146 + 56))(v89, v87, 1, v149);
          v91 = v90;
          v85 = v147;
          if ((v134)(v147, 1, v91) != 1)
          {
LABEL_41:
            sub_1AAE04E7C(v85, v24, sub_1AAE03B2C);
            v92 = *(v86 + 48);
            v93 = v149;
            if (v92(v24, 1, v149) == 1)
            {
              sub_1AAE04E7C(v142, v82, type metadata accessor for ValueAlignment);
              if (v92(v24, 1, v93) != 1)
              {
                sub_1AACDCF10(v24, sub_1AAE03B2C);
              }
            }

            else
            {
              sub_1AAE050A8(v24, v82, type metadata accessor for ValueAlignment);
            }

            v94 = v143;
            sub_1AAF8CB64();
            sub_1AAE03B60(&v164, v88, v82, v171, v94, v61);
            sub_1AACDCF10(&v165, sub_1AACCF364);
            (*(v144 + 8))(v94, v145);
            sub_1AACDCF10(v82, type metadata accessor for ValueAlignment);
            sub_1AACDCF10(v147, sub_1AAE03B2C);
            v29 = v133;
            goto LABEL_46;
          }

LABEL_40:
          v88 = 0;
          goto LABEL_41;
        }

        v83 = 1.0;
        if (!v78)
        {
          v83 = v77;
        }

        v84 = v147;
        *v147 = v83;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v84 = v147;
        sub_1AAE050A8(v80, v147, type metadata accessor for ValueAlignment);
      }

      v87 = 0;
      goto LABEL_39;
    }
  }

LABEL_46:
  sub_1AAF8E6E4();
  v95 = sub_1AAF8E794();
  sub_1AAF8E784();
  if (sub_1AAF8E784() != v95)
  {
    goto LABEL_65;
  }

  v96 = type metadata accessor for ChartScrollTargetBehaviorContext(0);
  sub_1AAE04E7C(a2 + *(v96 + 20), v29, type metadata accessor for ChartProxy);
  sub_1AAD050BC((v29 + 536), v150);
  sub_1AACDCF10(v29, type metadata accessor for ChartModel.Scenegraph);
  v157 = v151[6];
  v158[0] = v152[0];
  *(v158 + 9) = *(v152 + 9);
  v153 = v151[2];
  v154 = v151[3];
  v155 = v151[4];
  v156 = v151[5];
  sub_1AAE04E7C(&v153, &v165, sub_1AACCF364);
  sub_1AAD09944(v150);
  if (BYTE8(v158[1]) == 255)
  {
    goto LABEL_65;
  }

  v169 = v157;
  v170[0] = v158[0];
  *&v170[1] = *&v158[1];
  v165 = v153;
  v166 = v154;
  v167 = v155;
  v168 = v156;
  BYTE8(v170[1]) = BYTE8(v158[1]);
  if (!v141)
  {
    v102 = v146;
    v106 = v139;
    v104 = v149;
    (*(v146 + 56))(v139, 1, 1, v149);
    v107 = v138;
LABEL_59:
    v110 = 0;
    goto LABEL_60;
  }

  v97 = type metadata accessor for ValueAlignedChartScrollTargetBehavior(0);
  v98 = v136;
  sub_1AAE04E7C(v142 + *(v97 + 28), v136, type metadata accessor for MajorValueAlignmentStorage);
  v99 = v161;
  v100 = v162;
  v101 = v137;
  sub_1AAE050A8(v98, v137, type metadata accessor for MajorValueAlignmentStorage);
  v102 = v146;
  v103 = *(v146 + 48);
  v104 = v149;
  v105 = v103(v101, 2, v149);
  v107 = v138;
  v106 = v139;
  if (!v105)
  {
    sub_1AAE050A8(v101, v139, type metadata accessor for ValueAlignment);
LABEL_56:
    v109 = 0;
    goto LABEL_58;
  }

  if (v105 == 1)
  {
    v108 = 1.0;
    if (!v100)
    {
      v108 = v99;
    }

    *v139 = v108;
    swift_storeEnumTagMultiPayload();
    goto LABEL_56;
  }

  v109 = 1;
LABEL_58:
  v110 = 1;
  (*(v102 + 56))(v106, v109, 1, v104);
  if (v103(v106, 1, v104) == 1)
  {
    goto LABEL_59;
  }

LABEL_60:
  sub_1AAE04E7C(v106, v107, sub_1AAE03B2C);
  v111 = *(v102 + 48);
  v112 = v111(v107, 1, v104);
  v113 = v140;
  if (v112 == 1)
  {
    v114 = type metadata accessor for ValueAlignedChartScrollTargetBehavior(0);
    sub_1AAE04E7C(v142 + *(v114 + 20), v113, type metadata accessor for ValueAlignment);
    if (v111(v107, 1, v104) != 1)
    {
      sub_1AACDCF10(v107, sub_1AAE03B2C);
    }
  }

  else
  {
    sub_1AAE050A8(v107, v140, type metadata accessor for ValueAlignment);
  }

  v115 = v143;
  sub_1AAF8CB64();
  sub_1AAE03B60(&v163, v110, v113, &v165, v115, v67);
  sub_1AACDCF10(&v153, sub_1AACCF364);
  (*(v144 + 8))(v115, v145);
  sub_1AACDCF10(v113, type metadata accessor for ValueAlignment);
  sub_1AACDCF10(v106, sub_1AAE03B2C);
LABEL_65:
  v116 = v164;
  v117 = v163;
  sub_1AAF8E6B4();
  v119 = v118;
  sub_1AAF8E6C4();
  v121 = v119 - v120;
  if (v116 > 0.0)
  {
    v122 = v116;
  }

  else
  {
    v122 = 0.0;
  }

  if (v121 >= v122)
  {
    v123 = v122;
  }

  else
  {
    v123 = v121;
  }

  sub_1AAF8E6B4();
  v125 = v124;
  sub_1AAF8E6C4();
  v127 = v125 - v126;
  if (v117 > 0.0)
  {
    v128 = v117;
  }

  else
  {
    v128 = 0.0;
  }

  if (v127 >= v128)
  {
    v129 = v128;
  }

  else
  {
    v129 = v127;
  }

  v130 = sub_1AAF8D984();
  *v131 = v123;
  v131[1] = v129;
  v130(v150, 0);
  return sub_1AACB2684(v159);
}

uint64_t sub_1AAE02F54(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  sub_1AACBB42C(v2, v5);
  return (*(v6 + 16))(a1, a2, v5, v6);
}

uint64_t sub_1AAE0300C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAE05304();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double sub_1AAE03070()
{
  qword_1ED9C3270 = 0;
  result = 0.0;
  xmmword_1ED9C3250 = 0u;
  unk_1ED9C3260 = 0u;
  word_1ED9C3278 = -256;
  xmmword_1ED9C3280 = 0u;
  unk_1ED9C3290 = 0u;
  qword_1ED9C32A0 = 0;
  word_1ED9C32A8 = -256;
  return result;
}

uint64_t sub_1AAE0309C@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1ED9ADF00 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1AAE04F38(&xmmword_1ED9C3250, v2);
}

uint64_t sub_1AAE0310C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAE052B0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1AAE03170(uint64_t a1, uint64_t a2)
{
  sub_1AAE04AD8(a1, v17);
  sub_1AAE04AD8(a2, &v18);
  if ((v17[41] & 1) == 0)
  {
    sub_1AAE04AD8(v17, &v15);
    if (v20)
    {
      sub_1AACCA728(v15, *(&v15 + 1), v16);
LABEL_7:
      sub_1AACDCF10(v17, sub_1AAE04B64);
LABEL_21:
      v3 = 0;
      return v3 & 1;
    }

    v4 = v18;
    v5 = v19[0];
    if (v16)
    {
      if (v16 != 1)
      {
        if (v19[0] == 2)
        {
          if (v15 == v18)
          {
            v8 = v15;
            sub_1AACCA728(v15, *(&v15 + 1), 2);
            sub_1AACCA728(v8, *(&v8 + 1), 2);
            goto LABEL_24;
          }

          v11 = v15;
          v12 = sub_1AAF904F4();
          sub_1AACCA728(v4, *(&v4 + 1), 2);
          sub_1AACCA728(v11, *(&v11 + 1), 2);
          if (v12)
          {
            goto LABEL_24;
          }

LABEL_20:
          sub_1AAE04AA8(v17);
          goto LABEL_21;
        }

        v9 = v15;
        sub_1AACCA728(v18, *(&v18 + 1), v19[0]);
        v7 = *(&v9 + 1);
        v6 = v9;
        v5 = 2;
LABEL_19:
        sub_1AACCA728(v6, v7, v5);
        goto LABEL_20;
      }

      if (v19[0] == 1)
      {
        goto LABEL_11;
      }
    }

    else if (!v19[0])
    {
LABEL_11:
      if (*&v15 != *&v18)
      {
        goto LABEL_20;
      }

LABEL_24:
      sub_1AAE04AA8(v17);
      v3 = 1;
      return v3 & 1;
    }

    v7 = *(&v18 + 1);
    v6 = v18;
    goto LABEL_19;
  }

  sub_1AAE04AD8(v17, &v15);
  if (v20 != 1)
  {
    sub_1AAE04B10(&v15);
    goto LABEL_7;
  }

  v13 = v18;
  v14[0] = *v19;
  *(v14 + 9) = *&v19[9];
  v3 = sub_1AAE8980C(&v15, &v13);
  sub_1AAE04B10(&v13);
  sub_1AAE04B10(&v15);
  sub_1AAE04AA8(v17);
  return v3 & 1;
}

BOOL sub_1AAE0336C(uint64_t a1, uint64_t a2)
{
  sub_1AACE5968(a1, v10, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
  sub_1AACE5968(a2, &v12, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
  if (v11 == 255)
  {
    if (v13[25] != 255)
    {
LABEL_11:
      sub_1AAE04BC0(v10, &qword_1EB424EA0, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
      return 0;
    }

    sub_1AACEC504(v10, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
LABEL_6:
    sub_1AACE5968(a1 + 48, v10, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
    sub_1AACE5968(a2 + 48, &v12, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
    if (v11 == 255)
    {
      if (v13[25] == 255)
      {
        sub_1AACEC504(v10, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
        return 1;
      }

      goto LABEL_11;
    }

    sub_1AACE5968(v10, v9, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
    if (v13[25] == 255)
    {
      goto LABEL_10;
    }

    v7 = v12;
    v8[0] = *v13;
    *(v8 + 10) = *&v13[10];
    v6 = sub_1AAE03170(v9, &v7);
    sub_1AAE04AA8(&v7);
    sub_1AAE04AA8(v9);
    sub_1AACEC504(v10, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
    return (v6 & 1) != 0;
  }

  sub_1AACE5968(v10, v9, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
  if (v13[25] == 255)
  {
LABEL_10:
    sub_1AAE04AA8(v9);
    goto LABEL_11;
  }

  v7 = v12;
  v8[0] = *v13;
  *(v8 + 10) = *&v13[10];
  v4 = sub_1AAE03170(v9, &v7);
  sub_1AAE04AA8(&v7);
  sub_1AAE04AA8(v9);
  sub_1AACEC504(v10, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
  if (v4)
  {
    goto LABEL_6;
  }

  return 0;
}

double sub_1AAE03598(uint64_t a1)
{
  result = *(v1 + 16);
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

double sub_1AAE035A8(uint64_t a1)
{
  result = *(v1 + 16);
  *(a1 + 24) = result;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1AAE035F8(uint64_t a1)
{
  v6[0] = sub_1AACD78AC(v1 + ((*(*(*(v1 + 24) - 8) + 80) + 48) & ~*(*(*(v1 + 24) - 8) + 80)), *(v1 + 24), *(v1 + 40));
  v6[1] = v3;
  v7 = v4;
  v8 = 0;
  return sub_1AAE04FF4(v6, a1, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
}

uint64_t sub_1AAE036A0()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AAE03720(uint64_t a1)
{
  v6[0] = sub_1AACD78AC(v1 + ((*(*(*(v1 + 24) - 8) + 80) + 48) & ~*(*(*(v1 + 24) - 8) + 80)), *(v1 + 24), *(v1 + 40));
  v6[1] = v3;
  v7 = v4;
  v8 = 0;
  return sub_1AAE04FF4(v6, a1 + 48, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
}

uint64_t sub_1AAE037B0()
{
  v1 = *(v0 + 24);
  v2 = (sub_1AAF8EF74() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(*v2 + 64);

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[10], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AAE038C0(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = *(sub_1AAF8EF74() - 8);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return a2(a1, v9, v4, v5, v6, v7);
}

void sub_1AAE03A08()
{
  if (!qword_1EB424D68)
  {
    sub_1AAE04E10(255, &qword_1EB424D70, MEMORY[0x1E6969530], &protocol witness table for Date, type metadata accessor for MajorValueAlignment);
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424D68);
    }
  }
}

uint64_t sub_1AAE03A98(uint64_t a1)
{
  sub_1AAE04E10(0, &qword_1EB424D70, MEMORY[0x1E6969530], &protocol witness table for Date, type metadata accessor for MajorValueAlignment);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AAE03B60(double *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = type metadata accessor for ValueAlignment(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1AAF8CBA4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a4 + 104))
  {
    if (!*(*(a4 + 48) + 16))
    {
      return;
    }

    v19 = *(a4 + 16);
    v20 = *(a4 + 24);
    sub_1AAE04E7C(a3, v14, type metadata accessor for ValueAlignment);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1AACCB8F0(0, &qword_1EB424C30, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AAF92AB0;
      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 32) = 0xD00000000000003ALL;
      *(v21 + 40) = 0x80000001AAFCEA20;
      sub_1AAF90674();

      sub_1AACDCF10(v14, type metadata accessor for ValueAlignment);
      return;
    }

    v38 = 0.0;
    if ((v20 & 1) == 0)
    {
      v38 = v19;
    }

    v39 = v38 * *v14;
    v40 = *a1;
    v41 = v39 * round(*a1 / v39);
    if (a2)
    {
      if (vabdd_f64(v40, a6) <= 2.22044605e-12)
      {
        return;
      }

      if (vabdd_f64(v39 * round(a6 / v39), v41) < 2.22044605e-12)
      {
        v42 = v40 - a6;
        v43 = v39 + v41;
        v41 = v41 - v39;
        if (v42 >= 0.0)
        {
          v41 = v43;
        }
      }
    }

    goto LABEL_26;
  }

  v48 = a5;
  v22 = *(a4 + 32);
  if (v22)
  {
    v23 = *a4;
    v46 = *(a4 + 8);
    v47 = v23;
    v24 = *a1;
    v49 = *a1;

    v22(&v50, &v49);
    sub_1AACB4A98(v22);
    if ((v51 & 1) == 0)
    {
      v25 = v50;
      sub_1AAF8CB64();
      *&v26 = COERCE_DOUBLE(sub_1AAE00BCC(v18, v25));
      v28 = v27;
      v45 = *(v16 + 8);
      v45(v18, v15);
      if ((v28 & 1) == 0)
      {
        v29 = *&v26;
        if ((a2 & 1) == 0)
        {
          v34 = v47;
LABEL_25:
          v49 = v29;
          v34(&v50, &v49);
          v41 = v50;
LABEL_26:
          *a1 = v41;
          return;
        }

        if (vabdd_f64(v24, a6) > 2.22044605e-12)
        {
          v49 = a6;

          v22(&v50, &v49);
          sub_1AACB4A98(v22);
          if ((v51 & 1) == 0)
          {
            v30 = v50;
            sub_1AAF8CB64();
            v31 = sub_1AAE00BCC(v18, v30);
            v33 = v32;
            v45(v18, v15);
            if ((v33 & 1) == 0)
            {
              v49 = *&v31;
              v34 = v47;
              v47(&v50, &v49);
              v35 = v50;
              v49 = *&v26;
              v34(&v50, &v49);
              if (vabdd_f64(v35, v50) < 2.22044605e-12)
              {
                v36 = COERCE_DOUBLE(sub_1AAE01838(COERCE_UNSIGNED_INT64(v24 - a6) >> 63, v48, *&v26));
                if ((v37 & 1) == 0)
                {
                  v29 = v36;
                }
              }

              goto LABEL_25;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1AAE03FD0(uint64_t a1)
{
  result = sub_1AAE04858(&qword_1EB424D80, type metadata accessor for ValueAlignedChartScrollTargetBehavior);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE04050()
{
  result = sub_1AAF8E704();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ChartProxy();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAE040F8()
{
  result = type metadata accessor for MajorValueAlignmentStorage(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAE041B4()
{
  result = type metadata accessor for ValueAlignment(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MajorValueAlignmentStorage(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAE04248(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AACCB8F0(255, a2, a3, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AAE042AC(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  sub_1AACCB8F0(255, a2, a3, MEMORY[0x1E6980B20]);
  sub_1AAF8DF74();
  sub_1AAE04248(a4, a2, a3);
  return swift_getWitnessTable();
}

__n128 sub_1AAE04390(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1AAE043C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 136))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 104);
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

uint64_t sub_1AAE0440C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AAE04480()
{
  result = sub_1AAF8C774();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAE04514()
{
  v0 = type metadata accessor for ValueAlignment(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1AAE04584(uint64_t a1)
{
  v1 = *(a1 + 41);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1AAE04598(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1AAE045BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 90))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1AAE04608(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 41) = ~a2;
    }
  }

  return result;
}

unint64_t sub_1AAE04674(uint64_t a1)
{
  result = sub_1AACCCF64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AAE046A0()
{
  result = qword_1EB424E58;
  if (!qword_1EB424E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424E58);
  }

  return result;
}

void sub_1AAE04710()
{
  if (!qword_1EB424E68)
  {
    sub_1AAE047C4();
    sub_1AAE04858(&qword_1EB424E78, sub_1AAE047C4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB424E68);
    }
  }
}

void sub_1AAE047C4()
{
  if (!qword_1EB424E70)
  {
    type metadata accessor for AutomaticScrollLimitModifier(255);
    sub_1AAE04858(&qword_1ED9B3720, type metadata accessor for AutomaticScrollLimitModifier);
    v0 = sub_1AAF8E4F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424E70);
    }
  }
}

uint64_t sub_1AAE04858(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1AAE048D4()
{
  if (!qword_1EB424E88)
  {
    sub_1AACCB9E0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB424E88);
    }
  }
}

uint64_t sub_1AAE04938(uint64_t a1, uint64_t a2)
{
  sub_1AACCF570(0, qword_1ED9B2F78, sub_1AACCB9E0, MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AAE049CC()
{
  result = qword_1EB424E98;
  if (!qword_1EB424E98)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB424E98);
  }

  return result;
}

void sub_1AAE04A30(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AACCB8F0(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1AAE04B64()
{
  if (!qword_1EB424EA8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB424EA8);
    }
  }
}

uint64_t sub_1AAE04BC0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAE04A30(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AAE04C4C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v23 = *(result + 64);
  *v24 = *(result + 80);
  *&v24[9] = *(result + 89);
  v19 = *result;
  v20 = *(result + 16);
  v21 = *(result + 32);
  v22 = *(result + 48);
  v7 = *(result + 56);
  v8 = *(result + 64);
  if (*(result + 104))
  {
    v9 = 0.0;
    if (v8 == 255 || (v8 & 1) != 0)
    {
      v10 = 0.0;
    }

    else
    {
      v17 = *(v7 + 16);
      v10 = 0.0;
      if (v17)
      {
        v10 = *(v7 + 8 * v17 + 24);
        v9 = *(v7 + 32);
      }
    }

    v16 = v10 < v9;
  }

  else
  {
    v25 = *(result + 48);
    v26 = *(result + 56);
    v27 = *(result + 64);
    v11 = *(v25 + 16);
    if (v11)
    {
      v12 = COERCE__INT64(*(v25 + 32 + 8 * v11 - 8) - *(v25 + 32)) >= 0;
    }

    else
    {
      v12 = 1;
    }

    result = sub_1AACE1D40();
    v13 = *&result;
    v15 = 0.0;
    if (v14)
    {
      v13 = 0.0;
    }

    if (v27 != 255 && (v27 & 1) == 0 && *(v26 + 16))
    {
      v15 = *(v26 + 32);
    }

    v16 = v12 ^ (COERCE__INT64(v13 - v15) >= 0);
  }

  v18 = 0.0;
  if (v16)
  {
    v18 = a4;
  }

  *(a2 + 64) = v23;
  *(a2 + 80) = *v24;
  *(a2 + 96) = *&v24[16];
  *a2 = v19;
  *(a2 + 16) = v20;
  *(a2 + 32) = v21;
  *(a2 + 48) = v22;
  *(a2 + 112) = a3;
  *(a2 + 120) = a4;
  *(a2 + 128) = v18;
  return result;
}

void sub_1AAE04E10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AAE04E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1AAE04EE4()
{
  result = qword_1ED9AE698[0];
  if (!qword_1ED9AE698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9AE698);
  }

  return result;
}

unint64_t sub_1AAE04F70()
{
  result = qword_1ED9ADEF8;
  if (!qword_1ED9ADEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ADEF8);
  }

  return result;
}

uint64_t sub_1AAE04FF4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AACCB8F0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AAE050A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1AAE05140()
{
  result = qword_1EB424EC8;
  if (!qword_1EB424EC8)
  {
    sub_1AAE05240(255, qword_1EB424ED0, MEMORY[0x1E697F960]);
    sub_1AAE047C4();
    sub_1AAE04858(&qword_1EB424E78, sub_1AAE047C4);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424EC8);
  }

  return result;
}

void sub_1AAE05240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1AAE04710();
    v7 = v6;
    sub_1AAE047C4();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1AAE052B0()
{
  result = qword_1ED9ADF08[0];
  if (!qword_1ED9ADF08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9ADF08);
  }

  return result;
}

unint64_t sub_1AAE05304()
{
  result = qword_1ED9ADF38;
  if (!qword_1ED9ADF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ADF38);
  }

  return result;
}

uint64_t sub_1AAE05368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a1;
  v32 = a3;
  v27 = a2;
  v33 = a5;
  v6 = *(a4 + 16);
  v7 = type metadata accessor for ConcreteScale();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = sub_1AAF8FE74();
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for ConcreteScale();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v31, a4, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v21, v7);
    if (v32 == 2)
    {
      v34 = v30;
      v35 = v27;
      v23 = v33;
      sub_1AAF3C334();
      (*(v8 + 8))(v10, v7);
      return (*(*(v6 - 8) + 56))(v23, 0, 1, v6);
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      return (*(*(v6 - 8) + 56))(v33, 1, 1, v6);
    }
  }

  else
  {
    (*(v15 + 32))(v17, v21, v14);
    if (v32 && v32 != 1)
    {
      (*(v15 + 8))(v17, v14);
      v25 = 1;
    }

    else
    {
      v34 = v30;
      sub_1AAF3C334();
      (*(v15 + 8))(v17, v14);
      v25 = 0;
    }

    (*(*(v6 - 8) + 56))(v13, v25, 1, v6);
    return (*(v28 + 32))(v33, v13, v29);
  }
}

unint64_t sub_1AAE058B0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AAE0BF4C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AAE058E8()
{
  sub_1AAF90694();
  sub_1AACDBEEC(v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAE0592C()
{
  sub_1AAF90694();
  sub_1AACDBEEC(v1);
  return sub_1AAF906F4();
}

BOOL sub_1AAE05968(uint64_t a1, uint64_t a2)
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
  return sub_1AAE0A668(v5, v7);
}

uint64_t sub_1AAE059C4()
{
  sub_1AAF900D4();
  MEMORY[0x1AC5982F0](0xD000000000000011, 0x80000001AAFCED80);
  v1 = MEMORY[0x1E69E6720];
  sub_1AACAE398(0, &qword_1EB424F60, &type metadata for PrimitivePlottableType, MEMORY[0x1E69E6720]);
  v2 = sub_1AAF8F664();
  MEMORY[0x1AC5982F0](v2);

  MEMORY[0x1AC5982F0](0xD000000000000010, 0x80000001AAFCEDA0);
  sub_1AACAE398(0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], v1);
  v3 = sub_1AAF8F664();
  MEMORY[0x1AC5982F0](v3);

  MEMORY[0x1AC5982F0](0x457265626D756E0ALL, 0xEF203A746E657478);
  sub_1AAE0BEDC();
  sub_1AAF90284();
  MEMORY[0x1AC5982F0](0x747845657461640ALL, 0xED0000203A746E65);
  sub_1AAF90284();
  MEMORY[0x1AC5982F0](0x726F67657461630ALL, 0xED0000203A736569);
  v4 = MEMORY[0x1AC598460](*(v0 + 48), MEMORY[0x1E69E6158]);
  MEMORY[0x1AC5982F0](v4);

  MEMORY[0x1AC5982F0](0x726F67657461630ALL, 0xEE00203A74655379);
  v5 = sub_1AAF8FA54();
  MEMORY[0x1AC5982F0](v5);

  return 0;
}

uint64_t sub_1AAE05C6C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  result = sub_1AAE8C6C0(a2, a4, a5);
  v9 = result;
  v10 = *(result + 16);
  if (v10)
  {
    v11 = 0;
    v224 = result + 32;
    v219 = v5 + 74;
    v220 = v5 + 83;
    v216 = v5 + 73;
    v217 = v5 + 82;
    v218 = v5 + 65;
    v215 = v5 + 64;
    v223 = a3;
    v221 = *(result + 16);
    v222 = result;
    while (1)
    {
      if (v11 >= *(v9 + 16))
      {
        __break(1u);
        return result;
      }

      v19 = v224 + 72 * v11;
      v20 = *v19;
      v227 = *(v19 + 16);
      v21 = *(v19 + 32);
      v228 = *(v19 + 8);
      v22 = *(v19 + 40);
      v23 = *(v19 + 48);
      v225 = *(v19 + 56);
      v226 = *(v19 + 64);
      if ((*(v19 + 48) & 0x80000000) == 0)
      {
        break;
      }

      v24 = *(v19 + 32);
      if (v23)
      {
        v17 = *v19;
        v25 = *&v21 & 0x7FF0000000000000;
        if (a3 <= 3u)
        {
          if (a3 > 1u)
          {
            if (a3 == 2)
            {
              swift_beginAccess();
              sub_1AACD7304(v17, v228, v227);

              v41 = v25 == 0x7FF0000000000000;
              v26 = v226;
              if (!v41)
              {
                if (v6[26])
                {
                  v31 = v21;
                }

                else
                {
                  v31 = *(v6 + 24);
                  if (v31 >= v21)
                  {
                    v31 = v21;
                  }

                  if (*(v6 + 25) >= v21)
                  {
                    v24 = v6[25];
                  }
                }

                *(v6 + 24) = v31;
                v6[25] = v24;
                *(v6 + 208) = 0;
              }

              if ((~*&v22 & 0x7FF0000000000000) != 0)
              {
                v186 = v22;
                if (v6[26])
                {
                  v187 = v22;
                }

                else
                {
                  v187 = *(v6 + 24);
                  if (v187 >= v22)
                  {
                    v187 = v22;
                  }

                  if (*(v6 + 25) >= v22)
                  {
                    v186 = *(v6 + 25);
                  }
                }

                *(v6 + 24) = v187;
                *(v6 + 25) = v186;
                *(v6 + 208) = 0;
              }
            }

            else
            {
              swift_beginAccess();
              sub_1AACD7304(v17, v228, v227);

              v41 = v25 == 0x7FF0000000000000;
              v26 = v226;
              if (!v41)
              {
                if (v6[36])
                {
                  v102 = v21;
                }

                else
                {
                  v102 = *(v6 + 34);
                  if (v102 >= v21)
                  {
                    v102 = v21;
                  }

                  if (*(v6 + 35) >= v21)
                  {
                    v24 = v6[35];
                  }
                }

                *(v6 + 34) = v102;
                v6[35] = v24;
                *(v6 + 288) = 0;
              }

              if ((~*&v22 & 0x7FF0000000000000) != 0)
              {
                v194 = v22;
                if (v6[36])
                {
                  v195 = v22;
                }

                else
                {
                  v195 = *(v6 + 34);
                  if (v195 >= v22)
                  {
                    v195 = v22;
                  }

                  if (*(v6 + 35) >= v22)
                  {
                    v194 = *(v6 + 35);
                  }
                }

                *(v6 + 34) = v195;
                *(v6 + 35) = v194;
                *(v6 + 288) = 0;
              }
            }
          }

          else if (a3)
          {
            swift_beginAccess();
            sub_1AACD7304(v17, v228, v227);

            v41 = v25 == 0x7FF0000000000000;
            v26 = v226;
            if (!v41)
            {
              if (v6[17])
              {
                v100 = v21;
              }

              else
              {
                v100 = *(v6 + 15);
                if (v100 >= v21)
                {
                  v100 = v21;
                }

                if (*(v6 + 16) >= v21)
                {
                  v24 = v6[16];
                }
              }

              *(v6 + 15) = v100;
              v6[16] = v24;
              *(v6 + 136) = 0;
            }

            if ((~*&v22 & 0x7FF0000000000000) != 0)
            {
              v190 = v22;
              if (v6[17])
              {
                v191 = v22;
              }

              else
              {
                v191 = *(v6 + 15);
                if (v191 >= v22)
                {
                  v191 = v22;
                }

                if (*(v6 + 16) >= v22)
                {
                  v190 = *(v6 + 16);
                }
              }

              *(v6 + 15) = v191;
              *(v6 + 16) = v190;
              *(v6 + 136) = 0;
            }
          }

          else
          {
            swift_beginAccess();
            sub_1AACD7304(v17, v228, v227);

            v41 = v25 == 0x7FF0000000000000;
            v26 = v226;
            if (!v41)
            {
              if (v6[8])
              {
                v29 = v21;
              }

              else
              {
                v29 = *(v6 + 6);
                if (v29 >= v21)
                {
                  v29 = v21;
                }

                if (*(v6 + 7) >= v21)
                {
                  v24 = v6[7];
                }
              }

              *(v6 + 6) = v29;
              v6[7] = v24;
              *(v6 + 64) = 0;
            }

            if ((~*&v22 & 0x7FF0000000000000) != 0)
            {
              v182 = v22;
              if (v6[8])
              {
                v183 = v22;
              }

              else
              {
                v183 = *(v6 + 6);
                if (v183 >= v22)
                {
                  v183 = v22;
                }

                if (*(v6 + 7) >= v22)
                {
                  v182 = *(v6 + 7);
                }
              }

              *(v6 + 6) = v183;
              *(v6 + 7) = v182;
              *(v6 + 64) = 0;
            }
          }
        }

        else if (a3 <= 5u)
        {
          if (a3 == 4)
          {
            swift_beginAccess();
            sub_1AACD7304(v17, v228, v227);

            v41 = v25 == 0x7FF0000000000000;
            v26 = v226;
            if (!v41)
            {
              if (v6[45])
              {
                v33 = v21;
              }

              else
              {
                v33 = *(v6 + 43);
                if (v33 >= v21)
                {
                  v33 = v21;
                }

                if (*(v6 + 44) >= v21)
                {
                  v24 = v6[44];
                }
              }

              *(v6 + 43) = v33;
              v6[44] = v24;
              *(v6 + 360) = 0;
            }

            if ((~*&v22 & 0x7FF0000000000000) != 0)
            {
              v207 = v22;
              if (v6[45])
              {
                v208 = v22;
              }

              else
              {
                v208 = *(v6 + 43);
                if (v208 >= v22)
                {
                  v208 = v22;
                }

                if (*(v6 + 44) >= v22)
                {
                  v207 = *(v6 + 44);
                }
              }

              *(v6 + 43) = v208;
              *(v6 + 44) = v207;
              *(v6 + 360) = 0;
            }
          }

          else
          {
            swift_beginAccess();
            sub_1AACD7304(v17, v228, v227);

            v41 = v25 == 0x7FF0000000000000;
            v26 = v226;
            if (!v41)
            {
              if (v6[54])
              {
                v106 = v21;
              }

              else
              {
                v106 = *(v6 + 52);
                if (v106 >= v21)
                {
                  v106 = v21;
                }

                if (*(v6 + 53) >= v21)
                {
                  v24 = v6[53];
                }
              }

              *(v6 + 52) = v106;
              v6[53] = v24;
              *(v6 + 432) = 0;
            }

            if ((~*&v22 & 0x7FF0000000000000) != 0)
            {
              v211 = v22;
              if (v6[54])
              {
                v212 = v22;
              }

              else
              {
                v212 = *(v6 + 52);
                if (v212 >= v22)
                {
                  v212 = v22;
                }

                if (*(v6 + 53) >= v22)
                {
                  v211 = *(v6 + 53);
                }
              }

              *(v6 + 52) = v212;
              *(v6 + 53) = v211;
              *(v6 + 432) = 0;
            }
          }
        }

        else if (a3 == 6)
        {
          swift_beginAccess();
          sub_1AACD7304(v17, v228, v227);

          v41 = v25 == 0x7FF0000000000000;
          v26 = v226;
          if (!v41)
          {
            if (v6[63])
            {
              v98 = v21;
            }

            else
            {
              v98 = *(v6 + 61);
              if (v98 >= v21)
              {
                v98 = v21;
              }

              if (*(v6 + 62) >= v21)
              {
                v24 = v6[62];
              }
            }

            *(v6 + 61) = v98;
            v6[62] = v24;
            *(v6 + 504) = 0;
          }

          if ((~*&v22 & 0x7FF0000000000000) != 0)
          {
            v178 = v22;
            if (v6[63])
            {
              v179 = v22;
            }

            else
            {
              v179 = *(v6 + 61);
              if (v179 >= v22)
              {
                v179 = v22;
              }

              if (*(v6 + 62) >= v22)
              {
                v178 = *(v6 + 62);
              }
            }

            *(v6 + 61) = v179;
            *(v6 + 62) = v178;
            *(v6 + 504) = 0;
          }
        }

        else if (a3 == 7)
        {
          swift_beginAccess();
          sub_1AACD7304(v17, v228, v227);

          v41 = v25 == 0x7FF0000000000000;
          v26 = v226;
          if (!v41)
          {
            if (v6[72])
            {
              v27 = v21;
            }

            else
            {
              v27 = *(v6 + 70);
              if (v27 >= v21)
              {
                v27 = v21;
              }

              if (*(v6 + 71) >= v21)
              {
                v24 = v6[71];
              }
            }

            *(v6 + 70) = v27;
            v6[71] = v24;
            *(v6 + 576) = 0;
          }

          if ((~*&v22 & 0x7FF0000000000000) != 0)
          {
            v198 = v22;
            if (v6[72])
            {
              v199 = v22;
            }

            else
            {
              v199 = *(v6 + 70);
              if (v199 >= v22)
              {
                v199 = v22;
              }

              if (*(v6 + 71) >= v22)
              {
                v198 = *(v6 + 71);
              }
            }

            *(v6 + 70) = v199;
            *(v6 + 71) = v198;
            *(v6 + 576) = 0;
          }
        }

        else
        {
          swift_beginAccess();
          sub_1AACD7304(v17, v228, v227);

          v41 = v25 == 0x7FF0000000000000;
          v26 = v226;
          if (!v41)
          {
            if (v6[81])
            {
              v104 = v21;
            }

            else
            {
              v104 = *(v6 + 79);
              if (v104 >= v21)
              {
                v104 = v21;
              }

              if (*(v6 + 80) >= v21)
              {
                v24 = v6[80];
              }
            }

            *(v6 + 79) = v104;
            v6[80] = v24;
            *(v6 + 648) = 0;
          }

          if ((~*&v22 & 0x7FF0000000000000) != 0)
          {
            v203 = v22;
            if (v6[81])
            {
              v204 = v22;
            }

            else
            {
              v204 = *(v6 + 79);
              if (v204 >= v22)
              {
                v204 = v22;
              }

              if (*(v6 + 80) >= v22)
              {
                v203 = *(v6 + 80);
              }
            }

            *(v6 + 79) = v204;
            *(v6 + 80) = v203;
            *(v6 + 648) = 0;
          }
        }

        goto LABEL_627;
      }

      if (a3 <= 3u)
      {
        if (a3 > 1u)
        {
          if (a3 == 2)
          {
            swift_beginAccess();
            if ((~*&v21 & 0x7FF0000000000000) != 0)
            {
              if (v6[23])
              {
                v32 = v21;
              }

              else
              {
                v32 = *(v6 + 21);
                if (v32 >= v21)
                {
                  v32 = v21;
                }

                if (*(v6 + 22) >= v21)
                {
                  v24 = v6[22];
                }
              }

              *(v6 + 21) = v32;
              v6[22] = v24;
              *(v6 + 184) = 0;
            }

            v17 = v20;
            sub_1AACD7304(v20, v228, v227);

            if ((~*&v22 & 0x7FF0000000000000) != 0)
            {
              v188 = v22;
              if (v6[23])
              {
                v189 = v22;
              }

              else
              {
                v189 = *(v6 + 21);
                if (v189 >= v22)
                {
                  v189 = v22;
                }

                if (*(v6 + 22) >= v22)
                {
                  v188 = *(v6 + 22);
                }
              }

              *(v6 + 21) = v189;
              *(v6 + 22) = v188;
              *(v6 + 184) = 0;
            }
          }

          else
          {
            swift_beginAccess();
            if ((~*&v21 & 0x7FF0000000000000) != 0)
            {
              if (v6[33])
              {
                v103 = v21;
              }

              else
              {
                v103 = *(v6 + 31);
                if (v103 >= v21)
                {
                  v103 = v21;
                }

                if (*(v6 + 32) >= v21)
                {
                  v24 = v6[32];
                }
              }

              *(v6 + 31) = v103;
              v6[32] = v24;
              *(v6 + 264) = 0;
            }

            v17 = v20;
            sub_1AACD7304(v20, v228, v227);

            if ((~*&v22 & 0x7FF0000000000000) != 0)
            {
              v196 = v22;
              if (v6[33])
              {
                v197 = v22;
              }

              else
              {
                v197 = *(v6 + 31);
                if (v197 >= v22)
                {
                  v197 = v22;
                }

                if (*(v6 + 32) >= v22)
                {
                  v196 = *(v6 + 32);
                }
              }

              *(v6 + 31) = v197;
              *(v6 + 32) = v196;
              *(v6 + 264) = 0;
            }
          }
        }

        else if (a3)
        {
          swift_beginAccess();
          if ((~*&v21 & 0x7FF0000000000000) != 0)
          {
            if (v6[14])
            {
              v101 = v21;
            }

            else
            {
              v101 = *(v6 + 12);
              if (v101 >= v21)
              {
                v101 = v21;
              }

              if (*(v6 + 13) >= v21)
              {
                v24 = v6[13];
              }
            }

            *(v6 + 12) = v101;
            v6[13] = v24;
            *(v6 + 112) = 0;
          }

          v17 = v20;
          sub_1AACD7304(v20, v228, v227);

          if ((~*&v22 & 0x7FF0000000000000) != 0)
          {
            v192 = v22;
            if (v6[14])
            {
              v193 = v22;
            }

            else
            {
              v193 = *(v6 + 12);
              if (v193 >= v22)
              {
                v193 = v22;
              }

              if (*(v6 + 13) >= v22)
              {
                v192 = *(v6 + 13);
              }
            }

            *(v6 + 12) = v193;
            *(v6 + 13) = v192;
            *(v6 + 112) = 0;
          }
        }

        else
        {
          swift_beginAccess();
          if ((~*&v21 & 0x7FF0000000000000) != 0)
          {
            if (v6[5])
            {
              v30 = v21;
            }

            else
            {
              v30 = *(v6 + 3);
              if (v30 >= v21)
              {
                v30 = v21;
              }

              if (*(v6 + 4) >= v21)
              {
                v24 = v6[4];
              }
            }

            *(v6 + 3) = v30;
            v6[4] = v24;
            *(v6 + 40) = 0;
          }

          v17 = v20;
          sub_1AACD7304(v20, v228, v227);

          if ((~*&v22 & 0x7FF0000000000000) != 0)
          {
            v184 = v22;
            if (v6[5])
            {
              v185 = v22;
            }

            else
            {
              v185 = *(v6 + 3);
              if (v185 >= v22)
              {
                v185 = v22;
              }

              if (*(v6 + 4) >= v22)
              {
                v184 = *(v6 + 4);
              }
            }

            *(v6 + 3) = v185;
            *(v6 + 4) = v184;
            *(v6 + 40) = 0;
          }
        }
      }

      else if (a3 <= 5u)
      {
        if (a3 != 4)
        {
          swift_beginAccess();
          v17 = v20;
          sub_1AACD7304(v20, v228, v227);

          if ((~*&v21 & 0x7FF0000000000000) != 0)
          {
            if (v6[51])
            {
              v107 = v21;
            }

            else
            {
              v107 = *(v6 + 49);
              if (v107 >= v21)
              {
                v107 = v21;
              }

              if (*(v6 + 50) >= v21)
              {
                v24 = v6[50];
              }
            }

            *(v6 + 49) = v107;
            v6[50] = v24;
            *(v6 + 408) = 0;
          }

          v200 = v226;
          if ((~*&v22 & 0x7FF0000000000000) != 0)
          {
            v213 = v22;
            if (v6[51])
            {
              v214 = v22;
            }

            else
            {
              v214 = *(v6 + 49);
              if (v214 >= v22)
              {
                v214 = v22;
              }

              if (*(v6 + 50) >= v22)
              {
                v213 = *(v6 + 50);
              }
            }

            *(v6 + 49) = v214;
            *(v6 + 50) = v213;
            *(v6 + 408) = 0;
          }

LABEL_626:
          v26 = v200;
LABEL_627:
          swift_endAccess();
          v18 = v26;
          goto LABEL_15;
        }

        swift_beginAccess();
        if ((~*&v21 & 0x7FF0000000000000) != 0)
        {
          if (v6[42])
          {
            v34 = v21;
          }

          else
          {
            v34 = *(v6 + 40);
            if (v34 >= v21)
            {
              v34 = v21;
            }

            if (*(v6 + 41) >= v21)
            {
              v24 = v6[41];
            }
          }

          *(v6 + 40) = v34;
          v6[41] = v24;
          *(v6 + 336) = 0;
        }

        v17 = v20;
        sub_1AACD7304(v20, v228, v227);

        if ((~*&v22 & 0x7FF0000000000000) != 0)
        {
          v209 = v22;
          if (v6[42])
          {
            v210 = v22;
          }

          else
          {
            v210 = *(v6 + 40);
            if (v210 >= v22)
            {
              v210 = v22;
            }

            if (*(v6 + 41) >= v22)
            {
              v209 = *(v6 + 41);
            }
          }

          *(v6 + 40) = v210;
          *(v6 + 41) = v209;
          *(v6 + 336) = 0;
        }
      }

      else
      {
        if (a3 != 6)
        {
          if (a3 == 7)
          {
            swift_beginAccess();
            v17 = v20;
            sub_1AACD7304(v20, v228, v227);

            if ((~*&v21 & 0x7FF0000000000000) != 0)
            {
              if (v6[69])
              {
                v28 = v21;
              }

              else
              {
                v28 = *(v6 + 67);
                if (v28 >= v21)
                {
                  v28 = v21;
                }

                if (*(v6 + 68) >= v21)
                {
                  v24 = v6[68];
                }
              }

              *(v6 + 67) = v28;
              v6[68] = v24;
              *(v6 + 552) = 0;
            }

            v200 = v226;
            if ((~*&v22 & 0x7FF0000000000000) != 0)
            {
              v201 = v22;
              if (v6[69])
              {
                v202 = v22;
              }

              else
              {
                v202 = *(v6 + 67);
                if (v202 >= v22)
                {
                  v202 = v22;
                }

                if (*(v6 + 68) >= v22)
                {
                  v201 = *(v6 + 68);
                }
              }

              *(v6 + 67) = v202;
              *(v6 + 68) = v201;
              *(v6 + 552) = 0;
            }
          }

          else
          {
            swift_beginAccess();
            v17 = v20;
            sub_1AACD7304(v20, v228, v227);

            if ((~*&v21 & 0x7FF0000000000000) != 0)
            {
              if (v6[78])
              {
                v105 = v21;
              }

              else
              {
                v105 = *(v6 + 76);
                if (v105 >= v21)
                {
                  v105 = v21;
                }

                if (*(v6 + 77) >= v21)
                {
                  v24 = v6[77];
                }
              }

              *(v6 + 76) = v105;
              v6[77] = v24;
              *(v6 + 624) = 0;
            }

            v200 = v226;
            if ((~*&v22 & 0x7FF0000000000000) != 0)
            {
              v205 = v22;
              if (v6[78])
              {
                v206 = v22;
              }

              else
              {
                v206 = *(v6 + 76);
                if (v206 >= v22)
                {
                  v206 = v22;
                }

                if (*(v6 + 77) >= v22)
                {
                  v205 = *(v6 + 77);
                }
              }

              *(v6 + 76) = v206;
              *(v6 + 77) = v205;
              *(v6 + 624) = 0;
            }
          }

          goto LABEL_626;
        }

        swift_beginAccess();
        if ((~*&v21 & 0x7FF0000000000000) != 0)
        {
          if (v6[60])
          {
            v99 = v21;
          }

          else
          {
            v99 = *(v6 + 58);
            if (v99 >= v21)
            {
              v99 = v21;
            }

            if (*(v6 + 59) >= v21)
            {
              v24 = v6[59];
            }
          }

          *(v6 + 58) = v99;
          v6[59] = v24;
          *(v6 + 480) = 0;
        }

        v17 = v20;
        sub_1AACD7304(v20, v228, v227);

        if ((~*&v22 & 0x7FF0000000000000) != 0)
        {
          v180 = v22;
          if (v6[60])
          {
            v181 = v22;
          }

          else
          {
            v181 = *(v6 + 58);
            if (v181 >= v22)
            {
              v181 = v22;
            }

            if (*(v6 + 59) >= v22)
            {
              v180 = *(v6 + 59);
            }
          }

          *(v6 + 58) = v181;
          *(v6 + 59) = v180;
          *(v6 + 480) = 0;
        }
      }

LABEL_14:
      swift_endAccess();
      v18 = v226;
LABEL_15:
      ++v11;
      sub_1AACD3A44(v225, v18, a3);
      sub_1AAD04750(v17, v228, v227);

      result = sub_1AAD0E818(*&v21, *&v22, v23);
      if (v11 == v10)
      {
      }
    }

    if (a3 > 3u)
    {
      if (a3 <= 5u)
      {
        if (a3 == 4)
        {
          swift_beginAccess();
          if (!v23)
          {
            if ((~*&v21 & 0x7FF0000000000000) != 0)
            {
              if (v6[42])
              {
                *(v6 + 40) = v21;
                *(v6 + 41) = v21;
                *(v6 + 336) = 0;
              }

              else
              {
                v174 = v21;
                v175 = *(v6 + 40);
                if (v175 >= v21)
                {
                  v175 = v21;
                }

                if (*(v6 + 41) >= v21)
                {
                  v174 = *(v6 + 41);
                }

                *(v6 + 40) = v175;
                *(v6 + 41) = v174;
                *(v6 + 336) = 0;
              }
            }

            goto LABEL_389;
          }

          if (v23 != 1)
          {
            v84 = v6[47];
            if (*(v84 + 16))
            {
              sub_1AAF90694();
              sub_1AACD7C50(*&v21, *&v22, 2);
              sub_1AACD7C50(*&v21, *&v22, 2);
              v17 = v20;
              sub_1AACD7304(v20, v228, v227);

              sub_1AAF8F6C4();
              v85 = sub_1AAF906F4();
              v86 = -1 << *(v84 + 32);
              v87 = v85 & ~v86;
              if ((*(v84 + 56 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87))
              {
                v88 = ~v86;
                do
                {
                  v89 = (*(v84 + 48) + 16 * v87);
                  v90 = *v89 == *&v21 && *&v22 == v89[1];
                  if (v90 || (sub_1AAF904F4() & 1) != 0)
                  {
                    goto LABEL_229;
                  }

                  v87 = (v87 + 1) & v88;
                }

                while (((*(v84 + 56 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) != 0);
              }
            }

            else
            {
              sub_1AACD7C50(*&v21, *&v22, 2);
              sub_1AACD7C50(*&v21, *&v22, 2);
              v17 = v20;
              sub_1AACD7304(v20, v228, v227);
            }

            sub_1AACD7C50(*&v21, *&v22, 2);
            sub_1AAD7AAA4(&v229, *&v21, *&v22);

            v132 = v6[46];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v6[46] = v132;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v132 = sub_1AAD67908(0, *(v132 + 2) + 1, 1, v132);
              v6[46] = v132;
            }

            a3 = v223;
            v135 = *(v132 + 2);
            v134 = *(v132 + 3);
            if (v135 >= v134 >> 1)
            {
              v132 = sub_1AAD67908((v134 > 1), v135 + 1, 1, v132);
            }

            *(v132 + 2) = v135 + 1;
            v136 = &v132[16 * v135];
            *(v136 + 4) = v21;
            *(v136 + 5) = v22;
            v6[46] = v132;
            goto LABEL_300;
          }

          if ((~*&v21 & 0x7FF0000000000000) != 0)
          {
            if (v6[45])
            {
              *(v6 + 43) = v21;
              *(v6 + 44) = v21;
              *(v6 + 360) = 0;
            }

            else
            {
              v164 = v21;
              v165 = *(v6 + 43);
              if (v165 >= v21)
              {
                v165 = v21;
              }

              if (*(v6 + 44) >= v21)
              {
                v164 = *(v6 + 44);
              }

              *(v6 + 43) = v165;
              *(v6 + 44) = v164;
              *(v6 + 360) = 0;
            }
          }
        }

        else
        {
          swift_beginAccess();
          if (!v23)
          {
            if ((~*&v21 & 0x7FF0000000000000) != 0)
            {
              if (v6[51])
              {
                *(v6 + 49) = v21;
                *(v6 + 50) = v21;
              }

              else
              {
                v176 = v21;
                v177 = *(v6 + 49);
                if (v177 >= v21)
                {
                  v177 = v21;
                }

                if (*(v6 + 50) >= v21)
                {
                  v176 = *(v6 + 50);
                }

                *(v6 + 49) = v177;
                *(v6 + 50) = v176;
              }

              *(v6 + 408) = 0;
            }

            goto LABEL_389;
          }

          if (v23 != 1)
          {
            v91 = v6[56];
            if (*(v91 + 16))
            {
              sub_1AAF90694();
              sub_1AACD7C50(*&v21, *&v22, 2);
              sub_1AACD7C50(*&v21, *&v22, 2);
              v17 = v20;
              sub_1AACD7304(v20, v228, v227);

              sub_1AAF8F6C4();
              v92 = sub_1AAF906F4();
              v93 = -1 << *(v91 + 32);
              v94 = v92 & ~v93;
              if ((*(v91 + 56 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v94))
              {
                v95 = ~v93;
                do
                {
                  v96 = (*(v91 + 48) + 16 * v94);
                  v97 = *v96 == *&v21 && *&v22 == v96[1];
                  if (v97 || (sub_1AAF904F4() & 1) != 0)
                  {
                    goto LABEL_229;
                  }

                  v94 = (v94 + 1) & v95;
                }

                while (((*(v91 + 56 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v94) & 1) != 0);
              }
            }

            else
            {
              sub_1AACD7C50(*&v21, *&v22, 2);
              sub_1AACD7C50(*&v21, *&v22, 2);
              v17 = v20;
              sub_1AACD7304(v20, v228, v227);
            }

            sub_1AACD7C50(*&v21, *&v22, 2);
            sub_1AAD7AAA4(&v229, *&v21, *&v22);

            sub_1AADD920C();
            v137 = *(v6[55] + 16);
            sub_1AADD92B0(v137);
            v138 = v6[55];
            *(v138 + 16) = v137 + 1;
            v139 = v138 + 16 * v137;
            *(v139 + 32) = v21;
            *(v139 + 40) = v22;
            v6[55] = v138;
LABEL_299:
            a3 = v223;
LABEL_300:
            v10 = v221;
            v9 = v222;
            goto LABEL_14;
          }

          if ((~*&v21 & 0x7FF0000000000000) != 0)
          {
            if (v6[54])
            {
              *(v6 + 52) = v21;
              *(v6 + 53) = v21;
              *(v6 + 432) = 0;
            }

            else
            {
              v166 = v21;
              v167 = *(v6 + 52);
              if (v167 >= v21)
              {
                v167 = v21;
              }

              if (*(v6 + 53) >= v21)
              {
                v166 = *(v6 + 53);
              }

              *(v6 + 52) = v167;
              *(v6 + 53) = v166;
              *(v6 + 432) = 0;
            }
          }
        }
      }

      else
      {
        if (a3 != 6)
        {
          if (a3 == 7)
          {
            swift_beginAccess();
            if (v23)
            {
              if (v23 != 1)
              {
                v70 = *v219;
                if (*(*v219 + 16))
                {
                  sub_1AAF90694();
                  sub_1AACD7C50(*&v21, *&v22, 2);
                  sub_1AACD7C50(*&v21, *&v22, 2);
                  v17 = v20;
                  sub_1AACD7304(v20, v228, v227);

                  sub_1AAF8F6C4();
                  v71 = sub_1AAF906F4();
                  v72 = -1 << *(v70 + 32);
                  v73 = v71 & ~v72;
                  if ((*(v70 + 56 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73))
                  {
                    v74 = ~v72;
                    do
                    {
                      v75 = (*(v70 + 48) + 16 * v73);
                      v76 = *v75 == *&v21 && *&v22 == v75[1];
                      if (v76 || (sub_1AAF904F4() & 1) != 0)
                      {
                        goto LABEL_229;
                      }

                      v73 = (v73 + 1) & v74;
                    }

                    while (((*(v70 + 56 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) != 0);
                  }
                }

                else
                {
                  sub_1AACD7C50(*&v21, *&v22, 2);
                  sub_1AACD7C50(*&v21, *&v22, 2);
                  v17 = v20;
                  sub_1AACD7304(v20, v228, v227);
                }

                sub_1AACD7C50(*&v21, *&v22, 2);
                sub_1AAD7AAA4(&v229, *&v21, *&v22);

                v108 = v216;
LABEL_290:
                sub_1AADD920C();
                v129 = *(*v108 + 16);
                sub_1AADD92B0(v129);
                v130 = *v108;
                *(v130 + 16) = v129 + 1;
                v131 = v130 + 16 * v129;
                *(v131 + 32) = v21;
                *(v131 + 40) = v22;
                *v108 = v130;
                goto LABEL_299;
              }

              if ((~*&v21 & 0x7FF0000000000000) != 0)
              {
                if (v6[72])
                {
                  *(v6 + 70) = v21;
                  *(v6 + 71) = v21;
                  *(v6 + 576) = 0;
                }

                else
                {
                  v158 = v21;
                  v159 = *(v6 + 71);
                  v160 = *(v6 + 70);
                  if (v160 >= v21)
                  {
                    v160 = v21;
                  }

                  *(v6 + 70) = v160;
                  if (v159 >= v21)
                  {
                    v158 = v159;
                  }

                  *(v6 + 71) = v158;
                  *(v6 + 576) = 0;
                }
              }

              goto LABEL_12;
            }

            if ((~*&v21 & 0x7FF0000000000000) != 0)
            {
              if (v6[69])
              {
                *(v6 + 67) = v21;
                *(v6 + 68) = v21;
                *(v6 + 552) = 0;
              }

              else
              {
                v168 = v21;
                v169 = *(v6 + 68);
                v170 = *(v6 + 67);
                if (v170 >= v21)
                {
                  v170 = v21;
                }

                *(v6 + 67) = v170;
                if (v169 >= v21)
                {
                  v168 = v169;
                }

                *(v6 + 68) = v168;
                *(v6 + 552) = 0;
              }
            }
          }

          else
          {
            swift_beginAccess();
            if (v23)
            {
              if (v23 != 1)
              {
                v77 = *v220;
                if (*(*v220 + 16))
                {
                  sub_1AAF90694();
                  sub_1AACD7C50(*&v21, *&v22, 2);
                  sub_1AACD7C50(*&v21, *&v22, 2);
                  v17 = v20;
                  sub_1AACD7304(v20, v228, v227);

                  sub_1AAF8F6C4();
                  v78 = sub_1AAF906F4();
                  v79 = -1 << *(v77 + 32);
                  v80 = v78 & ~v79;
                  if ((*(v77 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80))
                  {
                    v81 = ~v79;
                    do
                    {
                      v82 = (*(v77 + 48) + 16 * v80);
                      v83 = *v82 == *&v21 && *&v22 == v82[1];
                      if (v83 || (sub_1AAF904F4() & 1) != 0)
                      {
                        goto LABEL_229;
                      }

                      v80 = (v80 + 1) & v81;
                    }

                    while (((*(v77 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) != 0);
                  }
                }

                else
                {
                  sub_1AACD7C50(*&v21, *&v22, 2);
                  sub_1AACD7C50(*&v21, *&v22, 2);
                  v17 = v20;
                  sub_1AACD7304(v20, v228, v227);
                }

                sub_1AACD7C50(*&v21, *&v22, 2);
                sub_1AAD7AAA4(&v229, *&v21, *&v22);

                v108 = v217;
                goto LABEL_290;
              }

              if ((~*&v21 & 0x7FF0000000000000) != 0)
              {
                if (v6[81])
                {
                  *(v6 + 79) = v21;
                  *(v6 + 80) = v21;
                  *(v6 + 648) = 0;
                }

                else
                {
                  v161 = v21;
                  v162 = *(v6 + 80);
                  v163 = *(v6 + 79);
                  if (v163 >= v21)
                  {
                    v163 = v21;
                  }

                  *(v6 + 79) = v163;
                  if (v162 >= v21)
                  {
                    v161 = v162;
                  }

                  *(v6 + 80) = v161;
                  *(v6 + 648) = 0;
                }
              }

              goto LABEL_12;
            }

            if ((~*&v21 & 0x7FF0000000000000) != 0)
            {
              if (v6[78])
              {
                *(v6 + 76) = v21;
                *(v6 + 77) = v21;
                *(v6 + 624) = 0;
              }

              else
              {
                v171 = v21;
                v172 = *(v6 + 77);
                v173 = *(v6 + 76);
                if (v173 >= v21)
                {
                  v173 = v21;
                }

                *(v6 + 76) = v173;
                if (v172 >= v21)
                {
                  v171 = v172;
                }

                *(v6 + 77) = v171;
                *(v6 + 624) = 0;
              }
            }
          }

LABEL_389:
          v14 = *&v21;
          v15 = *&v22;
          v16 = 0;
          goto LABEL_13;
        }

        swift_beginAccess();
        if (!v23)
        {
          if ((~*&v21 & 0x7FF0000000000000) != 0)
          {
            if (v6[60])
            {
              *(v6 + 58) = v21;
              *(v6 + 59) = v21;
              *(v6 + 480) = 0;
            }

            else
            {
              v140 = v21;
              v141 = *(v6 + 58);
              if (v141 >= v21)
              {
                v141 = v21;
              }

              if (*(v6 + 59) >= v21)
              {
                v140 = *(v6 + 59);
              }

              *(v6 + 58) = v141;
              *(v6 + 59) = v140;
              *(v6 + 480) = 0;
            }
          }

          goto LABEL_389;
        }

        if (v23 != 1)
        {
          v35 = *v218;
          if (*(*v218 + 16))
          {
            sub_1AAF90694();
            sub_1AACD7C50(*&v21, *&v22, 2);
            sub_1AACD7C50(*&v21, *&v22, 2);
            v17 = v20;
            sub_1AACD7304(v20, v228, v227);

            sub_1AAF8F6C4();
            v36 = sub_1AAF906F4();
            v37 = -1 << *(v35 + 32);
            v38 = v36 & ~v37;
            if ((*(v35 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
            {
              v39 = ~v37;
              do
              {
                v40 = (*(v35 + 48) + 16 * v38);
                v41 = *v40 == *&v21 && *&v22 == v40[1];
                if (v41 || (sub_1AAF904F4() & 1) != 0)
                {
                  goto LABEL_229;
                }

                v38 = (v38 + 1) & v39;
              }

              while (((*(v35 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0);
            }
          }

          else
          {
            sub_1AACD7C50(*&v21, *&v22, 2);
            sub_1AACD7C50(*&v21, *&v22, 2);
            v17 = v20;
            sub_1AACD7304(v20, v228, v227);
          }

          sub_1AACD7C50(*&v21, *&v22, 2);
          sub_1AAD7AAA4(&v229, *&v21, *&v22);

          v108 = v215;
          goto LABEL_290;
        }

        if ((~*&v21 & 0x7FF0000000000000) != 0)
        {
          if (v6[63])
          {
            *(v6 + 61) = v21;
            *(v6 + 62) = v21;
          }

          else
          {
            v12 = v21;
            v13 = *(v6 + 61);
            if (v13 >= v21)
            {
              v13 = v21;
            }

            if (*(v6 + 62) >= v21)
            {
              v12 = *(v6 + 62);
            }

            *(v6 + 61) = v13;
            *(v6 + 62) = v12;
          }

          *(v6 + 504) = 0;
        }
      }

LABEL_12:
      v14 = *&v21;
      v15 = *&v22;
      v16 = 1;
LABEL_13:
      sub_1AACD7C50(v14, v15, v16);
      v17 = v20;
      sub_1AACD7304(v20, v228, v227);

      goto LABEL_14;
    }

    if (a3 > 1u)
    {
      if (a3 == 2)
      {
        swift_beginAccess();
        if (v23)
        {
          if (v23 != 1)
          {
            v49 = v6[28];
            if (*(v49 + 16))
            {
              sub_1AAF90694();
              sub_1AACD7C50(*&v21, *&v22, 2);
              sub_1AACD7C50(*&v21, *&v22, 2);
              v17 = v20;
              sub_1AACD7304(v20, v228, v227);

              sub_1AAF8F6C4();
              v50 = sub_1AAF906F4();
              v51 = -1 << *(v49 + 32);
              v52 = v50 & ~v51;
              if ((*(v49 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
              {
                v53 = ~v51;
                do
                {
                  v54 = (*(v49 + 48) + 16 * v52);
                  v55 = *v54 == *&v21 && *&v22 == v54[1];
                  if (v55 || (sub_1AAF904F4() & 1) != 0)
                  {
                    goto LABEL_229;
                  }

                  v52 = (v52 + 1) & v53;
                }

                while (((*(v49 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) != 0);
              }
            }

            else
            {
              sub_1AACD7C50(*&v21, *&v22, 2);
              sub_1AACD7C50(*&v21, *&v22, 2);
              v17 = v20;
              sub_1AACD7304(v20, v228, v227);
            }

            sub_1AACD7C50(*&v21, *&v22, 2);
            sub_1AAD7AAA4(&v229, *&v21, *&v22);

            v114 = v6[27];
            v115 = swift_isUniquelyReferenced_nonNull_native();
            v6[27] = v114;
            if ((v115 & 1) == 0)
            {
              v114 = sub_1AAD67908(0, *(v114 + 2) + 1, 1, v114);
              v6[27] = v114;
            }

            a3 = v223;
            v117 = *(v114 + 2);
            v116 = *(v114 + 3);
            if (v117 >= v116 >> 1)
            {
              v114 = sub_1AAD67908((v116 > 1), v117 + 1, 1, v114);
            }

            *(v114 + 2) = v117 + 1;
            v118 = &v114[16 * v117];
            *(v118 + 4) = v21;
            *(v118 + 5) = v22;
            v6[27] = v114;
            goto LABEL_300;
          }

          if ((~*&v21 & 0x7FF0000000000000) != 0)
          {
            if (v6[26])
            {
              *(v6 + 24) = v21;
              *(v6 + 25) = v21;
              *(v6 + 208) = 0;
            }

            else
            {
              v144 = v21;
              v145 = *(v6 + 24);
              if (v145 >= v21)
              {
                v145 = v21;
              }

              if (*(v6 + 25) >= v21)
              {
                v144 = *(v6 + 25);
              }

              *(v6 + 24) = v145;
              *(v6 + 25) = v144;
              *(v6 + 208) = 0;
            }
          }

          goto LABEL_12;
        }

        if ((~*&v21 & 0x7FF0000000000000) != 0)
        {
          if (v6[23])
          {
            *(v6 + 21) = v21;
            *(v6 + 22) = v21;
            *(v6 + 184) = 0;
          }

          else
          {
            v152 = v21;
            v153 = *(v6 + 21);
            if (v153 >= v21)
            {
              v153 = v21;
            }

            if (*(v6 + 22) >= v21)
            {
              v152 = *(v6 + 22);
            }

            *(v6 + 21) = v153;
            *(v6 + 22) = v152;
            *(v6 + 184) = 0;
          }
        }
      }

      else
      {
        swift_beginAccess();
        if (v23)
        {
          if (v23 != 1)
          {
            v63 = v6[38];
            if (*(v63 + 16))
            {
              sub_1AAF90694();
              sub_1AACD7C50(*&v21, *&v22, 2);
              sub_1AACD7C50(*&v21, *&v22, 2);
              v17 = v20;
              sub_1AACD7304(v20, v228, v227);

              sub_1AAF8F6C4();
              v64 = sub_1AAF906F4();
              v65 = -1 << *(v63 + 32);
              v66 = v64 & ~v65;
              if ((*(v63 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
              {
                v67 = ~v65;
                do
                {
                  v68 = (*(v63 + 48) + 16 * v66);
                  v69 = *v68 == *&v21 && *&v22 == v68[1];
                  if (v69 || (sub_1AAF904F4() & 1) != 0)
                  {
                    goto LABEL_229;
                  }

                  v66 = (v66 + 1) & v67;
                }

                while (((*(v63 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) != 0);
              }
            }

            else
            {
              sub_1AACD7C50(*&v21, *&v22, 2);
              sub_1AACD7C50(*&v21, *&v22, 2);
              v17 = v20;
              sub_1AACD7304(v20, v228, v227);
            }

            sub_1AACD7C50(*&v21, *&v22, 2);
            sub_1AAD7AAA4(&v229, *&v21, *&v22);

            v124 = v6[37];
            v125 = swift_isUniquelyReferenced_nonNull_native();
            v6[37] = v124;
            if ((v125 & 1) == 0)
            {
              v124 = sub_1AAD67908(0, *(v124 + 2) + 1, 1, v124);
              v6[37] = v124;
            }

            a3 = v223;
            v127 = *(v124 + 2);
            v126 = *(v124 + 3);
            if (v127 >= v126 >> 1)
            {
              v124 = sub_1AAD67908((v126 > 1), v127 + 1, 1, v124);
            }

            *(v124 + 2) = v127 + 1;
            v128 = &v124[16 * v127];
            *(v128 + 4) = v21;
            *(v128 + 5) = v22;
            v6[37] = v124;
            goto LABEL_300;
          }

          if ((~*&v21 & 0x7FF0000000000000) != 0)
          {
            if (v6[36])
            {
              *(v6 + 34) = v21;
              *(v6 + 35) = v21;
              *(v6 + 288) = 0;
            }

            else
            {
              v148 = v21;
              v149 = *(v6 + 34);
              if (v149 >= v21)
              {
                v149 = v21;
              }

              if (*(v6 + 35) >= v21)
              {
                v148 = *(v6 + 35);
              }

              *(v6 + 34) = v149;
              *(v6 + 35) = v148;
              *(v6 + 288) = 0;
            }
          }

          goto LABEL_12;
        }

        if ((~*&v21 & 0x7FF0000000000000) != 0)
        {
          if (v6[33])
          {
            *(v6 + 31) = v21;
            *(v6 + 32) = v21;
            *(v6 + 264) = 0;
          }

          else
          {
            v156 = v21;
            v157 = *(v6 + 31);
            if (v157 >= v21)
            {
              v157 = v21;
            }

            if (*(v6 + 32) >= v21)
            {
              v156 = *(v6 + 32);
            }

            *(v6 + 31) = v157;
            *(v6 + 32) = v156;
            *(v6 + 264) = 0;
          }
        }
      }
    }

    else if (a3)
    {
      swift_beginAccess();
      if (v23)
      {
        if (v23 != 1)
        {
          v56 = v6[19];
          if (*(v56 + 16))
          {
            sub_1AAF90694();
            sub_1AACD7C50(*&v21, *&v22, 2);
            sub_1AACD7C50(*&v21, *&v22, 2);
            v17 = v20;
            sub_1AACD7304(v20, v228, v227);

            sub_1AAF8F6C4();
            v57 = sub_1AAF906F4();
            v58 = -1 << *(v56 + 32);
            v59 = v57 & ~v58;
            if ((*(v56 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
            {
              v60 = ~v58;
              do
              {
                v61 = (*(v56 + 48) + 16 * v59);
                v62 = *v61 == *&v21 && *&v22 == v61[1];
                if (v62 || (sub_1AAF904F4() & 1) != 0)
                {
                  goto LABEL_229;
                }

                v59 = (v59 + 1) & v60;
              }

              while (((*(v56 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) != 0);
            }
          }

          else
          {
            sub_1AACD7C50(*&v21, *&v22, 2);
            sub_1AACD7C50(*&v21, *&v22, 2);
            v17 = v20;
            sub_1AACD7304(v20, v228, v227);
          }

          sub_1AACD7C50(*&v21, *&v22, 2);
          sub_1AAD7AAA4(&v229, *&v21, *&v22);

          v119 = v6[18];
          v120 = swift_isUniquelyReferenced_nonNull_native();
          v6[18] = v119;
          if ((v120 & 1) == 0)
          {
            v119 = sub_1AAD67908(0, *(v119 + 2) + 1, 1, v119);
            v6[18] = v119;
          }

          a3 = v223;
          v122 = *(v119 + 2);
          v121 = *(v119 + 3);
          if (v122 >= v121 >> 1)
          {
            v119 = sub_1AAD67908((v121 > 1), v122 + 1, 1, v119);
          }

          *(v119 + 2) = v122 + 1;
          v123 = &v119[16 * v122];
          *(v123 + 4) = v21;
          *(v123 + 5) = v22;
          v6[18] = v119;
          goto LABEL_300;
        }

        if ((~*&v21 & 0x7FF0000000000000) != 0)
        {
          if (v6[17])
          {
            *(v6 + 15) = v21;
            *(v6 + 16) = v21;
            *(v6 + 136) = 0;
          }

          else
          {
            v146 = v21;
            v147 = *(v6 + 15);
            if (v147 >= v21)
            {
              v147 = v21;
            }

            if (*(v6 + 16) >= v21)
            {
              v146 = *(v6 + 16);
            }

            *(v6 + 15) = v147;
            *(v6 + 16) = v146;
            *(v6 + 136) = 0;
          }
        }

        goto LABEL_12;
      }

      if ((~*&v21 & 0x7FF0000000000000) != 0)
      {
        if (v6[14])
        {
          *(v6 + 12) = v21;
          *(v6 + 13) = v21;
          *(v6 + 112) = 0;
        }

        else
        {
          v154 = v21;
          v155 = *(v6 + 12);
          if (v155 >= v21)
          {
            v155 = v21;
          }

          if (*(v6 + 13) >= v21)
          {
            v154 = *(v6 + 13);
          }

          *(v6 + 12) = v155;
          *(v6 + 13) = v154;
          *(v6 + 112) = 0;
        }
      }
    }

    else
    {
      swift_beginAccess();
      if (v23)
      {
        if (v23 != 1)
        {
          v42 = v6[10];
          if (*(v42 + 16))
          {
            sub_1AAF90694();
            sub_1AACD7C50(*&v21, *&v22, 2);
            sub_1AACD7C50(*&v21, *&v22, 2);
            v17 = v20;
            sub_1AACD7304(v20, v228, v227);

            sub_1AAF8F6C4();
            v43 = sub_1AAF906F4();
            v44 = -1 << *(v42 + 32);
            v45 = v43 & ~v44;
            if ((*(v42 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
            {
              v46 = ~v44;
              while (1)
              {
                v47 = (*(v42 + 48) + 16 * v45);
                v48 = *v47 == *&v21 && *&v22 == v47[1];
                if (v48 || (sub_1AAF904F4() & 1) != 0)
                {
                  break;
                }

                v45 = (v45 + 1) & v46;
                if (((*(v42 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
                {
                  goto LABEL_263;
                }
              }

LABEL_229:
              sub_1AAD0E818(*&v21, *&v22, 2);
              goto LABEL_299;
            }
          }

          else
          {
            sub_1AACD7C50(*&v21, *&v22, 2);
            sub_1AACD7C50(*&v21, *&v22, 2);
            v17 = v20;
            sub_1AACD7304(v20, v228, v227);
          }

LABEL_263:
          sub_1AACD7C50(*&v21, *&v22, 2);
          sub_1AAD7AAA4(&v229, *&v21, *&v22);

          v109 = v6[9];
          v110 = swift_isUniquelyReferenced_nonNull_native();
          v6[9] = v109;
          if ((v110 & 1) == 0)
          {
            v109 = sub_1AAD67908(0, *(v109 + 2) + 1, 1, v109);
            v6[9] = v109;
          }

          a3 = v223;
          v112 = *(v109 + 2);
          v111 = *(v109 + 3);
          if (v112 >= v111 >> 1)
          {
            v109 = sub_1AAD67908((v111 > 1), v112 + 1, 1, v109);
          }

          *(v109 + 2) = v112 + 1;
          v113 = &v109[16 * v112];
          *(v113 + 4) = v21;
          *(v113 + 5) = v22;
          v6[9] = v109;
          goto LABEL_300;
        }

        if ((~*&v21 & 0x7FF0000000000000) != 0)
        {
          if (v6[8])
          {
            *(v6 + 6) = v21;
            *(v6 + 7) = v21;
          }

          else
          {
            v142 = v21;
            v143 = *(v6 + 6);
            if (v143 >= v21)
            {
              v143 = v21;
            }

            if (*(v6 + 7) >= v21)
            {
              v142 = *(v6 + 7);
            }

            *(v6 + 6) = v143;
            *(v6 + 7) = v142;
          }

          *(v6 + 64) = 0;
        }

        goto LABEL_12;
      }

      if ((~*&v21 & 0x7FF0000000000000) != 0)
      {
        if (v6[5])
        {
          *(v6 + 3) = v21;
          *(v6 + 4) = v21;
        }

        else
        {
          v150 = v21;
          v151 = *(v6 + 3);
          if (v151 >= v21)
          {
            v151 = v21;
          }

          if (*(v6 + 4) >= v21)
          {
            v150 = *(v6 + 4);
          }

          *(v6 + 3) = v151;
          *(v6 + 4) = v150;
        }

        *(v6 + 40) = 0;
      }
    }

    goto LABEL_389;
  }
}

uint64_t sub_1AAE08020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AAF90194();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  KeyPath = swift_getKeyPath();
  (*(v6 + 16))(v8, a2, a3);
  sub_1AAF901A4();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1AAE8C6C0(v12, v9, WitnessTable);
  (*(v10 + 8))(v12, v9);
  if (*(v14 + 16))
  {
    v15 = *(v14 + 32);
    v16 = *(v14 + 40);
    v17 = *(v14 + 48);
    v18 = *(v14 + 56);
    v19 = *(v14 + 64);
    v20 = *(v14 + 72);
    v25 = *(v14 + 88);
    v21 = *(v14 + 80);
    sub_1AACD7304(v15, v16, v17);

    sub_1AACD7C50(v19, v20, v21);

    v37 = v17;
    v22 = *(a1 + 8);
    v23 = *(a1 + 16);
    swift_beginAccess();
    v27 = v15;
    v28 = v16;
    v29 = v17;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v33 = v21;
    v34 = v25;
    v35 = v22;
    v36 = v23;
    swift_setAtWritableKeyPath();
    swift_endAccess();
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_1AAE082D0(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4)
{
  nullsub_1(a3, a4);
  result = sub_1AACD3F0C();
  *a2 = result & 0x1FF;
  return result;
}

uint64_t sub_1AAE08320(uint64_t a1, uint64_t a2, unsigned __int8 a3, double a4)
{
  v5 = *v4;
  if (*(v4 + 104))
  {
    if (a3 == 2)
    {
      v8[0] = a1;
      v8[1] = a2;
      v5(&v9, v8);
      *&result = v9 + a4;
      return result;
    }
  }

  else if (a3 <= 1u)
  {
    v9 = *&a1;
    v5(v8, &v9);
    return v8[0];
  }

  *&result = 0.0;
  return result;
}

uint64_t sub_1AAE08400(uint64_t result, double a2)
{
  v4 = *v2;
  if (*(result + 64) < 0)
  {
    if (*(v2 + 104))
    {
      *&result = 0.0;
    }

    else
    {
      v6 = *(result + 48);
      v8 = *(result + 40);
      v4(&v9, &v8);
      v7 = v9;
      v8 = v6;
      v4(&v9, &v8);
      *&result = v7 + a2;
    }
  }

  else if (*(v2 + 104))
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 64);
    v8 = *(result + 40);
    v4(&v9, &v8);
    if (v5 >= 2)
    {
      *&result = v9 + a2;
    }

    else
    {
      *&result = v9;
    }
  }

  return result;
}

uint64_t sub_1AAE08520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a2 + 16);
  v10 = type metadata accessor for ConcreteScale();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v37 = v9;
  v13 = type metadata accessor for ConcreteScale();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - v15;
  v17 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  nullsub_1(a3, a4);
  v38 = a4;
  v39 = a3;
  v21 = sub_1AACD3F0C();
  (*(v17 + 16))(v20, v5, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v35;
    v22 = v36;
    (*(v35 + 32))(v12, v20, v36);
    if (v21 == 2)
    {
      v40 = sub_1AAF42384(v22);
      MEMORY[0x1EEE9AC00](v40);
      v24 = v38;
      v25 = v39;
      *(&v34 - 4) = v37;
      *(&v34 - 3) = v25;
      *(&v34 - 2) = v24;
      v26 = MEMORY[0x1E69E6158];
      sub_1AACAE398(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1AAE0C25C(&qword_1EB424F70, &qword_1ED9B0C88, v26);

      v27 = sub_1AAF8F764();

      (*(v23 + 8))(v12, v22);
      return v27;
    }

    (*(v23 + 8))(v12, v22);
  }

  else
  {
    (*(v14 + 32))(v16, v20, v13);
    if (v21 <= 1)
    {
      v29 = v16;
      v40 = sub_1AAF42384(v13);
      MEMORY[0x1EEE9AC00](v40);
      v30 = v38;
      v31 = v39;
      *(&v34 - 4) = v37;
      *(&v34 - 3) = v31;
      *(&v34 - 2) = v30;
      v32 = MEMORY[0x1E69E63B0];
      sub_1AACAE398(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
      sub_1AAE0C25C(qword_1EB424F78, &qword_1ED9B2A30, v32);

      v33 = sub_1AAF8F764();

      (*(v14 + 8))(v29, v13);
      return v33;
    }

    (*(v14 + 8))(v16, v13);
  }

  return 0;
}

uint64_t sub_1AAE08AB8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1AAF6AADC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1AAF6AADC(v2, v3);
}

uint64_t sub_1AAE08B14@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 == 6)
  {
    v6 = v3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolScale;
    swift_beginAccess();
    if (*(v6 + 128) == 255)
    {
      goto LABEL_13;
    }

    sub_1AACDB9A8(v6, v12, &qword_1ED9B3E08, &type metadata for AnyChartSymbolShape, type metadata accessor for AnyConcreteScale);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    if (v9 < 0)
    {
      v7 = (v7 + v8) * 0.5;
      LOBYTE(v9) = v9 & 1;
      v8 = 0.0;
    }

    else
    {
      sub_1AACCAE10(*(a1 + 32), *(a1 + 40), *(a1 + 48));
    }

    sub_1AAE296D8(*&v7, *&v8, v9, &v13);
    sub_1AACCA728(*&v7, *&v8, v9);
    result = sub_1AAE0BE80(v12, &qword_1ED9B3E08, &type metadata for AnyChartSymbolShape, type metadata accessor for AnyConcreteScale);
    if (!*(&v14 + 1))
    {
LABEL_13:
      if (qword_1ED9B0BD0 != -1)
      {
        swift_once();
      }

      return sub_1AAD9B194(&qword_1ED9C3450, a3);
    }

    else
    {
      v11 = v14;
      *a3 = v13;
      *(a3 + 16) = v11;
      *(a3 + 32) = v15;
    }
  }

  else
  {
    if (qword_1ED9B0BD0 != -1)
    {
      swift_once();
    }

    return sub_1AAD9B194(&qword_1ED9C3450, a3);
  }

  return result;
}

uint64_t sub_1AAE08D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unsigned int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  sub_1AACD6DF8(0, qword_1ED9B13F0, type metadata accessor for PlottableValue);
  v188 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v182 = (v166 - v11);
  sub_1AAE0C044(0, qword_1ED9B2620, type metadata accessor for ChartBinRange);
  v180 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v181 = v166 - v13;
  v14 = type metadata accessor for DateBins(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v192 = v166 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACAE0E8(0, &qword_1ED9B0F08, type metadata accessor for ChartContentRenderContext.Bins);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v184 = v166 - v17;
  v18 = sub_1AAF8CBA4();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v177 = v166 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACD57C4();
  v176 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v173 = v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v174 = v166 - v23;
  sub_1AAE0C044(0, &qword_1ED9B2AA0, MEMORY[0x1E69E5F90]);
  v175 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v183 = v166 - v25;
  v191 = sub_1AAF8CA64();
  v193 = *(v191 - 8);
  v26 = MEMORY[0x1EEE9AC00](v191);
  v179 = v166 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v187 = v166 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v178 = v166 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = v166 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v189 = v166 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v38 = v166 - v37;
  v39 = type metadata accessor for ChartContentRenderContext.Bins(0);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v186 = v166 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = v166 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42);
  v194 = (v166 - v47);
  if (*(a1 + 104))
  {
    v48 = a3;
    v49 = *(a4 + 32);
    v50 = *(a4 + 40);
    v51 = *(a4 + 48);
    v52 = sub_1AAD0E70C(v49, v50, v51, 0.0);
    if ((v54 & 1) == 0)
    {
      v55 = v52;
      v56 = v53;
      v57 = *(a4 + 24);
      v196 = *a4;
      LOBYTE(v197) = *(a4 + 16);
      v221[0] = v57;
      *&v214[7] = v196;
      *&v214[71] = *(a4 + 64);
      v58 = *(a4 + 32);
      *&v214[55] = *(a4 + 48);
      *&v214[39] = v58;
      *&v214[23] = *(a4 + 16);
      LOBYTE(v215[0]) = v48;
      *(v215 + 1) = *v214;
      v215[4] = *&v214[63];
      *(&v215[3] + 1) = *&v214[48];
      *(&v215[2] + 1) = *&v214[32];
      *(&v215[1] + 1) = *&v214[16];
      LOBYTE(v216) = 3;
      sub_1AAE0C0B0(v215);
      *a5 = v55;
      *(a5 + 8) = v56;
      v59 = v218;
      *(a5 + 112) = v217;
      *(a5 + 128) = v59;
      *(a5 + 144) = v219;
      *(a5 + 160) = v220;
      v60 = v215[3];
      *(a5 + 48) = v215[2];
      *(a5 + 64) = v60;
      v61 = v216;
      *(a5 + 80) = v215[4];
      *(a5 + 96) = v61;
      v62 = v215[1];
      *(a5 + 16) = v215[0];
      *(a5 + 32) = v62;
      sub_1AADFA6FC(&v196, v213);
      sub_1AACDB9A8(v221, v213, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      return sub_1AACD7C50(v49, v50, v51);
    }

    goto LABEL_54;
  }

  v171 = v45;
  v172 = v46;
  v185 = a4;
  v190 = a3;
  v64 = *a1;
  v169 = *(a1 + 8);
  v170 = v64;
  v65 = *(a1 + 48);
  v66 = OBJC_IVAR____TtC6Charts25ChartContentRenderContext_accessibilityElementBins;
  swift_beginAccess();
  v168 = a2;
  v67 = *(a2 + v66);
  if (*(v67 + 16))
  {
    v68 = sub_1AACE1760(v190);
    if (v69)
    {
      sub_1AAE0C0E0(*(v67 + 56) + *(v172 + 72) * v68, v44, type metadata accessor for ChartContentRenderContext.Bins);
      v70 = v44;
      v71 = v194;
      sub_1AACD5894(v70, v194, type metadata accessor for ChartContentRenderContext.Bins);
      swift_endAccess();
      v72 = v185;
      v73 = v186;
      goto LABEL_31;
    }
  }

  swift_endAccess();
  v74 = *(v185 + 48);
  v75 = *(v185 + 48);
  v166[1] = v66;
  if (v74 < 0)
  {
    v76 = v189;
    if (v75)
    {
      goto LABEL_12;
    }

LABEL_21:
    v96 = *(v65 + 16);
    if (v96)
    {
      v97 = *(v65 + 32);
      v98 = v65 + 32 + 8 * v96;
      v99 = *(v98 - 8);
      if (v99 >= v97)
      {
        v100 = *(v65 + 32);
      }

      else
      {
        v100 = *(v98 - 8);
      }

      if (v97 > v99)
      {
        v101 = *(v65 + 32);
      }

      else
      {
        v101 = *(v98 - 8);
      }

      if (v100 <= v101)
      {
        v102 = sub_1AADEAF9C(11, 1, 1, v100, v101, 0.0);
        sub_1AAEC512C(v215, v102, v100, v101);
        v103 = v215[1];
        v71 = v194;
        *v194 = v215[0];
        v71[1] = v103;
        v71[2] = v215[2];
        *(v71 + 41) = *(&v215[2] + 9);
        v95 = v171;
        swift_storeEnumTagMultiPayload();
        goto LABEL_30;
      }

      goto LABEL_51;
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v76 = v189;
  if (!v75)
  {
    goto LABEL_21;
  }

  if (v75 != 1)
  {
    goto LABEL_54;
  }

LABEL_12:
  v167 = a5;
  if (!*(v65 + 16))
  {
    goto LABEL_50;
  }

  sub_1AAF8C844();
  sub_1AAF8C844();
  sub_1AACD6CE8();
  v77 = v191;
  v78 = sub_1AAF8F564();
  v79 = v193;
  v80 = *(v193 + 16);
  if (v78)
  {
    v81 = v76;
  }

  else
  {
    v81 = v38;
  }

  v80(v34, v81, v77);
  v82 = sub_1AAF8F574();
  v166[0] = v38;
  if (v82)
  {
    v83 = v76;
  }

  else
  {
    v83 = v38;
  }

  v84 = v178;
  v80(v178, v83, v77);
  v85 = v84;
  if ((sub_1AAF8F584() & 1) == 0)
  {
    goto LABEL_52;
  }

  v86 = *(v79 + 32);
  v87 = v174;
  v86(v174, v34, v77);
  v88 = v176;
  v86((v87 + *(v176 + 48)), v85, v77);
  v89 = v173;
  sub_1AAE0C0E0(v87, v173, sub_1AACD57C4);
  v178 = *(v88 + 48);
  v86(v183, v89, v77);
  v90 = v77;
  v91 = *(v193 + 8);
  v91(&v178[v89], v77);
  sub_1AACD5894(v87, v89, sub_1AACD57C4);
  v92 = *(v88 + 48);
  v93 = v183;
  v86(&v183[*(v175 + 36)], (v89 + v92), v77);
  v91(v89, v77);
  v94 = v177;
  sub_1AAF8CB34();
  v71 = v194;
  DateBins.init(range:desiredCount:calendar:)(v93, 10, v94, v194);
  v91(v189, v90);
  v91(v166[0], v90);
  v95 = v171;
  swift_storeEnumTagMultiPayload();
  a5 = v167;
LABEL_30:
  v104 = v190;
  v105 = v184;
  v73 = v186;
  sub_1AAE0C0E0(v71, v184, type metadata accessor for ChartContentRenderContext.Bins);
  (*(v172 + 56))(v105, 0, 1, v95);
  swift_beginAccess();
  sub_1AADAE5B8(v105, v104);
  swift_endAccess();
  v72 = v185;
LABEL_31:
  sub_1AAE0C0E0(v71, v73, type metadata accessor for ChartContentRenderContext.Bins);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v107 = v73[1];
    *v214 = *v73;
    v108 = v73[2];
    *&v214[16] = v107;
    *&v214[32] = v108;
    *&v214[41] = *(v73 + 41);
    v109 = *(v72 + 48);
    if (v109 < 0)
    {
      if (v109)
      {
        goto LABEL_54;
      }

      v110 = (*(v72 + 40) + *(v72 + 32)) * 0.5;
    }

    else
    {
      if (*(v72 + 48))
      {
        goto LABEL_54;
      }

      v110 = *(v72 + 32);
    }

    *&v196 = v110;
    if (!v214[56])
    {
      goto LABEL_46;
    }

    if (v214[56] == 1)
    {
      v144 = sub_1AADE8FD0(*(*v214 + 16), *v214, v110);
      if ((v145 & 1) == 0)
      {
LABEL_47:
        sub_1AAEC53D4(v144, v215);
        v148 = v215[0];
        v213[0] = *&v215[0];
        v149 = v170;
        v170(v215, v213);
        v116 = *&v215[0];
        v213[0] = *(&v148 + 1);
        v149(v215, v213);
        v118 = *&v215[0];
        sub_1AAF8E214();
        v193 = sub_1AAF8EA44();
        v151 = v150;
        v153 = v152;
        v195 = v154 & 1;
        sub_1AAF8E214();
        v155 = sub_1AAF8EA44();
        v157 = v156;
        v159 = v158;
        v161 = v160;
        sub_1AACE3448(v214, sub_1AAD172C4);
        sub_1AACE3448(v194, type metadata accessor for ChartContentRenderContext.Bins);
        LOBYTE(v221[0]) = v159 & 1;
        LOBYTE(v215[0]) = v190;
        *(v215 + 1) = v213[0];
        DWORD1(v215[0]) = *(v213 + 3);
        *(&v215[0] + 1) = v193;
        *&v215[1] = v151;
        BYTE8(v215[1]) = v195;
        *&v215[2] = v153;
        *(&v215[2] + 1) = v148;
        *&v215[3] = 0;
        BYTE8(v215[3]) = 0;
        *&v215[4] = MEMORY[0x1E69E63B0];
        *(&v215[4] + 1) = &protocol witness table for Double;
        *&v216 = v155;
        *(&v216 + 1) = v157;
        LOBYTE(v217) = v159 & 1;
        *(&v217 + 1) = v161;
        v218 = *(&v148 + 1);
        LOBYTE(v219) = 0;
        *(&v219 + 1) = MEMORY[0x1E69E63B0];
        v220 = &protocol witness table for Double;
        result = sub_1AAE0C1C0(v215);
        v209 = v217;
        v210 = v218;
        v211 = v219;
        v205 = v215[2];
        v206 = v215[3];
        v207 = v215[4];
        v208 = v216;
        v203 = v215[0];
        v212 = v220;
        v204 = v215[1];
        goto LABEL_48;
      }

      __break(1u);
LABEL_46:
      v146 = *&v214[40];
      sub_1AAE0C0E0(v214, v215, sub_1AAD172C4);
      v147 = v146(&v196);

      v144 = v147;
      goto LABEL_47;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  sub_1AACD5894(v73, v192, type metadata accessor for DateBins);
  v106 = *(v72 + 48);
  v167 = a5;
  if (v106 < 0)
  {
    if (v106)
    {
LABEL_39:
      v111 = v187;
      sub_1AAF8C844();
      v112 = DateBins.index(for:)(v111);
      v113 = v181;
      DateBins.subscript.getter(v112, v181);
      sub_1AAF8C854();
      *v214 = v114;
      v115 = v170;
      v170(v215, v214);
      v116 = *&v215[0];
      v189 = *(v180 + 36);
      sub_1AAF8C854();
      *v214 = v117;
      v115(v215, v214);
      v118 = *&v215[0];
      sub_1AAF8E214();
      v119 = sub_1AAF8EA44();
      v121 = v120;
      v123 = v122;
      v125 = v124;
      v126 = v193;
      v127 = *(v193 + 16);
      v185 = v193 + 16;
      v186 = v127;
      v128 = v179;
      v129 = v113;
      v130 = v113;
      v131 = v191;
      (v127)(v179, v129, v191);
      v132 = v182;
      *v182 = v119;
      *(v132 + 8) = v121;
      *(v132 + 16) = v123 & 1;
      *(v132 + 24) = v125;
      v133 = *(v188 + 36);
      v183 = *(v126 + 32);
      v184 = v126 + 32;
      v134 = v128;
      (v183)(v132 + v133, v128, v131);
      sub_1AACD6DF8(0, &qword_1ED9B0BE8, type metadata accessor for PlottableValue.Storage);
      v180 = v135;
      swift_storeEnumTagMultiPayload();
      sub_1AAE799EC(v132, &v196);
      sub_1AAF8E214();
      v136 = sub_1AAF8EA44();
      v138 = v137;
      LOBYTE(v125) = v139;
      v141 = v140;
      v142 = v128;
      v143 = v191;
      (v186)(v142, &v189[v130], v191);
      *v132 = v136;
      *(v132 + 8) = v138;
      *(v132 + 16) = v125 & 1;
      *(v132 + 24) = v141;
      (v183)(v132 + *(v188 + 36), v134, v143);
      swift_storeEnumTagMultiPayload();
      sub_1AAE799EC(v132, v201);
      sub_1AAE0C148(v130);
      (*(v193 + 8))(v187, v143);
      sub_1AACE3448(v192, type metadata accessor for DateBins);
      sub_1AACE3448(v194, type metadata accessor for ChartContentRenderContext.Bins);
      *&v214[7] = v196;
      *&v214[23] = v197;
      *&v214[39] = v198;
      *&v214[55] = v199;
      *&v214[71] = v200;
      LOBYTE(v215[0]) = v190;
      *(&v215[1] + 1) = *&v214[16];
      *(&v215[2] + 1) = *&v214[32];
      *(&v215[3] + 1) = *&v214[48];
      *(v215 + 1) = *v214;
      v217 = v201[1];
      v218 = v201[2];
      v219 = v201[3];
      v220 = v202;
      v215[4] = *&v214[63];
      v216 = v201[0];
      result = sub_1AAE0C1C0(v215);
      v209 = v217;
      v210 = v218;
      v211 = v219;
      v205 = v215[2];
      v206 = v215[3];
      v207 = v215[4];
      v208 = v216;
      v203 = v215[0];
      v212 = v220;
      v204 = v215[1];
      a5 = v167;
LABEL_48:
      *a5 = v116;
      *(a5 + 8) = v118;
      v162 = v210;
      *(a5 + 112) = v209;
      *(a5 + 128) = v162;
      *(a5 + 144) = v211;
      *(a5 + 160) = v212;
      v163 = v206;
      *(a5 + 48) = v205;
      *(a5 + 64) = v163;
      v164 = v208;
      *(a5 + 80) = v207;
      *(a5 + 96) = v164;
      v165 = v204;
      *(a5 + 16) = v203;
      *(a5 + 32) = v165;
      return result;
    }
  }

  else if (v106 == 1)
  {
    goto LABEL_39;
  }

LABEL_54:
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AAE09F60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAE09FC4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AAE0A00C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AAE0A050(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1AAE0A0B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1AAE0A0D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DimensionOffset(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DimensionOffset(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1AAE0A1DC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v5 = (((((v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  if (a2 < 0xFF)
  {
    goto LABEL_28;
  }

  v6 = v5 + 33;
  if ((v5 + 33) <= 3)
  {
    v7 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = *&a1[v6];
      if (*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v10 = *&a1[v6];
      if (v10)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    v14 = a1[v5 + 32];
    if (v14 >= 2)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v9)
  {
    goto LABEL_28;
  }

  v10 = a1[v6];
  if (!a1[v6])
  {
    goto LABEL_28;
  }

LABEL_24:
  v12 = (v10 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return (v13 | v12) + 255;
}

void sub_1AAE0A314(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v7 = (((((v6 + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + 33;
  if (a3 < 0xFF)
  {
    v11 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_17;
    }

LABEL_25:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      *&a1[v8] = 0;
    }

    else if (v11)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_35:
      a1[v7 + 32] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (v8 <= 3)
  {
    v9 = ((a3 + 1) >> 8) + 1;
  }

  else
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (a2 <= 0xFE)
  {
    goto LABEL_25;
  }

LABEL_17:
  v12 = a2 - 255;
  v13 = (a2 - 255) >> 8;
  bzero(a1, v7 + 33);
  if (v8 <= 3)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v12;
    if (v11 > 1)
    {
LABEL_22:
      if (v11 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v12;
    if (v11 > 1)
    {
      goto LABEL_22;
    }
  }

  if (v11)
  {
    a1[v8] = v14;
  }
}

uint64_t getEnumTagSinglePayload for EncodableProperty(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EncodableProperty(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1AAE0A600()
{
  result = qword_1EB424F58;
  if (!qword_1EB424F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424F58);
  }

  return result;
}

BOOL sub_1AAE0A668(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = sub_1AAF8E7A4();
  if (v4 != sub_1AAF8E7A4() || a1[2] != a2[2] || (sub_1AAE83970(*(a1 + 1), *(a1 + 2), a1[24], *(a2 + 1), *(a2 + 2), a2[24]) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[48];
  v6 = a2[48];
  if (v5 <= 0xFB)
  {
    return v6 <= 0xFB && (sub_1AAE83970(*(a1 + 4), *(a1 + 5), v5, *(a2 + 4), *(a2 + 5), v6) & 1) != 0;
  }

  return v6 > 0xFB;
}

uint64_t sub_1AAE0A738@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, double a4@<X3>, unsigned __int8 a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  _Q0 = vdupq_n_s64(0x7FF8000000000000uLL);
  v10 = 0.0;
  if (a6 == 3)
  {
    v11 = &OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale;
  }

  else
  {
    if (a6 != 4)
    {
LABEL_8:
      v24 = 0.0;
      v26 = 0;
      goto LABEL_9;
    }

    v11 = &OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale;
  }

  v12 = (v7 + *v11);
  *&v47[9] = *(v12 + 89);
  v13 = v12[5];
  v46 = v12[4];
  *v47 = v13;
  v14 = v12[1];
  v42 = *v12;
  v43 = v14;
  v15 = v12[3];
  v44 = v12[2];
  v45 = v15;
  if (v47[24] == 255)
  {
    goto LABEL_8;
  }

  v38 = v46;
  v39 = *v47;
  v40 = *&v47[16];
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v37 = v45;
  v41 = v47[24];
  v32[0] = v42;
  v32[1] = v43;
  *&v33[9] = *&v47[9];
  v32[4] = v46;
  *v33 = *v47;
  v32[2] = v44;
  v32[3] = v45;
  v18 = MEMORY[0x1E69E7DE0];
  v19 = result;
  sub_1AACDB9A8(v32, &v31, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
  v22 = COERCE_DOUBLE(sub_1AAD0E70C(v19, a2, a3, 0.0));
  v24 = v23;
  LOBYTE(a2) = v25;
  result = sub_1AACE337C(&v42, &qword_1ED9B3E30, &qword_1ED9B3E38, v18);
  if (a2)
  {
    v24 = 0.0;
    v26 = 0;
    _Q0 = vdupq_n_s64(0x7FF8000000000000uLL);
  }

  else
  {
    _Q0.f64[0] = v22;
    _Q0.f64[1] = v24;
    if (a5 > 1u)
    {
      if (a5 == 2)
      {
        v10 = (1.0 - (v24 + v24)) * a4;
        _Q0.f64[1] = (1.0 - (v22 + v22)) * a4;
        v26 = 1;
      }

      else
      {
        v24 = 0.0;
        v26 = 0;
        _Q0 = vaddq_f64(vmulq_f64(_Q0, vdupq_n_s64(0x3FE6666666666666uLL)), vdupq_n_s64(0x3FC3333333333334uLL));
      }
    }

    else if (a5)
    {
      v24 = 0.0;
      v26 = 0;
      _Q0 = vaddq_f64(vdupq_lane_s64(COERCE__INT64((1.0 - a4) * 0.5), 0), vmulq_n_f64(_Q0, a4));
    }

    else
    {
      v10 = (v24 + -0.5) * a4;
      __asm { FMOV            V0.2D, #0.5 }

      _Q0.f64[1] = (v22 + -0.5) * a4;
      v26 = 1;
      v24 = 0.5;
    }
  }

LABEL_9:
  *a7 = _Q0;
  *(a7 + 16) = v24;
  *(a7 + 24) = v10;
  *(a7 + 32) = v26;
  return result;
}

uint64_t sub_1AAE0A9CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned __int8 a8@<W7>, uint64_t a9@<X8>)
{
  v17 = 0.0;
  if (result != 1)
  {
    if (result)
    {
      goto LABEL_35;
    }

    swift_beginAccess();
    memcpy(__dst, (a2 + 80), sizeof(__dst));
    v107 = a3;
    if (*&__dst[24])
    {
      v109 = a4;
      v98 = a5;
      v100 = a6;
      v102 = a7;
      v104 = a8;
      v18 = *(a2 + 128);
      v132 = *(a2 + 112);
      v133 = v18;
      v134 = *(a2 + 144);
      v135 = *(a2 + 160);
      v19 = *(a2 + 96);
      v130 = *(a2 + 80);
      v131 = v19;
LABEL_5:
      v21 = *(&v130 + 1);
      v20 = v130;
      v22 = v131;
      v23 = *(&v132 + 1);
      v24 = v132;
      v25 = *(&v134 + 1);
      v26 = v135;
      v27 = v133;
      sub_1AACDB9A8(__dst, &v111, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AAE0BFDC(&v130, &v111);
      sub_1AAE0A738(v24, v23, v27, v25, v26, 3, &v137);
      v29 = v137;
      v28 = v138;
      v30 = v139;
      v97 = v140;
      v31 = v141;
      sub_1AAE0C014(&v130);
      sub_1AAD04750(v20, v21, v22);

      sub_1AAD0E818(v24, v23, v27);
      a8 = v104;
      a6 = v100;
      a7 = v102;
      a5 = v98;
      a4 = v109;
      goto LABEL_19;
    }

    v29 = 0.0;
    if (__dst[257] != 2)
    {
      sub_1AACBB21C(__dst, &v111);
      v45 = sub_1AAF8E7A4();
      if (v45 == sub_1AAF8E7A4())
      {
        sub_1AACDB9A8(&__dst[176], &v111, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AACBB254(__dst);
        if (*&__dst[200])
        {
          v109 = a4;
          v98 = a5;
          v100 = a6;
          v102 = a7;
          v104 = a8;
          v130 = *&__dst[176];
          v131 = *&__dst[192];
          v132 = *&__dst[208];
          v133 = *&__dst[224];
          v134 = *&__dst[240];
          v135 = __dst[256];
          goto LABEL_5;
        }
      }

      else
      {
        sub_1AACBB254(__dst);
      }
    }

    v31 = 2;
    v28 = 0.0;
    v30 = 0.0;
    v97 = 0.0;
LABEL_19:
    v47 = a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    result = type metadata accessor for ChartContentRenderContext.Environment(0);
    v48 = v47 + *(result + 84);
    v50 = *(v48 + 8);
    v49 = *(v48 + 16);
    v51 = *(a2 + 352);
    v52 = (a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
    *&v129[9] = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 89);
    v53 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80);
    v128 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64);
    *v129 = v53;
    v54 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16);
    v124 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
    v125 = v54;
    v55 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48);
    v126 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32);
    v127 = v55;
    if (v129[24] != 255)
    {
      v106 = v30;
      v56 = v29;
      v57 = v52[5];
      v122 = v52[4];
      v123[0] = v57;
      *(v123 + 9) = *(v52 + 89);
      v58 = v52[1];
      v118 = *v52;
      v119 = v58;
      v59 = v52[3];
      v120 = v52[2];
      v121 = v59;
      v111 = v118;
      v112 = v58;
      v113 = v120;
      v114 = v59;
      v115 = v122;
      v116[0] = v57;
      *(v116 + 9) = *(v123 + 9);
      sub_1AACDB9A8(&v118, v117, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
      v60 = COERCE_DOUBLE(sub_1AAD0E70C(v107, a4, a5, v51));
      if (v62)
      {
        v63 = NAN;
        v64 = NAN;
      }

      else
      {
        v64 = v60;
        v63 = v61;
        if (v31)
        {
          if (v31 == 1)
          {
            v64 = v28 + v56 * (v61 - v60) + v60;
            v63 = v97 + v106 * (v61 - v60) + v60;
          }
        }

        else
        {
          v63 = v28 * (v61 - v60) + v60;
          v64 = v56 * (v61 - v60) + v60;
        }
      }

      *&v65 = COERCE_DOUBLE(sub_1AAD0E70C(a6, a7, a8, v51));
      v67 = v66;
      v69 = v68;
      result = sub_1AACE337C(&v124, &qword_1ED9B3E30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0]);
      if ((v69 & 1) == 0)
      {
        v70 = *&v65;
        v71 = v67;
        if (v31)
        {
          if (v31 != 1)
          {
            goto LABEL_46;
          }

          goto LABEL_44;
        }

LABEL_45:
        v94 = v71 - v70;
        v95 = v56 * v94;
        v71 = v28 * v94 + v70;
        v70 = v95 + v70;
        goto LABEL_46;
      }

      goto LABEL_41;
    }

LABEL_35:
    v85 = 1;
    v86 = 0.0;
    goto LABEL_60;
  }

  swift_beginAccess();
  memcpy(__dst, (a2 + 80), sizeof(__dst));
  v110 = a4;
  if (*&__dst[112])
  {
    v108 = a3;
    v99 = a5;
    v101 = a6;
    v103 = a7;
    v105 = a8;
    v32 = *(a2 + 184);
    v33 = *(a2 + 216);
    v132 = *(a2 + 200);
    v133 = v33;
    v134 = *(a2 + 232);
    v135 = *(a2 + 248);
    v130 = *(a2 + 168);
    v131 = v32;
LABEL_8:
    v35 = *(&v130 + 1);
    v34 = v130;
    v36 = v131;
    v38 = *(&v132 + 1);
    v37 = v132;
    v39 = *(&v134 + 1);
    v40 = v135;
    v41 = v133;
    sub_1AACDB9A8(&__dst[88], &v111, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
    sub_1AAE0BFDC(&v130, &v111);
    sub_1AAE0A738(v37, v38, v41, v39, v40, 4, &v137);
    v42 = v137;
    v28 = v138;
    v43 = v139;
    v97 = v140;
    v44 = v141;
    sub_1AAE0C014(&v130);
    sub_1AAD04750(v34, v35, v36);

    sub_1AAD0E818(v37, v38, v41);
    a8 = v105;
    a6 = v101;
    a7 = v103;
    a5 = v99;
    a3 = v108;
    goto LABEL_32;
  }

  v42 = 0.0;
  if (__dst[257] != 2)
  {
    sub_1AACBB21C(__dst, &v111);
    v46 = sub_1AAF8E7A4();
    if (v46 == sub_1AAF8E7A4())
    {
      sub_1AACDB9A8(&__dst[176], &v111, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AACBB254(__dst);
      if (*&__dst[200])
      {
        v108 = a3;
        v99 = a5;
        v101 = a6;
        v103 = a7;
        v105 = a8;
        v130 = *&__dst[176];
        v131 = *&__dst[192];
        v132 = *&__dst[208];
        v133 = *&__dst[224];
        v134 = *&__dst[240];
        v135 = __dst[256];
        goto LABEL_8;
      }
    }

    else
    {
      sub_1AACBB254(__dst);
    }
  }

  v44 = 2;
  v28 = 0.0;
  v43 = 0.0;
  v97 = 0.0;
LABEL_32:
  v72 = a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  result = type metadata accessor for ChartContentRenderContext.Environment(0);
  v73 = v72 + *(result + 88);
  v50 = *(v73 + 8);
  v49 = *(v73 + 16);
  v74 = *(a2 + 368);
  v75 = (a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
  *&v129[9] = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 89);
  v76 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80);
  v128 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64);
  *v129 = v76;
  v77 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16);
  v124 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
  v125 = v77;
  v78 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48);
  v126 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32);
  v127 = v78;
  if (v129[24] == 255)
  {
    goto LABEL_35;
  }

  v106 = v43;
  v56 = v42;
  v79 = v75[5];
  v122 = v75[4];
  v123[0] = v79;
  *(v123 + 9) = *(v75 + 89);
  v80 = v75[1];
  v118 = *v75;
  v119 = v80;
  v81 = v75[3];
  v120 = v75[2];
  v121 = v81;
  v111 = v118;
  v112 = v80;
  v113 = v120;
  v114 = v81;
  v115 = v122;
  v116[0] = v79;
  *(v116 + 9) = *(v123 + 9);
  sub_1AACDB9A8(&v118, v117, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
  v82 = COERCE_DOUBLE(sub_1AAD0E70C(a3, v110, a5, v74));
  if (v84)
  {
    v63 = NAN;
    v64 = NAN;
  }

  else
  {
    v64 = v82;
    v63 = v83;
    if (v44)
    {
      if (v44 == 1)
      {
        v64 = v28 + v56 * (v83 - v82) + v82;
        v63 = v97 + v106 * (v83 - v82) + v82;
      }
    }

    else
    {
      v63 = v28 * (v83 - v82) + v82;
      v64 = v56 * (v83 - v82) + v82;
    }
  }

  *&v87 = COERCE_DOUBLE(sub_1AAD0E70C(a6, a7, a8, v74));
  v89 = v88;
  v91 = v90;
  result = sub_1AACE337C(&v124, &qword_1ED9B3E30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0]);
  if (v91)
  {
LABEL_41:
    v71 = NAN;
    v70 = NAN;
    goto LABEL_46;
  }

  v70 = *&v87;
  v71 = v89;
  if (!v44)
  {
    goto LABEL_45;
  }

  if (v44 == 1)
  {
LABEL_44:
    v92 = v71 - v70;
    v93 = v28 + v56 * v92 + v70;
    v71 = v97 + v106 * v92 + v70;
    v70 = v93;
  }

LABEL_46:
  if (v63 + v64 >= v71 + v70)
  {
    if (v71 >= v70)
    {
      v96 = v70;
    }

    else
    {
      v96 = v71;
    }

    if (v64 > v63)
    {
      v70 = v64;
    }

    else
    {
      v70 = v63;
    }
  }

  else
  {
    if (v63 >= v64)
    {
      v96 = v64;
    }

    else
    {
      v96 = v63;
    }

    if (v70 <= v71)
    {
      v70 = v71;
    }
  }

  v85 = 0;
  v86 = v49 + v70;
  v17 = v50 + v96;
LABEL_60:
  *a9 = v17;
  *(a9 + 8) = v86;
  *(a9 + 16) = v17;
  *(a9 + 24) = v86;
  *(a9 + 32) = v17;
  *(a9 + 40) = v86;
  *(a9 + 48) = v85;
  return result;
}

uint64_t sub_1AAE0B2CC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a1 != 1)
  {
    if (a1)
    {
      goto LABEL_29;
    }

    swift_beginAccess();
    memcpy(__dst, (a2 + 80), sizeof(__dst));
    if (*&__dst[24])
    {
      v76 = a3;
      v78 = a4;
      v80 = a5;
      v9 = *(a2 + 128);
      v103 = *(a2 + 112);
      v104 = v9;
      v105 = *(a2 + 144);
      v106 = *(a2 + 160);
      v10 = *(a2 + 96);
      v101 = *(a2 + 80);
      v102 = v10;
LABEL_5:
      v12 = *(&v101 + 1);
      v11 = v101;
      v13 = v102;
      v15 = *(&v103 + 1);
      v14 = v103;
      v16 = *(&v105 + 1);
      v17 = v106;
      v18 = v104;
      sub_1AACDB9A8(__dst, &v82, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AAE0BFDC(&v101, &v82);
      sub_1AAE0A738(v14, v15, v18, v16, v17, 3, &v108);
      v19 = v108;
      v20 = v109;
      v21 = v110;
      v22 = v111;
      v23 = v112;
      sub_1AAE0C014(&v101);
      sub_1AAD04750(v11, v12, v13);

      sub_1AAD0E818(v14, v15, v18);
      a5 = v80;
      a3 = v76;
      a4 = v78;
      goto LABEL_20;
    }

    v23 = __dst[257];
    v19 = 0.0;
    if (__dst[257] != 2)
    {
      sub_1AACBB21C(__dst, &v82);
      v34 = sub_1AAF8E7A4();
      if (v34 == sub_1AAF8E7A4())
      {
        sub_1AACDB9A8(&__dst[176], &v82, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AACBB254(__dst);
        if (*&__dst[200])
        {
          v76 = a3;
          v78 = a4;
          v80 = a5;
          v101 = *&__dst[176];
          v102 = *&__dst[192];
          v103 = *&__dst[208];
          v104 = *&__dst[224];
          v105 = *&__dst[240];
          v106 = __dst[256];
          goto LABEL_5;
        }
      }

      else
      {
        sub_1AACBB254(__dst);
      }

      v23 = 2;
    }

    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
LABEL_20:
    v36 = a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    v37 = *(v36 + *(type metadata accessor for ChartContentRenderContext.Environment(0) + 84));
    v38 = *(a2 + 352);
    v39 = (a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
    *&v100[9] = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 89);
    v40 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80);
    v99 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64);
    *v100 = v40;
    v41 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16);
    v95 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
    v96 = v41;
    v42 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48);
    v97 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32);
    v98 = v42;
    if (v100[24] != 255)
    {
      v43 = v39[5];
      v93 = v39[4];
      v94[0] = v43;
      *(v94 + 9) = *(v39 + 89);
      v44 = v39[1];
      v89 = *v39;
      v90 = v44;
      v45 = v39[3];
      v91 = v39[2];
      v92 = v45;
      v82 = v89;
      v83 = v44;
      v84 = v91;
      v85 = v45;
      v86 = v93;
      v87[0] = v43;
      *(v87 + 9) = *(v94 + 9);
      v46 = MEMORY[0x1E69E7DE0];
      sub_1AACDB9A8(&v89, v88, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
      v47 = COERCE_DOUBLE(sub_1AAD0E70C(a3, a4, a5, v38));
      v49 = v48;
      v51 = v50;
      sub_1AACE337C(&v95, &qword_1ED9B3E30, &qword_1ED9B3E38, v46);
      if ((v51 & 1) == 0)
      {
        v52 = v47;
        v53 = v49;
        v54 = v49 - v47;
        if (v23)
        {
          v55 = v23 == 1;
          goto LABEL_32;
        }

        goto LABEL_36;
      }

      goto LABEL_28;
    }

LABEL_29:
    *&result = 0.0;
    return result;
  }

  swift_beginAccess();
  memcpy(__dst, (a2 + 80), sizeof(__dst));
  if (*&__dst[112])
  {
    v77 = a3;
    v79 = a4;
    v81 = a5;
    v24 = *(a2 + 184);
    v25 = *(a2 + 216);
    v103 = *(a2 + 200);
    v104 = v25;
    v105 = *(a2 + 232);
    v106 = *(a2 + 248);
    v101 = *(a2 + 168);
    v102 = v24;
LABEL_8:
    v26 = v101;
    v27 = v102;
    v29 = *(&v103 + 1);
    v28 = v103;
    v30 = *(&v105 + 1);
    v31 = v106;
    v32 = v104;
    sub_1AACDB9A8(&__dst[88], &v82, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
    sub_1AAE0BFDC(&v101, &v82);
    sub_1AAE0A738(v28, v29, v32, v30, v31, 4, &v108);
    v19 = v108;
    v20 = v109;
    v21 = v110;
    v22 = v111;
    v33 = v112;
    sub_1AAE0C014(&v101);
    sub_1AAD04750(v26, *(&v26 + 1), v27);

    sub_1AAD0E818(v28, v29, v32);
    a5 = v81;
    a3 = v77;
    a4 = v79;
    goto LABEL_26;
  }

  v19 = 0.0;
  if (__dst[257] != 2)
  {
    sub_1AACBB21C(__dst, &v82);
    v35 = sub_1AAF8E7A4();
    if (v35 == sub_1AAF8E7A4())
    {
      sub_1AACDB9A8(&__dst[176], &v82, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AACBB254(__dst);
      if (*&__dst[200])
      {
        v77 = a3;
        v79 = a4;
        v81 = a5;
        v101 = *&__dst[176];
        v102 = *&__dst[192];
        v103 = *&__dst[208];
        v104 = *&__dst[224];
        v105 = *&__dst[240];
        v106 = __dst[256];
        goto LABEL_8;
      }
    }

    else
    {
      sub_1AACBB254(__dst);
    }
  }

  v33 = 2;
  v20 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
LABEL_26:
  v56 = a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v37 = *(v56 + *(type metadata accessor for ChartContentRenderContext.Environment(0) + 88));
  v57 = *(a2 + 368);
  v58 = (a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
  *&v100[9] = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 89);
  v59 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80);
  v99 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64);
  *v100 = v59;
  v60 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16);
  v95 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
  v96 = v60;
  v61 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48);
  v97 = *(a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32);
  v98 = v61;
  if (v100[24] == 255)
  {
    goto LABEL_29;
  }

  v62 = v58[5];
  v93 = v58[4];
  v94[0] = v62;
  *(v94 + 9) = *(v58 + 89);
  v63 = v58[1];
  v89 = *v58;
  v90 = v63;
  v64 = v58[3];
  v91 = v58[2];
  v92 = v64;
  v82 = v89;
  v83 = v63;
  v84 = v91;
  v85 = v64;
  v86 = v93;
  v87[0] = v62;
  *(v87 + 9) = *(v94 + 9);
  v65 = MEMORY[0x1E69E7DE0];
  sub_1AACDB9A8(&v89, v88, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
  v66 = COERCE_DOUBLE(sub_1AAD0E70C(a3, a4, a5, v57));
  v68 = v67;
  v70 = v69;
  sub_1AACE337C(&v95, &qword_1ED9B3E30, &qword_1ED9B3E38, v65);
  if ((v70 & 1) == 0)
  {
    v52 = v66;
    v53 = v68;
    if (v33)
    {
      v55 = v33 == 1;
      v54 = v68 - v66;
LABEL_32:
      v73 = v20 + v19 * v54 + v52;
      v74 = v22 + v21 * v54 + v52;
      if (v55)
      {
        v75 = v73;
      }

      else
      {
        v74 = v53;
        v75 = v52;
      }

      goto LABEL_37;
    }

    v54 = v68 - v66;
LABEL_36:
    v75 = v19 * v54 + v52;
    v74 = v20 * v54 + v52;
LABEL_37:
    v71 = (v74 + v75) * 0.5;
    goto LABEL_38;
  }

LABEL_28:
  v71 = NAN;
LABEL_38:
  *&result = v37 + v71;
  return result;
}

uint64_t sub_1AAE0BA04@<X0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (a4 == 8)
  {
    v10 = (v5 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale);
    v11 = v10[7];
    v39[6] = v10[6];
    v39[7] = v11;
    v40 = *(v10 + 128);
    v12 = v10[3];
    v39[2] = v10[2];
    v39[3] = v12;
    v13 = v10[5];
    v39[4] = v10[4];
    v39[5] = v13;
    v14 = v10[1];
    v39[0] = *v10;
    v39[1] = v14;
    if (sub_1AAD05174(v39) == 1)
    {
      goto LABEL_11;
    }

    v15 = v10[7];
    v36 = v10[6];
    v37 = v15;
    v38 = *(v10 + 128);
    v16 = v10[3];
    v32 = v10[2];
    v33 = v16;
    v17 = v10[5];
    v34 = v10[4];
    v35 = v17;
    v18 = v10[1];
    v30 = *v10;
    v31 = v18;
    if (a3 < 0)
    {
      a1 = (a1 + a2) * 0.5;
      a3 &= 1u;
      a2 = 0.0;
    }

    else
    {
      sub_1AACCAE10(*&a1, *&a2, a3);
    }

    v28[6] = v36;
    v28[7] = v37;
    v28[2] = v32;
    v28[3] = v33;
    v28[4] = v34;
    v28[5] = v35;
    v28[0] = v30;
    v28[1] = v31;
    v47 = v36;
    v48 = v37;
    v43 = v32;
    v44 = v33;
    v45 = v34;
    v46 = v35;
    v29 = v38;
    v49 = v38;
    v41 = v30;
    v42 = v31;
    v26 = MEMORY[0x1E697DD48];
    sub_1AACDB9A8(v28, v27, &qword_1ED9B3E18, MEMORY[0x1E697DD48], type metadata accessor for AnyConcreteScale);
    sub_1AAE298A4(*&a1, *&a2, a3, v27);
    v19 = v27[0];
    v21 = v27[1];
    v22 = v27[2];
    v23 = v27[3];
    v24 = v27[4];
    sub_1AACCA728(*&a1, *&a2, a3);
    result = sub_1AACE337C(&v30, &qword_1ED9B3E10, &qword_1ED9B3E18, v26);
    if (!v23)
    {
LABEL_11:
      if (qword_1ED9B2798 != -1)
      {
        swift_once();
      }

      v19 = xmmword_1ED9C34C0;
      LODWORD(v21) = DWORD2(xmmword_1ED9C34C0);
      LODWORD(v20) = HIDWORD(xmmword_1ED9C34C0);
      v22 = qword_1ED9C34D0;
      v23 = qword_1ED9C34D8;
      v24 = qword_1ED9C34E0;
    }

    else
    {
      v20 = HIDWORD(v21);
    }
  }

  else
  {
    if (qword_1ED9B2798 != -1)
    {
      swift_once();
    }

    v19 = xmmword_1ED9C34C0;
    LODWORD(v21) = DWORD2(xmmword_1ED9C34C0);
    LODWORD(v20) = HIDWORD(xmmword_1ED9C34C0);
    v22 = qword_1ED9C34D0;
    v23 = qword_1ED9C34D8;
    v24 = qword_1ED9C34E0;
  }

  *a5 = v19;
  *(a5 + 8) = v21;
  *(a5 + 12) = v20;
  *(a5 + 16) = v22;
  *(a5 + 24) = v23;
  *(a5 + 32) = v24;
  return result;
}

uint64_t sub_1AAE0BCD0(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4 == 5)
  {
    v5 = (v4 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale);
    if (*(v4 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 96) != 255)
    {
      v6 = v5[5];
      v22 = v5[4];
      v23 = v6;
      v24 = *(v5 + 96);
      v7 = v5[1];
      v18 = *v5;
      v19 = v7;
      v8 = v5[3];
      v20 = v5[2];
      v21 = v8;
      if (a3 < 0)
      {
        v9 = (*&a1 + *&a2) * 0.5;
        v11 = a3 & 1;
        v10 = 0;
      }

      else
      {
        v9 = *&a1;
        v10 = a2;
        v11 = a3;
        sub_1AACCAE10(a1, a2, a3);
      }

      v16[4] = v22;
      v16[5] = v23;
      v17 = v24;
      v16[0] = v18;
      v16[1] = v19;
      v16[2] = v20;
      v16[3] = v21;
      v25 = v18;
      v26 = v19;
      v31 = v24;
      v27 = v20;
      v28 = v21;
      v29 = v22;
      v30 = v23;
      v12 = MEMORY[0x1E697E0B8];
      sub_1AACDB9A8(v16, v15, &qword_1ED9B3E28, MEMORY[0x1E697E0B8], type metadata accessor for AnyConcreteScale);
      v13 = sub_1AAE29A08(*&v9, v10, v11);
      sub_1AACCA728(*&v9, v10, v11);
      sub_1AACE337C(&v18, &qword_1ED9B3E20, &qword_1ED9B3E28, v12);
      if (v13)
      {
        return v13;
      }
    }

    *&v18 = sub_1AAF8ECE4();
  }

  else
  {
    *&v25 = sub_1AAF8ECE4();
  }

  return sub_1AAF8DA44();
}

uint64_t sub_1AAE0BE80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AACAE398(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AAE0BEDC()
{
  if (!qword_1EB424F68)
  {
    v0 = type metadata accessor for PlottedValueCollector.ExtentCollector();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424F68);
    }
  }
}

unint64_t sub_1AAE0BF4C(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

uint64_t sub_1AAE0BF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{

  sub_1AACB4A98(a4);

  return sub_1AACE3EF4(a7, a8);
}

void sub_1AAE0C044(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AAF8CA64();
    v7 = sub_1AACD6CE8();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void *sub_1AAE0C0B0(void *result)
{
  v1 = result[9] & 0xFFFFFFFFFFFFFFBLL;
  v2 = result[18] & 0xFFFFFFFFFFFFFFBLL;
  *result &= 0xFuLL;
  result[9] = v1;
  result[18] = v2;
  return result;
}

uint64_t sub_1AAE0C0E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAE0C148(uint64_t a1)
{
  sub_1AAE0C044(0, qword_1ED9B2620, type metadata accessor for ChartBinRange);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1AAE0C1C0(void *result)
{
  v1 = result[9] & 0xFFFFFFFFFFFFFFBLL;
  v2 = result[18] & 0xFFFFFFFFFFFFFFBLL | 0x8000000000000000;
  *result &= 0xFuLL;
  result[9] = v1;
  result[18] = v2;
  return result;
}

uint64_t sub_1AAE0C1F4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 24);
  v4 = *(v2 + 32);
  v6 = *a1;
  v7 = a1[1];

  return sub_1AACFB938(v6, v7, 2, v5, v4, a2);
}

uint64_t sub_1AAE0C25C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AACAE398(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for AnyPrimitivePlottableRange(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1AAE0C34C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AAE0C394(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1AAE0C3E8()
{
  swift_getTupleTypeMetadata2();
  result = sub_1AAF8FE74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAE0C474(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(v4 + 64);
  if (v5)
  {
    v8 = *(v4 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v6;
  if (a2 > v6)
  {
    v10 = v8 + ((v7 + *(v4 + 80)) & ~*(v4 + 80));
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_9;
    }

    v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_27;
        }

LABEL_9:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_27;
        }

LABEL_16:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_16;
      }
    }
  }

LABEL_27:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1AAE0C5FC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v10 = v8 - 1;
  if (!v8)
  {
    v10 = 0;
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v11 = ((v9 + *(v7 + 80)) & ~*(v7 + 80)) + v9;
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 == 0 || !v13)
  {
LABEL_18:
    if (v10 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
  {
    if (v15 < 0x100)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_18;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_19:
    v17 = ~v10 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_57:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_28:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v12] = 0;
LABEL_34:
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!v6)
  {
    goto LABEL_34;
  }

  a1[v12] = 0;
  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v8 >= 2)
  {
    if (a2 >= v8)
    {
      if (v11 <= 3)
      {
        v21 = ~(-1 << (8 * v11));
      }

      else
      {
        v21 = -1;
      }

      if (v11)
      {
        v22 = v21 & (a2 - v8);
        if (v11 <= 3)
        {
          v23 = v11;
        }

        else
        {
          v23 = 4;
        }

        bzero(a1, v11);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *a1 = v22;
            a1[2] = BYTE2(v22);
          }

          else
          {
            *a1 = v22;
          }
        }

        else if (v23 == 1)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v22;
        }
      }
    }

    else
    {
      v20 = *(v7 + 56);

      v20();
    }
  }
}

unint64_t sub_1AAE0C8C8()
{
  result = qword_1EB425000[0];
  if (!qword_1EB425000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB425000);
  }

  return result;
}

uint64_t sub_1AAE0C9B4()
{

  return sub_1AAF8EA44();
}

uint64_t sub_1AAE0CA34@<X0>(uint64_t a1@<X8>)
{

  result = sub_1AAF8EA44();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1AAE0CAE0(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1, v3);
  return sub_1AAF8EA64();
}

uint64_t sub_1AAE0CBB0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = *a2;
  v6 = *(a2 + 1);
  v7 = type metadata accessor for ModifiedChartContent_AccessibilityLabel();
  v34 = a1;
  sub_1AAF3032C(0, 0, 0, 0, *(a1 + *(v7 + 44)), __dst);
  v8 = __dst[1];
  v9 = __dst[2];
  v10 = __dst[3];
  v38 = __dst[4];
  v39 = __dst[0];
  v31 = __dst[5];
  v35 = __dst[6];
  v11 = __dst[7];
  v37 = __dst[8];
  v12 = v6 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v29 = v9;
  v30 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v13 = v12 + *(v30 + 108);
  v32 = v11;
  if (!*(v13 + 24))
  {
    memset(__src, 0, 24);
    *(&__src[1] + 1) = 2;
    bzero(&__src[2], 0x2A9uLL);

    goto LABEL_5;
  }

  sub_1AAE0FC20(v13, v45);

  sub_1AAF303E4(__src);
  sub_1AAE0FC7C(v45);
  if (*(&__src[1] + 1) == 2)
  {
LABEL_5:
    type metadata accessor for TypedVectorizedProperties();
    v25 = sub_1AAF8FE74();
    (*(*(v25 - 8) + 8))(__src, v25);
    memset(v50, 0, 24);
    v50[3] = 1;
    v50[5] = 0;
    v50[4] = 0;
    v51 = 0;
    memset(v52, 0, 24);
    v52[3] = 1;
    v52[5] = 0;
    v52[4] = 0;
    v53 = 0;
    v54 = 0uLL;
    v55 = 0;
    v56 = 1;
    v57 = 0u;
    memset(v58, 0, sizeof(v58));
    v40 = 0uLL;
    v41 = 0;
    v42 = 1;
    v43 = 0u;
    memset(v44, 0, sizeof(v44));
    memset(v59, 0, sizeof(v59));
    v60 = -4;
    sub_1AAD3CF1C(v46);
    v67 = v46[6];
    v68 = v46[7];
    v69 = v47;
    v63 = v46[2];
    v64 = v46[3];
    v66 = v46[5];
    v65 = v46[4];
    v62 = v46[1];
    v61 = v46[0];
    memset(v70, 0, 24);
    v70[3] = 1;
    v70[5] = 0;
    v70[4] = 0;
    v71 = 0;
    memset(v72, 0, 24);
    v72[3] = 1;
    v72[5] = 0;
    v72[4] = 0;
    v73 = 0;
    *&v74 = v39;
    *(&v74 + 1) = v8;
    v75 = v9;
    v76 = v10;
    v77 = v38;
    v78 = v31;
    v28 = v8;
    v79 = v35;
    v80 = v11;
    v81 = v37;
    memset(v82, 0, 24);
    v82[3] = 1;
    v83 = 0u;
    v84 = 0u;
    v85 = 0;
    sub_1AAF304C8(v50, v52, &v54, &v40, v59, &v61, v70, v72, v45, &v74, v82);
    v22 = v31;
    v15 = v35;
    v18 = v11;
    v14 = v10;
    v23 = v28;
    sub_1AAF30464(v45, &v40);
    swift_beginAccess();
    v26 = *(v30 + 108);
    v24 = v9;
    sub_1AADA61DC(v39, v28, v9, v14);
    sub_1AAE0FD8C(v38, v31, v35, v32, v37);
    sub_1AAE0FB6C(&v40, v12 + v26);
    swift_endAccess();
    goto LABEL_6;
  }

  memcpy(__dst, __src, 0x2C9uLL);
  v63 = __src[38];
  v64 = __src[39];
  LOBYTE(v65) = __src[40];
  v62 = __src[37];
  v61 = __src[36];
  v14 = v10;
  sub_1AADA61DC(v39, v8, v9, v10);
  v15 = v35;
  v16 = v9;
  v17 = v8;
  v18 = v32;
  sub_1AAE0FD8C(v38, v31, v35, v32, v37);
  type metadata accessor for VisualMapper();
  v19 = sub_1AAF8FE74();
  (*(*(v19 - 8) + 8))(&v61, v19);
  __dst[72] = v39;
  __dst[73] = v17;
  __dst[74] = v16;
  __dst[75] = v10;
  __dst[76] = v38;
  __dst[77] = v31;
  __dst[78] = v35;
  __dst[79] = v32;
  LOBYTE(__dst[80]) = v37;
  v20 = type metadata accessor for TypedVectorizedProperties();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v45, __dst, v20);
  v22 = v31;
  v23 = v17;
  sub_1AAF30464(v45, v46);
  swift_beginAccess();
  sub_1AAE0FB6C(v46, v12 + *(v30 + 108));
  swift_endAccess();
  (*(v21 + 8))(__dst, v20);
  v24 = v29;
LABEL_6:
  LOBYTE(__dst[0]) = v36;
  __dst[1] = v6;
  (*(a5 + 40))(v34, __dst);
  sub_1AADA6198(v39, v23, v24, v14);
  return sub_1AAE0FE08(v38, v22, v15, v18, v37);
}

uint64_t sub_1AAE0D1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  KeyPath = swift_getKeyPath();
  v18[0] = a1;
  v18[1] = a2;
  v19 = a3 & 1;
  v20 = a4;
  v15 = swift_getKeyPath();
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = v19;
  v17[3] = a4;
  sub_1AACD7E50(KeyPath, v18, v15, v17, a5, a6, a7);
  sub_1AACD7304(a1, a2, a3 & 1);

  sub_1AACD7304(a1, a2, a3 & 1);

  sub_1AAD04750(a1, a2, a3 & 1);

  sub_1AAD04750(a1, a2, a3 & 1);
}

uint64_t sub_1AAE0D300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{

  v8 = sub_1AAF8EA44();
  v10 = v9;
  v12 = v11;
  a7(v8, v9);
  sub_1AAD04750(v8, v10, v12 & 1);
}

uint64_t sub_1AAE0D408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v10 = sub_1AAF8EA64();
  v12 = v11;
  v14 = v13;
  a6();
  sub_1AAD04750(v10, v12, v14 & 1);
}

uint64_t sub_1AAE0D550@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, uint64_t, void, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v5, a2, v11);
  sub_1AAE0E688(v13, a1, a2, *(a3 + 8), a4, a5);
}

uint64_t sub_1AAE0D660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, uint64_t, void, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v5, a2, v10);
  swift_getKeyPath();
  sub_1AAF90774();
  v14 = sub_1AAF90174();

  return sub_1AAE0E688(v12, v14, a2, *(a3 + 8), a4, a5);
}

uint64_t sub_1AAE0D7E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, void, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  v19[0] = a2;
  v19[1] = *(v11 + *MEMORY[0x1E69E77B0] + 8);
  v19[2] = a3;
  v19[3] = a4;
  swift_getKeyPath();
  sub_1AAF90774();
  v17 = sub_1AAF90174();

  return sub_1AAE0E688(v14, v17, a2, *(a3 + 8), a5, a6);
}

uint64_t sub_1AAE0D970(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = *a2;
  v6 = *(a2 + 1);
  v7 = type metadata accessor for ModifiedChartContent_AccessibilityValue();
  v25 = a1;
  sub_1AAF3032C(0, 0, 0, 0, *(a1 + *(v7 + 44)), __dst);
  v8 = __dst[0];
  v9 = __dst[2];
  v10 = __dst[3];
  v22 = __dst[4];
  v27 = __dst[5];
  v30 = __dst[1];
  v31 = __dst[6];
  v29 = __dst[7];
  v28 = __dst[8];
  v24 = v6;
  v11 = v6 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v21 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v12 = v11 + *(v21 + 108);
  if (!*(v12 + 24))
  {
    memset(__src, 0, 24);
    __src[3] = 2;
    bzero(&__src[4], 0x2A9uLL);

    goto LABEL_5;
  }

  sub_1AAE0FC20(v12, v37);

  sub_1AAF303E4(__src);
  sub_1AAE0FC7C(v37);
  if (__src[3] == 2)
  {
LABEL_5:
    type metadata accessor for TypedVectorizedProperties();
    v18 = sub_1AAF8FE74();
    (*(*(v18 - 8) + 8))(__src, v18);
    memset(v42, 0, 24);
    v42[3] = 1;
    v42[5] = 0;
    v42[4] = 0;
    v43 = 0;
    memset(v44, 0, 24);
    v44[3] = 1;
    v44[5] = 0;
    v44[4] = 0;
    v45 = 0;
    v46 = 0uLL;
    v47 = 0;
    v48 = 1;
    v49 = 0u;
    memset(v50, 0, sizeof(v50));
    v32 = 0uLL;
    v33 = 0;
    v34 = 1;
    v35 = 0u;
    memset(v36, 0, sizeof(v36));
    memset(v51, 0, sizeof(v51));
    v52 = -4;
    sub_1AAD3CF1C(v38);
    v59 = v38[6];
    v60 = v38[7];
    v61 = v39;
    v55 = v38[2];
    v56 = v38[3];
    v58 = v38[5];
    v57 = v38[4];
    v54 = v38[1];
    v53 = v38[0];
    memset(v62, 0, 24);
    v62[3] = 1;
    v62[5] = 0;
    v62[4] = 0;
    v63 = 0;
    memset(v64, 0, 24);
    v64[3] = 1;
    v64[5] = 0;
    v64[4] = 0;
    v65 = 0;
    v66 = 0uLL;
    v67 = 0;
    v68 = 1;
    v71 = 0;
    v70 = 0u;
    v69 = 0u;
    v72[0] = v8;
    v72[1] = v30;
    v72[2] = v9;
    v72[3] = v10;
    v16 = v22;
    v17 = v27;
    v72[4] = v22;
    v72[5] = v27;
    v72[6] = v31;
    v72[7] = v29;
    v73 = v28;
    sub_1AAF304C8(v42, v44, &v46, &v32, v51, &v53, v62, v64, v37, &v66, v72);
    sub_1AAF30464(v37, &v32);
    swift_beginAccess();
    v19 = *(v21 + 108);
    sub_1AADA61DC(v8, v30, v9, v10);
    sub_1AAE0FD8C(v22, v27, v31, v29, v28);
    sub_1AAE0FB6C(&v32, v11 + v19);
    swift_endAccess();
    goto LABEL_6;
  }

  memcpy(__dst, __src, 0x2C9uLL);
  v55 = *&__src[85];
  v56 = *&__src[87];
  LOBYTE(v57) = __src[89];
  v54 = *&__src[83];
  v53 = *&__src[81];
  sub_1AADA61DC(v8, v30, v9, v10);
  sub_1AAE0FD8C(v22, v27, v31, v29, v28);
  type metadata accessor for VisualMapper();
  v13 = sub_1AAF8FE74();
  (*(*(v13 - 8) + 8))(&v53, v13);
  __dst[81] = v8;
  __dst[82] = v30;
  __dst[83] = v9;
  __dst[84] = v10;
  __dst[85] = v22;
  __dst[86] = v27;
  __dst[87] = v31;
  __dst[88] = v29;
  LOBYTE(__dst[89]) = v28;
  v14 = type metadata accessor for TypedVectorizedProperties();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v37, __dst, v14);
  sub_1AAF30464(v37, v38);
  swift_beginAccess();
  sub_1AAE0FB6C(v38, v11 + *(v21 + 108));
  swift_endAccess();
  (*(v15 + 8))(__dst, v14);
  v16 = v22;
  v17 = v27;
LABEL_6:
  LOBYTE(__dst[0]) = v23;
  __dst[1] = v24;
  (*(a5 + 40))(v25, __dst);
  sub_1AADA6198(v8, v30, v9, v10);
  return sub_1AAE0FE08(v16, v17, v31, v29, v28);
}

uint64_t ChartContent.accessibilityIdentifier(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  v14[0] = a1;
  v14[1] = a2;
  v11 = swift_getKeyPath();
  v13[0] = a1;
  v13[1] = a2;
  sub_1AACD7E50(KeyPath, v14, v11, v13, a3, a4, a5);
}

uint64_t sub_1AAE0E004(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = *a2;
  v6 = *(a2 + 1);
  v7 = type metadata accessor for ModifiedChartContent_AccessibilityIdentifier();
  v45 = a1;
  sub_1AAF3032C(0, 0, 0, 0, *(a1 + *(v7 + 44)), __dst);
  v8 = __dst[0];
  v9 = __dst[1];
  v10 = __dst[2];
  v11 = __dst[3];
  v41 = __dst[4];
  v12 = __dst[5];
  v42 = __dst[6];
  v13 = v6 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v39 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v40 = v13;
  v14 = v13 + *(v39 + 108);
  v46 = v12;
  if (!*(v14 + 24))
  {
    memset(__src, 0, 24);
    __src[3] = 2;
    bzero(&__src[4], 0x2A9uLL);

    goto LABEL_5;
  }

  sub_1AAE0FC20(v14, v52);

  sub_1AAF303E4(__src);
  sub_1AAE0FC7C(v52);
  if (__src[3] == 2)
  {
LABEL_5:
    type metadata accessor for TypedVectorizedProperties();
    v28 = sub_1AAF8FE74();
    (*(*(v28 - 8) + 8))(__src, v28);
    memset(v57, 0, 24);
    v57[3] = 1;
    v57[5] = 0;
    v57[4] = 0;
    v58 = 0;
    memset(v59, 0, 24);
    v59[3] = 1;
    v59[5] = 0;
    v59[4] = 0;
    v60 = 0;
    v61 = 0uLL;
    v62 = 0;
    v63 = 1;
    v64 = 0u;
    memset(v65, 0, sizeof(v65));
    v47 = 0uLL;
    v48 = 0;
    v49 = 1;
    v50 = 0u;
    memset(v51, 0, sizeof(v51));
    memset(v66, 0, sizeof(v66));
    v67 = -4;
    sub_1AAD3CF1C(v53);
    v68[6] = v53[6];
    v68[7] = v53[7];
    v69 = v54;
    v68[2] = v53[2];
    v68[3] = v53[3];
    v68[5] = v53[5];
    v68[4] = v53[4];
    v68[1] = v53[1];
    v68[0] = v53[0];
    v70[0] = v8;
    v70[1] = v9;
    v29 = v10;
    v70[2] = v10;
    v30 = v11;
    v70[3] = v11;
    v22 = v41;
    v70[4] = v41;
    v70[5] = v12;
    v23 = v42;
    v71 = v42;
    memset(v72, 0, 24);
    v72[3] = 1;
    v72[4] = 0;
    v72[5] = 0;
    v73 = 0;
    v74 = 0uLL;
    v75 = 0;
    v76 = 1;
    v77 = 0u;
    v78 = 0u;
    v79 = 0;
    sub_1AAF304C8(v57, v59, &v61, &v47, v66, v68, v70, v72, v52, &v74, &v74);
    v27 = v8;
    v19 = v9;
    LOBYTE(v9) = v29;
    v21 = v30;
    sub_1AAF30464(v52, &v47);
    swift_beginAccess();
    v31 = *(v39 + 108);
    sub_1AADA61DC(v27, v19, v9, v30);
    sub_1AAE0FCD0(v41, v12, v42);
    sub_1AAE0FB6C(&v47, v40 + v31);
    swift_endAccess();
    goto LABEL_6;
  }

  memcpy(__dst, __src, 0x2C9uLL);
  v36 = __dst[59];
  v37 = __dst[58];
  v34 = __dst[61];
  v35 = __dst[60];
  v15 = __dst[62];
  v33 = __dst[63];
  v38 = v6;
  v16 = __dst[64];
  v17 = v8;
  v18 = v8;
  v19 = v9;
  v20 = v9;
  v9 = v10;
  v21 = v11;
  sub_1AADA61DC(v18, v20, v10, v11);
  v22 = v41;
  v23 = v42;
  sub_1AAE0FCD0(v41, v46, v42);
  v24 = v16;
  v6 = v38;
  sub_1AAE0FD30(v37, v36, v35, v34, v15, v33, v24);
  __dst[58] = v17;
  __dst[59] = v19;
  __dst[60] = v9;
  __dst[61] = v21;
  __dst[62] = v41;
  __dst[63] = v46;
  LOBYTE(__dst[64]) = v42;
  v25 = type metadata accessor for TypedVectorizedProperties();
  v26 = *(v25 - 8);
  (*(v26 + 16))(__src, __dst, v25);
  v27 = v17;
  sub_1AAF30464(__src, v52);
  swift_beginAccess();
  sub_1AAE0FB6C(v52, v40 + *(v39 + 108));
  swift_endAccess();
  (*(v26 + 8))(__dst, v25);
  v12 = v46;
LABEL_6:
  LOBYTE(__dst[0]) = v44;
  __dst[1] = v6;
  (*(a5 + 40))(v45, __dst);
  sub_1AADA6198(v27, v19, v9, v21);
  return sub_1AAE0FD00(v22, v12, v23);
}

uint64_t ChartContent.accessibilityHidden(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v3, a2, v8);
  (*(v7 + 32))(a3, v10, a2);
  result = type metadata accessor for AXHiddenModifier();
  *(a3 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_1AAE0E688@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, void, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  (*(*(a3 - 8) + 32))(a6, a1);
  result = a5(0, a3, *(v11 + *MEMORY[0x1E69E77B0]), a4);
  *(a6 + *(result + 44)) = a2;
  return result;
}

uint64_t sub_1AAE0E77C(uint64_t *a1, void (*a2)(uint64_t, uint64_t, uint64_t, void))
{
  v3 = *a1;
  v4 = a1[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  a2(255, v3, AssociatedTypeWitness, *(v4 + 8));

  return swift_getWitnessTable();
}

uint64_t sub_1AAE0E818(uint64_t *a1, void (*a2)(uint64_t, uint64_t, uint64_t, void))
{
  v3 = *a1;
  v4 = a1[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  a2(255, v3, AssociatedTypeWitness, *(v4 + 8));

  return swift_getWitnessTable();
}

uint64_t sub_1AAE0E8BC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAE0E934(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}