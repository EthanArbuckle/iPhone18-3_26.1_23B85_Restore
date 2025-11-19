uint64_t sub_1DD9F7968()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F7A40()
{
  *v0;
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9F7B04()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F7BD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA0D4A0();
  *a2 = result;
  return result;
}

void sub_1DD9F7C08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1635017060;
  v5 = 0xE800000000000000;
  v6 = 0x64695F7473726966;
  v7 = 0xE700000000000000;
  v8 = 0x64695F7473616CLL;
  if (v2 != 3)
  {
    v8 = 0x65726F6D5F736168;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7463656A626FLL;
    v3 = 0xE600000000000000;
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

uint64_t sub_1DD9F7C9C()
{
  v1 = *v0;
  v2 = 1635017060;
  v3 = 0x64695F7473726966;
  v4 = 0x64695F7473616CLL;
  if (v1 != 3)
  {
    v4 = 0x65726F6D5F736168;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7463656A626FLL;
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

uint64_t sub_1DD9F7D2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA0D4A0();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9F7D54(uint64_t a1)
{
  v2 = sub_1DDA0D884();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F7D90(uint64_t a1)
{
  v2 = sub_1DDA0D884();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD9F7DCC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DDA0D4EC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1DD9F7E18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E696E6F73616572;
  }

  else
  {
    v4 = 0x736165725F6E6F6ELL;
  }

  if (v3)
  {
    v5 = 0xED0000676E696E6FLL;
  }

  else
  {
    v5 = 0xE900000000000067;
  }

  if (*a2)
  {
    v6 = 0x6E696E6F73616572;
  }

  else
  {
    v6 = 0x736165725F6E6F6ELL;
  }

  if (*a2)
  {
    v7 = 0xE900000000000067;
  }

  else
  {
    v7 = 0xED0000676E696E6FLL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();
  }

  return v9 & 1;
}

uint64_t sub_1DD9F7ED0()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F7F64()
{
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9F7FE4()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F8080@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DDA151E0();

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

void sub_1DD9F80DC(uint64_t *a1@<X8>)
{
  v2 = 0x736165725F6E6F6ELL;
  if (*v1)
  {
    v2 = 0x6E696E6F73616572;
  }

  v3 = 0xED0000676E696E6FLL;
  if (*v1)
  {
    v3 = 0xE900000000000067;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DD9F818C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656C62617473;
  if (v2 != 1)
  {
    v4 = 0x656D697265707865;
    v3 = 0xEC0000006C61746ELL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1635018082;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656C62617473;
  if (*a2 != 1)
  {
    v8 = 0x656D697265707865;
    v7 = 0xEC0000006C61746ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1635018082;
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
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD9F8290()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F8330()
{
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9F83BC()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F8458@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA0D9B0();
  *a2 = result;
  return result;
}

void sub_1DD9F8488(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62617473;
  if (v2 != 1)
  {
    v5 = 0x656D697265707865;
    v4 = 0xEC0000006C61746ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1635018082;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD9F8544()
{
  if (*v0)
  {
    result = 0x746C7561666564;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_1DD9F8578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();

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

uint64_t sub_1DD9F8654(uint64_t a1)
{
  v2 = sub_1DDA11300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F8690(uint64_t a1)
{
  v2 = sub_1DDA11300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F86CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DDA0D9FC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1DD9F8760@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA0DBD4();
  *a2 = result;
  return result;
}

unint64_t sub_1DD9F8790@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DD9F77D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD9F87D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA0DBD4();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9F880C(uint64_t a1)
{
  v2 = sub_1DDA0E3D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F8848(uint64_t a1)
{
  v2 = sub_1DDA0E3D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1DD9F8884@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DDA0DC20(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9;
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

BOOL sub_1DD9F88F0(uint64_t a1, uint64_t a2)
{
  if ((sub_1DDA13490() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FileGeneratorFile(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (v9 || (sub_1DDA15440()) && ((v10 = v4[6], v11 = *(a1 + v10), v12 = *(a1 + v10 + 8), v13 = (a2 + v10), v11 == *v13) ? (v14 = v12 == v13[1]) : (v14 = 0), v14 || (sub_1DDA15440()))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD9F89A4(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DDA15440() & 1) == 0 || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  v5 = *(type metadata accessor for ImageGeneratorImage(0) + 28);

  return sub_1DDA13490();
}

uint64_t sub_1DD9F8A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_1DDA15440(), result = 0, (v12 & 1) != 0))
  {
    if (a4)
    {
      if (a8 && (a3 == a7 && a4 == a8 || (sub_1DDA15440() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1DD9F8AE4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  if (a1[6])
  {
    if ((a2[6] & 1) == 0)
    {
      return 0;
    }

    v11 = a1[4];
    v12 = a1[5];
    v14 = a2[3];
    v13 = a2[4];
    v15 = a2[5];
    if ((v4 != v8 || v5 != v9) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }

    if ((v6 != v10 || v7 != v14) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }

    if (v11 == v13 && v12 == v15)
    {
      return 1;
    }

    return (sub_1DDA15440() & 1) != 0;
  }

  if (a2[6])
  {
    return 0;
  }

  v17 = a2[3];
  if ((v4 != v8 || v5 != v9) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v17)
    {
      return 0;
    }

    if (v6 == v10 && v7 == v17)
    {
      return 1;
    }

    return (sub_1DDA15440() & 1) != 0;
  }

  return !v17;
}

uint64_t sub_1DD9F8C2C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DDA15440() & 1) == 0 || (sub_1DD96A824(a1[2], a2[2]) & 1) == 0)
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

    v7 = a2[3];

    v8 = sub_1DD967BA4(v5, v6);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v9 = a1[4];
  v10 = a2[4];
  if (v9)
  {
    if (v10)
    {

      v11 = sub_1DD967DE0(v9, v10);

      if (v11)
      {
        return 1;
      }
    }
  }

  else if (!v10)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1DD9F8D0C(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v63 = type metadata accessor for FileGeneratorFile(0);
  v3 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for ImageGeneratorImage(0);
  v5 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v62 = (&v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ImageURLItem(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MessageContent(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v13);
  v65 = &v61 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v61 - v19);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v61 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v61 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83E50, &qword_1DDA1E1A8);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v30 = &v61 - v29;
  v31 = (&v61 + *(v28 + 56) - v29);
  sub_1DD9FF500(a1, &v61 - v29, type metadata accessor for MessageContent);
  sub_1DD9FF500(v66, v31, type metadata accessor for MessageContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1DD9FF500(v30, v20, type metadata accessor for MessageContent);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v49 = v62;
        sub_1DD9FEFD0(v31, v62, type metadata accessor for ImageGeneratorImage);
        if (*v20 == *v49 && v20[1] == v49[1] || (sub_1DDA15440()) && v20[2] == v49[2] && v20[3] == v49[3])
        {
          v50 = *(v61 + 28);
          if (sub_1DDA13490())
          {
            v45 = type metadata accessor for ImageGeneratorImage;
            sub_1DD9FF568(v49, type metadata accessor for ImageGeneratorImage);
            v46 = v20;
            goto LABEL_25;
          }
        }

        v57 = type metadata accessor for ImageGeneratorImage;
        sub_1DD9FF568(v49, type metadata accessor for ImageGeneratorImage);
        v58 = v20;
        goto LABEL_44;
      }

      v55 = type metadata accessor for ImageGeneratorImage;
      v56 = v20;
      goto LABEL_38;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v33 = v65;
      sub_1DD9FF500(v30, v65, type metadata accessor for MessageContent);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v34 = v64;
        sub_1DD9FEFD0(v31, v64, type metadata accessor for FileGeneratorFile);
        v35 = sub_1DDA13490();
        v36 = v63;
        if (v35)
        {
          if (v37 = *(v63 + 20), v38 = *(v33 + v37), v39 = *(v33 + v37 + 8), v40 = (v34 + v37), v38 == *v40) && v39 == v40[1] || (sub_1DDA15440())
          {
            if (v41 = *(v36 + 24), v42 = *(v33 + v41), v43 = *(v33 + v41 + 8), v44 = (v34 + v41), v42 == *v44) && v43 == v44[1] || (sub_1DDA15440())
            {
              if (*(v33 + *(v36 + 28)) == *(v34 + *(v36 + 28)))
              {
                v45 = type metadata accessor for FileGeneratorFile;
                sub_1DD9FF568(v34, type metadata accessor for FileGeneratorFile);
                v46 = v33;
LABEL_25:
                sub_1DD9FF568(v46, v45);
                goto LABEL_42;
              }
            }
          }
        }

        v57 = type metadata accessor for FileGeneratorFile;
        sub_1DD9FF568(v34, type metadata accessor for FileGeneratorFile);
        v58 = v33;
LABEL_44:
        sub_1DD9FF568(v58, v57);
LABEL_45:
        sub_1DD9FF568(v30, type metadata accessor for MessageContent);
        goto LABEL_46;
      }

      v55 = type metadata accessor for FileGeneratorFile;
      v56 = v33;
      goto LABEL_38;
    }

    sub_1DD9FF500(v30, v15, type metadata accessor for MessageContent);
    v48 = *v15;
    v47 = v15[1];
    if (swift_getEnumCaseMultiPayload() == 4)
    {
LABEL_27:
      if (v48 == *v31 && v47 == v31[1])
      {
        v59 = v31[1];

        goto LABEL_42;
      }

      v52 = v31[1];
      v53 = sub_1DDA15440();

      if (v53)
      {
LABEL_42:
        sub_1DD9FF568(v30, type metadata accessor for MessageContent);
        v54 = 1;
        return v54 & 1;
      }

      goto LABEL_45;
    }

LABEL_16:

LABEL_39:
    sub_1DD90D378(v30, &qword_1ECD83E50, &qword_1DDA1E1A8);
LABEL_46:
    v54 = 0;
    return v54 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1DD9FF500(v30, v25, type metadata accessor for MessageContent);
    v48 = *v25;
    v47 = v25[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  sub_1DD9FF500(v30, v23, type metadata accessor for MessageContent);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v55 = type metadata accessor for ImageURLItem;
    v56 = v23;
LABEL_38:
    sub_1DD9FF568(v56, v55);
    goto LABEL_39;
  }

  sub_1DD9FEFD0(v31, v10, type metadata accessor for ImageURLItem);
  v54 = sub_1DDA13490();
  sub_1DD9FF568(v10, type metadata accessor for ImageURLItem);
  sub_1DD9FF568(v23, type metadata accessor for ImageURLItem);
  sub_1DD9FF568(v30, type metadata accessor for MessageContent);
  return v54 & 1;
}

BOOL sub_1DD9F9430(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = a1[2];
  v8 = a1[3];
  v11 = a1[4];
  v10 = a1[5];
  v61 = a1;
  v62 = a2;
  v12 = a1[6];
  v13 = a2[2];
  v14 = a2[3];
  v15 = a2[4];
  v16 = a2[5];
  v17 = a2[6];
  if (!v8)
  {
    if (!v14)
    {
      goto LABEL_17;
    }

LABEL_15:
    sub_1DDA0EF54(v13, v14);
    sub_1DDA0EF54(v9, v8);
    sub_1DDA0EFB8(v9, v8);
    sub_1DDA0EFB8(v13, v14);
    return 0;
  }

  if (!v14)
  {
    goto LABEL_15;
  }

  v80[0] = v13;
  v80[1] = v14;
  v80[2] = v15;
  v80[3] = v16;
  v80[4] = v17;
  v79[0] = v9;
  v79[1] = v8;
  v79[2] = v11;
  v79[3] = v10;
  v79[4] = v12;
  sub_1DDA0EF54(v13, v14);
  sub_1DDA0EF54(v9, v8);
  v18 = sub_1DD9F8C2C(v79, v80);

  sub_1DDA0EFB8(v9, v8);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v20 = v61[8];
  v21 = v62[8];
  if (v20)
  {
    if (!v21 || (v61[7] != v62[7] || v20 != v21) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v22 = v61[10];
  v23 = v62[10];
  if (v22)
  {
    if (!v23 || (v61[9] != v62[9] || v22 != v23) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  if ((sub_1DD9668AC(v61[11], v62[11]) & 1) == 0)
  {
    return 0;
  }

  v24 = *(v61 + 96);
  v25 = *(v62 + 96);
  if (v24 == 3)
  {
    if (v25 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v25 == 3)
    {
      return 0;
    }

    v26 = 0xE900000000000065;
    v27 = 0x6764656C776F6E6BLL;
    if (*(v61 + 96))
    {
      if (v24 == 1)
      {
        v28 = 0xD000000000000010;
        v29 = 0x80000001DDA26AC0;
      }

      else
      {
        v28 = 0x74756374726F6873;
        v29 = 0xE900000000000073;
      }
    }

    else
    {
      v28 = 0x6764656C776F6E6BLL;
      v29 = 0xE900000000000065;
    }

    if (*(v62 + 96))
    {
      if (v25 == 1)
      {
        v27 = 0xD000000000000010;
        v26 = 0x80000001DDA26AC0;
      }

      else
      {
        v27 = 0x74756374726F6873;
        v26 = 0xE900000000000073;
      }
    }

    if (v28 == v27 && v29 == v26)
    {
    }

    else
    {
      v30 = sub_1DDA15440();

      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if ((sub_1DD96831C(v61[13], v62[13]) & 1) == 0 || (sub_1DD96831C(v61[14], v62[14]) & 1) == 0)
  {
    return 0;
  }

  v31 = v61[16];
  v32 = v62[16];
  if (v31 == 3)
  {
    if (v32 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v32 == 3)
    {
      return 0;
    }

    if (v31)
    {
      if (v31 == 1)
      {
        if (v32 != 1)
        {
          return 0;
        }
      }

      else if (v31 == 2)
      {
        if (v32 != 2)
        {
          return 0;
        }
      }

      else if (v32 < 3 || (v61[15] != v62[15] || v31 != v32) && (sub_1DDA15440() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v32)
    {
      return 0;
    }
  }

  v33 = v62[17];
  if (v61[17])
  {
    if (!v33 || (sub_1DD96EB60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v34 = *(v62 + 152);
  if (v61[19])
  {
    if (!*(v62 + 152))
    {
      return 0;
    }
  }

  else
  {
    if (*(v61 + 18) != *(v62 + 18))
    {
      v34 = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  v36 = v61[20];
  v35 = v61[21];
  v38 = v61[22];
  v37 = v61[23];
  v40 = v62[20];
  v39 = v62[21];
  v42 = v62[22];
  v41 = v62[23];
  if (!v35)
  {
    if (!v39)
    {
      goto LABEL_90;
    }

LABEL_88:
    sub_1DD9B33CC(v40, v39);
    sub_1DD9B33CC(v36, v35);
    sub_1DD9B3410(v36, v35);
    sub_1DD9B3410(v40, v39);
    return 0;
  }

  if (!v39)
  {
    goto LABEL_88;
  }

  if ((v36 != v40 || v35 != v39) && (sub_1DDA15440() & 1) == 0)
  {
    sub_1DD9B33CC(v40, v39);
    sub_1DD9B33CC(v36, v35);

    sub_1DD9B3410(v36, v35);
    return 0;
  }

  if (v38 == v42 && v37 == v41)
  {
    sub_1DD9B33CC(v40, v39);
    sub_1DD9B33CC(v36, v35);

    sub_1DD9B3410(v36, v35);
  }

  else
  {
    v43 = sub_1DDA15440();
    sub_1DD9B33CC(v40, v39);
    sub_1DD9B33CC(v36, v35);

    sub_1DD9B3410(v36, v35);
    if ((v43 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_90:
  v44 = *(v61 + 13);
  v76 = *(v61 + 12);
  v77 = v44;
  *v78 = *(v61 + 14);
  *&v78[9] = *(v61 + 233);
  v45 = *(v62 + 13);
  v74[0] = *(v62 + 12);
  v74[1] = v45;
  v75[0] = *(v62 + 14);
  *(v75 + 9) = *(v62 + 233);
  v46 = v76;
  v47 = v77;
  v48 = *v78;
  v49 = *&v78[16];
  v50 = v78[24];
  if (!*(&v76 + 1))
  {
    if (!*(&v74[0] + 1))
    {
      sub_1DD90ADB4(&v76, &v68, &qword_1ECD83748, &unk_1DDA227C0);
      sub_1DD90ADB4(v74, &v68, &qword_1ECD83748, &unk_1DDA227C0);
      goto LABEL_109;
    }

LABEL_100:
    v68 = v76;
    v69 = v77;
    *v70 = *v78;
    *&v70[16] = *&v78[16];
    v70[24] = v78[24];
    v71 = v74[0];
    v52 = *(v62 + 14);
    v72 = *(v62 + 13);
    v73[0] = v52;
    *(v73 + 9) = *(v62 + 233);
    sub_1DD90ADB4(&v76, &v63, &qword_1ECD83748, &unk_1DDA227C0);
    sub_1DD90ADB4(v74, &v63, &qword_1ECD83748, &unk_1DDA227C0);
    sub_1DD90D378(&v68, &qword_1ECD849F0, &qword_1DDA22870);
    return 0;
  }

  if (!*(&v74[0] + 1))
  {
    goto LABEL_100;
  }

  v68 = v74[0];
  v51 = *(v62 + 14);
  v69 = *(v62 + 13);
  *v70 = v51;
  *&v70[9] = *(v62 + 233);
  *(&v59 + 1) = *&v70[8];
  v60 = v51;
  *&v59 = *&v70[16];
  v58 = v70[24];
  if (v74[0] != v76 && (sub_1DDA15440() & 1) == 0)
  {
    sub_1DD90ADB4(&v76, &v63, &qword_1ECD83748, &unk_1DDA227C0);
    sub_1DD90ADB4(v74, &v63, &qword_1ECD83748, &unk_1DDA227C0);
    sub_1DD90D378(&v68, &qword_1ECD83748, &unk_1DDA227C0);
    v63 = v46;
    v64 = v47;
    v65 = v48;
    v66 = v49;
    v67 = v50;
    sub_1DD90D378(&v63, &qword_1ECD83748, &unk_1DDA227C0);
    return 0;
  }

  if (v77 != v69 && (sub_1DDA15440() & 1) == 0)
  {
    sub_1DD90ADB4(&v76, &v63, &qword_1ECD83748, &unk_1DDA227C0);
    sub_1DD90ADB4(v74, &v63, &qword_1ECD83748, &unk_1DDA227C0);
    goto LABEL_105;
  }

  sub_1DD90ADB4(&v76, &v63, &qword_1ECD83748, &unk_1DDA227C0);
  sub_1DD90ADB4(v74, &v63, &qword_1ECD83748, &unk_1DDA227C0);
  if ((sub_1DD96D458(v48, v60) & 1) == 0)
  {
LABEL_105:
    sub_1DD90D378(&v68, &qword_1ECD83748, &unk_1DDA227C0);
    goto LABEL_106;
  }

  if (__PAIR128__(*(&v48 + 1), v49) == v59)
  {
    sub_1DD90D378(&v68, &qword_1ECD83748, &unk_1DDA227C0);
    goto LABEL_108;
  }

  v53 = sub_1DDA15440();
  sub_1DD90D378(&v68, &qword_1ECD83748, &unk_1DDA227C0);
  if ((v53 & 1) == 0)
  {
LABEL_106:
    v63 = v46;
    v64 = v47;
    v65 = v48;
    v66 = v49;
    v67 = v50;
    sub_1DD90D378(&v63, &qword_1ECD83748, &unk_1DDA227C0);
    return 0;
  }

LABEL_108:
  if ((v58 ^ v50))
  {
    goto LABEL_106;
  }

LABEL_109:
  v68 = v46;
  v69 = v47;
  *v70 = v48;
  *&v70[16] = v49;
  v70[24] = v50;
  sub_1DD90D378(&v68, &qword_1ECD83748, &unk_1DDA227C0);
  if ((*(v61 + 249) ^ *(v62 + 249)))
  {
    return 0;
  }

  v54 = v61[32];
  v55 = v62[32];
  if (v54)
  {
    if (!v55 || (sub_1DD967B14(v54, v55) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v55)
  {
    return 0;
  }

  v56 = v61[34];
  v57 = v62[34];
  if (v56)
  {
    return v57 && (v61[33] == v62[33] && v56 == v57 || (sub_1DDA15440() & 1) != 0);
  }

  return !v57;
}

uint64_t sub_1DD9F9E10(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v12 = *(a2 + 48);
  if (a1[6])
  {
    if ((a2[6] & 1) == 0)
    {
      return 0;
    }

    v13 = a1[4];
    v14 = a1[5];
    v15 = a2[4];
    v16 = a2[5];
    if ((v4 != v8 || v5 != v9) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }

    if ((v6 != v11 || v7 != v10) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }

    if (v13 == v15 && v14 == v16)
    {
      return 1;
    }

    return (sub_1DDA15440() & 1) != 0;
  }

  if ((a2[6] & 1) != 0 || (v4 != v8 || v5 != v9) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v10)
    {
      return 0;
    }

    if (v6 == v11 && v7 == v10)
    {
      return 1;
    }

    return (sub_1DDA15440() & 1) != 0;
  }

  return !v10;
}

uint64_t sub_1DD9F9F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextAnnotation.URLCitation(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TextAnnotation.Type(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD834D0, &qword_1DDA1E1B0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v35 - v18;
  v20 = (&v35 + *(v17 + 56) - v18);
  sub_1DD9FF500(a1, &v35 - v18, type metadata accessor for TextAnnotation.Type);
  sub_1DD9FF500(a2, v20, type metadata accessor for TextAnnotation.Type);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DD9FF500(v19, v12, type metadata accessor for TextAnnotation.Type);
    v22 = *v12;
    v21 = v12[1];
    v23 = v12[2];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v20[2];
      if (v22 != *v20 || v21 != v20[1])
      {
        v26 = v20[1];
        v27 = sub_1DDA15440();

        if ((v27 & 1) == 0 || v23 != v24)
        {
          goto LABEL_25;
        }

LABEL_24:
        sub_1DD9FF568(v19, type metadata accessor for TextAnnotation.Type);
        return 1;
      }

      v33 = v20[1];

      if (v23 == v24)
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }
  }

  else
  {
    sub_1DD9FF500(v19, v14, type metadata accessor for TextAnnotation.Type);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1DD9FEFD0(v20, v7, type metadata accessor for TextAnnotation.URLCitation);
      if (sub_1DDA13490())
      {
        v28 = *(v4 + 20);
        v29 = *&v14[v28];
        v30 = *&v14[v28 + 8];
        v31 = &v7[v28];
        v32 = v29 == *v31 && v30 == *(v31 + 1);
        if (v32 || (sub_1DDA15440()) && *&v14[*(v4 + 24)] == *&v7[*(v4 + 24)])
        {
          sub_1DD9FF568(v7, type metadata accessor for TextAnnotation.URLCitation);
          sub_1DD9FF568(v14, type metadata accessor for TextAnnotation.URLCitation);
          goto LABEL_24;
        }
      }

      sub_1DD9FF568(v7, type metadata accessor for TextAnnotation.URLCitation);
      sub_1DD9FF568(v14, type metadata accessor for TextAnnotation.URLCitation);
LABEL_25:
      sub_1DD9FF568(v19, type metadata accessor for TextAnnotation.Type);
      return 0;
    }

    sub_1DD9FF568(v14, type metadata accessor for TextAnnotation.URLCitation);
  }

  sub_1DD90D378(v19, &qword_1ECD834D0, &qword_1DDA1E1B0);
  return 0;
}

BOOL sub_1DD9FA314(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 5)
  {
    if (v5 != 5)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 5)
    {
      return 0;
    }

    v6 = 0x6465727265666E69;
    if (*a1 <= 1u)
    {
      if (*a1)
      {
        v7 = 0x6C6C616D73;
      }

      else
      {
        v7 = 0x6465727265666E69;
      }

      if (v4)
      {
        v8 = 0xE500000000000000;
      }

      else
      {
        v8 = 0xE800000000000000;
      }
    }

    else if (v4 == 2)
    {
      v8 = 0xE600000000000000;
      v7 = 0x6D756964656DLL;
    }

    else
    {
      if (v4 == 3)
      {
        v7 = 0x656772616CLL;
      }

      else
      {
        v7 = 0x656772616C78;
      }

      if (v4 == 3)
      {
        v8 = 0xE500000000000000;
      }

      else
      {
        v8 = 0xE600000000000000;
      }
    }

    v9 = 0xE800000000000000;
    v10 = 0xE600000000000000;
    v11 = 0x6D756964656DLL;
    v12 = 0xE500000000000000;
    v13 = 0x656772616CLL;
    if (v5 != 3)
    {
      v13 = 0x656772616C78;
      v12 = 0xE600000000000000;
    }

    if (v5 != 2)
    {
      v11 = v13;
      v10 = v12;
    }

    if (*a2)
    {
      v6 = 0x6C6C616D73;
      v9 = 0xE500000000000000;
    }

    if (*a2 <= 1u)
    {
      v14 = v6;
    }

    else
    {
      v14 = v11;
    }

    if (*a2 <= 1u)
    {
      v15 = v9;
    }

    else
    {
      v15 = v10;
    }

    if (v7 == v14 && v8 == v15)
    {
    }

    else
    {
      v16 = sub_1DDA15440();

      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v17 = a1[1];
  v18 = a2[1];
  if (v17 == 4)
  {
    if (v18 != 4)
    {
      return 0;
    }
  }

  else if (v18 == 4 || (sub_1DD96495C(v17, v18) & 1) == 0)
  {
    return 0;
  }

  v19 = a1[2];
  v20 = a2[2];
  if (v19 == 4)
  {
    if (v20 != 4)
    {
      return 0;
    }
  }

  else if (v20 == 4 || (sub_1DD964838(v19, v20) & 1) == 0)
  {
    return 0;
  }

  v21 = a2[17];
  if (a1[17])
  {
    goto LABEL_47;
  }

  if (a2[17])
  {
    return 0;
  }

  v21 = a2[16];
  if (a1[16])
  {
LABEL_47:
    if ((v21 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_48;
  }

  result = 0;
  if ((a2[16] & 1) == 0 && *(a1 + 1) == *(a2 + 1))
  {
LABEL_48:
    v22 = *(a1 + 4);
    v23 = *(a2 + 4);
    if (v22)
    {
      return v23 && (*(a1 + 3) == *(a2 + 3) && v22 == v23 || (sub_1DDA15440() & 1) != 0);
    }

    return !v23;
  }

  return result;
}

BOOL sub_1DD9FA58C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  v6 = a1[4];
  v8 = *(a1 + 40);
  if (!(v8 >> 6))
  {
    v12 = *(a2 + 40);
    if (v12 > 0x3F)
    {
      return 0;
    }

    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
    v15 = *(a2 + 32);
    if ((v3 != *a2 || v4 != *(a2 + 8)) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }

    return (v5 == v13 && v7 == v14 || (sub_1DDA15440() & 1) != 0) && (sub_1DD96D458(v6, v15) & 1) != 0 && ((v8 ^ v12) & 1) == 0;
  }

  if (v8 >> 6 != 1)
  {
    v16 = v5 | v4;
    if (v16 | v3 | v7 | v6 || v8 != 128)
    {
      v19 = v16 | v7 | v6;
      if (v8 == 128 && v3 == 1 && v19 == 0)
      {
        v23 = *(a2 + 40);
        if ((v23 & 0xC0) != 0x80 || v23 != 128 || *a2 != 1)
        {
          return 0;
        }
      }

      else if (v8 == 128 && v3 == 2 && !v19)
      {
        v22 = *(a2 + 40);
        if ((v22 & 0xC0) != 0x80 || v22 != 128 || *a2 != 2)
        {
          return 0;
        }
      }

      else
      {
        v24 = *(a2 + 40);
        if ((v24 & 0xC0) != 0x80 || v24 != 128 || *a2 != 3)
        {
          return 0;
        }
      }

      v25 = vorrq_s8(*(a2 + 8), *(a2 + 24));
      if (vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)))
      {
        return 0;
      }
    }

    else
    {
      v17 = *(a2 + 40);
      if ((v17 & 0xC0) != 0x80)
      {
        return 0;
      }

      if (v17 != 128)
      {
        return 0;
      }

      v18 = vorrq_s8(*(a2 + 8), *(a2 + 24));
      if (*&vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)) | *a2)
      {
        return 0;
      }
    }

    return 1;
  }

  v29[0] = v3;
  v29[1] = v4;
  v29[2] = v5;
  v29[3] = v7;
  v29[4] = v6;
  if ((*(a2 + 40) & 0xC0) != 0x40)
  {
    return 0;
  }

  v9 = *(a2 + 32);
  v10 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v10;
  v28 = v9;
  return sub_1DD9FA314(v29, v27);
}

BOOL sub_1DD9FA7D0(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = (a1 & 1) == 0;
  if (a1)
  {
    v7 = 0x7463615F7473616CLL;
  }

  else
  {
    v7 = 0x5F64657461657263;
  }

  if (v6)
  {
    v8 = 0xEA00000000007461;
  }

  else
  {
    v8 = 0xEE0074615F657669;
  }

  v9 = (a3 & 1) == 0;
  if (a3)
  {
    v10 = 0x7463615F7473616CLL;
  }

  else
  {
    v10 = 0x5F64657461657263;
  }

  if (v9)
  {
    v11 = 0xEA00000000007461;
  }

  else
  {
    v11 = 0xEE0074615F657669;
  }

  if (v7 == v10 && v8 == v11)
  {
  }

  else
  {
    v12 = sub_1DDA15440();

    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  return a2 == a4;
}

BOOL sub_1DD9FA8AC(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a1 == 2)
  {
    return a3 == 2;
  }

  if (a3 == 2)
  {
    return 0;
  }

  v7 = (a1 & 1) == 0;
  if (a1)
  {
    v8 = 0x7463615F7473616CLL;
  }

  else
  {
    v8 = 0x5F64657461657263;
  }

  if (v7)
  {
    v9 = 0xEA00000000007461;
  }

  else
  {
    v9 = 0xEE0074615F657669;
  }

  v10 = (a3 & 1) == 0;
  if (a3)
  {
    v11 = 0x7463615F7473616CLL;
  }

  else
  {
    v11 = 0x5F64657461657263;
  }

  if (v10)
  {
    v12 = 0xEA00000000007461;
  }

  else
  {
    v12 = 0xEE0074615F657669;
  }

  if (v8 == v11 && v9 == v12)
  {

    if (a2 == a4)
    {
      return 1;
    }
  }

  else
  {
    v13 = sub_1DDA15440();

    if ((v13 & 1) != 0 && a2 == a4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1DD9FA9CC(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        else
        {
          return sub_1DDA15440();
        }
      }
    }

    else if (a6 == 3)
    {
      return sub_1DD967B14(a1, a4);
    }

    return 0;
  }

  v6 = a4 ^ a1 ^ 1;
  if (a6)
  {
    v6 = 0;
  }

  v8 = a6 == 1 && a1 == a4;
  if (a3)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1DD9FAA64(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1DDA15440() & 1) == 0)
  {
    goto LABEL_18;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1DDA15440() & 1) == 0)
  {
    goto LABEL_18;
  }

  v6 = *(a1 + 32);
  v7 = *(a2 + 32);
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = *(a2 + 32);

    v9 = sub_1DD967A5C(v6, v7);

    if ((v9 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v7)
  {
    goto LABEL_18;
  }

  if ((*(a1 + 40) ^ *(a2 + 40)) & 1) != 0 || ((*(a1 + 41) ^ *(a2 + 41)))
  {
    goto LABEL_18;
  }

  v12 = *(a1 + 64);
  v13 = *(a2 + 64);
  if (v12 == 255)
  {
    if (v13 == 255)
    {
LABEL_25:
      v10 = *(a1 + 65) ^ *(a2 + 65) ^ 1;
      return v10 & 1;
    }
  }

  else if (v13 != 255 && (sub_1DD9FA9CC(*(a1 + 48), *(a1 + 56), v12, *(a2 + 48), *(a2 + 56), v13) & 1) != 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  v10 = 0;
  return v10 & 1;
}

BOOL sub_1DD9FAB80(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = *(a1 + 56);
  v8 = *(a1 + 64);
  v11 = *(a1 + 72);
  v10 = *(a1 + 80);
  v12 = *(a1 + 88);
  v14 = *(a2 + 40);
  v13 = *(a2 + 48);
  v16 = *(a2 + 56);
  v15 = *(a2 + 64);
  v18 = *(a2 + 72);
  v17 = *(a2 + 80);
  v19 = *(a2 + 88);
  if (v12 == 255)
  {
    if (v19 == 255)
    {
      return 1;
    }

    goto LABEL_17;
  }

  if (v19 == 255)
  {
LABEL_17:
    v20 = v7;
    v26 = v7;
    v27 = v6;
    v21 = v6;
    v22 = v16;
    v23 = v15;
    v28 = v11;
    v25 = v10;
    sub_1DDA0E5A8(v20, v21, v9, v8, v11, v10, v12);
    sub_1DDA0E5A8(v14, v13, v22, v23, v18, v17, v19);
    sub_1DD9B412C(v26, v27, v9, v8, v28, v25, v12);
    sub_1DD9B412C(v14, v13, v22, v23, v18, v17, v19);
    return 0;
  }

  v31[0] = v14;
  v31[1] = v13;
  v31[2] = v16;
  v31[3] = v15;
  v31[4] = v18;
  v31[5] = v17;
  v32 = v19 & 1;
  v29[0] = v7;
  v29[1] = v6;
  v29[2] = v9;
  v29[3] = v8;
  v29[4] = v11;
  v29[5] = v10;
  v30 = v12 & 1;
  return (sub_1DD9F8AE4(v29, v31) & 1) != 0;
}

BOOL sub_1DD9FAD30(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, char a8)
{
  v14 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v15 = 0x6E61747369737361;
    }

    else
    {
      v15 = 1919251317;
    }

    if (v14 == 1)
    {
      v16 = 0xE900000000000074;
    }

    else
    {
      v16 = 0xE400000000000000;
    }

    v17 = a5;
    if (a5)
    {
LABEL_9:
      if (v17 == 1)
      {
        v18 = 0x6E61747369737361;
      }

      else
      {
        v18 = 1919251317;
      }

      if (v17 == 1)
      {
        v19 = 0xE900000000000074;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      if (v15 != v18)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v16 = 0xE600000000000000;
    v15 = 0x6D6574737973;
    v17 = a5;
    if (a5)
    {
      goto LABEL_9;
    }
  }

  v19 = 0xE600000000000000;
  if (v15 != 0x6D6574737973)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (v16 == v19)
  {

    goto LABEL_22;
  }

LABEL_21:
  v20 = sub_1DDA15440();

  result = 0;
  if ((v20 & 1) == 0)
  {
    return result;
  }

LABEL_22:
  if ((a4 & 1) == 0)
  {
    return (a8 & 1) == 0 && (a2 == a6 && a3 == a7 || (sub_1DDA15440() & 1) != 0);
  }

  return (a8 & 1) != 0 && (sub_1DD966858(a2, a6) & 1) != 0;
}

uint64_t sub_1DD9FAEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5 || (v8 = sub_1DDA15440(), result = 0, (v8 & 1) != 0))
  {
    if (a3)
    {
      if (a6)
      {

        v10 = sub_1DD9674A4(a3, a6);

        if (v10)
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1DD9FAF54(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v5 = *(type metadata accessor for ChatChunk.FileGeneratorCallFileAdded(0) + 28);

  return sub_1DDA13490();
}

BOOL sub_1DD9FAFE8(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = *(a1 + 48);
  if (v9 <= 1)
  {
    if (v9)
    {
      if (a2[3].i8[0] != 1)
      {
        return 0;
      }

      v22 = a2[1].i64[0];
      v23 = a2[1].i64[1];
      v24 = a2[2].i64[0];
      v25 = a2[2].i64[1];
      if ((v3 != a2->i64[0] || v5 != a2->i64[1]) && (sub_1DDA15440() & 1) == 0)
      {
        return 0;
      }

      if ((v4 != v22 || v6 != v23) && (sub_1DDA15440() & 1) == 0)
      {
        return 0;
      }

      if (v7 == v24 && v8 == v25)
      {
        return 1;
      }
    }

    else
    {
      if (a2[3].i8[0])
      {
        return 0;
      }

      v11 = a2->i64[1];
      v12 = v3;
      if (v3)
      {
        if (v3 == 1)
        {
          v13 = 0x6E61747369737361;
        }

        else
        {
          v13 = 1919251317;
        }

        if (v12 == 1)
        {
          v14 = 0xE900000000000074;
        }

        else
        {
          v14 = 0xE400000000000000;
        }
      }

      else
      {
        v14 = 0xE600000000000000;
        v13 = 0x6D6574737973;
      }

      v27 = a2[1].i64[0];
      v28 = a2[1].i8[8];
      v29 = 0x6E61747369737361;
      v30 = 0xE900000000000074;
      if (a2->i8[0] != 1)
      {
        v29 = 1919251317;
        v30 = 0xE400000000000000;
      }

      if (a2->i8[0])
      {
        v31 = v29;
      }

      else
      {
        v31 = 0x6D6574737973;
      }

      if (a2->i8[0])
      {
        v32 = v30;
      }

      else
      {
        v32 = 0xE600000000000000;
      }

      if (v13 == v31 && v14 == v32)
      {
      }

      else
      {
        v33 = sub_1DDA15440();

        if ((v33 & 1) == 0)
        {
          return 0;
        }
      }

      if (v6)
      {
        return (v28 & 1) != 0 && (sub_1DD966858(v5, v11) & 1) != 0;
      }

      if (v28)
      {
        return 0;
      }

      if (v5 == v11 && v4 == v27)
      {
        return 1;
      }
    }

    return (sub_1DDA15440() & 1) != 0;
  }

  if (v9 == 2)
  {
    if (a2[3].i8[0] == 2)
    {
      if (v15 = a2[1].i64[0], v16 = a2[1].i64[1], v17 = a2[2].i64[0], v3 == a2->i64[0]) && v5 == a2->i64[1] || (sub_1DDA15440())
      {
        if (v4 == v15 && v6 == v16 || (sub_1DDA15440()) && (sub_1DD966610(v7, v17))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (v9 == 3)
  {
    if (a2[3].i8[0] == 3)
    {
      if (v10 = a2[1].i64[0], v3 == a2->i64[0]) && v5 == a2->i64[1] || (sub_1DDA15440())
      {
        if (sub_1DD966804(v4, v10))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (!(v4 | v5 | v3 | v6 | v7 | v8))
  {
    if (a2[3].i8[0] == 4)
    {
      v26 = vorrq_s8(a2[1], a2[2]);
      return (*&vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL)) | a2->i64[1] | a2->i64[0]) == 0;
    }

    return 0;
  }

  if (a2[3].i8[0] != 4)
  {
    return 0;
  }

  v18 = vorrq_s8(a2[1], a2[2]);
  v19 = *&vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)) | a2->i64[1];
  return a2->i64[0] == 1 && v19 == 0;
}

BOOL sub_1DD9FB378(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a2 + 16);
  v11 = *(a2 + 17) | ((*(a2 + 21) | (*(a2 + 23) << 16)) << 32);
  v13 = *(a2 + 24);
  v12 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 41) | ((*(a2 + 45) | (*(a2 + 47) << 16)) << 32);
  v16 = *(a2 + 48);
  v17 = *(a2 + 56);
  v18 = *(a2 + 64);
  if (v9 <= 1)
  {
    if (v9)
    {
      if (v18 != 1)
      {
        return 0;
      }

      if (v3 != (v10 | (v11 << 8)) || v5 != v13)
      {
        v29 = *(a2 + 32);
        v30 = sub_1DDA15440();
        v12 = v29;
        if ((v30 & 1) == 0)
        {
          return 0;
        }
      }

      if ((v4 != v12 || v6 != (v14 | (v15 << 8))) && (sub_1DDA15440() & 1) == 0)
      {
        return 0;
      }

      if (v7 == v16 && v8 == v17)
      {
        return 1;
      }
    }

    else
    {
      if (*(a2 + 64))
      {
        return 0;
      }

      v22 = *(a2 + 32);
      v23 = v3;
      if (v3)
      {
        if (v3 == 1)
        {
          v24 = 0x6E61747369737361;
        }

        else
        {
          v24 = 1919251317;
        }

        if (v23 == 1)
        {
          v25 = 0xE900000000000074;
        }

        else
        {
          v25 = 0xE400000000000000;
        }
      }

      else
      {
        v25 = 0xE600000000000000;
        v24 = 0x6D6574737973;
      }

      v31 = 0x6E61747369737361;
      v32 = 0xE900000000000074;
      if (v10 != 1)
      {
        v31 = 1919251317;
        v32 = 0xE400000000000000;
      }

      if (*(a2 + 16))
      {
        v33 = v31;
      }

      else
      {
        v33 = 0x6D6574737973;
      }

      if (*(a2 + 16))
      {
        v34 = v32;
      }

      else
      {
        v34 = 0xE600000000000000;
      }

      if (v24 == v33 && v25 == v34)
      {

        v35 = v22;
      }

      else
      {
        v36 = sub_1DDA15440();

        v35 = v22;
        if ((v36 & 1) == 0)
        {
          return 0;
        }
      }

      if (v6)
      {
        return (v14 & 1) != 0 && (sub_1DD966858(v5, v13) & 1) != 0;
      }

      if (v14)
      {
        return 0;
      }

      if (v5 == v13 && v4 == v35)
      {
        return 1;
      }
    }

    if (sub_1DDA15440())
    {
      return 1;
    }
  }

  else
  {
    if (v9 == 2)
    {
      if (v18 != 2)
      {
        return 0;
      }

      if (v3 != (v10 | (v11 << 8)) || v5 != v13)
      {
        v26 = *(a2 + 32);
        v27 = sub_1DDA15440();
        v12 = v26;
        if ((v27 & 1) == 0)
        {
          return 0;
        }
      }

      return (v4 == v12 && v6 == (v14 | (v15 << 8)) || (sub_1DDA15440() & 1) != 0) && (sub_1DD966610(v7, v16) & 1) != 0;
    }

    if (v9 == 3)
    {
      if (v18 != 3)
      {
        return 0;
      }

      if (v3 != (v10 | (v11 << 8)) || v5 != v13)
      {
        v19 = *(a2 + 32);
        v20 = sub_1DDA15440();
        v12 = v19;
        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }

      return (sub_1DD966804(v4, v12) & 1) != 0;
    }

    if (v4 | v5 | v3 | v6 | v7 | v8)
    {
      if (v18 != 4 || (v10 | (v11 << 8)) != 1)
      {
        return 0;
      }

      v28 = v14 | (v15 << 8);
    }

    else
    {
      if (v18 != 4)
      {
        return 0;
      }

      v28 = v10 | (v11 << 8) | v14 | (v15 << 8);
    }

    if (!(v28 | v13 | v12 | v16 | v17))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1DD9FB738(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  v5 = *(type metadata accessor for ChatChunk.TextValueAnnotation(0) + 32);

  return sub_1DD9F9F4C(a1 + v5, a2 + v5);
}

uint64_t sub_1DD9FB7C8(char *a1, char *a2, uint64_t (*a3)(void), uint64_t (*a4)(char *, char *))
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    return 0;
  }

  v7 = *(a3(0) + 28);

  return a4(&a1[v7], &a2[v7]);
}

uint64_t sub_1DD9FB860(uint64_t a1, int8x16_t *a2)
{
  v251 = a1;
  v252 = a2;
  v2 = type metadata accessor for ChatChunk.RateLimits(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v221 = (&v207 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for ChatChunk.FileGeneratorCallFileAdded(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v219 = (&v207 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v207 = type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded(0);
  v8 = *(*(v207 - 8) + 64);
  MEMORY[0x1EEE9AC00](v207);
  v220 = (&v207 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ChatChunk.TextValueAnnotation(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v217 = (&v207 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v208 = type metadata accessor for ChatChunk.ChoiceItemMessageContent(0);
  v13 = *(*(v208 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v208);
  v218 = &v207 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v216 = &v207 - v16;
  v249 = type metadata accessor for ChatChunk.ChoiceResource(0);
  v17 = *(*(v249 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v249);
  v215 = &v207 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v214 = &v207 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v213 = &v207 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v212 = &v207 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v211 = &v207 - v26;
  v27 = type metadata accessor for ChatChunk.FileUploadResponse(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v210 = (&v207 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  SessionResponse = type metadata accessor for CreateSessionResponse(0);
  v31 = *(*(SessionResponse - 8) + 64);
  MEMORY[0x1EEE9AC00](SessionResponse - 8);
  v209 = (&v207 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v250 = type metadata accessor for ChatChunk(0);
  v33 = *(*(v250 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v250);
  v248 = (&v207 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = MEMORY[0x1EEE9AC00](v34);
  v245 = &v207 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v244 = &v207 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v246 = (&v207 - v41);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v243 = &v207 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v242 = &v207 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v241 = &v207 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v247 = (&v207 - v49);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v240 = &v207 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v239 = (&v207 - v53);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v238 = (&v207 - v55);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v236 = &v207 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v234 = (&v207 - v59);
  v60 = MEMORY[0x1EEE9AC00](v58);
  v232 = (&v207 - v61);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v231 = (&v207 - v63);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v230 = (&v207 - v65);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v233 = (&v207 - v67);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v228 = (&v207 - v69);
  v70 = MEMORY[0x1EEE9AC00](v68);
  v226 = (&v207 - v71);
  v72 = MEMORY[0x1EEE9AC00](v70);
  v237 = (&v207 - v73);
  v74 = MEMORY[0x1EEE9AC00](v72);
  v235 = (&v207 - v75);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v222 = &v207 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v80 = &v207 - v79;
  v81 = MEMORY[0x1EEE9AC00](v78);
  v229 = (&v207 - v82);
  v83 = MEMORY[0x1EEE9AC00](v81);
  v227 = (&v207 - v84);
  v85 = MEMORY[0x1EEE9AC00](v83);
  v225 = (&v207 - v86);
  v87 = MEMORY[0x1EEE9AC00](v85);
  v224 = (&v207 - v88);
  v89 = MEMORY[0x1EEE9AC00](v87);
  v223 = (&v207 - v90);
  v91 = MEMORY[0x1EEE9AC00](v89);
  v93 = &v207 - v92;
  v94 = MEMORY[0x1EEE9AC00](v91);
  v96 = (&v207 - v95);
  v97 = MEMORY[0x1EEE9AC00](v94);
  v99 = &v207 - v98;
  v100 = MEMORY[0x1EEE9AC00](v97);
  v102 = (&v207 - v101);
  MEMORY[0x1EEE9AC00](v100);
  v104 = (&v207 - v103);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83E40, &qword_1DDA1E198);
  v106 = *(*(v105 - 8) + 64);
  v107 = MEMORY[0x1EEE9AC00](v105 - 8);
  v109 = &v207 - v108;
  v110 = (&v207 + *(v107 + 56) - v108);
  sub_1DD9FF500(v251, &v207 - v108, type metadata accessor for ChatChunk);
  v111 = v252;
  v252 = v110;
  sub_1DD9FF500(v111, v110, type metadata accessor for ChatChunk);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD9FF500(v109, v102, type metadata accessor for ChatChunk);
      v167 = v252;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v168 = v210;
        sub_1DD9FEFD0(v167, v210, type metadata accessor for ChatChunk.FileUploadResponse);
        v125 = sub_1DD9FD390(v102, v168);
        v169 = type metadata accessor for ChatChunk.FileUploadResponse;
        sub_1DD9FF568(v168, type metadata accessor for ChatChunk.FileUploadResponse);
        v170 = v102;
        goto LABEL_111;
      }

      v183 = type metadata accessor for ChatChunk.FileUploadResponse;
      goto LABEL_87;
    case 2u:
      sub_1DD9FF500(v109, v99, type metadata accessor for ChatChunk);
      v161 = *(v99 + 5);
      v257 = *(v99 + 4);
      v258 = v161;
      v259 = *(v99 + 6);
      v260 = *(v99 + 14);
      v162 = *(v99 + 1);
      v253 = *v99;
      v254 = v162;
      v163 = *(v99 + 3);
      v255 = *(v99 + 2);
      v256 = v163;
      v143 = v252;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_44;
      }

      goto LABEL_30;
    case 3u:
      sub_1DD9FF500(v109, v96, type metadata accessor for ChatChunk);
      v164 = *v96;
      v165 = v252;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_103;
      }

      v125 = sub_1DD96EB60(v164, *v165);

      goto LABEL_112;
    case 4u:
      sub_1DD9FF500(v109, v93, type metadata accessor for ChatChunk);
      v140 = *(v93 + 5);
      v257 = *(v93 + 4);
      v258 = v140;
      v259 = *(v93 + 6);
      v260 = *(v93 + 14);
      v141 = *(v93 + 1);
      v253 = *v93;
      v254 = v141;
      v142 = *(v93 + 3);
      v255 = *(v93 + 2);
      v256 = v142;
      v143 = v252;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
LABEL_30:
        v144 = *(v143 + 5);
        v265 = *(v143 + 4);
        v266 = v144;
        v267 = *(v143 + 6);
        v268 = v143[14];
        v145 = *(v143 + 1);
        v261 = *v143;
        v262 = v145;
        v146 = *(v143 + 3);
        v263 = *(v143 + 2);
        v264 = v146;
        v125 = sub_1DD9FDAD4(&v253, &v261);
        sub_1DD9B2CFC(&v253);
        sub_1DD9B2CFC(&v261);
        goto LABEL_112;
      }

LABEL_44:
      sub_1DD9B2CFC(&v253);
      goto LABEL_130;
    case 5u:
      v102 = v223;
      sub_1DD9FF500(v109, v223, type metadata accessor for ChatChunk);
      v177 = v252;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_86;
      }

      v151 = v177;
      v152 = v211;
      goto LABEL_82;
    case 6u:
      v102 = v224;
      sub_1DD9FF500(v109, v224, type metadata accessor for ChatChunk);
      v184 = v252;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_86;
      }

      v151 = v184;
      v152 = v212;
      goto LABEL_82;
    case 7u:
      v102 = v225;
      sub_1DD9FF500(v109, v225, type metadata accessor for ChatChunk);
      v166 = v252;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_86;
      }

      v151 = v166;
      v152 = v213;
      goto LABEL_82;
    case 8u:
      v102 = v227;
      sub_1DD9FF500(v109, v227, type metadata accessor for ChatChunk);
      v189 = v252;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_86;
      }

      v151 = v189;
      v152 = v214;
      goto LABEL_82;
    case 9u:
      v102 = v229;
      sub_1DD9FF500(v109, v229, type metadata accessor for ChatChunk);
      v150 = v252;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
LABEL_86:
        v183 = type metadata accessor for ChatChunk.ChoiceResource;
        goto LABEL_87;
      }

      v151 = v150;
      v152 = v215;
LABEL_82:
      sub_1DD9FEFD0(v151, v152, type metadata accessor for ChatChunk.ChoiceResource);
      if (*v102 == *v152)
      {
        v190 = sub_1DD9FDD08(v102 + *(v249 + 20), v152 + *(v249 + 20));
        sub_1DD9FF568(v152, type metadata accessor for ChatChunk.ChoiceResource);
        if (v190)
        {
          v157 = type metadata accessor for ChatChunk.ChoiceResource;
          goto LABEL_85;
        }
      }

      else
      {
        sub_1DD9FF568(v152, type metadata accessor for ChatChunk.ChoiceResource);
      }

      v191 = type metadata accessor for ChatChunk.ChoiceResource;
      goto LABEL_133;
    case 0xAu:
      sub_1DD9FF500(v109, v80, type metadata accessor for ChatChunk);
      v187 = *(v80 + 3);
      v263 = *(v80 + 2);
      v264 = v187;
      LOBYTE(v265) = v80[64];
      v188 = *(v80 + 1);
      v261 = *v80;
      v262 = v188;
      v136 = v252;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_79;
      }

      goto LABEL_25;
    case 0xBu:
      v133 = v222;
      sub_1DD9FF500(v109, v222, type metadata accessor for ChatChunk);
      v134 = *(v133 + 48);
      v263 = *(v133 + 32);
      v264 = v134;
      LOBYTE(v265) = *(v133 + 64);
      v135 = *(v133 + 16);
      v261 = *v133;
      v262 = v135;
      v136 = v252;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
LABEL_79:
        sub_1DD9FF5F8(&v261);
        goto LABEL_130;
      }

LABEL_25:
      v137 = v136[1];
      v253 = *v136;
      v254 = v137;
      v138 = v136[3];
      v255 = v136[2];
      v256 = v138;
      LOBYTE(v257) = v136[4].i8[0];
      if (v261 == v253.i64[0] && *(&v261 + 1) == v253.i64[1])
      {
        v269 = v262;
        v270 = v263;
        v271 = v264;
        v272 = v265;
        v273 = v254;
        v274 = v255;
        v275 = v256;
        v276 = v257;
        v139 = sub_1DD9FAFE8(&v269, &v273);
        sub_1DD9FF5F8(&v253);
        sub_1DD9FF5F8(&v261);
        if (v139)
        {
          goto LABEL_125;
        }
      }

      else
      {
        sub_1DD9FF5F8(&v253);
        sub_1DD9FF5F8(&v261);
      }

      goto LABEL_134;
    case 0xCu:
      v102 = v235;
      sub_1DD9FF500(v109, v235, type metadata accessor for ChatChunk);
      v147 = v252;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_70;
      }

      v148 = v147;
      v149 = v216;
      goto LABEL_65;
    case 0xDu:
      v102 = v237;
      sub_1DD9FF500(v109, v237, type metadata accessor for ChatChunk);
      v181 = v252;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
LABEL_70:
        v183 = type metadata accessor for ChatChunk.ChoiceItemMessageContent;
        goto LABEL_87;
      }

      v148 = v181;
      v149 = v218;
LABEL_65:
      sub_1DD9FEFD0(v148, v149, type metadata accessor for ChatChunk.ChoiceItemMessageContent);
      if (*v102 == *v149 && v102[1] == v149[1] && v102[2] == v149[2])
      {
        v182 = sub_1DD9F8D0C(v102 + *(v208 + 28), v149 + *(v208 + 28));
        sub_1DD9FF568(v149, type metadata accessor for ChatChunk.ChoiceItemMessageContent);
        if (v182)
        {
          v157 = type metadata accessor for ChatChunk.ChoiceItemMessageContent;
          goto LABEL_85;
        }
      }

      else
      {
        sub_1DD9FF568(v149, type metadata accessor for ChatChunk.ChoiceItemMessageContent);
      }

      v191 = type metadata accessor for ChatChunk.ChoiceItemMessageContent;
      goto LABEL_133;
    case 0xEu:
      v127 = v226;
      sub_1DD9FF500(v109, v226, type metadata accessor for ChatChunk);
      v129 = v127[1];
      v128 = v127[2];
      v131 = v127[3];
      v130 = v127[4];
      v132 = v252;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_103;
      }

      goto LABEL_74;
    case 0xFu:
      v127 = v228;
      sub_1DD9FF500(v109, v228, type metadata accessor for ChatChunk);
      v129 = v127[1];
      v128 = v127[2];
      v131 = v127[3];
      v130 = v127[4];
      v132 = v252;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_103;
      }

      goto LABEL_74;
    case 0x10u:
      v122 = v233;
      sub_1DD9FF500(v109, v233, type metadata accessor for ChatChunk);
      v123 = v252;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v124 = v217;
        sub_1DD9FEFD0(v123, v217, type metadata accessor for ChatChunk.TextValueAnnotation);
        v125 = sub_1DD9FB738(v122, v124);
        v126 = type metadata accessor for ChatChunk.TextValueAnnotation;
        goto LABEL_110;
      }

      v203 = type metadata accessor for ChatChunk.TextValueAnnotation;
      goto LABEL_128;
    case 0x11u:
      v127 = v230;
      sub_1DD9FF500(v109, v230, type metadata accessor for ChatChunk);
      v129 = v127[1];
      v128 = v127[2];
      v131 = v127[3];
      v130 = v127[4];
      v132 = v252;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_103;
      }

      goto LABEL_74;
    case 0x12u:
      v127 = v231;
      sub_1DD9FF500(v109, v231, type metadata accessor for ChatChunk);
      v129 = v127[1];
      v128 = v127[2];
      v131 = v127[3];
      v130 = v127[4];
      v132 = v252;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_103;
      }

LABEL_74:
      v185 = v132[4];
      if (*v127 != *v132 || v129 != v132[1] || v128 != v132[2])
      {
        goto LABEL_101;
      }

      v186 = v132[3];
      goto LABEL_98;
    case 0x13u:
      v174 = v232;
      sub_1DD9FF500(v109, v232, type metadata accessor for ChatChunk);
      v175 = v174[1];
      v131 = v174[2];
      v130 = v174[3];
      v176 = v252;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_103;
      }

      goto LABEL_95;
    case 0x14u:
      v174 = v234;
      sub_1DD9FF500(v109, v234, type metadata accessor for ChatChunk);
      v175 = v174[1];
      v131 = v174[2];
      v130 = v174[3];
      v176 = v252;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_103;
      }

      goto LABEL_95;
    case 0x15u:
      v178 = v236;
      sub_1DD9FF500(v109, v236, type metadata accessor for ChatChunk);
      v179 = *(v178 + 48);
      v263 = *(v178 + 32);
      v264 = v179;
      LOBYTE(v265) = *(v178 + 64);
      v180 = *(v178 + 16);
      v261 = *v178;
      v262 = v180;
      v118 = v252;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_42;
      }

      goto LABEL_11;
    case 0x16u:
      v174 = v238;
      sub_1DD9FF500(v109, v238, type metadata accessor for ChatChunk);
      v175 = v174[1];
      v131 = v174[2];
      v130 = v174[3];
      v176 = v252;
      if (swift_getEnumCaseMultiPayload() == 22)
      {
        goto LABEL_95;
      }

      goto LABEL_103;
    case 0x17u:
      v174 = v239;
      sub_1DD9FF500(v109, v239, type metadata accessor for ChatChunk);
      v175 = v174[1];
      v131 = v174[2];
      v130 = v174[3];
      v176 = v252;
      if (swift_getEnumCaseMultiPayload() != 23)
      {
LABEL_103:

        goto LABEL_130;
      }

LABEL_95:
      v185 = v176[3];
      if (*v174 != *v176 || v175 != v176[1])
      {
LABEL_101:

        goto LABEL_134;
      }

      v186 = v176[2];
LABEL_98:
      if (v131 == v186 && v130 == v185)
      {

        goto LABEL_125;
      }

      v204 = sub_1DDA15440();

      if (v204)
      {
        goto LABEL_125;
      }

      goto LABEL_134;
    case 0x18u:
      v158 = v240;
      sub_1DD9FF500(v109, v240, type metadata accessor for ChatChunk);
      v159 = *(v158 + 48);
      v263 = *(v158 + 32);
      v264 = v159;
      LOBYTE(v265) = *(v158 + 64);
      v160 = *(v158 + 16);
      v261 = *v158;
      v262 = v160;
      v118 = v252;
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        goto LABEL_42;
      }

      goto LABEL_11;
    case 0x19u:
      v102 = v247;
      sub_1DD9FF500(v109, v247, type metadata accessor for ChatChunk);
      v153 = v252;
      if (swift_getEnumCaseMultiPayload() != 25)
      {
        v183 = type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded;
LABEL_87:
        v113 = v183;
        v114 = v102;
        goto LABEL_129;
      }

      v154 = v220;
      sub_1DD9FEFD0(v153, v220, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
      if (*v102 == *v154 && v102[1] == v154[1] && v102[2] == v154[2])
      {
        v155 = *(v207 + 28);
        v156 = sub_1DDA13490();
        sub_1DD9FF568(v154, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
        if (v156)
        {
          v157 = type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded;
LABEL_85:
          sub_1DD9FF568(v102, v157);
          goto LABEL_125;
        }
      }

      else
      {
        sub_1DD9FF568(v154, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
      }

      v191 = type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded;
LABEL_133:
      sub_1DD9FF568(v102, v191);
      goto LABEL_134;
    case 0x1Au:
      v200 = v241;
      sub_1DD9FF500(v109, v241, type metadata accessor for ChatChunk);
      v201 = *(v200 + 48);
      v263 = *(v200 + 32);
      v264 = v201;
      LOBYTE(v265) = *(v200 + 64);
      v202 = *(v200 + 16);
      v261 = *v200;
      v262 = v202;
      v118 = v252;
      if (swift_getEnumCaseMultiPayload() != 26)
      {
        goto LABEL_42;
      }

      goto LABEL_11;
    case 0x1Bu:
      v115 = v242;
      sub_1DD9FF500(v109, v242, type metadata accessor for ChatChunk);
      v116 = *(v115 + 48);
      v263 = *(v115 + 32);
      v264 = v116;
      LOBYTE(v265) = *(v115 + 64);
      v117 = *(v115 + 16);
      v261 = *v115;
      v262 = v117;
      v118 = v252;
      if (swift_getEnumCaseMultiPayload() == 27)
      {
        goto LABEL_11;
      }

      goto LABEL_42;
    case 0x1Cu:
      v196 = v243;
      sub_1DD9FF500(v109, v243, type metadata accessor for ChatChunk);
      v197 = *(v196 + 48);
      v263 = *(v196 + 32);
      v264 = v197;
      LOBYTE(v265) = *(v196 + 64);
      v198 = *(v196 + 16);
      v261 = *v196;
      v262 = v198;
      v118 = v252;
      if (swift_getEnumCaseMultiPayload() != 28)
      {
        goto LABEL_42;
      }

      goto LABEL_11;
    case 0x1Du:
      v122 = v246;
      sub_1DD9FF500(v109, v246, type metadata accessor for ChatChunk);
      v199 = v252;
      if (swift_getEnumCaseMultiPayload() == 29)
      {
        v124 = v219;
        sub_1DD9FEFD0(v199, v219, type metadata accessor for ChatChunk.FileGeneratorCallFileAdded);
        v125 = sub_1DD9FAF54(v122, v124);
        v126 = type metadata accessor for ChatChunk.FileGeneratorCallFileAdded;
        goto LABEL_110;
      }

      v203 = type metadata accessor for ChatChunk.FileGeneratorCallFileAdded;
      goto LABEL_128;
    case 0x1Eu:
      v192 = v244;
      sub_1DD9FF500(v109, v244, type metadata accessor for ChatChunk);
      v193 = *(v192 + 48);
      v263 = *(v192 + 32);
      v264 = v193;
      LOBYTE(v265) = *(v192 + 64);
      v194 = *(v192 + 16);
      v261 = *v192;
      v262 = v194;
      v118 = v252;
      if (swift_getEnumCaseMultiPayload() != 30)
      {
        goto LABEL_42;
      }

      goto LABEL_11;
    case 0x1Fu:
      v171 = v245;
      sub_1DD9FF500(v109, v245, type metadata accessor for ChatChunk);
      v172 = *(v171 + 48);
      v263 = *(v171 + 32);
      v264 = v172;
      LOBYTE(v265) = *(v171 + 64);
      v173 = *(v171 + 16);
      v261 = *v171;
      v262 = v173;
      v118 = v252;
      if (swift_getEnumCaseMultiPayload() != 31)
      {
LABEL_42:
        sub_1DD9FF5C8(&v261);
        goto LABEL_130;
      }

LABEL_11:
      v119 = v118[1];
      v253 = *v118;
      v254 = v119;
      v120 = v118[3];
      v255 = v118[2];
      v256 = v120;
      LOBYTE(v257) = v118[4].i8[0];
      if (v261 == v253.i64[0] && *(&v261 + 1) == v253.i64[1])
      {
        v269 = v262;
        v270 = v263;
        v271 = v264;
        v272 = v265;
        v273 = v254;
        v274 = v255;
        v275 = v256;
        v276 = v257;
        v121 = sub_1DD9FAFE8(&v269, &v273);
        sub_1DD9FF5C8(&v253);
        sub_1DD9FF5C8(&v261);
        if (v121)
        {
LABEL_125:
          sub_1DD9FF568(v109, type metadata accessor for ChatChunk);
          v125 = 1;
          return v125 & 1;
        }
      }

      else
      {
        sub_1DD9FF5C8(&v253);
        sub_1DD9FF5C8(&v261);
      }

LABEL_134:
      sub_1DD9FF568(v109, type metadata accessor for ChatChunk);
      goto LABEL_135;
    case 0x20u:
      v122 = v248;
      sub_1DD9FF500(v109, v248, type metadata accessor for ChatChunk);
      v195 = v252;
      if (swift_getEnumCaseMultiPayload() == 32)
      {
        v124 = v221;
        sub_1DD9FEFD0(v195, v221, type metadata accessor for ChatChunk.RateLimits);
        v125 = sub_1DD9FE380(v122, v124);
        v126 = type metadata accessor for ChatChunk.RateLimits;
LABEL_110:
        v169 = v126;
        sub_1DD9FF568(v124, v126);
        v170 = v122;
        goto LABEL_111;
      }

      v203 = type metadata accessor for ChatChunk.RateLimits;
LABEL_128:
      v113 = v203;
      v114 = v122;
      goto LABEL_129;
    case 0x21u:
      if (swift_getEnumCaseMultiPayload() != 33)
      {
        goto LABEL_130;
      }

      goto LABEL_125;
    case 0x22u:
      if (swift_getEnumCaseMultiPayload() != 34)
      {
        goto LABEL_130;
      }

      goto LABEL_125;
    case 0x23u:
      if (swift_getEnumCaseMultiPayload() != 35)
      {
        goto LABEL_130;
      }

      goto LABEL_125;
    case 0x24u:
      if (swift_getEnumCaseMultiPayload() != 36)
      {
        goto LABEL_130;
      }

      goto LABEL_125;
    case 0x25u:
      if (swift_getEnumCaseMultiPayload() != 37)
      {
        goto LABEL_130;
      }

      goto LABEL_125;
    case 0x26u:
      if (swift_getEnumCaseMultiPayload() != 38)
      {
        goto LABEL_130;
      }

      goto LABEL_125;
    default:
      sub_1DD9FF500(v109, v104, type metadata accessor for ChatChunk);
      v112 = v252;
      if (swift_getEnumCaseMultiPayload())
      {
        v113 = type metadata accessor for CreateSessionResponse;
        v114 = v104;
LABEL_129:
        sub_1DD9FF568(v114, v113);
LABEL_130:
        sub_1DD90D378(v109, &qword_1ECD83E40, &qword_1DDA1E198);
LABEL_135:
        v125 = 0;
      }

      else
      {
        v206 = v209;
        sub_1DD9FEFD0(v112, v209, type metadata accessor for CreateSessionResponse);
        v125 = sub_1DD9FF798(v104, v206);
        v169 = type metadata accessor for CreateSessionResponse;
        sub_1DD9FF568(v206, type metadata accessor for CreateSessionResponse);
        v170 = v104;
LABEL_111:
        sub_1DD9FF568(v170, v169);
LABEL_112:
        sub_1DD9FF568(v109, type metadata accessor for ChatChunk);
      }

      return v125 & 1;
  }
}

BOOL sub_1DD9FD390(void *a1, void *a2)
{
  v4 = sub_1DDA13680();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v66[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v66[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v66[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A58, &qword_1DDA16E70);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v66[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v66[-v21];
  v23 = *a1;
  v24 = a1[1];
  v73 = a1;
  if ((v23 != *a2 || v24 != a2[1]) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v68 = v13;
  v69 = v8;
  v70 = type metadata accessor for ChatChunk.FileUploadResponse(0);
  v25 = *(v70 + 20);
  v26 = *(v16 + 48);
  v72 = v5;
  sub_1DD90ADB4(v73 + v25, v22, &qword_1ECD82838, &unk_1DDA185F0);
  v71 = a2;
  v27 = v72;
  sub_1DD90ADB4(a2 + v25, &v22[v26], &qword_1ECD82838, &unk_1DDA185F0);
  v28 = *(v27 + 48);
  if (v28(v22, 1, v4) == 1)
  {
    if (v28(&v22[v26], 1, v4) == 1)
    {
      sub_1DD90D378(v22, &qword_1ECD82838, &unk_1DDA185F0);
      goto LABEL_11;
    }

LABEL_9:
    v29 = v22;
LABEL_17:
    sub_1DD90D378(v29, &qword_1ECD82A58, &qword_1DDA16E70);
    return 0;
  }

  sub_1DD90ADB4(v22, v15, &qword_1ECD82838, &unk_1DDA185F0);
  if (v28(&v22[v26], 1, v4) == 1)
  {
    (*(v27 + 8))(v15, v4);
    goto LABEL_9;
  }

  v30 = v69;
  (*(v27 + 32))(v69, &v22[v26], v4);
  sub_1DD9E4B98(&qword_1ECD82A60, MEMORY[0x1E6969530]);
  v67 = sub_1DDA14AF0();
  v31 = *(v27 + 8);
  v31(v30, v4);
  v31(v15, v4);
  sub_1DD90D378(v22, &qword_1ECD82838, &unk_1DDA185F0);
  if ((v67 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v32 = v70;
  v33 = *(v70 + 24);
  v34 = *(v16 + 48);
  sub_1DD90ADB4(v73 + v33, v20, &qword_1ECD82838, &unk_1DDA185F0);
  sub_1DD90ADB4(v71 + v33, &v20[v34], &qword_1ECD82838, &unk_1DDA185F0);
  if (v28(v20, 1, v4) == 1)
  {
    if (v28(&v20[v34], 1, v4) == 1)
    {
      sub_1DD90D378(v20, &qword_1ECD82838, &unk_1DDA185F0);
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v35 = v68;
  sub_1DD90ADB4(v20, v68, &qword_1ECD82838, &unk_1DDA185F0);
  if (v28(&v20[v34], 1, v4) == 1)
  {
    (*(v72 + 8))(v35, v4);
LABEL_16:
    v29 = v20;
    goto LABEL_17;
  }

  v37 = v72;
  v38 = &v20[v34];
  v39 = v69;
  (*(v72 + 32))(v69, v38, v4);
  sub_1DD9E4B98(&qword_1ECD82A60, MEMORY[0x1E6969530]);
  v40 = sub_1DDA14AF0();
  v41 = *(v37 + 8);
  v41(v39, v4);
  v41(v35, v4);
  sub_1DD90D378(v20, &qword_1ECD82838, &unk_1DDA185F0);
  if ((v40 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v42 = v32[7];
  v43 = *(v73 + v42);
  v44 = v71;
  v45 = *(v71 + v42);
  if (v43 == 2)
  {
    if (v45 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v45 == 2)
    {
      return 0;
    }

    if (v43)
    {
      v46 = 0x69737365636F7270;
    }

    else
    {
      v46 = 0x6574656C706D6F63;
    }

    if (v43)
    {
      v47 = 0xEA0000000000676ELL;
    }

    else
    {
      v47 = 0xE900000000000064;
    }

    if (v45)
    {
      v48 = 0x69737365636F7270;
    }

    else
    {
      v48 = 0x6574656C706D6F63;
    }

    if (v45)
    {
      v49 = 0xEA0000000000676ELL;
    }

    else
    {
      v49 = 0xE900000000000064;
    }

    if (v46 == v48 && v47 == v49)
    {

      v44 = v71;
    }

    else
    {
      v50 = sub_1DDA15440();

      v44 = v71;
      if ((v50 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v51 = v32[8];
  v52 = (v73 + v51);
  v53 = *(v73 + v51 + 8);
  v54 = (v44 + v51);
  v55 = v54[1];
  if (v53)
  {
    if (!v55 || (*v52 != *v54 || v53 != v55) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v55)
  {
    return 0;
  }

  v56 = v32[9];
  v57 = (v73 + v56);
  v58 = *(v73 + v56 + 8);
  v59 = (v44 + v56);
  v60 = v59[1];
  if (v58)
  {
    if (!v60 || (*v57 != *v59 || v58 != v60) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v60)
  {
    return 0;
  }

  v61 = v32[10];
  v62 = (v73 + v61);
  v63 = *(v73 + v61 + 8);
  v64 = (v44 + v61);
  v65 = *(v44 + v61 + 8);
  if ((v63 & 1) == 0)
  {
    if (*v62 != *v64)
    {
      v65 = 1;
    }

    return (v65 & 1) == 0;
  }

  return (v65 & 1) != 0;
}

uint64_t sub_1DD9FDAD4(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (!v7 || (a1[4] != a2[4] || v6 != v7) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v8 = a1[9];
  v9 = a2[9];
  if (v8)
  {
    if (!v9 || (a1[8] != a2[8] || v8 != v9) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[10];
  v11 = a2[10];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = a2[10];

    v13 = sub_1DD9665BC(v10, v11);

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v14 = a2[11];
  if (a1[11])
  {
    if (!v14 || (sub_1DD96EB60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = a1[12];
  v16 = a2[12];
  if (!v15)
  {
    return !v16;
  }

  if (!v16)
  {
    return 0;
  }

  v18 = a1[13];
  v17 = a1[14];
  v20 = a2[13];
  v19 = a2[14];

  if ((sub_1DD969360(v15, v16) & 1) == 0)
  {
LABEL_49:

    goto LABEL_50;
  }

  if (!v17)
  {
    if (!v19)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  if (!v19)
  {
LABEL_50:

    return 0;
  }

  if (v18 != v20 || v17 != v19)
  {
    v22 = sub_1DDA15440();

    return (v22 & 1) != 0;
  }

LABEL_52:

  return 1;
}

BOOL sub_1DD9FDD08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DDA134E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83E48, &qword_1DDA1E1A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v61 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v17 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (v17 == 1)
    {
      v18 = 0x656C706D6F636E69;
    }

    else
    {
      v18 = 0x72676F72705F6E69;
    }

    if (v17 == 1)
    {
      v19 = 0xEA00000000006574;
    }

    else
    {
      v19 = 0xEB00000000737365;
    }
  }

  else
  {
    v18 = 0x6574656C706D6F63;
    v19 = 0xE900000000000064;
  }

  v20 = 0x656C706D6F636E69;
  v21 = 0xEA00000000006574;
  if (*(a2 + 16) != 1)
  {
    v20 = 0x72676F72705F6E69;
    v21 = 0xEB00000000737365;
  }

  if (*(a2 + 16))
  {
    v22 = v20;
  }

  else
  {
    v22 = 0x6574656C706D6F63;
  }

  if (*(a2 + 16))
  {
    v23 = v21;
  }

  else
  {
    v23 = 0xE900000000000064;
  }

  v70 = v8;
  if (v18 == v22 && v19 == v23)
  {
  }

  else
  {
    v24 = sub_1DDA15440();

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_1DD9668AC(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v68 = v5;
  v69 = v4;
  v26 = *(a1 + 32);
  v25 = *(a1 + 40);
  v27 = *(a1 + 48);
  v28 = *(a1 + 56);
  v29 = *(a2 + 32);
  v30 = *(a2 + 40);
  v31 = *(a2 + 48);
  v32 = *(a2 + 56);
  if (v28 == 1)
  {
    if (v32 == 1)
    {
      goto LABEL_27;
    }

    goto LABEL_31;
  }

  if (v32 == 1)
  {
LABEL_31:
    v38 = *(a1 + 32);
    v39 = *(a1 + 40);
    v40 = *(a1 + 48);
    v41 = v31;
    sub_1DD9FFB50(v29, v30, v31, v32);
    sub_1DD9FFB50(v38, v39, v40, v28);
    sub_1DD9FFB94(v38, v39, v40, v28);
    v42 = v29;
    v43 = v30;
    v44 = v41;
    v45 = v32;
LABEL_43:
    sub_1DD9FFB94(v42, v43, v44, v45);
    return 0;
  }

  v63 = *(a2 + 48);
  v64 = v12;
  v67 = v30;
  v46 = v25;
  v47 = v27;
  sub_1DD9FFB50(v29, v67, v31, v32);
  v48 = v26;
  v66 = v47;
  v49 = v47;
  v50 = v26;
  v51 = v67;
  sub_1DD9FFB50(v48, v46, v49, v28);
  v65 = v46;
  if ((sub_1DD9631B8(v50, v46, v29, v51) & 1) == 0)
  {
    sub_1DD928DE0(v29, v51);

    v42 = v50;
LABEL_42:
    v43 = v65;
    v44 = v66;
    v45 = v28;
    goto LABEL_43;
  }

  v62 = v50;
  if (!v28)
  {
    sub_1DD928DE0(v29, v51);
    v12 = v64;
    if (v32)
    {

      v42 = v62;
      v43 = v65;
      v44 = v66;
      v45 = 0;
      goto LABEL_43;
    }

    v28 = 0;
    goto LABEL_53;
  }

  v12 = v64;
  if (!v32)
  {
    sub_1DD928DE0(v29, v51);
    v42 = v62;
    goto LABEL_42;
  }

  v52 = v66;
  if (v66 == v63 && v28 == v32)
  {
    sub_1DD928DE0(v29, v51);

LABEL_53:
    sub_1DD9FFB94(v62, v65, v66, v28);
    goto LABEL_27;
  }

  v58 = sub_1DDA15440();
  v59 = v51;
  v60 = v58;
  sub_1DD928DE0(v29, v59);

  sub_1DD9FFB94(v62, v65, v52, v28);
  if ((v60 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  v33 = *(type metadata accessor for ChatChunk.Choice(0) + 32);
  v34 = *(v13 + 48);
  sub_1DD90ADB4(a1 + v33, v16, &qword_1ECD82CE0, &qword_1DDA18700);
  sub_1DD90ADB4(a2 + v33, &v16[v34], &qword_1ECD82CE0, &qword_1DDA18700);
  v36 = v68;
  v35 = v69;
  v37 = *(v68 + 48);
  if (v37(v16, 1, v69) != 1)
  {
    sub_1DD90ADB4(v16, v12, &qword_1ECD82CE0, &qword_1DDA18700);
    if (v37(&v16[v34], 1, v35) == 1)
    {
      (*(v36 + 8))(v12, v35);
      goto LABEL_40;
    }

    v54 = &v16[v34];
    v55 = v70;
    (*(v36 + 32))(v70, v54, v35);
    sub_1DD9E4B98(&qword_1ECD834B0, MEMORY[0x1E6968FB0]);
    v56 = sub_1DDA14AF0();
    v57 = *(v36 + 8);
    v57(v55, v35);
    v57(v12, v35);
    sub_1DD90D378(v16, &qword_1ECD82CE0, &qword_1DDA18700);
    return (v56 & 1) != 0;
  }

  if (v37(&v16[v34], 1, v35) != 1)
  {
LABEL_40:
    sub_1DD90D378(v16, &qword_1ECD83E48, &qword_1DDA1E1A0);
    return 0;
  }

  sub_1DD90D378(v16, &qword_1ECD82CE0, &qword_1DDA18700);
  return 1;
}

BOOL sub_1DD9FE380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v66 = (&v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D10, &qword_1DDA185E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v61 = (&v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v10);
  v63 = (&v59 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v65 = (&v59 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v59 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83E58, &qword_1DDA1E1B8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v62 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v64 = &v59 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v59 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v59 - v28;
  v67 = v27;
  v68 = a1;
  v30 = *(v27 + 48);
  sub_1DD90ADB4(a1, &v59 - v28, &qword_1ECD82D10, &qword_1DDA185E0);
  v31 = a2;
  sub_1DD90ADB4(a2, &v29[v30], &qword_1ECD82D10, &qword_1DDA185E0);
  v32 = *(v5 + 48);
  if (v32(v29, 1, v4) == 1)
  {
    if (v32(&v29[v30], 1, v4) == 1)
    {
      sub_1DD90D378(v29, &qword_1ECD82D10, &qword_1DDA185E0);
      goto LABEL_8;
    }

LABEL_6:
    v33 = v29;
LABEL_28:
    sub_1DD90D378(v33, &qword_1ECD83E58, &qword_1DDA1E1B8);
    return 0;
  }

  sub_1DD90ADB4(v29, v17, &qword_1ECD82D10, &qword_1DDA185E0);
  if (v32(&v29[v30], 1, v4) == 1)
  {
    sub_1DD9FF568(v17, type metadata accessor for ChatChunk.RateLimits.Limits);
    goto LABEL_6;
  }

  v34 = &v29[v30];
  v35 = v66;
  sub_1DD9FEFD0(v34, v66, type metadata accessor for ChatChunk.RateLimits.Limits);
  v36 = sub_1DD9FEC08(v17, v35);
  sub_1DD9FF568(v35, type metadata accessor for ChatChunk.RateLimits.Limits);
  sub_1DD9FF568(v17, type metadata accessor for ChatChunk.RateLimits.Limits);
  sub_1DD90D378(v29, &qword_1ECD82D10, &qword_1DDA185E0);
  if (!v36)
  {
    return 0;
  }

LABEL_8:
  v60 = type metadata accessor for ChatChunk.RateLimits(0);
  v37 = *(v60 + 20);
  v38 = *(v67 + 48);
  sub_1DD90ADB4(v68 + v37, v26, &qword_1ECD82D10, &qword_1DDA185E0);
  v39 = v31;
  sub_1DD90ADB4(v31 + v37, &v26[v38], &qword_1ECD82D10, &qword_1DDA185E0);
  if (v32(v26, 1, v4) == 1)
  {
    if (v32(&v26[v38], 1, v4) == 1)
    {
      sub_1DD90D378(v26, &qword_1ECD82D10, &qword_1DDA185E0);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v40 = v65;
  sub_1DD90ADB4(v26, v65, &qword_1ECD82D10, &qword_1DDA185E0);
  if (v32(&v26[v38], 1, v4) == 1)
  {
    sub_1DD9FF568(v40, type metadata accessor for ChatChunk.RateLimits.Limits);
LABEL_13:
    v33 = v26;
    goto LABEL_28;
  }

  v41 = &v26[v38];
  v42 = v66;
  sub_1DD9FEFD0(v41, v66, type metadata accessor for ChatChunk.RateLimits.Limits);
  v43 = sub_1DD9FEC08(v40, v42);
  sub_1DD9FF568(v42, type metadata accessor for ChatChunk.RateLimits.Limits);
  sub_1DD9FF568(v40, type metadata accessor for ChatChunk.RateLimits.Limits);
  sub_1DD90D378(v26, &qword_1ECD82D10, &qword_1DDA185E0);
  if (!v43)
  {
    return 0;
  }

LABEL_15:
  v44 = v60;
  v45 = *(v60 + 24);
  v46 = *(v67 + 48);
  v47 = v64;
  sub_1DD90ADB4(v68 + v45, v64, &qword_1ECD82D10, &qword_1DDA185E0);
  sub_1DD90ADB4(v39 + v45, v47 + v46, &qword_1ECD82D10, &qword_1DDA185E0);
  if (v32(v47, 1, v4) == 1)
  {
    if (v32((v47 + v46), 1, v4) != 1)
    {
LABEL_27:
      v33 = v47;
      goto LABEL_28;
    }

    sub_1DD90D378(v47, &qword_1ECD82D10, &qword_1DDA185E0);
LABEL_21:
    v53 = *(v44 + 28);
    v54 = *(v67 + 48);
    v47 = v62;
    sub_1DD90ADB4(v68 + v53, v62, &qword_1ECD82D10, &qword_1DDA185E0);
    sub_1DD90ADB4(v39 + v53, v47 + v54, &qword_1ECD82D10, &qword_1DDA185E0);
    if (v32(v47, 1, v4) == 1)
    {
      if (v32((v47 + v54), 1, v4) == 1)
      {
        sub_1DD90D378(v47, &qword_1ECD82D10, &qword_1DDA185E0);
        return 1;
      }

      goto LABEL_27;
    }

    v55 = v61;
    sub_1DD90ADB4(v47, v61, &qword_1ECD82D10, &qword_1DDA185E0);
    if (v32((v47 + v54), 1, v4) == 1)
    {
      v49 = v55;
      goto LABEL_26;
    }

    v57 = v66;
    sub_1DD9FEFD0(v47 + v54, v66, type metadata accessor for ChatChunk.RateLimits.Limits);
    v58 = sub_1DD9FEC08(v55, v57);
    sub_1DD9FF568(v57, type metadata accessor for ChatChunk.RateLimits.Limits);
    sub_1DD9FF568(v55, type metadata accessor for ChatChunk.RateLimits.Limits);
    sub_1DD90D378(v47, &qword_1ECD82D10, &qword_1DDA185E0);
    return v58;
  }

  v48 = v63;
  sub_1DD90ADB4(v47, v63, &qword_1ECD82D10, &qword_1DDA185E0);
  if (v32((v47 + v46), 1, v4) == 1)
  {
    v49 = v48;
LABEL_26:
    sub_1DD9FF568(v49, type metadata accessor for ChatChunk.RateLimits.Limits);
    goto LABEL_27;
  }

  v50 = v47 + v46;
  v51 = v66;
  sub_1DD9FEFD0(v50, v66, type metadata accessor for ChatChunk.RateLimits.Limits);
  v52 = sub_1DD9FEC08(v48, v51);
  sub_1DD9FF568(v51, type metadata accessor for ChatChunk.RateLimits.Limits);
  sub_1DD9FF568(v48, type metadata accessor for ChatChunk.RateLimits.Limits);
  sub_1DD90D378(v47, &qword_1ECD82D10, &qword_1DDA185E0);
  if (v52)
  {
    goto LABEL_21;
  }

  return 0;
}

BOOL sub_1DD9FEC08(void *a1, void *a2)
{
  v4 = sub_1DDA13680();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A58, &qword_1DDA16E70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  if (*a1 != *a2)
  {
    return 0;
  }

  v17 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
  v18 = a1;
  v19 = a2;
  v28 = v17;
  v29 = v18;
  v20 = *(v17 + 20);
  v21 = *(v13 + 48);
  sub_1DD90ADB4(v18 + v20, v16, &qword_1ECD82838, &unk_1DDA185F0);
  v22 = v19 + v20;
  v23 = v19;
  sub_1DD90ADB4(v22, &v16[v21], &qword_1ECD82838, &unk_1DDA185F0);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v21], 1, v4) == 1)
    {
      sub_1DD90D378(v16, &qword_1ECD82838, &unk_1DDA185F0);
      return *(v29 + *(v28 + 24)) == *(v23 + *(v28 + 24));
    }

    goto LABEL_7;
  }

  sub_1DD90ADB4(v16, v12, &qword_1ECD82838, &unk_1DDA185F0);
  if (v24(&v16[v21], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_1DD90D378(v16, &qword_1ECD82A58, &qword_1DDA16E70);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v21], v4);
  sub_1DD9E4B98(&qword_1ECD82A60, MEMORY[0x1E6969530]);
  v26 = sub_1DDA14AF0();
  v27 = *(v5 + 8);
  v27(v8, v4);
  v27(v12, v4);
  v23 = v19;
  sub_1DD90D378(v16, &qword_1ECD82838, &unk_1DDA185F0);
  if (v26)
  {
    return *(v29 + *(v28 + 24)) == *(v23 + *(v28 + 24));
  }

  return 0;
}

unint64_t sub_1DD9FEF7C()
{
  result = qword_1ECD83D90;
  if (!qword_1ECD83D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83D90);
  }

  return result;
}

uint64_t sub_1DD9FEFD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DD9FF038()
{
  result = qword_1ECD83D98;
  if (!qword_1ECD83D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83D98);
  }

  return result;
}

unint64_t sub_1DD9FF08C()
{
  result = qword_1ECD83DA0;
  if (!qword_1ECD83DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83DA0);
  }

  return result;
}

unint64_t sub_1DD9FF0E0()
{
  result = qword_1ECD83DB8;
  if (!qword_1ECD83DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83DB8);
  }

  return result;
}

unint64_t sub_1DD9FF134()
{
  result = qword_1ECD83DC0;
  if (!qword_1ECD83DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83DC0);
  }

  return result;
}

unint64_t sub_1DD9FF188()
{
  result = qword_1ECD83DC8;
  if (!qword_1ECD83DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83DC8);
  }

  return result;
}

unint64_t sub_1DD9FF1DC()
{
  result = qword_1ECD83DD0;
  if (!qword_1ECD83DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83DD0);
  }

  return result;
}

unint64_t sub_1DD9FF230()
{
  result = qword_1ECD83DD8;
  if (!qword_1ECD83DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83DD8);
  }

  return result;
}

unint64_t sub_1DD9FF284()
{
  result = qword_1ECD83DE0;
  if (!qword_1ECD83DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83DE0);
  }

  return result;
}

unint64_t sub_1DD9FF2D8()
{
  result = qword_1ECD83DE8;
  if (!qword_1ECD83DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83DE8);
  }

  return result;
}

unint64_t sub_1DD9FF32C()
{
  result = qword_1ECD83DF8;
  if (!qword_1ECD83DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83DF8);
  }

  return result;
}

unint64_t sub_1DD9FF380()
{
  result = qword_1ECD83E08;
  if (!qword_1ECD83E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83E08);
  }

  return result;
}

unint64_t sub_1DD9FF3D4()
{
  result = qword_1ECD83E18;
  if (!qword_1ECD83E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83E18);
  }

  return result;
}

unint64_t sub_1DD9FF428()
{
  result = qword_1ECD83E28;
  if (!qword_1ECD83E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83E20, &qword_1DDA1E190);
    sub_1DD9FF4AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83E28);
  }

  return result;
}

unint64_t sub_1DD9FF4AC()
{
  result = qword_1ECD83E30;
  if (!qword_1ECD83E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83E30);
  }

  return result;
}

uint64_t sub_1DD9FF500(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD9FF568(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1DD9FF628(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1DDA15440() & 1) == 0 || a1[4] != a2[4] || (a1[5] != a2[5] || a1[6] != a2[6]) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if ((a1[7] != a2[7] || a1[8] != a2[8]) && (sub_1DDA15440() & 1) == 0 || a1[9] != a2[9] || (a1[10] != a2[10] || a1[11] != a2[11]) && (sub_1DDA15440() & 1) == 0 || (a1[12] != a2[12] || a1[13] != a2[13]) && (sub_1DDA15440() & 1) == 0 || (a1[14] != a2[14] || a1[15] != a2[15]) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for TwoPhaseUploadDocumentResponse(0) + 52);

  return sub_1DD9FF798((a1 + v6), (a2 + v6));
}

BOOL sub_1DD9FF798(void *a1, void *a2)
{
  v4 = sub_1DDA13680();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A58, &qword_1DDA16E70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  SessionResponse = type metadata accessor for CreateSessionResponse(0);
  v18 = SessionResponse[5];
  if ((sub_1DDA13650() & 1) == 0)
  {
    return 0;
  }

  v19 = SessionResponse[6];
  if ((sub_1DDA13650() & 1) == 0)
  {
    return 0;
  }

  v20 = SessionResponse[7];
  v21 = *(v13 + 48);
  sub_1DD90ADB4(a1 + v20, v16, &qword_1ECD82838, &unk_1DDA185F0);
  v22 = a2 + v20;
  v23 = v5;
  v30 = v21;
  sub_1DD90ADB4(v22, &v16[v21], &qword_1ECD82838, &unk_1DDA185F0);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v30], 1, v4) == 1)
    {
      sub_1DD90D378(v16, &qword_1ECD82838, &unk_1DDA185F0);
      return sub_1DD9FA8AC(*(a1 + SessionResponse[8]), *(a1 + SessionResponse[8] + 8), *(a2 + SessionResponse[8]), *(a2 + SessionResponse[8] + 8));
    }

    goto LABEL_11;
  }

  sub_1DD90ADB4(v16, v12, &qword_1ECD82838, &unk_1DDA185F0);
  if (v24(&v16[v30], 1, v4) == 1)
  {
    (*(v23 + 8))(v12, v4);
LABEL_11:
    sub_1DD90D378(v16, &qword_1ECD82A58, &qword_1DDA16E70);
    return 0;
  }

  (*(v23 + 32))(v8, &v16[v30], v4);
  sub_1DD9E4B98(&qword_1ECD82A60, MEMORY[0x1E6969530]);
  v27 = sub_1DDA14AF0();
  v28 = *(v23 + 8);
  v28(v8, v4);
  v28(v12, v4);
  sub_1DD90D378(v16, &qword_1ECD82838, &unk_1DDA185F0);
  if (v27)
  {
    return sub_1DD9FA8AC(*(a1 + SessionResponse[8]), *(a1 + SessionResponse[8] + 8), *(a2 + SessionResponse[8]), *(a2 + SessionResponse[8] + 8));
  }

  return 0;
}

uint64_t sub_1DD9FFB50(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_1DD928DC0(result, a2);
  }

  return result;
}

uint64_t sub_1DD9FFB94(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_1DD928DE0(result, a2);
  }

  return result;
}

unint64_t sub_1DD9FFBD8()
{
  result = qword_1ECD83E68;
  if (!qword_1ECD83E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83E68);
  }

  return result;
}

unint64_t sub_1DD9FFC2C()
{
  result = qword_1ECD83E80;
  if (!qword_1ECD83E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83E80);
  }

  return result;
}

unint64_t sub_1DD9FFC80()
{
  result = qword_1ECD83E98;
  if (!qword_1ECD83E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83E98);
  }

  return result;
}

unint64_t sub_1DD9FFCD4()
{
  result = qword_1ECD83EB0;
  if (!qword_1ECD83EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83EB0);
  }

  return result;
}

uint64_t sub_1DD9FFD28()
{
  v0 = sub_1DDA154C0();

  if (v0 >= 0x27)
  {
    return 39;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD9FFD7C(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v10 = a2;
  v6[2] = &v9;
  if (sub_1DD9C32BC(sub_1DDA06808, v6, &unk_1F58EC480))
  {

    sub_1DD9311E4(&qword_1F58EC520);
    return 0;
  }

  else
  {
    sub_1DD9313D4();
    v9 = a1;
    v10 = a2;
    v7 = qword_1F58EC4E0;
    v8 = off_1F58EC4E8;
    if (sub_1DDA14FA0() & 1) != 0 || (v9 = a1, v10 = a2, v7 = qword_1F58EC4F0, v8 = off_1F58EC4F8, (sub_1DDA14FA0()))
    {

      sub_1DD9311E4(&qword_1F58EC520);
      return 1;
    }

    else
    {
      v9 = a1;
      v10 = a2;
      v7 = qword_1F58EC520;
      v8 = off_1F58EC528;
      v5 = sub_1DDA14FA0();

      sub_1DD9311E4(&qword_1F58EC520);
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
}

uint64_t sub_1DD9FFEF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DDA145F0();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1DDA14630();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DDA14600();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DDA145D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DDA145E0();
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == *MEMORY[0x1E69A0D38])
  {
    v21 = 0;
  }

  else if (v20 == *MEMORY[0x1E69A0D28])
  {
    v21 = 1;
  }

  else if (v20 == *MEMORY[0x1E69A0D30])
  {
    v21 = 2;
  }

  else if (v20 == *MEMORY[0x1E69A0D20])
  {
    v21 = 3;
  }

  else if (v20 == *MEMORY[0x1E69A0D18])
  {
    v21 = 4;
  }

  else
  {
    (*(v16 + 8))(v19, v15);
    v21 = 5;
  }

  sub_1DDA14620();
  v22 = (*(v11 + 88))(v14, v10);
  v23 = v40;
  if (v22 == *MEMORY[0x1E69A0D68])
  {
    v24 = 0;
  }

  else if (v22 == *MEMORY[0x1E69A0D60])
  {
    v24 = 1;
  }

  else if (v22 == *MEMORY[0x1E69A0D50])
  {
    v24 = 2;
  }

  else if (v22 == *MEMORY[0x1E69A0D58])
  {
    v24 = 3;
  }

  else
  {
    (*(v11 + 8))(v14, v10);
    v24 = 4;
  }

  sub_1DDA14640();
  v26 = v37;
  v25 = v38;
  v27 = (*(v37 + 88))(v9, v38);
  if (v27 == *MEMORY[0x1E69A0D70])
  {
    v28 = 0;
  }

  else if (v27 == *MEMORY[0x1E69A0D80])
  {
    v28 = 1;
  }

  else if (v27 == *MEMORY[0x1E69A0D78])
  {
    v28 = 2;
  }

  else if (v27 == *MEMORY[0x1E69A0D88])
  {
    v28 = 3;
  }

  else
  {
    (*(v26 + 8))(v9, v25);
    v28 = 4;
  }

  sub_1DDA14610();
  v29 = v39;
  v30 = (*(v39 + 88))(v5, v23);
  if (v30 == *MEMORY[0x1E69A0D40])
  {
    (*(v29 + 96))(v5, v23);
    v31 = 0;
    v32 = 0;
    v33 = *v5;
  }

  else if (v30 == *MEMORY[0x1E69A0D48])
  {
    v33 = 0;
    v32 = 0;
    v31 = 1;
  }

  else
  {
    (*(v29 + 8))(v5, v23);
    v33 = 0;
    v31 = 0;
    v32 = 1;
  }

  result = sub_1DDA14650();
  *a1 = v21;
  *(a1 + 1) = v24;
  *(a1 + 2) = v28;
  *(a1 + 8) = v33;
  *(a1 + 16) = v31;
  *(a1 + 17) = v32;
  *(a1 + 24) = result;
  *(a1 + 32) = v35;
  return result;
}

uint64_t sub_1DDA0041C(uint64_t a1)
{
  v37 = sub_1DDA14580();
  v2 = *(v37 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DDA14550();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v10, a1, v6);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x1E69A0CE0])
  {
    (*(v7 + 8))(a1, v6);
    (*(v7 + 96))(v10, v6);
    return *v10;
  }

  if (v11 == *MEMORY[0x1E69A0CD8])
  {
    (*(v7 + 8))(a1, v6);
    (*(v7 + 96))(v10, v6);
    v12 = *v10;
    v13 = v10[1];
    return v12;
  }

  if (v11 == *MEMORY[0x1E69A0CD0])
  {
    (*(v7 + 96))(v10, v6);
    v14 = *v10;
    v15 = *(*v10 + 16);
    if (v15)
    {
      v31 = v7;
      v32 = v6;
      v33 = a1;
      v38 = MEMORY[0x1E69E7CC0];
      sub_1DD9AF0BC(0, v15, 0);
      v12 = v38;
      v17 = *(v2 + 16);
      v16 = v2 + 16;
      v18 = *(v16 + 64);
      v30[1] = v14;
      v19 = v14 + ((v18 + 32) & ~v18);
      v34 = *(v16 + 56);
      v35 = v17;
      v36 = v16;
      v20 = (v16 - 8);
      do
      {
        v21 = v37;
        v35(v5, v19, v37);
        v22 = sub_1DDA14570();
        v24 = v23;
        (*v20)(v5, v21);
        v38 = v12;
        v26 = *(v12 + 16);
        v25 = *(v12 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1DD9AF0BC((v25 > 1), v26 + 1, 1);
          v12 = v38;
        }

        *(v12 + 16) = v26 + 1;
        v27 = v12 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        v19 += v34;
        --v15;
      }

      while (v15);
      (*(v31 + 8))(v33, v32);
    }

    else
    {
      v28 = *v10;

      (*(v7 + 8))(a1, v6);
      return MEMORY[0x1E69E7CC0];
    }

    return v12;
  }

  result = sub_1DDA15180();
  __break(1u);
  return result;
}

unint64_t sub_1DDA00814@<X0>(uint64_t *a1@<X8>)
{
  v142 = sub_1DDA14550();
  v141 = *(v142 - 8);
  v2 = *(v141 + 64);
  v3 = MEMORY[0x1EEE9AC00](v142);
  v138 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v139 = &v131 - v5;
  v150 = sub_1DDA144E0();
  v148 = *(v150 - 8);
  v6 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v149 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84268, &qword_1DDA1E368);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v144 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v147 = &v131 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v145 = (&v131 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v146 = (&v131 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v140 = &v131 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v143 = &v131 - v20;
  v21 = sub_1DDA144F0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84270, &unk_1DDA1E370);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v131 - v28;
  v30 = sub_1DDA14540();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DDA14560();
  v35 = v30;
  v36 = v31;
  if ((*(v31 + 48))(v29, 1, v35) == 1)
  {
    result = sub_1DD90D378(v29, &qword_1ECD84270, &unk_1DDA1E370);
LABEL_3:
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    a1[4] = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
LABEL_30:
    a1[5] = v42 | v38;
    a1[6] = v41;
    a1[7] = v40;
    *(a1 + 32) = v39;
    return result;
  }

  v43 = *(v31 + 32);
  v137 = v35;
  v43(v34, v29, v35);
  sub_1DDA14520();
  v44 = (*(v22 + 88))(v25, v21);
  v45 = v34;
  if (v44 != *MEMORY[0x1E69A0CB8])
  {
    if (v44 == *MEMORY[0x1E69A0CC8])
    {
      v136 = v36;
      v135 = a1;
      v78 = sub_1DDA14590();
      v80 = v79;
      v81 = sub_1DDA14530();
      v82 = v146;
      v83 = v45;
      sub_1DDA14500();
      v84 = v145;
      sub_1DD90ADB4(v82, v145, &qword_1ECD84268, &qword_1DDA1E368);
      v85 = v141;
      v86 = v142;
      if ((*(v141 + 48))(v84, 1, v142) == 1)
      {
        v41 = 0;
        v40 = 0;
        v87 = -1;
      }

      else
      {
        v112 = v80;
        v113 = v81;
        v114 = v78;
        v115 = v139;
        (*(v85 + 32))(v139, v84, v86);
        v116 = v138;
        (*(v85 + 16))(v138, v115, v86);
        v117 = sub_1DDA0041C(v116);
        v118 = v85;
        v41 = v117;
        v40 = v119;
        v87 = v120;
        v121 = v115;
        v78 = v114;
        v81 = v113;
        v80 = v112;
        (*(v118 + 8))(v121, v86);
      }

      sub_1DD90D378(v82, &qword_1ECD84268, &qword_1DDA1E368);
      result = (*(v136 + 8))(v83, v137);
      v38 = 0;
      v42 = 0;
      v39 = v87 | 0x100;
      a1 = v135;
      *v135 = v78;
      a1[1] = v80;
      *(a1 + 1) = xmmword_1DDA1C2A0;
      a1[4] = 0;
      if ((v81 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v44 != *MEMORY[0x1E69A0CC0])
      {
        (*(v36 + 8))(v34, v137);
        result = (*(v22 + 8))(v25, v21);
        goto LABEL_3;
      }

      v88 = v36;
      v135 = a1;
      v89 = sub_1DDA14590();
      v91 = v90;
      v92 = sub_1DDA14530();
      v93 = v147;
      sub_1DDA14500();
      v94 = v144;
      sub_1DD90ADB4(v93, v144, &qword_1ECD84268, &qword_1DDA1E368);
      v95 = v141;
      v96 = v142;
      if ((*(v141 + 48))(v94, 1, v142) == 1)
      {
        v41 = 0;
        v40 = 0;
        v97 = -1;
      }

      else
      {
        v122 = v92;
        v123 = v139;
        (*(v95 + 32))(v139, v94, v96);
        v124 = v138;
        (*(v95 + 16))(v138, v123, v96);
        v125 = sub_1DDA0041C(v124);
        v126 = v95;
        v41 = v125;
        v40 = v127;
        v97 = v128;
        v129 = v123;
        v92 = v122;
        (*(v126 + 8))(v129, v96);
      }

      sub_1DD90D378(v147, &qword_1ECD84268, &qword_1DDA1E368);
      result = (*(v88 + 8))(v45, v137);
      v38 = 0;
      v42 = 0;
      v39 = v97 | 0x100;
      v130 = v135;
      *v135 = v89;
      v130[1] = v91;
      a1 = v130;
      *(v130 + 1) = xmmword_1DDA1C290;
      v130[4] = 0;
      if ((v92 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

LABEL_29:
    v42 = 256;
    goto LABEL_30;
  }

  v136 = v36;
  (*(v22 + 96))(v25, v21);
  v46 = *v25;
  v134 = sub_1DDA14590();
  v133 = v47;
  v48 = *(v46 + 16);
  if (!v48)
  {

    v49 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v98 = sub_1DDA14510();
    v99 = sub_1DDA14530();
    v100 = v143;
    sub_1DDA14500();
    v101 = v140;
    sub_1DD90ADB4(v100, v140, &qword_1ECD84268, &qword_1DDA1E368);
    v102 = v141;
    v103 = v142;
    if ((*(v141 + 48))(v101, 1, v142) == 1)
    {
      v41 = 0;
      v40 = 0;
      v104 = -1;
    }

    else
    {
      v105 = v139;
      (*(v102 + 32))(v139, v101, v103);
      v106 = v138;
      (*(v102 + 16))(v138, v105, v103);
      v107 = sub_1DDA0041C(v106);
      v108 = v102;
      v41 = v107;
      v40 = v109;
      v104 = v110;
      (*(v108 + 8))(v105, v103);
    }

    sub_1DD90D378(v143, &qword_1ECD84268, &qword_1DDA1E368);
    result = (*(v136 + 8))(v45, v137);
    v39 = v104 | 0x100;
    v38 = v98 & 1;
    v111 = v133;
    *a1 = v134;
    a1[1] = v111;
    *(a1 + 1) = xmmword_1DDA1C2B0;
    a1[4] = v49;
    if ((v99 & 1) == 0)
    {
      v42 = 0;
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v132 = v34;
  v135 = a1;
  v159 = MEMORY[0x1E69E7CC0];
  sub_1DD9AF17C(0, v48, 0);
  v49 = v159;
  v50 = v148;
  v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v131 = v46;
  v52 = v46 + v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD830B0, &unk_1DDA18D30);
  v146 = *(v50 + 16);
  v147 = v53;
  v148 = v50 + 16;
  v144 = *(v50 + 72);
  v145 = (v50 + 8);
  while (1)
  {
    v146(v149, v52, v150);
    v151 = 1701667182;
    v152 = 0xE400000000000000;
    v153 = sub_1DDA144C0();
    v154 = v54;
    v155 = 0x65756C6176;
    v156 = 0xE500000000000000;
    v157 = sub_1DDA144D0();
    v158 = v55;
    v56 = sub_1DDA151C0();

    v58 = v151;
    v57 = v152;
    v60 = v153;
    v59 = v154;

    result = sub_1DD96AC38(v58, v57);
    if (v61)
    {
      break;
    }

    *(v56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v62 = (v56[6] + 16 * result);
    *v62 = v58;
    v62[1] = v57;
    v63 = (v56[7] + 16 * result);
    *v63 = v60;
    v63[1] = v59;
    v64 = v56[2];
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (v65)
    {
      goto LABEL_36;
    }

    v56[2] = v66;
    v67 = v155;
    v68 = v156;
    v70 = v157;
    v69 = v158;

    result = sub_1DD96AC38(v67, v68);
    if (v71)
    {
      break;
    }

    *(v56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v72 = (v56[6] + 16 * result);
    *v72 = v67;
    v72[1] = v68;
    v73 = (v56[7] + 16 * result);
    *v73 = v70;
    v73[1] = v69;
    v74 = v56[2];
    v65 = __OFADD__(v74, 1);
    v75 = v74 + 1;
    if (v65)
    {
      goto LABEL_36;
    }

    v56[2] = v75;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829C8, &qword_1DDA1E380);
    swift_arrayDestroy();
    (*v145)(v149, v150);
    v159 = v49;
    v77 = *(v49 + 16);
    v76 = *(v49 + 24);
    if (v77 >= v76 >> 1)
    {
      sub_1DD9AF17C((v76 > 1), v77 + 1, 1);
      v49 = v159;
    }

    *(v49 + 16) = v77 + 1;
    *(v49 + 8 * v77 + 32) = v56;
    v52 += v144;
    if (!--v48)
    {

      a1 = v135;
      v45 = v132;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1DDA014D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= 9999)
  {
    v3 = 10000 * a1;
    if ((a1 * 10000) >> 64 != (10000 * a1) >> 63)
    {
      __break(1u);
      goto LABEL_11;
    }

    result = v3 + a2;
    if (!__OFADD__(v3, a2))
    {
      return result;
    }

    __break(1u);
  }

  if (qword_1ECD827A8 != -1)
  {
LABEL_11:
    swift_once();
  }

  v5 = sub_1DDA14810();
  __swift_project_value_buffer(v5, qword_1ECDA20E0);
  v6 = sub_1DDA147F0();
  v7 = sub_1DDA14EE0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = a2;
    *(v8 + 12) = 2048;
    *(v8 + 14) = 10000;
    _os_log_impl(&dword_1DD8F8000, v6, v7, "The content index is too large, %ld, The maximum we can support is: %ld", v8, 0x16u);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
  }

  return 0;
}

uint64_t sub_1DDA01600()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA0164C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84790, &qword_1DDA22798);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0C338();
  sub_1DDA15620();
  v10[14] = 0;
  sub_1DDA0C38C();
  sub_1DDA152C0();
  v8 = v10[15];
  v10[13] = 1;
  sub_1DDA152B0();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1DDA0180C(uint64_t *a1)
{
  v3 = sub_1DDA150C0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA15610();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v6 = sub_1DDA15450();
    if (v6 == 0x726576656ELL && v7 == 0xE500000000000000)
    {
    }

    else
    {
      v9 = sub_1DDA15440();

      if ((v9 & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1(v12, v13);
        sub_1DDA0670C();
        sub_1DDA15460();
        v3 = v11;
LABEL_13:
        __swift_destroy_boxed_opaque_existential_1(v12);
        __swift_destroy_boxed_opaque_existential_1(a1);
        return v3;
      }
    }

    v3 = 2;
    goto LABEL_13;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_1DDA01C74()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA01CC0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84DA0, &qword_1DDA24C98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA11258();
  sub_1DDA15620();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1DDA15280();
    v11 = 1;
    sub_1DDA15280();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1DDA01E8C()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA01ED8()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA01F24()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA01F70()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA01FBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84D48, &qword_1DDA24C68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA11744();
  sub_1DDA15620();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v29 = 0;
    v11 = sub_1DDA15280();
    v13 = v12;
    v14 = v11;
    type metadata accessor for JSONSchema();
    v28 = 1;
    sub_1DD9E4B98(&qword_1ECD83420, type metadata accessor for JSONSchema);
    sub_1DDA152C0();
    v23 = v14;
    v24 = v25;
    v27 = 2;
    v15 = sub_1DDA15280();
    v17 = v16;
    v22 = v15;
    v26 = 3;
    v18 = sub_1DDA15290();
    (*(v6 + 8))(v9, v5);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    v20 = v24;
    *a2 = v23;
    *(a2 + 8) = v13;
    v21 = v22;
    *(a2 + 16) = v20;
    *(a2 + 24) = v21;
    *(a2 + 32) = v17;
    *(a2 + 40) = v18 & 1;
  }

  return result;
}

uint64_t sub_1DDA022C0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD849C0, &qword_1DDA22860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0ED9C();
  sub_1DDA15620();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v26[0]) = 0;
    v11 = sub_1DDA15280();
    v13 = v12;
    v22 = v11;
    v35 = 1;
    sub_1DDA0EDF0();
    sub_1DDA152C0();
    (*(v6 + 8))(v9, v5);
    v14 = *(&v30 + 1);
    v21 = v30;
    v15 = v31;
    v16 = v32;
    v34 = v33;
    v17 = v22;
    *&v23 = v22;
    *(&v23 + 1) = v13;
    v24 = v30;
    *v25 = v31;
    *&v25[16] = v32;
    v25[24] = v33;
    sub_1DDA0EE44(&v23, v26);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v26[0] = v17;
    v26[1] = v13;
    v26[2] = v21;
    v26[3] = v14;
    v27 = v15;
    v28 = v16;
    v29 = v34;
    result = sub_1DDA0EE7C(v26);
    v19 = v24;
    *a2 = v23;
    a2[1] = v19;
    a2[2] = *v25;
    *(a2 + 41) = *&v25[9];
  }

  return result;
}

uint64_t sub_1DDA02544@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83D88, &qword_1DDA1E188);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD9FEF7C();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v41 = 1701869940;
  v42 = 0xE400000000000000;
  v43 = 0;
  LOBYTE(v44) = 1;
  v12 = sub_1DDA15280();
  v13 = v11;
  v14 = v12 == 0x6567617373656DLL && v11 == 0xE700000000000000;
  if (!v14 && (sub_1DDA15440() & 1) == 0)
  {
    v23 = v12 == 0x6E6F6974636E7566 && v13 == 0xED00006C6C61635FLL;
    if (v23 || (sub_1DDA15440() & 1) != 0)
    {
      v47[0] = v12;
      v47[1] = v13;
      v48 = 0;
      v49 = 1;
      sub_1DDA060C4();
      sub_1DDA152C0();
      (*(v6 + 8))(v9, v5);

      v19 = v41;
      v40 = v42;
      v20 = v43;
      v21 = v44;
      v18 = 1;
      v16 = v45;
      v17 = v46;
      goto LABEL_9;
    }

    v24 = v12 == 0x5F726573776F7262 && v13 == 0xEC0000006C6C6163;
    if (v24 || (sub_1DDA15440() & 1) != 0)
    {
      v41 = v12;
      v42 = v13;
      v43 = 0;
      LOBYTE(v44) = 1;
      sub_1DDA06070();
      sub_1DDA152C0();
      (*(v6 + 8))(v9, v5);

      v19 = 0;
      v40 = 0;
      v20 = 0;
      v21 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 4;
      goto LABEL_9;
    }

    v25 = v12 == 0xD000000000000010 && 0x80000001DDA29BD0 == v13;
    if (v25 || (sub_1DDA15440() & 1) != 0)
    {
      v41 = v12;
      v42 = v13;
      v43 = 0;
      LOBYTE(v44) = 1;
      sub_1DD9FF188();
      sub_1DDA152C0();
      (*(v6 + 8))(v9, v5);

      v40 = 0;
      v20 = 0;
      v21 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 4;
      v19 = 1;
      goto LABEL_9;
    }

    if (v12 == 0xD000000000000014 && 0x80000001DDA29BF0 == v13 || (sub_1DDA15440() & 1) != 0)
    {
      v47[0] = v12;
      v47[1] = v13;
      v48 = 0;
      v49 = 1;
      sub_1DDA0601C();
      sub_1DDA152C0();
      (*(v6 + 8))(v9, v5);

      v17 = 0;
      v19 = v41;
      v40 = v42;
      v20 = v43;
      v21 = v44;
      v18 = 2;
      v16 = v45;
      goto LABEL_9;
    }

    if (v12 == 0xD000000000000013 && 0x80000001DDA29C10 == v13 || (sub_1DDA15440() & 1) != 0)
    {
      v41 = v12;
      v42 = v13;
      v43 = 0;
      LOBYTE(v44) = 1;
      sub_1DDA05FC8();
      sub_1DDA152C0();
      (*(v6 + 8))(v9, v5);

      v21 = 0;
      v16 = 0;
      v17 = 0;
      v19 = v47[0];
      v40 = v47[1];
      v18 = 3;
      v20 = v48;
      goto LABEL_9;
    }

    v26 = qword_1ECD827A8;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_1DDA14810();
    __swift_project_value_buffer(v27, qword_1ECDA20E0);

    v28 = sub_1DDA147F0();
    v29 = sub_1DDA14EE0();

    v39 = v29;
    v40 = v28;
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v41 = v38;
      *v30 = 136315394;
      v47[0] = &type metadata for InputItem;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84148, &qword_1DDA1E318);
      v31 = sub_1DDA14B70();
      v33 = sub_1DD93FA54(v31, v32, &v41);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_1DD93FA54(v12, v13, &v41);
      v34 = v40;
      _os_log_impl(&dword_1DD8F8000, v40, v39, "Unrecognized %s type identifier: %s", v30, 0x16u);
      v35 = v38;
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v35, -1, -1);
      MEMORY[0x1E12B8CE0](v30, -1, -1);
    }

    else
    {
    }

    v41 = v12;
    v42 = v13;
    v43 = 0;
    LOBYTE(v44) = 1;
    v47[0] = 0;
    v47[1] = 0xE000000000000000;
    sub_1DDA15070();

    strcpy(v47, "Unrecognized ");
    HIWORD(v47[1]) = -4864;
    v50 = &type metadata for InputItem;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84148, &qword_1DDA1E318);
    v36 = sub_1DDA14B70();
    MEMORY[0x1E12B7AB0](v36);

    MEMORY[0x1E12B7AB0](0xD000000000000012, 0x80000001DDA29C30);
    MEMORY[0x1E12B7AB0](v12, v13);

    sub_1DDA150D0();
    swift_allocError();
    sub_1DDA05B54(&qword_1ECD84048, &qword_1ECD83D88, &qword_1DDA1E188);
    sub_1DDA150A0();

    swift_willThrow();
    (*(v6 + 8))(v9, v5);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v47[0] = v12;
  v47[1] = v13;
  v48 = 0;
  v49 = 1;
  sub_1DDA06118();
  sub_1DDA152C0();
  (*(v6 + 8))(v9, v5);

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = v41;
  v20 = v43;
  v40 = v42;
  v21 = v44;
LABEL_9:
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v22 = v40;
  *a2 = v19;
  *(a2 + 8) = v22;
  *(a2 + 16) = v20;
  *(a2 + 24) = v21;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
  return result;
}

uint64_t sub_1DDA02E38(uint64_t *a1)
{
  v21 = sub_1DDA150D0();
  v19 = *(v21 - 8);
  v3 = *(v19 + 64);
  v4 = MEMORY[0x1EEE9AC00](v21);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - v7;
  v9 = sub_1DDA150C0();
  v20 = *(v9 - 8);
  v10 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA15610();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v17[3] = v6;
    v17[6] = v12;
    v18 = a1;
    v17[5] = v8;
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v14 = sub_1DDA15450();
    v15 = v18;
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return v14;
}

uint64_t sub_1DDA033BC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84700, &qword_1DDA22760);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0BF84();
  sub_1DDA15620();
  v11 = 0;
  sub_1DDA0BFD8();
  sub_1DDA152C0();
  v8 = v10[8];
  v11 = 1;
  sub_1DDA0C02C();
  sub_1DDA152C0();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1DDA035A0()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA035EC()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA03638@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD841C0, &qword_1DDA1E328);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0640C();
  sub_1DDA15620();
  if (v2)
  {
    v46 = v2;
    __swift_destroy_boxed_opaque_existential_1(a1);
LABEL_4:

    return sub_1DD940E20(0);
  }

  LOBYTE(v55) = 0;
  v11 = sub_1DDA15280();
  v14 = v13;
  v45 = v11;
  LOBYTE(v55) = 1;
  v15 = sub_1DDA15280();
  v17 = v16;
  *&v44 = v15;
  LOBYTE(v55) = 2;
  *&v43 = sub_1DDA15220();
  *(&v43 + 1) = v18;
  LOBYTE(v55) = 3;
  v19 = sub_1DDA15280();
  v46 = 0;
  *&v41 = v19;
  *(&v41 + 1) = v20;
  *(&v44 + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD841D0, &qword_1DDA1E330);
  LOBYTE(v47) = 4;
  sub_1DDA06460();
  v21 = v46;
  sub_1DDA15260();
  v46 = v21;
  v42 = v14;
  if (v21 || (v22 = v55, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83E20, &qword_1DDA1E190), LOBYTE(v47) = 5, sub_1DD9FF428(), v23 = v46, sub_1DDA15260(), (v46 = v23) != 0))
  {
    (*(v6 + 8))(v9, v5);
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(a1);

    goto LABEL_4;
  }

  v40 = v6;
  v24 = v55;
  LOBYTE(v47) = 6;
  sub_1DD9572A8();
  v25 = v46;
  sub_1DDA15260();
  if (v25)
  {
    v46 = v25;
    (*(v40 + 8))(v9, v5);
    goto LABEL_11;
  }

  v39 = a2;
  v26 = v55;
  v27 = v56;
  v28 = v57;
  v68 = 7;
  v29 = sub_1DDA15220();
  v46 = 0;
  v30 = v29;
  v31 = v9;
  v33 = v32;
  (*(v40 + 8))(v31, v5);
  *&v47 = v45;
  *(&v47 + 1) = v42;
  v48 = v44;
  v34 = *(&v44 + 1);
  v49 = v43;
  v50 = v41;
  *&v51 = v30;
  *(&v51 + 1) = v33;
  *&v52 = v22;
  *(&v52 + 1) = v24;
  *&v53 = v26;
  *(&v53 + 1) = v27;
  v54 = v28;
  sub_1DD9B2CA0(&v47, &v55);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v55 = v45;
  v56 = v42;
  v57 = v44;
  v58 = v34;
  v59 = v43;
  v60 = v41;
  v61 = v30;
  v62 = v33;
  v63 = v22;
  v64 = v24;
  v65 = v26;
  v66 = v27;
  v67 = v28;
  result = sub_1DD9B2CFC(&v55);
  v35 = v52;
  v36 = v39;
  *(v39 + 64) = v51;
  *(v36 + 80) = v35;
  *(v36 + 96) = v53;
  *(v36 + 112) = v54;
  v37 = v48;
  *v36 = v47;
  *(v36 + 16) = v37;
  v38 = v50;
  *(v36 + 32) = v49;
  *(v36 + 48) = v38;
  return result;
}

uint64_t sub_1DDA03CEC()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA03D38()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA03D84()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA03DD0()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA03E1C()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA03E68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v23 = a5;
  *&v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v11 = &v22 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DDA15620();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v23;
  v14 = v24;
  LOBYTE(v25) = 0;
  v15 = sub_1DDA152B0();
  LOBYTE(v25) = 1;
  v16 = sub_1DDA152B0();
  v30 = 2;
  sub_1DDA04818();
  sub_1DDA152C0();
  (*(v8 + 8))(v11, v14);
  v17 = v27;
  v18 = v28;
  v19 = v29;
  v24 = v25;
  v22 = v26;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v13 = v15;
  *(v13 + 8) = v16;
  v21 = v22;
  *(v13 + 16) = v24;
  *(v13 + 32) = v21;
  *(v13 + 48) = v17;
  *(v13 + 56) = v18;
  *(v13 + 64) = v19;
  return result;
}

uint64_t sub_1DDA04080()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA040CC()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA04118@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v23 = a5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v11 = &v21 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DDA15620();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v23;
  v28 = 0;
  v14 = sub_1DDA152B0();
  v27 = 1;
  v22 = sub_1DDA152B0();
  v26 = 2;
  v21 = sub_1DDA152B0();
  v25 = 3;
  v15 = sub_1DDA15280();
  v17 = v16;
  (*(v8 + 8))(v11, v24);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v19 = v21;
  v20 = v22;
  *v13 = v14;
  v13[1] = v20;
  v13[2] = v19;
  v13[3] = v15;
  v13[4] = v17;
  return result;
}

uint64_t sub_1DDA0435C()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA043A8()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA043F4()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA04440()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA0448C(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v15 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DDA15620();
  if (!v4)
  {
    v18 = 0;
    v6 = sub_1DDA152B0();
    v17 = 1;
    sub_1DDA152B0();
    v16 = 2;
    sub_1DDA15280();
    (*(v8 + 8))(v11, v15);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t sub_1DDA04684()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA046D0()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DDA0471C()
{
  result = qword_1ECD83EC8;
  if (!qword_1ECD83EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83EC8);
  }

  return result;
}

unint64_t sub_1DDA04770()
{
  result = qword_1ECD83ED8;
  if (!qword_1ECD83ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83ED8);
  }

  return result;
}

unint64_t sub_1DDA047C4()
{
  result = qword_1ECD83EE8;
  if (!qword_1ECD83EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83EE8);
  }

  return result;
}

unint64_t sub_1DDA04818()
{
  result = qword_1ECD83EF0;
  if (!qword_1ECD83EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83EF0);
  }

  return result;
}

unint64_t sub_1DDA0486C()
{
  result = qword_1ECD83F00;
  if (!qword_1ECD83F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83F00);
  }

  return result;
}

unint64_t sub_1DDA048C0()
{
  result = qword_1ECD83F10;
  if (!qword_1ECD83F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83F10);
  }

  return result;
}

unint64_t sub_1DDA04914()
{
  result = qword_1ECD83F20;
  if (!qword_1ECD83F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83F20);
  }

  return result;
}

unint64_t sub_1DDA04968()
{
  result = qword_1ECD83F30;
  if (!qword_1ECD83F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83F30);
  }

  return result;
}

unint64_t sub_1DDA049BC()
{
  result = qword_1ECD83F48;
  if (!qword_1ECD83F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83F48);
  }

  return result;
}

unint64_t sub_1DDA04A10()
{
  result = qword_1ECD83F60;
  if (!qword_1ECD83F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83F60);
  }

  return result;
}

unint64_t sub_1DDA04A64()
{
  result = qword_1ECD83F78;
  if (!qword_1ECD83F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83F78);
  }

  return result;
}

unint64_t sub_1DDA04AB8()
{
  result = qword_1ECD83FA0;
  if (!qword_1ECD83FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83FA0);
  }

  return result;
}

unint64_t sub_1DDA04B0C()
{
  result = qword_1ECD83FB0;
  if (!qword_1ECD83FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83FB0);
  }

  return result;
}

unint64_t sub_1DDA04B60()
{
  result = qword_1ECD83FB8;
  if (!qword_1ECD83FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83FB8);
  }

  return result;
}

uint64_t sub_1DDA04BB4()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA04C00()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA04C4C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 == 0x6974617265646F6DLL && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1DDA15440() & 1) != 0 || v3 == 0x726568746FLL && a2 == 0xE500000000000000 || (sub_1DDA15440() & 1) != 0 || v3 == 0x5F746E65746E6F63 && a2 == 0xEE007265746C6966 || (sub_1DDA15440() & 1) != 0 || v3 == 0xD00000000000001BLL && 0x80000001DDA28030 == a2 || (sub_1DDA15440() & 1) != 0 || v3 == 0xD00000000000001CLL && 0x80000001DDA28010 == a2 || (sub_1DDA15440() & 1) != 0)
  {

    return 0;
  }

  return v3;
}

uint64_t sub_1DDA04E18(uint64_t *a1)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  sub_1DDA15610();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v4 = sub_1DDA15450();
    v3 = v4;
    v7 = v5;
    v8 = v4 == 0x6974617265646F6DLL && v5 == 0xEA00000000006E6FLL;
    if (v8 || (sub_1DDA15440() & 1) != 0 || v3 == 0x726568746FLL && v7 == 0xE500000000000000 || (sub_1DDA15440() & 1) != 0 || v3 == 0x5F746E65746E6F63 && v7 == 0xEE007265746C6966 || (sub_1DDA15440() & 1) != 0 || v3 == 0xD00000000000001BLL && 0x80000001DDA28030 == v7 || (sub_1DDA15440() & 1) != 0 || v3 == 0xD00000000000001CLL && 0x80000001DDA28010 == v7 || (sub_1DDA15440() & 1) != 0)
    {

      v3 = 0;
    }

    else
    {
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v9 = sub_1DDA14810();
      __swift_project_value_buffer(v9, qword_1ECDA20E0);

      v10 = sub_1DDA147F0();
      v11 = sub_1DDA14EE0();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v14 = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_1DD93FA54(v3, v7, &v14);
        _os_log_impl(&dword_1DD8F8000, v10, v11, "Unrecognized IncompleteReason %s, decoding as unknown", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x1E12B8CE0](v13, -1, -1);
        MEMORY[0x1E12B8CE0](v12, -1, -1);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v15);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_1DDA05194(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84130, &qword_1DDA1E310);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1DDA05F20();
  sub_1DDA15620();
  if (!v1)
  {
    v11 = 0;
    sub_1DDA05F74();
    sub_1DDA152C0();
    v8 = v10;
    LOBYTE(v10) = 1;
    sub_1DDA15220();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1DDA05394()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA053E0()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA0542C()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA05478(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84690, &qword_1DDA22728);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0A340();
  sub_1DDA15620();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_1DDA15280();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD846A0, &qword_1DDA22730);
    v10[15] = 1;
    sub_1DDA0A394();
    sub_1DDA15260();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1DDA0567C()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DDA056C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DDA15440() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1DDA15440() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DDA15440();

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

uint64_t sub_1DDA057D8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83FD8, &qword_1DDA1E278);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA059B0();
  sub_1DDA15620();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_1DDA15280();
    v10[14] = 1;
    sub_1DDA152B0();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_1DDA059B0()
{
  result = qword_1ECD83FE0;
  if (!qword_1ECD83FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83FE0);
  }

  return result;
}

unint64_t sub_1DDA05A04()
{
  result = qword_1ECD83FF8;
  if (!qword_1ECD83FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83FF8);
  }

  return result;
}

unint64_t sub_1DDA05A58()
{
  result = qword_1ECD84010;
  if (!qword_1ECD84010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84010);
  }

  return result;
}

unint64_t sub_1DDA05AAC()
{
  result = qword_1ECD84020;
  if (!qword_1ECD84020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84020);
  }

  return result;
}

unint64_t sub_1DDA05B00()
{
  result = qword_1ECD84030;
  if (!qword_1ECD84030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84030);
  }

  return result;
}

uint64_t sub_1DDA05B54(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1DDA05BA8()
{
  result = qword_1ECD84068;
  if (!qword_1ECD84068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84068);
  }

  return result;
}

unint64_t sub_1DDA05BFC()
{
  result = qword_1ECD84098;
  if (!qword_1ECD84098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84098);
  }

  return result;
}

unint64_t sub_1DDA05C50()
{
  result = qword_1ECD840B0;
  if (!qword_1ECD840B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD840B0);
  }

  return result;
}

unint64_t sub_1DDA05CA4()
{
  result = qword_1ECD840C8;
  if (!qword_1ECD840C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD840C8);
  }

  return result;
}

unint64_t sub_1DDA05CF8()
{
  result = qword_1ECD840E0;
  if (!qword_1ECD840E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD840E0);
  }

  return result;
}

unint64_t sub_1DDA05D4C()
{
  result = qword_1ECD840F0;
  if (!qword_1ECD840F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD840F0);
  }

  return result;
}

unint64_t sub_1DDA05DA0()
{
  result = qword_1ECD84108;
  if (!qword_1ECD84108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84108);
  }

  return result;
}

unint64_t sub_1DDA05DF4()
{
  result = qword_1ECD84110;
  if (!qword_1ECD84110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84110);
  }

  return result;
}

unint64_t sub_1DDA05E48()
{
  result = qword_1ECD84120;
  if (!qword_1ECD84120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD84118, &qword_1DDA1E308);
    sub_1DDA04818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84120);
  }

  return result;
}

unint64_t sub_1DDA05ECC()
{
  result = qword_1ECD84128;
  if (!qword_1ECD84128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84128);
  }

  return result;
}

unint64_t sub_1DDA05F20()
{
  result = qword_1ECD84138;
  if (!qword_1ECD84138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84138);
  }

  return result;
}

unint64_t sub_1DDA05F74()
{
  result = qword_1ECD84140;
  if (!qword_1ECD84140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84140);
  }

  return result;
}

unint64_t sub_1DDA05FC8()
{
  result = qword_1ECD84150;
  if (!qword_1ECD84150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84150);
  }

  return result;
}

unint64_t sub_1DDA0601C()
{
  result = qword_1ECD84158;
  if (!qword_1ECD84158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84158);
  }

  return result;
}

unint64_t sub_1DDA06070()
{
  result = qword_1ECD84160;
  if (!qword_1ECD84160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84160);
  }

  return result;
}

unint64_t sub_1DDA060C4()
{
  result = qword_1ECD84168;
  if (!qword_1ECD84168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84168);
  }

  return result;
}

unint64_t sub_1DDA06118()
{
  result = qword_1ECD84170;
  if (!qword_1ECD84170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84170);
  }

  return result;
}

unint64_t sub_1DDA0616C()
{
  result = qword_1ECD84178;
  if (!qword_1ECD84178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84178);
  }

  return result;
}

unint64_t sub_1DDA061C0()
{
  result = qword_1ECD84180;
  if (!qword_1ECD84180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84180);
  }

  return result;
}

unint64_t sub_1DDA06214()
{
  result = qword_1ECD84188;
  if (!qword_1ECD84188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84188);
  }

  return result;
}

unint64_t sub_1DDA06268()
{
  result = qword_1ECD84190;
  if (!qword_1ECD84190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84190);
  }

  return result;
}

unint64_t sub_1DDA062BC()
{
  result = qword_1ECD84198;
  if (!qword_1ECD84198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84198);
  }

  return result;
}

unint64_t sub_1DDA06310()
{
  result = qword_1ECD841A0;
  if (!qword_1ECD841A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD841A0);
  }

  return result;
}

unint64_t sub_1DDA06364()
{
  result = qword_1ECD841A8;
  if (!qword_1ECD841A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD841A8);
  }

  return result;
}

unint64_t sub_1DDA063B8()
{
  result = qword_1ECD841B8;
  if (!qword_1ECD841B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD841B8);
  }

  return result;
}

unint64_t sub_1DDA0640C()
{
  result = qword_1ECD841C8;
  if (!qword_1ECD841C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD841C8);
  }

  return result;
}

unint64_t sub_1DDA06460()
{
  result = qword_1ECD841D8;
  if (!qword_1ECD841D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD841D0, &qword_1DDA1E330);
    sub_1DD9E4B98(&qword_1ECD840F8, type metadata accessor for ChatChunk.Choice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD841D8);
  }

  return result;
}

unint64_t sub_1DDA06514()
{
  result = qword_1ECD841E8;
  if (!qword_1ECD841E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD841E8);
  }

  return result;
}

unint64_t sub_1DDA06568()
{
  result = qword_1ECD841F0;
  if (!qword_1ECD841F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD841F0);
  }

  return result;
}

unint64_t sub_1DDA065BC()
{
  result = qword_1ECD841F8;
  if (!qword_1ECD841F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD841F8);
  }

  return result;
}

unint64_t sub_1DDA06610()
{
  result = qword_1ECD84208;
  if (!qword_1ECD84208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84208);
  }

  return result;
}

unint64_t sub_1DDA06664()
{
  result = qword_1ECD84210;
  if (!qword_1ECD84210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84210);
  }

  return result;
}

unint64_t sub_1DDA066B8()
{
  result = qword_1ECD84220;
  if (!qword_1ECD84220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84220);
  }

  return result;
}

unint64_t sub_1DDA0670C()
{
  result = qword_1ECD84228;
  if (!qword_1ECD84228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84228);
  }

  return result;
}

unint64_t sub_1DDA06760()
{
  result = qword_1ECD84230;
  if (!qword_1ECD84230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84230);
  }

  return result;
}

unint64_t sub_1DDA067B4()
{
  result = qword_1ECD84240;
  if (!qword_1ECD84240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84240);
  }

  return result;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DDA0685C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_1DDA068A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5Anvil10SourceInfoOSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1DDA0696C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1DDA069B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DDA06A64()
{
  result = type metadata accessor for CreateSessionResponse(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DDA06B10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1DDA06B58(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DDA06C10()
{
  result = type metadata accessor for CreateSessionResponse(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5Anvil24PromptConfigurationGroupV5ValueOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DDA06CF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_1DDA06D38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DDA06D9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1DDA06DE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t get_enum_tag_for_layout_string_5Anvil18ToolingDescriptionO(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1DDA06E70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 41))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 40) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 40) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1DDA06EC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1DDA06F3C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 40) = *(result + 40) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0x80;
  }

  return result;
}

uint64_t sub_1DDA06FA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1DDA06FEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DDA0704C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DDA070A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5Anvil14ChatToolChoiceOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 3;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DDA07134(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DDA0717C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1DDA07438(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1DDA07480(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DDA074F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DDA0754C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_1DDA075DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1DDA07624(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionExpirationOption.Policy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionExpirationOption.Policy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DDA07720(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DDA07768(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DDA077BC()
{
  result = qword_1ECD84298;
  if (!qword_1ECD84298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84298);
  }

  return result;
}

unint64_t sub_1DDA07814()
{
  result = qword_1ECD842A0;
  if (!qword_1ECD842A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842A0);
  }

  return result;
}

unint64_t sub_1DDA0786C()
{
  result = qword_1ECD842A8;
  if (!qword_1ECD842A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842A8);
  }

  return result;
}

unint64_t sub_1DDA078C4()
{
  result = qword_1ECD842B0;
  if (!qword_1ECD842B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842B0);
  }

  return result;
}

unint64_t sub_1DDA0791C()
{
  result = qword_1ECD842B8;
  if (!qword_1ECD842B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842B8);
  }

  return result;
}

unint64_t sub_1DDA07974()
{
  result = qword_1ECD842C0;
  if (!qword_1ECD842C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842C0);
  }

  return result;
}

unint64_t sub_1DDA079CC()
{
  result = qword_1ECD842C8;
  if (!qword_1ECD842C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842C8);
  }

  return result;
}

unint64_t sub_1DDA07A24()
{
  result = qword_1ECD842D0;
  if (!qword_1ECD842D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842D0);
  }

  return result;
}

unint64_t sub_1DDA07A7C()
{
  result = qword_1ECD842D8;
  if (!qword_1ECD842D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842D8);
  }

  return result;
}

unint64_t sub_1DDA07AD4()
{
  result = qword_1ECD842E0;
  if (!qword_1ECD842E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842E0);
  }

  return result;
}

unint64_t sub_1DDA07B2C()
{
  result = qword_1ECD842E8;
  if (!qword_1ECD842E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842E8);
  }

  return result;
}

unint64_t sub_1DDA07B84()
{
  result = qword_1ECD842F0;
  if (!qword_1ECD842F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842F0);
  }

  return result;
}

unint64_t sub_1DDA07BDC()
{
  result = qword_1ECD842F8;
  if (!qword_1ECD842F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD842F8);
  }

  return result;
}

unint64_t sub_1DDA07C34()
{
  result = qword_1ECD84300;
  if (!qword_1ECD84300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84300);
  }

  return result;
}

unint64_t sub_1DDA07C8C()
{
  result = qword_1ECD84308;
  if (!qword_1ECD84308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84308);
  }

  return result;
}

unint64_t sub_1DDA07CE4()
{
  result = qword_1ECD84310;
  if (!qword_1ECD84310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84310);
  }

  return result;
}

unint64_t sub_1DDA07D3C()
{
  result = qword_1ECD84318;
  if (!qword_1ECD84318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84318);
  }

  return result;
}

unint64_t sub_1DDA07D94()
{
  result = qword_1ECD84320;
  if (!qword_1ECD84320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84320);
  }

  return result;
}

unint64_t sub_1DDA07DEC()
{
  result = qword_1ECD84328;
  if (!qword_1ECD84328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84328);
  }

  return result;
}

unint64_t sub_1DDA07E44()
{
  result = qword_1ECD84330;
  if (!qword_1ECD84330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84330);
  }

  return result;
}

unint64_t sub_1DDA07E9C()
{
  result = qword_1ECD84338;
  if (!qword_1ECD84338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84338);
  }

  return result;
}

unint64_t sub_1DDA07EF4()
{
  result = qword_1ECD84340;
  if (!qword_1ECD84340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84340);
  }

  return result;
}

unint64_t sub_1DDA07F4C()
{
  result = qword_1ECD84348;
  if (!qword_1ECD84348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84348);
  }

  return result;
}

unint64_t sub_1DDA07FA4()
{
  result = qword_1ECD84350;
  if (!qword_1ECD84350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84350);
  }

  return result;
}

unint64_t sub_1DDA07FFC()
{
  result = qword_1ECD84358;
  if (!qword_1ECD84358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84358);
  }

  return result;
}

unint64_t sub_1DDA08054()
{
  result = qword_1ECD84360;
  if (!qword_1ECD84360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84360);
  }

  return result;
}

unint64_t sub_1DDA080AC()
{
  result = qword_1ECD84368;
  if (!qword_1ECD84368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84368);
  }

  return result;
}

unint64_t sub_1DDA08104()
{
  result = qword_1ECD84370;
  if (!qword_1ECD84370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84370);
  }

  return result;
}

unint64_t sub_1DDA0815C()
{
  result = qword_1ECD84378;
  if (!qword_1ECD84378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84378);
  }

  return result;
}

unint64_t sub_1DDA081B4()
{
  result = qword_1ECD84380;
  if (!qword_1ECD84380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84380);
  }

  return result;
}

unint64_t sub_1DDA0820C()
{
  result = qword_1ECD84388;
  if (!qword_1ECD84388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84388);
  }

  return result;
}

unint64_t sub_1DDA08264()
{
  result = qword_1ECD84390;
  if (!qword_1ECD84390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84390);
  }

  return result;
}

unint64_t sub_1DDA082BC()
{
  result = qword_1ECD84398;
  if (!qword_1ECD84398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84398);
  }

  return result;
}

unint64_t sub_1DDA08314()
{
  result = qword_1ECD843A0;
  if (!qword_1ECD843A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD843A0);
  }

  return result;
}

unint64_t sub_1DDA0836C()
{
  result = qword_1ECD843A8;
  if (!qword_1ECD843A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD843A8);
  }

  return result;
}

unint64_t sub_1DDA083C4()
{
  result = qword_1ECD843B0;
  if (!qword_1ECD843B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD843B0);
  }

  return result;
}

unint64_t sub_1DDA0841C()
{
  result = qword_1ECD843B8;
  if (!qword_1ECD843B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD843B8);
  }

  return result;
}

unint64_t sub_1DDA08474()
{
  result = qword_1ECD843C0;
  if (!qword_1ECD843C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD843C0);
  }

  return result;
}

unint64_t sub_1DDA084CC()
{
  result = qword_1ECD843C8;
  if (!qword_1ECD843C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD843C8);
  }

  return result;
}

unint64_t sub_1DDA08524()
{
  result = qword_1ECD843D0;
  if (!qword_1ECD843D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD843D0);
  }

  return result;
}

unint64_t sub_1DDA0857C()
{
  result = qword_1ECD843D8;
  if (!qword_1ECD843D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD843D8);
  }

  return result;
}

unint64_t sub_1DDA085D4()
{
  result = qword_1ECD843E0;
  if (!qword_1ECD843E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD843E0);
  }

  return result;
}

unint64_t sub_1DDA0862C()
{
  result = qword_1ECD843E8;
  if (!qword_1ECD843E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD843E8);
  }

  return result;
}

unint64_t sub_1DDA08684()
{
  result = qword_1ECD843F0;
  if (!qword_1ECD843F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD843F0);
  }

  return result;
}

unint64_t sub_1DDA086DC()
{
  result = qword_1ECD843F8;
  if (!qword_1ECD843F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD843F8);
  }

  return result;
}

unint64_t sub_1DDA08734()
{
  result = qword_1ECD84400;
  if (!qword_1ECD84400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84400);
  }

  return result;
}

unint64_t sub_1DDA0878C()
{
  result = qword_1ECD84408;
  if (!qword_1ECD84408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84408);
  }

  return result;
}

unint64_t sub_1DDA087E4()
{
  result = qword_1ECD84410;
  if (!qword_1ECD84410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84410);
  }

  return result;
}

unint64_t sub_1DDA0883C()
{
  result = qword_1ECD84418;
  if (!qword_1ECD84418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84418);
  }

  return result;
}

unint64_t sub_1DDA08894()
{
  result = qword_1ECD84420;
  if (!qword_1ECD84420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84420);
  }

  return result;
}

unint64_t sub_1DDA088EC()
{
  result = qword_1ECD84428;
  if (!qword_1ECD84428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84428);
  }

  return result;
}

unint64_t sub_1DDA08944()
{
  result = qword_1ECD84430;
  if (!qword_1ECD84430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84430);
  }

  return result;
}

unint64_t sub_1DDA0899C()
{
  result = qword_1ECD84438;
  if (!qword_1ECD84438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84438);
  }

  return result;
}

unint64_t sub_1DDA089F4()
{
  result = qword_1ECD84440;
  if (!qword_1ECD84440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84440);
  }

  return result;
}

unint64_t sub_1DDA08A94()
{
  result = qword_1ECD84450;
  if (!qword_1ECD84450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84450);
  }

  return result;
}

unint64_t sub_1DDA08AEC()
{
  result = qword_1ECD84458;
  if (!qword_1ECD84458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84458);
  }

  return result;
}

unint64_t sub_1DDA08B8C()
{
  result = qword_1ECD84468;
  if (!qword_1ECD84468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84468);
  }

  return result;
}

unint64_t sub_1DDA08BE4()
{
  result = qword_1ECD84470;
  if (!qword_1ECD84470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84470);
  }

  return result;
}

unint64_t sub_1DDA08C3C()
{
  result = qword_1ECD84478;
  if (!qword_1ECD84478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84478);
  }

  return result;
}

unint64_t sub_1DDA08C94()
{
  result = qword_1ECD84480;
  if (!qword_1ECD84480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84480);
  }

  return result;
}

unint64_t sub_1DDA08CEC()
{
  result = qword_1ECD84488;
  if (!qword_1ECD84488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84488);
  }

  return result;
}

unint64_t sub_1DDA08D44()
{
  result = qword_1ECD84490;
  if (!qword_1ECD84490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84490);
  }

  return result;
}

unint64_t sub_1DDA08D9C()
{
  result = qword_1ECD84498;
  if (!qword_1ECD84498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84498);
  }

  return result;
}

unint64_t sub_1DDA08DF4()
{
  result = qword_1ECD844A0;
  if (!qword_1ECD844A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD844A0);
  }

  return result;
}

unint64_t sub_1DDA08E4C()
{
  result = qword_1ECD844A8;
  if (!qword_1ECD844A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD844A8);
  }

  return result;
}

unint64_t sub_1DDA08EA4()
{
  result = qword_1ECD844B0;
  if (!qword_1ECD844B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD844B0);
  }

  return result;
}

unint64_t sub_1DDA08EFC()
{
  result = qword_1ECD844B8;
  if (!qword_1ECD844B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD844B8);
  }

  return result;
}

unint64_t sub_1DDA08F54()
{
  result = qword_1ECD844C0;
  if (!qword_1ECD844C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD844C0);
  }

  return result;
}

unint64_t sub_1DDA08FAC()
{
  result = qword_1ECD844C8;
  if (!qword_1ECD844C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD844C8);
  }

  return result;
}

unint64_t sub_1DDA09004()
{
  result = qword_1ECD844D0;
  if (!qword_1ECD844D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD844D0);
  }

  return result;
}

unint64_t sub_1DDA0905C()
{
  result = qword_1ECD844D8;
  if (!qword_1ECD844D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD844D8);
  }

  return result;
}

unint64_t sub_1DDA090B4()
{
  result = qword_1ECD844E0;
  if (!qword_1ECD844E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD844E0);
  }

  return result;
}

unint64_t sub_1DDA0910C()
{
  result = qword_1ECD844E8;
  if (!qword_1ECD844E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD844E8);
  }

  return result;
}

unint64_t sub_1DDA09164()
{
  result = qword_1ECD844F0;
  if (!qword_1ECD844F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD844F0);
  }

  return result;
}

unint64_t sub_1DDA091BC()
{
  result = qword_1ECD844F8;
  if (!qword_1ECD844F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD844F8);
  }

  return result;
}

unint64_t sub_1DDA09214()
{
  result = qword_1ECD84500;
  if (!qword_1ECD84500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84500);
  }

  return result;
}

unint64_t sub_1DDA0926C()
{
  result = qword_1ECD84508;
  if (!qword_1ECD84508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84508);
  }

  return result;
}

unint64_t sub_1DDA092C4()
{
  result = qword_1ECD84510;
  if (!qword_1ECD84510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84510);
  }

  return result;
}

unint64_t sub_1DDA0931C()
{
  result = qword_1ECD84518;
  if (!qword_1ECD84518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84518);
  }

  return result;
}

unint64_t sub_1DDA09374()
{
  result = qword_1ECD84520;
  if (!qword_1ECD84520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84520);
  }

  return result;
}

unint64_t sub_1DDA093CC()
{
  result = qword_1ECD84528;
  if (!qword_1ECD84528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84528);
  }

  return result;
}

unint64_t sub_1DDA09424()
{
  result = qword_1ECD84530;
  if (!qword_1ECD84530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84530);
  }

  return result;
}

unint64_t sub_1DDA0947C()
{
  result = qword_1ECD84538;
  if (!qword_1ECD84538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84538);
  }

  return result;
}

unint64_t sub_1DDA094D4()
{
  result = qword_1ECD84540;
  if (!qword_1ECD84540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84540);
  }

  return result;
}

unint64_t sub_1DDA0952C()
{
  result = qword_1ECD84548;
  if (!qword_1ECD84548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84548);
  }

  return result;
}

unint64_t sub_1DDA09584()
{
  result = qword_1ECD84550;
  if (!qword_1ECD84550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84550);
  }

  return result;
}

unint64_t sub_1DDA095DC()
{
  result = qword_1ECD84558;
  if (!qword_1ECD84558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84558);
  }

  return result;
}

unint64_t sub_1DDA09634()
{
  result = qword_1ECD84560;
  if (!qword_1ECD84560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84560);
  }

  return result;
}

unint64_t sub_1DDA0968C()
{
  result = qword_1ECD84568;
  if (!qword_1ECD84568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84568);
  }

  return result;
}

unint64_t sub_1DDA096E4()
{
  result = qword_1ECD84570;
  if (!qword_1ECD84570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84570);
  }

  return result;
}

unint64_t sub_1DDA0973C()
{
  result = qword_1ECD84578;
  if (!qword_1ECD84578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84578);
  }

  return result;
}

unint64_t sub_1DDA09794()
{
  result = qword_1ECD84580;
  if (!qword_1ECD84580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84580);
  }

  return result;
}

unint64_t sub_1DDA097EC()
{
  result = qword_1ECD84588;
  if (!qword_1ECD84588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84588);
  }

  return result;
}

unint64_t sub_1DDA09844()
{
  result = qword_1ECD84590;
  if (!qword_1ECD84590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84590);
  }

  return result;
}

unint64_t sub_1DDA0989C()
{
  result = qword_1ECD84598;
  if (!qword_1ECD84598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD84598);
  }

  return result;
}

unint64_t sub_1DDA098F4()
{
  result = qword_1ECD845A0;
  if (!qword_1ECD845A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD845A0);
  }

  return result;
}

unint64_t sub_1DDA0994C()
{
  result = qword_1ECD845A8;
  if (!qword_1ECD845A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD845A8);
  }

  return result;
}

unint64_t sub_1DDA099A4()
{
  result = qword_1ECD845B0;
  if (!qword_1ECD845B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD845B0);
  }

  return result;
}

unint64_t sub_1DDA099FC()
{
  result = qword_1ECD845B8;
  if (!qword_1ECD845B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD845B8);
  }

  return result;
}

unint64_t sub_1DDA09A54()
{
  result = qword_1ECD845C0;
  if (!qword_1ECD845C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD845C0);
  }

  return result;
}

unint64_t sub_1DDA09AAC()
{
  result = qword_1ECD845C8;
  if (!qword_1ECD845C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD845C8);
  }

  return result;
}

unint64_t sub_1DDA09B04()
{
  result = qword_1ECD845D0;
  if (!qword_1ECD845D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD845D0);
  }

  return result;
}