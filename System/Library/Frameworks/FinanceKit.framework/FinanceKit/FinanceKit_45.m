uint64_t MapsMerchant.hasBrand.setter(char a1)
{
  result = type metadata accessor for MapsMerchant();
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t MapsMerchant.locationLatitude.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MapsMerchant();
  v6 = v2 + *(result + 72);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MapsMerchant.locationLongitude.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MapsMerchant();
  v6 = v2 + *(result + 76);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

void sub_1B75D2DCC(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for MapsMerchant() + 80);
  v5 = *(a2 + v4);
  v6 = v3;

  *(a2 + v4) = v3;
}

void (*MapsMerchant.postalAddress.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MapsMerchant() + 80);
  *(a1 + 16) = v3;
  v4 = *(v1 + v3);
  *a1 = v4;
  v5 = v4;
  return sub_1B75D2E74;
}

void sub_1B75D2E74(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    v5 = *(v4 + v2);
    v6 = v3;

    *(v4 + v2) = v3;
  }

  else
  {

    *(v4 + v2) = v3;
  }
}

unint64_t sub_1B75D2EF8(char a1)
{
  result = 1684632941;
  switch(a1)
  {
    case 1:
      result = 0x6564496563616C70;
      break;
    case 2:
    case 7:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 0x6D754E656E6F6870;
      break;
    case 5:
      result = 7107189;
      break;
    case 6:
      result = 0x67616D496F726568;
      break;
    case 8:
      result = 0x657461437370616DLL;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x7373656E69737562;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x646E617242736168;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B75D30EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B75D7DA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B75D3120(uint64_t a1)
{
  v2 = sub_1B75D76D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75D315C(uint64_t a1)
{
  v2 = sub_1B75D76D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MapsMerchant.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998D70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75D76D0();
  sub_1B78023F8();
  LOBYTE(v15) = 0;
  sub_1B7802008();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_1B7801EF8();
    v9 = *(v3 + 28);
    LOBYTE(v15) = 2;
    v17 = v9;
    sub_1B7801F58();
    LOBYTE(v15) = 3;
    sub_1B7801EF8();
    LOBYTE(v15) = 4;
    sub_1B7801EF8();
    v10 = type metadata accessor for MapsMerchant();
    LOBYTE(v15) = 5;
    sub_1B77FF4F8();
    sub_1B72FA358(&qword_1EB98F700, MEMORY[0x1E6968FB0]);
    sub_1B7801F38();
    LOBYTE(v15) = 6;
    sub_1B7801F38();
    LOBYTE(v15) = 7;
    sub_1B7801EF8();
    LOBYTE(v15) = *(v3 + v10[12]);
    v17 = 8;
    sub_1B75D7724();
    sub_1B7801F38();
    LOBYTE(v15) = 9;
    sub_1B7801EF8();
    v11 = v3 + v10[14];
    v12 = *(v11 + 8);
    v15 = *v11;
    v16 = v12;
    v17 = 10;
    sub_1B7228588(v15, v12);
    sub_1B727A60C();
    sub_1B7801F38();
    sub_1B72380B8(v15, v16);
    LOBYTE(v15) = 11;
    sub_1B7801F38();
    LOBYTE(v15) = 12;
    sub_1B77FF988();
    sub_1B72FA358(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801F38();
    LOBYTE(v15) = 13;
    sub_1B7801F88();
    LOBYTE(v15) = 14;
    sub_1B7801F18();
    LOBYTE(v15) = 15;
    sub_1B7801F18();
    v15 = *(v3 + v10[20]);
    v17 = 16;
    v13 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998D88);
    sub_1B75D77CC(&qword_1EB998D90);
    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

void MapsMerchant.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a1;
  v72 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v73 = v68 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v74 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v76 = v68 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v78 = v68 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998D98);
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v11 = v68 - v10;
  v12 = type metadata accessor for MapsMerchant();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 36);
  v17 = sub_1B77FF4F8();
  v18 = *(*(v17 - 8) + 56);
  v85 = v16;
  v18(v15 + v16, 1, 1, v17);
  v84 = v12[10];
  v18(v15 + v84, 1, 1, v17);
  v19 = v12[12];
  *(v15 + v19) = 8;
  v20 = v15 + v12[14];
  *v20 = xmmword_1B7810080;
  v82 = v12[15];
  v83 = v20;
  v18(v15 + v82, 1, 1, v17);
  v21 = v12[16];
  v22 = sub_1B77FF988();
  v23 = *(*(v22 - 8) + 56);
  v81 = v21;
  v23(v15 + v21, 1, 1, v22);
  v80 = v12[20];
  v86 = v15;
  *(v15 + v80) = 0;
  __swift_project_boxed_opaque_existential_1(v88, v88[3]);
  sub_1B75D76D0();
  v79 = v11;
  v24 = v87;
  sub_1B78023C8();
  if (v24)
  {
    v87 = v24;
    v26 = v84;
    v25 = v85;
LABEL_4:
    v31 = v86;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v88);

    sub_1B7205418(v31 + v25, &unk_1EB994C70);
    sub_1B7205418(v31 + v26, &unk_1EB994C70);

    sub_1B72380B8(*v83, *(v83 + 1));
    sub_1B7205418(v31 + v82, &unk_1EB994C70);
    sub_1B7205418(v31 + v81, &qword_1EB98EBD0);

    return;
  }

  v70 = v12;
  v69 = v19;
  v27 = v76;
  v71 = v17;
  v68[4] = v22;
  v28 = v75;
  LOBYTE(v89) = 0;
  v29 = v77;
  v30 = sub_1B7801E88();
  v26 = v84;
  v25 = v85;
  v31 = v86;
  *v86 = v30;
  LOBYTE(v89) = 1;
  v31[1] = sub_1B7801D78();
  v31[2] = v32;
  v68[3] = v32;
  LOBYTE(v89) = 2;
  v33 = sub_1B7801DD8();
  *(v31 + 6) = v33;
  *(v31 + 28) = BYTE4(v33) & 1;
  LOBYTE(v89) = 3;
  v31[4] = sub_1B7801D78();
  v31[5] = v34;
  v68[2] = v34;
  LOBYTE(v89) = 4;
  v35 = sub_1B7801D78();
  v87 = 0;
  v31[6] = v35;
  v31[7] = v36;
  v68[1] = v36;
  LOBYTE(v89) = 5;
  sub_1B72FA358(&qword_1EB98F730, MEMORY[0x1E6968FB0]);
  v37 = v87;
  sub_1B7801DB8();
  v87 = v37;
  if (v37 || (sub_1B7213740(v78, v31 + v25, &unk_1EB994C70), LOBYTE(v89) = 6, v38 = v87, sub_1B7801DB8(), (v87 = v38) != 0) || (sub_1B7213740(v27, v31 + v26, &unk_1EB994C70), LOBYTE(v89) = 7, v39 = v87, v40 = sub_1B7801D78(), (v87 = v39) != 0) || (v42 = (v31 + v70[11]), *v42 = v40, v42[1] = v41, v78 = v41, v91 = 8, sub_1B75D7778(), v43 = v87, sub_1B7801DB8(), (v87 = v43) != 0))
  {
    (*(v28 + 8))(v79, v29);
    goto LABEL_5;
  }

  *(v31 + v69) = v89;
  LOBYTE(v89) = 9;
  v44 = v87;
  v45 = sub_1B7801D78();
  v87 = v44;
  if (v44 || (v47 = (v86 + v70[13]), *v47 = v45, v47[1] = v46, v91 = 10, sub_1B727A53C(), v48 = v87, sub_1B7801DB8(), (v87 = v48) != 0) || (v50 = v89, v49 = v90, v51 = v83, sub_1B72380B8(*v83, *(v83 + 1)), *v51 = v50, *(v51 + 1) = v49, LOBYTE(v89) = 11, v52 = v87, sub_1B7801DB8(), (v87 = v52) != 0) || (sub_1B7213740(v74, v86 + v82, &unk_1EB994C70), LOBYTE(v89) = 12, sub_1B72FA358(&unk_1EDAF65E0, MEMORY[0x1E6969530]), v53 = v87, sub_1B7801DB8(), (v87 = v53) != 0) || (sub_1B7213740(v73, v86 + v81, &qword_1EB98EBD0), LOBYTE(v89) = 13, v54 = v87, v55 = sub_1B7801E08(), (v87 = v54) != 0))
  {
    (*(v28 + 8))(v79, v77);
LABEL_19:
    v26 = v84;
    v25 = v85;
    goto LABEL_4;
  }

  *(v86 + v70[17]) = v55 & 1;
  LOBYTE(v89) = 14;
  v56 = sub_1B7801D98();
  v87 = 0;
  v57 = v86 + v70[18];
  *v57 = v56;
  v57[8] = v58 & 1;
  LOBYTE(v89) = 15;
  v59 = sub_1B7801D98();
  v87 = 0;
  v61 = v86 + v70[19];
  *v61 = v59;
  v61[8] = v60 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998D88);
  v91 = 16;
  sub_1B75D77CC(&qword_1EB998DA8);
  v62 = v77;
  v63 = v79;
  v64 = v87;
  sub_1B7801DB8();
  (*(v28 + 8))(v63, v62);
  v87 = v64;
  if (v64)
  {
    goto LABEL_19;
  }

  v65 = v89;
  v66 = v80;
  v67 = v86;

  *(v67 + v66) = v65;
  sub_1B72D2DDC(v67, v72);
  __swift_destroy_boxed_opaque_existential_1(v88);
  sub_1B75D788C(v67, type metadata accessor for MapsMerchant);
}

uint64_t sub_1B75D4234()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1B75D4264()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1B75D42FC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t sub_1B75D4344(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));

  return v2;
}

uint64_t sub_1B75D437C(uint64_t a1)
{
  v2 = v1 + *(a1 + 56);
  v3 = *v2;
  sub_1B7228588(*v2, *(v2 + 8));
  return v3;
}

unsigned __int8 *MapsMerchant.init(from:encodedStylingInfo:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v134 = a2;
  v135 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997498);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v121 = v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v118 = v111 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9975B8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v117 = (v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v119 = v111 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v123 = v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v124 = v111 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997490);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v122 = v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v111 - v21;
  v23 = type metadata accessor for MapsMerchant();
  v133 = *(v23 - 1);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v24 + 36);
  v28 = sub_1B77FF4F8();
  v116 = *(v28 - 8);
  v29 = v116 + 56;
  v30 = *(v116 + 56);
  v128 = v27;
  v30(&v26[v27], 1, 1, v28);
  v129 = v23[10];
  v30(&v26[v129], 1, 1, v28);
  v120 = v23[12];
  v26[v120] = 8;
  v31 = &v26[v23[13]];
  *v31 = 0;
  *(v31 + 1) = 0;
  v132 = &v26[v23[14]];
  *v132 = xmmword_1B7810080;
  v130 = v23[15];
  v126 = v29;
  v127 = v28;
  v125 = v30;
  v30(&v26[v130], 1, 1, v28);
  v32 = v23[16];
  v33 = sub_1B77FF988();
  result = (*(*(v33 - 8) + 56))(&v26[v32], 1, 1, v33);
  v131 = v23[20];
  *&v26[v131] = 0;
  v35 = *a1;
  v36 = a1[1];
  v37 = HIBYTE(v36) & 0xF;
  v38 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v36 & 0x2000000000000000) != 0)
  {
    v39 = HIBYTE(v36) & 0xF;
  }

  else
  {
    v39 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {
    goto LABEL_65;
  }

  if ((v36 & 0x1000000000000000) != 0)
  {

    v41 = sub_1B75D5318(v35, v36, 10);
    v55 = v54;

    if (v55)
    {
      goto LABEL_65;
    }

    goto LABEL_67;
  }

  if ((v36 & 0x2000000000000000) != 0)
  {
    *&v147[0] = *a1;
    *(&v147[0] + 1) = v36 & 0xFFFFFFFFFFFFFFLL;
    if (v35 == 43)
    {
      if (v37)
      {
        if (--v37)
        {
          v41 = 0;
          v49 = v147 + 1;
          while (1)
          {
            v50 = *v49 - 48;
            if (v50 > 9)
            {
              break;
            }

            if (!is_mul_ok(v41, 0xAuLL))
            {
              break;
            }

            v44 = __CFADD__(10 * v41, v50);
            v41 = 10 * v41 + v50;
            if (v44)
            {
              break;
            }

            ++v49;
            if (!--v37)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_98:
      __break(1u);
      return result;
    }

    if (v35 != 45)
    {
      if (v37)
      {
        v41 = 0;
        v52 = v147;
        while (1)
        {
          v53 = *v52 - 48;
          if (v53 > 9)
          {
            break;
          }

          if (!is_mul_ok(v41, 0xAuLL))
          {
            break;
          }

          v44 = __CFADD__(10 * v41, v53);
          v41 = 10 * v41 + v53;
          if (v44)
          {
            break;
          }

          ++v52;
          if (!--v37)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v37)
    {
      if (--v37)
      {
        v41 = 0;
        v45 = v147 + 1;
        while (1)
        {
          v46 = *v45 - 48;
          if (v46 > 9)
          {
            break;
          }

          if (!is_mul_ok(v41, 0xAuLL))
          {
            break;
          }

          v44 = 10 * v41 >= v46;
          v41 = 10 * v41 - v46;
          if (!v44)
          {
            break;
          }

          ++v45;
          if (!--v37)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_96;
  }

  if ((v35 & 0x1000000000000000) != 0)
  {
    result = ((v36 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_1B7801B48();
  }

  v40 = *result;
  if (v40 == 43)
  {
    if (v38 >= 1)
    {
      v37 = v38 - 1;
      if (v38 != 1)
      {
        v41 = 0;
        if (result)
        {
          v47 = result + 1;
          while (1)
          {
            v48 = *v47 - 48;
            if (v48 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v41, 0xAuLL))
            {
              goto LABEL_63;
            }

            v44 = __CFADD__(10 * v41, v48);
            v41 = 10 * v41 + v48;
            if (v44)
            {
              goto LABEL_63;
            }

            ++v47;
            if (!--v37)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_55;
      }

      goto LABEL_63;
    }

    goto LABEL_97;
  }

  if (v40 == 45)
  {
    if (v38 >= 1)
    {
      v37 = v38 - 1;
      if (v38 != 1)
      {
        v41 = 0;
        if (result)
        {
          v42 = result + 1;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v41, 0xAuLL))
            {
              goto LABEL_63;
            }

            v44 = 10 * v41 >= v43;
            v41 = 10 * v41 - v43;
            if (!v44)
            {
              goto LABEL_63;
            }

            ++v42;
            if (!--v37)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v37) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (v38)
  {
    v41 = 0;
    if (result)
    {
      while (1)
      {
        v51 = *result - 48;
        if (v51 > 9)
        {
          goto LABEL_63;
        }

        if (!is_mul_ok(v41, 0xAuLL))
        {
          goto LABEL_63;
        }

        v44 = __CFADD__(10 * v41, v51);
        v41 = 10 * v41 + v51;
        if (v44)
        {
          goto LABEL_63;
        }

        ++result;
        if (!--v38)
        {
          goto LABEL_55;
        }
      }
    }

    goto LABEL_55;
  }

LABEL_63:
  v41 = 0;
  LOBYTE(v37) = 1;
LABEL_64:
  LOBYTE(v139) = v37;
  if (v37)
  {
LABEL_65:
    sub_1B72380B8(v134, v135);
    sub_1B75D788C(a1, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
    sub_1B7205418(&v26[v128], &unk_1EB994C70);
    sub_1B7205418(&v26[v129], &unk_1EB994C70);
    sub_1B72380B8(*v132, *(v132 + 1));
    sub_1B7205418(&v26[v130], &unk_1EB994C70);
    sub_1B7205418(&v26[v32], &qword_1EB98EBD0);

    return (*(v133 + 56))(a4, 1, 1, v23);
  }

LABEL_67:
  v115 = a4;
  *v26 = v41;
  v56 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
  v57 = v56;
  *(v26 + 1) = 0;
  *(v26 + 2) = 0;
  v58 = a1 + *(v56 + 40);
  v60 = *(v58 + 1);
  v59 = *(v58 + 2);
  if (v60 == 1)
  {
    LODWORD(v59) = 0;
    v61 = 1;
  }

  else
  {
    v61 = BYTE4(v59) & 1;
  }

  *(v26 + 6) = v59;
  v26[28] = v61;
  v62 = a1[3];
  *(v26 + 4) = a1[2];
  *(v26 + 5) = v62;
  v114 = *(v56 + 28);
  sub_1B7205588(a1 + v114, v22, &qword_1EB997490);
  v63 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails(0);
  v64 = *(v63 - 8);
  v65 = *(v64 + 48);
  v111[1] = v64 + 48;
  v112 = v65;
  v66 = v65(v22, 1, v63);
  v113 = v63;
  if (v66 == 1)
  {

    sub_1B7205418(v22, &qword_1EB997490);
    v67 = 0;
    v68 = 0;
  }

  else
  {
    v69 = &v22[*(v63 + 20)];
    v67 = *v69;
    v68 = *(v69 + 1);

    sub_1B75D788C(v22, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  }

  v70 = v119;
  *(v26 + 6) = v67;
  *(v26 + 7) = v68;
  sub_1B75D781C(a1 + *(v57 + 52), &v26[v128]);
  v128 = v57;
  v119 = *(v57 + 36);
  v71 = v118;
  sub_1B7205588(a1 + v119, v118, &qword_1EB997498);
  v72 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery(0);
  v73 = *(*(v72 - 8) + 48);
  if (v73(v71, 1, v72) == 1)
  {
    v74 = a1;
    v75 = &qword_1EB997498;
    v76 = v71;
  }

  else
  {
    sub_1B7205588(v71, v70, &qword_1EB9975B8);
    sub_1B75D788C(v71, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
    v77 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage(0);
    v74 = a1;
    if ((*(*(v77 - 8) + 48))(v70, 1, v77) != 1)
    {
      (*(v116 + 16))(v124, v70 + *(v77 + 20), v127);
      sub_1B75D788C(v70, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
      v78 = 0;
      goto LABEL_79;
    }

    v75 = &qword_1EB9975B8;
    v76 = v70;
  }

  sub_1B7205418(v76, v75);
  v78 = 1;
LABEL_79:
  v79 = v121;
  v80 = v124;
  v125(v124, v78, 1, v127);
  sub_1B7213740(v80, &v26[v129], &unk_1EB994C70);
  sub_1B7205588(v74 + v119, v79, &qword_1EB997498);
  if (v73(v79, 1, v72) == 1)
  {
    sub_1B7205418(v79, &qword_1EB997498);
    v81 = 0;
    v82 = 0;
    v83 = v115;
  }

  else
  {
    v84 = v117;
    sub_1B7205588(v79, v117, &qword_1EB9975B8);
    sub_1B75D788C(v79, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
    v85 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage(0);
    v86 = (*(*(v85 - 8) + 48))(v84, 1, v85);
    v83 = v115;
    if (v86 == 1)
    {
      sub_1B7205418(v84, &qword_1EB9975B8);
      v81 = 0;
      v82 = 0;
    }

    else
    {
      v81 = *v84;
      v82 = v84[1];

      sub_1B75D788C(v84, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
    }
  }

  v87 = &v26[v23[11]];
  *v87 = v81;
  *(v87 + 1) = v82;
  v88 = v128;
  v26[v120] = 0x3070204060501uLL >> (8 * *(v74 + *(v128 + 48) + 1));
  v89 = v122;
  sub_1B7205588(v74 + v114, v122, &qword_1EB997490);
  if (v112(v89, 1, v113) == 1)
  {
    sub_1B7205418(v89, &qword_1EB997490);
    v90 = v123;
    v125(v123, 1, 1, v127);
  }

  else
  {
    v90 = v123;
    sub_1B7205588(v89, v123, &unk_1EB994C70);
    sub_1B75D788C(v89, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  }

  sub_1B7213740(v90, &v26[v130], &unk_1EB994C70);
  v91 = v74 + *(v88 + 32);
  v92 = *(v91 + 16);
  v94 = *v91;
  v93 = *(v91 + 8);
  if (v92)
  {
    v94 = 0;
  }

  v95 = &v26[v23[18]];
  *v95 = v94;
  v95[8] = v92;
  if (v92)
  {
    v93 = 0;
  }

  v96 = &v26[v23[19]];
  *v96 = v93;
  v96[8] = v92;
  v26[v23[17]] = 0;
  v97 = (v74 + *(v88 + 44));
  v98 = v97[3];
  v99 = v97[5];
  v143 = v97[4];
  v144 = v99;
  v100 = v97[5];
  v101 = v97[7];
  v145 = v97[6];
  v146 = v101;
  v102 = v97[1];
  v139 = *v97;
  v140 = v102;
  v103 = v97[3];
  v105 = *v97;
  v104 = v97[1];
  v141 = v97[2];
  v142 = v103;
  v147[2] = v141;
  v147[3] = v98;
  v147[0] = v105;
  v147[1] = v104;
  v106 = v97[7];
  v147[6] = v145;
  v147[7] = v106;
  v147[4] = v143;
  v147[5] = v100;
  v107 = 0;
  if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v147) != 1)
  {
    v137[4] = v143;
    v137[5] = v144;
    v137[6] = v145;
    v137[7] = v146;
    v137[0] = v139;
    v137[1] = v140;
    v137[2] = v141;
    v137[3] = v142;
    sub_1B7205540(0, &qword_1EB990D70);
    v138[4] = v143;
    v138[5] = v144;
    v138[6] = v145;
    v138[7] = v146;
    v138[0] = v139;
    v138[1] = v140;
    v138[2] = v141;
    v138[3] = v142;
    sub_1B745E8C0(v138, &v136);
    v107 = sub_1B745DE54(v137);
  }

  v108 = v131;

  *&v26[v108] = v107;
  sub_1B75D788C(v74, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
  v109 = v132;
  sub_1B72380B8(*v132, *(v132 + 1));
  v110 = v135;
  *v109 = v134;
  *(v109 + 1) = v110;
  sub_1B72D2DDC(v26, v83);
  (*(v133 + 56))(v83, 0, 1, v23);
  return sub_1B75D788C(v26, type metadata accessor for MapsMerchant);
}

void *sub_1B75D52A4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F6B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1B75D5318(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1B7800AB8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B75D6414();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B7801B48();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1B75D589C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a1;
  v76 = a2;

  result = sub_1B7800AB8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B75D6414();
    v42 = v41;

    v5 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B7801B48();
      v7 = v74;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOWORD(v13) = 0;
            v26 = result + 1;
            v27 = a3;
            v16 = 1;
            do
            {
              v28 = *v26;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v13 * v27;
              v31 = (v13 * v27);
              if (v31 != v30)
              {
                goto LABEL_126;
              }

              v13 = v31 + (v28 + v29);
              if (v13 != v13)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v16 = 0;
            v19 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        v16 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          LOWORD(v35) = 0;
          v36 = a3;
          v16 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v32)
            {
              if (v37 < 0x41 || v37 >= v33)
              {
                v19 = 0;
                if (v37 < 0x61 || v37 >= v34)
                {
                  goto LABEL_127;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v35 * v36;
            v40 = (v35 * v36);
            if (v40 != v39)
            {
              goto LABEL_126;
            }

            v35 = v40 + (v37 + v38);
            if (v35 != v35)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v16 = 0;
          v19 = v35;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = a3;
          v16 = 1;
          while (1)
          {
            v17 = *v14;
            if (v17 < 0x30 || v17 >= v10)
            {
              if (v17 < 0x41 || v17 >= v11)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v12)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v13 * v15;
            v21 = (v13 * v15);
            if (v21 != v20)
            {
              goto LABEL_126;
            }

            v13 = v21 - (v17 + v18);
            if (v13 != v13)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
        v16 = 0;
LABEL_127:

        return (v19 | (v16 << 16));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v43 = HIBYTE(v5) & 0xF;
  v75 = v6;
  v76 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v43)
      {
        LOWORD(v45) = 0;
        v65 = a3 + 48;
        v66 = a3 + 55;
        v67 = a3 + 87;
        if (a3 > 10)
        {
          v65 = 58;
        }

        else
        {
          v67 = 97;
          v66 = 65;
        }

        v68 = &v75;
        v69 = a3;
        v16 = 1;
        while (1)
        {
          v70 = *v68;
          if (v70 < 0x30 || v70 >= v65)
          {
            if (v70 < 0x41 || v70 >= v66)
            {
              v19 = 0;
              if (v70 < 0x61 || v70 >= v67)
              {
                goto LABEL_127;
              }

              v71 = -87;
            }

            else
            {
              v71 = -55;
            }
          }

          else
          {
            v71 = -48;
          }

          v72 = v45 * v69;
          v73 = (v45 * v69);
          if (v73 != v72)
          {
            goto LABEL_126;
          }

          v45 = v73 + (v70 + v71);
          if (v45 != v45)
          {
            goto LABEL_126;
          }

          v68 = (v68 + 1);
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        LOWORD(v45) = 0;
        v46 = a3 + 48;
        v47 = a3 + 55;
        v48 = a3 + 87;
        if (a3 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v75 + 1;
        v50 = a3;
        v16 = 1;
        while (1)
        {
          v51 = *v49;
          if (v51 < 0x30 || v51 >= v46)
          {
            if (v51 < 0x41 || v51 >= v47)
            {
              v19 = 0;
              if (v51 < 0x61 || v51 >= v48)
              {
                goto LABEL_127;
              }

              v52 = -87;
            }

            else
            {
              v52 = -55;
            }
          }

          else
          {
            v52 = -48;
          }

          v53 = v45 * v50;
          v54 = (v45 * v50);
          if (v54 != v53)
          {
            goto LABEL_126;
          }

          v45 = v54 - (v51 + v52);
          if (v45 != v45)
          {
            goto LABEL_126;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v43)
  {
    v55 = v43 - 1;
    if (v55)
    {
      LOWORD(v45) = 0;
      v56 = a3 + 48;
      v57 = a3 + 55;
      v58 = a3 + 87;
      if (a3 > 10)
      {
        v56 = 58;
      }

      else
      {
        v58 = 97;
        v57 = 65;
      }

      v59 = &v75 + 1;
      v60 = a3;
      v16 = 1;
      do
      {
        v61 = *v59;
        if (v61 < 0x30 || v61 >= v56)
        {
          if (v61 < 0x41 || v61 >= v57)
          {
            v19 = 0;
            if (v61 < 0x61 || v61 >= v58)
            {
              goto LABEL_127;
            }

            v62 = -87;
          }

          else
          {
            v62 = -55;
          }
        }

        else
        {
          v62 = -48;
        }

        v63 = v45 * v60;
        v64 = (v45 * v60);
        if (v64 != v63)
        {
          goto LABEL_126;
        }

        v45 = v64 + (v61 + v62);
        if (v45 != v45)
        {
          goto LABEL_126;
        }

        ++v59;
        --v55;
      }

      while (v55);
LABEL_125:
      v16 = 0;
      v19 = v45;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1B75D5E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1B7800AB8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B75D6414();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B7801B48();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1B75D6414()
{
  v0 = sub_1B7800AC8();
  v4 = sub_1B75D6494(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1B75D6494(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1B7801788();
    if (!v9 || (v10 = v9, v11 = sub_1B75D52A4(v9, 0), v12 = sub_1B75D65EC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1B7800988();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B7800988();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1B7801B48();
LABEL_4:

  return sub_1B7800988();
}

unint64_t sub_1B75D65EC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1B75D680C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B7800A78();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1B7801B48();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1B75D680C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1B7800A58();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1B75D680C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B7800A88();
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
    v5 = MEMORY[0x1B8CA4D80](15, a1 >> 16);
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

BOOL _s10FinanceKit12MapsMerchantV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v112 = *(v4 - 8);
  v113 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v109 = &v102[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v110 = &v102[-v7];
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v111);
  v114 = &v102[-v8];
  v9 = sub_1B77FF4F8();
  v116 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v115 = &v102[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v102[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v102[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v102[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v102[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v102[-v25];
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v102[-v27];
  if (*a1 != *a2)
  {
    return 0;
  }

  v29 = *(a1 + 16);
  v30 = *(a2 + 16);
  if (v29)
  {
    if (!v30 || (*(a1 + 8) != *(a2 + 8) || v29 != v30) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  v31 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v31 = 1;
    }

    if (v31)
    {
      return 0;
    }
  }

  v32 = *(a1 + 40);
  v33 = *(a2 + 40);
  if (v32)
  {
    if (!v33 || (*(a1 + 32) != *(a2 + 32) || v32 != v33) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v34 = *(a1 + 56);
  v35 = *(a2 + 56);
  if (v34)
  {
    if (!v35 || (*(a1 + 48) != *(a2 + 48) || v34 != v35) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  v105 = type metadata accessor for MapsMerchant();
  v36 = *(v20 + 48);
  v107 = v105[9];
  v108 = v36;
  sub_1B7205588(a1 + v107, v28, &unk_1EB994C70);
  sub_1B7205588(a2 + v107, &v108[v28], &unk_1EB994C70);
  v106 = *(v116 + 48);
  v107 = v116 + 48;
  if (v106(v28, 1, v9) == 1)
  {
    if (v106(&v108[v28], 1, v9) == 1)
    {
      sub_1B7205418(v28, &unk_1EB994C70);
      goto LABEL_36;
    }

LABEL_34:
    v37 = &qword_1EB991C30;
    v38 = v28;
LABEL_42:
    sub_1B7205418(v38, v37);
    return 0;
  }

  sub_1B7205588(v28, v19, &unk_1EB994C70);
  if (v106(&v108[v28], 1, v9) == 1)
  {
    (*(v116 + 8))(v19, v9);
    goto LABEL_34;
  }

  (*(v116 + 32))(v115, &v108[v28], v9);
  sub_1B72FA358(&qword_1EB990310, MEMORY[0x1E6968FB0]);
  v103 = sub_1B7800828();
  v39 = *(v116 + 8);
  v104 = v116 + 8;
  v108 = v39;
  (v39)(v115, v9);
  (v108)(v19, v9);
  sub_1B7205418(v28, &unk_1EB994C70);
  if ((v103 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v40 = v105[10];
  v41 = *(v20 + 48);
  sub_1B7205588(a1 + v40, v26, &unk_1EB994C70);
  v108 = v41;
  sub_1B7205588(a2 + v40, &v41[v26], &unk_1EB994C70);
  v42 = v106;
  if (v106(v26, 1, v9) == 1)
  {
    if (v42(&v108[v26], 1, v9) == 1)
    {
      sub_1B7205418(v26, &unk_1EB994C70);
      goto LABEL_45;
    }

    goto LABEL_41;
  }

  sub_1B7205588(v26, v17, &unk_1EB994C70);
  if (v42(&v108[v26], 1, v9) == 1)
  {
    (*(v116 + 8))(v17, v9);
LABEL_41:
    v37 = &qword_1EB991C30;
    v38 = v26;
    goto LABEL_42;
  }

  v44 = v116;
  (*(v116 + 32))(v115, &v108[v26], v9);
  sub_1B72FA358(&qword_1EB990310, MEMORY[0x1E6968FB0]);
  LODWORD(v108) = sub_1B7800828();
  v45 = *(v44 + 8);
  v45(v115, v9);
  v45(v17, v9);
  sub_1B7205418(v26, &unk_1EB994C70);
  if ((v108 & 1) == 0)
  {
    return 0;
  }

LABEL_45:
  v46 = v105[11];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 8);
  v49 = (a2 + v46);
  v50 = v49[1];
  if (v48)
  {
    if (!v50 || (*v47 != *v49 || v48 != v50) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v50)
  {
    return 0;
  }

  v51 = v105[12];
  v52 = *(a1 + v51);
  v53 = *(a2 + v51);
  if (v52 == 8)
  {
    if (v53 != 8)
    {
      return 0;
    }
  }

  else if (v52 != v53)
  {
    return 0;
  }

  v54 = v105[13];
  v55 = (a1 + v54);
  v56 = *(a1 + v54 + 8);
  v57 = (a2 + v54);
  v58 = v57[1];
  if (v56)
  {
    if (!v58 || (*v55 != *v57 || v56 != v58) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v58)
  {
    return 0;
  }

  v59 = v105[14];
  v61 = *(a1 + v59);
  v60 = *(a1 + v59 + 8);
  v62 = (a2 + v59);
  v64 = *v62;
  v63 = v62[1];
  if (v60 >> 60 == 15)
  {
    if (v63 >> 60 == 15)
    {
      sub_1B7228588(v61, v60);
      sub_1B7228588(v64, v63);
      sub_1B72380B8(v61, v60);
      goto LABEL_69;
    }

LABEL_67:
    sub_1B7228588(v61, v60);
    sub_1B7228588(v64, v63);
    sub_1B72380B8(v61, v60);
    sub_1B72380B8(v64, v63);
    return 0;
  }

  if (v63 >> 60 == 15)
  {
    goto LABEL_67;
  }

  sub_1B7228588(v61, v60);
  sub_1B7228588(v64, v63);
  LODWORD(v108) = sub_1B73FC434(v61, v60, v64, v63);
  sub_1B72380B8(v64, v63);
  sub_1B72380B8(v61, v60);
  if ((v108 & 1) == 0)
  {
    return 0;
  }

LABEL_69:
  v65 = v105[15];
  v66 = *(v20 + 48);
  sub_1B7205588(a1 + v65, v23, &unk_1EB994C70);
  sub_1B7205588(a2 + v65, &v23[v66], &unk_1EB994C70);
  v67 = v106;
  if (v106(v23, 1, v9) == 1)
  {
    if (v67(&v23[v66], 1, v9) == 1)
    {
      sub_1B7205418(v23, &unk_1EB994C70);
      goto LABEL_76;
    }

    goto LABEL_74;
  }

  sub_1B7205588(v23, v14, &unk_1EB994C70);
  if (v67(&v23[v66], 1, v9) == 1)
  {
    (*(v116 + 8))(v14, v9);
LABEL_74:
    v37 = &qword_1EB991C30;
    v38 = v23;
    goto LABEL_42;
  }

  v68 = v116;
  v69 = &v23[v66];
  v70 = v115;
  (*(v116 + 32))(v115, v69, v9);
  sub_1B72FA358(&qword_1EB990310, MEMORY[0x1E6968FB0]);
  v71 = sub_1B7800828();
  v72 = *(v68 + 8);
  v72(v70, v9);
  v72(v14, v9);
  sub_1B7205418(v23, &unk_1EB994C70);
  if ((v71 & 1) == 0)
  {
    return 0;
  }

LABEL_76:
  v73 = v105[16];
  v74 = *(v111 + 48);
  v75 = v114;
  sub_1B7205588(a1 + v73, v114, &qword_1EB98EBD0);
  sub_1B7205588(a2 + v73, &v75[v74], &qword_1EB98EBD0);
  v76 = *(v112 + 48);
  if (v76(v75, 1, v113) == 1)
  {
    if (v76(&v114[v74], 1, v113) == 1)
    {
      sub_1B7205418(v114, &qword_1EB98EBD0);
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  v77 = v114;
  sub_1B7205588(v114, v110, &qword_1EB98EBD0);
  if (v76(&v77[v74], 1, v113) == 1)
  {
    (*(v112 + 8))(v110, v113);
LABEL_81:
    v37 = &qword_1EB98FCE0;
    v38 = v114;
    goto LABEL_42;
  }

  v78 = v112;
  v79 = v114;
  v80 = &v114[v74];
  v81 = v109;
  v82 = v113;
  (*(v112 + 32))(v109, v80, v113);
  sub_1B72FA358(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v83 = v110;
  v84 = sub_1B7800828();
  v85 = *(v78 + 8);
  v85(v81, v82);
  v85(v83, v82);
  sub_1B7205418(v79, &qword_1EB98EBD0);
  if ((v84 & 1) == 0)
  {
    return 0;
  }

LABEL_83:
  if (*(a1 + v105[17]) != *(a2 + v105[17]))
  {
    return 0;
  }

  v86 = v105[18];
  v87 = (a1 + v86);
  v88 = *(a1 + v86 + 8);
  v89 = (a2 + v86);
  v90 = *(a2 + v86 + 8);
  if (v88)
  {
    if (!v90)
    {
      return 0;
    }
  }

  else
  {
    if (*v87 != *v89)
    {
      LOBYTE(v90) = 1;
    }

    if (v90)
    {
      return 0;
    }
  }

  v91 = v105[19];
  v92 = (a1 + v91);
  v93 = *(a1 + v91 + 8);
  v94 = (a2 + v91);
  v95 = *(a2 + v91 + 8);
  if (v93)
  {
    if (!v95)
    {
      return 0;
    }
  }

  else
  {
    if (*v92 != *v94)
    {
      LOBYTE(v95) = 1;
    }

    if (v95)
    {
      return 0;
    }
  }

  v96 = v105[20];
  v97 = *(a1 + v96);
  v98 = *(a2 + v96);
  if (!v97)
  {
    return !v98;
  }

  if (!v98)
  {
    return 0;
  }

  sub_1B7205540(0, &qword_1EDAFC4C0);
  v99 = v97;
  v100 = v98;
  v101 = sub_1B7801558();

  return (v101 & 1) != 0;
}

unint64_t sub_1B75D76D0()
{
  result = qword_1EB998D78;
  if (!qword_1EB998D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998D78);
  }

  return result;
}

unint64_t sub_1B75D7724()
{
  result = qword_1EB998D80;
  if (!qword_1EB998D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998D80);
  }

  return result;
}

unint64_t sub_1B75D7778()
{
  result = qword_1EB998DA0;
  if (!qword_1EB998DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998DA0);
  }

  return result;
}

uint64_t sub_1B75D77CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB998D88);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B75D781C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B75D788C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B75D7914()
{
  sub_1B72F2CB8(319, &qword_1EDAFD2C0);
  if (v0 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EB998DC0);
    if (v1 <= 0x3F)
    {
      sub_1B72FA020(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0]);
      if (v2 <= 0x3F)
      {
        sub_1B72F2CB8(319, &qword_1EB998DC8);
        if (v3 <= 0x3F)
        {
          sub_1B72F2CB8(319, &qword_1EB991370);
          if (v4 <= 0x3F)
          {
            sub_1B72FA020(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
            if (v5 <= 0x3F)
            {
              sub_1B72F2CB8(319, &qword_1EDAFA070);
              if (v6 <= 0x3F)
              {
                sub_1B75D7AEC();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B75D7AEC()
{
  if (!qword_1EB998DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB998D88);
    v0 = sub_1B7801768();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB998DD0);
    }
  }
}

uint64_t getEnumTagSinglePayload for TransactionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransactionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B75D7CA4()
{
  result = qword_1EB998DD8;
  if (!qword_1EB998DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998DD8);
  }

  return result;
}

unint64_t sub_1B75D7CFC()
{
  result = qword_1EB998DE0;
  if (!qword_1EB998DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998DE0);
  }

  return result;
}

unint64_t sub_1B75D7D54()
{
  result = qword_1EB998DE8;
  if (!qword_1EB998DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998DE8);
  }

  return result;
}

uint64_t sub_1B75D7DA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632941 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6564496563616C70 && a2 == 0xEF7265696669746ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B7885060 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x67616D496F726568 && a2 == 0xEC0000004C525565 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B78824A0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x657461437370616DLL && a2 == 0xEC00000079726F67 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B78824E0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7882500 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7373656E69737562 && a2 == 0xEF4C525574616843 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7882520 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x646E617242736168 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7886280 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B78862A0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B78862C0 == a2)
  {

    return 16;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_1B75D8320(uint64_t a1)
{
  v2 = sub_1B75D8F3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75D835C(uint64_t a1)
{
  v2 = sub_1B75D8F3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75D8398()
{
  v1 = *v0;
  v2 = 0x676E69646E6570;
  v3 = 0x6465646E75666572;
  v4 = 0x64656E696C636564;
  if (v1 != 4)
  {
    v4 = 0x646564696F76;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7A69726F68747561;
  if (v1 != 1)
  {
    v5 = 1684627824;
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

uint64_t sub_1B75D844C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B75D9DC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B75D8474(uint64_t a1)
{
  v2 = sub_1B75D8D98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75D84B0(uint64_t a1)
{
  v2 = sub_1B75D8D98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75D84EC(uint64_t a1)
{
  v2 = sub_1B75D8E40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75D8528(uint64_t a1)
{
  v2 = sub_1B75D8E40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75D8564(uint64_t a1)
{
  v2 = sub_1B75D8EE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75D85A0(uint64_t a1)
{
  v2 = sub_1B75D8EE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75D85DC(uint64_t a1)
{
  v2 = sub_1B75D8F90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75D8618(uint64_t a1)
{
  v2 = sub_1B75D8F90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75D8654(uint64_t a1)
{
  v2 = sub_1B75D8E94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75D8690(uint64_t a1)
{
  v2 = sub_1B75D8E94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75D86CC(uint64_t a1)
{
  v2 = sub_1B75D8DEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75D8708(uint64_t a1)
{
  v2 = sub_1B75D8DEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OrderPaymentStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t OrderPaymentStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998DF0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998DF8);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E00);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E08);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E10);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E18);
  v26 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E20);
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75D8D98();
  sub_1B78023F8();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_1B75D8E94();
      v21 = v33;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_1B75D8E40();
      v21 = v36;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_1B75D8DEC();
      v21 = v39;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_1B75D8F3C();
      v21 = v27;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_1B75D8EE8();
      v21 = v30;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_1B75D8F90();
  v22 = v42;
  sub_1B7801ED8();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

unint64_t sub_1B75D8D98()
{
  result = qword_1EB998E28;
  if (!qword_1EB998E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998E28);
  }

  return result;
}

unint64_t sub_1B75D8DEC()
{
  result = qword_1EB998E30;
  if (!qword_1EB998E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998E30);
  }

  return result;
}

unint64_t sub_1B75D8E40()
{
  result = qword_1EB998E38;
  if (!qword_1EB998E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998E38);
  }

  return result;
}

unint64_t sub_1B75D8E94()
{
  result = qword_1EB998E40;
  if (!qword_1EB998E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998E40);
  }

  return result;
}

unint64_t sub_1B75D8EE8()
{
  result = qword_1EB998E48;
  if (!qword_1EB998E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998E48);
  }

  return result;
}

unint64_t sub_1B75D8F3C()
{
  result = qword_1EB998E50;
  if (!qword_1EB998E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998E50);
  }

  return result;
}

unint64_t sub_1B75D8F90()
{
  result = qword_1EB998E58;
  if (!qword_1EB998E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998E58);
  }

  return result;
}

uint64_t OrderPaymentStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E60);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E68);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v39 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E70);
  v46 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v53 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E78);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E80);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E88);
  v40 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998E90);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1B75D8D98();
  v22 = v56;
  sub_1B78023C8();
  if (!v22)
  {
    v23 = v16;
    v39 = v14;
    v56 = v13;
    v25 = v53;
    v24 = v54;
    v26 = v55;
    v27 = sub_1B7801E98();
    v28 = (2 * *(v27 + 16)) | 1;
    v58 = v27;
    v59 = v27 + 32;
    v60 = 0;
    v61 = v28;
    v29 = sub_1B721CE5C();
    v30 = v20;
    if (v29 == 6 || v60 != v61 >> 1)
    {
      v34 = sub_1B7801B18();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v36 = &type metadata for OrderPaymentStatus;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v18 + 8))(v20, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = v29;
      if (v29 > 2u)
      {
        v38 = v52;
        if (v29 == 3)
        {
          v63 = 3;
          sub_1B75D8E94();
          sub_1B7801D38();
          (*(v46 + 8))(v25, v41);
        }

        else if (v29 == 4)
        {
          v63 = 4;
          sub_1B75D8E40();
          sub_1B7801D38();
          (*(v48 + 8))(v24, v47);
        }

        else
        {
          v63 = 5;
          sub_1B75D8DEC();
          sub_1B7801D38();
          (*(v49 + 8))(v26, v50);
        }

        (*(v18 + 8))(v30, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v29)
        {
          if (v29 == 1)
          {
            v63 = 1;
            sub_1B75D8F3C();
            v31 = v56;
            sub_1B7801D38();
            v33 = v42;
            v32 = v43;
          }

          else
          {
            v63 = 2;
            sub_1B75D8EE8();
            v31 = v51;
            sub_1B7801D38();
            v33 = v44;
            v32 = v45;
          }

          (*(v33 + 8))(v31, v32);
        }

        else
        {
          v63 = 0;
          sub_1B75D8F90();
          sub_1B7801D38();
          (*(v40 + 8))(v23, v39);
        }

        (*(v18 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v38 = v52;
      }

      *v38 = v62;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

unint64_t sub_1B75D979C()
{
  result = qword_1EB998E98;
  if (!qword_1EB998E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998E98);
  }

  return result;
}

unint64_t sub_1B75D98A4()
{
  result = qword_1EB998EA0;
  if (!qword_1EB998EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998EA0);
  }

  return result;
}

unint64_t sub_1B75D98FC()
{
  result = qword_1EB998EA8;
  if (!qword_1EB998EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998EA8);
  }

  return result;
}

unint64_t sub_1B75D9954()
{
  result = qword_1EB998EB0;
  if (!qword_1EB998EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998EB0);
  }

  return result;
}

unint64_t sub_1B75D99AC()
{
  result = qword_1EB998EB8;
  if (!qword_1EB998EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998EB8);
  }

  return result;
}

unint64_t sub_1B75D9A04()
{
  result = qword_1EB998EC0;
  if (!qword_1EB998EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998EC0);
  }

  return result;
}

unint64_t sub_1B75D9A5C()
{
  result = qword_1EB998EC8;
  if (!qword_1EB998EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998EC8);
  }

  return result;
}

unint64_t sub_1B75D9AB4()
{
  result = qword_1EB998ED0;
  if (!qword_1EB998ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998ED0);
  }

  return result;
}

unint64_t sub_1B75D9B0C()
{
  result = qword_1EB998ED8;
  if (!qword_1EB998ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998ED8);
  }

  return result;
}

unint64_t sub_1B75D9B64()
{
  result = qword_1EB998EE0;
  if (!qword_1EB998EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998EE0);
  }

  return result;
}

unint64_t sub_1B75D9BBC()
{
  result = qword_1EB998EE8;
  if (!qword_1EB998EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998EE8);
  }

  return result;
}

unint64_t sub_1B75D9C14()
{
  result = qword_1EB998EF0;
  if (!qword_1EB998EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998EF0);
  }

  return result;
}

unint64_t sub_1B75D9C6C()
{
  result = qword_1EB998EF8;
  if (!qword_1EB998EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998EF8);
  }

  return result;
}

unint64_t sub_1B75D9CC4()
{
  result = qword_1EB998F00;
  if (!qword_1EB998F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998F00);
  }

  return result;
}

unint64_t sub_1B75D9D1C()
{
  result = qword_1EB998F08;
  if (!qword_1EB998F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998F08);
  }

  return result;
}

unint64_t sub_1B75D9D74()
{
  result = qword_1EB998F10;
  if (!qword_1EB998F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998F10);
  }

  return result;
}

uint64_t sub_1B75D9DC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E6570 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7A69726F68747561 && a2 == 0xEA00000000006465 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684627824 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465646E75666572 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656E696C636564 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646564696F76 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B78020F8();

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

void sub_1B75DA01C(void *a1, uint64_t a2, uint64_t a3)
{
  ManagedInternalTransaction.createOrMergeInsightsIfNeeded(in:)(a3);
  if (!v3)
  {
    v7 = v6;
    v8 = [v6 contactInsightObject];
    if (!v8)
    {
      type metadata accessor for ManagedContactTransactionInsight();
      v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      [v7 setContactInsightObject_];
    }

    v9 = [a1 peerPaymentCounterpartHandle];
    if (v9)
    {
      v10 = v9;
      [v8 setPeerPaymentCounterpartHandle_];
    }
  }
}

uint64_t BankConnectService.loadPaymentInfo(for:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = type metadata accessor for BankConnectService.Message();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B75DA1E4, 0, 0);
}

uint64_t sub_1B75DA1E4()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[10];
  v0[15] = *(v0[12] + 16);
  *v1 = v3;
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B726B820, 0, 0);
}

uint64_t BankConnectService.loadPaymentInfo(for:)(uint64_t *a1)
{
  *(v2 + 80) = v1;
  *(v2 + 88) = type metadata accessor for BankConnectService.Message();
  v4 = swift_task_alloc();
  v5 = *a1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v5;
  *(v2 + 112) = *(a1 + 1);
  *(v2 + 128) = a1[3];

  return MEMORY[0x1EEE6DFA0](sub_1B75DA31C, 0, 0);
}

uint64_t sub_1B75DA31C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v0[17] = *(v0[10] + 16);
  *v5 = v3;
  v5[1] = v4;
  v5[2] = v1;
  v5[3] = v2;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B726BC10, 0, 0);
}

uint64_t sub_1B75DA3C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B723838C;

  return BankConnectService.loadPaymentInfo(for:)(a1, a2);
}

uint64_t sub_1B75DA468(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7201BB0;

  return BankConnectService.loadPaymentInfo(for:)(a1);
}

uint64_t dispatch thunk of BankConnectPaymentInfoUpdating.loadPaymentInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B723838C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of BankConnectPaymentInfoUpdating.loadPaymentInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7201BB0;

  return v9(a1, a2, a3);
}

id MapsHeroImageResult.Entity.xpcValue.getter()
{
  v1 = *v0;
  v2 = type metadata accessor for MapsHeroImageResult.Entity.XPC();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR___XPCMapsHeroImageResultEntity_value] = v1;
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MapsHeroImageResult.xpcValue.getter()
{
  v1 = type metadata accessor for MapsHeroImageResult(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B75DBEA8(v0, v3);
  v4 = type metadata accessor for MapsHeroImageResult.XPC(0);
  v5 = objc_allocWithZone(v4);
  sub_1B75DBEA8(v3, v5 + OBJC_IVAR___XPCMapsHeroImageResult_value);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_1B74C00F8(v3);
  return v6;
}

uint64_t sub_1B75DA88C(uint64_t a1)
{
  v2 = sub_1B75DBFD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75DA8C8(uint64_t a1)
{
  v2 = sub_1B75DBFD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75DA904(uint64_t a1)
{
  v2 = sub_1B75DBF2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75DA940(uint64_t a1)
{
  v2 = sub_1B75DBF2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75DA97C(uint64_t a1)
{
  v2 = sub_1B75DBF80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75DA9B8(uint64_t a1)
{
  v2 = sub_1B75DBF80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MapsHeroImageResult.Entity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998F28);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998F30);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998F38);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75DBF2C();
  sub_1B78023F8();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1B75DBF80();
    v14 = v18;
    sub_1B7801ED8();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1B75DBFD4();
    sub_1B7801ED8();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t MapsHeroImageResult.Entity.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t MapsHeroImageResult.Entity.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998F58);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998F60);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB998F68);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75DBF2C();
  v12 = v31;
  sub_1B78023C8();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1B7801E98();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1B721CE4C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1B7801B18();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v22 = &type metadata for MapsHeroImageResult.Entity;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1B75DBF80();
        sub_1B7801D38();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1B75DBFD4();
        sub_1B7801D38();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t MapsHeroImageResult.init(attributionName:url:entity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X8>)
{
  v7 = *a4;
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for MapsHeroImageResult(0);
  v9 = *(v8 + 20);
  v10 = sub_1B77FF4F8();
  result = (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  a5[*(v8 + 24)] = v7;
  return result;
}

uint64_t sub_1B75DB298()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 0x797469746E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7475626972747461;
  }
}

uint64_t sub_1B75DB2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B75DC8CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B75DB31C(uint64_t a1)
{
  v2 = sub_1B75DC2BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75DB358(uint64_t a1)
{
  v2 = sub_1B75DC2BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MapsHeroImageResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998F78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75DC2BC();
  sub_1B78023F8();
  v11[15] = 0;
  sub_1B7801EF8();
  if (!v2)
  {
    v9 = type metadata accessor for MapsHeroImageResult(0);
    v11[14] = 1;
    sub_1B77FF4F8();
    sub_1B7535C74(&qword_1EB98F700);
    sub_1B7801FC8();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_1B720A3DC();
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MapsHeroImageResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v24 = sub_1B77FF4F8();
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998F88);
  v6 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v8 = &v19 - v7;
  v23 = type metadata accessor for MapsHeroImageResult(0);
  MEMORY[0x1EEE9AC00](v23);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75DC2BC();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v19 = v6;
    v28 = 0;
    *v10 = sub_1B7801D78();
    v10[1] = v11;
    v27 = 1;
    sub_1B7535C74(&qword_1EB98F730);
    v12 = v5;
    v13 = v24;
    sub_1B7801E48();
    v14 = v10;
    v15 = v23;
    v16 = v14;
    (*(v22 + 32))(v14 + *(v23 + 20), v12, v13);
    v25 = 2;
    sub_1B720A430();
    v17 = v21;
    sub_1B7801E48();
    (*(v19 + 8))(v8, v17);
    *(v16 + *(v15 + 24)) = v26;
    sub_1B75DBEA8(v16, v20);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B74C00F8(v16);
  }
}

id MapsHeroImageResult.XPC.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B75DBEA8(a1, v3 + OBJC_IVAR___XPCMapsHeroImageResult_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B74C00F8(a1);
  return v4;
}

id MapsHeroImageResult.XPC.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1B75DBEA8(a1, v1 + OBJC_IVAR___XPCMapsHeroImageResult_value);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B74C00F8(a1);
  return v4;
}

id MapsHeroImageResult.XPC.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1B7208F0C(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id MapsHeroImageResult.XPC.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1B7208F0C(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id MapsHeroImageResult.XPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1B75DBD34(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B75DBEA8(a1, v3 + OBJC_IVAR___XPCMapsHeroImageResult_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B74C00F8(a1);
  return v4;
}

id MapsHeroImageResult.Entity.XPC.__allocating_init(value:)(_BYTE *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___XPCMapsHeroImageResultEntity_value] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MapsHeroImageResult.Entity.XPC.init(value:)(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___XPCMapsHeroImageResultEntity_value] = *a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B75DBEA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsHeroImageResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B75DBF2C()
{
  result = qword_1EB998F40;
  if (!qword_1EB998F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998F40);
  }

  return result;
}

unint64_t sub_1B75DBF80()
{
  result = qword_1EB998F48;
  if (!qword_1EB998F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998F48);
  }

  return result;
}

unint64_t sub_1B75DBFD4()
{
  result = qword_1EB998F50;
  if (!qword_1EB998F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998F50);
  }

  return result;
}

id MapsHeroImageResult.Entity.XPC.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1B720922C(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id MapsHeroImageResult.Entity.XPC.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1B720922C(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id sub_1B75DC1C8(char *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___XPCMapsHeroImageResultEntity_value] = v2;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t _s10FinanceKit19MapsHeroImageResultV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_12;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v5)
  {
LABEL_12:
    v8 = 0;
    return v8 & 1;
  }

  v7 = type metadata accessor for MapsHeroImageResult(0);
  if ((sub_1B77FF458() & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = *(a1 + *(v7 + 24)) ^ *(a2 + *(v7 + 24)) ^ 1;
  return v8 & 1;
}

unint64_t sub_1B75DC2BC()
{
  result = qword_1EB998F80;
  if (!qword_1EB998F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998F80);
  }

  return result;
}

unint64_t sub_1B75DC314()
{
  result = qword_1EB998F90;
  if (!qword_1EB998F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998F90);
  }

  return result;
}

void sub_1B75DC390()
{
  sub_1B7280028();
  if (v0 <= 0x3F)
  {
    sub_1B77FF4F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B75DC434()
{
  result = type metadata accessor for MapsHeroImageResult(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B75DC560()
{
  result = qword_1EB998FC8;
  if (!qword_1EB998FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998FC8);
  }

  return result;
}

unint64_t sub_1B75DC5B8()
{
  result = qword_1EB998FD0;
  if (!qword_1EB998FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998FD0);
  }

  return result;
}

unint64_t sub_1B75DC610()
{
  result = qword_1EB998FD8;
  if (!qword_1EB998FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998FD8);
  }

  return result;
}

unint64_t sub_1B75DC668()
{
  result = qword_1EB998FE0;
  if (!qword_1EB998FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998FE0);
  }

  return result;
}

unint64_t sub_1B75DC6C0()
{
  result = qword_1EB998FE8;
  if (!qword_1EB998FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998FE8);
  }

  return result;
}

unint64_t sub_1B75DC718()
{
  result = qword_1EB998FF0;
  if (!qword_1EB998FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998FF0);
  }

  return result;
}

unint64_t sub_1B75DC770()
{
  result = qword_1EB998FF8;
  if (!qword_1EB998FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998FF8);
  }

  return result;
}

unint64_t sub_1B75DC7C8()
{
  result = qword_1EB999000;
  if (!qword_1EB999000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999000);
  }

  return result;
}

unint64_t sub_1B75DC820()
{
  result = qword_1EB999008;
  if (!qword_1EB999008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999008);
  }

  return result;
}

unint64_t sub_1B75DC878()
{
  result = qword_1EB999010;
  if (!qword_1EB999010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999010);
  }

  return result;
}

uint64_t sub_1B75DC8CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475626972747461 && a2 == 0xEF656D614E6E6F69;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469746E65 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

id ManagedCascadeExtractedOrderTransaction.__allocating_init(_:positionIndex:context:)(uint64_t a1, __int16 a2, void *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v18 = *(a1 + 64);
  v9 = *(a1 + 80);
  v10 = [objc_allocWithZone(v3) initWithContext_];
  v11 = v10;
  if (v5)
  {

    v12 = sub_1B7800838();
  }

  else
  {
    v12 = 0;
  }

  [v10 setAmount_];

  if (v6)
  {

    v13 = sub_1B7800838();
  }

  else
  {
    v13 = 0;
  }

  [v10 setCurrencyCode_];

  if (v7)
  {

    v14 = sub_1B7800838();
  }

  else
  {
    v14 = 0;
  }

  [v10 setPaymentMethodDisplayName_];

  if (v8)
  {

    v15 = sub_1B7800838();
  }

  else
  {
    v15 = 0;
  }

  [v10 setPaymentMethodLastFourDigits_];

  [v10 setPaymentMethodIsApplePay_];
  if (v9)
  {

    v16 = sub_1B7800838();
    swift_bridgeObjectRelease_n();
  }

  else
  {

    v16 = 0;
  }

  [v10 setTransactionIdentifier_];

  [v10 setPositionIndex_];
  return v10;
}

id ManagedCascadeExtractedOrderTransaction.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedCascadeExtractedOrderTransaction.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedCascadeExtractedOrderTransaction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Date.FormatStyle.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1B77FF378();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1B77FFCF8();
  v5 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1B77FFC88();
  v8 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B77FFAF8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99D700);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v25 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B18);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v25 - v19;
  v21 = sub_1B77FF648();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = sub_1B77FF628();
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  (*(v12 + 16))(v14, a1, v11);
  v23 = type metadata accessor for FormatterConfiguration();
  (*(v8 + 16))(v10, a1 + *(v23 + 20), v25);
  (*(v5 + 16))(v7, a1 + *(v23 + 24), v26);
  sub_1B77FF368();
  sub_1B77FF668();
  return sub_1B75DE448(a1, type metadata accessor for FormatterConfiguration);
}

uint64_t sub_1B75DD1AC(uint64_t a1)
{
  v2 = sub_1B75DD5C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75DD1E8(uint64_t a1)
{
  v2 = sub_1B75DD5C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75DD224(uint64_t a1)
{
  v2 = sub_1B75DD66C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75DD260(uint64_t a1)
{
  v2 = sub_1B75DD66C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75DD29C(uint64_t a1)
{
  v2 = sub_1B75DD618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75DD2D8(uint64_t a1)
{
  v2 = sub_1B75DD618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.DateAndTimeFormatter.Style.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999020);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999028);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999030);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75DD5C4();
  sub_1B78023F8();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1B75DD618();
    v14 = v18;
    sub_1B7801ED8();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1B75DD66C();
    sub_1B7801ED8();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1B75DD5C4()
{
  result = qword_1EB999038;
  if (!qword_1EB999038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999038);
  }

  return result;
}

unint64_t sub_1B75DD618()
{
  result = qword_1EB999040;
  if (!qword_1EB999040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999040);
  }

  return result;
}

unint64_t sub_1B75DD66C()
{
  result = qword_1EB999048;
  if (!qword_1EB999048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999048);
  }

  return result;
}

uint64_t Order.DateAndTimeFormatter.Style.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t Order.DateAndTimeFormatter.Style.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999050);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999058);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999060);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75DD5C4();
  v12 = v31;
  sub_1B78023C8();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1B7801E98();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1B721CE4C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1B7801B18();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v22 = &type metadata for Order.DateAndTimeFormatter.Style;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1B75DD618();
        sub_1B7801D38();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1B75DD66C();
        sub_1B7801D38();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t Order.DateAndTimeFormatter.style.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Order.DateAndTimeFormatter(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t Order.DateAndTimeFormatter.style.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Order.DateAndTimeFormatter(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t Order.DateAndTimeFormatter.dateStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Order.DateAndTimeFormatter(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t Order.DateAndTimeFormatter.dateStyle.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Order.DateAndTimeFormatter(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t Order.DateAndTimeFormatter.init(configuration:style:dateStyle:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  sub_1B77FFA68();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  v8 = type metadata accessor for Order.DateAndTimeFormatter(0);
  *(a4 + *(v8 + 20)) = v6;
  *(a4 + *(v8 + 24)) = v7;

  return sub_1B72A2B9C(a1, a4);
}

uint64_t Order.DateAndTimeFormatter.format(_:now:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = a2;
  v46 = a1;
  v4 = sub_1B77FFC68();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1B77FF988();
  v6 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Order.TimeFormatter(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SingleDateFormatter();
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B75E08BC(v3, v18, type metadata accessor for FormatterConfiguration);
  v19 = type metadata accessor for Order.DateAndTimeFormatter(0);
  v18[*(v16 + 28)] = *(v3 + *(v19 + 24));
  v20 = v46;
  v48 = SingleDateFormatter.format(_:now:)(v46, v49);
  v49 = v21;
  sub_1B75DE448(v18, type metadata accessor for SingleDateFormatter);
  sub_1B75E08BC(v3, v11, type metadata accessor for FormatterConfiguration);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  sub_1B72A2B9C(v11, v14);
  sub_1B77FF938();
  v45 = Order.TimeFormatter.format(_:now:)(v20);
  v23 = v22;
  (*(v6 + 8))(v8, v47);
  sub_1B75DE448(v14, type metadata accessor for Order.TimeFormatter);
  v25 = v50;
  v24 = v51;
  v26 = v52;
  (*(v51 + 104))(v50, *MEMORY[0x1E6969A58], v52);
  v27 = sub_1B77FFC78();
  (*(v24 + 8))(v25, v26);
  if (*(v3 + *(v19 + 20)) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1B7808C50;
    v29 = MEMORY[0x1E69E6158];
    *(v28 + 56) = MEMORY[0x1E69E6158];
    v30 = sub_1B721FF04();
    v31 = v49;
    *(v28 + 32) = v48;
    *(v28 + 40) = v31;
    *(v28 + 96) = v29;
    *(v28 + 104) = v30;
    v32 = v45;
    *(v28 + 64) = v30;
    *(v28 + 72) = v32;
    *(v28 + 80) = v23;
    if (v27 == 1)
    {
      if (qword_1EDAF93A8 != -1)
      {
        swift_once();
      }

      v33 = qword_1EDAF93B0;
    }

    else
    {
      if (qword_1EDAF93A8 != -1)
      {
        swift_once();
      }

      v33 = qword_1EDAF93B0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1B7808C50;
    v35 = MEMORY[0x1E69E6158];
    *(v34 + 56) = MEMORY[0x1E69E6158];
    v36 = sub_1B721FF04();
    v37 = v49;
    *(v34 + 32) = v48;
    *(v34 + 40) = v37;
    *(v34 + 96) = v35;
    *(v34 + 104) = v36;
    v38 = v45;
    *(v34 + 64) = v36;
    *(v34 + 72) = v38;
    *(v34 + 80) = v23;
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v33 = qword_1EDAF93B0;
  }

  v39 = sub_1B7800838();
  v40 = sub_1B7800838();
  v41 = sub_1B7800838();
  v42 = [v33 localizedStringForKey:v39 value:v40 table:v41];

  sub_1B7800868();
  v43 = sub_1B78008A8();

  return v43;
}

uint64_t sub_1B75DE448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Order.TimeFormatter.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B77FFA68();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFBC8();
  sub_1B77FFCC8();

  return sub_1B72A2B9C(a1, a2);
}

uint64_t sub_1B75DE518()
{
  v1 = 0x656C797473;
  if (*v0 != 1)
  {
    v1 = 0x6C79745365746164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72756769666E6F63;
  }
}

uint64_t sub_1B75DE580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B75E126C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B75DE5A8(uint64_t a1)
{
  v2 = sub_1B75E0778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75DE5E4(uint64_t a1)
{
  v2 = sub_1B75E0778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.DateAndTimeFormatter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999068);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75E0778();
  sub_1B78023F8();
  v11[15] = 0;
  type metadata accessor for FormatterConfiguration();
  sub_1B75E0820(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = type metadata accessor for Order.DateAndTimeFormatter(0);
    v11[14] = *(v3 + *(v9 + 20));
    v11[13] = 1;
    sub_1B75E07CC();
    sub_1B7801FC8();
    v11[12] = *(v3 + *(v9 + 24));
    v11[11] = 2;
    sub_1B7442868();
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Order.DateAndTimeFormatter.hash(into:)()
{
  sub_1B77FFAF8();
  sub_1B75E0820(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B75E0820(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75E0820(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  v1 = type metadata accessor for Order.DateAndTimeFormatter(0);
  MEMORY[0x1B8CA6620](*(v0 + *(v1 + 20)));
  return MEMORY[0x1B8CA6620](*(v0 + *(v1 + 24)));
}

uint64_t Order.DateAndTimeFormatter.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B75E0820(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B75E0820(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75E0820(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  v1 = type metadata accessor for Order.DateAndTimeFormatter(0);
  MEMORY[0x1B8CA6620](*(v0 + *(v1 + 20)));
  MEMORY[0x1B8CA6620](*(v0 + *(v1 + 24)));
  return sub_1B7802368();
}

uint64_t Order.DateAndTimeFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999080);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for Order.DateAndTimeFormatter(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75E0778();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = type metadata accessor for FormatterConfiguration;
  }

  else
  {
    v12 = v17;
    v24 = 0;
    sub_1B75E0820(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
    v13 = v18;
    sub_1B7801E48();
    sub_1B72A2B9C(v19, v11);
    v22 = 1;
    sub_1B75E0868();
    sub_1B7801E48();
    v11[*(v9 + 20)] = v23;
    v20 = 2;
    sub_1B74428BC();
    sub_1B7801E48();
    (*(v12 + 8))(v8, v13);
    v11[*(v9 + 24)] = v21;
    sub_1B75E08BC(v11, v16, type metadata accessor for Order.DateAndTimeFormatter);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = type metadata accessor for Order.DateAndTimeFormatter;
  }

  return sub_1B75DE448(v11, v15);
}

uint64_t sub_1B75DEE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Order.DateAndTimeFormatter.format(_:now:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B75DEEA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v8 = Order.DateAndTimeFormatter.format(_:now:)(a1, v7);
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  return result;
}

uint64_t sub_1B75DEFC0(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B75E0820(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B75E0820(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75E0820(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  MEMORY[0x1B8CA6620](*(v1 + *(a1 + 20)));
  MEMORY[0x1B8CA6620](*(v1 + *(a1 + 24)));
  return sub_1B7802368();
}

uint64_t sub_1B75DF13C(uint64_t a1, uint64_t a2)
{
  sub_1B77FFAF8();
  sub_1B75E0820(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B75E0820(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75E0820(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  MEMORY[0x1B8CA6620](*(v2 + *(a2 + 20)));
  return MEMORY[0x1B8CA6620](*(v2 + *(a2 + 24)));
}

uint64_t sub_1B75DF29C(uint64_t a1, uint64_t a2)
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B75E0820(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B75E0820(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75E0820(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  MEMORY[0x1B8CA6620](*(v2 + *(a2 + 20)));
  MEMORY[0x1B8CA6620](*(v2 + *(a2 + 24)));
  return sub_1B7802368();
}

uint64_t Order.TimeFormatter.format(_:now:)(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1B77FF378();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B77FFCF8();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1B77FFC88();
  v7 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B77FFAF8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99D700);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B18);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28 - v17;
  v19 = sub_1B77FF7D8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B77FF648();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  sub_1B77FF618();
  v24 = sub_1B77FF628();
  (*(*(v24 - 8) + 56))(v15, 0, 1, v24);
  (*(v10 + 16))(v12, v2, v9);
  v25 = type metadata accessor for FormatterConfiguration();
  (*(v7 + 16))(v29, v2 + *(v25 + 20), v30);
  (*(v32 + 16))(v31, v2 + *(v25 + 24), v33);
  sub_1B77FF368();
  sub_1B77FF668();
  v26 = sub_1B77FF788();
  (*(v20 + 8))(v22, v19);
  return v26;
}

BOOL static Order.TimeFormatter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (MEMORY[0x1B8CA3D90]())
  {
    v4 = type metadata accessor for FormatterConfiguration();
    if (MEMORY[0x1B8CA3EF0](a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) != 0 && (MEMORY[0x1B8CA3FF0](a1 + *(v4 + 24), a2 + *(v4 + 24)))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B75DF948(uint64_t a1)
{
  v2 = sub_1B75E0924();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75DF984(uint64_t a1)
{
  v2 = sub_1B75E0924();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.TimeFormatter.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999090);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75E0924();
  sub_1B78023F8();
  type metadata accessor for FormatterConfiguration();
  sub_1B75E0820(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Order.TimeFormatter.hash(into:)()
{
  sub_1B77FFAF8();
  sub_1B75E0820(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B75E0820(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75E0820(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  return sub_1B7800768();
}

uint64_t Order.TimeFormatter.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B75E0820(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B75E0820(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75E0820(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t Order.TimeFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v3 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9990A0);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Order.TimeFormatter(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75E0924();
  v12 = v17;
  sub_1B78023C8();
  if (!v12)
  {
    v13 = v15;
    sub_1B75E0820(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
    sub_1B7801E48();
    (*(v16 + 8))(v8, v6);
    sub_1B72A2B9C(v5, v11);
    sub_1B75E08BC(v11, v13, type metadata accessor for Order.TimeFormatter);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B75DE448(v11, type metadata accessor for Order.TimeFormatter);
}

uint64_t sub_1B75E005C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Order.TimeFormatter.format(_:now:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B75E0084@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v8 = Order.TimeFormatter.format(_:now:)(a1);
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  return result;
}

uint64_t sub_1B75E0180(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999090);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75E0924();
  sub_1B78023F8();
  type metadata accessor for FormatterConfiguration();
  sub_1B75E0820(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B75E02F8()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B75E0820(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B75E0820(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75E0820(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B75E0448()
{
  sub_1B77FFAF8();
  sub_1B75E0820(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B75E0820(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75E0820(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  return sub_1B7800768();
}

uint64_t sub_1B75E0588()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B75E0820(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B75E0820(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B75E0820(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t _s10FinanceKit5OrderV20DateAndTimeFormatterV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1B8CA3D90]() & 1) != 0 && (v4 = type metadata accessor for FormatterConfiguration(), (MEMORY[0x1B8CA3EF0](a1 + *(v4 + 20), a2 + *(v4 + 20))) && (MEMORY[0x1B8CA3FF0](a1 + *(v4 + 24), a2 + *(v4 + 24)) & 1) != 0 && (v5 = type metadata accessor for Order.DateAndTimeFormatter(0), *(a1 + *(v5 + 20)) == *(a2 + *(v5 + 20))))
  {
    v6 = *(a1 + *(v5 + 24)) ^ *(a2 + *(v5 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_1B75E0778()
{
  result = qword_1EB999070;
  if (!qword_1EB999070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999070);
  }

  return result;
}

unint64_t sub_1B75E07CC()
{
  result = qword_1EB999078;
  if (!qword_1EB999078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999078);
  }

  return result;
}

uint64_t sub_1B75E0820(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B75E0868()
{
  result = qword_1EB999088;
  if (!qword_1EB999088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999088);
  }

  return result;
}

uint64_t sub_1B75E08BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B75E0924()
{
  result = qword_1EB999098;
  if (!qword_1EB999098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999098);
  }

  return result;
}

unint64_t sub_1B75E097C()
{
  result = qword_1EB9990A8;
  if (!qword_1EB9990A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9990A8);
  }

  return result;
}

uint64_t sub_1B75E09D0(uint64_t a1)
{
  result = sub_1B75E0820(&qword_1EB9990B0, type metadata accessor for Order.DateAndTimeFormatter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B75E0B48(uint64_t a1)
{
  result = sub_1B75E0820(&qword_1EB9990D8, type metadata accessor for Order.TimeFormatter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B75E0CE8()
{
  result = type metadata accessor for FormatterConfiguration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B75E0DF8()
{
  result = qword_1EB999120;
  if (!qword_1EB999120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999120);
  }

  return result;
}

unint64_t sub_1B75E0E50()
{
  result = qword_1EB999128;
  if (!qword_1EB999128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999128);
  }

  return result;
}

unint64_t sub_1B75E0EA8()
{
  result = qword_1EB999130;
  if (!qword_1EB999130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999130);
  }

  return result;
}

unint64_t sub_1B75E0F00()
{
  result = qword_1EB999138;
  if (!qword_1EB999138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999138);
  }

  return result;
}

unint64_t sub_1B75E0F58()
{
  result = qword_1EB999140;
  if (!qword_1EB999140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999140);
  }

  return result;
}

unint64_t sub_1B75E0FB0()
{
  result = qword_1EB999148;
  if (!qword_1EB999148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999148);
  }

  return result;
}

unint64_t sub_1B75E1008()
{
  result = qword_1EB999150;
  if (!qword_1EB999150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999150);
  }

  return result;
}

unint64_t sub_1B75E1060()
{
  result = qword_1EB999158;
  if (!qword_1EB999158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999158);
  }

  return result;
}

unint64_t sub_1B75E10B8()
{
  result = qword_1EB999160;
  if (!qword_1EB999160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999160);
  }

  return result;
}

unint64_t sub_1B75E1110()
{
  result = qword_1EB999168;
  if (!qword_1EB999168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999168);
  }

  return result;
}

unint64_t sub_1B75E1168()
{
  result = qword_1EB999170;
  if (!qword_1EB999170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999170);
  }

  return result;
}

unint64_t sub_1B75E11C0()
{
  result = qword_1EB999178;
  if (!qword_1EB999178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999178);
  }

  return result;
}

unint64_t sub_1B75E1218()
{
  result = qword_1EB999180;
  if (!qword_1EB999180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999180);
  }

  return result;
}

uint64_t sub_1B75E126C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C79745365746164 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t Order.PickupFulfillment.init(_:previewResourceLoader:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v77 = &v71 - v6;
  v7 = sub_1B77FF988();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Order.PickupFulfillment();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 11) = 0;
  *(v13 + 72) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 40) = 0u;
  v14 = *(v11 + 48);
  v15 = type metadata accessor for Order.FulfillmentWindow(0);
  v16 = *(*(v15 - 8) + 56);
  v76 = v14;
  v16(&v13[v14], 1, 1, v15);
  v78 = v10;
  v17 = *(v10 + 52);
  v72 = v8;
  v73 = v7;
  v18 = *(v8 + 56);
  v75 = v17;
  v18(&v13[v17], 1, 1, v7);
  v19 = *a1;
  v81[2] = a2;
  *v13 = sub_1B75EBB14(sub_1B742CB48, v81, v19);
  v13[8] = *(a1 + 8);
  v21 = *(a1 + 16);
  v20 = *(a1 + 24);
  v80 = a2;
  sub_1B719B06C(a2, v97);
  if (v20)
  {
    v23 = v98;
    v22 = v99;
    __swift_project_boxed_opaque_existential_1(v97, v98);
    v24 = *(v22 + 8);

    v25 = v24(v21, v20, v23, v22);
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v97);
  *(v13 + 2) = v25;
  *(v13 + 3) = v27;
  v28 = *(a1 + 32);
  if (v28 == 1)
  {
    v29 = 0;
  }

  else
  {
    v86 = *(a1 + 72);
    v87 = *(a1 + 88);
    v88 = *(a1 + 104);
    v89 = *(a1 + 120);
    v84 = *(a1 + 40);
    v85 = *(a1 + 56);
    sub_1B7205540(0, &qword_1EB990D70);
    v83 = v28;
    v90 = v28;
    v30 = *(a1 + 88);
    v93 = *(a1 + 72);
    v94 = v30;
    v31 = *(a1 + 120);
    v95 = *(a1 + 104);
    v96 = v31;
    v32 = *(a1 + 56);
    v91 = *(a1 + 40);
    v92 = v32;
    sub_1B74C6B2C(&v90, v82);
    v29 = CNMutablePostalAddress.init(rawAddress:)(&v83);
  }

  v33 = v80;
  *(v13 + 4) = v29;
  v34 = *(a1 + 168);
  if (v34)
  {
    v35 = *(a1 + 176);
    v36 = *(a1 + 184);
    v38 = *(a1 + 152);
    v37 = *(a1 + 160);
    v39 = *(a1 + 144);
    v90 = *(a1 + 136);
    *&v91 = v39;
    BYTE8(v91) = v38;
    *&v92 = v37;
    *(&v92 + 1) = v34;
    *&v93 = v35;
    *(&v93 + 1) = v36;
    sub_1B719B06C(v33, v82);

    Barcode.init(_:previewResourceLoader:)(&v90, v82, &v83);
    v40 = v84;
    v74 = v83;
    v41 = BYTE8(v84);
    v43 = *(&v85 + 1);
    v42 = v85;
    v34 = *(&v86 + 1);
    v44 = v86;
  }

  else
  {
    v74 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
  }

  sub_1B74C69A8(*(v13 + 5), *(v13 + 6), *(v13 + 7), *(v13 + 8), *(v13 + 9));
  *(v13 + 5) = v74;
  *(v13 + 6) = v40;
  *(v13 + 7) = v41;
  *(v13 + 8) = v42;
  *(v13 + 9) = v43;
  *(v13 + 10) = v44;
  *(v13 + 11) = v34;
  v45 = *(a1 + 224);
  v46 = *(a1 + 232);
  sub_1B719B06C(v33, &v90);
  if (v46)
  {
    v47 = v92;
    __swift_project_boxed_opaque_existential_1(&v90, v92);
    v48 = *(*(&v47 + 1) + 8);

    v49 = v48(v45, v46, v47, *(&v47 + 1));
    v33 = v80;
    v50 = v49;
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(&v90);
  *(v13 + 12) = v50;
  *(v13 + 13) = v52;
  v53 = v33[3];
  v54 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v53);
  *(v13 + 14) = (*(v54 + 8))(*(a1 + 240), *(a1 + 248), v53, v54);
  *(v13 + 15) = v55;
  if (*(a1 + 217))
  {
    v56 = 0;
  }

  else
  {
    v57 = *(a1 + 200);
    v58 = *(a1 + 192);
    if (*(a1 + 216))
    {
      v59 = 0.0;
    }

    else
    {
      v59 = *(a1 + 208);
    }

    v60 = objc_allocWithZone(MEMORY[0x1E6985C40]);
    v61 = v71;
    sub_1B77FF978();
    v62 = sub_1B77FF8B8();
    (*(v72 + 8))(v61, v73);
    v56 = [v60 initWithCoordinate:v62 altitude:v58 horizontalAccuracy:v57 verticalAccuracy:v59 timestamp:{0.0, 1.0}];
  }

  *(v13 + 16) = v56;
  v63 = v77;
  RawOrderPickupFulfillment.pickupWindow.getter(v77);
  sub_1B7213740(v63, &v13[v76], &qword_1EB990828);
  v64 = type metadata accessor for RawOrderPickupFulfillment();
  sub_1B75E4514(a1 + *(v64 + 56), &v13[v75]);
  v65 = (a1 + *(v64 + 60));
  v67 = *v65;
  v66 = v65[1];

  sub_1B75E4F98(a1, type metadata accessor for RawOrderPickupFulfillment);
  v68 = v79;
  v69 = &v13[*(v78 + 56)];
  *v69 = v67;
  *(v69 + 1) = v66;
  sub_1B75E4584(v13, v68);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_1B75E4F98(v13, type metadata accessor for Order.PickupFulfillment);
}

void Order.PickupFulfillment.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v70 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v71 = &v70 - v8;
  v9 = type metadata accessor for Order.PickupFulfillment();
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  v10 = *(v9 + 48);
  v11 = type metadata accessor for Order.FulfillmentWindow(0);
  v12 = *(*(v11 - 8) + 56);
  v70 = v10;
  v12(a2 + v10, 1, 1, v11);
  v13 = *(v9 + 52);
  v14 = sub_1B77FF988();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v17 = v15 + 56;
  v16(a2 + v13, 1, 1, v14);
  v18 = [a1 lineItemObjects];
  type metadata accessor for ManagedOrderLineItem();
  sub_1B75E505C(&qword_1EB98FFA0, type metadata accessor for ManagedOrderLineItem);
  v19 = sub_1B7800FA8();

  *&v77 = sub_1B7519CE0(v19);
  sub_1B74D29C8(&v77);
  v72 = v17;

  v20 = v77;
  v75 = v13;
  v76 = v9;
  v74 = v14;
  v73 = v16;
  if ((v77 & 0x8000000000000000) != 0 || (v77 & 0x4000000000000000) != 0)
  {
    v21 = sub_1B7801958();
    if (v21)
    {
      goto LABEL_4;
    }

LABEL_15:

    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v21 = *(v77 + 16);
  if (!v21)
  {
    goto LABEL_15;
  }

LABEL_4:
  v85 = MEMORY[0x1E69E7CC0];
  sub_1B71FDDBC(0, v21 & ~(v21 >> 63), 0);
  if (v21 < 0)
  {
    __break(1u);

    __break(1u);
    return;
  }

  v22 = 0;
  v23 = v85;
  if ((v20 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

LABEL_6:
  for (i = MEMORY[0x1B8CA5DC0](v22, v20); ; i = *(v20 + 8 * v22 + 32))
  {
    Order.LineItem.init(_:)(i, &v77);
    v85 = v23;
    v26 = *(v23 + 16);
    v25 = *(v23 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1B71FDDBC((v25 > 1), v26 + 1, 1);
      v23 = v85;
    }

    *(v23 + 16) = v26 + 1;
    v27 = (v23 + (v26 << 7));
    v28 = v77;
    v29 = v78;
    v30 = v80;
    v27[4] = v79;
    v27[5] = v30;
    v27[2] = v28;
    v27[3] = v29;
    v31 = v81;
    v32 = v82;
    v33 = v84;
    v27[8] = v83;
    v27[9] = v33;
    v27[6] = v31;
    v27[7] = v32;
    if (v21 - 1 == v22)
    {
      break;
    }

    ++v22;
    if ((v20 & 0xC000000000000001) != 0)
    {
      goto LABEL_6;
    }

LABEL_7:
    ;
  }

LABEL_16:
  *a2 = v23;
  *(a2 + 8) = ManagedOrderPickupFulfillment.status.getter();
  v34 = [a1 statusDescription];
  if (v34)
  {
    v35 = v34;
    v36 = sub_1B77FFA48();
    v37 = sub_1B741F7D4(v36);
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  *(a2 + 16) = v37;
  *(a2 + 24) = v39;
  *(a2 + 32) = [a1 address];
  v40 = [a1 barcode];
  if (v40)
  {
    ManagedOrderBarcode.model.getter(&v77);

    v41 = *(&v77 + 1);
    v40 = v77;
    v42 = v78;
    v43 = *(&v78 + 1);
    v46 = *(&v79 + 1);
    v45 = v79;
    v44 = v80;
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v45 = 0;
    v46 = 0;
    v44 = 0;
  }

  sub_1B74C69A8(*(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 64), *(a2 + 72));
  *(a2 + 40) = v40;
  *(a2 + 48) = v41;
  *(a2 + 56) = v42;
  *(a2 + 64) = v43;
  *(a2 + 72) = v45;
  *(a2 + 80) = v46;
  *(a2 + 88) = v44;
  v47 = [a1 notes];
  if (v47)
  {
    v48 = v47;
    v49 = sub_1B77FFA48();
    v50 = sub_1B741F7D4(v49);
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  v53 = v71;
  v54 = v70;
  *(a2 + 96) = v50;
  *(a2 + 104) = v52;
  v55 = [a1 displayName];
  v56 = sub_1B77FFA48();
  v57 = sub_1B741F7D4(v56);
  v59 = v58;

  *(a2 + 112) = v57;
  *(a2 + 120) = v59;
  *(a2 + 128) = [a1 location];
  ManagedOrderPickupFulfillment.pickupWindow.getter(v53);
  sub_1B7213740(v53, a2 + v54, &qword_1EB990828);
  v60 = [a1 pickedUpDate];
  if (v60)
  {
    v61 = v60;
    sub_1B77FF928();

    v62 = 0;
  }

  else
  {
    v62 = 1;
  }

  v63 = v75;
  v64 = v76;
  v73(v6, v62, 1, v74);
  sub_1B7213740(v6, a2 + v63, &qword_1EB98EBD0);
  v65 = [a1 fulfillmentIdentifier];
  v66 = sub_1B7800868();
  v68 = v67;

  v69 = (a2 + *(v64 + 56));
  *v69 = v66;
  v69[1] = v68;
}

uint64_t Order.PickupFulfillment.lineItems.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Order.PickupFulfillment.statusDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Order.PickupFulfillment.statusDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void *Order.PickupFulfillment.address.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t Order.PickupFulfillment.barcode.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B74C6ADC(v2, v3, v4, v5, v6);
}

__n128 Order.PickupFulfillment.barcode.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_1B74C69A8(v1[5], v1[6], v1[7], v1[8], v1[9]);
  v4 = *a1;
  *(v1 + 7) = a1[1];
  *(v1 + 5) = v4;
  result = v6;
  *(v1 + 9) = v6;
  v1[11] = v3;
  return result;
}

uint64_t Order.PickupFulfillment.notes.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t Order.PickupFulfillment.notes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t Order.PickupFulfillment.displayName.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t Order.PickupFulfillment.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

void *Order.PickupFulfillment.location.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

uint64_t Order.PickupFulfillment.fulfillmentIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for Order.PickupFulfillment() + 56));

  return v1;
}

uint64_t Order.PickupFulfillment.fulfillmentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Order.PickupFulfillment() + 56));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

unint64_t sub_1B75E263C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6D657449656E696CLL;
    v7 = 0xD000000000000011;
    v8 = 0x73736572646461;
    if (a1 != 3)
    {
      v8 = 0x65646F63726162;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x737574617473;
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
    v1 = 0x695770756B636970;
    v2 = 0x705564656B636970;
    if (a1 != 9)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x7365746F6ELL;
    v4 = 0x4E79616C70736964;
    if (a1 != 6)
    {
      v4 = 0x6E6F697461636F6CLL;
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

uint64_t sub_1B75E27C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B75E4C08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B75E27F8(uint64_t a1)
{
  v2 = sub_1B75E45E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75E2834(uint64_t a1)
{
  v2 = sub_1B75E45E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Order.PickupFulfillment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999188);
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75E45E8();
  sub_1B78023F8();
  v8 = *(v3 + 32);
  if (v8)
  {
    RawAddress.init(_:)(v8, v25);
  }

  else
  {
    *&v25[0] = 1;
    memset(v25 + 8, 0, 96);
  }

  v9 = *(v3 + 128);
  *&v17 = *v3;
  v24 = 0;
  v10 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9946A0);
  sub_1B742C9C4(&qword_1EB9946A8, sub_1B742C91C);
  sub_1B7801FC8();
  if (v2)
  {

    sub_1B7205418(v25, &qword_1EB995F40);

    (*(v26 + 8))(v7, v5);
  }

  else
  {

    LOBYTE(v17) = *(v3 + 8);
    v24 = 1;
    sub_1B75E463C();
    sub_1B7801FC8();
    LOBYTE(v17) = 2;
    sub_1B7801EF8();
    v21 = v25[4];
    v22 = v25[5];
    v17 = v25[0];
    v18 = v25[1];
    v23 = *&v25[6];
    v20 = v25[3];
    v19 = v25[2];
    v24 = 3;
    sub_1B7304418();
    sub_1B7801F38();
    sub_1B7205418(v25, &qword_1EB995F40);
    v11 = *(v3 + 48);
    v12 = *(v3 + 56);
    v13 = *(v3 + 64);
    v14 = *(v3 + 72);
    v15 = *(v3 + 80);
    v16 = *(v3 + 88);
    *&v17 = *(v3 + 40);
    *(&v17 + 1) = v11;
    *&v18 = v12;
    *(&v18 + 1) = v13;
    *&v19 = v14;
    *(&v19 + 1) = v15;
    *&v20 = v16;
    v24 = 4;
    sub_1B74C6ADC(v17, v11, v12, v13, v14);
    sub_1B75E4690();
    sub_1B7801F38();
    sub_1B74C69A8(v17, *(&v17 + 1), v18, *(&v18 + 1), v19);
    LOBYTE(v17) = 5;
    sub_1B7801EF8();
    LOBYTE(v17) = 6;
    sub_1B7801F78();
    *&v17 = v9;
    v24 = 7;
    sub_1B75E46E4();
    sub_1B7801F38();
    type metadata accessor for Order.PickupFulfillment();
    LOBYTE(v17) = 8;
    type metadata accessor for Order.FulfillmentWindow(0);
    sub_1B75E505C(&qword_1EB996760, type metadata accessor for Order.FulfillmentWindow);
    sub_1B7801F38();
    LOBYTE(v17) = 9;
    sub_1B77FF988();
    sub_1B75E505C(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801F38();
    LOBYTE(v17) = 10;
    sub_1B7801F78();
    (*(v26 + 8))(v7, v5);
  }
}

uint64_t Order.PickupFulfillment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v54 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9991A8);
  v8 = *(v7 - 8);
  v55 = v7;
  v56 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - v9;
  v11 = type metadata accessor for Order.PickupFulfillment();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 11) = 0;
  *(v14 + 72) = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 40) = 0u;
  v15 = *(v12 + 48);
  v16 = type metadata accessor for Order.FulfillmentWindow(0);
  v17 = *(*(v16 - 8) + 56);
  v84 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = *(v11 + 52);
  v19 = sub_1B77FF988();
  v20 = *(*(v19 - 8) + 56);
  v59 = v18;
  v20(&v14[v18], 1, 1, v19);
  v21 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1B75E45E8();
  v22 = v57;
  sub_1B78023C8();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v58);
    sub_1B74C69A8(*(v14 + 5), *(v14 + 6), *(v14 + 7), *(v14 + 8), *(v14 + 9));

    sub_1B7205418(&v14[v84], &qword_1EB990828);
    return sub_1B7205418(&v14[v59], &qword_1EB98EBD0);
  }

  else
  {
    v57 = v16;
    v51 = v11;
    v76 = 3;
    sub_1B73043C4();
    v23 = v55;
    sub_1B7801DB8();
    v73 = v81;
    v74 = v82;
    v75 = v83;
    v69 = v77;
    v70 = v78;
    v71 = v79;
    v72 = v80;
    v68 = 7;
    sub_1B75E4738();
    sub_1B7801DB8();
    v24 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9946A0);
    v68 = 0;
    sub_1B742C9C4(&qword_1EB9946C8, sub_1B742CA3C);
    sub_1B7801E48();
    v50 = v60;
    *v14 = v60;
    v68 = 1;
    sub_1B75E478C();
    sub_1B7801E48();
    v14[8] = v60;
    v68 = 2;
    v26 = sub_1B7801D78();
    *(v14 + 2) = v26;
    *(v14 + 3) = v27;
    v49 = v27;
    if (v69 == 1)
    {
      v28 = 0;
    }

    else
    {
      v64 = v73;
      v65 = v74;
      v66 = v75;
      v60 = v69;
      v61 = v70;
      v62 = v71;
      v63 = v72;
      sub_1B7205540(0, &qword_1EB990D70);
      v28 = CNMutablePostalAddress.init(rawAddress:)(&v60);
    }

    v48 = v28;
    *(v14 + 4) = v28;
    v67 = 4;
    sub_1B75E47E0();
    sub_1B7801DB8();
    v29 = v63;
    v30 = *(v14 + 5);
    v31 = *(v14 + 6);
    v32 = *(v14 + 7);
    v33 = *(v14 + 8);
    v34 = *(v14 + 9);
    v46 = v60;
    v47 = v62;
    v45 = v61;
    sub_1B74C69A8(v30, v31, v32, v33, v34);
    v35 = v46;
    *(v14 + 56) = v45;
    *(v14 + 40) = v35;
    *(v14 + 72) = v47;
    *(v14 + 11) = v29;
    LOBYTE(v60) = 5;
    *(v14 + 12) = sub_1B7801D78();
    *(v14 + 13) = v36;
    LOBYTE(v60) = 6;
    *(v14 + 14) = sub_1B7801DF8();
    *(v14 + 15) = v37;
    *(v14 + 16) = v24;
    LOBYTE(v60) = 8;
    sub_1B75E505C(&qword_1EB996748, type metadata accessor for Order.FulfillmentWindow);
    *&v47 = v24;
    sub_1B7801DB8();
    sub_1B7213740(v54, &v14[v84], &qword_1EB990828);
    LOBYTE(v60) = 9;
    sub_1B75E505C(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
    v38 = v23;
    v39 = v10;
    sub_1B7801DB8();
    sub_1B7213740(v53, &v14[v59], &qword_1EB98EBD0);
    LOBYTE(v60) = 10;
    v40 = sub_1B7801DF8();
    v42 = v41;
    (*(v56 + 8))(v39, v38);

    v43 = v52;
    v44 = &v14[*(v51 + 56)];
    *v44 = v40;
    v44[1] = v42;
    sub_1B75E4584(v14, v43);
    __swift_destroy_boxed_opaque_existential_1(v58);
    return sub_1B75E4F98(v14, type metadata accessor for Order.PickupFulfillment);
  }
}

uint64_t Order.PickupFulfillment.fulfillment.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1B75E4584(v1, a1);
  type metadata accessor for Order.Fulfillment();

  return swift_storeEnumTagMultiPayload();
}

BOOL _s10FinanceKit5OrderV17PickupFulfillmentV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Order.FulfillmentWindow(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v85 - v9;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990A40);
  MEMORY[0x1EEE9AC00](v104);
  v12 = &v85 - v11;
  v106 = sub_1B77FF988();
  v108 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v107 = &v85 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v85 - v18;
  v20 = a1[16];
  v21 = a2[16];
  v22 = a1[4];
  v23 = a2[4];
  if (!v22)
  {
    if (v23)
    {
      return 0;
    }

    v98 = v17;
    v99 = v19;
    v96 = v5;
    v95 = v10;
    v97 = v4;
    v103 = v20;
    v30 = v20;
    v31 = v21;
    goto LABEL_8;
  }

  if (v23)
  {
    v98 = v17;
    v99 = v19;
    v96 = v5;
    v95 = v10;
    v97 = v4;
    v24 = v20;
    sub_1B7205540(0, &qword_1EDAFAF20);
    v103 = v24;
    v25 = v24;
    v26 = v21;
    v27 = v23;
    v28 = v22;
    v29 = sub_1B7801558();

    if ((v29 & 1) == 0)
    {

LABEL_5:
      return 0;
    }

LABEL_8:
    v89 = v7;
    v90 = v12;
    v100 = v21;
    v32 = a1[5];
    v33 = a1[6];
    v35 = a1[7];
    v34 = a1[8];
    v36 = a1[9];
    v109 = a1[10];
    v93 = a1;
    v37 = a1[11];
    v38 = a2[5];
    v39 = a2[6];
    v40 = a2;
    v42 = a2[7];
    v41 = a2[8];
    v43 = v40[9];
    v44 = v40[10];
    v94 = v40;
    v45 = v40[11];
    v102 = v39;
    v101 = v38;
    if (v36)
    {
      v117[0] = v32;
      v117[1] = v33;
      v117[2] = v35;
      v117[3] = v34;
      v117[4] = v36;
      v117[5] = v109;
      v117[6] = v37;
      if (v43)
      {
        v110 = v38;
        v111 = v39;
        v112 = v42;
        v86 = v41;
        v113 = v41;
        v114 = v43;
        v115 = v44;
        v116 = v45;
        v46 = v34;
        v85 = v43;
        v47 = v35;
        LODWORD(v92) = _s10FinanceKit7BarcodeV2eeoiySbAC_ACtFZ_0(v117, &v110);
        v91 = v111;
        v88 = v114;
        v87 = v116;
        sub_1B74C6ADC(v32, v33, v47, v46, v36);
        sub_1B74C6ADC(v101, v102, v42, v86, v85);
        sub_1B74C6ADC(v32, v33, v47, v46, v36);

        sub_1B74C69A8(v32, v33, v47, v46, v36);
        if ((v92 & 1) == 0)
        {

          return 0;
        }

LABEL_17:
        v54 = v93;
        v55 = v94;
        v56 = v100;
        if ((v93[14] != v94[14] || v93[15] != v94[15]) && (sub_1B78020F8() & 1) == 0 || ((v57 = type metadata accessor for Order.PickupFulfillment(), v58 = *(v57 + 56), v59 = *(v54 + v58), v60 = *(v54 + v58 + 8), v61 = (v55 + v58), v59 != *v61) || v60 != v61[1]) && (sub_1B78020F8() & 1) == 0 || (sub_1B731C3C0(*v54, *v55) & 1) == 0)
        {
LABEL_47:

          goto LABEL_48;
        }

        v26 = v103;
        if (v103)
        {
          v62 = v90;
          v63 = v89;
          if (!v56)
          {
            goto LABEL_5;
          }

          v64 = v56;
          v65 = sub_1B742E3B8(v26, v64);

          if (!v65)
          {

            return 0;
          }
        }

        else
        {
          v62 = v90;
          v63 = v89;
          if (v56)
          {
            goto LABEL_48;
          }
        }

        v66 = v54[13];
        v67 = v55[13];
        if (v66)
        {
          if (v67 && (v54[12] == v55[12] && v66 == v67 || (sub_1B78020F8() & 1) != 0))
          {
            goto LABEL_34;
          }
        }

        else if (!v67)
        {
LABEL_34:
          v103 = v26;
          v109 = v57;
          v68 = *(v57 + 52);
          v69 = *(v98 + 48);
          v70 = v99;
          sub_1B7205588(v54 + v68, v99, &qword_1EB98EBD0);
          sub_1B7205588(v55 + v68, v70 + v69, &qword_1EB98EBD0);
          v71 = *(v108 + 48);
          v72 = v106;
          if (v71(v70, 1, v106) == 1)
          {
            if (v71(v70 + v69, 1, v72) == 1)
            {
              sub_1B7205418(v70, &qword_1EB98EBD0);
LABEL_44:
              v78 = *(v109 + 48);
              v79 = *(v104 + 48);
              sub_1B7205588(v54 + v78, v62, &qword_1EB990828);
              sub_1B7205588(v55 + v78, v62 + v79, &qword_1EB990828);
              v80 = *(v96 + 48);
              v81 = v97;
              if (v80(v62, 1, v97) == 1)
              {

                if (v80(v62 + v79, 1, v81) == 1)
                {
                  sub_1B7205418(v62, &qword_1EB990828);
                  return *(v54 + 8) == *(v55 + 8);
                }
              }

              else
              {
                v83 = v95;
                sub_1B7205588(v62, v95, &qword_1EB990828);
                if (v80(v62 + v79, 1, v81) != 1)
                {
                  sub_1B75E4FF8(v62 + v79, v63);
                  v84 = _s10FinanceKit5OrderV17FulfillmentWindowO2eeoiySbAE_AEtFZ_0(v83, v63);

                  sub_1B75E4F98(v63, type metadata accessor for Order.FulfillmentWindow);
                  sub_1B75E4F98(v83, type metadata accessor for Order.FulfillmentWindow);
                  sub_1B7205418(v62, &qword_1EB990828);
                  if ((v84 & 1) == 0)
                  {
                    return 0;
                  }

                  return *(v54 + 8) == *(v55 + 8);
                }

                sub_1B75E4F98(v83, type metadata accessor for Order.FulfillmentWindow);
              }

              v73 = &qword_1EB990A40;
              v74 = v62;
LABEL_54:
              sub_1B7205418(v74, v73);
              return 0;
            }

LABEL_42:
            v73 = &qword_1EB98FCE0;
            v74 = v70;
            goto LABEL_54;
          }

          sub_1B7205588(v70, v107, &qword_1EB98EBD0);
          if (v71(v70 + v69, 1, v72) == 1)
          {

            (*(v108 + 8))(v107, v72);
            goto LABEL_42;
          }

          v75 = v108;
          (*(v108 + 32))(v105, v70 + v69, v72);
          sub_1B75E505C(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
          v76 = sub_1B7800828();
          v77 = *(v75 + 8);
          v77(v105, v72);
          v77(v107, v72);
          sub_1B7205418(v70, &qword_1EB98EBD0);
          if (v76)
          {
            goto LABEL_44;
          }

          goto LABEL_47;
        }

LABEL_48:
        return 0;
      }

      v106 = v33;
      v107 = v37;
      v48 = v38;
      v49 = v32;
      v50 = v35;
      v108 = v49;
      v51 = v34;
      sub_1B74C6ADC(v49, v106, v35, v34, v36);
      v52 = v48;
      v33 = v106;
      sub_1B74C6ADC(v52, v39, v42, v41, 0);
      v91 = v50;
      v53 = v50;
      v92 = v51;
      v32 = v108;
      sub_1B74C6ADC(v108, v33, v53, v51, v36);
    }

    else
    {
      v91 = v35;
      v92 = v34;
      sub_1B74C6ADC(v32, v33, v35, v34, 0);
      if (!v43)
      {
        sub_1B74C6ADC(v101, v102, v42, v41, 0);
        sub_1B74C69A8(v32, v33, v91, v92, 0);
        goto LABEL_17;
      }

      sub_1B74C6ADC(v101, v102, v42, v41, v43);
    }

    sub_1B74C69A8(v32, v33, v91, v92, v36);
    sub_1B74C69A8(v101, v102, v42, v41, v43);
  }

  return 0;
}

uint64_t type metadata accessor for Order.PickupFulfillment()
{
  result = qword_1EB9991C0;
  if (!qword_1EB9991C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B75E4514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B75E4584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Order.PickupFulfillment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B75E45E8()
{
  result = qword_1EB999190;
  if (!qword_1EB999190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999190);
  }

  return result;
}

unint64_t sub_1B75E463C()
{
  result = qword_1EB999198;
  if (!qword_1EB999198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999198);
  }

  return result;
}

unint64_t sub_1B75E4690()
{
  result = qword_1EB9991A0;
  if (!qword_1EB9991A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9991A0);
  }

  return result;
}

unint64_t sub_1B75E46E4()
{
  result = qword_1EB99DA60;
  if (!qword_1EB99DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DA60);
  }

  return result;
}

unint64_t sub_1B75E4738()
{
  result = qword_1EB99DAD0;
  if (!qword_1EB99DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99DAD0);
  }

  return result;
}

unint64_t sub_1B75E478C()
{
  result = qword_1EB9991B0;
  if (!qword_1EB9991B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9991B0);
  }

  return result;
}

unint64_t sub_1B75E47E0()
{
  result = qword_1EB9991B8;
  if (!qword_1EB9991B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9991B8);
  }

  return result;
}

void sub_1B75E485C()
{
  sub_1B75E4A4C(319, &qword_1EB992E20, &type metadata for Order.LineItem, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B75E4A4C(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B7503C9C(319, &qword_1EDAF93F0, &qword_1EDAFAF20);
      if (v2 <= 0x3F)
      {
        sub_1B75E4A4C(319, &qword_1EB9991D0, &type metadata for Barcode, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1B7503C9C(319, &qword_1EDAF9408, &qword_1EDAFAF38);
          if (v4 <= 0x3F)
          {
            sub_1B75E4A9C(319, &qword_1EB990A10, type metadata accessor for Order.FulfillmentWindow);
            if (v5 <= 0x3F)
            {
              sub_1B75E4A9C(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B75E4A4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B75E4A9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B7801768();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B75E4B04()
{
  result = qword_1EB9991D8;
  if (!qword_1EB9991D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9991D8);
  }

  return result;
}

unint64_t sub_1B75E4B5C()
{
  result = qword_1EB9991E0;
  if (!qword_1EB9991E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9991E0);
  }

  return result;
}

unint64_t sub_1B75E4BB4()
{
  result = qword_1EB9991E8;
  if (!qword_1EB9991E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9991E8);
  }

  return result;
}

uint64_t sub_1B75E4C08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D657449656E696CLL && a2 == 0xE900000000000073;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B78749D0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65646F63726162 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x695770756B636970 && a2 == 0xEC000000776F646ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x705564656B636970 && a2 == 0xEC00000065746144 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7881AD0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1B75E4F98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B75E4FF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Order.FulfillmentWindow(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B75E505C(unint64_t *a1, void (*a2)(uint64_t))
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

void static CoreDataProvider.getBackgroundProvider()()
{
  if (qword_1EDAF8960 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAF8968;
  os_unfair_lock_lock((qword_1EDAF8968 + 24));
  sub_1B75E5458((v0 + 16), &v1);
  os_unfair_lock_unlock((v0 + 24));
}

id CoreDataProviding.viewContext.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 8))() + 16);

  v3 = [v2 viewContext];

  return v3;
}

uint64_t sub_1B75E51D4()
{
  type metadata accessor for CoreDataProvider();
  v0 = swift_allocObject();
  result = CoreDataProvider.init(shared:)(1);
  off_1EDAF9E38 = v0;
  return result;
}

uint64_t CoreDataProvider.__allocating_init(shared:)(int a1)
{
  v2 = swift_allocObject();
  CoreDataProvider.init(shared:)(a1);
  return v2;
}

void sub_1B75E529C()
{
  if (qword_1EDAF8960 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAF8968;
  os_unfair_lock_lock((qword_1EDAF8968 + 24));
  sub_1B75E5458((v0 + 16), &v1);
  os_unfair_lock_unlock((v0 + 24));
  off_1EDAF8980 = v1;
}

uint64_t sub_1B75E5374(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t CoreDataProvider.__allocating_init(store:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1B75E5414()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9991F0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  qword_1EDAF8968 = result;
  return result;
}

uint64_t sub_1B75E5458@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    goto LABEL_2;
  }

  v6 = a2;
  type metadata accessor for CoreDataProvider();
  v3 = swift_allocObject();
  CoreDataProvider.init(shared:)(0);
  if (!v2)
  {
    *a1 = v3;
    a2 = v6;
LABEL_2:
    *a2 = v3;
  }

  if (qword_1EDAFD2C8 != -1)
  {
    swift_once();
  }

  v7 = sub_1B78000B8();
  __swift_project_value_buffer(v7, qword_1EDAFD2D0);
  v8 = v2;
  v9 = sub_1B7800098();
  v10 = sub_1B78011E8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1B7198000, v9, v10, "Could not create background CoreDataProvider: %@", v11, 0xCu);
    sub_1B726B694(v12);
    MEMORY[0x1B8CA7A40](v12, -1, -1);
    MEMORY[0x1B8CA7A40](v11, -1, -1);
  }

  return swift_willThrow();
}

uint64_t CoreDataProvider.init(shared:)(int a1)
{
  v2 = v1;
  v4 = *v1;
  v32 = type metadata accessor for CoreDataStoreConfiguration(0);
  v5 = MEMORY[0x1EEE9AC00](v32);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v31 - v8;
  v10 = type metadata accessor for CoreDataStoreClientConfiguration(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  if ((a1 & 1) == 0)
  {
    goto LABEL_12;
  }

  v31[1] = v4;
  v13 = [objc_opt_self() mainBundle];
  v14 = [v13 bundleIdentifier];
  if (!v14)
  {

    goto LABEL_11;
  }

  v15 = v14;
  v16 = sub_1B7800868();
  v18 = v17;

  if (!v18)
  {
LABEL_11:

    goto LABEL_12;
  }

  if (v16 == 0xD000000000000012 && 0x80000001B7878970 == v18)
  {

LABEL_19:
    result = sub_1B7801C88();
    __break(1u);
    return result;
  }

  v20 = sub_1B78020F8();

  if (v20)
  {
    goto LABEL_19;
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7808C50;
  *(inited + 32) = sub_1B7800868();
  *(inited + 40) = v22;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  *(inited + 80) = sub_1B7800868();
  *(inited + 88) = v23;
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 96) = 0xD000000000000028;
  *(inited + 104) = 0x80000001B7874E50;
  v24 = sub_1B72018E0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F118);
  swift_arrayDestroy();
  if (qword_1EDAFCB50 != -1)
  {
    swift_once();
  }

  v25 = sub_1B77FF4F8();
  v26 = __swift_project_value_buffer(v25, qword_1EDAFCB58);
  (*(*(v25 - 8) + 16))(v12, v26, v25);
  v27 = *(v10 + 20);
  *&v12[*(v10 + 24)] = v24;
  v12[v27] = v33 & 1;
  sub_1B75E5B5C(v12, v9, type metadata accessor for CoreDataStoreClientConfiguration);
  swift_storeEnumTagMultiPayload();
  sub_1B75E5B5C(v9, v7, type metadata accessor for CoreDataStoreConfiguration);
  type metadata accessor for CoreDataStore();
  swift_allocObject();
  v28 = v34;
  v29 = CoreDataStore.init(configuration:)(v7);
  sub_1B75E5BC4(v9, type metadata accessor for CoreDataStoreConfiguration);
  sub_1B75E5BC4(v12, type metadata accessor for CoreDataStoreClientConfiguration);
  if (v28)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v2[2] = v29;
  }

  return v2;
}

uint64_t CoreDataProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1B75E5B1C()
{
  v1 = [*(*(*v0 + 16) + 16) viewContext];

  return v1;
}

uint64_t sub_1B75E5B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B75E5BC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B75E5CEC(uint64_t a1)
{
  v2 = sub_1B75E67C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75E5D28(uint64_t a1)
{
  v2 = sub_1B75E67C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75E5D64()
{
  v1 = *v0;
  v2 = 1852141679;
  v3 = 0x705564656B636970;
  v4 = 0x6575737369;
  if (v1 != 4)
  {
    v4 = 0x656C6C65636E6163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x69737365636F7270;
  if (v1 != 1)
  {
    v5 = 0x726F467964616572;
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

uint64_t sub_1B75E5E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B75E7750(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B75E5E50(uint64_t a1)
{
  v2 = sub_1B75E6774();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75E5E8C(uint64_t a1)
{
  v2 = sub_1B75E6774();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75E5EC8(uint64_t a1)
{
  v2 = sub_1B75E681C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75E5F04(uint64_t a1)
{
  v2 = sub_1B75E681C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75E5F40(uint64_t a1)
{
  v2 = sub_1B75E696C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75E5F7C(uint64_t a1)
{
  v2 = sub_1B75E696C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75E5FB8(uint64_t a1)
{
  v2 = sub_1B75E6870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75E5FF4(uint64_t a1)
{
  v2 = sub_1B75E6870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75E6030(uint64_t a1)
{
  v2 = sub_1B75E6918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75E606C(uint64_t a1)
{
  v2 = sub_1B75E6918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75E60A8(uint64_t a1)
{
  v2 = sub_1B75E68C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75E60E4(uint64_t a1)
{
  v2 = sub_1B75E68C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.PickupStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t Order.PickupStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9991F8);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999200);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999208);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999210);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999218);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999220);
  v26 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999228);
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75E6774();
  sub_1B78023F8();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_1B75E6870();
      v21 = v33;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_1B75E681C();
      v21 = v36;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_1B75E67C8();
      v21 = v39;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_1B75E6918();
      v21 = v27;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_1B75E68C4();
      v21 = v30;
      v22 = v42;
      sub_1B7801ED8();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_1B75E696C();
  v22 = v42;
  sub_1B7801ED8();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

unint64_t sub_1B75E6774()
{
  result = qword_1EB999230;
  if (!qword_1EB999230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999230);
  }

  return result;
}

unint64_t sub_1B75E67C8()
{
  result = qword_1EB999238;
  if (!qword_1EB999238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999238);
  }

  return result;
}

unint64_t sub_1B75E681C()
{
  result = qword_1EB999240;
  if (!qword_1EB999240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999240);
  }

  return result;
}

unint64_t sub_1B75E6870()
{
  result = qword_1EB999248;
  if (!qword_1EB999248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999248);
  }

  return result;
}

unint64_t sub_1B75E68C4()
{
  result = qword_1EB999250;
  if (!qword_1EB999250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999250);
  }

  return result;
}

unint64_t sub_1B75E6918()
{
  result = qword_1EB999258;
  if (!qword_1EB999258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999258);
  }

  return result;
}

unint64_t sub_1B75E696C()
{
  result = qword_1EB999260;
  if (!qword_1EB999260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999260);
  }

  return result;
}

uint64_t Order.PickupStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999268);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999270);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v39 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999278);
  v46 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v53 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999280);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999288);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999290);
  v40 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999298);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1B75E6774();
  v22 = v56;
  sub_1B78023C8();
  if (!v22)
  {
    v23 = v16;
    v39 = v14;
    v56 = v13;
    v25 = v53;
    v24 = v54;
    v26 = v55;
    v27 = sub_1B7801E98();
    v28 = (2 * *(v27 + 16)) | 1;
    v58 = v27;
    v59 = v27 + 32;
    v60 = 0;
    v61 = v28;
    v29 = sub_1B721CE5C();
    v30 = v20;
    if (v29 == 6 || v60 != v61 >> 1)
    {
      v34 = sub_1B7801B18();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v36 = &type metadata for Order.PickupStatus;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v18 + 8))(v20, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = v29;
      if (v29 > 2u)
      {
        v38 = v52;
        if (v29 == 3)
        {
          v63 = 3;
          sub_1B75E6870();
          sub_1B7801D38();
          (*(v46 + 8))(v25, v41);
        }

        else if (v29 == 4)
        {
          v63 = 4;
          sub_1B75E681C();
          sub_1B7801D38();
          (*(v48 + 8))(v24, v47);
        }

        else
        {
          v63 = 5;
          sub_1B75E67C8();
          sub_1B7801D38();
          (*(v49 + 8))(v26, v50);
        }

        (*(v18 + 8))(v30, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v29)
        {
          if (v29 == 1)
          {
            v63 = 1;
            sub_1B75E6918();
            v31 = v56;
            sub_1B7801D38();
            v33 = v42;
            v32 = v43;
          }

          else
          {
            v63 = 2;
            sub_1B75E68C4();
            v31 = v51;
            sub_1B7801D38();
            v33 = v44;
            v32 = v45;
          }

          (*(v33 + 8))(v31, v32);
        }

        else
        {
          v63 = 0;
          sub_1B75E696C();
          sub_1B7801D38();
          (*(v40 + 8))(v23, v39);
        }

        (*(v18 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v38 = v52;
      }

      *v38 = v62;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

unint64_t sub_1B75E722C()
{
  result = qword_1EB9992A0;
  if (!qword_1EB9992A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9992A0);
  }

  return result;
}

unint64_t sub_1B75E7284()
{
  result = qword_1EB9992A8;
  if (!qword_1EB9992A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9992A8);
  }

  return result;
}

unint64_t sub_1B75E72DC()
{
  result = qword_1EB9992B0;
  if (!qword_1EB9992B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9992B0);
  }

  return result;
}

unint64_t sub_1B75E7334()
{
  result = qword_1EB9992B8;
  if (!qword_1EB9992B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9992B8);
  }

  return result;
}

unint64_t sub_1B75E738C()
{
  result = qword_1EB9992C0;
  if (!qword_1EB9992C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9992C0);
  }

  return result;
}

unint64_t sub_1B75E73E4()
{
  result = qword_1EB9992C8;
  if (!qword_1EB9992C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9992C8);
  }

  return result;
}

unint64_t sub_1B75E743C()
{
  result = qword_1EB9992D0;
  if (!qword_1EB9992D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9992D0);
  }

  return result;
}

unint64_t sub_1B75E7494()
{
  result = qword_1EB9992D8;
  if (!qword_1EB9992D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9992D8);
  }

  return result;
}

unint64_t sub_1B75E74EC()
{
  result = qword_1EB9992E0;
  if (!qword_1EB9992E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9992E0);
  }

  return result;
}

unint64_t sub_1B75E7544()
{
  result = qword_1EB9992E8;
  if (!qword_1EB9992E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9992E8);
  }

  return result;
}

unint64_t sub_1B75E759C()
{
  result = qword_1EB9992F0;
  if (!qword_1EB9992F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9992F0);
  }

  return result;
}

unint64_t sub_1B75E75F4()
{
  result = qword_1EB9992F8;
  if (!qword_1EB9992F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9992F8);
  }

  return result;
}

unint64_t sub_1B75E764C()
{
  result = qword_1EB999300;
  if (!qword_1EB999300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999300);
  }

  return result;
}

unint64_t sub_1B75E76A4()
{
  result = qword_1EB999308;
  if (!qword_1EB999308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999308);
  }

  return result;
}

unint64_t sub_1B75E76FC()
{
  result = qword_1EB999310;
  if (!qword_1EB999310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999310);
  }

  return result;
}

uint64_t sub_1B75E7750(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852141679 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69737365636F7270 && a2 == 0xEA0000000000676ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F467964616572 && a2 == 0xEE0070756B636950 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x705564656B636970 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6575737369 && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t BankConnectWebServiceNotificationEventsRequest.init(consent:fromDateTime:subscriptionID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1B75E79FC(a1, a5);
  v9 = type metadata accessor for BankConnectWebServiceNotificationEventsRequest(0);
  v10 = *(v9 + 20);
  v11 = sub_1B77FF988();
  result = (*(*(v11 - 8) + 32))(a5 + v10, a2, v11);
  v13 = (a5 + *(v9 + 24));
  *v13 = a3;
  v13[1] = a4;
  return result;
}

uint64_t sub_1B75E79FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectConsent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t BankConnectWebServiceNotificationEventsRequest.jsonBody.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BankConnectWebServiceNotificationEventsRequest(0);
  v4 = *(v3 + 20);
  v5 = sub_1B77FF988();
  (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
  v6 = (v1 + *(v3 + 24));
  v8 = *v6;
  v7 = v6[1];
  v9 = (a1 + *(type metadata accessor for RawBankConnectData.NotificationEventsRequestBody(0) + 20));
  *v9 = v8;
  v9[1] = v7;
}

uint64_t BankConnectWebServiceNotificationEventsRequest.makeJSONEncoder()()
{
  v0 = sub_1B77FE968();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FE9B8();
  swift_allocObject();
  v4 = sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB991BE8);
  (*(v1 + 16))(v3, v5, v0);
  sub_1B77FE988();
  return v4;
}

uint64_t sub_1B75E7C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 20);
  v6 = sub_1B77FF988();
  (*(*(v6 - 8) + 16))(a2, v2 + v5, v6);
  v7 = (v2 + *(a1 + 24));
  v9 = *v7;
  v8 = v7[1];
  v10 = (a2 + *(type metadata accessor for RawBankConnectData.NotificationEventsRequestBody(0) + 20));
  *v10 = v9;
  v10[1] = v8;
}

uint64_t sub_1B75E7D20()
{
  v0 = sub_1B77FE968();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FE9B8();
  swift_allocObject();
  v4 = sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB991BE8);
  (*(v1 + 16))(v3, v5, v0);
  sub_1B77FE988();
  return v4;
}

void static RawBankConnectData.NotificationEventsResponse.parse(data:urlResponse:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1B77FE8B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v23 = v3;
    v11 = a3;
    v12 = [v10 statusCode];
    if (v12 == 200)
    {
      sub_1B77FE8F8();
      swift_allocObject();
      sub_1B77FE8E8();
      if (qword_1EB98E9B0 != -1)
      {
        swift_once();
      }

      v13 = __swift_project_value_buffer(v5, qword_1EB991BC8);
      (*(v6 + 16))(v8, v13, v5);
      sub_1B77FE8C8();
      sub_1B75E81C0();
      v14 = v23;
      sub_1B77FE8D8();
      if (v14)
      {

        type metadata accessor for FinanceNetworkError();
        sub_1B75E8C44(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
        swift_allocError();
        *v15 = v14;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
      }
    }

    else
    {
      v20 = v12;
      type metadata accessor for FinanceNetworkError();
      sub_1B75E8C44(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
      swift_allocError();
      *v21 = v20;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for FinanceNetworkError();
    sub_1B75E8C44(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v17 = v16;
    v18 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v17 = v18;
    v17[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

unint64_t sub_1B75E81C0()
{
  result = qword_1EB999318;
  if (!qword_1EB999318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999318);
  }

  return result;
}

uint64_t BankConnectWebServiceRegisterToNotificationEventsRequest.init(consent:eventTypes:subscriptionID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1B75E79FC(a1, a5);
  result = type metadata accessor for BankConnectWebServiceRegisterToNotificationEventsRequest(0);
  *(a5 + *(result + 24)) = a2;
  v10 = (a5 + *(result + 20));
  *v10 = a3;
  v10[1] = a4;
  return result;
}

uint64_t BankConnectWebServiceRegisterToNotificationEventsRequest.jsonBody.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for BankConnectWebServiceRegisterToNotificationEventsRequest(0);
  v4 = *(v1 + *(v3 + 24));
  v5 = (v1 + *(v3 + 20));
  v7 = *v5;
  v6 = v5[1];
  *a1 = v4;
  a1[1] = v7;
  a1[2] = v6;
}

void *sub_1B75E82F8()
{
  v1 = sub_1B77FE968();
  v33 = *(v1 - 8);
  v34 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v32 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1B7807CD0;
  v3 = type metadata accessor for BankConnectConsent();
  v4 = v3[6];
  v5 = (v0 + v3[5]);
  v6 = *v5;
  v30 = v5[1];
  v31 = v6;
  v7 = type metadata accessor for RawBankConnectData.Consent(0);
  v37 = v7;
  v38 = sub_1B75E8C44(&qword_1EB990658, type metadata accessor for RawBankConnectData.Consent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  v9 = v7[5];
  v10 = sub_1B77FF988();
  v11 = *(*(v10 - 8) + 16);
  v11(boxed_opaque_existential_1 + v9, v0 + v4, v10);
  v11(boxed_opaque_existential_1 + v7[6], v0 + v3[7], v10);
  v12 = *(v0 + v3[9]);
  v13 = (v0 + v3[10]);
  v14 = *v13;
  v15 = v13[1];
  v16 = v30;
  *boxed_opaque_existential_1 = v31;
  boxed_opaque_existential_1[1] = v16;
  *(boxed_opaque_existential_1 + v7[7]) = v12;
  v17 = (boxed_opaque_existential_1 + v7[8]);
  *v17 = v14;
  v17[1] = v15;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  sub_1B77FE9B8();
  swift_allocObject();

  sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v18 = v34;
  v19 = __swift_project_value_buffer(v34, qword_1EB991BE8);
  (*(v33 + 16))(v32, v19, v18);
  sub_1B77FE988();
  v20 = v35;
  v21 = sub_1B77FE998();
  v23 = v22;

  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v36);
    v24 = v39;
    *(v39 + 16) = 0;
  }

  else
  {
    v25 = sub_1B77FF5A8();
    v27 = v26;
    sub_1B720A388(v21, v23);
    v24 = v39;
    *(v39 + 32) = 0x746E65736E6F43;
    v24[5] = 0xE700000000000000;
    v24[6] = v25;
    v24[7] = v27;
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  return v24;
}

uint64_t sub_1B75E8638@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + *(a1 + 24));
  v4 = (v2 + *(a1 + 20));
  v6 = *v4;
  v5 = v4[1];
  *a2 = v3;
  a2[1] = v6;
  a2[2] = v5;
}

void static RawBankConnectData.RegisterToNotificationEventsResponse.parse(data:urlResponse:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1B77FE8B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v23 = v3;
    v11 = a3;
    v12 = [v10 statusCode];
    if (v12 == 200)
    {
      sub_1B77FE8F8();
      swift_allocObject();
      sub_1B77FE8E8();
      if (qword_1EB98E9B0 != -1)
      {
        swift_once();
      }

      v13 = __swift_project_value_buffer(v5, qword_1EB991BC8);
      (*(v6 + 16))(v8, v13, v5);
      sub_1B77FE8C8();
      sub_1B75E89FC();
      v14 = v23;
      sub_1B77FE8D8();
      if (v14)
      {

        type metadata accessor for FinanceNetworkError();
        sub_1B75E8C44(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
        swift_allocError();
        *v15 = v14;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
      }
    }

    else
    {
      v20 = v12;
      type metadata accessor for FinanceNetworkError();
      sub_1B75E8C44(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
      swift_allocError();
      *v21 = v20;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for FinanceNetworkError();
    sub_1B75E8C44(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v17 = v16;
    v18 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v17 = v18;
    v17[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

unint64_t sub_1B75E89FC()
{
  result = qword_1EB999320;
  if (!qword_1EB999320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999320);
  }

  return result;
}

uint64_t BankConnectWebServiceUnregisterFromNotificationEventsRequest.jsonBody.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void static BankConnectWebServiceUnregisterFromNotificationEventsResponse.parse(urlResponse:)(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 statusCode];
    if (v5 != 200)
    {
      v6 = v5;
      type metadata accessor for FinanceNetworkError();
      sub_1B75E8C44(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
      swift_allocError();
      *v7 = v6;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for FinanceNetworkError();
    sub_1B75E8C44(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v9 = v8;
    v10 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v9 = v10;
    v9[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_1B75E8C44(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B75E8C90()
{
  result = qword_1EB99A650;
  if (!qword_1EB99A650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99A650);
  }

  return result;
}

unint64_t sub_1B75E8CE8()
{
  result = qword_1EB999330;
  if (!qword_1EB999330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB999330);
  }

  return result;
}

uint64_t sub_1B75E8D64()
{
  result = type metadata accessor for BankConnectConsent();
  if (v1 <= 0x3F)
  {
    result = sub_1B77FF988();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B75E8E18()
{
  type metadata accessor for BankConnectConsent();
  if (v0 <= 0x3F)
  {
    sub_1B75E8EFC(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B75E8EFC(319, &qword_1EB999358, &type metadata for RawBankConnectData.NotificationEventType, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B75E8EFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t static ManagedInternalAccount.existingAccount(withPublicAccountID:in:)()
{
  v11.receiver = swift_getObjCClassFromMetadata();
  v11.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
  v0 = objc_msgSendSuper2(&v11, sel_fetchRequest);
  v1 = sub_1B7800C18();
  [v0 setRelationshipKeyPathsForPrefetching_];

  sub_1B7205540(0, &qword_1EDAFAF30);
  v2 = "rNotificationHelper";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  v4 = sub_1B77FF9B8();
  *(v3 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v3 + 64) = sub_1B73B4AF0(&qword_1EB9905B0, &qword_1EB9905A8);
  *(v3 + 32) = v4;
  v5 = sub_1B78010E8();
  [v0 setPredicate_];

  v6 = v12;
  result = sub_1B7801498();
  if (v6)
  {

    return v2;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v9 = result;
  v10 = sub_1B7801958();
  result = v9;
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(result + 32);
LABEL_8:
    v2 = v8;

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B75E91EC(uint64_t a1)
{
  v32 = sub_1B77FFA18();
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1E69E7CC0];
  v33 = *(a1 + 16);
  if (v33)
  {
    v6 = a1;
    v25 = v1;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1B7801B98();
    v7 = a1 + 56;
    result = sub_1B78018C8();
    v8 = result;
    v9 = 0;
    v10 = *(a1 + 36);
    v29 = a1;
    v30 = v3;
    v27 = v3 + 8;
    v28 = v3 + 16;
    v26 = a1 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v6 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      if (v10 != *(v6 + 36))
      {
        goto LABEL_22;
      }

      v34 = v9;
      v13 = *(v6 + 48);
      v15 = v30;
      v14 = v31;
      v16 = v32;
      (*(v30 + 16))(v31, v13 + *(v30 + 72) * v8, v32);
      sub_1B77FF9B8();
      (*(v15 + 8))(v14, v16);
      sub_1B7801B68();
      sub_1B7801BA8();
      v17 = v29;
      sub_1B7801BB8();
      result = sub_1B7801B78();
      v11 = 1 << *(v17 + 32);
      if (v8 >= v11)
      {
        goto LABEL_23;
      }

      v18 = *(v7 + 8 * v12);
      if ((v18 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v6 = v17;
      if (v10 != *(v17 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v8 & 0x3F));
      if (v19)
      {
        v11 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v12 << 6;
        v21 = v12 + 1;
        v22 = (v26 + 8 * v12);
        while (v21 < (v11 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1B723BB64(v8, v10, 0);
            v11 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_1B723BB64(v8, v10, 0);
      }

LABEL_4:
      v9 = v34 + 1;
      v8 = v11;
      if (v34 + 1 == v33)
      {
        return v35;
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