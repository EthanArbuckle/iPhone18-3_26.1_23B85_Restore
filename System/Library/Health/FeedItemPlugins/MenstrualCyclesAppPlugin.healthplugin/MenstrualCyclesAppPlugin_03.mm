uint64_t sub_29DECE164(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      sub_29E2BF404();
      sub_29E146428(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_29DECE228(uint64_t a1)
{
  v27 = a1;
  v1 = sub_29E2BFF94();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BFFB4();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v24 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BFFF4();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  sub_29DECDFE0(0, &qword_2A1A61510, sub_29DECE758, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v24 - v8;
  sub_29DECDFE0(0, &qword_2A1A61560, MEMORY[0x29EDC3B18], MEMORY[0x29EDC34D8]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v24 - v13;
  sub_29DECE758();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BDA14();
  sub_29E2BFF24();
  sub_29DECE954(&qword_2A1A61630, 255, MEMORY[0x29EDC3B18]);
  sub_29E2C0074();
  (*(v12 + 8))(v14, v11);
  if ((*(v17 + 48))(v9, 1, v16) == 1)
  {
    sub_29DECE834(v9, &qword_2A1A61510, sub_29DECE758);
    return MEMORY[0x29EDCA190];
  }

  else
  {
    (*(v17 + 32))(v19, v9, v16);
    sub_29DECDFE0(0, &qword_2A1A5DFF8, sub_29DECDC28, MEMORY[0x29EDC9E90]);
    sub_29DECDC28();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_29E2CAB20;
    sub_29E2BFFE4();
    v23 = v25;
    v22 = v26;
    (*(v25 + 104))(v3, *MEMORY[0x29EDC3508], v26);
    sub_29E2BFFA4();
    (*(v23 + 8))(v3, v22);
    sub_29E2C00F4();
    sub_29DE9408C(0, &unk_2A1A5E190);
    sub_29E2C0134();
    (*(v17 + 8))(v19, v16);
    return v21;
  }
}

void sub_29DECE758()
{
  if (!qword_2A1A61518)
  {
    sub_29DE9408C(255, &unk_2A1A5E190);
    sub_29DECE7CC();
    v0 = sub_29E2C0104();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61518);
    }
  }
}

unint64_t sub_29DECE7CC()
{
  result = qword_2A1A5E1A0;
  if (!qword_2A1A5E1A0)
  {
    sub_29DE9408C(255, &unk_2A1A5E190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5E1A0);
  }

  return result;
}

uint64_t sub_29DECE834(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29DECDFE0(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29DECE8A4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29E2C48E4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_29DECE8F0()
{
  result = qword_2A1A61508;
  if (!qword_2A1A61508)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A61508);
  }

  return result;
}

uint64_t sub_29DECE954(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29DECE9A4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_29E2BF944();
  v36 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BF954();
  v35 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
LABEL_6:
    type metadata accessor for HKError(0);
    v40 = 3;
    sub_29DECF130(MEMORY[0x29EDCA190]);
    sub_29DECF33C(&qword_2A1817738, type metadata accessor for HKError);
    sub_29E2BC7C4();
    swift_willThrow();
    return;
  }

  v33 = v5;
  v34 = a2;
  v11 = a1;
  v12 = sub_29E2BF314();
  v13 = [v12 displayTypeController];

  if (v13)
  {
    v14 = [v13 displayTypeForObjectType_];

    if (v14)
    {
      v15 = *MEMORY[0x29EDBA710];
      v16 = sub_29E2BF314();
      v32 = v2;
      v17 = v16;
      v18 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v15 healthStore:v16];

      v19 = v14;
      v29 = v7;
      v30 = v19;
      sub_29E2BF334();
      *(&v38 + 1) = sub_29DECF234();
      v39 = MEMORY[0x29EDC2EA8];
      *&v37 = v18;
      v20 = sub_29E2BF9F4();
      swift_allocObject();
      v31 = v18;
      v21 = sub_29E2BF9E4();
      sub_29DECF280();
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_29E2CEBE0;
      v23 = sub_29E2BF264();
      v37 = 0u;
      v38 = 0u;
      v39 = 0;
      *(v22 + 56) = v23;
      *(v22 + 64) = sub_29DECF33C(&qword_2A18181A0, MEMORY[0x29EDC2650]);
      sub_29DEBB7E8((v22 + 32));
      v24 = v11;
      sub_29E2BF254();
      *(v22 + 96) = sub_29E2BF184();
      *(v22 + 104) = sub_29DECF33C(&qword_2A18181A8, MEMORY[0x29EDC2590]);
      sub_29DEBB7E8((v22 + 72));
      v25 = v24;
      sub_29E2BF174();
      *(&v38 + 1) = v20;
      v39 = MEMORY[0x29EDC2B30];
      *&v37 = v21;
      *(v22 + 136) = sub_29E2BF284();
      *(v22 + 144) = sub_29DECF33C(&qword_2A18181B0, MEMORY[0x29EDC2668]);
      sub_29DEBB7E8((v22 + 112));

      sub_29E2BF274();
      *v10 = v25;
      (*(v35 + 104))(v10, *MEMORY[0x29EDC2B00], v8);
      v26 = v25;
      sub_29E2BF1D4();
      (*(v36 + 104))(v29, *MEMORY[0x29EDC2AF0], v33);
      *(v22 + 176) = sub_29E2BF1F4();
      *(v22 + 184) = sub_29DECF33C(&qword_2A1819F00, MEMORY[0x29EDC2610]);
      sub_29DEBB7E8((v22 + 152));
      sub_29E2BF1E4();
      v27 = v26;
      sub_29E2BF2D4();
      *(v22 + 216) = sub_29E2BF2E4();
      *(v22 + 224) = sub_29DECF33C(&qword_2A18181B8, MEMORY[0x29EDC26B8]);
      sub_29DEBB7E8((v22 + 192));
      sub_29E2BF2C4();
      *(v22 + 256) = sub_29E2BF1B4();
      *(v22 + 264) = sub_29DECF33C(&qword_2A18181C0, MEMORY[0x29EDC25A8]);
      sub_29DEBB7E8((v22 + 232));
      v28 = v27;
      sub_29E2BF1A4();
      sub_29E2BF1C4();

      return;
    }

    goto LABEL_6;
  }

  __break(1u);
}

unint64_t sub_29DECF000(uint64_t a1, uint64_t a2)
{
  sub_29E2C4A04();
  sub_29E2C34B4();
  v4 = sub_29E2C4A54();

  return sub_29DECF078(a1, a2, v4);
}

unint64_t sub_29DECF078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_29E2C4914())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_29DECF130(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29DECF384();
    v3 = sub_29E2C47B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_29DECF3E8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_29DECF000(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_29DEA049C(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29DECF234()
{
  result = qword_2A1A5E120;
  if (!qword_2A1A5E120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A5E120);
  }

  return result;
}

void sub_29DECF280()
{
  if (!qword_2A1818198)
  {
    sub_29DECF2D8();
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818198);
    }
  }
}

unint64_t sub_29DECF2D8()
{
  result = qword_2A1819F10;
  if (!qword_2A1819F10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1819F10);
  }

  return result;
}

uint64_t sub_29DECF33C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29DECF384()
{
  if (!qword_2A18181C8)
  {
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18181C8);
    }
  }
}

uint64_t sub_29DECF3E8(uint64_t a1, uint64_t a2)
{
  sub_29DECF44C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29DECF44C()
{
  if (!qword_2A18181D0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A18181D0);
    }
  }
}

uint64_t type metadata accessor for DeviationSampleDataTypeDetailConfigurationProvider()
{
  result = qword_2A18181D8;
  if (!qword_2A18181D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DECF524()
{
  result = sub_29E2BF344();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29DECF630(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x547972616D6D7573;
  }

  if (v2)
  {
    v4 = 0xEB00000000656C69;
  }

  else
  {
    v4 = 0x800000029E2EAF60;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x547972616D6D7573;
  }

  if (*a2)
  {
    v6 = 0x800000029E2EAF60;
  }

  else
  {
    v6 = 0xEB00000000656C69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_29E2C4914();
  }

  return v8 & 1;
}

uint64_t sub_29DECF6E4()
{
  sub_29E2C4A04();
  sub_29E2C34B4();

  return sub_29E2C4A54();
}

uint64_t sub_29DECF774()
{
  sub_29E2C34B4();
}

uint64_t sub_29DECF7F0()
{
  sub_29E2C4A04();
  sub_29E2C34B4();

  return sub_29E2C4A54();
}

uint64_t sub_29DECF87C@<X0>(char *a1@<X8>)
{
  v2 = sub_29E2C47E4();

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

void sub_29DECF8DC(unint64_t *a1@<X8>)
{
  v2 = 0x800000029E2EAF60;
  v3 = 0x547972616D6D7573;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEB00000000656C69;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_29DECF928(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF73726F74636146;
  v3 = 0x656C637943646461;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0xD000000000000019;
  }

  else
  {
    v5 = 0x656C637943646461;
  }

  if (v4 == 1)
  {
    v6 = 0x800000029E2EAFA0;
  }

  else
  {
    v6 = 0xEF73726F74636146;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x800000029E2EAF80;
  }

  if (*a2 == 1)
  {
    v3 = 0xD000000000000019;
    v2 = 0x800000029E2EAFA0;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x800000029E2EAF80;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_29E2C4914();
  }

  return v11 & 1;
}

uint64_t sub_29DECFA10()
{
  sub_29E2C4A04();
  sub_29E2C34B4();

  return sub_29E2C4A54();
}

uint64_t sub_29DECFAC4()
{
  sub_29E2C34B4();
}

uint64_t sub_29DECFB64()
{
  sub_29E2C4A04();
  sub_29E2C34B4();

  return sub_29E2C4A54();
}

uint64_t sub_29DECFC14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29DED1590();
  *a1 = result;
  return result;
}

void sub_29DECFC44(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF73726F74636146;
  v4 = 0x656C637943646461;
  if (v2 == 1)
  {
    v4 = 0xD000000000000019;
    v3 = 0x800000029E2EAFA0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v5)
  {
    v3 = 0x800000029E2EAF80;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_29DECFCB4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6C4668636E75616CLL;
    v6 = 0x74696445646964;
    if (a1 != 2)
    {
      v6 = 0x74656C6544646964;
    }

    if (a1)
    {
      v5 = 0x547373696D736964;
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
    v1 = 0x656C6C65636E6163;
    v2 = 0x6E4F646441646964;
    if (a1 != 7)
    {
      v2 = 0x6441746F4E646964;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x64657070696B73;
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

uint64_t sub_29DECFE08()
{
  sub_29E2C4A04();
  sub_29DF22E20();
  return sub_29E2C4A54();
}

uint64_t sub_29DECFE58()
{
  sub_29E2C4A04();
  sub_29DF22E20();
  return sub_29E2C4A54();
}

uint64_t sub_29DECFE9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29DED15DC();
  *a1 = result;
  return result;
}

unint64_t sub_29DECFECC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_29DECFCB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_29DECFEF8()
{
  v1 = sub_29E2C0514();
  v57 = *(v1 - 8);
  v58 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v55 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v56 = &v54 - v4;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v54 - v6;
  v8 = sub_29E2BE2A4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v54 - v13;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v54 - v16;
  v19 = MEMORY[0x2A1C7C4A8](v18);
  v21 = &v54 - v20;
  v22 = *(v9 + 16);
  v22(&v54 - v20, v0, v8, v19);
  v23 = (*(v9 + 88))(v21, v8);
  if (v23 == *MEMORY[0x29EDC1D20])
  {
    return 0;
  }

  if (v23 == *MEMORY[0x29EDC1D18] || v23 == *MEMORY[0x29EDC1D68] || v23 == *MEMORY[0x29EDC1D80])
  {
    goto LABEL_10;
  }

  if (v23 == *MEMORY[0x29EDC1D60])
  {
    return 1;
  }

  if (v23 == *MEMORY[0x29EDC1D50] || v23 == *MEMORY[0x29EDC1D30] || v23 == *MEMORY[0x29EDC1D70] || v23 == *MEMORY[0x29EDC1D40] || v23 == *MEMORY[0x29EDC1D28])
  {
LABEL_10:
    sub_29E2C04B4();
    (v22)(v17, v0, v8);
    v26 = sub_29E2C0504();
    v27 = sub_29E2C3A24();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v59 = v29;
      *v28 = 136446466;
      *(v28 + 4) = sub_29DFAA104(0x61746E6573657250, 0xEC0000006E6F6974, &v59);
      *(v28 + 12) = 2080;
      sub_29DED1648();
      v30 = sub_29E2C48D4();
      v32 = v31;
      (*(v9 + 8))(v17, v8);
      v33 = sub_29DFAA104(v30, v32, &v59);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_29DE74000, v26, v27, "[%{public}s] Tried to submit analytics event from unexpected presentation context: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v29, -1, -1);
      MEMORY[0x29ED82140](v28, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v17, v8);
    }

    goto LABEL_15;
  }

  if (v23 != *MEMORY[0x29EDC1D78])
  {
    if (v23 != *MEMORY[0x29EDC1D48])
    {
      if (v23 == *MEMORY[0x29EDC1D38])
      {
        v44 = v55;
        sub_29E2C04B4();
        (v22)(v11, v0, v8);
        v45 = v44;
        v46 = sub_29E2C0504();
        v47 = sub_29E2C3A24();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v59 = v49;
          *v48 = 136446466;
          *(v48 + 4) = sub_29DFAA104(0x61746E6573657250, 0xEC0000006E6F6974, &v59);
          *(v48 + 12) = 2080;
          sub_29DED1648();
          v50 = sub_29E2C48D4();
          v52 = v51;
          (*(v9 + 8))(v11, v8);
          v53 = sub_29DFAA104(v50, v52, &v59);

          *(v48 + 14) = v53;
          _os_log_impl(&dword_29DE74000, v46, v47, "[%{public}s] Tried to submit analytics event from unexpected presentation context: %s", v48, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29ED82140](v49, -1, -1);
          MEMORY[0x29ED82140](v48, -1, -1);
        }

        else
        {

          (*(v9 + 8))(v11, v8);
        }

        (*(v57 + 8))(v45, v58);
        return 0;
      }

      if (v23 != *MEMORY[0x29EDC1D88] && v23 != *MEMORY[0x29EDC1D58])
      {
        (*(v9 + 8))(v21, v8);
        return 0;
      }
    }

    goto LABEL_10;
  }

  v7 = v56;
  sub_29E2C04B4();
  (v22)(v14, v0, v8);
  v35 = sub_29E2C0504();
  v36 = sub_29E2C3A24();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = v7;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v59 = v39;
    *v38 = 136446466;
    *(v38 + 4) = sub_29DFAA104(0x61746E6573657250, 0xEC0000006E6F6974, &v59);
    *(v38 + 12) = 2080;
    sub_29DED1648();
    v40 = sub_29E2C48D4();
    v42 = v41;
    (*(v9 + 8))(v14, v8);
    v43 = sub_29DFAA104(v40, v42, &v59);

    *(v38 + 14) = v43;
    _os_log_impl(&dword_29DE74000, v35, v36, "[%{public}s] Tried to submit analytics event from unexpected presentation context: %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v39, -1, -1);
    MEMORY[0x29ED82140](v38, -1, -1);

    (*(v57 + 8))(v37, v58);
    return 0;
  }

  (*(v9 + 8))(v14, v8);
LABEL_15:
  (*(v57 + 8))(v7, v58);
  return 0;
}

uint64_t sub_29DED0768(void *a1)
{
  v3 = v1;
  v5 = sub_29E2BCBB4();
  v56 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v55 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2C0514();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x2A1C7C4A8](v11).n128_u64[0];
  v14 = &v51 - v13;
  if ([a1 healthDataSource])
  {
    sub_29DED16F4(0, &qword_2A1819930, sub_29DECF44C, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E2CD7A0;
    *(inited + 32) = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v53 = inited + 32;
    *(inited + 40) = v16;
    swift_getObjectType();
    v52 = v7;
    v54 = v2;
    sub_29E2C04B4();
    v17 = sub_29E05D7D4();
    v57 = v3;
    v19 = v18;
    v51 = v5;
    v20 = *(v8 + 8);
    v20(v14, v7);
    *(inited + 72) = MEMORY[0x29EDC99B0];
    *(inited + 48) = v17;
    *(inited + 56) = v19;
    *(inited + 80) = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    *(inited + 88) = v21;
    sub_29E2C04B4();
    v22 = v55;
    sub_29E253478();
    v23 = sub_29E05DA18();
    (*(v56 + 8))(v22, v51);
    v20(v14, v52);
    *(inited + 120) = sub_29DED1758();
    *(inited + 96) = v23;
    v24 = sub_29E1853E0(inited);
    swift_setDeallocating();
    sub_29DECF44C();
    swift_arrayDestroy();
    v25 = v57;
    LOBYTE(v59) = *(v57 + 32);
    v26 = sub_29E2C3424();
    v27 = MEMORY[0x29EDC99B0];
    v60 = MEMORY[0x29EDC99B0];
    *&v59 = v26;
    *(&v59 + 1) = v28;
    sub_29DEA049C(&v59, v58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v24;
    sub_29E008970(v58, 0x747865746E6F63, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v30 = v61;
    LOBYTE(v59) = *(v25 + 33);
    v31 = sub_29E2C3424();
    v60 = v27;
    *&v59 = v31;
    *(&v59 + 1) = v32;
    sub_29DEA049C(&v59, v58);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v30;
    sub_29E008970(v58, 1885697139, 0xE400000000000000, v33);
    v34 = v61;
    LOBYTE(v59) = *(v25 + 34);
    v35 = sub_29E2C3424();
    v60 = v27;
    *&v59 = v35;
    *(&v59 + 1) = v36;
    sub_29DEA049C(&v59, v58);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v34;
    sub_29E008970(v58, 0x6E6F69746361, 0xE600000000000000, v37);
    swift_unknownObjectRelease();
    return v61;
  }

  else
  {
    v56 = v8;
    sub_29E2C04B4();
    v39 = sub_29E2C0504();
    v40 = sub_29E2C3A24();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v57 = v3;
      v43 = v42;
      *&v59 = v42;
      *v41 = 136446210;
      v44 = sub_29E2C4AE4();
      v46 = sub_29DFAA104(v44, v45, &v59);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_29DE74000, v39, v40, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource", v41, 0xCu);
      sub_29DE93B3C(v43);
      v47 = v43;
      v3 = v57;
      MEMORY[0x29ED82140](v47, -1, -1);
      MEMORY[0x29ED82140](v41, -1, -1);
    }

    (*(v56 + 8))(v10, v7);
    v49 = *(v3 + 16);
    v48 = *(v3 + 24);
    sub_29DED16A0();
    swift_allocError();
    *v50 = v49;
    v50[1] = v48;
    swift_willThrow();
    return sub_29E2BF404();
  }
}

uint64_t sub_29DED0E2C()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ReviewCycleFactorsEvent.Action(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ReviewCycleFactorsEvent.Action(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29DED0FFC()
{
  result = qword_2A18181E8;
  if (!qword_2A18181E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18181E8);
  }

  return result;
}

unint64_t sub_29DED1054()
{
  result = qword_2A18181F0;
  if (!qword_2A18181F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18181F0);
  }

  return result;
}

unint64_t sub_29DED10AC()
{
  result = qword_2A18181F8;
  if (!qword_2A18181F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18181F8);
  }

  return result;
}

uint64_t sub_29DED1100(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_29E2BE2A4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a3, v10, v12);
  v15 = sub_29DECFEF8();
  v16 = swift_allocObject();
  (*(v11 + 8))(v14, v10);
  *(v16 + 16) = 0xD000000000000032;
  *(v16 + 24) = 0x800000029E2EDC20;
  *(v16 + 32) = v15 & 1;
  *(v16 + 33) = a1;
  *(v16 + 34) = a2;
  v17 = HKLogMenstrualCyclesCategory();
  v18 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v17 healthDataSource:a4];

  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  aBlock[4] = sub_29DED1628;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DFE9648;
  aBlock[3] = &unk_2A24B1788;
  v20 = _Block_copy(aBlock);

  [v18 submitEvent:v16 completion:v20];
  _Block_release(v20);
}

void sub_29DED1348(char a1, void *a2)
{
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_29E2C04B4();
    v8 = a2;
    v9 = sub_29E2C0504();
    v10 = sub_29E2C3A14();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136446466;
      v13 = sub_29E2C4AE4();
      v15 = sub_29DFAA104(v13, v14, &v21);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      v20 = a2;
      v16 = a2;
      sub_29DED16F4(0, &qword_2A1A5DFD0, sub_29DE96670, MEMORY[0x29EDC9C68]);
      v17 = sub_29E2C3434();
      v19 = sub_29DFAA104(v17, v18, &v21);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Error submitting analytics event: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v12, -1, -1);
      MEMORY[0x29ED82140](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_29DED1590()
{
  v0 = sub_29E2C47E4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29DED15DC()
{
  v0 = sub_29E2C47E4();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29DED1630(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29DED1648()
{
  result = qword_2A1818200;
  if (!qword_2A1818200)
  {
    sub_29E2BE2A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818200);
  }

  return result;
}

unint64_t sub_29DED16A0()
{
  result = qword_2A1818208;
  if (!qword_2A1818208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818208);
  }

  return result;
}

void sub_29DED16F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29DED1758()
{
  result = qword_2A1A5E0B0;
  if (!qword_2A1A5E0B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A5E0B0);
  }

  return result;
}

uint64_t sub_29DED17BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001CLL;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (v2)
  {
    v4 = "ed";
  }

  else
  {
    v4 = "Period Notifications";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000001CLL;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (*a2)
  {
    v7 = "Period Notifications";
  }

  else
  {
    v7 = "ed";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_29E2C4914();
  }

  return v9 & 1;
}

uint64_t sub_29DED1868()
{
  sub_29E2C4A04();
  sub_29E2C34B4();

  return sub_29E2C4A54();
}

uint64_t sub_29DED18E8()
{
  sub_29E2C34B4();
}

uint64_t sub_29DED1954()
{
  sub_29E2C4A04();
  sub_29E2C34B4();

  return sub_29E2C4A54();
}

uint64_t sub_29DED19D0@<X0>(char *a1@<X8>)
{
  v2 = sub_29E2C47E4();

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

void sub_29DED1A30(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001CLL;
  }

  else
  {
    v2 = 0xD000000000000014;
  }

  if (*v1)
  {
    v3 = "Period Notifications";
  }

  else
  {
    v3 = "ed";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_29DED1A74()
{
  result = qword_2A1818210;
  if (!qword_2A1818210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818210);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FilterSection(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FilterSection(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CycleHistoryFilter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCE)
  {
    goto LABEL_17;
  }

  if (a2 + 50 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 50) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 50;
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

      return (*a1 | (v4 << 8)) - 50;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 50;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x33;
  v8 = v6 - 51;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CycleHistoryFilter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 50 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 50) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCE)
  {
    v4 = 0;
  }

  if (a2 > 0xCD)
  {
    v5 = ((a2 - 206) >> 8) + 1;
    *result = a2 + 50;
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
    *result = a2 + 50;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_29DED1D68(char a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  v10 = 0;
  switch(a1)
  {
    case 3:
      return v10;
    default:
      sub_29E2C3314();
      (*(v4 + 16))(v6, v9, v3);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v11 = qword_2A1A67F80;
      sub_29E2BCC74();
      v10 = sub_29E2C3414();
      (*(v4 + 8))(v9, v3);
      break;
  }

  return v10;
}

uint64_t sub_29DED232C(char a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  v10 = 0;
  switch(a1)
  {
    case 3:
      return v10;
    default:
      sub_29E2C3314();
      (*(v4 + 16))(v6, v9, v3);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v11 = qword_2A1A67F80;
      sub_29E2BCC74();
      v10 = sub_29E2C3414();
      (*(v4 + 8))(v9, v3);
      break;
  }

  return v10;
}

uint64_t sub_29DED290C(char a1)
{
  result = 1;
  switch(a1)
  {
    case 4:
      return result;
    case 5:
      result = 2;
      break;
    case 6:
      result = 4;
      break;
    case 7:
      result = 8;
      break;
    case 8:
      result = 16;
      break;
    case 9:
      result = 32;
      break;
    case 10:
      result = 64;
      break;
    case 11:
      result = 128;
      break;
    case 12:
      result = 256;
      break;
    case 13:
      result = 512;
      break;
    case 14:
      result = 1024;
      break;
    case 15:
      result = 2048;
      break;
    case 16:
      result = 4096;
      break;
    case 17:
      result = 0x2000;
      break;
    case 18:
      result = 0x4000;
      break;
    case 32:
      result = 0x8000;
      break;
    case 33:
      result = 0x10000;
      break;
    case 34:
      result = 0x20000;
      break;
    case 35:
      result = 0x40000;
      break;
    case 36:
      result = 0x80000;
      break;
    case 37:
      result = 0x100000;
      break;
    case 38:
      result = 0x200000;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

unint64_t sub_29DED2A58@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29DED30B8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_29DED2A88()
{
  result = qword_2A1818218;
  if (!qword_2A1818218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818218);
  }

  return result;
}

unint64_t sub_29DED2AE0()
{
  result = qword_2A1818220;
  if (!qword_2A1818220)
  {
    sub_29DED2B38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818220);
  }

  return result;
}

void sub_29DED2B38()
{
  if (!qword_2A1818228)
  {
    v0 = sub_29E2C3684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818228);
    }
  }
}

uint64_t sub_29DED2B88(unsigned __int8 a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  if (a1 <= 4u)
  {
    if (a1 <= 1u)
    {
      if (!a1)
      {
        goto LABEL_9;
      }
    }

    else if (a1 != 2)
    {
      goto LABEL_9;
    }

    sub_29E2C3314();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_2A1A62788 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

LABEL_9:
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
LABEL_11:
    swift_once();
  }

LABEL_10:
  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  return v11;
}

char *sub_29DED2F28(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v2 = &unk_2A24AE308;
    v3 = &unk_2A24AE358;
    if (a1 != 8)
    {
      v3 = &unk_2A24AE380;
    }

    if (a1 != 7)
    {
      v2 = v3;
    }

    v4 = &unk_2A24AE2E0;
    if (a1 != 5)
    {
      v4 = &unk_2A24AE330;
    }

    if (a1 <= 6u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }

  else if (a1 <= 1u)
  {
    if (a1)
    {
      return &unk_2A24AE268;
    }

    else
    {
      return &unk_2A24AE240;
    }
  }

  else if (a1 == 2)
  {
    return &unk_2A24AE290;
  }

  else if (a1 == 3)
  {
    v5 = &unk_2A24AE1D8;
    sub_29DFC6F20(&v5);
    return v5;
  }

  else
  {
    return &unk_2A24AE2B8;
  }
}

unint64_t sub_29DED3024@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29DED30C8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_29DED3064()
{
  result = qword_2A1818230;
  if (!qword_2A1818230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818230);
  }

  return result;
}

unint64_t sub_29DED30B8(unint64_t result)
{
  if (result >= 0x33)
  {
    return 51;
  }

  return result;
}

unint64_t sub_29DED30C8(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

uint64_t sub_29DED30EC(void *a1, uint64_t a2)
{
  type metadata accessor for CycleChartsEditViewModel();
  swift_allocObject();
  v4 = a1;

  return sub_29DEC8FB4(v4, a2);
}

__n128 sub_29DED315C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29DED3170(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29DED31B8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_29DED3228@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v61 = a2;
  sub_29DED5598();
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v62 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v65 = &v49 - v6;
  v7 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v8 = sub_29E2C3384();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v59 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v49 - v12;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v49 - v15;
  sub_29E2C3314();
  v56 = *(v9 + 16);
  v56(v13, v16, v8);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v17 = qword_2A1A67F80;
  sub_29E2BCC74();
  v18 = v17;
  v19 = sub_29E2C3414();
  v21 = v20;
  v22 = *(v9 + 8);
  v50 = v8;
  v53 = v22;
  v22(v16, v8);
  v67 = v19;
  v68 = v21;
  v55 = sub_29DE9DE68();
  v23 = sub_29E2C2294();
  v57 = v24;
  v58 = v23;
  v54 = v25;
  v60 = v26;
  v28 = *(a1 + 16);
  v27 = *(a1 + 24);
  type metadata accessor for CycleChartsEditViewModel();
  sub_29DED55F0(&qword_2A1818318, type metadata accessor for CycleChartsEditViewModel);
  v51 = v27;
  v52 = v28;
  sub_29E2C14A4();
  sub_29DFDF5D0();

  v29 = v59;
  sub_29E2C3314();
  v30 = v50;
  v56(v16, v29, v50);
  sub_29E2BCC74();
  v31 = sub_29E2C3414();
  v33 = v32;
  v53(v29, v30);
  v67 = v31;
  v68 = v33;
  v34 = swift_allocObject();
  v35 = *(a1 + 16);
  *(v34 + 16) = *a1;
  *(v34 + 32) = v35;
  *(v34 + 48) = *(a1 + 32);

  sub_29DE8EF48();
  v36 = v65;
  sub_29E2C2854();
  LOBYTE(v67) = v54 & 1;
  v66 = 1;
  v38 = v62;
  v37 = v63;
  v39 = *(v63 + 16);
  v40 = v64;
  v39(v62, v36, v64);
  LOBYTE(v36) = v67;
  v42 = v60;
  v41 = v61;
  v43 = v57;
  v44 = v58;
  *v61 = v58;
  v41[1] = v43;
  *(v41 + 16) = v36;
  v45 = v66;
  v41[3] = v42;
  v41[4] = 0;
  *(v41 + 40) = v45;
  sub_29DED5528();
  v39(v41 + *(v46 + 64), v38, v40);
  sub_29DE93208(v44, v43, v36);
  v47 = *(v37 + 8);
  sub_29E2BF404();
  v47(v65, v40);
  v47(v38, v40);
  sub_29DED6478(v44, v43, v67);
}

uint64_t sub_29DED37A4()
{
  type metadata accessor for CycleChartsEditViewModel();
  sub_29DED55F0(&qword_2A1818318, type metadata accessor for CycleChartsEditViewModel);
  sub_29E2C14A4();
  if (sub_29DFDF5D0())
  {
    sub_29DFDF93C();
  }

  else
  {
    sub_29DFDF918();
  }

  sub_29E2C1084();
  sub_29E2C1124();
}

uint64_t sub_29DED3888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_29E2C1A74();
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v78 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v74 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_29E2C3384();
  v65 = *(v72 - 8);
  MEMORY[0x2A1C7C4A8](v72);
  v69 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v67 = &v63 - v9;
  v10 = sub_29E2C2A64();
  v70 = *(v10 - 8);
  v71 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v68 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_29E2C1444();
  v12 = *(v66 - 8);
  MEMORY[0x2A1C7C4A8](v66);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DED50E0();
  v64 = v15;
  v73 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DED6BF0(0, &qword_2A1818248, sub_29DED502C, sub_29DED5638);
  v63 = v18;
  MEMORY[0x2A1C7C4A8](v18);
  v20 = (&v63 - v19);
  sub_29DED4F78();
  v76 = *(v21 - 8);
  v77 = v21;
  MEMORY[0x2A1C7C4A8](v21);
  v82 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CycleChartsEditViewModel();
  sub_29DED55F0(&qword_2A1818318, type metadata accessor for CycleChartsEditViewModel);
  sub_29E2C14B4();
  swift_getKeyPath();
  sub_29E2C1674();

  v75 = a1;
  v83 = a1;
  v23 = v65;
  sub_29DED5190(0);
  sub_29DED55F0(&qword_2A18182C0, sub_29DED5190);
  v24 = v67;
  sub_29E2C21A4();
  v25 = v66;
  (*(v12 + 104))(v14, *MEMORY[0x29EDBC328], v66);
  sub_29DED55F0(&qword_2A18182C8, sub_29DED50E0);
  v26 = v64;
  sub_29E2C23F4();
  (*(v12 + 8))(v14, v25);
  v27 = v69;
  v73[1](v17, v26);
  KeyPath = swift_getKeyPath();
  v29 = v63;
  v30 = *(v63 + 36);
  v73 = v20;
  v31 = (v20 + v30);
  sub_29DED5638(0);
  v33 = *(v32 + 28);
  v35 = v70;
  v34 = v71;
  v36 = v68;
  (*(v70 + 104))(v68, *MEMORY[0x29EDBC2B0], v71);
  sub_29E2C2964();
  (*(v35 + 8))(v36, v34);
  sub_29DED56A0(0);
  v38 = v37;
  v39 = *(*(v37 - 8) + 56);
  v40 = v31 + v33;
  v41 = v72;
  v39(v40, 0, 1, v38);
  *v31 = KeyPath;
  sub_29E2C3314();
  (*(v23 + 16))(v27, v24, v41);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v42 = qword_2A1A67F80;
  sub_29E2BCC74();
  v43 = sub_29E2C3414();
  v45 = v44;
  (*(v23 + 8))(v24, v41);
  v84 = v43;
  v85 = v45;
  sub_29DE9DE68();
  v46 = sub_29E2C2294();
  v48 = v47;
  v50 = v49;
  v52 = v78;
  v51 = v79;
  v53 = v80;
  (*(v79 + 104))(v78, *MEMORY[0x29EDBBF98], v80);
  v54 = sub_29DED56D4();
  v55 = v73;
  sub_29E2C2474();
  sub_29DED6478(v46, v48, v50 & 1);

  (*(v51 + 8))(v52, v53);
  v56 = sub_29DE78FC8(v55);
  MEMORY[0x2A1C7C4A8](v56);
  sub_29DED5814();
  v84 = v29;
  v85 = v54;
  swift_getOpaqueTypeConformance2();
  sub_29DED58C8();
  v58 = v57;
  v59 = sub_29DED55F0(&qword_2A1818310, sub_29DED58C8);
  v84 = v58;
  v85 = v59;
  swift_getOpaqueTypeConformance2();
  v60 = v77;
  v61 = v82;
  sub_29E2C2574();
  return (*(v76 + 8))(v61, v60);
}

uint64_t sub_29DED4228@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  sub_29DED5460();
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DED53F0();
  v32 = v6;
  v34 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v29 - v9;
  sub_29DED5234();
  v12 = v11;
  v30 = *(v11 - 8);
  v13 = v30;
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v29 - v17;
  v37 = 0;
  v38 = 0;
  v36 = a1;
  sub_29DED529C();
  sub_29DED659C();
  v29 = v18;
  sub_29E2C29D4();
  *v5 = sub_29E2C1AA4();
  *(v5 + 1) = 0;
  v5[16] = 1;
  sub_29DED6668();
  sub_29DED3228(a1, &v5[*(v19 + 44)]);
  v35 = a1;
  sub_29DED55F0(&qword_2A1818340, sub_29DED5460);
  sub_29E2C29D4();
  v20 = *(v13 + 16);
  v20(v15, v18, v12);
  v21 = *(v34 + 16);
  v23 = v31;
  v22 = v32;
  v21(v31, v10, v32);
  v24 = v33;
  v20(v33, v15, v12);
  sub_29DED51C4();
  v21(&v24[*(v25 + 48)], v23, v22);
  v26 = *(v34 + 8);
  v26(v10, v22);
  v27 = *(v30 + 8);
  v27(v29, v12);
  v26(v23, v22);
  return (v27)(v15, v12);
}

uint64_t sub_29DED45D0()
{
  type metadata accessor for CycleChartsEditViewModel();
  sub_29DED55F0(&qword_2A1818318, type metadata accessor for CycleChartsEditViewModel);
  sub_29E2C14A4();
  sub_29E2BF404();

  swift_getKeyPath();
  sub_29DED5358(0);
  sub_29DED55F0(&qword_2A1818288, sub_29DED5358);
  sub_29DED6614();
  return sub_29E2C29A4();
}

void sub_29DED4720(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_29DED4778()
{
  type metadata accessor for CycleChartsEditViewModel();
  sub_29DED55F0(&qword_2A1818318, type metadata accessor for CycleChartsEditViewModel);
  sub_29E2C14A4();
  sub_29E2BF404();

  swift_getKeyPath();
  sub_29DED5358(0);
  sub_29DED55F0(&qword_2A1818288, sub_29DED5358);
  sub_29DED6614();
  return sub_29E2C29A4();
}

uint64_t sub_29DED48C8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CycleChartsEditViewDataTypeModel();
  sub_29DED55F0(&qword_2A1818348, type metadata accessor for CycleChartsEditViewDataTypeModel);

  result = sub_29E2C1654();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_29DED4950(uint64_t a1)
{
  sub_29DED566C(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29DED652C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), sub_29DED566C);
  return sub_29E2C19E4();
}

uint64_t sub_29DED49EC(uint64_t a1)
{
  v2 = sub_29E2C1D14();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29DED58C8();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E2C1CE4();
  v11 = a1;
  sub_29E2C2BC4();
  sub_29DED55F0(&qword_2A1818308, MEMORY[0x29EDC42F8]);
  sub_29E2C14E4();
  v8 = sub_29DED55F0(&qword_2A1818310, sub_29DED58C8);
  MEMORY[0x29ED7E530](v7, v4, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_29DED4BBC(uint64_t a1)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);

  sub_29DED652C(&v6, v5, sub_29DED6498);
  return sub_29E2C2BB4();
}

uint64_t sub_29DED4C74()
{
  sub_29DED4E0C();
  sub_29DED4F78();
  sub_29DED5814();
  sub_29DED6BF0(255, &qword_2A1818248, sub_29DED502C, sub_29DED5638);
  sub_29DED56D4();
  swift_getOpaqueTypeConformance2();
  sub_29DED58C8();
  sub_29DED55F0(&qword_2A1818310, sub_29DED58C8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_29E2C1754();
}

void sub_29DED4E0C()
{
  if (!qword_2A1818238)
  {
    sub_29DED4F78();
    sub_29DED5814();
    sub_29DED6BF0(255, &qword_2A1818248, sub_29DED502C, sub_29DED5638);
    sub_29DED56D4();
    swift_getOpaqueTypeConformance2();
    sub_29DED58C8();
    sub_29DED55F0(&qword_2A1818310, sub_29DED58C8);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1818238);
    }
  }
}

void sub_29DED4F78()
{
  if (!qword_2A1818240)
  {
    sub_29DED6BF0(255, &qword_2A1818248, sub_29DED502C, sub_29DED5638);
    sub_29DED56D4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1818240);
    }
  }
}

void sub_29DED502C()
{
  if (!qword_2A1818250)
  {
    sub_29DED50E0();
    sub_29DED55F0(&qword_2A18182C8, sub_29DED50E0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1818250);
    }
  }
}

void sub_29DED50E0()
{
  if (!qword_2A1818258)
  {
    sub_29DED5190(255);
    sub_29DED55F0(&qword_2A18182C0, sub_29DED5190);
    v0 = sub_29E2C21D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818258);
    }
  }
}

void sub_29DED51C4()
{
  if (!qword_2A1818268)
  {
    sub_29DED5234();
    sub_29DED53F0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1818268);
    }
  }
}

void sub_29DED5234()
{
  if (!qword_2A1818270)
  {
    sub_29DED529C();
    v0 = sub_29E2C2A14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818270);
    }
  }
}

void sub_29DED529C()
{
  if (!qword_2A1818278)
  {
    sub_29DED5358(255);
    sub_29DED55F0(&qword_2A1818288, sub_29DED5358);
    v0 = sub_29E2C29C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818278);
    }
  }
}

void sub_29DED538C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29DED53F0()
{
  if (!qword_2A1818290)
  {
    sub_29DED5460();
    sub_29DED529C();
    v0 = sub_29E2C2A14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818290);
    }
  }
}

void sub_29DED5460()
{
  if (!qword_2A1818298)
  {
    sub_29DED54F4(255);
    sub_29DED55F0(&qword_2A18182B8, sub_29DED54F4);
    v0 = sub_29E2C2884();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818298);
    }
  }
}

void sub_29DED5528()
{
  if (!qword_2A18182A8)
  {
    sub_29DED5598();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A18182A8);
    }
  }
}

void sub_29DED5598()
{
  if (!qword_2A18182B0)
  {
    v0 = sub_29E2C2864();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18182B0);
    }
  }
}

uint64_t sub_29DED55F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29DED56D4()
{
  result = qword_2A18182E8;
  if (!qword_2A18182E8)
  {
    sub_29DED6BF0(255, &qword_2A1818248, sub_29DED502C, sub_29DED5638);
    sub_29DED50E0();
    sub_29DED55F0(&qword_2A18182C8, sub_29DED50E0);
    swift_getOpaqueTypeConformance2();
    sub_29DED55F0(&qword_2A18182F0, sub_29DED5638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18182E8);
  }

  return result;
}

void sub_29DED5814()
{
  if (!qword_2A18182F8)
  {
    sub_29DED58C8();
    sub_29DED55F0(&qword_2A1818310, sub_29DED58C8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A18182F8);
    }
  }
}

void sub_29DED58C8()
{
  if (!qword_2A1818300)
  {
    sub_29E2C2BC4();
    sub_29DED55F0(&qword_2A1818308, MEMORY[0x29EDC42F8]);
    v0 = sub_29E2C14F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818300);
    }
  }
}

uint64_t sub_29DED5970(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v57 = sub_29E2BCA04();
  v55 = *(v57 - 8);
  MEMORY[0x2A1C7C4A8](v57);
  v53 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_29E2BC9D4();
  v56 = *(v58 - 8);
  MEMORY[0x2A1C7C4A8](v58);
  v54 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BCA44();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v63 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCE84();
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BCEA4();
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2BCA54();
  v69 = *(v12 - 8);
  v70 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v66 = &v52 - v16;
  MEMORY[0x2A1C7C4A8](v17);
  v67 = &v52 - v18;
  v19 = sub_29E2BCBB4();
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v25 = &v52 - v24;
  MEMORY[0x2A1C7C4A8](v26);
  v28 = &v52 - v27;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  v29 = v71;
  if (!v71)
  {
    return 0;
  }

  v30 = [v71 endDate];

  sub_29E2BCB44();
  (*(v20 + 32))(v28, v25, v19);
  sub_29E2BCE44();
  sub_29E2BCB54();
  v32 = v61;
  v31 = v62;
  (*(v61 + 104))(v8, *MEMORY[0x29EDB9CD0], v62);
  LOBYTE(v30) = sub_29E2BCE24();
  (*(v32 + 8))(v8, v31);
  v62 = v20;
  v33 = *(v20 + 8);
  v61 = v20 + 8;
  v52 = v33;
  v33(v22, v19);
  v34 = (*(v59 + 8))(v11, v60);
  MEMORY[0x29ED78EF0](v34);
  v35 = v69 + 8;
  v68 = v19;
  v36 = v28;
  if (v30)
  {
    v37 = v63;
    sub_29E2BCA14();
    v38 = v66;
    sub_29E2BC9B4();
    (*(v64 + 8))(v37, v65);
    v39 = *v35;
    v60 = v35 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v40 = v70;
    v39(v14, v70);
    v41 = v54;
    sub_29E2BC9C4();
    v42 = v67;
    sub_29E2BC994();
    (*(v56 + 8))(v41, v58);
  }

  else
  {
    v44 = v53;
    sub_29E2BC9E4();
    v38 = v66;
    sub_29E2BC9A4();
    (*(v55 + 8))(v44, v57);
    v39 = *v35;
    v60 = v35 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v40 = v70;
    v39(v14, v70);
    v45 = v63;
    sub_29E2BCA14();
    v42 = v67;
    sub_29E2BC9B4();
    (*(v64 + 8))(v45, v65);
  }

  v65 = v39;
  v39(v38, v40);
  (*(v62 + 16))(v22, v36, v68);
  (*(v69 + 2))(v38, v42, v40);
  sub_29DED55F0(&qword_2A1817C78, MEMORY[0x29EDB9BB0]);
  sub_29DED55F0(&qword_2A181D9C0, MEMORY[0x29EDB9BC8]);
  v46 = sub_29E2C2264();
  v48 = v47;
  v69 = v36;
  v50 = v49;
  sub_29E2C2044();
  v43 = sub_29E2C2254();

  sub_29DED6478(v46, v48, v50 & 1);

  v65(v42, v70);
  v52(v69, v68);
  return v43;
}

void sub_29DED61A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v31 = a1;
  v33 = a3;
  sub_29DED68F8();
  v32 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29DEC9E9C();
  v35 = v7;
  sub_29DE9DE68();
  v8 = sub_29E2C2294();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  KeyPath = swift_getKeyPath();
  v34 = v8;
  v35 = v10;
  v36 = v12 & 1;
  v37 = v14;
  v38 = KeyPath;
  v39 = 0x3FE999999999999ALL;
  sub_29DED697C();
  v17 = v16;
  v18 = sub_29DED6A2C();
  sub_29E2C2414();
  sub_29DED6478(v8, v10, v12 & 1);

  v19 = sub_29DED5970(v31, v30);
  v21 = v20;
  LOBYTE(v10) = v22;
  v24 = v23;
  v34 = v17;
  v35 = v18;
  swift_getOpaqueTypeConformance2();
  v26 = v32;
  v25 = v33;
  sub_29E2C2524();
  sub_29DED6ADC(v19, v21, v10, v24);
  (*(v4 + 8))(v6, v26);
  v27 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v34 = sub_29E2C2654();
  LOWORD(v35) = 256;
  sub_29DED6B20();
  sub_29DED55F0(&qword_2A1818398, sub_29DED6B20);
  v28 = sub_29E2C2914();
  sub_29DED6BF0(0, &qword_2A18183A0, sub_29DED6C64, sub_29DED6D20);
  *(v25 + *(v29 + 36)) = v28;
}

uint64_t sub_29DED6478(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_29DED6498()
{
  if (!qword_2A1818320)
  {
    type metadata accessor for CycleChartsEditViewModel();
    sub_29DED55F0(&qword_2A1818318, type metadata accessor for CycleChartsEditViewModel);
    v0 = sub_29E2C14C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818320);
    }
  }
}

uint64_t sub_29DED652C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_29DED659C()
{
  result = qword_2A1818328;
  if (!qword_2A1818328)
  {
    sub_29DED529C();
    sub_29DED6614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818328);
  }

  return result;
}

unint64_t sub_29DED6614()
{
  result = qword_2A1818330;
  if (!qword_2A1818330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818330);
  }

  return result;
}

void sub_29DED6668()
{
  if (!qword_2A1818338)
  {
    sub_29DED54F4(255);
    v0 = sub_29E2C15D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818338);
    }
  }
}

uint64_t sub_29DED66E4()
{

  sub_29DE8EF40();

  return MEMORY[0x2A1C733A0](v0, 49, 7);
}

void sub_29DED6740()
{
  if (!qword_2A1818358)
  {
    sub_29E2C1624();
    sub_29DED4E0C();
    sub_29DED4F78();
    sub_29DED5814();
    sub_29DED6BF0(255, &qword_2A1818248, sub_29DED502C, sub_29DED5638);
    sub_29DED56D4();
    swift_getOpaqueTypeConformance2();
    sub_29DED58C8();
    sub_29DED55F0(&qword_2A1818310, sub_29DED58C8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_29E2C1764();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818358);
    }
  }
}

void sub_29DED68F8()
{
  if (!qword_2A1818360)
  {
    sub_29DED697C();
    sub_29DED6A2C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1818360);
    }
  }
}

void sub_29DED697C()
{
  if (!qword_2A1818368)
  {
    sub_29DED69DC();
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818368);
    }
  }
}

void sub_29DED69DC()
{
  if (!qword_2A1818370)
  {
    v0 = sub_29E2C1F44();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818370);
    }
  }
}

unint64_t sub_29DED6A2C()
{
  result = qword_2A1818378;
  if (!qword_2A1818378)
  {
    sub_29DED697C();
    sub_29DED55F0(&qword_2A1818380, sub_29DED69DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818378);
  }

  return result;
}

uint64_t sub_29DED6ADC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_29DED6478(result, a2, a3 & 1);
  }

  return result;
}

void sub_29DED6B20()
{
  if (!qword_2A1818388)
  {
    sub_29DED6B9C();
    v0 = sub_29E2C1474();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818388);
    }
  }
}

unint64_t sub_29DED6B9C()
{
  result = qword_2A1818390;
  if (!qword_2A1818390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818390);
  }

  return result;
}

void sub_29DED6BF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29E2C1744();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29DED6C64()
{
  if (!qword_2A18183A8)
  {
    sub_29DED68F8();
    sub_29DED697C();
    sub_29DED6A2C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A18183A8);
    }
  }
}

void sub_29DED6D20()
{
  if (!qword_2A18183B0)
  {
    sub_29E2C1EB4();
    sub_29DED55F0(&qword_2A18183B8, MEMORY[0x29EDBC078]);
    v0 = sub_29E2C1D84();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18183B0);
    }
  }
}

unint64_t sub_29DED6DB4()
{
  result = qword_2A18183C0;
  if (!qword_2A18183C0)
  {
    sub_29DED6BF0(255, &qword_2A18183A0, sub_29DED6C64, sub_29DED6D20);
    sub_29DED68F8();
    sub_29DED697C();
    sub_29DED6A2C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29DED55F0(&qword_2A18183C8, sub_29DED6D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18183C0);
  }

  return result;
}

__n128 sub_29DED6F0C(uint64_t a1, uint64_t a2)
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

uint64_t sub_29DED6F28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29DED6F70(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_29DED6FF4@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  sub_29DED86A0();
  v4 = **a1;
  sub_29DED86F4();
  v5 = a1[1];
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v10 = v5[3];
  v9 = v5[4];
  sub_29DED8748();
  v11 = a1[2];
  v13 = *v11;
  v12 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v16 = v11[4];
  *&v23 = v4;
  *(&v23 + 1) = v6;
  *&v24 = v7;
  *(&v24 + 1) = v8;
  *&v25 = v10;
  *(&v25 + 1) = v9;
  *&v26 = v13;
  *(&v26 + 1) = v12;
  *&v27 = v14;
  *(&v27 + 1) = v15;
  v28 = v16;
  v17 = v24;
  *a2 = v23;
  *(a2 + 16) = v17;
  v18 = v25;
  v19 = v26;
  v20 = v27;
  *(a2 + 80) = v28;
  *(a2 + 48) = v19;
  *(a2 + 64) = v20;
  *(a2 + 32) = v18;
  v29[0] = v4;
  v29[1] = v6;
  v29[2] = v7;
  v29[3] = v8;
  v29[4] = v10;
  v29[5] = v9;
  v29[6] = v13;
  v29[7] = v12;
  v29[8] = v14;
  v29[9] = v15;
  v29[10] = v16;
  sub_29E2BF404();
  sub_29E2BF404();
  sub_29E2BF404();
  sub_29E2BF404();
  sub_29E2BF404();
  sub_29DED90F4(&v23, v22);
  return sub_29DED91C0(v29);
}

uint64_t sub_29DED710C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29DED921C();
  v5 = v4 - 8;
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DED9290();
  v9 = v8;
  sub_29DED9C70();
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v11(v7, *a1, v9);
  v12 = *(v5 + 56);
  v11(&v7[v12], a1[1], v9);
  sub_29DED9600();
  v14 = v13;
  sub_29DED970C();
  sub_29E2C0E14();
  sub_29DED97E8(255, &qword_2A18184D0, sub_29DED9854, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  sub_29DED9A0C();
  v15 = *(v5 + 72);
  v16 = a1[2];
  v17 = *(v14 - 8);
  (*(v17 + 16))(&v7[v15], v16, v14);
  v18 = *(v10 + 32);
  v18(a2, v7, v9);
  v18(a2 + *(v5 + 56), &v7[v12], v9);
  return (*(v17 + 32))(a2 + *(v5 + 72), &v7[v15], v14);
}

uint64_t sub_29DED7314@<X0>(uint64_t a1@<X8>)
{
  sub_29DE9DE68();
  sub_29E2BF404();
  v2 = sub_29E2C2294();
  v4 = v3;
  v6 = v5;
  v7 = [objc_opt_self() hk:14.0 compactRoundedFontOfSize:?];
  sub_29E2C2174();
  v8 = sub_29E2C2254();
  v10 = v9;
  v12 = v11;

  sub_29DED6478(v2, v4, v6 & 1);

  v13 = [objc_opt_self() secondaryLabelColor];
  sub_29E2C2654();
  v14 = sub_29E2C2214();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_29DED6478(v8, v10, v12 & 1);

  result = swift_getKeyPath();
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_29DED74A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 32);
  v14[0] = *a1;
  v4 = v14[0];
  v14[1] = v3;
  v14[2] = v2;
  v18[0] = v14[0];
  v18[1] = v3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 48);
  v18[2] = v2;
  v18[3] = v5;
  v8 = *(a1 + 48);
  v7 = *(a1 + 64);
  v14[3] = v5;
  v14[4] = v7;
  v9 = *(a1 + 88);
  v15 = *(a1 + 80);
  v19 = v15;
  v18[4] = v7;
  v16[0] = v14[0];
  v16[1] = v3;
  v17 = *(a1 + 80);
  v10 = v17;
  v11 = *(a1 + 64);
  v16[3] = v8;
  v16[4] = v11;
  v16[2] = v6;
  *a2 = v9;
  *(a2 + 56) = v8;
  *(a2 + 40) = v6;
  *(a2 + 72) = v11;
  *(a2 + 88) = v10;
  *(a2 + 24) = v3;
  *(a2 + 8) = v4;
  sub_29E2BF404();
  sub_29DED778C(v14, v13);
  sub_29E2BF404();
  sub_29DED77C4(v16, v13);
  sub_29DED77FC(v18);
}

double sub_29DED756C@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v21[2] = v1[2];
  v21[3] = v3;
  v4 = v1[5];
  v21[4] = v1[4];
  v21[5] = v4;
  v5 = v1[1];
  v21[0] = *v1;
  v21[1] = v5;
  v6 = sub_29E2C1BD4();
  v20 = 1;
  sub_29DED74A0(v21, &v13);
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v22 = v13;
  v23 = v14;
  v28[2] = v15;
  v28[3] = v16;
  v28[4] = v17;
  v28[5] = v18;
  v28[0] = v13;
  v28[1] = v14;
  sub_29DED7698(&v22, &v12);
  sub_29DED9098(v28, &qword_2A18183D0, sub_29DED772C, MEMORY[0x29EDBCC28]);
  *&v19[39] = v24;
  *&v19[55] = v25;
  *&v19[71] = v26;
  *&v19[87] = v27;
  *&v19[7] = v22;
  *&v19[23] = v23;
  v7 = *&v19[32];
  *(a1 + 65) = *&v19[48];
  v8 = *&v19[80];
  *(a1 + 81) = *&v19[64];
  *(a1 + 97) = v8;
  v10 = *v19;
  result = *&v19[16];
  *(a1 + 33) = *&v19[16];
  *(a1 + 49) = v7;
  v11 = v20;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 112) = *&v19[95];
  *(a1 + 17) = v10;
  return result;
}

uint64_t sub_29DED7698(uint64_t a1, uint64_t a2)
{
  sub_29DED84D0(0, &qword_2A18183D0, sub_29DED772C, MEMORY[0x29EDBCC28]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29DED772C()
{
  if (!qword_2A18183D8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A18183D8);
    }
  }
}

__n128 sub_29DED782C(uint64_t a1, uint64_t a2)
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

uint64_t sub_29DED7860(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29DED78A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_29DED790C()
{
  if (!qword_2A18183E8)
  {
    sub_29DED84D0(255, &qword_2A18183D0, sub_29DED772C, MEMORY[0x29EDBCC28]);
    sub_29DED79A0();
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18183E8);
    }
  }
}

unint64_t sub_29DED79A0()
{
  result = qword_2A18183F0;
  if (!qword_2A18183F0)
  {
    sub_29DED84D0(255, &qword_2A18183D0, sub_29DED772C, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18183F0);
  }

  return result;
}

uint64_t sub_29DED7A44@<X0>(uint64_t a1@<X8>)
{
  v64 = MEMORY[0x29EDB8710];
  v65 = a1;
  v66 = MEMORY[0x29EDC9C68];
  sub_29DED84D0(0, &qword_2A18183F8, MEMORY[0x29EDB8710], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v53 = &v51 - v3;
  v4 = sub_29E2C0D54();
  v5 = *(v4 - 8);
  v62 = v4;
  v63 = v5;
  MEMORY[0x2A1C7C4A8](v4);
  v57 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DED97E8(0, &qword_2A1818400, sub_29DED8534, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  v8 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v51 - v9;
  sub_29DED879C();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DED8A70();
  v54 = v16;
  v56 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v52 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DED8BBC();
  v58 = v18;
  v59 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v51 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DED8D58();
  v60 = v20;
  v61 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v55 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v1;
  sub_29DED8598();
  sub_29DED8610();
  sub_29E2C0D84();
  sub_29E2C2AB4();
  sub_29E2C1564();
  v22 = &v10[*(v8 + 36)];
  v23 = v74;
  *v22 = v73;
  *(v22 + 1) = v23;
  *(v22 + 2) = v75;
  sub_29DED97E8(0, &qword_2A1818440, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86F0]);
  v25 = v24;
  v26 = sub_29DED88B0();
  v27 = sub_29DED89E0();
  sub_29E2C22C4();
  sub_29DED9004(v10);
  v69 = v8;
  v70 = v25;
  v71 = v26;
  v72 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v52;
  sub_29E2C22D4();
  (*(v13 + 8))(v15, v12);
  v30 = v57;
  sub_29E2C0D44();
  v31 = sub_29E2C0E24();
  v32 = *(*(v31 - 8) + 56);
  v33 = v53;
  v32(v53, 1, 1, v31);
  v69 = v12;
  v70 = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v30;
  v36 = v54;
  v37 = v62;
  v38 = v29;
  sub_29E2C2304();
  v39 = v33;
  v40 = v33;
  v41 = v64;
  sub_29DED9098(v39, &qword_2A18183F8, v64, v66);
  (*(v63 + 8))(v35, v37);
  (*(v56 + 8))(v38, v36);
  v68 = &unk_2A24AE3A8;
  v32(v40, 1, 1, v31);
  sub_29DED99BC(0, &qword_2A181B790, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9A40]);
  v43 = v42;
  v69 = v36;
  v70 = v37;
  v71 = v34;
  v72 = MEMORY[0x29EDB8678];
  v44 = swift_getOpaqueTypeConformance2();
  v45 = sub_29DED8F68();
  v46 = v55;
  v47 = v58;
  v48 = v51;
  sub_29E2C22F4();
  sub_29DED9098(v40, &qword_2A18183F8, v41, v66);
  (*(v59 + 8))(v48, v47);
  v69 = v47;
  v70 = v43;
  v71 = v44;
  v72 = v45;
  swift_getOpaqueTypeConformance2();
  v49 = v60;
  sub_29E2C22E4();
  return (*(v61 + 8))(v46, v49);
}

uint64_t sub_29DED8210@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[3];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a1[7];
  v8 = a1[10];
  v15 = a1[4];
  v16 = v8;
  v12 = v3;
  v13 = *(a1 + 1);
  v14 = v4;
  v17[0] = &v16;
  v17[1] = &v12;
  v10[0] = v6;
  v10[1] = v5;
  v10[2] = v7;
  v11 = *(a1 + 4);
  v17[2] = v10;
  sub_29E2BF404();
  sub_29E2BF404();
  sub_29E2BF404();
  sub_29E2BF404();
  sub_29E2BF404();
  sub_29DED6FF4(v17, a2);
}

uint64_t sub_29DED82F8()
{
  v0 = sub_29E2C0CF4();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C0CB4();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  sub_29E2C0CA4();
  sub_29E2C0CE4();
  sub_29E2C0B94();
  return sub_29E2C0DF4();
}

void sub_29DED84D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29DED8534()
{
  if (!qword_2A1818408)
  {
    sub_29DED8598();
    sub_29DED8610();
    v0 = sub_29E2C0D94();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818408);
    }
  }
}

void sub_29DED8598()
{
  if (!qword_2A1818410)
  {
    v0 = sub_29E2C0BA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818410);
    }
  }
}

unint64_t sub_29DED8610()
{
  result = qword_2A1818418;
  if (!qword_2A1818418)
  {
    sub_29DED8598();
    sub_29DED86A0();
    sub_29DED86F4();
    sub_29DED8748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818418);
  }

  return result;
}

unint64_t sub_29DED86A0()
{
  result = qword_2A1818420;
  if (!qword_2A1818420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818420);
  }

  return result;
}

unint64_t sub_29DED86F4()
{
  result = qword_2A1818428;
  if (!qword_2A1818428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818428);
  }

  return result;
}

unint64_t sub_29DED8748()
{
  result = qword_2A1818430;
  if (!qword_2A1818430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818430);
  }

  return result;
}

void sub_29DED879C()
{
  if (!qword_2A1818438)
  {
    sub_29DED97E8(255, &qword_2A1818400, sub_29DED8534, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29DED97E8(255, &qword_2A1818440, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86F0]);
    sub_29DED88B0();
    sub_29DED89E0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1818438);
    }
  }
}

unint64_t sub_29DED88B0()
{
  result = qword_2A1818448;
  if (!qword_2A1818448)
  {
    sub_29DED97E8(255, &qword_2A1818400, sub_29DED8534, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29DED8998(&qword_2A1818450, sub_29DED8534);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818448);
  }

  return result;
}

uint64_t sub_29DED8998(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29DED89E0()
{
  result = qword_2A1818458;
  if (!qword_2A1818458)
  {
    sub_29DED97E8(255, &qword_2A1818440, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818458);
  }

  return result;
}

void sub_29DED8A70()
{
  if (!qword_2A1818460)
  {
    sub_29DED879C();
    sub_29DED97E8(255, &qword_2A1818400, sub_29DED8534, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29DED97E8(255, &qword_2A1818440, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86F0]);
    sub_29DED88B0();
    sub_29DED89E0();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1818460);
    }
  }
}

void sub_29DED8BBC()
{
  if (!qword_2A1818468)
  {
    sub_29DED8A70();
    sub_29E2C0D54();
    sub_29DED879C();
    sub_29DED97E8(255, &qword_2A1818400, sub_29DED8534, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29DED97E8(255, &qword_2A1818440, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86F0]);
    sub_29DED88B0();
    sub_29DED89E0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1818468);
    }
  }
}

void sub_29DED8D58()
{
  if (!qword_2A1818470)
  {
    sub_29DED8BBC();
    sub_29DED99BC(255, &qword_2A181B790, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9A40]);
    sub_29DED8A70();
    sub_29E2C0D54();
    sub_29DED879C();
    sub_29DED97E8(255, &qword_2A1818400, sub_29DED8534, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29DED97E8(255, &qword_2A1818440, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86F0]);
    sub_29DED88B0();
    sub_29DED89E0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29DED8F68();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1818470);
    }
  }
}

unint64_t sub_29DED8F68()
{
  result = qword_2A1818478;
  if (!qword_2A1818478)
  {
    sub_29DED99BC(255, &qword_2A181B790, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818478);
  }

  return result;
}

uint64_t sub_29DED9004(uint64_t a1)
{
  sub_29DED97E8(0, &qword_2A1818400, sub_29DED8534, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DED9098(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_29DED84D0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_29DED90F4(uint64_t a1, uint64_t a2)
{
  sub_29DED9158();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29DED9158()
{
  if (!qword_2A1818480)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1818480);
    }
  }
}

uint64_t sub_29DED91C0(uint64_t a1)
{
  sub_29DED9158();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29DED921C()
{
  if (!qword_2A1818488)
  {
    sub_29DED9290();
    sub_29DED9600();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1818488);
    }
  }
}

void sub_29DED9290()
{
  if (!qword_2A1818490)
  {
    sub_29DED99BC(255, &qword_2A1818498, &type metadata for LinePoint, MEMORY[0x29EDC9A40]);
    sub_29DED934C();
    sub_29DED9584();
    v0 = sub_29E2C29C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818490);
    }
  }
}

void sub_29DED934C()
{
  if (!qword_2A18184A0)
  {
    sub_29DED944C();
    sub_29DED9500();
    sub_29E2C0DB4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A18184A0);
    }
  }
}

void sub_29DED944C()
{
  if (!qword_2A18184A8)
  {
    sub_29DED9500();
    sub_29E2C0DB4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A18184A8);
    }
  }
}

void sub_29DED9500()
{
  if (!qword_2A18184B0)
  {
    sub_29E2C0DB4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A18184B0);
    }
  }
}

unint64_t sub_29DED9584()
{
  result = qword_2A18184B8;
  if (!qword_2A18184B8)
  {
    sub_29DED99BC(255, &qword_2A1818498, &type metadata for LinePoint, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18184B8);
  }

  return result;
}

void sub_29DED9600()
{
  if (!qword_2A18184C0)
  {
    sub_29DED970C();
    sub_29E2C0E14();
    sub_29DED97E8(255, &qword_2A18184D0, sub_29DED9854, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29DED9A0C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A18184C0);
    }
  }
}

void sub_29DED970C()
{
  if (!qword_2A18184C8)
  {
    sub_29E2C0E14();
    sub_29DED97E8(255, &qword_2A18184D0, sub_29DED9854, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29DED9A0C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A18184C8);
    }
  }
}

void sub_29DED97E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_29DED9854()
{
  if (!qword_2A18184D8)
  {
    sub_29DED98BC();
    sub_29DED9940();
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18184D8);
    }
  }
}

void sub_29DED98BC()
{
  if (!qword_2A18184E0)
  {
    sub_29DED99BC(255, &qword_2A18184E8, MEMORY[0x29EDBC400], MEMORY[0x29EDBC938]);
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18184E0);
    }
  }
}

void sub_29DED9940()
{
  if (!qword_2A18184F0)
  {
    sub_29DED99BC(255, &qword_2A18184F8, MEMORY[0x29EDBCA98], MEMORY[0x29EDC9C68]);
    v0 = sub_29E2C1F44();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18184F0);
    }
  }
}

void sub_29DED99BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29DED9A0C()
{
  result = qword_2A1818500;
  if (!qword_2A1818500)
  {
    sub_29DED97E8(255, &qword_2A18184D0, sub_29DED9854, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29DED9AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818500);
  }

  return result;
}

unint64_t sub_29DED9AC4()
{
  result = qword_2A1818508;
  if (!qword_2A1818508)
  {
    sub_29DED9854();
    sub_29DED9B74();
    sub_29DED8998(&qword_2A1818520, sub_29DED9940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818508);
  }

  return result;
}

unint64_t sub_29DED9B74()
{
  result = qword_2A1818510;
  if (!qword_2A1818510)
  {
    sub_29DED98BC();
    sub_29DED9BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818510);
  }

  return result;
}

unint64_t sub_29DED9BF4()
{
  result = qword_2A1818518;
  if (!qword_2A1818518)
  {
    sub_29DED99BC(255, &qword_2A18184E8, MEMORY[0x29EDBC400], MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818518);
  }

  return result;
}

unint64_t sub_29DED9C70()
{
  result = qword_2A1818528;
  if (!qword_2A1818528)
  {
    sub_29DED9290();
    sub_29DED944C();
    sub_29DED9500();
    sub_29E2C0DB4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818528);
  }

  return result;
}

uint64_t sub_29DED9DC8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, int a8)
{
  v9 = v8;
  LODWORD(v203) = a8;
  v202 = a7;
  v201 = a6;
  v207 = a5;
  v218 = a2;
  sub_29DEC6594();
  v168 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v169 = &v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v167 = &v162 - v16;
  sub_29DEDB904();
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v170 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v171 = &v162 - v20;
  sub_29DEDB978();
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v177 = &v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v176 = &v162 - v24;
  sub_29DEDBA74(0, &qword_2A1819F90, MEMORY[0x29EDC9930]);
  v179 = v25;
  MEMORY[0x2A1C7C4A8](v25);
  v204 = &v162 - v26;
  sub_29DEDD9F0(0, &unk_2A1820F90, type metadata accessor for CycleChartsModel, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v27 - 8);
  v200 = (&v162 - v28);
  v215 = type metadata accessor for CycleChartCycle(0);
  v163 = *(v215 - 8);
  MEMORY[0x2A1C7C4A8](v215);
  v164 = &v162 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30);
  v172 = &v162 - v31;
  v198 = sub_29E2BE874();
  v197 = *(v198 - 8);
  MEMORY[0x2A1C7C4A8](v198);
  v199 = (&v162 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v194 = sub_29E2BCC94();
  v193 = *(v194 - 8);
  MEMORY[0x2A1C7C4A8](v194);
  v192 = &v162 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v34 - 8);
  v195 = &v162 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_29E2C3384();
  v221 = *(v188 - 8);
  MEMORY[0x2A1C7C4A8](v188);
  v185 = &v162 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v37);
  v186 = &v162 - v38;
  v39 = sub_29E2C3364();
  MEMORY[0x2A1C7C4A8](v39 - 8);
  v187 = (&v162 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = sub_29E2C31A4();
  v42 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41);
  v173 = &v162 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v44);
  v46 = &v162 - v45;
  v166 = sub_29E2BCBB4();
  v165 = *(v166 - 8);
  MEMORY[0x2A1C7C4A8](v166);
  v206 = &v162 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_29E2BCEA4();
  v49 = *(v48 - 1);
  MEMORY[0x2A1C7C4A8](v48);
  v196 = &v162 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v52 = MEMORY[0x2A1C7C4A8](v51).n128_u64[0];
  v54 = &v162 - v53;
  *(v9 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartPDFProvider_dayProviderSubscription) = 0;
  v178 = a1;
  v55 = [a1 healthStore];
  v184 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartPDFProvider_healthStore;
  *(v9 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartPDFProvider_healthStore) = v55;
  v205 = a4;
  v56 = [a4 currentCalendar];
  sub_29E2BCDC4();

  v220 = v9;
  v57 = v9 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartPDFProvider_gregorianCalendar;
  (*(v49 + 32))(v9 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartPDFProvider_gregorianCalendar, v54, v48);
  v58 = *(v42 + 16);
  v208 = a3;
  v59 = a3;
  v60 = v41;
  v217 = v42 + 16;
  v219 = v58;
  v58((v9 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartPDFProvider_today), v59, v41);
  v190 = *(v218 + 8);
  v61 = [v190 menstruationSegment];
  [v61 days];

  sub_29E2C30D4();
  v62 = v206;
  sub_29E2C3194();
  v209 = v42;
  v64 = v42 + 8;
  v63 = *(v42 + 8);
  v216 = v46;
  v213 = v60;
  v65 = v221;
  v175 = v64;
  v174 = v63;
  v63(v46, v60);
  v66 = *(v49 + 16);
  v191 = v57;
  v211 = v66;
  v212 = v49 + 16;
  v66(v54, v57, v48);
  v67 = v185;
  MEMORY[0x29ED7B190](v62, 0, v54);
  v68 = *(v49 + 8);
  v210 = v54;
  v69 = v54;
  v70 = v186;
  v214 = v48;
  v71 = v48;
  v72 = v188;
  v68(v69, v71);
  v189 = sub_29E2BE864();
  v73 = sub_29E2BEFE4();
  v74 = *(v220 + v184);
  v75 = sub_29E2BEFB4();
  v224 = v73;
  v225 = MEMORY[0x29EDC24D0];
  v223 = v75;
  sub_29E2C3354();
  sub_29E2C3344();
  sub_29E2C3334();

  sub_29E2C3344();
  sub_29E2C3374();
  v76 = v72;
  v187 = v65[2];
  v187(v67, v70, v72);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v77 = qword_2A1A67F80;
  v78 = qword_2A1A67F80;
  v184 = v77;
  v79 = v78;
  sub_29E2BCC74();
  v80 = v79;
  v181 = sub_29E2C3414();
  v180 = v81;
  v82 = v65[1];
  v221 = v65 + 1;
  v183 = v82;
  v82(v70, v76);
  sub_29DEDD9F0(0, &qword_2A1818578, MEMORY[0x29EDC2148], MEMORY[0x29EDC9E90]);
  v83 = sub_29E2BE9D4();
  v182 = "MINDER_CANCEL_PROMPT";
  v84 = v67;
  v85 = v83;
  v86 = *(v83 - 8);
  v87 = (*(v86 + 80) + 32) & ~*(v86 + 80);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_29E2CAB20;
  (*(v86 + 104))(v88 + v87, *MEMORY[0x29EDC2138], v85);
  sub_29DE927DC(v88);
  swift_setDeallocating();
  (*(v86 + 8))(v88 + v87, v85);
  swift_deallocClassInstance();
  v89 = v193;
  v90 = v192;
  v91 = v194;
  (*(v193 + 104))(v192, *MEMORY[0x29EDB9C78], v194);
  v92 = v76;
  v93 = v210;
  sub_29E2BCCA4();
  (*(v89 + 8))(v90, v91);
  v94 = v189;
  v95 = sub_29E2BE854();
  sub_29E2C3314();
  v187(v84, v70, v92);
  sub_29E2BCC74();
  sub_29E2C3414();
  v183(v70, v92);
  v224 = v94;
  v225 = MEMORY[0x29EDC20A0];
  v223 = v95;
  v96 = type metadata accessor for PDFCycleTrackingPage();
  v97 = v199;
  *v199 = v96;
  (*(v197 + 104))(v97, *MEMORY[0x29EDC20A8], v198);
  v98 = objc_allocWithZone(sub_29E2BED94());
  v198 = v95;

  v99 = sub_29E2BED84();
  v100 = v220;
  *(v220 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartPDFProvider_pdfViewController) = v99;
  sub_29DE99B54();
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_29E2CE220;
  v102 = v190;
  *(v101 + 32) = v190;
  v103 = v216;
  v104 = v213;
  v219(v216, v208, v213);
  v105 = v93;
  v211(v93, v191, v214);
  v221 = v102;
  v106 = v196;
  sub_29E2BCE44();
  type metadata accessor for CycleChartsPDFModelProvider();
  swift_allocObject();
  v107 = v207;
  sub_29DEDD5BC(v207, &v223);
  v108 = v201;
  v109 = v202;
  v110 = v203 & 1;
  v203 = v108;
  v202 = v109;
  v111 = sub_29DEEF250(v101, v103, v105, v106, v107, v108, v109, v110);
  *(v100 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartPDFProvider_chartsProvider) = v111;
  v112 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartsPDFModelProvider_fertilityChart;
  swift_beginAccess();
  v113 = v111 + v112;
  v114 = v200;
  sub_29DEDD618(v113, v200);
  v115 = type metadata accessor for CycleChartsModel();
  result = (*(*(v115 - 8) + 48))(v114, 1, v115);
  v117 = v219;
  if (result != 1)
  {
    v118 = v100;
    v119 = *v114;
    sub_29E2BF404();
    sub_29DEDD8C4(v114, type metadata accessor for CycleChartsModel);
    v120 = v218;
    if (*(v119 + 16))
    {
      v121 = v164;
      sub_29DEDD6AC(v119 + ((*(v163 + 80) + 32) & ~*(v163 + 80)), v164, type metadata accessor for CycleChartCycle);

      v122 = v172;
      sub_29DEDD924(v121, v172, type metadata accessor for CycleChartCycle);
    }

    else
    {

      v122 = v172;
      sub_29DEDD6AC(v120, v172, type metadata accessor for CycleChartCycle);
    }

    v123 = v209;
    v124 = v100;
    sub_29DEDD924(v122, v100 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartPDFProvider_cycle, type metadata accessor for CycleChartCycle);
    v125 = v204;
    sub_29E02CAF8((v120 + *(v215 + 24)), v204);
    v126 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartPDFProvider_healthStore;
    v127 = *(v118 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartPDFProvider_healthStore);
    v128 = v176;
    v117(v176, v125, v104);
    v129 = *(v123 + 56);
    v129(v128, 0, 1, v104);
    v130 = v177;
    v129(v177, 1, 1, v104);
    v131 = v127;
    v132 = v178;
    v133 = sub_29E059C18(v128, v130);
    sub_29DEDD8C4(v130, sub_29DEDB978);
    sub_29DEDD8C4(v128, sub_29DEDB978);
    v134 = objc_allocWithZone(MEMORY[0x29EDC3408]);
    v135 = [v134 initWithHealthStore:v131 analysisProvider:v132 pregnancyModelProvider:0 maximumActiveDuration:v133 minimumBufferDuration:0 shouldFetchCycleFactors:0 calendarCache:v205];

    v221 = v132;
    v136 = *(v124 + v126);
    v137 = v210;
    v211(v210, v124 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartPDFProvider_gregorianCalendar, v214);
    type metadata accessor for CycleChartDayProvider();
    swift_allocObject();
    v138 = v135;
    v139 = v136;
    v140 = sub_29E1AFC3C(v138, v139, v137);
    v214 = v138;

    v222 = v140[4];
    v141 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartPDFProvider_dayProviderSubscription;
    v142 = *(v124 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartPDFProvider_dayProviderSubscription);
    v143 = swift_allocObject();
    v144 = v209;
    v145 = v143;
    v143[2] = v124;
    v143[3] = v140;
    v143[4] = v142;
    v146 = swift_allocObject();
    *(v146 + 16) = sub_29DEDD714;
    *(v146 + 24) = v145;
    sub_29DEDD728();
    sub_29DEDDB10(&qword_2A1818588, sub_29DEDD728);

    v215 = v140;

    v147 = sub_29E2C1384();

    v148 = v213;

    *(v124 + v141) = v147;

    v149 = v173;
    sub_29E2C30D4();
    v150 = v216;
    sub_29E2C30F4();
    v151 = v174;
    v174(v149, v148);
    sub_29DEDDB10(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
    result = sub_29E2C32B4();
    if (result)
    {
      v152 = v167;
      v219(v167, v125, v148);
      v153 = v168;
      v154 = *(v144 + 32);
      v154(v152 + *(v168 + 48), v150, v148);
      v155 = v169;
      sub_29DEDD6AC(v152, v169, sub_29DEC6594);
      v156 = *(v153 + 48);
      v157 = v171;
      v154(v171, v155, v148);
      v151(v155 + v156, v148);
      sub_29DEDD924(v152, v155, sub_29DEC6594);
      v158 = *(v153 + 48);
      sub_29DEDBA74(0, &qword_2A1A61A30, MEMORY[0x29EDC9C30]);
      v160 = v159;
      v154(v157 + *(v159 + 36), (v155 + v158), v148);
      v151(v155, v148);
      (*(*(v160 - 8) + 56))(v157, 0, 1, v160);
      v161 = v170;
      sub_29DEDD6AC(v157, v170, sub_29DEDB904);
      sub_29DF5BB44(v161);
      sub_29DEDD6AC(v157, v161, sub_29DEDB904);
      sub_29E2C2C84();

      sub_29DEC70B0(v207);

      v151(v208, v148);
      sub_29DEDD8C4(v157, sub_29DEDB904);
      sub_29DEDD78C(v204);
      (*(v165 + 8))(v206, v166);

      sub_29DEDD8C4(v218, type metadata accessor for CycleChartCycle);
      return v220;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29DEDB4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29DEDD9F0(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_29E2C3734();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_29E2C3714();

  v10 = sub_29E2C3704();
  v11 = swift_allocObject();
  v12 = MEMORY[0x29EDCA390];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  v11[5] = a2;
  sub_29E13C63C(0, 0, v8, &unk_29E2CF6A0, v11);

  if (a3)
  {
    return sub_29E2C1044();
  }

  return result;
}

uint64_t sub_29DEDB630()
{
  sub_29DEDD8C4(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartPDFProvider_cycle, type metadata accessor for CycleChartCycle);

  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartPDFProvider_gregorianCalendar;
  v2 = sub_29E2BCEA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartPDFProvider_today;
  v4 = sub_29E2C31A4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CycleChartPDFProvider()
{
  result = qword_2A1818568;
  if (!qword_2A1818568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DEDB7C4()
{
  result = type metadata accessor for CycleChartCycle(319);
  if (v1 <= 0x3F)
  {
    result = sub_29E2BCEA4();
    if (v2 <= 0x3F)
    {
      result = sub_29E2C31A4();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_29DEDB904()
{
  if (!qword_2A1A5E2A0)
  {
    sub_29DEDBA74(255, &qword_2A1A61A30, MEMORY[0x29EDC9C30]);
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E2A0);
    }
  }
}

void sub_29DEDB978()
{
  if (!qword_2A181C990)
  {
    sub_29E2C31A4();
    sub_29DEDDB10(&unk_2A18199E0, MEMORY[0x29EDBA2F8]);
    sub_29DEDBA20();
    v0 = sub_29E2C32F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C990);
    }
  }
}

unint64_t sub_29DEDBA20()
{
  result = qword_2A181C9A0;
  if (!qword_2A181C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181C9A0);
  }

  return result;
}

void sub_29DEDBA74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E2C31A4();
    v7 = sub_29DEDDB10(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29DEDBB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_29E2C3714();
  v5[3] = sub_29E2C3704();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_29DEDBBCC;

  return sub_29DEDBD68(a5);
}

uint64_t sub_29DEDBBCC()
{

  v1 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29DEDBD08, v1, v0);
}

uint64_t sub_29DEDBD08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29DEDBD68(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_29DEDBA74(0, &qword_2A1819F90, MEMORY[0x29EDC9930]);
  v2[4] = swift_task_alloc();
  type metadata accessor for CycleChartPDFModel(0);
  v2[5] = swift_task_alloc();
  sub_29E2C3714();
  v2[6] = sub_29E2C3704();
  v4 = sub_29E2C36A4();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2A1C73D48](sub_29DEDBE74, v4, v3);
}

uint64_t sub_29DEDBE74()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartPDFProvider_healthStore);
  v4 = v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartPDFProvider_cycle;
  v5 = type metadata accessor for CycleChartCycle(0);
  sub_29E02CAF8((v4 + *(v5 + 24)), v1);
  v6 = sub_29E1AF000(v1);
  v0[9] = v6;
  sub_29DEDD78C(v1);
  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartPDFProvider_gregorianCalendar;
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartPDFProvider_today;
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_29DEDBF94;
  v10 = v0[5];

  return sub_29E0B3FE8(v10, v3, v4, v6, v2 + v7, v2 + v8);
}

uint64_t sub_29DEDBF94()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v2;
  v3[1] = sub_29DEDC108;
  v4 = *(v1 + 40);

  return sub_29DEDC2B8(v4);
}

uint64_t sub_29DEDC108()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2A1C73D48](sub_29DEDC228, v3, v2);
}

uint64_t sub_29DEDC228()
{
  v1 = *(v0 + 40);

  sub_29DEDD8C4(v1, type metadata accessor for CycleChartPDFModel);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29DEDC2B8(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v2[16] = *v1;
  v3 = sub_29E2C0514();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v4 = sub_29E2BEDC4();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v5 = *(type metadata accessor for CycleChartPDFModel(0) - 8);
  v2[23] = v5;
  v2[24] = *(v5 + 64);
  v2[25] = swift_task_alloc();
  v6 = sub_29E2BE874();
  v2[26] = v6;
  v2[27] = *(v6 - 8);
  v2[28] = swift_task_alloc();
  v7 = sub_29E2BE434();
  v2[29] = v7;
  v2[30] = *(v7 - 8);
  v2[31] = swift_task_alloc();
  v8 = sub_29E2BE454();
  v2[32] = v8;
  v2[33] = *(v8 - 8);
  v2[34] = swift_task_alloc();
  sub_29DEDD9F0(0, &unk_2A1820F90, type metadata accessor for CycleChartsModel, MEMORY[0x29EDC9C68]);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  sub_29E2C3714();
  v2[37] = sub_29E2C3704();
  v10 = sub_29E2C36A4();
  v2[38] = v10;
  v2[39] = v9;

  return MEMORY[0x2A1C73D48](sub_29DEDC60C, v10, v9);
}

uint64_t sub_29DEDC60C()
{
  v1 = v0[36];
  v2 = *(v0[15] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartPDFProvider_chartsProvider);
  sub_29DEDD9F0(0, &qword_2A1818590, type metadata accessor for CycleChartsModel, MEMORY[0x29EDC9E90]);
  v3 = type metadata accessor for CycleChartsModel();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29E2CD7A0;
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartsPDFModelProvider_fertilityChart;
  swift_beginAccess();
  sub_29DEDD618(v2 + v8, v1);
  v9 = *(v4 + 48);
  result = v9(v1, 1, v3);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v34 = v5;
  v35 = v7;
  v11 = v7 + v6;
  v12 = v0[35];
  sub_29DEDD924(v0[36], v7 + v6, type metadata accessor for CycleChartsModel);
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartsPDFModelProvider_symptomsChart;
  swift_beginAccess();
  sub_29DEDD618(v2 + v13, v12);
  result = v9(v12, 1, v3);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v33 = v0[33];
  v31 = v0[34];
  v32 = v0[32];
  v14 = v0[30];
  v15 = v0[31];
  v16 = v0[28];
  v17 = v0[29];
  v18 = v0[26];
  v19 = v0[27];
  v27 = v0[25];
  v28 = v0[23];
  v29 = v0[22];
  v20 = v0[21];
  v21 = v0[14];
  v30 = v0[20];
  sub_29DEDD924(v0[35], v11 + v34, type metadata accessor for CycleChartsModel);
  (*(v14 + 104))(v15, *MEMORY[0x29EDC1F40], v17);
  *v16 = type metadata accessor for PDFCycleTrackingPage();
  (*(v19 + 104))(v16, *MEMORY[0x29EDC20A8], v18);
  sub_29DEDD6AC(v21, v27, type metadata accessor for CycleChartPDFModel);
  v22 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v35;
  sub_29DEDD924(v27, v23 + v22, type metadata accessor for CycleChartPDFModel);
  (*(v20 + 104))(v29, *MEMORY[0x29EDC22A0], v30);
  sub_29E2BE444();
  v24 = MEMORY[0x29EDC1F50];
  v0[5] = v32;
  v0[6] = v24;
  v25 = sub_29DEBB7E8(v0 + 2);
  (*(v33 + 16))(v25, v31, v32);
  v36 = (*MEMORY[0x29EDC2288] + MEMORY[0x29EDC2288]);
  v26 = swift_task_alloc();
  v0[40] = v26;
  *v26 = v0;
  v26[1] = sub_29DEDCA2C;

  return v36(v0 + 2);
}

uint64_t sub_29DEDCA2C()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = *(v2 + 304);
    v4 = *(v2 + 312);
    v5 = sub_29DEDCC38;
  }

  else
  {
    sub_29DE93B3C(v2 + 16);
    v3 = *(v2 + 304);
    v4 = *(v2 + 312);
    v5 = sub_29DEDCB48;
  }

  return MEMORY[0x2A1C73D48](v5, v3, v4);
}

uint64_t sub_29DEDCB48()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29DEDCC38()
{
  v31 = v0;
  v1 = v0[41];

  sub_29DE93B3C((v0 + 2));
  sub_29E2C04B4();
  v2 = v1;
  v3 = sub_29E2C0504();
  v4 = sub_29E2C3A24();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[41];
    v6 = v0[33];
    v28 = v0[32];
    v29 = v0[34];
    v7 = v0[18];
    v26 = v0[17];
    v27 = v0[19];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136446466;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v30);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v0[13] = v5;
    v13 = v5;
    sub_29DEB1BC4(0, &qword_2A1A61C90);
    v14 = sub_29E2C3424();
    v16 = sub_29DFAA104(v14, v15, &v30);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_29DE74000, v3, v4, "[%{public}s] Failed to configure PDF view controller: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);

    (*(v7 + 8))(v27, v26);
    (*(v6 + 8))(v29, v28);
  }

  else
  {
    v17 = v0[41];
    v19 = v0[33];
    v18 = v0[34];
    v20 = v0[32];
    v22 = v0[18];
    v21 = v0[19];
    v23 = v0[17];

    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v18, v20);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_29DEDCF08(uint64_t a1)
{
  sub_29DEDD9F0(0, &qword_2A1818598, MEMORY[0x29EDC1C50], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v25[-1] - v3;
  v5 = type metadata accessor for CycleChartsModel() - 8;
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = MEMORY[0x29EDCA190];
    v12 = *(v6 + 72);
    v24 = xmmword_29E2CAB20;
    do
    {
      sub_29DEDD6AC(v10, v8, type metadata accessor for CycleChartsModel);
      v13 = sub_29E2BE0E4();
      v14 = (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
      MEMORY[0x2A1C7C4A8](v14);
      v25[3] = sub_29E2BE134();
      v25[4] = MEMORY[0x29EDC1C58];
      sub_29DEBB7E8(v25);
      sub_29E2BE124();
      v15 = sub_29E2BEF94();
      sub_29DE93B3C(v25);
      sub_29DEDDAB4(0, &qword_2A181DB50, &qword_2A18185A0, &qword_2A181DAE0);
      v16 = swift_allocObject();
      *(v16 + 16) = v24;
      *(v16 + 32) = v15;
      v17 = sub_29E2BEF74();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_29E143D78(0, v11[2] + 1, 1, v11);
      }

      v19 = v11[2];
      v18 = v11[3];
      if (v19 >= v18 >> 1)
      {
        v11 = sub_29E143D78((v18 > 1), v19 + 1, 1, v11);
      }

      v11[2] = v19 + 1;
      v11[v19 + 4] = v17;
      sub_29DEDD8C4(v8, type metadata accessor for CycleChartsModel);
      v10 += v12;
      --v9;
    }

    while (v9);
  }

  v20 = sub_29E2BEF74();

  sub_29DEDDAB4(0, &qword_2A181DB50, &qword_2A18185A0, &qword_2A181DAE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_29E2CAB20;
  *(v21 + 32) = v20;
  v22 = sub_29E2BEF74();

  return v22;
}

uint64_t sub_29DEDD2E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleChartsModel();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CycleChartPDFModel(0);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEDD6AC(a1, v9, type metadata accessor for CycleChartPDFModel);
  sub_29DEDD6AC(a2, v6, type metadata accessor for CycleChartsModel);
  v10 = type metadata accessor for PDFCycleChartView();
  v11 = swift_allocObject();
  sub_29DEDD924(v9, v11 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17PDFCycleChartView_pdfModel, type metadata accessor for CycleChartPDFModel);
  sub_29DEDD924(v6, v11 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17PDFCycleChartView_cycleChartsModel, type metadata accessor for CycleChartsModel);
  v17[3] = v10;
  v17[4] = sub_29DEDDB10(&qword_2A18185B8, type metadata accessor for PDFCycleChartView);
  v17[0] = v11;
  v12 = sub_29E2BEA14();
  sub_29DE93B3C(v17);
  sub_29DEDDAB4(0, &qword_2A181DD60, &qword_2A18185A8, &qword_2A18185B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29E2CAB20;
  *(v13 + 32) = v12;
  v14 = MEMORY[0x29ED7B1C0]();

  return v14;
}

uint64_t sub_29DEDD504()
{
  v5[3] = sub_29E2BF594();
  v5[4] = MEMORY[0x29EDC2880];
  v0 = sub_29DEBB7E8(v5);
  sub_29E1F627C(v0);
  v1 = sub_29E2BEA14();
  sub_29DE93B3C(v5);
  sub_29DEDDAB4(0, &qword_2A181DD60, &qword_2A18185A8, &qword_2A18185B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E2CAB20;
  *(v2 + 32) = v1;
  v3 = MEMORY[0x29ED7B1C0]();

  return v3;
}

uint64_t sub_29DEDD618(uint64_t a1, uint64_t a2)
{
  sub_29DEDD9F0(0, &unk_2A1820F90, type metadata accessor for CycleChartsModel, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DEDD6AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29DEDD728()
{
  if (!qword_2A1818580)
  {
    v0 = sub_29E2C1024();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818580);
    }
  }
}

uint64_t sub_29DEDD78C(uint64_t a1)
{
  sub_29DEDBA74(0, &qword_2A1819F90, MEMORY[0x29EDC9930]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DEDD804(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29DE9657C;

  return sub_29DEDBB10(a1, v4, v5, v7, v6);
}

uint64_t sub_29DEDD8C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29DEDD924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DEDD98C()
{
  type metadata accessor for CycleChartPDFModel(0);
  v1 = *(v0 + 16);

  return sub_29DEDCF08(v1);
}

void sub_29DEDD9F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29DEDDA5C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29DEB1BC4(255, a3);
    v4 = sub_29E2C3684();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29DEDDAB4(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  if (!*a2)
  {
    sub_29DEDDA5C(255, a3, a4);
    v5 = sub_29E2C48E4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29DEDDB10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29DEDDB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v105 = a1;
  v99 = type metadata accessor for EndDatePickerRow();
  MEMORY[0x2A1C7C4A8](v99);
  v100 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2C2984();
  v102 = *(v3 - 8);
  v103 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v101 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v109 = &v76 - v6;
  v7 = MEMORY[0x29EDBC7E8];
  sub_29DEE1900(0, &qword_2A1818688, sub_29DEE1618, type metadata accessor for EndDatePickerRow, MEMORY[0x29EDBC7E8]);
  v108 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v97 = &v76 - v9;
  sub_29DEE1900(0, &qword_2A1818690, sub_29DEE1660, sub_29DEE174C, v7);
  v96 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v93 = &v76 - v11;
  sub_29DEE1900(0, &qword_2A1818698, sub_29DEE1794, sub_29DEE17DC, v7);
  v92 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v88 = &v76 - v13;
  sub_29DEE1900(0, &qword_2A18186A0, type metadata accessor for EmbryoTransferDatePickerRow, type metadata accessor for PastPregnancyStartDatePickerRow, v7);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v76 - v15;
  sub_29DEE17DC(0);
  v82 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v76 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEE174C(0);
  v91 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEE1618(0);
  v106 = v22;
  MEMORY[0x2A1C7C4A8](v22);
  v81 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for PastPregnancyStartDatePickerRow();
  MEMORY[0x2A1C7C4A8](started);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29E2BEFA4();
  v28 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27);
  v30 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEE1574();
  v94 = v31 - 8;
  MEMORY[0x2A1C7C4A8](v31 - 8);
  v98 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v33);
  v107 = &v76 - v34;
  MEMORY[0x2A1C7C4A8](v35);
  v95 = &v76 - v36;
  MEMORY[0x2A1C7C4A8](v37);
  v111 = &v76 - v38;
  v90 = *(type metadata accessor for PregnancyOnboardingAddPastPregnancyViewController.ContentView() + 20);
  sub_29DEE2020(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v89 = v39;
  sub_29E2C2A24();
  v87 = *MEMORY[0x29EDC2488];
  v110 = v28;
  v85 = *(v28 + 104);
  v86 = v28 + 104;
  v77 = v30;
  v78 = v27;
  v85(v30);
  v40 = *(started + 20);
  v41 = *(v28 + 16);
  v83 = v28 + 16;
  v84 = v41;
  v41(&v26[v40], v30, v27);
  v80 = type metadata accessor for PregnancyDatesInputViewModel();
  v79 = sub_29DEE1984(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);

  sub_29E2C2A44();
  sub_29DEE1E30(v26, v16, type metadata accessor for PastPregnancyStartDatePickerRow);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EmbryoTransferDatePickerRow(0);
  sub_29DEE1984(&qword_2A18186A8, type metadata accessor for EmbryoTransferDatePickerRow);
  sub_29DEE1984(&qword_2A18186B0, type metadata accessor for PastPregnancyStartDatePickerRow);
  v42 = v76;
  sub_29E2C1C74();
  sub_29DEE1E30(v42, v88, sub_29DEE17DC);
  swift_storeEnumTagMultiPayload();
  sub_29DEE1794(0);
  sub_29DEE19CC();
  sub_29DEE1AAC();
  sub_29E2C1C74();
  sub_29DEE1E98(v42, sub_29DEE17DC);
  sub_29DEE1E30(v21, v93, sub_29DEE174C);
  swift_storeEnumTagMultiPayload();
  sub_29DEE1660(0);
  sub_29DEE1B8C();
  sub_29DEE1D5C();
  v43 = v81;
  sub_29E2C1C74();
  sub_29DEE1E98(v21, sub_29DEE174C);
  v44 = v97;
  sub_29DEE1E30(v43, v97, sub_29DEE1618);
  swift_storeEnumTagMultiPayload();
  v96 = sub_29DEE1DA4(&qword_2A1818710, sub_29DEE1618, sub_29DEE1B8C, sub_29DEE1D5C);
  v93 = sub_29DEE1984(&qword_2A1818718, type metadata accessor for EndDatePickerRow);
  v45 = v111;
  v46 = v99;
  sub_29E2C1C74();

  sub_29DEE1E98(v43, sub_29DEE1618);
  sub_29DEE1E98(v26, type metadata accessor for PastPregnancyStartDatePickerRow);
  v47 = *(v110 + 8);
  v110 += 8;
  v48 = v77;
  v49 = v78;
  v47(v77, v78);
  LOBYTE(v42) = sub_29E2C1FE4();
  sub_29E2C1424();
  v50 = v94;
  v51 = v45 + *(v94 + 44);
  *v51 = v42;
  *(v51 + 8) = v52;
  *(v51 + 16) = v53;
  *(v51 + 24) = v54;
  *(v51 + 32) = v55;
  *(v51 + 40) = 0;
  v56 = v109;
  sub_29E2C2974();
  sub_29E2C2A24();
  (v85)(v48, v87, v49);
  v57 = v100;
  v84(&v100[*(v46 + 20)], v48, v49);

  sub_29E2C2A44();
  *(v57 + *(v46 + 24)) = 1;
  sub_29DEE1E30(v57, v44, type metadata accessor for EndDatePickerRow);
  swift_storeEnumTagMultiPayload();
  v58 = v95;
  sub_29E2C1C74();

  sub_29DEE1E98(v57, type metadata accessor for EndDatePickerRow);
  v47(v48, v49);
  LOBYTE(v45) = sub_29E2C1FD4();
  sub_29E2C1424();
  v59 = &v58[*(v50 + 44)];
  v60 = v58;
  *v59 = v45;
  *(v59 + 1) = v61;
  *(v59 + 2) = v62;
  *(v59 + 3) = v63;
  *(v59 + 4) = v64;
  v59[40] = 0;
  v65 = v107;
  sub_29DEE1E30(v111, v107, sub_29DEE1574);
  v66 = v101;
  v67 = v102;
  v68 = *(v102 + 16);
  v69 = v103;
  v68(v101, v56, v103);
  v70 = v98;
  sub_29DEE1E30(v60, v98, sub_29DEE1574);
  v71 = v104;
  sub_29DEE1E30(v65, v104, sub_29DEE1574);
  sub_29DEE1500();
  v73 = v72;
  v68((v71 + *(v72 + 48)), v66, v69);
  sub_29DEE1E30(v70, v71 + *(v73 + 64), sub_29DEE1574);
  sub_29DEE1E98(v60, sub_29DEE1574);
  v74 = *(v67 + 8);
  v74(v109, v69);
  sub_29DEE1E98(v111, sub_29DEE1574);
  sub_29DEE1E98(v70, sub_29DEE1574);
  v74(v66, v69);
  return sub_29DEE1E98(v107, sub_29DEE1574);
}

uint64_t sub_29DEDE884@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_29DEE2020(0, &unk_2A181A6A0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  sub_29DEE1448();
  v4 = v3;
  result = sub_29DEDDB58(v1, a1 + *(v3 + 52));
  *(a1 + *(v4 + 56)) = 0;
  return result;
}

id sub_29DEDE928()
{
  v1 = sub_29E2C1F74();
  MEMORY[0x2A1C7C4A8](v1);
  v2 = type metadata accessor for PregnancyOnboardingAddPastPregnancyViewController.ContentView();
  MEMORY[0x2A1C7C4A8](v2);
  v4 = (v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController____lazy_storage___hostingController;
  v6 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController____lazy_storage___hostingController);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController____lazy_storage___hostingController);
  }

  else
  {
    *v4 = swift_getKeyPath();
    sub_29DEE2020(0, &unk_2A181A6A0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC388]);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PregnancyDatesInputViewModel();
    sub_29DEE1984(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);

    sub_29E2C2A44();
    sub_29DEE1EF8();
    v9 = objc_allocWithZone(v8);
    v10 = v0;
    v11 = sub_29E2C1C34();
    v12 = MEMORY[0x29EDBC0B8];
    sub_29DEE2020(0, &qword_2A1817F90, MEMORY[0x29EDBC0B8], MEMORY[0x29EDC9E90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_29E2CAB20;
    sub_29E2C1F64();
    v17[1] = v13;
    sub_29DEE1984(&qword_2A1817F98, MEMORY[0x29EDBC0B8]);
    sub_29DEE2020(0, &qword_2A1817FA0, v12, MEMORY[0x29EDC9A40]);
    sub_29DEE2084(&qword_2A1817FA8, &qword_2A1817FA0, v12);
    sub_29E2C43F4();
    sub_29E2C1C24();
    v14 = *(v10 + v5);
    *(v10 + v5) = v11;
    v7 = v11;

    v6 = 0;
  }

  v15 = v6;
  return v7;
}

id sub_29DEDEC6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2C3384();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = v24 - v10;
  v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController_onboardingStep] = 3;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController_nextButton] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController_viewLeadingConstraint] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController_viewTrailingConstraint] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController____lazy_storage___hostingController] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController_viewModel] = a1;
  v25 = v3;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController_coordinator] = a2;
  v28 = a1;
  v13 = v12;

  v29 = a2;

  sub_29E2C3314();
  v14 = v7;
  v26 = *(v8 + 16);
  v26(v13, v11, v7);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v24[1] = "EDING_ALERT_MESSAGE";
  v15 = qword_2A1A67F80;
  sub_29E2BCC74();
  v16 = v15;
  sub_29E2C3414();
  v17 = *(v8 + 8);
  v17(v11, v14);
  v18 = sub_29E2C33A4();

  sub_29E2C3314();
  v26(v13, v11, v14);
  sub_29E2BCC74();
  sub_29E2C3414();
  v17(v11, v14);
  v19 = sub_29E2C33A4();

  sub_29E05D544();
  v21 = v20;
  v30.receiver = v25;
  v30.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v30, sel_initWithTitle_detailText_icon_contentLayout_, v18, v19, v20, 3);

  return v22;
}

id sub_29DEDF030()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29DEE2020(0, &qword_2A181A1F0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v98 = &v89 - v4;
  v5 = sub_29E2BC904();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v103 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_29E2C3384();
  v11 = *(v104 - 8);
  MEMORY[0x2A1C7C4A8](v104);
  v102 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x2A1C7C4A8](v13).n128_u64[0];
  v97 = &v89 - v15;
  v108.receiver = v0;
  v108.super_class = ObjectType;
  objc_msgSendSuper2(&v108, sel_viewDidLoad, v14);
  [v0 setModalInPresentation_];
  v16 = sub_29DEDE928();
  [v0 addChildViewController_];

  v17 = [v0 contentView];
  v18 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController____lazy_storage___hostingController;
  result = [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController____lazy_storage___hostingController] view];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v20 = result;
  [v17 addSubview_];

  [*&v1[v18] didMoveToParentViewController_];
  result = [*&v1[v18] view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  result = [*&v1[v18] view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = result;
  v105 = v11;
  [result hk_onboardingListEdgeInsets];
  v24 = v23;
  v26 = v25;

  result = [*&v1[v18] view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v27 = result;
  v28 = [result leadingAnchor];

  v29 = [v1 contentView];
  v30 = [v29 leadingAnchor];

  v31 = [v28 constraintEqualToAnchor:v30 constant:v24];
  result = [*&v1[v18] view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v32 = result;
  v91 = v8;
  v95 = v6;
  v96 = v5;
  v33 = [result trailingAnchor];

  v34 = [v1 contentView];
  v35 = [v34 trailingAnchor];

  v36 = [v33 constraintEqualToAnchor:v35 constant:-v26];
  sub_29DE99B54();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_29E2CE070;
  result = [*&v1[v18] view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v38 = result;
  v39 = [result topAnchor];

  v40 = [v1 contentView];
  v41 = [v40 topAnchor];

  v42 = [v39 constraintEqualToAnchor_];
  *(v37 + 32) = v42;
  result = [*&v1[v18] view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v43 = result;
  v44 = objc_opt_self();
  v45 = [v43 bottomAnchor];

  v46 = [v1 contentView];
  v47 = [v46 bottomAnchor];

  v48 = [v45 constraintEqualToAnchor_];
  *(v37 + 40) = v48;
  *(v37 + 48) = v31;
  *(v37 + 56) = v36;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v49 = v31;
  v50 = v36;
  v51 = sub_29E2C3604();

  [v44 activateConstraints_];

  v52 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController_viewLeadingConstraint];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController_viewLeadingConstraint] = v49;
  v94 = v49;

  v53 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController_viewTrailingConstraint];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController_viewTrailingConstraint] = v50;
  v93 = v50;

  v54 = v97;
  sub_29E2C3314();
  v55 = v104;
  v56 = v105;
  v57 = v105 + 16;
  v58 = *(v105 + 16);
  v58(v102, v54, v104);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v92 = v58;
  v101 = v57;
  v59 = qword_2A1A67F80;
  v60 = qword_2A1A67F80;
  sub_29E2BCC74();
  v90 = v60;
  v100 = v59;
  sub_29E2C3414();
  v62 = *(v56 + 8);
  v61 = v56 + 8;
  v99 = v62;
  v62(v54, v55);
  v63 = sub_29E2C33A4();

  v64 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController_onboardingStep;
  v65 = v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController_onboardingStep];
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v105 = v61;
  v66 = qword_2A1A67E58;
  v67 = unk_2A1A67E60;
  v106 = qword_2A1A67E58;
  v107 = unk_2A1A67E60;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2ECF90);
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  v68 = PregnancyOnboardingStep.description.getter(v65);
  MEMORY[0x29ED7FCC0](v68);

  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](0x427972616D697250, 0xED00006E6F747475);
  v69 = sub_29E2C33A4();

  v70 = [v1 hxui:v63 addPrimaryFooterButtonWithTitle:v69 accessibilityIdentifier:?];

  v71 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController_nextButton];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController_nextButton] = v70;

  sub_29DEDFCA8(v72);
  v73 = [v1 navigationItem];
  v74 = [v73 rightBarButtonItem];

  if (v74)
  {
    v75 = v1[v64];
    v106 = v66;
    v107 = v67;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2ECF90);
    MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
    v76 = PregnancyOnboardingStep.description.getter(v75);
    MEMORY[0x29ED7FCC0](v76);

    MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
    MEMORY[0x29ED7FCC0](0x75426C65636E6143, 0xEC0000006E6F7474);
    v77 = sub_29E2C33A4();

    [v74 setAccessibilityIdentifier_];
  }

  sub_29E2C3314();
  v78 = v102;
  v79 = v104;
  v80 = v92;
  v92(v102, v54, v104);
  sub_29E2BCC74();
  v89 = "EDING_ALERT_MESSAGE";
  sub_29E2C3414();
  v99(v54, v79);
  v81 = v98;
  sub_29E2BC8F4();

  v83 = v95;
  v82 = v96;
  if ((*(v95 + 48))(v81, 1, v96) == 1)
  {

    return sub_29DEBDA84(v81);
  }

  else
  {
    v84 = v91;
    (*(v83 + 32))(v91, v81, v82);
    v85 = [v1 buttonTray];
    sub_29E2C3314();
    v80(v78, v54, v79);
    v86 = v90;
    sub_29E2BCC74();
    sub_29E2C3414();
    v99(v54, v79);
    v87 = sub_29E2C33A4();

    v88 = sub_29E2BC8C4();
    [v85 setCaptionText:v87 learnMoreURL:v88];

    return (*(v83 + 8))(v84, v82);
  }
}

uint64_t sub_29DEDFCA8(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController_nextButton);
  if (v3)
  {
    v4 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController_viewModel);
    swift_getKeyPath();
    sub_29DEE1984(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
    v5 = v3;

    sub_29E2BCFE4();

    v6 = *(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__isValidPregnancySampleInput);

    [v5 setEnabled_];
  }

  MEMORY[0x2A1C7C4A8](a1);
  MEMORY[0x2A1C7C4A8](v7);
  return sub_29E2BCFC4();
}

void sub_29DEDFE78()
{
  ObjectType = swift_getObjectType();
  v2 = sub_29DEDE928();
  v3 = [v2 view];

  if (v3)
  {
    [v3 hk_onboardingListEdgeInsets];
    v5 = v4;
    v7 = v6;

    v8 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController_viewLeadingConstraint];
    if (v8)
    {
      [v8 setConstant_];
    }

    v9 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOnboardingAddPastPregnancyViewController_viewTrailingConstraint];
    if (v9)
    {
      [v9 setConstant_];
    }

    v10.receiver = v0;
    v10.super_class = ObjectType;
    objc_msgSendSuper2(&v10, sel_viewDidLayoutSubviews);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29DEDFF98()
{
  swift_getKeyPath();
  sub_29DEE1984(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);

  sub_29E2BCFE4();
}

uint64_t sub_29DEE0050()
{
  v0 = sub_29E2C2B34();
  v13 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2C2B54();
  v3 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9408C(0, &qword_2A1A626C0);
  v11 = sub_29E2C3CF4();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_29DEE2000;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = &unk_2A24B1DD0;
  v7 = _Block_copy(aBlock);

  sub_29E2C2B44();
  v14 = MEMORY[0x29EDCA190];
  sub_29DEE1984(&qword_2A1A626F0, MEMORY[0x29EDCA248]);
  v8 = MEMORY[0x29EDCA248];
  sub_29DEE2020(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29DEE2084(&qword_2A1A626D0, &qword_2A1A626E0, v8);
  sub_29E2C43F4();
  v9 = v11;
  MEMORY[0x29ED804D0](0, v5, v2, v7);
  _Block_release(v7);

  (*(v13 + 8))(v2, v0);
  (*(v3 + 8))(v5, v12);
}

void sub_29DEE036C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_29DEDFCA8();
  }
}

void sub_29DEE03C0()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v21 - v7;

  v9 = sub_29E03FC30();

  if (v9)
  {
    v25 = v0;
    sub_29E2C3314();
    v24 = *(v3 + 16);
    v24(v5, v8, v2);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v10 = qword_2A1A67F80;
    v11 = qword_2A1A67F80;
    v23 = v10;
    v12 = v11;
    sub_29E2BCC74();
    v13 = v12;
    sub_29E2C3414();
    v14 = *(v3 + 8);
    v21[2] = v3 + 8;
    v22 = v14;
    v14(v8, v2);
    sub_29E0461EC(1);
    v15 = sub_29E2C33A4();
    v21[1] = "EDING_ALERT_MESSAGE";
    v16 = v15;

    v17 = sub_29E2C33A4();

    v18 = [objc_opt_self() alertControllerWithTitle:v16 message:v17 preferredStyle:1];

    sub_29E2C3314();
    v24(v5, v8, v2);
    sub_29E2BCC74();
    sub_29E2C3414();
    v22(v8, v2);
    v19 = sub_29E2C33A4();

    v20 = [objc_opt_self() actionWithTitle:v19 style:1 handler:0];

    [v18 addAction_];
    [v25 presentViewController:v18 animated:1 completion:0];
  }

  else
  {

    sub_29E27EA20(3, 2u);
  }
}

id sub_29DEE09B4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v20 - v9;
  swift_weakInit();
  v23 = v1;
  v24 = a1;
  swift_weakAssign();
  sub_29E2C3314();
  v21 = *(v5 + 16);
  v21(v7, v10, v4);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v20 = "EDING_ALERT_MESSAGE";
  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  v12 = v11;
  sub_29E2C3414();
  v13 = *(v5 + 8);
  v13(v10, v4);
  v14 = sub_29E2C33A4();

  sub_29E2C3314();
  v21(v7, v10, v4);
  sub_29E2BCC74();
  sub_29E2C3414();
  v13(v10, v4);
  v15 = sub_29E2C33A4();

  sub_29E05D544();
  v17 = v16;
  v25.receiver = v23;
  v25.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v25, sel_initWithTitle_detailText_icon_contentLayout_, v14, v15, v16, 2);

  return v18;
}

void sub_29DEE0D04()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x2A1C7C4A8](v8).n128_u64[0];
  v11 = v16 - v10;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_viewDidLoad, v9);
  [v1 setModalInPresentation_];
  sub_29E2C3314();
  (*(v5 + 16))(v7, v11, v4);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v5 + 8))(v11, v4);
  v13 = sub_29E2C33A4();

  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v16[1] = qword_2A1A67E58;
  v16[2] = unk_2A1A67E60;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2ECF90);
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](0x616D7269666E6F43, 0xEC0000006E6F6974);
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](0x427972616D697250, 0xED00006E6F747475);
  v14 = sub_29E2C33A4();

  v15 = [v1 navigationItem];
  [v15 setHidesBackButton_];
}

uint64_t sub_29DEE10C0()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + 400);
    if (v2)
    {

      v2(v3);
      sub_29DE8EF50(v2);
      v4 = *(v1 + 400);
      *(v1 + 400) = 0;
      *(v1 + 408) = 0;
      sub_29DE8EF50(v4);
    }

    else
    {
      v5 = *(Strong + 360);
      [v5 dismissViewControllerAnimated:1 completion:0];
    }
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 400);
    if (v7)
    {
      sub_29DE8EE38(*(result + 400));

      v7(v8);

      return sub_29DE8EF50(v7);
    }

    else
    {
    }
  }

  return result;
}

uint64_t type metadata accessor for PregnancyOnboardingAddPastPregnancyViewController.ContentView()
{
  result = qword_2A1818608;
  if (!qword_2A1818608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DEE1348()
{
  sub_29DEE2020(319, &qword_2A1818600, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    sub_29DEE2020(319, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29DEE1448()
{
  if (!qword_2A1818618)
  {
    sub_29DEE2020(255, &qword_2A1818620, sub_29DEE1500, MEMORY[0x29EDBCC28]);
    sub_29DEE1824();
    sub_29DEE18AC();
    v0 = type metadata accessor for StyledVStackListSection();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818618);
    }
  }
}

void sub_29DEE1500()
{
  if (!qword_2A1818628)
  {
    sub_29DEE1574();
    sub_29E2C2984();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1818628);
    }
  }
}

void sub_29DEE1574()
{
  if (!qword_2A1818630)
  {
    sub_29DEE1900(255, &qword_2A1818638, sub_29DEE1618, type metadata accessor for EndDatePickerRow, MEMORY[0x29EDBC7F0]);
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818630);
    }
  }
}

void sub_29DEE16A8()
{
  if (!qword_2A1818650)
  {
    type metadata accessor for LastMenstrualPeriodDatePickerRow();
    v0 = sub_29E2C1C84();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818650);
    }
  }
}

unint64_t sub_29DEE1824()
{
  result = qword_2A1818678;
  if (!qword_2A1818678)
  {
    sub_29DEE2020(255, &qword_2A1818620, sub_29DEE1500, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818678);
  }

  return result;
}

unint64_t sub_29DEE18AC()
{
  result = qword_2A1818680;
  if (!qword_2A1818680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818680);
  }

  return result;
}

void sub_29DEE1900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_29DEE1984(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29DEE19CC()
{
  result = qword_2A18186B8;
  if (!qword_2A18186B8)
  {
    sub_29DEE1794(255);
    sub_29DEE1984(&qword_2A18186C0, type metadata accessor for GestationalAgeOnDatePickerRow);
    sub_29DEE1984(&qword_2A18186C8, type metadata accessor for EmbryoAgeAtTransferPickerRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18186B8);
  }

  return result;
}

unint64_t sub_29DEE1AAC()
{
  result = qword_2A18186D0;
  if (!qword_2A18186D0)
  {
    sub_29DEE17DC(255);
    sub_29DEE1984(&qword_2A18186A8, type metadata accessor for EmbryoTransferDatePickerRow);
    sub_29DEE1984(&qword_2A18186B0, type metadata accessor for PastPregnancyStartDatePickerRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18186D0);
  }

  return result;
}

unint64_t sub_29DEE1BD4()
{
  result = qword_2A18186E0;
  if (!qword_2A18186E0)
  {
    sub_29DEE16A8();
    sub_29DEE1984(&qword_2A18186E8, type metadata accessor for LastMenstrualPeriodDatePickerRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18186E0);
  }

  return result;
}

unint64_t sub_29DEE1C7C()
{
  result = qword_2A18186F0;
  if (!qword_2A18186F0)
  {
    sub_29DEE1704(255);
    sub_29DEE1984(&qword_2A18186F8, type metadata accessor for EstimatedDueDatePickerRow);
    sub_29DEE1984(&qword_2A1818700, type metadata accessor for GestationalAgeInWeeksAndDaysPickerRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18186F0);
  }

  return result;
}

uint64_t sub_29DEE1DA4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29DEE1E30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DEE1E98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29DEE1EF8()
{
  if (!qword_2A1818720)
  {
    type metadata accessor for PregnancyOnboardingAddPastPregnancyViewController.ContentView();
    sub_29DEE1984(&qword_2A1818728, type metadata accessor for PregnancyOnboardingAddPastPregnancyViewController.ContentView);
    v0 = sub_29E2C1C44();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818720);
    }
  }
}

uint64_t (*sub_29DEE1F94())()
{
  v1 = *(v0 + 16);
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  return sub_29DEE1FF8;
}

uint64_t sub_29DEE2008(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29DEE2020(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29DEE2084(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29DEE2020(255, a2, a3, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29DEE20EC()
{
  v1 = sub_29E2BCC94();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42DeviationsConfirmationNavigationController____lazy_storage___coordinator;
  if (*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42DeviationsConfirmationNavigationController____lazy_storage___coordinator))
  {
    v6 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42DeviationsConfirmationNavigationController____lazy_storage___coordinator);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42DeviationsConfirmationNavigationController_healthStore);
    v8 = objc_allocWithZone(MEMORY[0x29EDBAA50]);
    v9 = v7;
    v10 = [v8 init];
    type metadata accessor for DeviationsConfirmationFlowCoordinator();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v6 + 32) = 0;
    *(v6 + 40) = -1;
    *(v6 + 72) = 0;
    sub_29DEE9848(0, &qword_2A1817C80);
    memset(v15, 0, sizeof(v15));
    sub_29E2C11D4();
    *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_addedCycleFactors) = MEMORY[0x29EDCA190];
    *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator____lazy_storage___eventSubmissionManager) = 0;
    v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_currentPresentation;
    v12 = sub_29E2BE2A4();
    (*(*(v12 - 8) + 56))(v6 + v11, 1, 1, v12);
    *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_startingUnconfirmedDeviations) = 0;
    *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_openedPDFInConfirmedResult) = 0;
    v13 = [objc_allocWithZone(MEMORY[0x29EDC3360]) initWithHealthStore_];
    *(v6 + 48) = v9;
    *(v6 + 56) = v13;
    *(v6 + 64) = v10;
    (*(v2 + 104))(v4, *MEMORY[0x29EDB9C78], v1);
    sub_29E2BCCA4();
    (*(v2 + 8))(v4, v1);
    swift_unknownObjectWeakAssign();
    *(v6 + 24) = [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
    *(v6 + 80) = 0;
    *(v6 + 88) = 0;
    *(v0 + v5) = v6;
  }

  return v6;
}

void sub_29DEE23B0(unint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  sub_29DEE3764(0, &qword_2A1818798, MEMORY[0x29EDB8AF0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v29 - v13;
  sub_29DEE8C74(0, &qword_2A1A615F0, MEMORY[0x29EDC1D90]);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = &v29 - v16;
  if (a4)
  {
    sub_29DEE29B8();
  }

  v18 = sub_29E2BE2A4();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v17, a3, v18);
  (*(v19 + 56))(v17, 0, 1, v18);
  v20 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_currentPresentation;
  swift_beginAccess();
  sub_29DEE961C(v17, v5 + v20);
  swift_endAccess();
  v21 = *(v5 + 32);
  *(v5 + 32) = a1;
  v22 = *(v5 + 40);
  *(v5 + 40) = a2 & 1;
  sub_29DEE386C(v21, v22);
  if (a2)
  {
    sub_29E2BF404();
  }

  else
  {
    *(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_startingUnconfirmedDeviations) = a1;
    swift_bridgeObjectRetain_n();

    v23 = sub_29DEE3888(a1);
    swift_beginAccess();
    sub_29DEE3764(0, &qword_2A1818790, MEMORY[0x29EDB8B00]);
    sub_29E2C11E4();
    swift_endAccess();
    sub_29DEE3DFC();
    v24 = sub_29E2C1274();
    (*(v12 + 8))(v14, v11);
    v25 = objc_allocWithZone(type metadata accessor for DeviationsReviewCollectionViewWrapper());
    v26 = sub_29DF099A0(v23, v24);
    *&v26[qword_2A1818D20 + 8] = &off_2A24B1F18;
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      Strong = *(v5 + 24);
    }

    v28 = Strong;
    [Strong showViewController:v26 sender:0];
  }
}

__n128 sub_29DEE2880@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  result = v7;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

id sub_29DEE2918()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator____lazy_storage___eventSubmissionManager;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator____lazy_storage___eventSubmissionManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator____lazy_storage___eventSubmissionManager);
  }

  else
  {
    v4 = HKLogMenstrualCyclesCategory();
    v5 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v4 healthDataSource:*(v0 + 48)];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_29DEE29B8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_29E2C1224();
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_addedCycleFactors) = MEMORY[0x29EDCA190];

  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_startingUnconfirmedDeviations) = 0;

  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_openedPDFInConfirmedResult) = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Strong = *(v0 + 24);
  }

  v2 = Strong;

  sub_29DE9408C(0, &qword_2A1820CC0);
  v3 = sub_29E2C3604();
  [v2 setViewControllers_];
}

uint64_t sub_29DEE2AE4()
{
  v1[22] = v0;
  sub_29DEE3764(0, &qword_2A1818798, MEMORY[0x29EDB8AF0]);
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  sub_29E2C3714();
  v1[26] = sub_29E2C3704();
  v4 = sub_29E2C36A4();
  v1[27] = v4;
  v1[28] = v3;

  return MEMORY[0x2A1C73D48](sub_29DEE2BF4, v4, v3);
}

uint64_t sub_29DEE2BF4()
{
  v1 = *(v0[22] + 56);
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_29DEE2D08;
  v2 = swift_continuation_init();
  sub_29DEE37D4();
  v0[17] = v3;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29DEE3160;
  v0[13] = &unk_2A24B1F58;
  v0[14] = v2;
  [v1 analysisWithCompletion_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29DEE2D08()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  v3 = *(v1 + 224);
  v4 = *(v1 + 216);
  if (v2)
  {
    v5 = sub_29DEE30E4;
  }

  else
  {
    v5 = sub_29DEE2E38;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29DEE2E38()
{

  v1 = v0[21];
  v2 = [v1 deviations];

  if (!v2)
  {
    goto LABEL_10;
  }

  sub_29DE9408C(0, &qword_2A1A5E118);
  v3 = sub_29E2C3614();

  if (v3 >> 62)
  {
    if (sub_29E2C4484())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

LABEL_4:
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[22];
  v7 = v0[23];
  sub_29DEE29B8();
  v8 = *(v6 + 32);
  *(v6 + 32) = v3;
  v9 = *(v6 + 40);
  *(v6 + 40) = 0;
  sub_29E2BF404();
  sub_29DEE386C(v8, v9);
  *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_startingUnconfirmedDeviations) = v3;
  sub_29E2BF404();

  v10 = sub_29DEE3888(v3);

  swift_beginAccess();
  sub_29DEE3764(0, &qword_2A1818790, MEMORY[0x29EDB8B00]);
  sub_29E2C11E4();
  swift_endAccess();
  sub_29DEE3DFC();
  v11 = sub_29E2C1274();
  (*(v5 + 8))(v4, v7);
  v12 = objc_allocWithZone(type metadata accessor for DeviationsReviewCollectionViewWrapper());
  v13 = sub_29DF099A0(v10, v11);
  *&v13[qword_2A1818D20 + 8] = &off_2A24B1F18;
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Strong = *(v0[22] + 24);
  }

  v15 = Strong;
  [Strong showViewController:v13 sender:0];

  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {
    v16 = *(v0[22] + 24);
  }

LABEL_11:

  v17 = v0[1];

  return v17(v16);
}

uint64_t sub_29DEE30E4()
{

  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29DEE3160(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_29DE966D4((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_29DE96670();
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x2A1C73CE0](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2A1C73CD8](v5);
  }
}

uint64_t sub_29DEE322C()
{
  MEMORY[0x29ED82270](v0 + 16);

  sub_29DEE386C(*(v0 + 32), *(v0 + 40));

  sub_29DE8EF50(*(v0 + 80));
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_gregorianCalendar;
  v2 = sub_29E2BCEA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator__ongoingChanges;
  sub_29DEE3764(0, &qword_2A1818790, MEMORY[0x29EDB8B00]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_29DEE8694(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_currentPresentation, &qword_2A1A615F0, MEMORY[0x29EDC1D90]);

  return v0;
}

uint64_t sub_29DEE3388()
{
  sub_29DEE322C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviationsConfirmationFlowCoordinator()
{
  result = qword_2A1818780;
  if (!qword_2A1818780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DEE3434()
{
  sub_29E2BCEA4();
  if (v0 <= 0x3F)
  {
    sub_29DEE3764(319, &qword_2A1818790, MEMORY[0x29EDB8B00]);
    if (v1 <= 0x3F)
    {
      sub_29DEE8C74(319, &qword_2A1A615F0, MEMORY[0x29EDC1D90]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_29DEE35C8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_29DEE35E0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_29DEE363C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for UserCharacteristics.Age(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_29DEE36BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_29DEE3704(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_29DEE3764(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29DEE9848(255, &qword_2A1817C80);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29DEE37D4()
{
  if (!qword_2A18187A0)
  {
    sub_29DE9408C(255, &qword_2A1A61DC0);
    sub_29DE96670();
    v0 = sub_29E2C3754();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18187A0);
    }
  }
}

uint64_t sub_29DEE386C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return j__swift_bridgeObjectRelease(result, a2 & 1);
  }

  return result;
}

uint64_t sub_29DEE3888(unint64_t a1)
{
  v2 = v1;
  v4 = sub_29E2BCEA4();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEDB978();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v41 - v10;
  v12 = MEMORY[0x29EDC9930];
  sub_29DEE88CC(0, &qword_2A18187B0, &qword_2A1819F90, MEMORY[0x29EDC9930]);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v41 - v14;
  sub_29DEE8830(0, &qword_2A1819F90, v12);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v23 = &v41 - v22;
  v42 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_gregorianCalendar;
  v46 = a1;
  sub_29DEE3E70(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_gregorianCalendar, a1, v15);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    sub_29DEE8A0C(v15, &qword_2A18187B0, &qword_2A1819F90, MEMORY[0x29EDC9930]);
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_29E2C4584();
    MEMORY[0x29ED7FCC0](91, 0xE100000000000000);
    v40 = sub_29E2C4AE4();
    MEMORY[0x29ED7FCC0](v40);

    MEMORY[0x29ED7FCC0](0xD000000000000032, 0x800000029E2EEEE0);
    result = sub_29E2C4724();
    __break(1u);
  }

  else
  {
    v24 = MEMORY[0x29EDC9930];
    sub_29DEE8A68(v15, v23, &qword_2A1819F90, MEMORY[0x29EDC9930], sub_29DEE8830);
    v25 = v2[6];
    v41 = v2[7];
    v26 = sub_29E2C31A4();
    v27 = *(v26 - 8);
    (*(v27 + 16))(v11, v23, v26);
    v28 = *(v27 + 56);
    v28(v11, 0, 1, v26);
    v28(v8, 1, 1, v26);
    v29 = sub_29E059C18(v11, v8);
    sub_29DEE85C8(v8);
    sub_29DEE85C8(v11);
    v30 = v2[8];
    v31 = objc_allocWithZone(MEMORY[0x29EDC3408]);
    v32 = [v31 initWithHealthStore:v25 analysisProvider:v41 pregnancyModelProvider:0 maximumActiveDuration:v29 minimumBufferDuration:0 shouldFetchCycleFactors:0 calendarCache:v30];
    sub_29DEE8624(v23, v20, &qword_2A1819F90, v24, sub_29DEE8830);
    v33 = MEMORY[0x29ED80290](v20);
    [v32 setActiveDayRange_];
    v35 = v2 + v42;
    v36 = v45;
    (*(v43 + 16))(v45, v35, v44);
    type metadata accessor for DeviationsConfirmationViewModel();
    swift_allocObject();
    v37 = sub_29E2BF404();
    v38 = sub_29E0EA958(v37, v32, v36);

    sub_29DEE89AC(v23, &qword_2A1819F90, v24, sub_29DEE8830);
    return v38;
  }

  return result;
}

unint64_t sub_29DEE3DFC()
{
  result = qword_2A18187A8;
  if (!qword_2A18187A8)
  {
    sub_29DEE3764(255, &qword_2A1818798, MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18187A8);
  }

  return result;
}

uint64_t sub_29DEE3E70@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v94 = a1;
  v5 = sub_29E2C0514();
  v96 = *(v5 - 8);
  v97 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v95 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v85 - v8;
  sub_29DEC6594();
  v87 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v88 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v86 = &v85 - v13;
  sub_29DEE8C74(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v92 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v85 - v17;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v85 - v20;
  MEMORY[0x2A1C7C4A8](v22);
  v24 = &v85 - v23;
  v25 = sub_29E2C31A4();
  v26 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v89 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v28);
  v91 = &v85 - v29;
  MEMORY[0x2A1C7C4A8](v30);
  v93 = &v85 - v31;
  MEMORY[0x2A1C7C4A8](v32);
  v34 = &v85 - v33;
  v98 = a2;
  sub_29DEE7878(a2, v24);
  v35 = *(v26 + 48);
  if (v35(v24, 1, v25) == 1)
  {
    v21 = v24;
    v36 = a3;
LABEL_5:
    sub_29DEE8694(v21, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
    v38 = v95;
    sub_29E2C04B4();
    v39 = v98;
    sub_29E2BF404();
    v40 = sub_29E2C0504();
    v41 = sub_29E2C3A34();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v100 = v43;
      *v42 = 136446466;
      sub_29DEE86F0();
      v44 = sub_29E2C4AE4();
      v46 = sub_29DFAA104(v44, v45, &v100);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      v99 = v39;
      v47 = sub_29E2C3464();
      v49 = sub_29DFAA104(v47, v48, &v100);

      *(v42 + 14) = v49;
      _os_log_impl(&dword_29DE74000, v40, v41, "[%{public}s] Failed to get earliest deviation day: %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v43, -1, -1);
      MEMORY[0x29ED82140](v42, -1, -1);
    }

    else
    {
    }

    (*(v96 + 8))(v38, v97);
    sub_29DEE8830(0, &qword_2A1819F90, MEMORY[0x29EDC9930]);
    v51 = v50;
    v52 = *(*(v50 - 8) + 56);
    v53 = v36;
    return v52(v53, 1, 1, v51);
  }

  v85 = v9;
  v90 = a3;
  v37 = *(v26 + 32);
  v37(v34, v24, v25);
  sub_29E0E8DF8(v94, v21);
  if (v35(v21, 1, v25) == 1)
  {
    (*(v26 + 8))(v34, v25);
    v36 = v90;
    goto LABEL_5;
  }

  v95 = v34;
  v37(v93, v21, v25);
  sub_29DEE752C(v98, v18);
  if (v35(v18, 1, v25) == 1)
  {
LABEL_14:
    sub_29DEE8694(v18, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
    v56 = v85;
    sub_29E2C04B4();
    v57 = v98;
    sub_29E2BF404();
    v58 = sub_29E2C0504();
    v59 = sub_29E2C3A34();
    v60 = os_log_type_enabled(v58, v59);
    v61 = v90;
    if (v60)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v100 = v63;
      *v62 = 136446466;
      sub_29DEE86F0();
      v64 = sub_29E2C4AE4();
      v66 = sub_29DFAA104(v64, v65, &v100);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2080;
      v99 = v57;
      v67 = sub_29E2C3464();
      v69 = sub_29DFAA104(v67, v68, &v100);

      *(v62 + 14) = v69;
      _os_log_impl(&dword_29DE74000, v58, v59, "[%{public}s] Failed to get latest deviation day for deviations: %s", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v63, -1, -1);
      v70 = v62;
      v61 = v90;
      MEMORY[0x29ED82140](v70, -1, -1);

      (*(v96 + 8))(v85, v97);
    }

    else
    {

      (*(v96 + 8))(v56, v97);
    }

    v71 = *(v26 + 8);
    v71(v93, v25);
    v71(v95, v25);
    sub_29DEE8830(0, &qword_2A1819F90, MEMORY[0x29EDC9930]);
    v51 = v72;
    v52 = *(*(v72 - 8) + 56);
    v53 = v61;
    return v52(v53, 1, 1, v51);
  }

  v55 = v91;
  v37(v91, v18, v25);
  v18 = v92;
  sub_29E0E9394(v94, v92);
  if (v35(v18, 1, v25) == 1)
  {
    (*(v26 + 8))(v55, v25);
    goto LABEL_14;
  }

  v73 = v89;
  v37(v89, v18, v25);
  sub_29DEE8C24(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
  v74 = v93;
  v75 = sub_29E2C32B4();
  v76 = *(v26 + 8);
  v76(v55, v25);
  result = (v76)(v95, v25);
  if (v75)
  {
    v77 = v86;
    v37(v86, v74, v25);
    v78 = v87;
    v37((v77 + *(v87 + 48)), v73, v25);
    v79 = v88;
    sub_29DEC6FE8(v77, v88);
    v80 = *(v78 + 48);
    v81 = v90;
    v37(v90, v79, v25);
    v76((v79 + v80), v25);
    sub_29DEC704C(v77, v79);
    v82 = *(v78 + 48);
    sub_29DEE8830(0, &qword_2A1819F90, MEMORY[0x29EDC9930]);
    v84 = v83;
    v37(&v81[*(v83 + 36)], (v79 + v82), v25);
    v76(v79, v25);
    return (*(*(v84 - 8) + 56))(v81, 0, 1, v84);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29DEE4894()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCEA4();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 40);
  if (v12 == 255 || (v12 & 1) != 0)
  {
    sub_29E2C04B4();

    v13 = sub_29E2C0504();
    v14 = sub_29E2C3A14();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v40[0] = v16;
      *v15 = 136446466;
      v17 = sub_29E2C4AE4();
      v19 = sub_29DFAA104(v17, v18, v40);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v20 = *(v1 + 40);
      *&v41 = *(v1 + 32);
      BYTE8(v41) = v20;
      sub_29DEE982C(v41, v20);
      sub_29DEE9848(0, &qword_2A18187D8);
      v21 = sub_29E2C3434();
      v23 = sub_29DFAA104(v21, v22, v40);

      *(v15 + 14) = v23;
      _os_log_impl(&dword_29DE74000, v13, v14, "[%{public}s] Tried to present the deviation factors page but the navigation state is unexpected: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v16, -1, -1);
      MEMORY[0x29ED82140](v15, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v24 = *(v1 + 32);
    v25 = *(v1 + 48);
    v39 = *(v7 + 16);
    v26 = v8;
    v39(v11, v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_gregorianCalendar, v8, v9);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29E2BF404();
    sub_29E2C1214();

    v43 = v40[2];
    v44 = v40[3];
    v45 = v40[4];
    v41 = v40[0];
    v42 = v40[1];
    type metadata accessor for DeviationsFactorsConfirmationViewModel();
    v27 = swift_allocObject();
    v40[0] = 0uLL;
    sub_29E2C11D4();
    sub_29E2BCE44();
    *(v27 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38DeviationsFactorsConfirmationViewModel_healthStore) = v25;
    v28 = [objc_allocWithZone(MEMORY[0x29EDC3410]) initWithHealthStore_];
    *(v27 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38DeviationsFactorsConfirmationViewModel_menstrualCyclesStore) = v28;
    (v39)(v27 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38DeviationsFactorsConfirmationViewModel_gregorianCalendar, v11, v26);
    v29 = (v27 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38DeviationsFactorsConfirmationViewModel_calendarChanges);
    v30 = v44;
    v29[2] = v43;
    v29[3] = v30;
    v29[4] = v45;
    v31 = v42;
    *v29 = v41;
    v29[1] = v31;
    *(v27 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38DeviationsFactorsConfirmationViewModel_deviations) = v24;
    v32 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38DeviationsFactorsConfirmationViewModel_deviationsReviewWindow;
    sub_29DEE9844(v24, 0);
    sub_29DEE3E70(v11, v24, (v27 + v32));
    sub_29DEE386C(v24, v12);
    (*(v7 + 8))(v11, v26);
    type metadata accessor for DeviationsFactorsCompoundDataSource();
    swift_allocObject();

    v33 = sub_29DF91DC0();
    v34 = objc_allocWithZone(type metadata accessor for DeviationsFactorsConfirmationViewController());
    v35 = sub_29E168E78(v27, v33);
    *&v35[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_delegate + 8] = &off_2A24B1F08;
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      Strong = *(v1 + 24);
    }

    v37 = Strong;
    [Strong pushViewController:v35 animated:1];
  }
}

void sub_29DEE4DDC(unint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_29E2C0514();
  v52 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v49 - v12;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v49 - v15;
  if (a1 >> 62)
  {
    v17 = sub_29E2C4484();
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v51 = v4;
  if (v17 == 1)
  {
    sub_29DEE5430(8, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x29ED80D70](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_26;
      }

      v23 = *(a1 + 32);
    }

    v24 = v23;
    v25 = [v24 startDate];
    sub_29E2BCB44();

    v26 = [v24 endDate];
    sub_29E2BCB44();

    v27 = [v24 hkmc_deviationType];
    sub_29E2BCB54();
    type metadata accessor for DeviationDetailViewModel();
    swift_allocObject();
    sub_29DEAE674(v16, v13, v27, 0, 0, 2, v10);

    v28 = objc_allocWithZone(type metadata accessor for DeviationsConfirmedViewController());

    v20 = sub_29DF35C08(v29);

    goto LABEL_15;
  }

  if (v17)
  {
    sub_29DEE5430(8, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x29ED80D70](0, a1);
      goto LABEL_14;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v30 = *(a1 + 32);
LABEL_14:
      v31 = v30;
      v32 = [v31 startDate];
      sub_29E2BCB44();

      v33 = [v31 endDate];
      sub_29E2BCB44();

      v34 = [v31 hkmc_deviationType];
      sub_29E2BCB54();
      type metadata accessor for DeviationDetailViewModel();
      swift_allocObject();
      sub_29DEAE674(v16, v13, v34, 0, v17, 1, v10);

      v35 = objc_allocWithZone(type metadata accessor for DeviationsConfirmedViewController());

      v20 = sub_29DF35C08(v36);

LABEL_15:
      *&v20[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationCustomDetailViewController_delegate + 8] = &off_2A24B1F38;
      swift_unknownObjectWeakAssign();
      v21 = v2[10];
      if (!v21)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

LABEL_26:
    __break(1u);
    return;
  }

  sub_29DEE5430(8, 6uLL);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  v54[2] = v53[2];
  v54[3] = v53[3];
  v54[4] = v53[4];
  v54[0] = v53[0];
  v54[1] = v53[1];
  v18 = objc_allocWithZone(type metadata accessor for DeviationsUnconfirmedViewController());
  sub_29E02A500(v54);
  v20 = v19;
  v21 = v1[10];
  if (!v21)
  {
LABEL_6:
    v22 = v20;
    goto LABEL_19;
  }

LABEL_16:
  v22 = v21(a1);
  sub_29E2C04B4();
  v37 = sub_29E2C0504();
  v38 = sub_29E2C3A34();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v50 = v7;
    v40 = v39;
    v41 = swift_slowAlloc();
    *&v53[0] = v41;
    *v40 = 136446210;
    v42 = sub_29E2C4AE4();
    v44 = sub_29DFAA104(v42, v43, v53);
    v45 = v52;
    v51 = v5;
    v46 = v44;

    *(v40 + 4) = v46;
    _os_log_impl(&dword_29DE74000, v37, v38, "[%{public}s] Using custom result view controller", v40, 0xCu);
    sub_29DE93B3C(v41);
    MEMORY[0x29ED82140](v41, -1, -1);
    MEMORY[0x29ED82140](v40, -1, -1);

    (*(v45 + 8))(v50, v51);
  }

  else
  {

    (*(v52 + 8))(v7, v5);
  }

LABEL_19:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Strong = v2[3];
  }

  v48 = Strong;
  [Strong showViewController:v22 sender:0];
}

void sub_29DEE5430(char a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_29E2C0514();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEE8C74(0, &qword_2A1A615F0, MEMORY[0x29EDC1D90]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v52 - v15;
  v17 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_startingUnconfirmedDeviations);
  if (v17)
  {
    v55 = a2;
    v56 = v6;
    sub_29E2BF404();
    v18 = HKLogMenstrualCyclesCategory();
    v19 = v3[6];
    v20 = objc_allocWithZone(MEMORY[0x29EDBAA00]);
    v53 = v19;
    v54 = [v20 initWithLoggingCategory:v18 healthDataSource:v19];

    v21 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_currentPresentation;
    swift_beginAccess();
    sub_29DEE8AD8(v3 + v21, v16);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29E2C1214();

    v58 = v63;
    v59 = v64;
    v60 = v65;
    v61 = v66;
    v62 = v67;
    if (*(&v63 + 1))
    {
      v65 = v60;
      v66 = v61;
      v67 = v62;
      v63 = v58;
      v64 = v59;
      v22 = sub_29DEA12B0();
      sub_29DEE89AC(&v58, &qword_2A1817C80, &type metadata for CalendarChanges, sub_29DEE9848);
    }

    else
    {
      v22 = 0;
    }

    v34 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_addedCycleFactors);
    v35 = a1;
    if (v34 >> 62)
    {
      v36 = sub_29E2C4484();
    }

    else
    {
      v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_29DEE8AD8(v16, v13);
    v37 = sub_29E2BE2A4();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v13, 1, v37) == 1)
    {
      sub_29DEE8694(v13, &qword_2A1A615F0, MEMORY[0x29EDC1D90]);
      v39 = 0;
    }

    else
    {
      v39 = sub_29E253904();
      (*(v38 + 8))(v13, v37);
    }

    v40 = v36 != 0;
    v41 = swift_allocObject();
    type metadata accessor for CycleDeviationAnalyticsEvent();
    v42 = swift_allocObject();
    *(v42 + 16) = 0xD00000000000002BLL;
    *(v42 + 24) = 0x800000029E2EEF20;
    *(v42 + 40) = 7;
    sub_29DE9408C(0, &qword_2A1A5E0B0);
    *(v42 + 64) = sub_29E2C40B4();
    *(v42 + 72) = sub_29E2C40B4();
    *(v42 + 80) = sub_29E2C40B4();
    v43 = sub_29E2C40B4();
    sub_29DEE8694(v16, &qword_2A1A615F0, MEMORY[0x29EDC1D90]);
    *(v42 + 88) = v43;
    *(v42 + 32) = v35;
    v44 = *(v42 + 40);
    v45 = v55;
    *(v42 + 40) = v55;
    sub_29DEE8B58(v44);
    *(v42 + 56) = v39;
    *(v42 + 48) = v17;
    *(v42 + 57) = v22;
    *(v42 + 58) = v40;
    *(v41 + 16) = v42;
    v46 = objc_allocWithZone(MEMORY[0x29EDBAB40]);
    sub_29DEE8B78(v45);
    v47 = [v46 initWithHealthStore_];
    v48 = swift_allocObject();
    v49 = v54;
    v48[2] = v41;
    v48[3] = v49;
    v48[4] = v56;
    aBlock[4] = sub_29DEE8B98;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DEE7478;
    aBlock[3] = &unk_2A24B1FD0;
    v50 = _Block_copy(aBlock);

    v51 = v49;

    [v47 numberOfDeviceContextsPerDeviceType_];
    _Block_release(v50);
  }

  else
  {
    sub_29E2C04B4();
    v23 = sub_29E2C0504();
    v24 = sub_29E2C3A14();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = a1;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v63 = v27;
      *v26 = 136446466;
      v28 = sub_29E2C4AE4();
      v30 = sub_29DFAA104(v28, v29, &v63);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      LOBYTE(v58) = v25;
      v31 = sub_29E2C3424();
      v33 = sub_29DFAA104(v31, v32, &v63);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_29DE74000, v23, v24, "[%{public}s] Tried to submit analytics %s without unconfirmed deviations", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v27, -1, -1);
      MEMORY[0x29ED82140](v26, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_29DEE5B50(__int128 *a1)
{
  v2 = a1[3];
  v8 = a1[2];
  v9 = v2;
  v10 = a1[4];
  v3 = a1[1];
  v6 = *a1;
  v7 = v3;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5[7] = v8;
    v5[8] = v9;
    v5[9] = v10;
    v5[5] = v6;
    v5[6] = v7;
    sub_29DEA6EEC(a1, v5);
    sub_29E2C1224();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29DEE5430(6, 1uLL);
  }

  return result;
}

uint64_t sub_29DEE5C58(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v2[25] = *v1;
  v3 = sub_29E2C0514();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  sub_29DEE8C74(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398]);
  v2[29] = swift_task_alloc();
  v2[30] = sub_29E2C3714();
  v2[31] = sub_29E2C3704();
  v5 = sub_29E2C36A4();
  v2[32] = v5;
  v2[33] = v4;

  return MEMORY[0x2A1C73D48](sub_29DEE5DC0, v5, v4);
}

uint64_t sub_29DEE5DC0()
{
  v1 = v0[24];
  v2 = *(v1 + 40);
  if (v2 != 255 && (v2 & 1) != 0)
  {
    *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_openedPDFInConfirmedResult) = 1;
    sub_29DEE5430(8, 4uLL);
    v1 = v0[24];
  }

  v3 = *(v1 + 56);
  v0[34] = v3;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_29DEE5F04;
  v4 = swift_continuation_init();
  sub_29DEE37D4();
  v0[17] = v5;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29DEE3160;
  v0[13] = &unk_2A24B2048;
  v0[14] = v4;
  [v3 analysisWithCompletion_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29DEE5F04()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);
  if (v2)
  {
    v5 = sub_29DEE6238;
  }

  else
  {
    v5 = sub_29DEE6034;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29DEE6034()
{
  v1 = v0[34];
  v2 = v0[29];
  v3 = v0[24];
  v18 = v0[25];
  v19 = v0[23];

  v4 = v0[21];
  v5 = v3[6];
  v6 = v3[8];
  type metadata accessor for TwelveMonthCycleHistoryPDFProvider();
  swift_allocObject();
  v7 = v1;
  v8 = v5;
  v9 = v4;
  v10 = sub_29E2AEFD4(v7, v8, v9, v6);
  v11 = sub_29E2C3734();
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);

  v12 = sub_29E2C3704();
  v13 = swift_allocObject();
  v14 = MEMORY[0x29EDCA390];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v3;
  v13[5] = v18;
  sub_29DFE96C0(0, 0, v2, &unk_29E2CFAF8, v13);

  v15 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  [v19 presentViewController:v15 animated:1 completion:0];

  v3[9] = v10;

  v16 = v0[1];

  return v16();
}

uint64_t sub_29DEE6238()
{
  v23 = v0;
  v1 = *(v0 + 280);

  swift_willThrow();
  sub_29E2C04B4();
  v2 = v1;
  v3 = sub_29E2C0504();
  v4 = sub_29E2C3A34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 280);
    v6 = *(v0 + 216);
    v21 = *(v0 + 224);
    v7 = *(v0 + 208);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22[0] = v9;
    *v8 = 136446466;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, v22);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_29E2C4994();
    v15 = sub_29DFAA104(v13, v14, v22);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_29DE74000, v3, v4, "[%{public}s] Failed getting cycles from analysis to present PDF ViewController, error: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);

    (*(v6 + 8))(v21, v7);
  }

  else
  {
    v17 = *(v0 + 216);
    v16 = *(v0 + 224);
    v18 = *(v0 + 208);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_29DEE6468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = sub_29E2C0514();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v7 = sub_29E2BCEA4();
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();
  v8 = sub_29E2BCBB4();
  v5[27] = v8;
  v5[28] = *(v8 - 8);
  v5[29] = swift_task_alloc();
  sub_29DEE975C();
  v5[30] = v9;
  v5[31] = *(v9 - 8);
  v5[32] = swift_task_alloc();
  sub_29E2C3714();
  v5[33] = sub_29E2C3704();
  v11 = sub_29E2C36A4();
  v5[34] = v11;
  v5[35] = v10;

  return MEMORY[0x2A1C73D48](sub_29DEE6670, v11, v10);
}

uint64_t sub_29DEE6670()
{
  v1 = v0[32];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[24];
  v7 = v0[25];
  v8 = v0[19];
  sub_29E2BCB54();
  sub_29E2BCE44();
  sub_29E2AE580(v1);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v9 = *(v8 + 48);
  v10 = swift_task_alloc();
  v0[36] = v10;
  *v10 = v0;
  v10[1] = sub_29DEE678C;
  v11 = v0[30];

  return MEMORY[0x2A1C5B578](v9, v11);
}

uint64_t sub_29DEE678C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 296) = a1;
  *(v4 + 304) = v1;

  v5 = *(v3 + 280);
  v6 = *(v3 + 272);
  if (v1)
  {
    v7 = sub_29DEE6C78;
  }

  else
  {
    v7 = sub_29DEE68D0;
  }

  return MEMORY[0x2A1C73D48](v7, v6, v5);
}

uint64_t sub_29DEE68D0()
{
  v1 = v0[37];
  if (v1 >> 62)
  {
    v2 = sub_29E2C4484();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  type metadata accessor for RoomInteractionEvent();
  v4 = swift_allocObject();
  v0[39] = v4;
  *(v4 + 16) = 0xD00000000000002ALL;
  *(v4 + 24) = 0x800000029E2EEF80;
  *(v4 + 32) = 8;
  *(v4 + 33) = v3;
  *(v4 + 34) = 1;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  v5 = sub_29DEE2918();
  v0[40] = v5;
  v0[2] = v0;
  v0[7] = v0 + 42;
  v0[3] = sub_29DEE6A94;
  v6 = swift_continuation_init();
  sub_29DEE97C4();
  v0[17] = v7;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29E27ED68;
  v0[13] = &unk_2A24B2098;
  v0[14] = v6;

  [v5 submitEvent:v4 completion:v0 + 10];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29DEE6A94()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  if (v2)
  {
    v3 = *(v1 + 272);
    v4 = *(v1 + 280);
    v5 = sub_29DEE6D34;
  }

  else
  {

    v3 = *(v1 + 272);
    v4 = *(v1 + 280);
    v5 = sub_29DEE6BAC;
  }

  return MEMORY[0x2A1C73D48](v5, v3, v4);
}

uint64_t sub_29DEE6BAC()
{
  v1 = v0[40];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[31];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_29DEE6C78()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[31];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29DEE6D34()
{
  v32 = v0;
  v2 = v0[40];
  v1 = v0[41];

  swift_willThrow();

  sub_29E2C04B4();
  v3 = v1;
  v4 = sub_29E2C0504();
  v5 = sub_29E2C3A14();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[41];
    v7 = v0[31];
    v29 = v0[30];
    v30 = v0[32];
    v8 = v0[22];
    v28 = v0[23];
    v27 = v0[21];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31[0] = v10;
    *v9 = 136446466;
    v11 = sub_29E2C4AE4();
    v13 = sub_29DFAA104(v11, v12, v31);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v0[18] = v6;
    v14 = v6;
    sub_29DE96670();
    v15 = sub_29E2C3434();
    v17 = sub_29DFAA104(v15, v16, v31);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_29DE74000, v4, v5, "[%{public}s] Error submitting analytics event: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v10, -1, -1);
    MEMORY[0x29ED82140](v9, -1, -1);

    (*(v8 + 8))(v28, v27);
    (*(v7 + 8))(v30, v29);
  }

  else
  {
    v18 = v0[41];
    v20 = v0[31];
    v19 = v0[32];
    v21 = v0[30];
    v23 = v0[22];
    v22 = v0[23];
    v24 = v0[21];

    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v19, v21);
  }

  v25 = v0[1];

  return v25();
}

void sub_29DEE6FFC(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Strong = *(a1 + 24);
  }

  v3 = Strong;

  sub_29DE9408C(0, &qword_2A1820CC0);
  v4 = sub_29E2C3604();
  [v3 setViewControllers_];
}

uint64_t sub_29DEE70AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  sub_29DEE8C24(&qword_2A18187D0, type metadata accessor for DeviationsConfirmationFlowCoordinator);
  swift_unknownObjectRetain();
  v8 = sub_29E2BDE54();
  swift_unknownObjectRelease();
  swift_beginAccess();
  *(a3 + 16) = v8;
  swift_unknownObjectRelease();
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  v12[4] = sub_29DEE8C6C;
  v12[5] = v9;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1107296256;
  v12[2] = sub_29DFE9648;
  v12[3] = &unk_2A24B2020;
  v10 = _Block_copy(v12);
  swift_unknownObjectRetain();

  [a4 submitEvent:v8 completion:v10];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

void sub_29DEE7244(char a1, void *a2)
{
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_29E2C04E4();
    v8 = a2;
    v9 = sub_29E2C0504();
    v10 = sub_29E2C3A14();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136446466;
      v13 = sub_29E2C4AE4();
      v15 = sub_29DFAA104(v13, v14, &v21);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      v20 = a2;
      v16 = a2;
      sub_29DEE8C74(0, &qword_2A1A5DFD0, sub_29DE96670);
      v17 = sub_29E2C3434();
      v19 = sub_29DFAA104(v17, v18, &v21);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Error submitting analytics event: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v12, -1, -1);
      MEMORY[0x29ED82140](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_29DEE7478(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_29DE9408C(0, &qword_2A1A5E0B0);
    sub_29DEE8BBC();
    v4 = sub_29E2C3214();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_29DEE752C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_29DEE8C74(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_29E2C31A4();
  v28 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v32 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E2C4484())
  {
    v10 = 0;
    v11 = a1 & 0xC000000000000001;
    v30 = (v28 + 48);
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    v29 = (v28 + 32);
    v12 = MEMORY[0x29EDCA190];
    v26 = a1 & 0xC000000000000001;
    v27 = KeyPath;
    while (v11)
    {
      v13 = MEMORY[0x29ED80D70](v10, a1);
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      v33 = v13;
      v15 = v13;
      swift_getAtKeyPath();

      if ((*v30)(v5, 1, v6) == 1)
      {
        sub_29DEE8694(v5, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
      }

      else
      {
        v16 = v6;
        v17 = i;
        v18 = a1;
        v19 = *v29;
        v20 = v16;
        (*v29)(v32, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_29E143DA8(0, v12[2] + 1, 1, v12);
        }

        v22 = v12[2];
        v21 = v12[3];
        if (v22 >= v21 >> 1)
        {
          v12 = sub_29E143DA8(v21 > 1, v22 + 1, 1, v12);
        }

        v12[2] = v22 + 1;
        (v19)(v12 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v22, v32, v20);
        a1 = v18;
        i = v17;
        v6 = v20;
        v11 = v26;
        KeyPath = v27;
      }

      ++v10;
      if (v14 == i)
      {
        goto LABEL_21;
      }
    }

    if (v10 >= *(v31 + 16))
    {
      goto LABEL_18;
    }

    v13 = *(a1 + 8 * v10 + 32);
    v14 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v12 = MEMORY[0x29EDCA190];
LABEL_21:

  sub_29DEE81A4(v12, v25);
}

uint64_t sub_29DEE7878@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  sub_29DEE88CC(0, &qword_2A1A5E2A0, &qword_2A1A61A30, MEMORY[0x29EDC9C30]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v33 - v6;
  sub_29DEE8C74(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v33 - v12;
  v14 = sub_29E2C31A4();
  v36 = *(v14 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v45 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E2C4484())
  {
    v37 = v10;
    v10 = 0;
    v43 = a1 & 0xFFFFFFFFFFFFFF8;
    v44 = a1 & 0xC000000000000001;
    v34 = (v36 + 16);
    v39 = (v36 + 48);
    v40 = (v36 + 56);
    v38 = (v36 + 32);
    v46 = MEMORY[0x29EDCA190];
    v41 = i;
    v42 = a1;
    while (v44)
    {
      v18 = MEMORY[0x29ED80D70](v10, a1, v15);
      v19 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v20 = v13;
      v21 = v18;
      [v21 days];
      sub_29E2C3AA4();
      sub_29DEE8830(0, &qword_2A1A61A30, MEMORY[0x29EDC9C30]);
      if ((*(*(v22 - 8) + 48))(v7, 1, v22) == 1)
      {
        v23 = v37;
        (*v40)(v37, 1, 1, v14);
      }

      else
      {
        v24 = v35;
        sub_29DEE8924(v7, v35);
        v23 = v37;
        (*v34)(v37, v24, v14);
        (*v40)(v23, 0, 1, v14);
        v25 = v24;
        i = v41;
        sub_29DEE89AC(v25, &qword_2A1A61A30, MEMORY[0x29EDC9C30], sub_29DEE8830);
      }

      sub_29DEE8A0C(v7, &qword_2A1A5E2A0, &qword_2A1A61A30, MEMORY[0x29EDC9C30]);
      v26 = v23;
      v13 = v20;
      sub_29DEE8A68(v26, v20, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], sub_29DEE8C74);

      if ((*v39)(v20, 1, v14) == 1)
      {
        sub_29DEE8694(v20, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
        a1 = v42;
      }

      else
      {
        v27 = *v38;
        (*v38)(v45, v20, v14);
        v28 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_29E143DA8(0, v28[2] + 1, 1, v28);
        }

        v30 = v28[2];
        v29 = v28[3];
        if (v30 >= v29 >> 1)
        {
          v28 = sub_29E143DA8(v29 > 1, v30 + 1, 1, v28);
        }

        v28[2] = v30 + 1;
        v31 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v46 = v28;
        v27(v28 + v31 + *(v36 + 72) * v30, v45, v14);
        i = v41;
        a1 = v42;
      }

      ++v10;
      if (v19 == i)
      {
        goto LABEL_24;
      }
    }

    if (v10 >= *(v43 + 16))
    {
      goto LABEL_21;
    }

    v18 = *(a1 + 8 * v10 + 32);
    v19 = (v10 + 1);
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v46 = MEMORY[0x29EDCA190];
LABEL_24:
  sub_29DEE7EB0(v46, v33);
}

uint64_t sub_29DEE7E08(uint64_t a1)
{
  sub_29DEE88CC(0, &qword_2A1A5E2A0, &qword_2A1A61A30, MEMORY[0x29EDC9C30]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29DEE8924(a1, &v5 - v3);
  return sub_29E2C3AB4();
}

uint64_t sub_29DEE7EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E2C31A4();
  MEMORY[0x2A1C7C4A8](*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_29DEE8C24(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
        v21 = sub_29E2C3294();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

uint64_t sub_29DEE8160(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_29DEE81A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E2C31A4();
  MEMORY[0x2A1C7C4A8](*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_29DEE8C24(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
        v21 = sub_29E2C3294();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

__n128 sub_29DEE8454@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  result = v7;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_29DEE84F0(_OWORD *a1)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v8[4] = a1[4];
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1[3];
  v7[7] = a1[2];
  v7[8] = v4;
  v7[9] = a1[4];
  v5 = a1[1];
  v7[5] = *a1;
  v7[6] = v5;

  sub_29DEE8624(v8, v7, &qword_2A1817C80, &type metadata for CalendarChanges, sub_29DEE9848);
  return sub_29E2C1224();
}

uint64_t sub_29DEE85C8(uint64_t a1)
{
  sub_29DEDB978();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DEE8624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_29DEE8694(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29DEE8C74(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29DEE86F0()
{
  if (!qword_2A18187B8)
  {
    sub_29DE9408C(255, &qword_2A1A5E118);
    v0 = sub_29E2C3684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18187B8);
    }
  }
}

unint64_t sub_29DEE8764()
{
  result = qword_2A18187C0;
  if (!qword_2A18187C0)
  {
    sub_29DEE8830(255, &qword_2A1A61A30, MEMORY[0x29EDC9C30]);
    sub_29DEE8C24(&unk_2A18199E0, MEMORY[0x29EDBA2F8]);
    sub_29DEDBA20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18187C0);
  }

  return result;
}

void sub_29DEE8830(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E2C31A4();
    v7 = sub_29DEE8C24(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29DEE88CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29DEE8830(255, a3, a4);
    v5 = sub_29E2C4304();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29DEE8924(uint64_t a1, uint64_t a2)
{
  sub_29DEE88CC(0, &qword_2A1A5E2A0, &qword_2A1A61A30, MEMORY[0x29EDC9C30]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DEE89AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_29DEE8A0C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_29DEE88CC(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_29DEE8A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_29DEE8AD8(uint64_t a1, uint64_t a2)
{
  sub_29DEE8C74(0, &qword_2A1A615F0, MEMORY[0x29EDC1D90]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29DEE8B58(unint64_t result)
{
  if (result != 7)
  {
    return sub_29DEE8B68(result);
  }

  return result;
}

unint64_t sub_29DEE8B68(unint64_t result)
{
  if (result >= 7)
  {
  }

  return result;
}

unint64_t sub_29DEE8B78(unint64_t result)
{
  if (result != 7)
  {
    return sub_29DEE8B88(result);
  }

  return result;
}

unint64_t sub_29DEE8B88(unint64_t result)
{
  if (result >= 7)
  {
    return sub_29E2BF404();
  }

  return result;
}

uint64_t sub_29DEE8BA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29DEE8BBC()
{
  result = qword_2A18187C8;
  if (!qword_2A18187C8)
  {
    sub_29DE9408C(255, &qword_2A1A5E0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18187C8);
  }

  return result;
}

uint64_t sub_29DEE8C24(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29DEE8C74(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C4304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29DEE8CC8()
{
  v0 = sub_29E2C0514();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v4 = sub_29E2C0504();
  v5 = sub_29E2C3A34();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_29E2C4AE4();
    v10 = sub_29DFAA104(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_29DE74000, v4, v5, "[%{public}s] Confirmation flow successfully finished", v6, 0xCu);
    sub_29DE93B3C(v7);
    MEMORY[0x29ED82140](v7, -1, -1);
    MEMORY[0x29ED82140](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_29DEE8E94(uint64_t a1)
{
  v2 = v1;
  v61 = a1;
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v59 - v8;
  v10 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v59 - v14;
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v59 - v17;
  v19 = *(v2 + 40);
  if (v19 == 255 || (v19 & 1) == 0)
  {
    sub_29E2C04B4();

    v31 = sub_29E2C0504();
    v32 = sub_29E2C3A14();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v64 = v34;
      *v33 = 136446466;
      v35 = sub_29E2C4AE4();
      v37 = sub_29DFAA104(v35, v36, &v64);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = *(v2 + 40);
      v62 = *(v2 + 32);
      v63 = v38;
      sub_29DEE982C(v62, v38);
      sub_29DEE9848(0, &qword_2A18187D8);
      v39 = sub_29E2C3434();
      v41 = sub_29DFAA104(v39, v40, &v64);

      *(v33 + 14) = v41;
      _os_log_impl(&dword_29DE74000, v31, v32, "[%{public}s] Tried to present next deviation result page but the navigation state is unexpected: %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v34, -1, -1);
      MEMORY[0x29ED82140](v33, -1, -1);
    }

    v4[1](v6, v3);
    return;
  }

  v20 = v61 + 1;
  if (__OFADD__(v61, 1))
  {
    __break(1u);
LABEL_23:
    v59 = v20;
    v47 = sub_29E2C4484();
    v20 = v59;
    if (v59 < v47)
    {
      goto LABEL_6;
    }

LABEL_24:
    sub_29DEE9844(v3, 1);
    sub_29E2C04B4();
    sub_29DEE9844(v3, 1);
    v48 = sub_29E2C0504();
    v49 = sub_29E2C3A14();
    sub_29DEE386C(v3, v19);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v62 = v51;
      *v50 = 136446722;
      v52 = sub_29E2C4AE4();
      v54 = sub_29DFAA104(v52, v53, &v62);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2080;
      v64 = v3;
      sub_29DEE9894();
      v55 = sub_29E2C3464();
      v57 = sub_29DFAA104(v55, v56, &v62);

      *(v50 + 14) = v57;
      *(v50 + 22) = 2048;
      *(v50 + 24) = v61;
      _os_log_impl(&dword_29DE74000, v48, v49, "[%{public}s] Tried to present next deviation but there isn't one. Deviations: %s, current: %ld", v50, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v51, -1, -1);
      MEMORY[0x29ED82140](v50, -1, -1);
    }

    else
    {
      sub_29DEE386C(v3, v19);
    }

    v4[1](v9, v60);
    return;
  }

  v60 = v3;
  v3 = *(v2 + 32);
  v6 = (v3 >> 62);
  if (v3 >> 62)
  {
    goto LABEL_23;
  }

  if (v20 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

LABEL_6:
  v59 = v20;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v58 = v20;
    sub_29DEE9844(v3, 1);
    v4 = MEMORY[0x29ED80D70](v58, v3);
    if (v6)
    {
      goto LABEL_33;
    }

    v21 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    if (v20 < 0)
    {
      __break(1u);
      goto LABEL_31;
    }

    v21 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v20 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_32;
    }

    v22 = *(v3 + 8 * v20 + 32);
    sub_29DEE982C(v3, v19);
    v4 = v22;
  }

  for (i = *(v21 + 16); ; i = sub_29E2C4484())
  {
    sub_29DEE386C(v3, v19);
    if (!__OFSUB__(i, 1))
    {
      break;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v24 = v4;
  v25 = [v24 startDate];
  sub_29E2BCB44();

  v26 = [v24 endDate];
  sub_29E2BCB44();

  v27 = [v24 hkmc_deviationType];
  sub_29E2BCB54();
  type metadata accessor for DeviationDetailViewModel();
  swift_allocObject();
  v28 = v59;
  if (v59 == i - 1)
  {
    v28 = 2;
    v29 = 0;
    v30 = 2;
  }

  else
  {
    v29 = i;
    v30 = 1;
  }

  v42 = sub_29DEAE674(v18, v15, v27, v28, v29, v30, v12);

  v43 = objc_allocWithZone(type metadata accessor for DeviationsConfirmedViewController());
  v44 = sub_29DF35C08(v42);
  *&v44[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationCustomDetailViewController_delegate + 8] = &off_2A24B1F38;
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Strong = *(v2 + 24);
  }

  v46 = Strong;
  [Strong showViewController:v44 sender:{0, v59}];
}

void sub_29DEE9558(unint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  v6 = *(v2 + 40);
  *(v2 + 40) = 1;
  sub_29DEE386C(v5, v6);
  *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_addedCycleFactors) = a2;
  sub_29E2BF404();
  sub_29E2BF404();

  if (a2 >> 62)
  {
    v7 = sub_29E2C4484();
  }

  else
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  sub_29DEE5430(7, v8);
  sub_29DEE8B58(v8);

  sub_29DEE4DDC(a1);
}

uint64_t sub_29DEE961C(uint64_t a1, uint64_t a2)
{
  sub_29DEE8C74(0, &qword_2A1A615F0, MEMORY[0x29EDC1D90]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DEE969C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29DE9657C;

  return sub_29DEE6468(a1, v4, v5, v7, v6);
}

void sub_29DEE975C()
{
  if (!qword_2A181A080)
  {
    sub_29DE9408C(255, &qword_2A1A61D50);
    v0 = sub_29E2C2FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A080);
    }
  }
}

void sub_29DEE97C4()
{
  if (!qword_2A1820990)
  {
    sub_29DE96670();
    v0 = sub_29E2C3754();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1820990);
    }
  }
}

uint64_t sub_29DEE982C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_29DEE9844(result, a2 & 1);
  }

  return result;
}

void sub_29DEE9848(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29E2C4304();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_29DEE9894()
{
  if (!qword_2A181D9F0)
  {
    sub_29DE9408C(255, &qword_2A1A61D50);
    v0 = sub_29E2C3684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181D9F0);
    }
  }
}

char *sub_29DEE9914()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51MenstrualCyclesOnboardingPeriodLengthViewController____lazy_storage___typicalCycleViewController;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51MenstrualCyclesOnboardingPeriodLengthViewController____lazy_storage___typicalCycleViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51MenstrualCyclesOnboardingPeriodLengthViewController____lazy_storage___typicalCycleViewController);
  }

  else
  {
    v4 = sub_29DEE9978(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_29DEE9978(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = v46 - v8;
  sub_29E2C3314();
  v52 = *(v4 + 16);
  v52(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  v49 = qword_2A1A67F80;
  sub_29E2BCC74();
  v51 = sub_29E2C3414();
  v12 = v11;
  v50 = *(v4 + 8);
  v50(v9, v3);
  v53 = a1;
  v47 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_userInfo;
  v13 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_userInfo);
  if (*(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_cycleLengthFromAnalysis) == 1 && (*(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_cycleLength + 8) & 1) == 0)
  {
    v46[1] = v10;
    v37 = *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_cycleLength);
    v38 = objc_allocWithZone(MEMORY[0x29EDB9F70]);

    v39 = [v38 init];
    v48 = sub_29E11FFCC(v37, 5);
    v41 = v40;

    v46[0] = v41;
    if (v41)
    {

      sub_29E2C3314();
      v52(v6, v9, v3);
      v42 = v49;
      sub_29E2BCC74();
      sub_29E2C3414();
      v50(v9, v3);
      sub_29DEB19DC();
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_29E2CAB20;
      *(v43 + 56) = MEMORY[0x29EDC99B0];
      *(v43 + 64) = sub_29DEB1A44();
      v44 = v46[0];
      *(v43 + 32) = v48;
      *(v43 + 40) = v44;
      v51 = sub_29E2C3404();
      v48 = v45;
    }

    else
    {
      v48 = v12;
    }
  }

  else
  {
    v48 = v12;
  }

  sub_29E2C3314();
  v14 = v52;
  v52(v6, v9, v3);
  v15 = v49;
  sub_29E2BCC74();
  v16 = v15;
  v49 = sub_29E2C3414();
  v17 = v50;
  v50(v9, v3);
  sub_29E2C3314();
  v14(v6, v9, v3);
  sub_29E2BCC74();
  v18 = sub_29E2C3414();
  v20 = v19;
  v17(v9, v3);
  v21 = *(v53 + v47);
  sub_29DE9DC34(v53 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_pinnedContentManager, v58);
  v22 = objc_allocWithZone(type metadata accessor for MenstrualCyclesOnboardingTypicalCycleViewController());
  *&v22[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51MenstrualCyclesOnboardingTypicalCycleViewController____lazy_storage___periodTrackingViewController] = 0;
  sub_29DE9DC34(v58, v57);
  *&v22[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v22[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___dayPickerRange] = 1;
  *&v22[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___datePicker] = 0;
  *&v22[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___dayPicker] = 0;
  *&v22[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___dateComponentsFormatter] = 0;
  *&v22[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___footerLabel] = 0;
  *&v22[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___nextButton] = 0;
  v23 = &v22[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_pickerType];
  *v23 = xmmword_29E2CFB00;
  v23[16] = 0;
  v24 = &v22[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_footerText];
  *v24 = v18;
  v24[1] = v20;
  v22[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_showSeparators] = 1;
  *&v22[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_userInfo] = v21;
  sub_29DE9DC34(v57, &v22[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_pinnedContentManager]);
  swift_retain_n();
  v25 = sub_29E2C33A4();

  v26 = sub_29E2C33A4();

  v27 = type metadata accessor for MenstrualCyclesOnboardingPickerViewController();
  v56.receiver = v22;
  v56.super_class = v27;
  v28 = objc_msgSendSuper2(&v56, sel_initWithTitle_detailText_icon_contentLayout_, v25, v26, 0, 2);

  v29 = v28;
  v30 = [v29 navigationItem];
  v31 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:1 target:v29 action:sel_cancelButtonTapped_];
  [v30 setRightBarButtonItem_];

  v32 = [v29 navigationItem];
  v33 = [v32 rightBarButtonItem];

  if (v33)
  {
    if (qword_2A1A60ED8 != -1)
    {
      swift_once();
    }

    v54 = qword_2A1A67E58;
    v55 = unk_2A1A67E60;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000011, 0x800000029E2EF140);
    v34 = sub_29E2C33A4();

    [v33 setAccessibilityIdentifier_];
  }

  else
  {
  }

  sub_29DE93B3C(v57);
  sub_29DE93B3C(v58);
  v35 = v53 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_delegate;
  swift_unknownObjectWeakLoadStrong();
  *&v29[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_delegate + 8] = *(v35 + 8);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v29;
}