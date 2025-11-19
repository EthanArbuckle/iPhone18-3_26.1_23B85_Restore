BOOL _s26AuthenticationServicesCore41ASCTAPAuthenticatorMakeCredentialResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v10 = *(a1 + 6);
  v62[2] = *(a1 + 5);
  v62[3] = v10;
  *v63 = *(a1 + 7);
  *&v63[9] = *(a1 + 121);
  v11 = *(a1 + 4);
  v62[0] = *(a1 + 3);
  v62[1] = v11;
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[4];
  v17 = a2[5];
  *&v65[9] = *(a2 + 121);
  v18 = *(a2 + 7);
  v64[3] = *(a2 + 6);
  *v65 = v18;
  v19 = *(a2 + 5);
  v64[1] = *(a2 + 4);
  v64[2] = v19;
  v64[0] = *(a2 + 3);
  if ((v4 != v12 || v5 != v13) && (sub_1C2171324() & 1) == 0 || (sub_1C21068CC(v6, v8, v14, v15) & 1) == 0 || (sub_1C21068CC(v7, v9, v16, v17) & 1) == 0)
  {
    return 0;
  }

  v20 = *(a2 + 6);
  *&v61[39] = *(a2 + 5);
  *&v61[55] = v20;
  *&v61[71] = *(a2 + 7);
  v21 = *(a2 + 4);
  *&v61[7] = *(a2 + 3);
  v22 = v63[24];
  *&v61[87] = a2[16];
  *&v61[23] = v21;
  v23 = v65[24];
  if (v63[24] != 3)
  {
    v28 = *(a1 + 7);
    v53 = *(a1 + 6);
    *v54 = v28;
    *&v54[16] = a1[16];
    v29 = *(a1 + 5);
    v51 = *(a1 + 4);
    v52 = v29;
    v50 = *(a1 + 3);
    v54[24] = v63[24];
    v48 = v53;
    v49[0] = v28;
    v46 = v51;
    v47 = v29;
    v45 = v50;
    *(v49 + 9) = *&v54[9];
    if (v65[24] != 3)
    {
      v32 = *(a2 + 6);
      v42 = *(a2 + 5);
      v43 = v32;
      *v44 = *(a2 + 7);
      *&v44[16] = a2[16];
      v33 = *(a2 + 4);
      v40 = *(a2 + 3);
      v41 = v33;
      v44[24] = v65[24];
      sub_1C214802C(v62, v38);
      sub_1C214802C(v64, v38);
      sub_1C214802C(&v50, v38);
      v26 = _s26AuthenticationServicesCore21ASCTAPExtensionOutputV2eeoiySbAC_ACtFZ_0(&v45, &v40);
      v36[2] = v42;
      v36[3] = v43;
      v37[0] = *v44;
      *(v37 + 9) = *&v44[9];
      v36[0] = v40;
      v36[1] = v41;
      sub_1C20F4BA0(v36);
      v38[2] = v47;
      v38[3] = v48;
      v39[0] = v49[0];
      *(v39 + 9) = *(v49 + 9);
      v38[0] = v45;
      v38[1] = v46;
      sub_1C20F4BA0(v38);
      v34 = *(a1 + 6);
      v42 = *(a1 + 5);
      v43 = v34;
      *v44 = *(a1 + 7);
      *&v44[16] = a1[16];
      v35 = *(a1 + 4);
      v40 = *(a1 + 3);
      v41 = v35;
      v44[24] = v22;
      sub_1C20EB498(&v40, &qword_1EBF23560, &unk_1C2176A00);
      return v26;
    }

    v42 = v52;
    v43 = v53;
    *v44 = *v54;
    *&v44[9] = *&v54[9];
    v40 = v50;
    v41 = v51;
    sub_1C214802C(v62, v38);
    sub_1C214802C(v64, v38);
    sub_1C214802C(&v50, v38);
    sub_1C20F4BA0(&v40);
    goto LABEL_14;
  }

  if (v65[24] != 3)
  {
    sub_1C214802C(v62, &v50);
    sub_1C214802C(v64, &v50);
LABEL_14:
    v30 = *(a1 + 6);
    v52 = *(a1 + 5);
    v53 = v30;
    *v54 = *(a1 + 7);
    *&v54[16] = a1[16];
    v31 = *(a1 + 4);
    v50 = *(a1 + 3);
    v51 = v31;
    v54[24] = v22;
    v55 = *v61;
    v56 = *&v61[16];
    *&v59[15] = *&v61[79];
    *v59 = *&v61[64];
    v58 = *&v61[48];
    v57 = *&v61[32];
    v60 = v23;
    sub_1C20EB498(&v50, &qword_1EBF249F8, &qword_1C217F208);
    return 0;
  }

  v24 = *(a1 + 6);
  v52 = *(a1 + 5);
  v53 = v24;
  *v54 = *(a1 + 7);
  *&v54[16] = a1[16];
  v25 = *(a1 + 4);
  v50 = *(a1 + 3);
  v51 = v25;
  v54[24] = 3;
  sub_1C214802C(v62, &v45);
  sub_1C214802C(v64, &v45);
  sub_1C20EB498(&v50, &qword_1EBF23560, &unk_1C2176A00);
  return 1;
}

unint64_t sub_1C21475B0()
{
  result = qword_1EBF241E8;
  if (!qword_1EBF241E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBF241E8);
  }

  return result;
}

double sub_1C21475FC(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_1C214761C()
{
  result = qword_1EBF24938;
  if (!qword_1EBF24938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24938);
  }

  return result;
}

unint64_t sub_1C2147670(uint64_t a1)
{
  result = sub_1C2147698();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C2147698()
{
  result = qword_1EBF24940[0];
  if (!qword_1EBF24940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBF24940);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26AuthenticationServicesCore21ASCTAPExtensionOutputVSg(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 >= 2)
  {
    v2 = ((v1 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v2 = -2;
  }

  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1C2147750(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_1C2147798(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy225_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1C2147868(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 225))
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

uint64_t sub_1C21478C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 224) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 225) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 225) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C214796C(uint64_t a1)
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

uint64_t sub_1C21479F4(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xC)
  {
    v7 = 12;
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
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = a1 & 0xFFFFFFFFFFFFFFF8;
      if (v5 > 0xC)
      {
        return (*(v4 + 48))((v15 + v6 + 24) & ~v6);
      }

      v16 = *(v15 + 16) >> 60;
      if (((4 * v16) & 0xC) != 0)
      {
        return 16 - ((4 * v16) & 0xC | (v16 >> 2));
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
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

  return v7 + (v9 | v14) + 1;
}

void sub_1C2147B90(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xC)
  {
    v8 = 12;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = a1 & 0xFFFFFFFFFFFFFFF8;
  if (v7 > 0xC)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 24) & ~v9);
  }

  else if (a2 > 0xC)
  {
    *(v19 + 8) = a2 - 13;
    *(v19 + 16) = 0;
  }

  else
  {
    *(v19 + 8) = 0;
    *(v19 + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }
}

unint64_t sub_1C2147E10(uint64_t a1)
{
  result = sub_1C2147E38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C2147E38()
{
  result = qword_1EBF249C8;
  if (!qword_1EBF249C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF249C8);
  }

  return result;
}

unint64_t sub_1C2147E8C()
{
  result = qword_1EBF249D8;
  if (!qword_1EBF249D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF249D8);
  }

  return result;
}

unint64_t sub_1C2147EE0()
{
  result = qword_1EBF249E0;
  if (!qword_1EBF249E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF249E0);
  }

  return result;
}

uint64_t sub_1C2147F6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1C20D865C(a3, a4);
  }

  return result;
}

uint64_t sub_1C2147FCC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1C20D865C(a3, a4);
  }

  return result;
}

uint64_t sub_1C214802C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23560, &unk_1C2176A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C214809C()
{
  result = qword_1EBF249F0;
  if (!qword_1EBF249F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF249F0);
  }

  return result;
}

uint64_t sub_1C21480F0(uint64_t result)
{
  if (result > 0x21u)
  {
    switch(result)
    {
      case '""':
        return 4;
      case '/':
        return 5;
      case '\x7F':
        return 6;
    }
  }

  else
  {
    if (result < 2u)
    {
      return result;
    }

    if (result == 5)
    {
      return 2;
    }

    if (result == 25)
    {
      return 3;
    }
  }

  return 7;
}

unint64_t sub_1C214815C()
{
  result = qword_1EBF24A00;
  if (!qword_1EBF24A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24A00);
  }

  return result;
}

unint64_t sub_1C21481B0()
{
  result = qword_1EBF24A08;
  if (!qword_1EBF24A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24A08);
  }

  return result;
}

unint64_t sub_1C2148204()
{
  result = qword_1EBF24A10;
  if (!qword_1EBF24A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24A10);
  }

  return result;
}

uint64_t sub_1C2148288(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C21482D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1C214832C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1C2148370()
{
  result = qword_1EBF24A18;
  if (!qword_1EBF24A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24A18);
  }

  return result;
}

unint64_t sub_1C21483C8()
{
  result = qword_1EBF24A20;
  if (!qword_1EBF24A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24A20);
  }

  return result;
}

unint64_t sub_1C2148420()
{
  result = qword_1EBF24A28;
  if (!qword_1EBF24A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24A28);
  }

  return result;
}

uint64_t sub_1C2148474(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61;
  if (v4 || (sub_1C2171324() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614468747561 && a2 == 0xE800000000000000 || (sub_1C2171324() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065 || (sub_1C2171324() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1919251317 && a2 == 0xE400000000000000 || (sub_1C2171324() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C2186720 == a2 || (sub_1C2171324() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C655372657375 && a2 == 0xEC00000064657463 || (sub_1C2171324() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001C2186740 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1C2171324();

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

uint64_t static ASCWebKitSPISupport.entepriseAttestationIdentityPersistentReference(for:)()
{
  v0 = [objc_opt_self() sharedManager];
  v1 = sub_1C21708F4();
  v2 = [v0 entepriseAttestationIdentityPersistentReferenceForRelyingParty_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C2170174();

  return v3;
}

uint64_t static ASCWebKitSPISupport.getClientCapabilities(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C21488F8, 0, 0);
}

unint64_t sub_1C21488F8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_1C21708F4();
  LODWORD(v3) = [ObjCClassFromMetadata arePasskeysDisallowedForRelyingParty_];

  v6 = v3 ^ 1;
  v7 = sub_1C2141C78(MEMORY[0x1E69E7CC0]);
  v8 = 0;
  do
  {
    v12 = &unk_1F419DA20 + v8++;
    v13 = v12[32];
    if (v13 == 4)
    {
      v14 = v6;
    }

    else
    {
      v14 = 1;
    }

    v15 = 0x4F646574616C6572;
    if (v13 == 4)
    {
      v15 = 0xD000000000000011;
    }

    v16 = 0x80000001C2186760;
    if (v13 != 4)
    {
      v16 = 0xEE00736E69676972;
    }

    if (v13 == 3)
    {
      v14 = v6;
      v15 = 0x6F697469646E6F63;
      v16 = 0xEE007465476C616ELL;
    }

    v17 = 0xD000000000000022;
    v18 = 0xD00000000000001CLL;
    if (v13 == 1)
    {
      v18 = 0x7254646972627968;
    }

    v19 = 0x80000001C2186780;
    if (v13 == 1)
    {
      v19 = 0xEF74726F70736E61;
    }

    if (v13)
    {
      v17 = v18;
      v20 = v19;
    }

    else
    {
      v20 = 0x80000001C21867A0;
    }

    if (v13 <= 2)
    {
      v21 = v6;
    }

    else
    {
      v21 = v14;
    }

    if (v13 <= 2)
    {
      v22 = v17;
    }

    else
    {
      v22 = v15;
    }

    if (v13 <= 2)
    {
      v23 = v20;
    }

    else
    {
      v23 = v16;
    }

    v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    if (!v24)
    {
      v35 = sub_1C2121F88(v22, v23);
      v37 = v36;

      if (v37)
      {
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1C213D098();
        }

        v38 = *(v7[6] + 16 * v35 + 8);

        sub_1C2149278(v35, v7);
      }

      continue;
    }

    v25 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_1C2121F88(v22, v23);
    v29 = v7[2];
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      __break(1u);
LABEL_51:
      __break(1u);
      return result;
    }

    v33 = v28;
    if (v7[3] >= v32)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = result;
        sub_1C213D098();
        result = v42;
        if (v33)
        {
LABEL_2:
          v9 = result;

          v10 = v7[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v25;

          continue;
        }

        goto LABEL_40;
      }
    }

    else
    {
      sub_1C213BBB8(v32, isUniquelyReferenced_nonNull_native);
      result = sub_1C2121F88(v22, v23);
      if ((v33 & 1) != (v34 & 1))
      {

        return sub_1C2171374();
      }
    }

    if (v33)
    {
      goto LABEL_2;
    }

LABEL_40:
    v7[(result >> 6) + 8] |= 1 << result;
    v39 = (v7[6] + 16 * result);
    *v39 = v22;
    v39[1] = v23;
    *(v7[7] + 8 * result) = v25;
    v40 = v7[2];
    v31 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v31)
    {
      goto LABEL_51;
    }

    v7[2] = v41;
  }

  while (v8 != 6);
  v43 = *(v44 + 8);

  return v43(v7);
}

uint64_t sub_1C2148E3C(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = sub_1C2170914();
  v5 = v4;
  v2[3] = v4;
  swift_getObjCClassMetadata();
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1C2148F0C;

  return static ASCWebKitSPISupport.getClientCapabilities(for:)(v3, v5);
}

uint64_t sub_1C2148F0C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  sub_1C2149AA4();
  v4 = sub_1C2170854();

  (v3)[2](v3, v4);

  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

BOOL static ASCWebKitSPISupport.shouldApplyWorkaroundFor134591531()()
{
  v0 = [objc_opt_self() processInfo];
  [v0 operatingSystemVersion];
  v1 = v4;
  v2 = v5;

  if (v1 == 15)
  {
    return v2 < 2;
  }

  else
  {
    return v1 < 15;
  }
}

uint64_t sub_1C2149278(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C2170E54() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1C2171434();

      sub_1C21709B4();
      v13 = sub_1C2171454();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C2149428(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C2170E54() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_1C2171434();

      sub_1C21709B4();
      v15 = sub_1C2171454();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t _sSo19ASCWebKitSPISupportC26AuthenticationServicesCoreE12wkTransports4fromSaySo8NSNumberCGSaySSG_tFZ_0(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v6 = (v3 + 16 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return result;
    }

    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_18;
    }

    v8 = *(v6 - 1);
    v9 = *v6;

    v10 = sub_1C2171134();

    ++v1;
    v6 += 2;
    if (v10 < 6)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C211545C(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_1C211545C((v11 > 1), v12 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v12 + 1;
      *(v5 + v12 + 32) = v10;
      v1 = v7;
      goto LABEL_2;
    }
  }

  v13 = *(v5 + 16);
  if (v13)
  {
    sub_1C2170FD4();
    sub_1C2149AA4();
    v14 = 32;
    do
    {
      v15 = qword_1C217F420[*(v5 + v14)];
      sub_1C2170CD4();
      sub_1C2170FB4();
      v16 = *(v4 + 16);
      sub_1C2170FE4();
      sub_1C2170FF4();
      sub_1C2170FC4();
      ++v14;
      --v13;
    }

    while (v13);

    return v4;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t _sSo19ASCWebKitSPISupportC26AuthenticationServicesCoreE12asTransports4fromSaySSGSaySo8NSNumberCG_tFZ_0(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_55:
    v3 = sub_1C2170E84();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = v5;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1C69141F0](v7, a1);
          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v7 >= *(v2 + 16))
          {
            goto LABEL_54;
          }

          v8 = *(a1 + 8 * v7 + 32);
          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }
        }

        ASWKCTAPAuthenticatorTransport.init(rawValue:)(v8);
        if (v28 != 7)
        {
          break;
        }

        ++v7;
        if (v5 == v3)
        {
          goto LABEL_22;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1C2115470(0, *(v6 + 2) + 1, 1, v6);
      }

      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        v6 = sub_1C2115470((v9 > 1), v10 + 1, 1, v6);
      }

      *(v6 + 2) = v10 + 1;
      v6[v10 + 32] = v28;
    }

    while (v5 != v3);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

LABEL_22:
  v11 = *(v6 + 2);
  if (v11)
  {
    sub_1C20E71CC(0, v11, 0);
    v12 = 32;
    v13 = v4;
    do
    {
      v14 = v6[v12];
      v15 = v14 - 4;
      if (v14 == 3)
      {
        v16 = 0x6C616E7265746E69;
      }

      else
      {
        v16 = 0x61632D7472616D73;
      }

      if (v14 == 3)
      {
        v17 = 0xE800000000000000;
      }

      else
      {
        v17 = 0xEA00000000006472;
      }

      v18 = v15 >= 2;
      if (v15 >= 2)
      {
        v19 = v16;
      }

      else
      {
        v19 = 0x646972627968;
      }

      if (v18)
      {
        v20 = v17;
      }

      else
      {
        v20 = 0xE600000000000000;
      }

      if (v14 == 1)
      {
        v21 = 6514286;
      }

      else
      {
        v21 = 6646882;
      }

      if (!v6[v12])
      {
        v21 = 6452085;
      }

      if (v6[v12] <= 2u)
      {
        v22 = v21;
      }

      else
      {
        v22 = v19;
      }

      if (v6[v12] <= 2u)
      {
        v23 = 0xE300000000000000;
      }

      else
      {
        v23 = v20;
      }

      v25 = *(v4 + 16);
      v24 = *(v4 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1C20E71CC((v24 > 1), v25 + 1, 1);
      }

      *(v4 + 16) = v25 + 1;
      v26 = v4 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v12;
      --v11;
    }

    while (v11);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v13;
}

unint64_t sub_1C2149AA4()
{
  result = qword_1EDD4A9B0;
  if (!qword_1EDD4A9B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD4A9B0);
  }

  return result;
}

uint64_t sub_1C2149AF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C20DBF8C;

  return sub_1C2148E3C(v2, v3);
}

uint64_t sub_1C2149BD0()
{
  v0 = sub_1C21705A4();
  __swift_allocate_value_buffer(v0, qword_1EDD4CB20);
  __swift_project_value_buffer(v0, qword_1EDD4CB20);
  return sub_1C2170594();
}

uint64_t sub_1C2149C74(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C21705A4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1C2170594();
}

id static ASManagedConfiguration.loadFromDisk(plistURL:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v47 - v9;
  v11 = sub_1C2170024();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(a1, 1, v11) == 1)
  {
    sub_1C214A448();
    swift_allocError();
    swift_willThrow();
    return v1;
  }

  v50 = a1;
  v51 = v8;
  sub_1C214A49C(a1, v10);
  result = (v13)(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_28;
  }

  v15 = sub_1C2170094();
  if (!v2)
  {
    v26 = v15;
    v27 = v16;
    (*(v12 + 8))(v10, v11);
    v28 = sub_1C216FE94();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_1C216FE84();
    type metadata accessor for ASManagedConfiguration();
    sub_1C214F0E8(&qword_1EBF24A38, type metadata accessor for ASManagedConfiguration);
    sub_1C216FE74();

    sub_1C20D3174(v26, v27);
    return v54;
  }

  v17 = *(v12 + 8);
  v17(v10, v11);
  v54 = v2;
  v18 = v2;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23E98, &qword_1C2179238);
  sub_1C20DB8B8(0, qword_1EDD4AE90, 0x1E696ABC0);
  if (!swift_dynamicCast())
  {

    return v1;
  }

  v48 = v17;
  v49 = v12 + 8;

  v19 = v53;
  v20 = [v53 domain];
  v21 = sub_1C2170914();
  v23 = v22;

  v24 = *MEMORY[0x1E696A250];
  if (v21 == sub_1C2170914() && v23 == v25)
  {
  }

  else
  {
    v31 = sub_1C2171324();

    if ((v31 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if ([v19 code]== 260)
  {
    if (qword_1EDD4A730 != -1)
    {
      swift_once();
    }

    v32 = sub_1C21705A4();
    __swift_project_value_buffer(v32, qword_1EDD4CB20);
    v33 = sub_1C2170584();
    v34 = sub_1C2170C74();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_23;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1C20AD000, v33, v34, "Managed configuration file does not exist.", v35, 2u);
LABEL_22:
    MEMORY[0x1C6915360](v35, -1, -1);
LABEL_23:
    v37 = v33;
    goto LABEL_25;
  }

LABEL_18:
  if (qword_1EDD4A730 != -1)
  {
    swift_once();
  }

  v36 = sub_1C21705A4();
  __swift_project_value_buffer(v36, qword_1EDD4CB20);
  v37 = v19;
  v33 = sub_1C2170584();
  v38 = sub_1C2170C64();

  if (os_log_type_enabled(v33, v38))
  {
    v35 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v47 = v19;
    v40 = v39;
    *v35 = 138412290;
    *(v35 + 4) = v37;
    *v39 = v37;
    v41 = v37;
    _os_log_impl(&dword_1C20AD000, v33, v38, "Could not read managed configuration file: %@", v35, 0xCu);
    sub_1C20EB498(v40, &qword_1EBF23700, &qword_1C2176D80);
    v42 = v40;
    v19 = v47;
    MEMORY[0x1C6915360](v42, -1, -1);
    goto LABEL_22;
  }

  v19 = v33;
LABEL_25:

  v43 = v51;
  sub_1C214A49C(v50, v51);
  result = (v13)(v43, 1, v11);
  if (result != 1)
  {
    v44 = sub_1C2141D7C(MEMORY[0x1E69E7CC0]);
    v45 = type metadata accessor for ASManagedConfiguration();
    v46 = objc_allocWithZone(v45);
    (*(v12 + 16))(&v46[OBJC_IVAR____TtC26AuthenticationServicesCore22ASManagedConfiguration_plistURL], v43, v11);
    *&v46[OBJC_IVAR____TtC26AuthenticationServicesCore22ASManagedConfiguration_declarationKeyToPasskeyAttestationConfigurationKey] = v44;
    v52.receiver = v46;
    v52.super_class = v45;
    v1 = objc_msgSendSuper2(&v52, sel_init);
    v48(v43, v11);
    return v1;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_1C214A448()
{
  result = qword_1EBF24A30;
  if (!qword_1EBF24A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24A30);
  }

  return result;
}

uint64_t sub_1C214A49C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C214A700()
{
  v1 = OBJC_IVAR____TtC26AuthenticationServicesCore22ASManagedConfiguration_declarationKeyToPasskeyAttestationConfigurationKey;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return sub_1C214A74C(v3);
}

uint64_t sub_1C214A74C(uint64_t a1)
{
  result = MEMORY[0x1C6913EC0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1C214C8C4(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C214A868(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v23 = a2;
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore22ASManagedConfiguration_declarationKeyToPasskeyAttestationConfigurationKey;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(v2 + v3) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v24 = *(v2 + v3);
  result = swift_bridgeObjectRetain_n();
  v13 = 0;
  while (v10)
  {
    v14 = v13;
LABEL_10:
    v15 = (*(v24 + 56) + 40 * (__clz(__rbit64(v10)) | (v14 << 6)));
    v16 = v15[1];
    v17 = v15[3];
    v18 = v15[4];
    v10 &= v10 - 1;
    v25[0] = v22;
    v25[1] = v23;
    MEMORY[0x1EEE9AC00](result);
    v21[2] = v25;

    swift_bridgeObjectRetain_n();
    v19 = sub_1C214AADC(sub_1C214F03C, v21, v18);
    swift_bridgeObjectRelease_n();

    if (v19)
    {
      v20 = 1;
LABEL_13:

      return v20;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      v20 = 0;
      goto LABEL_13;
    }

    v10 = *(v6 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C214AA2C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_1C214AADC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1C214ABEC(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore22ASManagedConfiguration_declarationKeyToPasskeyAttestationConfigurationKey;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v23 = v4;
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v24 = &v21;
      v13 = (*(v23 + 56) + 40 * (__clz(__rbit64(v8)) | (v12 << 6)));
      v14 = v13[1];
      v15 = v13[2];
      v16 = v13[3];
      v17 = v13[4];
      v25[0] = v21;
      v25[1] = v22;
      MEMORY[0x1EEE9AC00](result);
      v20[2] = v25;

      swift_bridgeObjectRetain_n();
      v18 = sub_1C214AADC(sub_1C214FB2C, v20, v17);

      if (v18)
      {
        break;
      }

      v8 &= v8 - 1;

      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v19 = sub_1C21700D4();

    return v19;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        return 0;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C214AEB4(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1C2170024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v32[0] = *a1;
  v32[1] = v10;
  v33 = *(a1 + 32);
  v11 = v32[0];
  v12 = OBJC_IVAR____TtC26AuthenticationServicesCore22ASManagedConfiguration_declarationKeyToPasskeyAttestationConfigurationKey;
  swift_beginAccess();

  sub_1C214F0B0(v32, v31);
  v13 = *(v3 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31[0] = *(v3 + v12);
  *(v3 + v12) = 0x8000000000000000;
  sub_1C213C91C(v32, v11, *(&v11 + 1), isUniquelyReferenced_nonNull_native);

  *(v3 + v12) = v31[0];
  swift_endAccess();
  v15 = sub_1C216FEC4();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_1C216FEB4();
  v31[0] = v3;
  type metadata accessor for ASManagedConfiguration();
  sub_1C214F0E8(&qword_1EBF24B80, type metadata accessor for ASManagedConfiguration);
  v18 = sub_1C216FEA4();
  if (v2)
  {

    if (qword_1EDD4A730 != -1)
    {
      swift_once();
    }

    v22 = sub_1C21705A4();
    __swift_project_value_buffer(v22, qword_1EDD4CB20);
    v23 = v2;
    v24 = sub_1C2170584();
    v25 = sub_1C2170C54();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = v2;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_1C20AD000, v24, v25, "Could not save managed settings: %@", v26, 0xCu);
      sub_1C20EB498(v27, &qword_1EBF23700, &qword_1C2176D80);
      MEMORY[0x1C6915360](v27, -1, -1);
      MEMORY[0x1C6915360](v26, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    v20 = v18;
    v21 = v19;

    (*(v6 + 16))(v9, v3 + OBJC_IVAR____TtC26AuthenticationServicesCore22ASManagedConfiguration_plistURL, v5);
    sub_1C2170194();
    (*(v6 + 8))(v9, v5);
    return sub_1C20D3174(v20, v21);
  }
}

uint64_t sub_1C214B264(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1C2170024();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  sub_1C214EF34(a1, a2, v31);
  v11 = v31[0];
  v12 = v31[1];
  swift_endAccess();
  sub_1C214F130(v11, v12);
  v13 = sub_1C216FEC4();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_1C216FEB4();
  v31[0] = v4;
  type metadata accessor for ASManagedConfiguration();
  sub_1C214F0E8(&qword_1EBF24B80, type metadata accessor for ASManagedConfiguration);
  v16 = sub_1C216FEA4();
  if (v3)
  {

    if (qword_1EDD4A730 != -1)
    {
      swift_once();
    }

    v21 = sub_1C21705A4();
    __swift_project_value_buffer(v21, qword_1EDD4CB20);
    v22 = v3;
    v23 = sub_1C2170584();
    v24 = sub_1C2170C54();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v3;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_1C20AD000, v23, v24, "Could not save managed settings: %@", v25, 0xCu);
      sub_1C20EB498(v26, &qword_1EBF23700, &qword_1C2176D80);
      MEMORY[0x1C6915360](v26, -1, -1);
      MEMORY[0x1C6915360](v25, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    v18 = v16;
    v19 = v17;

    v20 = v32;
    (*(v32 + 16))(v10, v4 + OBJC_IVAR____TtC26AuthenticationServicesCore22ASManagedConfiguration_plistURL, v7);
    sub_1C2170194();
    (*(v20 + 8))(v10, v7);
    return sub_1C20D3174(v18, v19);
  }
}

id ASManagedConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1C214B680()
{
  if (*v0)
  {
    result = 0xD000000000000032;
  }

  else
  {
    result = 0x4C52557473696C70;
  }

  *v0;
  return result;
}

uint64_t sub_1C214B6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4C52557473696C70 && a2 == 0xE800000000000000;
  if (v6 || (sub_1C2171324() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000032 && 0x80000001C2186910 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C2171324();

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

uint64_t sub_1C214B7A4(uint64_t a1)
{
  v2 = sub_1C214F180();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C214B7E0(uint64_t a1)
{
  v2 = sub_1C214F180();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ASManagedConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASManagedConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C214B8D0(void *a1)
{
  v2 = v1;
  v4 = sub_1C2170024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24A40, &qword_1C217F458);
  v18 = *(v9 - 8);
  v10 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C214F180();
  sub_1C2171484();
  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC26AuthenticationServicesCore22ASManagedConfiguration_plistURL, v4);
  v20 = 0;
  sub_1C214F0E8(&qword_1EBF24A50, MEMORY[0x1E6968FB0]);
  v14 = v17;
  sub_1C2171294();
  (*(v5 + 8))(v8, v4);
  if (!v14)
  {
    v15 = OBJC_IVAR____TtC26AuthenticationServicesCore22ASManagedConfiguration_declarationKeyToPasskeyAttestationConfigurationKey;
    swift_beginAccess();
    v21 = *(v2 + v15);
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24A58, &qword_1C217F460);
    sub_1C214F228(&qword_1EBF24A60, sub_1C214F1D4);
    sub_1C2171294();
  }

  return (*(v18 + 8))(v12, v9);
}

void *ASManagedConfiguration.init(from:)(uint64_t *a1)
{
  v22 = sub_1C2170024();
  v20 = *(v22 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24A70, &qword_1C217F468);
  v7 = *(v21 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v21);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C214F180();
  sub_1C2171464();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for ASManagedConfiguration();
    v14 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v15 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v7;
    v12 = v20;
    LOBYTE(v25) = 0;
    sub_1C214F0E8(&qword_1EBF24A78, MEMORY[0x1E6968FB0]);
    v13 = v21;
    sub_1C21711D4();
    (*(v12 + 32))(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore22ASManagedConfiguration_plistURL, v6, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24A58, &qword_1C217F460);
    v24 = 1;
    sub_1C214F228(&qword_1EBF24A80, sub_1C214F2AC);
    sub_1C21711D4();
    *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore22ASManagedConfiguration_declarationKeyToPasskeyAttestationConfigurationKey) = v25;
    v17 = type metadata accessor for ASManagedConfiguration();
    v23.receiver = v1;
    v23.super_class = v17;
    v7 = objc_msgSendSuper2(&v23, sel_init);
    (v19[1])(v10, v13);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v7;
}

void *sub_1C214BFD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ASManagedConfiguration());
  result = ASManagedConfiguration.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void __swiftcall ASPasskeyAttestationConfiguration.init(declarationKey:attestationIdentityPersistentReference:relyingParties:)(AuthenticationServicesCore::ASPasskeyAttestationConfiguration *__return_ptr retstr, Swift::String declarationKey, Swift::String attestationIdentityPersistentReference, Swift::OpaquePointer relyingParties)
{
  retstr->declarationKey = declarationKey;
  retstr->attestationIdentityPersistentReference = attestationIdentityPersistentReference;
  retstr->relyingParties = relyingParties;
}

uint64_t sub_1C214C060()
{
  v1 = 0xD000000000000026;
  if (*v0 != 1)
  {
    v1 = 0x50676E69796C6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746172616C636564;
  }
}

uint64_t sub_1C214C0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C214F994(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C214C100(uint64_t a1)
{
  v2 = sub_1C214F300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C214C13C(uint64_t a1)
{
  v2 = sub_1C214F300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASPasskeyAttestationConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24A90, &unk_1C217F470);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v17 = v1[3];
  v18 = v10;
  v16 = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C214F300();
  sub_1C2171484();
  v23 = 0;
  v12 = v19;
  sub_1C2171274();
  if (!v12)
  {
    v14 = v16;
    v22 = 1;
    sub_1C2171274();
    v20 = v14;
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF236E0, &qword_1C2176D70);
    sub_1C20FD358(&qword_1EBF239E0);
    sub_1C2171294();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ASPasskeyAttestationConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24AA0, &qword_1C217F480);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C214F300();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v24 = 0;
  v11 = sub_1C21711B4();
  v13 = v12;
  v20 = v11;
  v23 = 1;
  v18 = sub_1C21711B4();
  v19 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF236E0, &qword_1C2176D70);
  v22 = 2;
  sub_1C20FD358(&qword_1EBF23E10);
  sub_1C21711D4();
  (*(v6 + 8))(v9, v5);
  v15 = v21;
  *a2 = v20;
  a2[1] = v13;
  v16 = v19;
  a2[2] = v18;
  a2[3] = v16;
  a2[4] = v15;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1C214C69C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1C2170E94();

    if (v9)
    {

      type metadata accessor for ASCPhoneNumber();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1C2170E84();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1C214CF3C(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1C214D908(v22 + 1, &qword_1EBF23F18, &unk_1C2179260);
    }

    v20 = v8;
    sub_1C214DB28(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for ASCPhoneNumber();
  v11 = *(v6 + 40);
  v12 = sub_1C2170CE4();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1C214DBAC(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1C2170CF4();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1C214C8C4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1C2171434();
  sub_1C21709B4();
  v9 = sub_1C2171454();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1C2171324() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1C214DD3C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C214CA14(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1C216FF04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1C214F0E8(&qword_1EBF24AE8, MEMORY[0x1E6968A70]);
  v36 = a2;
  v13 = sub_1C2170884();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1C214F0E8(&qword_1EBF24AF0, MEMORY[0x1E6968A70]);
      v23 = sub_1C21708E4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1C214DEBC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1C214CCF4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1C2170E94();

    if (v9)
    {

      sub_1C20DB8B8(0, &unk_1EDD4ADE8, 0x1E69C6DC0);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1C2170E84();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1C214D13C(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1C214D908(v22 + 1, &qword_1EBF24AE0, &qword_1C217F898);
    }

    v20 = v8;
    sub_1C214DB28(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1C20DB8B8(0, &unk_1EDD4ADE8, 0x1E69C6DC0);
  v11 = *(v6 + 40);
  v12 = sub_1C2170CE4();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1C214E160(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1C2170CF4();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1C214CF3C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23F18, &unk_1C2179260);
    v2 = sub_1C2170F04();
    v16 = v2;
    sub_1C2170E74();
    if (sub_1C2170EA4())
    {
      type metadata accessor for ASCPhoneNumber();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1C214D908(v10 + 1, &qword_1EBF23F18, &unk_1C2179260);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1C2170CE4();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1C2170EA4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1C214D13C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24AE0, &qword_1C217F898);
    v2 = sub_1C2170F04();
    v16 = v2;
    sub_1C2170E74();
    if (sub_1C2170EA4())
    {
      sub_1C20DB8B8(0, &unk_1EDD4ADE8, 0x1E69C6DC0);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1C214D908(v10 + 1, &qword_1EBF24AE0, &qword_1C217F898);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1C2170CE4();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1C2170EA4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1C214D34C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23E80, &qword_1C2179220);
  result = sub_1C2170EF4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1C2171434();
      sub_1C21709B4();
      result = sub_1C2171454();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C214D5AC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1C216FF04();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24AF8, &unk_1C217F8A0);
  result = sub_1C2170EF4();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1C214F0E8(&qword_1EBF24AE8, MEMORY[0x1E6968A70]);
      result = sub_1C2170884();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1C214D908(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1C2170EF4();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_1C2170CE4();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_1C214DB28(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1C2170CE4();
  v5 = -1 << *(a2 + 32);
  result = sub_1C2170E64();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1C214DBAC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C214D908(v6 + 1, &qword_1EBF23F18, &unk_1C2179260);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1C214E694(&qword_1EBF23F18, &unk_1C2179260);
      goto LABEL_12;
    }

    sub_1C214ED28(v6 + 1, &qword_1EBF23F18, &unk_1C2179260);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1C2170CE4();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for ASCPhoneNumber();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1C2170CF4();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1C2171364();
  __break(1u);
}

uint64_t sub_1C214DD3C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1C214D34C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1C214E300();
      goto LABEL_16;
    }

    sub_1C214E7D4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1C2171434();
  sub_1C21709B4();
  result = sub_1C2171454();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1C2171324();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1C2171364();
  __break(1u);
  return result;
}

uint64_t sub_1C214DEBC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1C216FF04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C214D5AC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1C214E45C();
      goto LABEL_12;
    }

    sub_1C214EA0C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1C214F0E8(&qword_1EBF24AE8, MEMORY[0x1E6968A70]);
  v15 = sub_1C2170884();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1C214F0E8(&qword_1EBF24AF0, MEMORY[0x1E6968A70]);
      v23 = sub_1C21708E4();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C2171364();
  __break(1u);
  return result;
}

void sub_1C214E160(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C214D908(v6 + 1, &qword_1EBF24AE0, &qword_1C217F898);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1C214E694(&qword_1EBF24AE0, &qword_1C217F898);
      goto LABEL_12;
    }

    sub_1C214ED28(v6 + 1, &qword_1EBF24AE0, &qword_1C217F898);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1C2170CE4();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_1C20DB8B8(0, &unk_1EDD4ADE8, 0x1E69C6DC0);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1C2170CF4();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1C2171364();
  __break(1u);
}

void *sub_1C214E300()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23E80, &qword_1C2179220);
  v2 = *v0;
  v3 = sub_1C2170EE4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C214E45C()
{
  v1 = v0;
  v2 = sub_1C216FF04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24AF8, &unk_1C217F8A0);
  v7 = *v0;
  v8 = sub_1C2170EE4();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

id sub_1C214E694(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C2170EE4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1C214E7D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23E80, &qword_1C2179220);
  result = sub_1C2170EF4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1C2171434();

      sub_1C21709B4();
      result = sub_1C2171454();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C214EA0C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C216FF04();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24AF8, &unk_1C217F8A0);
  v10 = sub_1C2170EF4();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1C214F0E8(&qword_1EBF24AE8, MEMORY[0x1E6968A70]);
      result = sub_1C2170884();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1C214ED28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1C2170EF4();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_1C2170CE4();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

double sub_1C214EF34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1C2121F88(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C213D204();
      v12 = v17;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 40 * v9;
    v15 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v15;
    *(a3 + 24) = *(v14 + 24);
    sub_1C2149428(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t type metadata accessor for ASManagedConfiguration()
{
  result = qword_1EDD4ADD8;
  if (!qword_1EDD4ADD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C214F058(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C2171324() & 1;
  }
}

uint64_t sub_1C214F0E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C214F130(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1C214F180()
{
  result = qword_1EBF24A48;
  if (!qword_1EBF24A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24A48);
  }

  return result;
}

unint64_t sub_1C214F1D4()
{
  result = qword_1EBF24A68;
  if (!qword_1EBF24A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24A68);
  }

  return result;
}

uint64_t sub_1C214F228(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF24A58, &qword_1C217F460);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C214F2AC()
{
  result = qword_1EBF24A88;
  if (!qword_1EBF24A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24A88);
  }

  return result;
}

unint64_t sub_1C214F300()
{
  result = qword_1EBF24A98;
  if (!qword_1EBF24A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24A98);
  }

  return result;
}

uint64_t sub_1C214F35C()
{
  result = sub_1C2170024();
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

unint64_t sub_1C214F5F0()
{
  result = qword_1EBF24AA8;
  if (!qword_1EBF24AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24AA8);
  }

  return result;
}

unint64_t sub_1C214F648()
{
  result = qword_1EBF24AB0;
  if (!qword_1EBF24AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24AB0);
  }

  return result;
}

unint64_t sub_1C214F6A0()
{
  result = qword_1EBF24AB8;
  if (!qword_1EBF24AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24AB8);
  }

  return result;
}

unint64_t sub_1C214F6F8()
{
  result = qword_1EBF24AC0;
  if (!qword_1EBF24AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24AC0);
  }

  return result;
}

unint64_t sub_1C214F750()
{
  result = qword_1EBF24AC8;
  if (!qword_1EBF24AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24AC8);
  }

  return result;
}

unint64_t sub_1C214F7A8()
{
  result = qword_1EBF24AD0;
  if (!qword_1EBF24AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24AD0);
  }

  return result;
}

unint64_t sub_1C214F800()
{
  result = qword_1EBF24AD8;
  if (!qword_1EBF24AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24AD8);
  }

  return result;
}

uint64_t sub_1C214F854(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C2170E84())
  {
    v4 = sub_1C20DB8B8(0, &unk_1EDD4ADE8, 0x1E69C6DC0);
    v5 = sub_1C214FAC4();
    result = MEMORY[0x1C6913EC0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1C69141F0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1C214CCF4(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1C2170E84();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1C214F994(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746172616C636564 && a2 == 0xEE0079654B6E6F69;
  if (v4 || (sub_1C2171324() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001C2186950 == a2 || (sub_1C2171324() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x50676E69796C6572 && a2 == 0xEE00736569747261)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C2171324();

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

unint64_t sub_1C214FAC4()
{
  result = qword_1EDD4AE20;
  if (!qword_1EDD4AE20)
  {
    sub_1C20DB8B8(255, &unk_1EDD4ADE8, 0x1E69C6DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4AE20);
  }

  return result;
}

void sub_1C214FB48(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1C214FBB4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1C2170FD4();
    v4 = v1 + 56;
    v5 = -1 << *(v1 + 32);
    v6 = sub_1C2170E44();
    v7 = *(v1 + 36);
    result = objc_opt_self();
    v8 = 0;
    v23 = v1 + 64;
    v24 = result;
    v25 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v26 = v8;
      v11 = (*(v1 + 48) + 16 * v6);
      v13 = *v11;
      v12 = v11[1];

      v14 = sub_1C21708F4();
      [v24 newDeclarationKey_];

      sub_1C2170FB4();
      v15 = *(v27 + 16);
      sub_1C2170FE4();
      v1 = v25;
      sub_1C2170FF4();
      result = sub_1C2170FC4();
      v9 = 1 << *(v25 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v16 = *(v4 + 8 * v10);
      if ((v16 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v25 + 36))
      {
        goto LABEL_25;
      }

      v17 = v16 & (-2 << (v6 & 0x3F));
      if (v17)
      {
        v9 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v10 << 6;
        v19 = v10 + 1;
        v20 = (v23 + 8 * v10);
        while (v19 < (v9 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1C2152100(v6, v7, 0);
            v9 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        result = sub_1C2152100(v6, v7, 0);
      }

LABEL_4:
      v8 = v26 + 1;
      v6 = v9;
      if (v26 + 1 == v2)
      {
        return v27;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

id sub_1C214FE10()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = [objc_opt_self() defaultManager];
  v10 = [v9 as_authenticationServicesManagedConfigurationURL];

  if (v10)
  {
    sub_1C216FFD4();

    v11 = sub_1C2170024();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  }

  else
  {
    v12 = sub_1C2170024();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  type metadata accessor for ASManagedConfiguration();
  sub_1C215210C(v6, v8);
  v13 = static ASManagedConfiguration.loadFromDisk(plistURL:)(v8);
  sub_1C20EB498(v8, &qword_1EBF251D0, &qword_1C2176940);
  *&v1[OBJC_IVAR____TtC26AuthenticationServicesCore39ASPasskeyConfigurationSubscriberAdapter_currentConfiguration] = v13;
  v14 = type metadata accessor for ASPasskeyConfigurationSubscriberAdapter();
  v17.receiver = v1;
  v17.super_class = v14;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_1C21502C8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  swift_beginAccess();
  v12 = *(a4 + 16);
  v13 = *(a4 + 24);
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_1C20B22B8(a1, a2);
  sub_1C20B23C8(v12, v13);
  swift_beginAccess();
  v14 = *(a5 + 16);
  *(a5 + 16) = a3;
  v15 = a3;

  return [a6 complete];
}

void sub_1C2150430(void *a1, uint64_t a2)
{
  v5 = sub_1C2170024();
  v71 = *(v5 - 8);
  v6 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v70 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDD4A730 != -1)
  {
    swift_once();
  }

  v8 = sub_1C21705A4();
  v9 = __swift_project_value_buffer(v8, qword_1EDD4CB20);
  v10 = a1;
  v73 = v9;
  v11 = sub_1C2170584();
  v12 = sub_1C2170C74();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    *(v13 + 4) = v10;
    *v14 = v10;
    *(v13 + 12) = 2048;
    *(v13 + 14) = a2;
    v15 = v10;
    _os_log_impl(&dword_1C20AD000, v11, v12, "Removing declaration: %@, scope: %ld", v13, 0x16u);
    sub_1C20EB498(v14, &qword_1EBF23700, &qword_1C2176D80);
    MEMORY[0x1C6915360](v14, -1, -1);
    MEMORY[0x1C6915360](v13, -1, -1);
  }

  sub_1C20DB8B8(0, &qword_1EBF24B70, 0x1E69C6DC8);
  if ([swift_getObjCClassFromMetadata() respondsToSelector_])
  {
    v68 = v5;
    v69 = v2;
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    v17 = (v16 + 16);
    v18 = [objc_allocWithZone(MEMORY[0x1E69C6D88]) init];
    v19 = objc_opt_self();
    v20 = swift_allocObject();
    *(v20 + 16) = v16;
    *(v20 + 24) = v18;
    v79 = sub_1C2150F3C;
    v80 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1C214FB48;
    v78 = &block_descriptor_2;
    v21 = _Block_copy(&aBlock);

    v22 = v18;

    [v19 unassignAssets:v10 scope:a2 completionHandler:v21];
    _Block_release(v21);
    [v22 waitForCompletion];
    swift_beginAccess();
    if (*(v16 + 16))
    {

      v23 = sub_1C2170584();
      v24 = sub_1C2170C54();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        aBlock = v26;
        *v25 = 136315138;
        v27 = *v17;
        if (*v17)
        {
          v28 = *v17;
          swift_getErrorValue();
          v73 = v74;
          v29 = v27;
          v30 = sub_1C21713D4();
          v32 = v31;
        }

        else
        {
          v32 = 0xE500000000000000;
          v30 = 0x3E6C696E3CLL;
        }

        v53 = sub_1C20D7F2C(v30, v32, &aBlock);

        *(v25 + 4) = v53;
        _os_log_impl(&dword_1C20AD000, v23, v24, "Unable to remove attestation certification from keychain: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        MEMORY[0x1C6915360](v26, -1, -1);
        MEMORY[0x1C6915360](v25, -1, -1);
      }
    }

    else
    {
      v67[1] = v16;
      v36 = *&v72[OBJC_IVAR____TtC26AuthenticationServicesCore39ASPasskeyConfigurationSubscriberAdapter_currentConfiguration];
      if (v36)
      {
        v72 = v22;
        v37 = v36;
        v38 = [v10 key];
        v39 = sub_1C2170914();
        v41 = v40;

        swift_beginAccess();
        sub_1C214EF34(v39, v41, &aBlock);
        v42 = aBlock;
        v43 = v76;
        swift_endAccess();
        sub_1C214F130(v42, v43);

        v44 = sub_1C216FEC4();
        v45 = *(v44 + 48);
        v46 = *(v44 + 52);
        swift_allocObject();
        sub_1C216FEB4();
        aBlock = v37;
        type metadata accessor for ASManagedConfiguration();
        sub_1C2150FB0();
        v47 = v69;
        v48 = sub_1C216FEA4();
        if (v47)
        {

          v50 = v72;
          v60 = v47;
          v61 = sub_1C2170584();
          v62 = sub_1C2170C54();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            *v63 = 138412290;
            v65 = v47;
            v66 = _swift_stdlib_bridgeErrorToNSError();
            *(v63 + 4) = v66;
            *v64 = v66;
            _os_log_impl(&dword_1C20AD000, v61, v62, "Could not save managed settings: %@", v63, 0xCu);
            sub_1C20EB498(v64, &qword_1EBF23700, &qword_1C2176D80);
            MEMORY[0x1C6915360](v64, -1, -1);
            MEMORY[0x1C6915360](v63, -1, -1);
          }

          swift_willThrow();
        }

        else
        {
          v55 = v48;
          v56 = v49;

          v58 = v70;
          v57 = v71;
          v59 = v68;
          (*(v71 + 16))(v70, v37 + OBJC_IVAR____TtC26AuthenticationServicesCore22ASManagedConfiguration_plistURL, v68);
          sub_1C2170194();
          v50 = v72;
          (*(v57 + 8))(v58, v59);
          sub_1C20D3174(v55, v56);
        }

        goto LABEL_27;
      }

      v23 = sub_1C2170584();
      v51 = sub_1C2170C64();
      if (os_log_type_enabled(v23, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_1C20AD000, v23, v51, "Existing configuration is invalid", v52, 2u);
        MEMORY[0x1C6915360](v52, -1, -1);
      }
    }

    sub_1C2150F5C();
    swift_allocError();
    *v54 = 2;
    swift_willThrow();

    v37 = v22;
LABEL_27:

    return;
  }

  v33 = sub_1C2170584();
  v34 = sub_1C2170C64();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1C20AD000, v33, v34, "RemoteManagement is too old on this build. Please update.", v35, 2u);
    MEMORY[0x1C6915360](v35, -1, -1);
  }
}

id sub_1C2150D24(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = a1;
  v7 = a1;

  return [a3 complete];
}

id sub_1C2150ED4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASPasskeyConfigurationSubscriberAdapter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C2150F5C()
{
  result = qword_1EBF24B78;
  if (!qword_1EBF24B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24B78);
  }

  return result;
}

unint64_t sub_1C2150FB0()
{
  result = qword_1EBF24B80;
  if (!qword_1EBF24B80)
  {
    type metadata accessor for ASManagedConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24B80);
  }

  return result;
}

void sub_1C2151008(void *a1, uint64_t a2)
{
  v6 = sub_1C2170024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C20DB8B8(0, &qword_1EBF24B90, 0x1E69C6DB8);
  if (![swift_getObjCClassFromMetadata() respondsToSelector_])
  {
    if (qword_1EDD4A730 != -1)
    {
      swift_once();
    }

    v57 = sub_1C21705A4();
    __swift_project_value_buffer(v57, qword_1EDD4CB20);
    v58 = sub_1C2170584();
    v59 = sub_1C2170C64();
    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_23;
    }

    v60 = swift_slowAlloc();
    *v60 = 0;
    v61 = "RemoteManagement is too old on this build. Please update.";
    goto LABEL_22;
  }

  if (a2 != 1)
  {
    if (qword_1EDD4A730 != -1)
    {
      swift_once();
    }

    v63 = sub_1C21705A4();
    __swift_project_value_buffer(v63, qword_1EDD4CB20);
    v64 = sub_1C2170584();
    v65 = sub_1C2170C54();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_1C20AD000, v64, v65, "Attempted to use passkey attestation configuration for unexpected scope", v66, 2u);
      MEMORY[0x1C6915360](v66, -1, -1);
    }

    sub_1C2150F5C();
    swift_allocError();
    *v67 = 0;
    goto LABEL_29;
  }

  v11 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore39ASPasskeyConfigurationSubscriberAdapter_currentConfiguration);
  if (!v11)
  {
    if (qword_1EDD4A730 != -1)
    {
      swift_once();
    }

    v68 = sub_1C21705A4();
    __swift_project_value_buffer(v68, qword_1EDD4CB20);
    v58 = sub_1C2170584();
    v59 = sub_1C2170C64();
    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_23;
    }

    v60 = swift_slowAlloc();
    *v60 = 0;
    v61 = "Existing configuration is invalid";
LABEL_22:
    _os_log_impl(&dword_1C20AD000, v58, v59, v61, v60, 2u);
    MEMORY[0x1C6915360](v60, -1, -1);
LABEL_23:

    sub_1C2150F5C();
    swift_allocError();
    *v62 = 2;
LABEL_29:
    swift_willThrow();
    return;
  }

  v132 = v3;
  v130 = v7;
  v12 = qword_1EDD4A730;
  v13 = v11;
  if (v12 != -1)
  {
    v123 = v13;
    swift_once();
    v13 = v123;
  }

  v137 = v13;
  v14 = sub_1C21705A4();
  v15 = __swift_project_value_buffer(v14, qword_1EDD4CB20);
  v16 = a1;
  v135 = v15;
  v17 = sub_1C2170584();
  v18 = sub_1C2170C74();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412546;
    *(v19 + 4) = v16;
    *v20 = v16;
    *(v19 + 12) = 2048;
    *(v19 + 14) = 1;
    v21 = v16;
    _os_log_impl(&dword_1C20AD000, v17, v18, "Applying configuration: %@, scope: %ld", v19, 0x16u);
    sub_1C20EB498(v20, &qword_1EBF23700, &qword_1C2176D80);
    MEMORY[0x1C6915360](v20, -1, -1);
    MEMORY[0x1C6915360](v19, -1, -1);
  }

  v22 = objc_opt_self();
  v23 = sub_1C21708F4();
  v24 = [v22 newDeclarationKeyWithSubscriberIdentifier:v23 reference:v16];

  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_1C21769B0;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v131 = (v25 + 16);
  v136 = [objc_allocWithZone(MEMORY[0x1E69C6D88]) init];
  v26 = [v16 declaration];
  v144 = &unk_1F41B9160;
  v27 = swift_dynamicCastObjCProtocolConditional();
  v138 = v24;
  if (!v27)
  {
    goto LABEL_36;
  }

  v28 = v27;
  v133 = v26;
  v134 = v25;
  if (([v27 respondsToSelector_] & 1) == 0)
  {
    v26 = v133;
LABEL_36:

    v69 = sub_1C2170584();
    v70 = sub_1C2170C54();
    v71 = os_log_type_enabled(v69, v70);
    v72 = v137;
    if (v71)
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_1C20AD000, v69, v70, "Could not find expected declaration", v73, 2u);
      MEMORY[0x1C6915360](v73, -1, -1);
    }

    sub_1C2150F5C();
    swift_allocError();
    *v74 = 0;
    swift_willThrow();

    v75 = &v145;
    goto LABEL_39;
  }

  v26 = [v28 payloadAttestationIdentityAssetReference];
  if (([v28 respondsToSelector_] & 1) == 0)
  {

    goto LABEL_36;
  }

  v29 = [v28 payloadRelyingParties];
  v30 = sub_1C2170B64();

  v31 = [v16 assetWithIdentifier_];
  if (v31)
  {
    v128 = v30;
    v129 = v31;
    v32 = [v31 declarationIdentifier];
    v33 = v134;
    if (!v32)
    {
      sub_1C2170914();
      v32 = sub_1C21708F4();
    }

    v125 = v32;
    v127 = objc_opt_self();
    v126 = sub_1C21708F4();
    v34 = swift_allocObject();
    v35 = v139;
    v34[2] = v139;
    v34[3] = v33;
    v36 = v136;
    v34[4] = v136;
    aBlock[4] = sub_1C21520A0;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C20EF84C;
    aBlock[3] = &block_descriptor_19;
    v37 = _Block_copy(aBlock);

    v38 = v36;

    v39 = v16;
    v40 = v35;
    v41 = v125;
    v42 = v126;
    [v127 resolveKeychainAsset:v39 assetIdentifier:v125 accessGroup:v126 completionHandler:v37];
    _Block_release(v37);

    v136 = v38;
    [v38 waitForCompletion];
    swift_beginAccess();
    v43 = *(v40 + 24);
    if (v43 >> 60 == 15)
    {

      v44 = sub_1C2170584();
      v45 = sub_1C2170C54();

      v46 = os_log_type_enabled(v44, v45);
      v47 = v137;
      if (v46)
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v140 = v49;
        *v48 = 136315138;
        v50 = v131;
        swift_beginAccess();
        v51 = *v50;
        if (*v50)
        {
          v52 = *v50;
          swift_getErrorValue();
          v53 = v51;
          v54 = sub_1C21713D4();
          v56 = v55;
        }

        else
        {
          v56 = 0xE500000000000000;
          v54 = 0x3E6C696E3CLL;
        }

        v121 = sub_1C20D7F2C(v54, v56, &v140);

        *(v48 + 4) = v121;
        _os_log_impl(&dword_1C20AD000, v44, v45, "Could not resolve attestation certificate asset: %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v49);
        MEMORY[0x1C6915360](v49, -1, -1);
        MEMORY[0x1C6915360](v48, -1, -1);

        v47 = v137;
      }

      else
      {
      }

      sub_1C2150F5C();
      swift_allocError();
      *v122 = 1;
      swift_willThrow();

LABEL_58:

      v75 = &v143;
LABEL_39:

      return;
    }

    v82 = *(v40 + 16);
    v83 = v128;
    v84 = *(v128 + 16);
    sub_1C20D865C(v82, *(v40 + 24));
    v85 = v137;
    if (!v84)
    {

      v103 = sub_1C2170584();
      v104 = sub_1C2170C54();
      v105 = os_log_type_enabled(v103, v104);
      v106 = v138;
      if (v105)
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&dword_1C20AD000, v103, v104, "No relying parties specified", v107, 2u);
        MEMORY[0x1C6915360](v107, -1, -1);
      }

      sub_1C2150F5C();
      swift_allocError();
      *v108 = 0;
      swift_willThrow();
      sub_1C20B23C8(v82, v43);

      goto LABEL_58;
    }

    v86 = v82;
    v87 = v83;
    v88 = [v138 key];
    v89 = sub_1C2170914();
    v91 = v90;

    v131 = v86;
    v92 = sub_1C2170164();
    v142[0] = v89;
    v142[1] = v91;
    v142[2] = v92;
    v142[3] = v93;
    v142[4] = v87;
    v94 = OBJC_IVAR____TtC26AuthenticationServicesCore22ASManagedConfiguration_declarationKeyToPasskeyAttestationConfigurationKey;
    swift_beginAccess();

    sub_1C214F0B0(v142, aBlock);
    v95 = *&v85[v94];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = *&v85[v94];
    *&v85[v94] = 0x8000000000000000;
    sub_1C213C91C(v142, v89, v91, isUniquelyReferenced_nonNull_native);

    *&v85[v94] = aBlock[0];
    swift_endAccess();
    v97 = sub_1C216FEC4();
    v98 = *(v97 + 48);
    v99 = *(v97 + 52);
    swift_allocObject();
    sub_1C216FEB4();
    aBlock[0] = v85;
    type metadata accessor for ASManagedConfiguration();
    sub_1C2150FB0();
    v100 = v132;
    v101 = sub_1C216FEA4();
    if (v100)
    {

      v112 = v138;
      v113 = v100;
      v114 = sub_1C2170584();
      v115 = sub_1C2170C54();

      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        *v116 = 138412290;
        v118 = v100;
        v119 = _swift_stdlib_bridgeErrorToNSError();
        *(v116 + 4) = v119;
        *v117 = v119;
        _os_log_impl(&dword_1C20AD000, v114, v115, "Could not save managed settings: %@", v116, 0xCu);
        sub_1C20EB498(v117, &qword_1EBF23700, &qword_1C2176D80);
        v120 = v117;
        v112 = v138;
        MEMORY[0x1C6915360](v120, -1, -1);
        MEMORY[0x1C6915360](v116, -1, -1);
      }

      swift_willThrow();
      sub_1C20B23C8(v131, v43);
    }

    else
    {
      v109 = v101;
      v110 = v102;

      v111 = v130;
      (*(v130 + 16))(v10, &v85[OBJC_IVAR____TtC26AuthenticationServicesCore22ASManagedConfiguration_plistURL], v6);
      sub_1C2170194();
      (*(v111 + 8))(v10, v6);
      sub_1C20D3174(v109, v110);

      sub_1C20B23C8(v131, v43);
    }

    sub_1C21520AC(v142);
  }

  else
  {

    v76 = sub_1C2170584();
    v77 = sub_1C2170C54();
    v78 = os_log_type_enabled(v76, v77);
    v79 = v133;
    if (v78)
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_1C20AD000, v76, v77, "Could not find attestation certificate reference", v80, 2u);
      MEMORY[0x1C6915360](v80, -1, -1);
    }

    sub_1C2150F5C();
    swift_allocError();
    *v81 = 0;
    swift_willThrow();
  }
}

uint64_t sub_1C2152100(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1C215210C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2152190()
{
  result = qword_1EBF24BB0;
  if (!qword_1EBF24BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24BB0);
  }

  return result;
}

uint64_t static ASPasskeyConfigurationSubscriberApplicator.supportedConfigurationTypes()()
{
  v0 = sub_1C2119664(&unk_1F419DAF8);
  sub_1C21523F4(&unk_1F419DB18);
  return v0;
}

id ASPasskeyConfigurationSubscriberApplicator.__allocating_init(adapter:inPlaceUpdates:)(uint64_t a1, char a2)
{
  v3 = [objc_allocWithZone(v2) initWithAdapter:a1 inPlaceUpdates:a2 & 1];
  swift_unknownObjectRelease();
  return v3;
}

id ASPasskeyConfigurationSubscriberApplicator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASPasskeyConfigurationSubscriberApplicator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C215246C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void))
{
  if (qword_1EBF230C8 != -1)
  {
    swift_once();
  }

  v8 = sub_1C21705A4();
  __swift_project_value_buffer(v8, qword_1EBF364D0);

  v9 = sub_1C2170584();
  v10 = sub_1C2170C34();

  if (os_log_type_enabled(v9, v10))
  {
    v20 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    v13 = a1;
    v14 = sub_1C2163D08(0x3E6C696E3CLL, 0xE500000000000000, a1, a2);
    v16 = sub_1C20D7F2C(v14, v15, &v21);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1C20AD000, v9, v10, "Socket connected with protocol: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x1C6915360](v12, -1, -1);
    v17 = v11;
    a4 = v20;
    MEMORY[0x1C6915360](v17, -1, -1);
  }

  else
  {
    v13 = a1;
  }

  *(a3 + OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_isConnected) = 1;
  if (a4)
  {
    a4(v13, a2);
  }

  v18 = *(a3 + OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_webSocketTask);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1C2170CB4();
}

uint64_t sub_1C2152698(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if (qword_1EBF230C8 != -1)
    {
      swift_once();
    }

    v4 = sub_1C21705A4();
    __swift_project_value_buffer(v4, qword_1EBF364D0);
    v5 = v3;
    v6 = sub_1C2170584();
    v7 = sub_1C2170C54();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = sub_1C216FF84();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_1C20AD000, v6, v7, "Send error: %@", v8, 0xCu);
      sub_1C20EB498(v9, &qword_1EBF23700, &qword_1C2176D80);
      MEMORY[0x1C6915360](v9, -1, -1);
      MEMORY[0x1C6915360](v8, -1, -1);
    }

    v11 = a2 + OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v12 = *(v11 + 8);
      ObjectType = swift_getObjectType();
      (*(v12 + 24))(a2, v3, ObjectType, v12);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1C2152854(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF24D30, &qword_1C217FA80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v52 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  sub_1C20EB3E8(a1, v5, &unk_1EBF24D30, &qword_1C217FA80);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v21 = sub_1C2170CA4();
    v22 = *(v21 - 8);
    v23 = (*(v22 + 88))(v5, v21);
    if (v23 == *MEMORY[0x1E6969F28])
    {
      (*(v22 + 96))(v5, v21);
      v25 = *v5;
      v24 = *(v5 + 1);
      v26 = &v7[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v26 + 1);
        ObjectType = swift_getObjectType();
        (*(v27 + 8))(v7, v25, v24, ObjectType, v27);
        swift_unknownObjectRelease();
      }

      sub_1C20D3174(v25, v24);
    }

    else if (v23 == *MEMORY[0x1E6969F30])
    {
      (*(v22 + 96))(v5, v21);
      v30 = *v5;
      v29 = *(v5 + 1);
      v31 = &v7[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v32 = *(v31 + 1);
        v33 = swift_getObjectType();
        (*(v32 + 16))(v7, v30, v29, v33, v32);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      if (qword_1EBF230C8 != -1)
      {
        swift_once();
      }

      v45 = sub_1C21705A4();
      __swift_project_value_buffer(v45, qword_1EBF364D0);
      v46 = sub_1C2170584();
      v47 = sub_1C2170C64();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_1C20AD000, v46, v47, "Received response with unknown type", v48, 2u);
        MEMORY[0x1C6915360](v48, -1, -1);
      }

      (*(v22 + 8))(v5, v21);
    }

    goto LABEL_36;
  }

  v53 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23E98, &qword_1C2179238);
  sub_1C2153F0C();
  if (!swift_dynamicCast())
  {
    sub_1C2171314();
    __break(1u);
    return;
  }

  v8 = v52[1];
  if (qword_1EBF230C8 != -1)
  {
    swift_once();
  }

  v9 = sub_1C21705A4();
  __swift_project_value_buffer(v9, qword_1EBF364D0);
  v10 = v8;
  v11 = sub_1C2170584();
  v12 = sub_1C2170C54();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_1C20AD000, v11, v12, "Receive error: %@", v13, 0xCu);
    sub_1C20EB498(v14, &qword_1EBF23700, &qword_1C2176D80);
    MEMORY[0x1C6915360](v14, -1, -1);
    MEMORY[0x1C6915360](v13, -1, -1);
  }

  v16 = [v10 domain];
  v17 = sub_1C2170914();
  v19 = v18;

  if (v17 == sub_1C216FC54() && v19 == v20)
  {
  }

  else
  {
    v34 = sub_1C2171324();

    if ((v34 & 1) == 0)
    {
LABEL_24:
      v40 = &v7[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v41 = *(v40 + 1);
        v42 = swift_getObjectType();
        v43 = *(v41 + 24);
        v44 = v10;
        v43(v7, v44, v42, v41);
        swift_unknownObjectRelease();
      }

      v7[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_isConnected] = 0;
LABEL_36:
      if (v7[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_isConnected] == 1)
      {
        v51 = *&v7[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_webSocketTask];
        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_1C2170CB4();
      }

      else
      {
      }

      return;
    }
  }

  v35 = [v10 code];
  sub_1C216FC64();
  if (v35 != sub_1C2170654())
  {
    goto LABEL_24;
  }

  v36 = v7[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_isConnected];
  v37 = sub_1C2170584();
  if (v36)
  {
    v38 = sub_1C2170C54();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1C20AD000, v37, v38, "Socket unexpectedly disconnected", v39, 2u);
      MEMORY[0x1C6915360](v39, -1, -1);
    }

    goto LABEL_24;
  }

  v49 = sub_1C2170C34();
  if (os_log_type_enabled(v37, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_1C20AD000, v37, v49, "Ignoring disconnection after socket closed.", v50, 2u);
    MEMORY[0x1C6915360](v50, -1, -1);
  }
}

id sub_1C2152FA4()
{
  v1 = v0;
  if (qword_1EBF230C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C21705A4();
  __swift_project_value_buffer(v2, qword_1EBF364D0);
  v3 = sub_1C2170584();
  v4 = sub_1C2170C74();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C20AD000, v3, v4, "Asked to close socket", v5, 2u);
    MEMORY[0x1C6915360](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_isConnected) = 0;
  v6 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_webSocketTask);

  return [v6 cancelWithCloseCode:1000 reason:0];
}

uint64_t sub_1C2153380(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  v12 = a3;
  a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_1C2153474;

  return sub_1C2153B5C(v12);
}

uint64_t sub_1C2153474(uint64_t a1, void *a2)
{
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 24);
  v10 = *(*v2 + 16);
  v13 = *v2;

  (v6)[2](v6, a1, a2);
  _Block_release(v6);

  v11 = *(v13 + 8);

  return v11();
}

id sub_1C2153650()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASWebSocket();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C215372C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1C20DBD8C;

  return sub_1C2153380(v2, v3, v4, v5, v6);
}

void sub_1C21537F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EBF230C8 != -1)
  {
    swift_once();
  }

  v6 = sub_1C21705A4();
  __swift_project_value_buffer(v6, qword_1EBF364D0);
  v7 = sub_1C2170584();
  v8 = sub_1C2170C34();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C20AD000, v7, v8, "Opened socket", v9, 2u);
    MEMORY[0x1C6915360](v9, -1, -1);
  }

  v10 = v3 + OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_connectionCompletionHandler;
  v11 = *(v3 + OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_connectionCompletionHandler);
  if (v11)
  {
    v12 = *(v10 + 8);

    v11(a1, a2);

    sub_1C20EB758(v11);
  }
}

void sub_1C215393C(void *a1)
{
  v2 = v1;
  if (qword_1EBF230C8 != -1)
  {
    swift_once();
  }

  v4 = sub_1C21705A4();
  __swift_project_value_buffer(v4, qword_1EBF364D0);
  v5 = a1;
  v6 = sub_1C2170584();
  v7 = sub_1C2170C54();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    if (a1)
    {
      swift_getErrorValue();
      v10 = sub_1C21713D4();
      v12 = v11;
    }

    else
    {
      v12 = 0xE500000000000000;
      v10 = 0x3E6C696E3CLL;
    }

    v13 = sub_1C20D7F2C(v10, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1C20AD000, v6, v7, "Could not connect: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x1C6915360](v9, -1, -1);
    MEMORY[0x1C6915360](v8, -1, -1);
  }

  v14 = v2 + OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    v16 = a1;
    if (!a1)
    {
      sub_1C2153EB0();
      v16 = swift_allocError();
    }

    ObjectType = swift_getObjectType();
    v18 = *(v15 + 24);
    v19 = a1;
    v18(v2, v16, ObjectType, v15);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C2153B5C(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C2153B7C, 0, 0);
}

void sub_1C2153B7C()
{
  if (qword_1EBF230C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1C21705A4();
  __swift_project_value_buffer(v1, qword_1EBF364D0);
  v2 = sub_1C2170584();
  v3 = sub_1C2170C34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C20AD000, v2, v3, "Received server challenge", v4, 2u);
    MEMORY[0x1C6915360](v4, -1, -1);
  }

  v5 = v0[16];

  v6 = OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_testDelegate;
  swift_beginAccess();
  sub_1C20EB3E8(v5 + v6, (v0 + 2), &unk_1EBF236F0, &qword_1C2176D78);
  if (!v0[5])
  {
    sub_1C20EB498((v0 + 2), &unk_1EBF236F0, &qword_1C2176D78);
    goto LABEL_12;
  }

  v7 = v0[15];
  sub_1C2153E4C((v0 + 2), (v0 + 7));
  sub_1C20EB498((v0 + 2), &unk_1EBF236F0, &qword_1C2176D78);
  v8 = v0[10];
  v9 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v8);
  LOBYTE(v7) = (*(v9 + 16))(v7, v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  if ((v7 & 1) == 0)
  {
LABEL_12:
    v17 = 0;
    v18 = 1;
    goto LABEL_13;
  }

  v10 = sub_1C2170584();
  v11 = sub_1C2170C34();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1C20AD000, v10, v11, "Overriding trust for test server", v12, 2u);
    MEMORY[0x1C6915360](v12, -1, -1);
  }

  v13 = v0[15];

  v14 = [v13 protectionSpace];
  v15 = [v14 serverTrust];

  if (!v15)
  {
    __break(1u);
    return;
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E696AF30]) initWithTrust_];

  v17 = v16;
  v18 = 0;
LABEL_13:
  v19 = v0[1];

  v19(v18, v17);
}

uint64_t sub_1C2153E4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1C2153EB0()
{
  result = qword_1EBF24D28;
  if (!qword_1EBF24D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24D28);
  }

  return result;
}

unint64_t sub_1C2153F0C()
{
  result = qword_1EDD4AE90[0];
  if (!qword_1EDD4AE90[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDD4AE90);
  }

  return result;
}

unint64_t sub_1C2153F6C()
{
  result = qword_1EBF24D40;
  if (!qword_1EBF24D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24D40);
  }

  return result;
}

uint64_t sub_1C2153FC4(uint64_t a1, uint64_t a2)
{
  v48[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    goto LABEL_91;
  }

  if (!v2 || a1 == a2)
  {
LABEL_86:
    result = 1;
    goto LABEL_92;
  }

  v3 = 0;
  v43 = *(a1 + 16);
  v45 = a2 + 32;
  v46 = a1 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
    }

    v5 = (v46 + 40 * v3);
    v6 = *v5;
    v7 = v5[1];
    v9 = v5[2];
    v8 = v5[3];
    v10 = v5[4];
    v11 = (v45 + 40 * v3);
    v13 = v11[2];
    v12 = v11[3];
    v14 = v11[4];
    if (v6 != *v11 || v7 != v11[1])
    {
      v16 = v11[1];
      if ((sub_1C2171324() & 1) == 0)
      {
        goto LABEL_91;
      }
    }

    v17 = v8 >> 62;
    v18 = v12 >> 62;
    if (v8 >> 62 == 3)
    {
      if (v9)
      {
        v19 = 0;
      }

      else
      {
        v19 = v8 == 0xC000000000000000;
      }

      if (v19 && v12 >> 62 == 3 && !v13 && v12 == 0xC000000000000000)
      {

        sub_1C20D865C(0, 0xC000000000000000);

        v22 = 0;
        v23 = 0xC000000000000000;
        goto LABEL_53;
      }

LABEL_38:
      v24 = 0;
      if (v18 <= 1)
      {
        goto LABEL_36;
      }

      goto LABEL_39;
    }

    if (v17 > 1)
    {
      if (v17 != 2)
      {
        goto LABEL_38;
      }

      v26 = *(v9 + 16);
      v25 = *(v9 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_98;
      }

      if (v18 <= 1)
      {
        goto LABEL_36;
      }
    }

    else if (v17)
    {
      LODWORD(v24) = HIDWORD(v9) - v9;
      if (__OFSUB__(HIDWORD(v9), v9))
      {
        goto LABEL_97;
      }

      v24 = v24;
      if (v18 <= 1)
      {
LABEL_36:
        if (v18)
        {
          LODWORD(v28) = HIDWORD(v13) - v13;
          if (__OFSUB__(HIDWORD(v13), v13))
          {
            goto LABEL_95;
          }

          v28 = v28;
        }

        else
        {
          v28 = BYTE6(v12);
        }

        goto LABEL_45;
      }
    }

    else
    {
      v24 = BYTE6(v8);
      if (v18 <= 1)
      {
        goto LABEL_36;
      }
    }

LABEL_39:
    if (v18 != 2)
    {
      if (v24)
      {
        goto LABEL_91;
      }

      goto LABEL_52;
    }

    v30 = *(v13 + 16);
    v29 = *(v13 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_96;
    }

LABEL_45:
    if (v24 != v28)
    {
      goto LABEL_91;
    }

    if (v24 >= 1)
    {
      break;
    }

LABEL_52:

    sub_1C20D865C(v9, v8);

    v22 = v13;
    v23 = v12;
LABEL_53:
    sub_1C20D865C(v22, v23);

    if (!v10)
    {
      goto LABEL_84;
    }

LABEL_54:
    if (!v14 || (v31 = *(v10 + 16), v31 != *(v14 + 16)))
    {

      sub_1C20D3174(v13, v12);

      v40 = v9;
      goto LABEL_89;
    }

    if (!v31 || v10 == v14)
    {

      sub_1C20D3174(v13, v12);

      v4 = v9;
    }

    else
    {
      v44 = v9;
      v32 = 0;
      do
      {
        v33 = *(v10 + v32 + 32) == *(v14 + v32 + 32) && *(v10 + v32 + 40) == *(v14 + v32 + 40);
        if (!v33 && (sub_1C2171324() & 1) == 0)
        {
          goto LABEL_87;
        }

        v32 += 16;
        --v31;
      }

      while (v31);

      sub_1C20D3174(v13, v12);

      v4 = v44;
    }

    sub_1C20D3174(v4, v8);

LABEL_7:
    if (++v3 == v2)
    {
      goto LABEL_86;
    }
  }

  v44 = v9;
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v34 = v9;
      v35 = *(v9 + 16);
      v42 = *(v34 + 24);

      sub_1C20D865C(v34, v8);

      sub_1C20D865C(v13, v12);

      v36 = sub_1C216FDD4();
      if (v36)
      {
        v37 = sub_1C216FE04();
        if (__OFSUB__(v35, v37))
        {
          goto LABEL_101;
        }

        v36 += v35 - v37;
      }

      if (__OFSUB__(v42, v35))
      {
        goto LABEL_100;
      }

      goto LABEL_80;
    }

    memset(v48, 0, 14);

    sub_1C20D865C(v9, v8);

    sub_1C20D865C(v13, v12);

    sub_1C2121D58(v48, v13, v12, &v47);
    if (!v47)
    {
LABEL_87:

      sub_1C20D3174(v13, v12);

      v40 = v44;
LABEL_89:
      sub_1C20D3174(v40, v8);
      goto LABEL_90;
    }
  }

  else
  {
    if (!v17)
    {
      v48[0] = v9;
      LOWORD(v48[1]) = v8;
      BYTE2(v48[1]) = BYTE2(v8);
      BYTE3(v48[1]) = BYTE3(v8);
      BYTE4(v48[1]) = BYTE4(v8);
      BYTE5(v48[1]) = BYTE5(v8);

      sub_1C20D865C(v9, v8);

      sub_1C20D865C(v13, v12);

      sub_1C2121D58(v48, v13, v12, &v47);
      if (!v47)
      {
        goto LABEL_87;
      }

      goto LABEL_83;
    }

    if (v9 >> 32 < v9)
    {
      goto LABEL_99;
    }

    sub_1C20D865C(v9, v8);

    sub_1C20D865C(v13, v12);

    v36 = sub_1C216FDD4();
    if (v36)
    {
      v38 = sub_1C216FE04();
      if (__OFSUB__(v9, v38))
      {
        goto LABEL_102;
      }

      v36 += v9 - v38;
    }

LABEL_80:
    sub_1C216FDF4();
    sub_1C2121D58(v36, v13, v12, v48);
    v2 = v43;
    if ((v48[0] & 1) == 0)
    {
      goto LABEL_87;
    }
  }

LABEL_83:
  v9 = v44;
  if (v10)
  {
    goto LABEL_54;
  }

LABEL_84:

  sub_1C20D3174(v13, v12);

  if (!v14)
  {

    sub_1C20D3174(v9, v8);

    goto LABEL_7;
  }

  sub_1C20D3174(v9, v8);
LABEL_90:

LABEL_91:
  result = 0;
LABEL_92:
  v41 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C21546B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1C2171324() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1C2154748(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        v6 = 25444;
      }

      else
      {
        v6 = 1885434979;
      }

      if (*v3)
      {
        v7 = 0xE200000000000000;
      }

      else
      {
        v7 = 0xE400000000000000;
      }

      if (*v4)
      {
        v8 = 25444;
      }

      else
      {
        v8 = 1885434979;
      }

      if (*v4)
      {
        v9 = 0xE200000000000000;
      }

      else
      {
        v9 = 0xE400000000000000;
      }

      if (v6 == v8 && v7 == v9)
      {
      }

      else
      {
        v11 = sub_1C2171324();

        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1C2154848(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C21548A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v6 = *v3;
      if (*(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_1C2171324();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v4 += 6;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1C2154960(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2160FC8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C21549BC()
{
  v1 = v0;
  v2 = type metadata accessor for CableRequest.StateDeleteRequest(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CableRequest.AllocationRequest(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CableRequest.OneOf_Request(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v24 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  sub_1C2160F40(v1, &v24 - v18, type metadata accessor for CableRequest.OneOf_Request);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C2160F40(v1, v14, type metadata accessor for CableRequest.OneOf_Request);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C215E85C(v14, v5, type metadata accessor for CableRequest.StateDeleteRequest);
      v20 = *&v5[*(v2 + 20) + 8] >> 60 != 15;
      v21 = type metadata accessor for CableRequest.StateDeleteRequest;
      v22 = v5;
LABEL_9:
      sub_1C215E7FC(v22, v21);
      sub_1C215E7FC(v19, type metadata accessor for CableRequest.OneOf_Request);
      return v20;
    }

    sub_1C215E7FC(v14, type metadata accessor for CableRequest.OneOf_Request);
    __break(1u);
  }

  else
  {
    sub_1C2160F40(v1, v17, type metadata accessor for CableRequest.OneOf_Request);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C215E85C(v17, v9, type metadata accessor for CableRequest.AllocationRequest);
      v20 = *&v9[*(v6 + 20) + 8] >> 60 != 15 && v9[*(v6 + 24)] != 2;
      v21 = type metadata accessor for CableRequest.AllocationRequest;
      v22 = v9;
      goto LABEL_9;
    }
  }

  result = sub_1C215E7FC(v17, type metadata accessor for CableRequest.OneOf_Request);
  __break(1u);
  return result;
}

uint64_t sub_1C2154CE8()
{
  v2 = *v0;
  sub_1C2171434();
  sub_1C2170894();
  return sub_1C2171454();
}

uint64_t sub_1C2154D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2160EEC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C2154D98()
{
  v2 = *v0;
  sub_1C2171434();
  sub_1C2170894();
  return sub_1C2171454();
}

uint64_t sub_1C2154E08()
{
  v1 = v0;
  v2 = type metadata accessor for CableRelayConnectionRequest.StateAssisted(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CableRelayConnectionRequest.QRAssisted(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CableRelayConnectionRequest.OneOf_Message(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v24 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  sub_1C2160F40(v1, &v24 - v18, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C2160F40(v1, v14, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C215E85C(v14, v5, type metadata accessor for CableRelayConnectionRequest.StateAssisted);
      v20 = *&v5[*(v2 + 20) + 8] >> 60 != 15 && *&v5[*(v2 + 24) + 8] >> 60 != 15;
      v21 = type metadata accessor for CableRelayConnectionRequest.StateAssisted;
      v22 = v5;
LABEL_12:
      sub_1C215E7FC(v22, v21);
      sub_1C215E7FC(v19, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
      return v20;
    }

    sub_1C215E7FC(v14, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
    __break(1u);
  }

  else
  {
    sub_1C2160F40(v1, v17, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C215E85C(v17, v9, type metadata accessor for CableRelayConnectionRequest.QRAssisted);
      v20 = *&v9[*(v6 + 20) + 8] >> 60 != 15 && *&v9[*(v6 + 24) + 8] >> 60 != 15;
      v21 = type metadata accessor for CableRelayConnectionRequest.QRAssisted;
      v22 = v9;
      goto LABEL_12;
    }
  }

  result = sub_1C215E7FC(v17, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t sub_1C215515C()
{
  v0 = sub_1C2170574();
  __swift_allocate_value_buffer(v0, qword_1EBF364E8);
  __swift_project_value_buffer(v0, qword_1EBF364E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F78, &qword_1C2180BA8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F80, &unk_1C2180BB0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C217FB40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNSPECIFIED";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C2170544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SUCCESS";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "BAD_REQUEST";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "INTERNAL_ERROR";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "NOT_FOUND";
  *(v15 + 8) = 9;
  *(v15 + 16) = 2;
  v9();
  return sub_1C2170554();
}

uint64_t sub_1C2155410()
{
  v0 = sub_1C2170574();
  __swift_allocate_value_buffer(v0, qword_1EBF36500);
  __swift_project_value_buffer(v0, qword_1EBF36500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F78, &qword_1C2180BA8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F80, &unk_1C2180BB0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C21768D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "request_uuid";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C2170544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "allocation_request";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "state_delete_request";
  *(v11 + 8) = 20;
  *(v11 + 16) = 2;
  v9();
  return sub_1C2170554();
}

uint64_t sub_1C2155624()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23760, &qword_1C2176DC8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for CableRequest.OneOf_Request(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for CableRequest(0) + 24) + 8) >> 60 == 15)
  {
    return 0;
  }

  sub_1C20EB3E8(v0, v4, &qword_1EBF23760, &qword_1C2176DC8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1C20EB498(v4, &qword_1EBF23760, &qword_1C2176DC8);
  }

  else
  {
    sub_1C215E85C(v4, v9, type metadata accessor for CableRequest.OneOf_Request);
    v11 = sub_1C21549BC();
    sub_1C215E7FC(v9, type metadata accessor for CableRequest.OneOf_Request);
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1C21557EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C2170414();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C2155E78(v5, a1, a2, a3);
        break;
      case 2:
        sub_1C21558BC(v5, a1, a2, a3);
        break;
      case 1:
        v11 = *(type metadata accessor for CableRequest(0) + 24);
        sub_1C2170454();
        break;
    }
  }

  return result;
}

uint64_t sub_1C21558BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for CableRequest.AllocationRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23760, &qword_1C2176DC8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for CableRequest.OneOf_Request(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F90, &qword_1C2180BC0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C20EB3E8(a1, v14, &qword_1EBF23760, &qword_1C2176DC8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C20EB498(v14, &qword_1EBF23760, &qword_1C2176DC8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C215E85C(v14, v22, type metadata accessor for CableRequest.OneOf_Request);
    sub_1C215E85C(v22, v20, type metadata accessor for CableRequest.OneOf_Request);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C215E7FC(v20, type metadata accessor for CableRequest.OneOf_Request);
      v33 = v48;
    }

    else
    {
      sub_1C20EB498(v28, &qword_1EBF24F90, &qword_1C2180BC0);
      v35 = v44;
      sub_1C215E85C(v20, v44, type metadata accessor for CableRequest.AllocationRequest);
      sub_1C215E85C(v35, v28, type metadata accessor for CableRequest.AllocationRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_1C215D9D0(&qword_1EBF24F28, type metadata accessor for CableRequest.AllocationRequest);
  v37 = v47;
  sub_1C2170484();
  if (v37)
  {
    return sub_1C20EB498(v28, &qword_1EBF24F90, &qword_1C2180BC0);
  }

  sub_1C20EB3E8(v28, v36, &qword_1EBF24F90, &qword_1C2180BC0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C20EB498(v28, &qword_1EBF24F90, &qword_1C2180BC0);
    return sub_1C20EB498(v36, &qword_1EBF24F90, &qword_1C2180BC0);
  }

  else
  {
    v39 = v43;
    sub_1C215E85C(v36, v43, type metadata accessor for CableRequest.AllocationRequest);
    if (v32 != 1)
    {
      sub_1C2170424();
    }

    sub_1C20EB498(v28, &qword_1EBF24F90, &qword_1C2180BC0);
    v40 = v42;
    sub_1C20EB498(v42, &qword_1EBF23760, &qword_1C2176DC8);
    sub_1C215E85C(v39, v40, type metadata accessor for CableRequest.AllocationRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C2155E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for CableRequest.StateDeleteRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23760, &qword_1C2176DC8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for CableRequest.OneOf_Request(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F98, &qword_1C2180BC8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C20EB3E8(a1, v14, &qword_1EBF23760, &qword_1C2176DC8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C20EB498(v14, &qword_1EBF23760, &qword_1C2176DC8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C215E85C(v14, v22, type metadata accessor for CableRequest.OneOf_Request);
    sub_1C215E85C(v22, v20, type metadata accessor for CableRequest.OneOf_Request);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C20EB498(v28, &qword_1EBF24F98, &qword_1C2180BC8);
      v35 = v44;
      sub_1C215E85C(v20, v44, type metadata accessor for CableRequest.StateDeleteRequest);
      sub_1C215E85C(v35, v28, type metadata accessor for CableRequest.StateDeleteRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_1C215E7FC(v20, type metadata accessor for CableRequest.OneOf_Request);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_1C215D9D0(&qword_1EBF24F08, type metadata accessor for CableRequest.StateDeleteRequest);
  v37 = v47;
  sub_1C2170484();
  if (v37)
  {
    return sub_1C20EB498(v28, &qword_1EBF24F98, &qword_1C2180BC8);
  }

  sub_1C20EB3E8(v28, v36, &qword_1EBF24F98, &qword_1C2180BC8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C20EB498(v28, &qword_1EBF24F98, &qword_1C2180BC8);
    return sub_1C20EB498(v36, &qword_1EBF24F98, &qword_1C2180BC8);
  }

  else
  {
    v39 = v43;
    sub_1C215E85C(v36, v43, type metadata accessor for CableRequest.StateDeleteRequest);
    if (v32 != 1)
    {
      sub_1C2170424();
    }

    sub_1C20EB498(v28, &qword_1EBF24F98, &qword_1C2180BC8);
    v40 = v42;
    sub_1C20EB498(v42, &qword_1EBF23760, &qword_1C2176DC8);
    sub_1C215E85C(v39, v40, type metadata accessor for CableRequest.StateDeleteRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C2156434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23760, &qword_1C2176DC8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  result = sub_1C2158C18(v3, a1, a2, a3, type metadata accessor for CableRequest);
  if (!v4)
  {
    sub_1C20EB3E8(v3, v11, &qword_1EBF23760, &qword_1C2176DC8);
    v13 = type metadata accessor for CableRequest.OneOf_Request(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1C2156834(v3, a1, a2, a3);
      }

      else
      {
        sub_1C21565FC(v3, a1, a2, a3);
      }

      sub_1C215E7FC(v11, type metadata accessor for CableRequest.OneOf_Request);
    }

    v14 = v3 + *(type metadata accessor for CableRequest(0) + 20);
    return sub_1C2170394();
  }

  return result;
}

uint64_t sub_1C21565FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23760, &qword_1C2176DC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for CableRequest.AllocationRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C20EB3E8(a1, v8, &qword_1EBF23760, &qword_1C2176DC8);
  v13 = type metadata accessor for CableRequest.OneOf_Request(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C20EB498(v8, &qword_1EBF23760, &qword_1C2176DC8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C215E85C(v8, v12, type metadata accessor for CableRequest.AllocationRequest);
    sub_1C215D9D0(&qword_1EBF24F28, type metadata accessor for CableRequest.AllocationRequest);
    sub_1C2170534();
    return sub_1C215E7FC(v12, type metadata accessor for CableRequest.AllocationRequest);
  }

  result = sub_1C215E7FC(v8, type metadata accessor for CableRequest.OneOf_Request);
  __break(1u);
  return result;
}

uint64_t sub_1C2156834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23760, &qword_1C2176DC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for CableRequest.StateDeleteRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C20EB3E8(a1, v8, &qword_1EBF23760, &qword_1C2176DC8);
  v13 = type metadata accessor for CableRequest.OneOf_Request(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C20EB498(v8, &qword_1EBF23760, &qword_1C2176DC8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C215E85C(v8, v12, type metadata accessor for CableRequest.StateDeleteRequest);
    sub_1C215D9D0(&qword_1EBF24F08, type metadata accessor for CableRequest.StateDeleteRequest);
    sub_1C2170534();
    return sub_1C215E7FC(v12, type metadata accessor for CableRequest.StateDeleteRequest);
  }

  result = sub_1C215E7FC(v8, type metadata accessor for CableRequest.OneOf_Request);
  __break(1u);
  return result;
}

double sub_1C2156A6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CableRequest.OneOf_Request(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  sub_1C21703A4();
  result = 0.0;
  *(a2 + *(a1 + 24)) = xmmword_1C21769B0;
  return result;
}

uint64_t (*sub_1C2156B10(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C2156B64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C215D9D0(&qword_1EBF24F88, type metadata accessor for CableRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C2156C04(uint64_t a1)
{
  v2 = sub_1C215D9D0(&qword_1EBF23768, type metadata accessor for CableRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C2156C70()
{
  sub_1C215D9D0(&qword_1EBF23768, type metadata accessor for CableRequest);

  return sub_1C21704D4();
}

uint64_t sub_1C2156CF0()
{
  v0 = sub_1C2170574();
  __swift_allocate_value_buffer(v0, qword_1EBF36518);
  __swift_project_value_buffer(v0, qword_1EBF36518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F78, &qword_1C2180BA8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F80, &unk_1C2180BB0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C21768C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tunnel_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C2170544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "use_state_assisted";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_1C2170554();
}

uint64_t sub_1C2156EB8()
{
  while (1)
  {
    result = sub_1C2170414();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for CableRequest.AllocationRequest(0) + 20);
      sub_1C2170454();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for CableRequest.AllocationRequest(0) + 24);
      sub_1C2170434();
    }
  }

  return result;
}

uint64_t sub_1C2156F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C2157540(v3, a1, a2, a3, type metadata accessor for CableRequest.AllocationRequest);
  if (!v4)
  {
    sub_1C2156FF8(v3);
    return sub_1C2170394();
  }

  return result;
}

uint64_t sub_1C2156FF8(uint64_t a1)
{
  result = type metadata accessor for CableRequest.AllocationRequest(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return sub_1C21704E4();
  }

  return result;
}

double sub_1C2157070@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C21703A4();
  result = 0.0;
  v5 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = xmmword_1C21769B0;
  *(a2 + v5) = 2;
  return result;
}

uint64_t sub_1C2157150(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C215D9D0(&qword_1EBF24FB8, type metadata accessor for CableRequest.AllocationRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C21571F0(uint64_t a1)
{
  v2 = sub_1C215D9D0(&qword_1EBF24F28, type metadata accessor for CableRequest.AllocationRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C215725C()
{
  sub_1C215D9D0(&qword_1EBF24F28, type metadata accessor for CableRequest.AllocationRequest);

  return sub_1C21704D4();
}

uint64_t sub_1C21572DC()
{
  v0 = sub_1C2170574();
  __swift_allocate_value_buffer(v0, qword_1EBF36530);
  __swift_project_value_buffer(v0, qword_1EBF36530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F78, &qword_1C2180BA8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F80, &unk_1C2180BB0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C21768E0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "contact_id";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C2170544();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C2170554();
}

uint64_t sub_1C2157448()
{
  while (1)
  {
    result = sub_1C2170414();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = *(type metadata accessor for CableRequest.StateDeleteRequest(0) + 20);
      sub_1C2170454();
    }
  }

  return result;
}

uint64_t sub_1C21574D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C2157540(v3, a1, a2, a3, type metadata accessor for CableRequest.StateDeleteRequest);
  if (!v4)
  {
    return sub_1C2170394();
  }

  return result;
}

uint64_t sub_1C2157540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = a1 + *(result + 20);
  v8 = *(v7 + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    sub_1C20D865C(*v7, *(v7 + 8));
    sub_1C2170504();
    return sub_1C20B23C8(v9, v8);
  }

  return result;
}

double sub_1C21575E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C21703A4();
  result = 0.0;
  *(a2 + *(a1 + 20)) = xmmword_1C21769B0;
  return result;
}

uint64_t sub_1C2157684(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C215D9D0(&qword_1EBF24FC0, type metadata accessor for CableRequest.StateDeleteRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C2157724(uint64_t a1)
{
  v2 = sub_1C215D9D0(&qword_1EBF24F08, type metadata accessor for CableRequest.StateDeleteRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C2157790()
{
  sub_1C215D9D0(&qword_1EBF24F08, type metadata accessor for CableRequest.StateDeleteRequest);

  return sub_1C21704D4();
}

uint64_t sub_1C2157810()
{
  v0 = sub_1C2170574();
  __swift_allocate_value_buffer(v0, qword_1EBF36548);
  __swift_project_value_buffer(v0, qword_1EBF36548);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F78, &qword_1C2180BA8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F80, &unk_1C2180BB0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C217FB50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "request_uuid";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C2170544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "status";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "allocation_response";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "state_delete_response";
  *(v15 + 1) = 21;
  v15[16] = 2;
  v9();
  return sub_1C2170554();
}

uint64_t sub_1C2157A60()
{
  v1 = type metadata accessor for CableResponse.AllocationResponse(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24FD0, &unk_1C2180BE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for CableResponse.OneOf_Response(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  v17 = type metadata accessor for CableResponse(0);
  if (*(v0 + *(v17 + 24) + 8) >> 60 == 15 || *(v0 + *(v17 + 28)) == 5)
  {
    return 0;
  }

  sub_1C20EB3E8(v0, v8, &qword_1EBF24FD0, &unk_1C2180BE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1C20EB498(v8, &qword_1EBF24FD0, &unk_1C2180BE0);
  }

  else
  {
    sub_1C215E85C(v8, v16, type metadata accessor for CableResponse.OneOf_Response);
    sub_1C215E85C(v16, v14, type metadata accessor for CableResponse.OneOf_Response);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C215E7FC(v14, type metadata accessor for CableResponse.OneOf_Response);
    }

    else
    {
      sub_1C215E85C(v14, v4, type metadata accessor for CableResponse.AllocationResponse);
      if (*&v4[*(v1 + 20) + 8] >> 60 == 15)
      {
        sub_1C215E7FC(v4, type metadata accessor for CableResponse.AllocationResponse);
        return 0;
      }

      v19 = v4[*(v1 + 24) + 4];
      sub_1C215E7FC(v4, type metadata accessor for CableResponse.AllocationResponse);
      if (v19)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_1C2157D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C2170414();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1C2157EC0(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        sub_1C215847C(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      v11 = *(type metadata accessor for CableResponse(0) + 24);
      sub_1C2170454();
    }

    else if (result == 2)
    {
      sub_1C2157E4C();
    }
  }

  return result;
}

uint64_t sub_1C2157E4C()
{
  v0 = *(type metadata accessor for CableResponse(0) + 28);
  sub_1C2160EEC();
  return sub_1C2170444();
}

uint64_t sub_1C2157EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for CableResponse.AllocationResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24FD0, &unk_1C2180BE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for CableResponse.OneOf_Response(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23770, &qword_1C2176DD0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C20EB3E8(a1, v14, &qword_1EBF24FD0, &unk_1C2180BE0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C20EB498(v14, &qword_1EBF24FD0, &unk_1C2180BE0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C215E85C(v14, v22, type metadata accessor for CableResponse.OneOf_Response);
    sub_1C215E85C(v22, v20, type metadata accessor for CableResponse.OneOf_Response);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C215E7FC(v20, type metadata accessor for CableResponse.OneOf_Response);
      v33 = v48;
    }

    else
    {
      sub_1C20EB498(v28, &qword_1EBF23770, &qword_1C2176DD0);
      v35 = v44;
      sub_1C215E85C(v20, v44, type metadata accessor for CableResponse.AllocationResponse);
      sub_1C215E85C(v35, v28, type metadata accessor for CableResponse.AllocationResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_1C215D9D0(&qword_1EBF24ED0, type metadata accessor for CableResponse.AllocationResponse);
  v37 = v47;
  sub_1C2170484();
  if (v37)
  {
    return sub_1C20EB498(v28, &qword_1EBF23770, &qword_1C2176DD0);
  }

  sub_1C20EB3E8(v28, v36, &qword_1EBF23770, &qword_1C2176DD0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C20EB498(v28, &qword_1EBF23770, &qword_1C2176DD0);
    return sub_1C20EB498(v36, &qword_1EBF23770, &qword_1C2176DD0);
  }

  else
  {
    v39 = v43;
    sub_1C215E85C(v36, v43, type metadata accessor for CableResponse.AllocationResponse);
    if (v32 != 1)
    {
      sub_1C2170424();
    }

    sub_1C20EB498(v28, &qword_1EBF23770, &qword_1C2176DD0);
    v40 = v42;
    sub_1C20EB498(v42, &qword_1EBF24FD0, &unk_1C2180BE0);
    sub_1C215E85C(v39, v40, type metadata accessor for CableResponse.AllocationResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C215847C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for CableResponse.StateDeleteResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24FD0, &unk_1C2180BE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for CableResponse.OneOf_Response(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24FE0, &qword_1C2180BF0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C20EB3E8(a1, v14, &qword_1EBF24FD0, &unk_1C2180BE0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C20EB498(v14, &qword_1EBF24FD0, &unk_1C2180BE0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C215E85C(v14, v22, type metadata accessor for CableResponse.OneOf_Response);
    sub_1C215E85C(v22, v20, type metadata accessor for CableResponse.OneOf_Response);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C20EB498(v28, &qword_1EBF24FE0, &qword_1C2180BF0);
      v35 = v44;
      sub_1C215E85C(v20, v44, type metadata accessor for CableResponse.StateDeleteResponse);
      sub_1C215E85C(v35, v28, type metadata accessor for CableResponse.StateDeleteResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_1C215E7FC(v20, type metadata accessor for CableResponse.OneOf_Response);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_1C215D9D0(&qword_1EBF24EB0, type metadata accessor for CableResponse.StateDeleteResponse);
  v37 = v47;
  sub_1C2170484();
  if (v37)
  {
    return sub_1C20EB498(v28, &qword_1EBF24FE0, &qword_1C2180BF0);
  }

  sub_1C20EB3E8(v28, v36, &qword_1EBF24FE0, &qword_1C2180BF0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C20EB498(v28, &qword_1EBF24FE0, &qword_1C2180BF0);
    return sub_1C20EB498(v36, &qword_1EBF24FE0, &qword_1C2180BF0);
  }

  else
  {
    v39 = v43;
    sub_1C215E85C(v36, v43, type metadata accessor for CableResponse.StateDeleteResponse);
    if (v32 != 1)
    {
      sub_1C2170424();
    }

    sub_1C20EB498(v28, &qword_1EBF24FE0, &qword_1C2180BF0);
    v40 = v42;
    sub_1C20EB498(v42, &qword_1EBF24FD0, &unk_1C2180BE0);
    sub_1C215E85C(v39, v40, type metadata accessor for CableResponse.StateDeleteResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C2158A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24FD0, &unk_1C2180BE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  result = sub_1C2158C18(v3, a1, a2, a3, type metadata accessor for CableResponse);
  if (!v4)
  {
    sub_1C2158CCC(v3);
    sub_1C20EB3E8(v3, v11, &qword_1EBF24FD0, &unk_1C2180BE0);
    v13 = type metadata accessor for CableResponse.OneOf_Response(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1C2158F90(v3, a1, a2, a3);
      }

      else
      {
        sub_1C2158D58(v3, a1, a2, a3);
      }

      sub_1C215E7FC(v11, type metadata accessor for CableResponse.OneOf_Response);
    }

    v14 = v3 + *(type metadata accessor for CableResponse(0) + 20);
    return sub_1C2170394();
  }

  return result;
}

uint64_t sub_1C2158C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = a1 + *(result + 24);
  v8 = *(v7 + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    sub_1C20D865C(*v7, *(v7 + 8));
    sub_1C2170504();
    return sub_1C20B23C8(v9, v8);
  }

  return result;
}

uint64_t sub_1C2158CCC(uint64_t a1)
{
  result = type metadata accessor for CableResponse(0);
  if (*(a1 + *(result + 28)) != 5)
  {
    v3 = *(a1 + *(result + 28));
    sub_1C2160EEC();
    return sub_1C21704F4();
  }

  return result;
}

uint64_t sub_1C2158D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24FD0, &unk_1C2180BE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for CableResponse.AllocationResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C20EB3E8(a1, v8, &qword_1EBF24FD0, &unk_1C2180BE0);
  v13 = type metadata accessor for CableResponse.OneOf_Response(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C20EB498(v8, &qword_1EBF24FD0, &unk_1C2180BE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C215E85C(v8, v12, type metadata accessor for CableResponse.AllocationResponse);
    sub_1C215D9D0(&qword_1EBF24ED0, type metadata accessor for CableResponse.AllocationResponse);
    sub_1C2170534();
    return sub_1C215E7FC(v12, type metadata accessor for CableResponse.AllocationResponse);
  }

  result = sub_1C215E7FC(v8, type metadata accessor for CableResponse.OneOf_Response);
  __break(1u);
  return result;
}

uint64_t sub_1C2158F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24FD0, &unk_1C2180BE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for CableResponse.StateDeleteResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C20EB3E8(a1, v8, &qword_1EBF24FD0, &unk_1C2180BE0);
  v13 = type metadata accessor for CableResponse.OneOf_Response(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C20EB498(v8, &qword_1EBF24FD0, &unk_1C2180BE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C215E85C(v8, v12, type metadata accessor for CableResponse.StateDeleteResponse);
    sub_1C215D9D0(&qword_1EBF24EB0, type metadata accessor for CableResponse.StateDeleteResponse);
    sub_1C2170534();
    return sub_1C215E7FC(v12, type metadata accessor for CableResponse.StateDeleteResponse);
  }

  result = sub_1C215E7FC(v8, type metadata accessor for CableResponse.OneOf_Response);
  __break(1u);
  return result;
}

double sub_1C21591C8@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CableResponse.OneOf_Response(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + a1[5];
  sub_1C21703A4();
  result = 0.0;
  v7 = a1[7];
  *(a2 + a1[6]) = xmmword_1C21769B0;
  *(a2 + v7) = 5;
  return result;
}

uint64_t sub_1C2159278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C21703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C21592EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C21703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C2159390(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C215D9D0(&qword_1EBF24FC8, type metadata accessor for CableResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C2159430(uint64_t a1)
{
  v2 = sub_1C215D9D0(&qword_1EBF23778, type metadata accessor for CableResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C215949C()
{
  sub_1C215D9D0(&qword_1EBF23778, type metadata accessor for CableResponse);

  return sub_1C21704D4();
}

uint64_t sub_1C215951C()
{
  v0 = sub_1C2170574();
  __swift_allocate_value_buffer(v0, qword_1EBF36560);
  __swift_project_value_buffer(v0, qword_1EBF36560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F78, &qword_1C2180BA8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F80, &unk_1C2180BB0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C217FB40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RESPONSE_STATUS_UNSPECIFIED";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C2170544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SUCCESS";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "BAD_REQUEST";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "INTERNAL_ERROR";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "RATE_LIMITED";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return sub_1C2170554();
}

uint64_t sub_1C21597D0()
{
  v0 = sub_1C2170574();
  __swift_allocate_value_buffer(v0, qword_1EBF36578);
  __swift_project_value_buffer(v0, qword_1EBF36578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F78, &qword_1C2180BA8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F80, &unk_1C2180BB0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C21768D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "routing_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C2170544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encoded_domain";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "contact_id";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1C2170554();
}

uint64_t sub_1C21599E4()
{
  while (1)
  {
    result = sub_1C2170414();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v5 = *(type metadata accessor for CableResponse.AllocationResponse(0) + 28);
LABEL_10:
        v0 = 0;
        sub_1C2170454();
        break;
      case 2:
        v1 = *(type metadata accessor for CableResponse.AllocationResponse(0) + 24);
        sub_1C2170474();
        break;
      case 1:
        v4 = *(type metadata accessor for CableResponse.AllocationResponse(0) + 20);
        goto LABEL_10;
    }
  }
}

uint64_t sub_1C2159ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C2157540(v3, a1, a2, a3, type metadata accessor for CableResponse.AllocationResponse);
  if (!v4)
  {
    sub_1C2159B70(v3);
    sub_1C215B850(v3, a1, a2, a3, type metadata accessor for CableResponse.AllocationResponse);
    return sub_1C2170394();
  }

  return result;
}

uint64_t sub_1C2159B70(uint64_t a1)
{
  result = type metadata accessor for CableResponse.AllocationResponse(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C2170524();
  }

  return result;
}

double sub_1C2159BE8@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C21703A4();
  result = 0.0;
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_1C21769B0;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a2 + a1[7]) = xmmword_1C21769B0;
  return result;
}

uint64_t sub_1C2159C54(uint64_t a1)
{
  if (*(v1 + *(a1 + 20) + 8) >> 60 == 15)
  {
    return 0;
  }

  else
  {
    return (*(v1 + *(a1 + 24) + 4) ^ 1) & 1;
  }
}

uint64_t sub_1C2159CBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C215D9D0(&qword_1EBF24FF8, type metadata accessor for CableResponse.AllocationResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C2159D5C(uint64_t a1)
{
  v2 = sub_1C215D9D0(&qword_1EBF24ED0, type metadata accessor for CableResponse.AllocationResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C2159DC8()
{
  sub_1C215D9D0(&qword_1EBF24ED0, type metadata accessor for CableResponse.AllocationResponse);

  return sub_1C21704D4();
}

uint64_t sub_1C2159E48()
{
  v0 = sub_1C2170574();
  __swift_allocate_value_buffer(v0, qword_1EBF36590);
  __swift_project_value_buffer(v0, qword_1EBF36590);
  return sub_1C2170564();
}

uint64_t sub_1C2159E94()
{
  do
  {
    result = sub_1C2170414();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_1C2159F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C215D9D0(&qword_1EBF25000, type metadata accessor for CableResponse.StateDeleteResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C2159FE4(uint64_t a1)
{
  v2 = sub_1C215D9D0(&qword_1EBF24EB0, type metadata accessor for CableResponse.StateDeleteResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C215A050()
{
  sub_1C215D9D0(&qword_1EBF24EB0, type metadata accessor for CableResponse.StateDeleteResponse);

  return sub_1C21704D4();
}

uint64_t sub_1C215A0CC()
{
  sub_1C21703B4();
  sub_1C215D9D0(&qword_1EBF24FA8, MEMORY[0x1E69AAC08]);
  return sub_1C21708E4() & 1;
}

uint64_t sub_1C215A154()
{
  v0 = sub_1C2170574();
  __swift_allocate_value_buffer(v0, qword_1EBF365A8);
  __swift_project_value_buffer(v0, qword_1EBF365A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F78, &qword_1C2180BA8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F80, &unk_1C2180BB0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C217FB50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "qr_assisted";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C2170544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "state_assisted";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "relay_ips";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "request_uuid";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1C2170554();
}

uint64_t sub_1C215A39C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25010, &qword_1C2180C08);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for CableRelayConnectionRequest.OneOf_Message(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for CableRelayConnectionRequest(0) + 28) + 8) >> 60 == 15)
  {
    return 0;
  }

  sub_1C20EB3E8(v0, v4, &qword_1EBF25010, &qword_1C2180C08);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1C20EB498(v4, &qword_1EBF25010, &qword_1C2180C08);
  }

  else
  {
    sub_1C215E85C(v4, v9, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
    v11 = sub_1C2154E08();
    sub_1C215E7FC(v9, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1C215A564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C2170414();
    if (v4 || (v11 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        v9 = *(type metadata accessor for CableRelayConnectionRequest(0) + 20);
        sub_1C2170464();
      }

      else if (result == 4)
      {
        v12 = *(type metadata accessor for CableRelayConnectionRequest(0) + 28);
        sub_1C2170454();
      }
    }

    else if (result == 1)
    {
      sub_1C215A670(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_1C215AC2C(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C215A670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for CableRelayConnectionRequest.QRAssisted(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25010, &qword_1C2180C08);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for CableRelayConnectionRequest.OneOf_Message(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25018, &qword_1C2180C10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C20EB3E8(a1, v14, &qword_1EBF25010, &qword_1C2180C08);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C20EB498(v14, &qword_1EBF25010, &qword_1C2180C08);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C215E85C(v14, v22, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
    sub_1C215E85C(v22, v20, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C215E7FC(v20, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
      v33 = v48;
    }

    else
    {
      sub_1C20EB498(v28, &qword_1EBF25018, &qword_1C2180C10);
      v35 = v44;
      sub_1C215E85C(v20, v44, type metadata accessor for CableRelayConnectionRequest.QRAssisted);
      sub_1C215E85C(v35, v28, type metadata accessor for CableRelayConnectionRequest.QRAssisted);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_1C215D9D0(&qword_1EBF24E70, type metadata accessor for CableRelayConnectionRequest.QRAssisted);
  v37 = v47;
  sub_1C2170484();
  if (v37)
  {
    return sub_1C20EB498(v28, &qword_1EBF25018, &qword_1C2180C10);
  }

  sub_1C20EB3E8(v28, v36, &qword_1EBF25018, &qword_1C2180C10);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C20EB498(v28, &qword_1EBF25018, &qword_1C2180C10);
    return sub_1C20EB498(v36, &qword_1EBF25018, &qword_1C2180C10);
  }

  else
  {
    v39 = v43;
    sub_1C215E85C(v36, v43, type metadata accessor for CableRelayConnectionRequest.QRAssisted);
    if (v32 != 1)
    {
      sub_1C2170424();
    }

    sub_1C20EB498(v28, &qword_1EBF25018, &qword_1C2180C10);
    v40 = v42;
    sub_1C20EB498(v42, &qword_1EBF25010, &qword_1C2180C08);
    sub_1C215E85C(v39, v40, type metadata accessor for CableRelayConnectionRequest.QRAssisted);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C215AC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for CableRelayConnectionRequest.StateAssisted(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25010, &qword_1C2180C08);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for CableRelayConnectionRequest.OneOf_Message(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25020, &qword_1C2180C18);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C20EB3E8(a1, v14, &qword_1EBF25010, &qword_1C2180C08);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C20EB498(v14, &qword_1EBF25010, &qword_1C2180C08);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C215E85C(v14, v22, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
    sub_1C215E85C(v22, v20, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C20EB498(v28, &qword_1EBF25020, &qword_1C2180C18);
      v35 = v44;
      sub_1C215E85C(v20, v44, type metadata accessor for CableRelayConnectionRequest.StateAssisted);
      sub_1C215E85C(v35, v28, type metadata accessor for CableRelayConnectionRequest.StateAssisted);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_1C215E7FC(v20, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_1C215D9D0(&qword_1EBF24E50, type metadata accessor for CableRelayConnectionRequest.StateAssisted);
  v37 = v47;
  sub_1C2170484();
  if (v37)
  {
    return sub_1C20EB498(v28, &qword_1EBF25020, &qword_1C2180C18);
  }

  sub_1C20EB3E8(v28, v36, &qword_1EBF25020, &qword_1C2180C18);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C20EB498(v28, &qword_1EBF25020, &qword_1C2180C18);
    return sub_1C20EB498(v36, &qword_1EBF25020, &qword_1C2180C18);
  }

  else
  {
    v39 = v43;
    sub_1C215E85C(v36, v43, type metadata accessor for CableRelayConnectionRequest.StateAssisted);
    if (v32 != 1)
    {
      sub_1C2170424();
    }

    sub_1C20EB498(v28, &qword_1EBF25020, &qword_1C2180C18);
    v40 = v42;
    sub_1C20EB498(v42, &qword_1EBF25010, &qword_1C2180C08);
    sub_1C215E85C(v39, v40, type metadata accessor for CableRelayConnectionRequest.StateAssisted);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C215B1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25010, &qword_1C2180C08);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v19 - v12;
  sub_1C20EB3E8(v6, &v19 - v12, &qword_1EBF25010, &qword_1C2180C08);
  v14 = type metadata accessor for CableRelayConnectionRequest.OneOf_Message(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C215B618(v6, a1, a2, a3);
    }

    else
    {
      sub_1C215B3E0(v6, a1, a2, a3);
    }

    result = sub_1C215E7FC(v13, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v16 = type metadata accessor for CableRelayConnectionRequest(0);
  if (*(*(v6 + *(v16 + 20)) + 16))
  {
    v17 = v5;
    result = sub_1C2170514();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v17 = v5;
  }

  result = sub_1C215B850(v6, a1, a2, a3, type metadata accessor for CableRelayConnectionRequest);
  if (!v17)
  {
    v18 = v6 + *(v16 + 24);
    return sub_1C2170394();
  }

  return result;
}

uint64_t sub_1C215B3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25010, &qword_1C2180C08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for CableRelayConnectionRequest.QRAssisted(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C20EB3E8(a1, v8, &qword_1EBF25010, &qword_1C2180C08);
  v13 = type metadata accessor for CableRelayConnectionRequest.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C20EB498(v8, &qword_1EBF25010, &qword_1C2180C08);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C215E85C(v8, v12, type metadata accessor for CableRelayConnectionRequest.QRAssisted);
    sub_1C215D9D0(&qword_1EBF24E70, type metadata accessor for CableRelayConnectionRequest.QRAssisted);
    sub_1C2170534();
    return sub_1C215E7FC(v12, type metadata accessor for CableRelayConnectionRequest.QRAssisted);
  }

  result = sub_1C215E7FC(v8, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t sub_1C215B618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25010, &qword_1C2180C08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for CableRelayConnectionRequest.StateAssisted(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C20EB3E8(a1, v8, &qword_1EBF25010, &qword_1C2180C08);
  v13 = type metadata accessor for CableRelayConnectionRequest.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C20EB498(v8, &qword_1EBF25010, &qword_1C2180C08);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C215E85C(v8, v12, type metadata accessor for CableRelayConnectionRequest.StateAssisted);
    sub_1C215D9D0(&qword_1EBF24E50, type metadata accessor for CableRelayConnectionRequest.StateAssisted);
    sub_1C2170534();
    return sub_1C215E7FC(v12, type metadata accessor for CableRelayConnectionRequest.StateAssisted);
  }

  result = sub_1C215E7FC(v8, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t sub_1C215B850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = a1 + *(result + 28);
  v8 = *(v7 + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    sub_1C20D865C(*v7, *(v7 + 8));
    sub_1C2170504();
    return sub_1C20B23C8(v9, v8);
  }

  return result;
}

double sub_1C215B908@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CableRelayConnectionRequest.OneOf_Message(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[6];
  *(a2 + a1[5]) = MEMORY[0x1E69E7CC0];
  sub_1C21703A4();
  result = 0.0;
  *(a2 + a1[7]) = xmmword_1C21769B0;
  return result;
}

uint64_t sub_1C215B9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C21703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C215BA28(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C21703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C215BA9C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C215BAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C215D9D0(&qword_1EBF25008, type metadata accessor for CableRelayConnectionRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C215BB90(uint64_t a1)
{
  v2 = sub_1C215D9D0(&qword_1EBF24E90, type metadata accessor for CableRelayConnectionRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C215BBFC()
{
  sub_1C215D9D0(&qword_1EBF24E90, type metadata accessor for CableRelayConnectionRequest);

  return sub_1C21704D4();
}

uint64_t sub_1C215BC9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C2170574();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F78, &qword_1C2180BA8);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F80, &unk_1C2180BB0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C21768C0;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 10;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADE8];
  v15 = sub_1C2170544();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = a4;
  *(v17 + 1) = a5;
  v17[16] = 2;
  v16();
  return sub_1C2170554();
}

uint64_t sub_1C215BF10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C215D9D0(&qword_1EBF25038, type metadata accessor for CableRelayConnectionRequest.QRAssisted);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C215BFB0(uint64_t a1)
{
  v2 = sub_1C215D9D0(&qword_1EBF24E70, type metadata accessor for CableRelayConnectionRequest.QRAssisted);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C215C01C()
{
  sub_1C215D9D0(&qword_1EBF24E70, type metadata accessor for CableRelayConnectionRequest.QRAssisted);

  return sub_1C21704D4();
}

uint64_t sub_1C215C0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = sub_1C2170414();
    if (v4 || (v8 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v6 = *(a4(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v9 = *(a4(0) + 24);
LABEL_3:
      v4 = 0;
      sub_1C2170454();
    }
  }
}

uint64_t sub_1C215C170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  result = sub_1C2157540(v5, a1, a2, a3, a4);
  if (!v6)
  {
    sub_1C2158C18(v5, a1, a2, a3, a5);
    return sub_1C2170394();
  }

  return result;
}

double sub_1C215C1F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C21703A4();
  result = 0.0;
  v5 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = xmmword_1C21769B0;
  *(a2 + v5) = xmmword_1C21769B0;
  return result;
}

uint64_t sub_1C215C2F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C215D9D0(&qword_1EBF25040, type metadata accessor for CableRelayConnectionRequest.StateAssisted);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C215C390(uint64_t a1)
{
  v2 = sub_1C215D9D0(&qword_1EBF24E50, type metadata accessor for CableRelayConnectionRequest.StateAssisted);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C215C3FC()
{
  sub_1C215D9D0(&qword_1EBF24E50, type metadata accessor for CableRelayConnectionRequest.StateAssisted);

  return sub_1C21704D4();
}

uint64_t sub_1C215C4A8()
{
  v0 = sub_1C2170574();
  __swift_allocate_value_buffer(v0, qword_1EBF365F0);
  __swift_project_value_buffer(v0, qword_1EBF365F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F78, &qword_1C2180BA8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F80, &unk_1C2180BB0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C21768C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C2170544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "request_uuid";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1C2170554();
}

uint64_t sub_1C215C67C()
{
  while (1)
  {
    result = sub_1C2170414();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C215C728();
    }

    else if (result == 4)
    {
      v3 = *(type metadata accessor for CableRelayConnectionResponse(0) + 24);
      sub_1C2170454();
    }
  }

  return result;
}

uint64_t sub_1C215C728()
{
  v0 = *(type metadata accessor for CableRelayConnectionResponse(0) + 20);
  sub_1C2160FC8();
  return sub_1C2170444();
}

uint64_t sub_1C215C79C(uint64_t a1)
{
  result = type metadata accessor for CableRelayConnectionResponse(0);
  if (*(a1 + *(result + 20)) != 5)
  {
    v3 = *(a1 + *(result + 20));
    sub_1C2160FC8();
    return sub_1C21704F4();
  }

  return result;
}

double sub_1C215C828@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C21703A4();
  v4 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = 5;
  result = 0.0;
  *(a2 + v4) = xmmword_1C21769B0;
  return result;
}

uint64_t sub_1C215C914(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C215D9D0(&qword_1EBF25048, type metadata accessor for CableRelayConnectionResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C215C9B4(uint64_t a1)
{
  v2 = sub_1C215D9D0(&qword_1EBF24E30, type metadata accessor for CableRelayConnectionResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C215CA20()
{
  sub_1C215D9D0(&qword_1EBF24E30, type metadata accessor for CableRelayConnectionResponse);

  return sub_1C21704D4();
}

uint64_t sub_1C215CAA0()
{
  v0 = sub_1C2170574();
  __swift_allocate_value_buffer(v0, qword_1EBF36608);
  __swift_project_value_buffer(v0, qword_1EBF36608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F78, &qword_1C2180BA8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24F80, &unk_1C2180BB0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C21768C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "connection";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C2170544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "access_token";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1C2170554();
}

uint64_t sub_1C215CC70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25010, &qword_1C2180C08);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v30 = &v27 - v3;
  v4 = type metadata accessor for CableRelayConnectionRequest.OneOf_Message(0);
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CableRelayConnectionRequest(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23678, &unk_1C2180C70);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - v16;
  v18 = type metadata accessor for CableRelayPushMessage(0);
  v19 = *(v18 + 20);
  sub_1C20EB3E8(v0 + v19, v17, &qword_1EBF23678, &unk_1C2180C70);
  v20 = *(v8 + 48);
  v32 = v7;
  LODWORD(v7) = v20(v17, 1, v7);
  sub_1C20EB498(v17, &qword_1EBF23678, &unk_1C2180C70);
  if (v7 == 1 || *(v0 + *(v18 + 24) + 8) >> 60 == 15)
  {
    return 0;
  }

  sub_1C20EB3E8(v0 + v19, v15, &qword_1EBF23678, &unk_1C2180C70);
  v21 = v32;
  if (v20(v15, 1, v32) != 1)
  {
    v22 = v31;
    sub_1C215E85C(v15, v31, type metadata accessor for CableRelayConnectionRequest);
    if (*(v22 + *(v21 + 28) + 8) >> 60 == 15)
    {
LABEL_6:
      sub_1C215E7FC(v22, type metadata accessor for CableRelayConnectionRequest);
      return 0;
    }

    v24 = v30;
    sub_1C20EB3E8(v22, v30, &qword_1EBF25010, &qword_1C2180C08);
    if ((*(v28 + 48))(v24, 1, v29) == 1)
    {
      sub_1C20EB498(v24, &qword_1EBF25010, &qword_1C2180C08);
    }

    else
    {
      v25 = v27;
      sub_1C215E85C(v24, v27, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
      v26 = sub_1C2154E08();
      sub_1C215E7FC(v25, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
      if ((v26 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    sub_1C215E7FC(v22, type metadata accessor for CableRelayConnectionRequest);
    return 1;
  }

  sub_1C20EB498(v15, &qword_1EBF23678, &unk_1C2180C70);
  return 1;
}

uint64_t sub_1C215D070()
{
  while (1)
  {
    result = sub_1C2170414();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C215D11C();
    }

    else if (result == 2)
    {
      v3 = *(type metadata accessor for CableRelayPushMessage(0) + 24);
      sub_1C2170454();
    }
  }

  return result;
}

uint64_t sub_1C215D11C()
{
  v0 = *(type metadata accessor for CableRelayPushMessage(0) + 20);
  type metadata accessor for CableRelayConnectionRequest(0);
  sub_1C215D9D0(&qword_1EBF24E90, type metadata accessor for CableRelayConnectionRequest);
  return sub_1C2170484();
}

uint64_t sub_1C215D1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    sub_1C2158C18(v5, a1, a2, a3, a5);
    return sub_1C2170394();
  }

  return result;
}

uint64_t sub_1C215D260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23678, &unk_1C2180C70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CableRelayConnectionRequest(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CableRelayPushMessage(0);
  sub_1C20EB3E8(a1 + *(v14 + 20), v8, &qword_1EBF23678, &unk_1C2180C70);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C20EB498(v8, &qword_1EBF23678, &unk_1C2180C70);
  }

  sub_1C215E85C(v8, v13, type metadata accessor for CableRelayConnectionRequest);
  sub_1C215D9D0(&qword_1EBF24E90, type metadata accessor for CableRelayConnectionRequest);
  sub_1C2170534();
  return sub_1C215E7FC(v13, type metadata accessor for CableRelayConnectionRequest);
}

double sub_1C215D47C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C21703A4();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for CableRelayConnectionRequest(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  result = 0.0;
  *(a2 + *(a1 + 24)) = xmmword_1C21769B0;
  return result;
}

uint64_t sub_1C215D520@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C21703B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C215D588(uint64_t a1)
{
  v3 = sub_1C21703B4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C215D64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C215D9D0(&qword_1EBF25058, type metadata accessor for CableRelayPushMessage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C215D6EC@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C2170574();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1C215D788(uint64_t a1)
{
  v2 = sub_1C215D9D0(&qword_1EBF23688, type metadata accessor for CableRelayPushMessage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C215D7F4()
{
  sub_1C2171434();
  sub_1C2170894();
  return sub_1C2171454();
}

uint64_t sub_1C215D84C()
{
  sub_1C215D9D0(&qword_1EBF23688, type metadata accessor for CableRelayPushMessage);

  return sub_1C21704D4();
}

uint64_t sub_1C215D8C8()
{
  sub_1C2171434();
  sub_1C2170894();
  return sub_1C2171454();
}

uint64_t sub_1C215D9D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C215E788(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1C215E7FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C215E85C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C215E8C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CableRelayConnectionResponse(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 5)
  {
    if (v7 != 5)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = *(v4 + 24);
  v10 = *(a1 + v8);
  v9 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v13 = *v11;
  v12 = v11[1];
  if (v9 >> 60 != 15)
  {
    if (v12 >> 60 == 15)
    {
      goto LABEL_9;
    }

    sub_1C20B22B8(v10, v9);
    sub_1C20B22B8(v13, v12);
    v15 = sub_1C21068CC(v10, v9, v13, v12);
    sub_1C20B23C8(v13, v12);
    sub_1C20B23C8(v10, v9);
    if (v15)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v12 >> 60 != 15)
  {
LABEL_9:
    sub_1C20B22B8(v10, v9);
    sub_1C20B22B8(v13, v12);
    sub_1C20B23C8(v10, v9);
    sub_1C20B23C8(v13, v12);
    return 0;
  }

  sub_1C20B22B8(v10, v9);
  sub_1C20B22B8(v13, v12);
  sub_1C20B23C8(v10, v9);
LABEL_12:
  sub_1C21703B4();
  sub_1C215D9D0(&qword_1EBF24FA8, MEMORY[0x1E69AAC08]);
  return sub_1C21708E4() & 1;
}

uint64_t sub_1C215EA70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
  v8 = *(a1 + v6);
  v7 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v11 = *v9;
  v10 = v9[1];
  if (v7 >> 60 == 15)
  {
    if (v10 >> 60 == 15)
    {
      sub_1C20B22B8(v8, v7);
      sub_1C20B22B8(v11, v10);
      sub_1C20B23C8(v8, v7);
      goto LABEL_7;
    }

LABEL_5:
    sub_1C20B22B8(v8, v7);
    sub_1C20B22B8(v11, v10);
    sub_1C20B23C8(v8, v7);
    v12 = v11;
    v13 = v10;
LABEL_12:
    sub_1C20B23C8(v12, v13);
    return 0;
  }

  if (v10 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_1C20B22B8(v8, v7);
  sub_1C20B22B8(v11, v10);
  v14 = sub_1C21068CC(v8, v7, v11, v10);
  sub_1C20B23C8(v11, v10);
  sub_1C20B23C8(v8, v7);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  v15 = *(v5 + 24);
  v17 = *(a1 + v15);
  v16 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v20 = *v18;
  v19 = v18[1];
  if (v16 >> 60 != 15)
  {
    if (v19 >> 60 == 15)
    {
      goto LABEL_11;
    }

    sub_1C20B22B8(v17, v16);
    sub_1C20B22B8(v20, v19);
    v22 = sub_1C21068CC(v17, v16, v20, v19);
    sub_1C20B23C8(v20, v19);
    sub_1C20B23C8(v17, v16);
    if (v22)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v19 >> 60 != 15)
  {
LABEL_11:
    sub_1C20B22B8(v17, v16);
    sub_1C20B22B8(v20, v19);
    sub_1C20B23C8(v17, v16);
    v12 = v20;
    v13 = v19;
    goto LABEL_12;
  }

  sub_1C20B22B8(v17, v16);
  sub_1C20B22B8(v20, v19);
  sub_1C20B23C8(v17, v16);
LABEL_15:
  sub_1C21703B4();
  sub_1C215D9D0(&qword_1EBF24FA8, MEMORY[0x1E69AAC08]);
  return sub_1C21708E4() & 1;
}

uint64_t sub_1C215ECD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CableRelayConnectionRequest.StateAssisted(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CableRelayConnectionRequest.QRAssisted(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CableRelayConnectionRequest.OneOf_Message(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25030, &qword_1C2180C48);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  sub_1C2160F40(a1, &v31 - v22, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
  sub_1C2160F40(a2, &v23[v24], type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C2160F40(v23, v16, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C215E85C(&v23[v24], v7, type metadata accessor for CableRelayConnectionRequest.StateAssisted);
      v25 = sub_1C215EA70(v16, v7, type metadata accessor for CableRelayConnectionRequest.StateAssisted);
      sub_1C215E7FC(v7, type metadata accessor for CableRelayConnectionRequest.StateAssisted);
      v26 = v16;
      v27 = type metadata accessor for CableRelayConnectionRequest.StateAssisted;
LABEL_9:
      sub_1C215E7FC(v26, v27);
      sub_1C215E7FC(v23, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
      return v25 & 1;
    }

    v28 = type metadata accessor for CableRelayConnectionRequest.StateAssisted;
    v29 = v16;
  }

  else
  {
    sub_1C2160F40(v23, v18, type metadata accessor for CableRelayConnectionRequest.OneOf_Message);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C215E85C(&v23[v24], v11, type metadata accessor for CableRelayConnectionRequest.QRAssisted);
      v25 = sub_1C215EA70(v18, v11, type metadata accessor for CableRelayConnectionRequest.QRAssisted);
      sub_1C215E7FC(v11, type metadata accessor for CableRelayConnectionRequest.QRAssisted);
      v26 = v18;
      v27 = type metadata accessor for CableRelayConnectionRequest.QRAssisted;
      goto LABEL_9;
    }

    v28 = type metadata accessor for CableRelayConnectionRequest.QRAssisted;
    v29 = v18;
  }

  sub_1C215E7FC(v29, v28);
  sub_1C20EB498(v23, &qword_1EBF25030, &qword_1C2180C48);
  v25 = 0;
  return v25 & 1;
}