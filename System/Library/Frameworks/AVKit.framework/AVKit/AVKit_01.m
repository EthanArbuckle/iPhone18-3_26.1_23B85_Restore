uint64_t sub_18B4B6E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C46A0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v65 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4540);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v65 - v15;
  v17 = type metadata accessor for MediaInfo();
  sub_18B4A63EC(a1 + *(v17 + 28), v7, &qword_1EA9C46A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_18B4A6454(v7, &qword_1EA9C46A0);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C46B0);
    return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
  }

  else
  {
    v75 = a2;
    sub_18B4B1DB4(v7, v16, &qword_1EA9C4540);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4638);
    v74 = &v65;
    v73 = *(*(v20 - 8) + 64);
    MEMORY[0x1EEE9AC00](v20 - 8, v21);
    v23 = &v65 - v22;
    v24 = *(a1 + *(type metadata accessor for AVInfoTabMetadataStripView(0) + 20));
    v71 = v23;
    if (v24 & 1) != 0 && *(a1 + *(v17 + 40) + 8) && (sub_18B4B757C())
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4640);
      v72 = &v65;
      v69 = *(v25 - 8);
      v70 = v25;
      MEMORY[0x1EEE9AC00](v25, v26);
      v28 = &v65 - v27;
      sub_18B6C4A9C();
      v29 = v16;
      v30 = sub_18B6C4FFC();
      v32 = v31;
      v76 = v30;
      v77 = v31;
      v34 = v33 & 1;
      v78 = v33 & 1;
      v79 = v35;
      sub_18B6C511C();
      v36 = v30;
      v16 = v29;
      sub_18B4B20BC(v36, v32, v34);

      sub_18B4B1DB4(v28, v23, &qword_1EA9C4640);
      (*(v69 + 56))(v23, 0, 1, v70);
    }

    else
    {
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4640);
      (*(*(v37 - 8) + 56))(v23, 1, 1, v37);
    }

    v68 = v16;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C46B8);
    v72 = &v65;
    v39 = v38 - 8;
    v40 = *(*(v38 - 8) + 64);
    MEMORY[0x1EEE9AC00](v38, v41);
    v66 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
    v42 = &v65 - v66;
    sub_18B4A63EC(v16, v12, &qword_1EA9C4540);
    v43 = *(v8 + 48);
    v44 = *&v12[v43];
    v45 = *&v12[v43 + 8];
    v46 = *(v8 + 64);
    v47 = *&v12[v46];
    v48 = *&v12[v46 + 8];
    v49 = &v42[v43];
    v50 = &v42[v46];
    sub_18B4B1DB4(v12, v42, &qword_1EA9C46A8);
    *v49 = v44;
    *(v49 + 1) = v45;
    *v50 = v47;
    *(v50 + 1) = v48;
    *&v42[*(v39 + 44)] = 257;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C46B0);
    v70 = &v65;
    v51 = *(v69 - 8);
    MEMORY[0x1EEE9AC00](v69, v52);
    v54 = &v65 - v53;
    v67 = &v65;
    MEMORY[0x1EEE9AC00](v55, v56);
    v58 = &v65 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = v71;
    v60 = sub_18B4A63EC(v71, v58, &qword_1EA9C4638);
    v73 = &v65;
    MEMORY[0x1EEE9AC00](v60, v61);
    v62 = &v65 - v66;
    sub_18B4A63EC(v42, &v65 - v66, &qword_1EA9C46B8);
    sub_18B4A63EC(v58, v54, &qword_1EA9C4638);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C46C0);
    sub_18B4A63EC(v62, &v54[*(v63 + 48)], &qword_1EA9C46B8);
    sub_18B4A6454(v42, &qword_1EA9C46B8);
    sub_18B4A6454(v59, &qword_1EA9C4638);
    sub_18B4A6454(v68, &qword_1EA9C4540);
    sub_18B4A6454(v62, &qword_1EA9C46B8);
    sub_18B4A6454(v58, &qword_1EA9C4638);
    v64 = v75;
    sub_18B4B1DB4(v54, v75, &qword_1EA9C46B0);
    return (*(v51 + 56))(v64, 0, 1, v69);
  }
}

uint64_t sub_18B4B757C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C46A0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v32 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C46A8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v32 - v15;
  v17 = *(type metadata accessor for MediaInfo() + 28);
  sub_18B4A63EC(v0 + v17, v12, &qword_1EA9C46A0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4540);
  v19 = *(*(v18 - 8) + 48);
  if (v19(v12, 1, v18) != 1)
  {

    sub_18B4B1DB4(v12, v16, &qword_1EA9C46A8);
    v21 = sub_18B6C41BC();
    if ((*(*(v21 - 8) + 48))(v16, 1, v21) == 1)
    {
      goto LABEL_4;
    }

    sub_18B4A6454(v16, &qword_1EA9C46A8);
    sub_18B4A63EC(v0 + v17, v8, &qword_1EA9C46A0);
    if (v19(v8, 1, v18) == 1)
    {
      sub_18B4A6454(v8, &qword_1EA9C46A0);
    }

    else
    {
      v24 = &v8[*(v18 + 48)];
      v26 = *v24;
      v25 = *(v24 + 1);

      sub_18B4A6454(v8, &qword_1EA9C46A8);
      if (v25)
      {
        if (!v26 && v25 == 0xE000000000000000)
        {
LABEL_18:

          goto LABEL_5;
        }

        v27 = sub_18B6C5CEC();

        v22 = 0;
        if (v27)
        {
          return v22 & 1;
        }
      }
    }

    sub_18B4A63EC(v0 + v17, v4, &qword_1EA9C46A0);
    if (v19(v4, 1, v18) == 1)
    {
      sub_18B4A6454(v4, &qword_1EA9C46A0);
      v22 = 1;
      return v22 & 1;
    }

    v28 = &v4[*(v18 + 64)];
    v30 = *v28;
    v29 = *(v28 + 1);
    sub_18B4A6454(v4, &qword_1EA9C46A8);
    if (!v29)
    {
      v22 = 1;
      return v22 & 1;
    }

    if (v30 || v29 != 0xE000000000000000)
    {
      v31 = sub_18B6C5CEC();

      v22 = v31 ^ 1;
      return v22 & 1;
    }

    goto LABEL_18;
  }

  sub_18B4A6454(v12, &qword_1EA9C46A0);
  v20 = sub_18B6C41BC();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
LABEL_4:
  sub_18B4A6454(v16, &qword_1EA9C46A8);
LABEL_5:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_18B4B79E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18B6C41FC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18B6C41DC();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18B6C413C();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v74 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18B6C418C();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4630);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v73 = &v66 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4638);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8, v24);
  v26 = &v66 - v25;
  v27 = *(a1 + *(type metadata accessor for AVInfoTabMetadataStripView(0) + 20));
  v75 = v26;
  if (((v27 & 1) == 0 || !*(a1 + *(type metadata accessor for MediaInfo() + 40) + 8)) && (sub_18B4B757C() & 1) == 0)
  {
    goto LABEL_11;
  }

  v28 = type metadata accessor for MediaInfo();
  if (*(a1 + *(v28 + 76) + 24) != 1)
  {
    if ((v27 & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4640);
    v44 = (*(*(v51 - 8) + 56))(v26, 1, 1, v51);
    if ((v27 & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 16646144;
    goto LABEL_20;
  }

  if ((v27 & 2) == 0 || !*(a1 + *(v28 + 32) + 8))
  {
    goto LABEL_11;
  }

LABEL_7:
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4640);
  v68 = &v66;
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v29);
  v72 = v18;
  v31 = &v66 - v30;
  sub_18B6C4A9C();
  v32 = sub_18B6C4FFC();
  v70 = v15;
  v71 = v7;
  v33 = v32;
  v35 = v34;
  v69 = v11;
  v82 = v32;
  v83 = v34;
  v36 = v23;
  v37 = a2;
  v39 = v38 & 1;
  LOBYTE(v84) = v38 & 1;
  v85 = v40;
  sub_18B6C511C();
  v41 = v39;
  a2 = v37;
  v23 = v36;
  v42 = v75;
  sub_18B4B20BC(v33, v35, v41);

  v43 = v31;
  v18 = v72;
  sub_18B4B1DB4(v43, v42, &qword_1EA9C4640);
  v44 = (*(v66 + 56))(v42, 0, 1, v67);
  if ((v27 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v44 = type metadata accessor for MediaInfo();
  v46 = (a1 + *(v44 + 32));
  v47 = v46[1];
  if (v47)
  {
    v82 = *v46;
    v83 = v47;
    sub_18B4B2068();
    sub_18B6C450C();
    v76 = sub_18B6C500C();
    v77 = v48;
    v78 = v49 & 1;
    v79 = v50;
    v80 = 257;
    v81 = 0;
  }

  else
  {
    if (*(a1 + *(v44 + 76) + 24))
    {
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 16711680;
      goto LABEL_20;
    }

    sub_18B6C5A0C();
    sub_18B4B8210(v73);
    sub_18B6C412C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4650);
    sub_18B6C416C();
    v72 = v18;
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_18B6E6E50;
    sub_18B6C414C();
    sub_18B6C415C();
    sub_18B4BBDF0(v57);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_18B6C41CC();
    sub_18B6C41EC();
    sub_18B6C417C();
    sub_18B4BBCD8(&qword_1EA9C4658, 255, MEMORY[0x1E69694D0]);
    sub_18B4A6268(&qword_1EA9C4660, &qword_1EA9C4630);
    v76 = sub_18B6C4FEC();
    v77 = v58;
    v78 = v59 & 1;
    v79 = v60;
    v80 = 257;
    v81 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4668);
  sub_18B4BC118();
  sub_18B6C4C1C();
  v52 = v82;
  v53 = v83;
  v54 = v84;
  v55 = v85;
  if (v87)
  {
    v61 = 0x10000;
  }

  else
  {
    v61 = 0;
  }

  v56 = v61 | v86;
  v44 = sub_18B4BBD4C(v82, v83, v84);
LABEL_20:
  v74 = &v66;
  MEMORY[0x1EEE9AC00](v44, v45);
  v62 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v75;
  sub_18B4A63EC(v75, v62, &qword_1EA9C4638);
  sub_18B4A63EC(v62, a2, &qword_1EA9C4638);
  v64 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4648) + 48);
  sub_18B4BBD20(v52, v53, v54, v55, v56);
  sub_18B4BBD88(v52, v53, v54, v55, v56);
  *v64 = v52;
  *(v64 + 8) = v53;
  *(v64 + 16) = v54;
  *(v64 + 24) = v55;
  *(v64 + 34) = BYTE2(v56);
  *(v64 + 32) = v56;
  sub_18B4A6454(v63, &qword_1EA9C4638);
  sub_18B4BBD88(v52, v53, v54, v55, v56);
  return sub_18B4A6454(v62, &qword_1EA9C4638);
}

uint64_t sub_18B4B8210@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4690);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v25 - v8;
  v10 = sub_18B6C41BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v25 - v17;
  sub_18B6C419C();
  sub_18B6C419C();
  sub_18B4BBCD8(&qword_1EA9C4698, 255, MEMORY[0x1E6969530]);
  result = sub_18B6C55DC();
  if (result)
  {
    v20 = *(v11 + 32);
    v20(v9, v18, v10);
    v20(&v9[*(v2 + 48)], v14, v10);
    sub_18B4A63EC(v9, v5, &qword_1EA9C4690);
    v21 = *(v2 + 48);
    v20(a1, v5, v10);
    v22 = *(v11 + 8);
    v22(&v5[v21], v10);
    sub_18B4B1DB4(v9, v5, &qword_1EA9C4690);
    v23 = *(v2 + 48);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4630);
    v20(&a1[*(v24 + 36)], &v5[v23], v10);
    return (v22)(v5, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18B4B84D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4600);
    MEMORY[0x1EEE9AC00](v2, v3);
    v5 = v22 - v4;
    v6 = sub_18B6C55FC();
    v7 = sub_18B6C55FC();
    v8 = AVLocalizedString(v6);

    v9 = sub_18B6C562C();
    v11 = v10;

    v22[2] = v9;
    v22[3] = v11;
    sub_18B4B2068();
    v12 = sub_18B6C500C();
    v14 = v13;
    LOBYTE(v8) = v15;
    type metadata accessor for AVInfoTabMetadataStripView.BadgeView(0);
    sub_18B4BBCD8(&qword_1EA9C4608, 255, type metadata accessor for AVInfoTabMetadataStripView.BadgeView);
    sub_18B6C50FC();
    sub_18B4B20BC(v12, v14, v8 & 1);

    v16 = sub_18B6C4ACC();
    v17 = *(v16 - 8);
    MEMORY[0x1EEE9AC00](v16, v18);
    v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_18B6C4ABC();
    sub_18B6C48CC();
    (*(v17 + 8))(v20, v16);
    return sub_18B4A6454(v5, &qword_1EA9C4600);
  }

  else
  {
    sub_18B6C4A9C();
    type metadata accessor for AVInfoTabMetadataStripView.BadgeView(0);
    sub_18B4BBCD8(&qword_1EA9C4608, 255, type metadata accessor for AVInfoTabMetadataStripView.BadgeView);
    sub_18B6C50EC();
  }
}

uint64_t sub_18B4B8814(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4758);
    MEMORY[0x1EEE9AC00](v2, v3);
    v5 = v22 - v4;
    v6 = sub_18B6C55FC();
    v7 = sub_18B6C55FC();
    v8 = AVLocalizedString(v6);

    v9 = sub_18B6C562C();
    v11 = v10;

    v22[2] = v9;
    v22[3] = v11;
    sub_18B4B2068();
    v12 = sub_18B6C500C();
    v14 = v13;
    LOBYTE(v8) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4770);
    sub_18B4BCA98();
    sub_18B6C50FC();
    sub_18B4B20BC(v12, v14, v8 & 1);

    v16 = sub_18B6C4ACC();
    v17 = *(v16 - 8);
    MEMORY[0x1EEE9AC00](v16, v18);
    v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_18B6C4ABC();
    sub_18B6C48CC();
    (*(v17 + 8))(v20, v16);
    return sub_18B4A6454(v5, &qword_1EA9C4758);
  }

  else
  {
    sub_18B6C4A9C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4770);
    sub_18B4BCA98();
    sub_18B6C50EC();
  }
}

uint64_t sub_18B4B8B0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_18B4A5F10();

  *a1 = v2;
  return result;
}

uint64_t sub_18B4B8B4C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AVInfoTabMetadataStripView.BadgeView(0);
  v40 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v41 = v5;
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AVInfoTabBadgeModifier();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    v10 = *(*v1 + 16);
    sub_18B6C450C();
    v11 = v10;
    sub_18B6C52EC();
    v38 = v3;
    v12 = *(v3 + 24);
    v13 = sub_18B6C52CC();
    v14 = *(v13 - 8);
    v15 = *(v14 + 16);
    v15(v9, v1 + v12, v13);
    v39 = sub_18B6C4AFC();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4718);
    v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
    v20 = &v38 - v19;
    (v15)(&v38 - v19, v9, v13, v18);
    (*(v14 + 56))(v20, 0, 1, v13);
    sub_18B6C52AC();
    sub_18B4A6454(v20, &qword_1EA9C4718);
    v21 = sub_18B6C529C();
    v22 = *(v21 - 8);
    v24 = MEMORY[0x1EEE9AC00](v21, v23);
    v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 104))(v26, *MEMORY[0x1E6981638], v21, v24);
    v27 = sub_18B6C52DC();

    (*(v22 + 8))(v26, v21);

    sub_18B4BC7C8(v9, type metadata accessor for AVInfoTabBadgeModifier);
    v28 = v42;
    sub_18B4BC828(v1, v42, type metadata accessor for AVInfoTabMetadataStripView.BadgeView);
    v29 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v30 = swift_allocObject();
    sub_18B4BC890(v28, v30 + v29, type metadata accessor for AVInfoTabMetadataStripView.BadgeView);
    v47 = 1;
    v46 = 1;
    v31 = (v1 + *(v38 + 28));
    v33 = v31[1];
    v34 = v31[2];
    *&v43 = *v31;
    v32 = v43;
    *(&v43 + 1) = v33;
    *&v44 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4720);
    sub_18B6C532C();
    *&v43 = v32;
    *(&v43 + 1) = v33;
    *&v44 = v34;
    sub_18B6C532C();
    sub_18B6C54BC();
    result = sub_18B6C479C();
    *a1 = v39;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 24) = v27;
    *(a1 + 32) = 0;
    *(a1 + 40) = 1;
    *(a1 + 48) = sub_18B4BC8F8;
    *(a1 + 56) = v30;
    v36 = v44;
    *(a1 + 64) = v43;
    *(a1 + 80) = v36;
    *(a1 + 96) = v45;
  }

  else
  {
    type metadata accessor for AVObservableBundle();
    sub_18B4BBCD8(&qword_1EA9C4548, v37, type metadata accessor for AVObservableBundle);
    sub_18B6C450C();
    result = sub_18B6C495C();
    __break(1u);
  }

  return result;
}

uint64_t sub_18B4B9064()
{
  type metadata accessor for AVInfoTabMetadataStripView.BadgeView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4720);
  return sub_18B6C533C();
}

uint64_t sub_18B4B90E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AVInfoTabBadgeModifier();
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 image];
  if (v9)
  {
    v10 = v9;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4730);
    v53 = &v46;
    MEMORY[0x1EEE9AC00](v55, v11);
    v51 = &v46 - v12;
    v49 = v10;
    sub_18B6C527C();
    v13 = sub_18B6C52CC();
    v54 = &v46;
    v14 = *(v13 - 8);
    v16 = MEMORY[0x1EEE9AC00](v13, v15);
    v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = [a1 isImageMask];
    v20 = MEMORY[0x1E6981680];
    if (v19)
    {
      v20 = MEMORY[0x1E6981690];
    }

    (*(v14 + 104))(v18, *v20, v13);
    v50 = a1;
    v21 = *(v14 + 16);
    v21(v8, v18, v13);
    v48 = sub_18B6C4AFC();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4718);
    v52 = a2;
    v24 = MEMORY[0x1EEE9AC00](v22 - 8, v23);
    v25 = v8;
    v47 = v8;
    v27 = &v46 - v26;
    (v21)(&v46 - v26, v25, v13, v24);
    (*(v14 + 56))(v27, 0, 1, v13);
    sub_18B6C52AC();
    sub_18B4A6454(v27, &qword_1EA9C4718);
    v28 = sub_18B6C529C();
    v29 = *(v28 - 8);
    v31 = MEMORY[0x1EEE9AC00](v28, v30);
    v33 = &v46 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 104))(v33, *MEMORY[0x1E6981638], v28, v31);
    v46 = sub_18B6C52DC();

    (*(v29 + 8))(v33, v28);

    (*(v14 + 8))(v18, v13);
    sub_18B4BC7C8(v47, type metadata accessor for AVInfoTabBadgeModifier);
    v34 = v49;
    [v49 size];
    v35 = v34;
    [v34 size];
    sub_18B6C54BC();
    sub_18B6C479C();
    *&v62[38] = v67;
    *&v62[22] = v66;
    *&v62[6] = v65;
    *(v60 + 10) = *v62;
    v64 = 1;
    v63 = 1;
    v58 = v48;
    LOBYTE(v59) = 1;
    *(&v59 + 1) = v46;
    *&v60[0] = 0;
    WORD4(v60[0]) = 1;
    *(&v60[1] + 10) = *&v62[16];
    *(&v60[2] + 10) = *&v62[32];
    *(&v60[3] + 1) = *(&v67 + 1);
    v36 = [v50 displayName];
    v37 = sub_18B6C562C();
    v39 = v38;

    v56 = v37;
    v57 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4748);
    sub_18B4BC9F8();
    sub_18B4B2068();
    v40 = v51;
    sub_18B6C510C();

    v61[2] = v60[0];
    v61[3] = v60[1];
    v61[4] = v60[2];
    v61[5] = v60[3];
    v61[0] = v58;
    v61[1] = v59;
    sub_18B4A6454(v61, &qword_1EA9C4748);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4728);
    MEMORY[0x1EEE9AC00](v41, v42);
    sub_18B4A63EC(v40, &v46 - v43, &qword_1EA9C4730);
    swift_storeEnumTagMultiPayload();
    sub_18B4BC968(&qword_1EA9C4738, &qword_1EA9C4730, &unk_18B6E74E8, sub_18B4BC9F8);
    sub_18B6C4C1C();

    return sub_18B4A6454(v40, &qword_1EA9C4730);
  }

  else
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4728);
    MEMORY[0x1EEE9AC00](v45, v45);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4730);
    sub_18B4BC968(&qword_1EA9C4738, &qword_1EA9C4730, &unk_18B6E74E8, sub_18B4BC9F8);
    return sub_18B6C4C1C();
  }
}

uint64_t sub_18B4B982C@<X0>(_OWORD *a1@<X8>)
{
  v70 = a1;
  v2 = sub_18B6C410C();
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v67 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18B6C411C();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v66 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v61 - v10;
  v12 = sub_18B6C41BC();
  v68 = *(v12 - 8);
  v69 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4540);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v61 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v61 - v26;
  sub_18B4A63EC(v1, &v61 - v26, &qword_1EA9C4540);

  v28 = &v27[*(v16 + 64)];
  v29 = *(v28 + 1);
  if (v29)
  {
    v30 = *v28;
    sub_18B4A6454(v27, &qword_1EA9C46A8);
    *&v74 = v30;
    *(&v74 + 1) = v29;
    sub_18B4B2068();
    v31 = sub_18B6C500C();
    v33 = v32;
    *&v71 = v31;
    *(&v71 + 1) = v32;
    v35 = v34 & 1;
    *&v72 = v34 & 1;
    *(&v72 + 1) = v36;
    LOBYTE(v73) = 0;
    sub_18B4B218C(v31, v32, v34 & 1);
    sub_18B6C450C();
    sub_18B6C4C1C();
    v71 = v74;
    v72 = v75;
    v73 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C47F0);
    sub_18B4BCE5C();
    sub_18B6C4C1C();
    sub_18B4B20BC(v31, v33, v35);

    goto LABEL_9;
  }

  v38 = v66;
  v39 = v67;
  sub_18B4A6454(v27, &qword_1EA9C46A8);
  sub_18B4A63EC(v1, v23, &qword_1EA9C4540);

  if ((*(v68 + 48))(v23, 1, v69) != 1)
  {
    v50 = (*(v68 + 32))(v15, v23, v69);
    MEMORY[0x18CFF5BC0](v50);
    sub_18B6C40FC();
    sub_18B6C40EC();
    (*(v62 + 8))(v39, v63);
    v51 = v65;
    v52 = *(v64 + 8);
    v52(v38, v65);
    sub_18B4BBCD8(&qword_1EA9C4800, 255, MEMORY[0x1E6969328]);
    sub_18B6C41AC();
    v52(v11, v51);
    v71 = v74;
    sub_18B4B2068();
    v53 = sub_18B6C500C();
    v55 = v54;
    *&v71 = v53;
    *(&v71 + 1) = v54;
    v57 = v56 & 1;
    *&v72 = v56 & 1;
    *(&v72 + 1) = v58;
    LOBYTE(v73) = 1;
    sub_18B4B218C(v53, v54, v56 & 1);
    sub_18B6C450C();
    sub_18B6C4C1C();
    v71 = v74;
    v72 = v75;
    v73 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C47F0);
    sub_18B4BCE5C();
    sub_18B6C4C1C();
    sub_18B4B20BC(v53, v55, v57);

    result = (*(v68 + 8))(v15, v69);
LABEL_9:
    v46 = v74;
    v47 = v75;
    v48 = v76;
    if (v77)
    {
      v49 = 256;
    }

    else
    {
      v49 = 0;
    }

    goto LABEL_12;
  }

  sub_18B4A6454(v23, &qword_1EA9C46A8);
  sub_18B4A63EC(v1, v19, &qword_1EA9C4540);
  v40 = &v19[*(v16 + 48)];
  v42 = *v40;
  v41 = *(v40 + 1);

  if (!v41)
  {
    result = sub_18B4A6454(v19, &qword_1EA9C46A8);
    v46 = 0uLL;
    v59 = -256;
    v47 = 0uLL;
    goto LABEL_13;
  }

  sub_18B4A6454(v19, &qword_1EA9C46A8);
  *&v74 = v42;
  *(&v74 + 1) = v41;
  sub_18B4B2068();
  *&v71 = sub_18B6C500C();
  *(&v71 + 1) = v44;
  *&v72 = v43 & 1;
  *(&v72 + 1) = v45;
  v73 = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C47F0);
  sub_18B4BCE5C();
  result = sub_18B6C4C1C();
  v46 = v74;
  v47 = v75;
  v48 = v76;
  if (v77)
  {
    v49 = 256;
  }

  else
  {
    v49 = 0;
  }

LABEL_12:
  v59 = v49 | v48;
LABEL_13:
  v60 = v70;
  *v70 = v46;
  v60[1] = v47;
  *(v60 + 16) = v59;
  return result;
}

uint64_t sub_18B4B9F44@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 44);
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4750);
      MEMORY[0x1EEE9AC00](v28, v28);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4758);
      sub_18B4BC968(&qword_1EA9C4760, &qword_1EA9C4758, &unk_18B6E7508, sub_18B4BCA98);
      return sub_18B6C4C1C();
    }

    v38 = 2;
    v41 = a1;
    v3 = 0xEB00000000646569;
    v4 = 0x6669747265435452;
  }

  else
  {
    v41 = a1;
    v38 = v2;
    if (v2)
    {
      v3 = 0xE700000000000000;
      v4 = 0x68736572465452;
    }

    else
    {
      v3 = 0xE800000000000000;
      v4 = 0x6E6574746F525452;
    }
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4758);
  MEMORY[0x1EEE9AC00](v40, v5);
  v39 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4770);
  v37 = &v34;
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v34 - v10;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4778);
  v36 = &v34;
  v12 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v13);
  v15 = &v34 - v14;
  v34 = &v34;
  MEMORY[0x1EEE9AC00](v16, v17);
  *(&v34 - 2) = v1;
  MEMORY[0x1EEE9AC00](v18, v19);
  *(&v34 - 4) = v4;
  *(&v34 - 3) = v3;
  *(&v34 - 2) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4790);
  sub_18B4BCBBC(&qword_1EA9C4798, &qword_1EA9C4790, &unk_18B6E7520, sub_18B4BCC34);
  sub_18B6C52FC();

  v20 = sub_18B6C4CBC();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B6C4CAC();
  sub_18B4A6268(&qword_1EA9C4780, &qword_1EA9C4778);
  sub_18B4BCEEC(&qword_1EA9C4788, MEMORY[0x1EEE7C158]);
  v25 = v35;
  sub_18B6C503C();
  (*(v21 + 8))(v24, v20);
  (*(v12 + 8))(v15, v25);
  *&v11[*(v8 + 44)] = 1;
  if (v38)
  {
    if (v38 == 1)
    {
      v26 = "ESSIBILITY_ROTTEN_TOMATO_ROTTEN";
      v27 = 0xD00000000000002ELL;
    }

    else
    {
      v26 = "seDate clientSetReleaseDate ";
      v27 = 0xD000000000000032;
    }
  }

  else
  {
    v26 = "N_TOMATO_CERTIFIED";
    v27 = 0xD00000000000002FLL;
  }

  v30 = v39;
  sub_18B4B8814(v27, v26 | 0x8000000000000000);

  sub_18B4A6454(v11, &qword_1EA9C4770);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4750);
  MEMORY[0x1EEE9AC00](v31, v32);
  sub_18B4A07A4(v30, &v34 - v33);
  swift_storeEnumTagMultiPayload();
  sub_18B4BC968(&qword_1EA9C4760, &qword_1EA9C4758, &unk_18B6E7508, sub_18B4BCA98);
  sub_18B6C4C1C();
  return sub_18B4A6454(v30, &qword_1EA9C4758);
}

uint64_t sub_18B4BA5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18B6C40CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18B6C41DC();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C47D8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v18 = *(a1 + 40);
  if (v18 > 1.0)
  {
    v18 = v18 / 100.0;
  }

  *&v23[3] = v18;
  sub_18B6C41CC();
  sub_18B4BCE08();
  sub_18B6C406C();
  sub_18B6C40BC();
  MEMORY[0x18CFF5C60](v8, v11);
  (*(v5 + 8))(v8, v4);
  (*(v12 + 8))(v15, v11);
  sub_18B4A6268(&qword_1EA9C47E8, &qword_1EA9C47D8);
  result = sub_18B6C4FEC();
  *a2 = result;
  *(a2 + 8) = v20;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v22;
  return result;
}

uint64_t sub_18B4BA854@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AVInfoTabBadgeModifier();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v8 = *(*a1 + 16);
    sub_18B6C450C();
    v35 = sub_18B6C52EC();
    v9 = sub_18B6C52CC();
    v37 = &v33;
    v10 = *(v9 - 8);
    v12 = MEMORY[0x1EEE9AC00](v9, v11);
    v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 104))(v14, *MEMORY[0x1E6981680], v9, v12);
    v15 = *(v10 + 16);
    v15(v7, v14, v9);
    v38 = sub_18B6C4AFC();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4718);
    v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
    v20 = &v33 - v19;
    (v15)(&v33 - v19, v7, v9, v18);
    (*(v10 + 56))(v20, 0, 1, v9);
    sub_18B6C52AC();
    sub_18B4A6454(v20, &qword_1EA9C4718);
    v21 = sub_18B6C529C();
    v33 = &v33;
    v22 = *(v21 - 8);
    v34 = v7;
    v23 = v22;
    v25 = MEMORY[0x1EEE9AC00](v21, v24);
    v27 = &v33 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 104))(v27, *MEMORY[0x1E6981638], v21, v25);
    v36 = sub_18B6C52DC();

    (*(v23 + 8))(v27, v21);

    (*(v10 + 8))(v14, v9);
    sub_18B4BC7C8(v34, type metadata accessor for AVInfoTabBadgeModifier);
    v28 = swift_allocObject();
    v29 = *(a1 + 16);
    v28[1] = *a1;
    v28[2] = v29;
    *(v28 + 45) = *(a1 + 29);
    v45 = 1;
    v44 = 1;
    v46 = v29;
    v47 = *(a1 + 32);
    v39 = *(a1 + 16);
    v40 = *(a1 + 32);
    sub_18B4BCDD0(a1, &v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4720);
    sub_18B6C532C();
    v41 = v46;
    *&v42 = v47;
    sub_18B6C532C();
    sub_18B6C54BC();
    result = sub_18B6C479C();
    *a2 = v38;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    *(a2 + 24) = v36;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
    *(a2 + 48) = sub_18B4BCDC8;
    *(a2 + 56) = v28;
    v31 = v42;
    *(a2 + 64) = v41;
    *(a2 + 80) = v31;
    *(a2 + 96) = v43;
  }

  else
  {
    type metadata accessor for AVObservableBundle();
    sub_18B4BBCD8(&qword_1EA9C4548, v32, type metadata accessor for AVObservableBundle);
    result = sub_18B6C495C();
    __break(1u);
  }

  return result;
}

uint64_t sub_18B4BAE00()
{

  return swift_deallocClassInstance();
}

uint64_t sub_18B4BAE68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18B6C45CC();
  *a1 = result;
  return result;
}

uint64_t sub_18B4BAF00()
{
  result = type metadata accessor for MediaInfo();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_18B4BAF88()
{
  result = qword_1EA9C4518;
  if (!qword_1EA9C4518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4518);
  }

  return result;
}

unint64_t sub_18B4BAFE0()
{
  result = qword_1EA9C4520;
  if (!qword_1EA9C4520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4520);
  }

  return result;
}

unint64_t sub_18B4BB038()
{
  result = qword_1EA9C4528;
  if (!qword_1EA9C4528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4528);
  }

  return result;
}

unint64_t sub_18B4BB090()
{
  result = qword_1EA9C4530;
  if (!qword_1EA9C4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4530);
  }

  return result;
}

uint64_t sub_18B4BB100(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_18B4BB154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AVInfoTabMetadataStripView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_18B4B3C18(a1, v6, a2);
}

uint64_t sub_18B4BB1D4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4808);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v25[-v15];
  v25[16] = a2;
  v26 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F60);
  sub_18B6C532C();
  if (v25[15])
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 1.0;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4810);
  (*(*(v18 - 8) + 16))(v16, a1, v18);
  *&v16[*(v13 + 44)] = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;

  v20 = sub_18B6C54BC();
  v22 = v21;
  sub_18B4B1DB4(v16, a4, &qword_1EA9C4808);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4818);
  v24 = (a4 + *(result + 36));
  *v24 = sub_18B4BCECC;
  v24[1] = v19;
  v24[2] = v20;
  v24[3] = v22;
  return result;
}

uint64_t sub_18B4BB3A4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v40 = sub_18B6C51FC();
  v12 = sub_18B6C4C3C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0xD000000000000021;
  v37 = 0x800000018B6FBEA0;
  sub_18B6C4CEC();
  sub_18B6C47FC();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  (*(v13 + 8))(v16, v12);
  v36 = v18;
  v37 = v20;
  v38 = v22;
  v39 = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  *(v25 + 24) = a6;
  *(v25 + 32) = a2;
  *(v25 + 40) = a3;
  type metadata accessor for CGRect(0);
  sub_18B4BCEEC(&qword_1EA9C4820, type metadata accessor for CGRect);

  sub_18B6C51AC();

  v26 = sub_18B6C480C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  (*(v27 + 16))(&v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v26, v30);
  v31 = (*(v27 + 80) + 48) & ~*(v27 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = a5;
  *(v32 + 24) = a6;
  *(v32 + 32) = a2;
  *(v32 + 40) = a3;
  (*(v27 + 32))(v32 + v31, &v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  v33 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4828) + 36));
  *v33 = sub_18B4BCF34;
  v33[1] = v32;
  v33[2] = 0;
  v33[3] = 0;
}

uint64_t sub_18B4BB6F4(CGRect *a1, CGFloat *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v8.origin.x = *a2;
  v8.origin.y = v3;
  v8.size.width = v4;
  v8.size.height = v5;
  result = CGRectEqualToRect(*a1, v8);
  if ((result & 1) == 0)
  {
    v7.origin.x = v2;
    v7.origin.y = v3;
    v7.size.width = v4;
    v7.size.height = v5;
    CGRectGetMaxX(v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F60);
    return sub_18B6C533C();
  }

  return result;
}

uint64_t sub_18B4BB7B4(char a1, unint64_t a2, CGFloat a3)
{
  v6 = sub_18B6C4C3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = 0xD000000000000021;
  v23 = 0x800000018B6FBEA0;
  sub_18B6C4CEC();
  sub_18B6C47FC();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v7 + 8))(v10, v6);
  v24.origin.x = v12;
  v24.origin.y = v14;
  v24.size.width = v16;
  v24.size.height = v18;
  MaxX = CGRectGetMaxX(v24);
  LOBYTE(v22) = a1;
  v23 = a2;
  v21[15] = MaxX > a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F60);
  return sub_18B6C533C();
}

uint64_t sub_18B4BB958@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18B6C49AC();
  *a1 = result;
  return result;
}

uint64_t sub_18B4BB9B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18B6C4A0C();
  *a1 = result;
  return result;
}

unint64_t sub_18B4BBA08()
{
  result = qword_1EA9C4558;
  if (!qword_1EA9C4558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4550);
    sub_18B4BCBBC(&qword_1EA9C4560, &qword_1EA9C4568, &unk_18B6E7158, sub_18B4BBAD4);
    sub_18B4A6268(&unk_1EA9C3B08, &qword_1EA9C57D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4558);
  }

  return result;
}

unint64_t sub_18B4BBAD4()
{
  result = qword_1EA9C4570;
  if (!qword_1EA9C4570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4578);
    sub_18B4BBB74();
    sub_18B4A6268(&qword_1EA9C45B0, &qword_1EA9C45B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4570);
  }

  return result;
}

unint64_t sub_18B4BBB74()
{
  result = qword_1EA9C4580;
  if (!qword_1EA9C4580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4588);
    sub_18B4A6268(&qword_1EA9C4590, &qword_1EA9C4598);
    sub_18B4A6268(&qword_1EA9C45A0, &qword_1EA9C45A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4580);
  }

  return result;
}

id sub_18B4BBC54(id result)
{
  if (result)
  {
    v1 = result;

    return v1;
  }

  return result;
}

void *sub_18B4BBC98(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18B4BBCD8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_18B4BBD20(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  if ((a5 & 0xFF0000) != 0xFE0000)
  {
    return sub_18B4BBD34(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_18B4BBD34(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  if (BYTE2(a5) != 255)
  {
    return sub_18B4BBD4C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_18B4BBD4C(uint64_t a1, uint64_t a2, char a3)
{
  sub_18B4B218C(a1, a2, a3 & 1);

  return sub_18B6C450C();
}

uint64_t sub_18B4BBD88(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  if ((a5 & 0xFF0000) != 0xFE0000)
  {
    return sub_18B4BBD9C(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_18B4BBD9C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  if (BYTE2(a5) != 255)
  {
    return sub_18B4BBDB4(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_18B4BBDB4(uint64_t a1, uint64_t a2, char a3)
{
  sub_18B4B20BC(a1, a2, a3 & 1);
}

uint64_t sub_18B4BBDF0(uint64_t a1)
{
  v2 = sub_18B6C416C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4678);
    v11 = sub_18B6C5B3C();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_18B4BBCD8(&qword_1EA9C4680, 255, MEMORY[0x1E6969498]);
      v18 = sub_18B6C55CC();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_18B4BBCD8(&qword_1EA9C4688, 255, MEMORY[0x1E6969498]);
          v25 = sub_18B6C55EC();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_18B4BC118()
{
  result = qword_1EA9C4670;
  if (!qword_1EA9C4670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4670);
  }

  return result;
}

void sub_18B4BC1C8()
{
  sub_18B4BC26C();
  if (v0 <= 0x3F)
  {
    sub_18B6C52CC();
    if (v1 <= 0x3F)
    {
      sub_18B4BC2FC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_18B4BC26C()
{
  if (!qword_1EA9C46D8)
  {
    type metadata accessor for AVObservableBundle();
    sub_18B4BBCD8(&qword_1EA9C4548, v0, type metadata accessor for AVObservableBundle);
    v1 = sub_18B6C497C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA9C46D8);
    }
  }
}

void sub_18B4BC2FC()
{
  if (!qword_1EA9C3AF8)
  {
    type metadata accessor for CGSize(255);
    v0 = sub_18B6C535C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9C3AF8);
    }
  }
}

__n128 __swift_memcpy45_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18B4BC368(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 45))
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

uint64_t sub_18B4BC3C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 45) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 45) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_18B4BC480(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B4BC4B8()
{
  sub_18B4BC524();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_18B4BC524()
{
  if (!qword_1EA9C46F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C46A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C46F8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EA9C46F0);
    }
  }
}

uint64_t sub_18B4BC5B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_18B4BC610(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_18B4BC674()
{
  result = qword_1EA9C4700;
  if (!qword_1EA9C4700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4550);
    sub_18B4BBA08();
    swift_getOpaqueTypeConformance2();
    sub_18B4BCEEC(&qword_1EA9C4710, MEMORY[0x1EEE7C5D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4700);
  }

  return result;
}

uint64_t sub_18B4BC7C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B4BC828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B4BC890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B4BC8F8()
{
  type metadata accessor for AVInfoTabMetadataStripView.BadgeView(0);

  return sub_18B4B9064();
}

uint64_t sub_18B4BC968(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_18B4BCEEC(&qword_1EA9C4710, MEMORY[0x1EEE7C5D0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18B4BC9F8()
{
  result = qword_1EA9C4740;
  if (!qword_1EA9C4740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4748);
    sub_18B4A6268(&qword_1EA9C4090, &qword_1EA9C4098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4740);
  }

  return result;
}

unint64_t sub_18B4BCA98()
{
  result = qword_1EA9C4768;
  if (!qword_1EA9C4768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4770);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4778);
    sub_18B6C4CBC();
    sub_18B4A6268(&qword_1EA9C4780, &qword_1EA9C4778);
    sub_18B4BCEEC(&qword_1EA9C4788, MEMORY[0x1EEE7C158]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4768);
  }

  return result;
}

uint64_t sub_18B4BCBBC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18B4BCC34()
{
  result = qword_1EA9C47A0;
  if (!qword_1EA9C47A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C47A8);
    sub_18B4BCCD4();
    sub_18B4A6268(&qword_1EA9C47C8, &qword_1EA9C47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C47A0);
  }

  return result;
}

unint64_t sub_18B4BCCD4()
{
  result = qword_1EA9C47B0;
  if (!qword_1EA9C47B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C47B8);
    sub_18B4A6268(&qword_1EA9C4090, &qword_1EA9C4098);
    sub_18B4BCD74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C47B0);
  }

  return result;
}

unint64_t sub_18B4BCD74()
{
  result = qword_1EA9C47C0;
  if (!qword_1EA9C47C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C47C0);
  }

  return result;
}

unint64_t sub_18B4BCE08()
{
  result = qword_1EA9C47E0;
  if (!qword_1EA9C47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C47E0);
  }

  return result;
}

unint64_t sub_18B4BCE5C()
{
  result = qword_1EA9C47F8;
  if (!qword_1EA9C47F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C47F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C47F8);
  }

  return result;
}

uint64_t sub_18B4BCEEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B4BCF34()
{
  sub_18B6C480C();
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return sub_18B4BB7B4(v2, v3, v1);
}

unint64_t sub_18B4BCFA0()
{
  result = qword_1EA9C4830;
  if (!qword_1EA9C4830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4838);
    sub_18B4BC968(&qword_1EA9C4738, &qword_1EA9C4730, &unk_18B6E74E8, sub_18B4BC9F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4830);
  }

  return result;
}

unint64_t sub_18B4BD04C()
{
  result = qword_1EA9C4840;
  if (!qword_1EA9C4840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4848);
    sub_18B4BC968(&qword_1EA9C4760, &qword_1EA9C4758, &unk_18B6E7508, sub_18B4BCA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4840);
  }

  return result;
}

unint64_t sub_18B4BD0F8()
{
  result = qword_1EA9C4850;
  if (!qword_1EA9C4850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4858);
    sub_18B4BD170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4850);
  }

  return result;
}

unint64_t sub_18B4BD170()
{
  result = qword_1EA9C4860;
  if (!qword_1EA9C4860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4868);
    sub_18B4BCE5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4860);
  }

  return result;
}

unint64_t sub_18B4BD1F0()
{
  result = qword_1EA9C4870;
  if (!qword_1EA9C4870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4818);
    sub_18B4BD290();
    sub_18B4A6268(&qword_1EA9C4888, &qword_1EA9C4890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4870);
  }

  return result;
}

unint64_t sub_18B4BD290()
{
  result = qword_1EA9C4878;
  if (!qword_1EA9C4878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4808);
    sub_18B4A6268(&qword_1EA9C4880, &qword_1EA9C4810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4878);
  }

  return result;
}

void sub_18B4BD398()
{
  type metadata accessor for AVInfoTabViewConfiguration(319);
  if (v0 <= 0x3F)
  {
    sub_18B4BD458();
    if (v1 <= 0x3F)
    {
      sub_18B4BD598(319, &qword_1EA9C3AF8, type metadata accessor for CGSize, MEMORY[0x1EEE819F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_18B4BD458()
{
  if (!qword_1EA9C3B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C48A8);
    v0 = sub_18B6C473C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9C3B68);
    }
  }
}

void sub_18B4BD4E4()
{
  type metadata accessor for MediaInfo();
  if (v0 <= 0x3F)
  {
    sub_18B4BD598(319, &qword_1EA9C3AB0, sub_18B4BD5FC, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18B4BD598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_18B4BD5FC()
{
  result = qword_1EA9C3980;
  if (!qword_1EA9C3980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9C3980);
  }

  return result;
}

double sub_18B4BD664@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for AVInfoTabView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  sub_18B6C47EC();
  v9 = v8;
  v11 = v10;
  if ((sub_18B4BFE14() & 1) != 0 || (sub_18B4C0E20() & 1) != 0 && v11 < v9)
  {
    sub_18B4C27CC(a1, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AVInfoTabView);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    sub_18B4C1770(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
    v14 = sub_18B6C48EC();
    if (qword_1EA9C3E00 != -1)
    {
      swift_once();
    }

    if (byte_1EA9CE3C8 == 1)
    {
      v15 = sub_18B6C4EAC();
    }

    else
    {
      v15 = sub_18B6C4EBC();
    }

    v36 = 0;
    v26 = sub_18B4C2094;
    v27 = v13;
    v28 = v14;
    LOBYTE(v29) = v15;
    HIBYTE(v34) = 0;
  }

  else
  {
    sub_18B4C27CC(a1, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AVInfoTabView);
    v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v17 = swift_allocObject();
    sub_18B4C1770(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
    v18 = sub_18B6C4EBC();
    sub_18B6C466C();
    v35 = 0;
    v36 = 1;
    v26 = sub_18B4C1D14;
    v27 = v17;
    LOBYTE(v28) = v18;
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v32 = v22;
    v33 = 0;
    v34 = 257;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C48B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C48C0);
  sub_18B4C1D2C();
  sub_18B4C1EA0();
  sub_18B6C4C1C();
  v23 = v38;
  *a2 = v37;
  a2[1] = v23;
  a2[2] = v39[0];
  result = *(v39 + 11);
  *(a2 + 43) = *(v39 + 11);
  return result;
}

double sub_18B4BD91C()
{
  v0 = [objc_opt_self() systemFontOfSize_];
  [v0 lineHeight];
  v2 = v1;

  result = v2 * 4.0;
  *&qword_1EA9C4898 = v2 * 4.0;
  return result;
}

uint64_t sub_18B4BD98C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_18B6C4A8C();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4938);
  sub_18B4BDA00(a1, a2 + *(v4 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4940);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_18B4BDA00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4948);
  v143 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v131 - v5;
  v7 = *(type metadata accessor for MediaInfo() + 44);
  v142 = a1;
  v8 = (a1 + v7);
  v9 = v8[1];
  v145 = v6;
  if (v9 >> 60 == 15)
  {
    goto LABEL_7;
  }

  v10 = *v8;
  v11 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_18B4C2690(v10, v9);
  sub_18B4C2690(v10, v9);
  v12 = sub_18B6C40DC();
  v13 = [v11 initWithData_];

  sub_18B4C26E4(v10, v9);
  if (!v13)
  {
    sub_18B4C26E4(v10, v9);
LABEL_7:
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4950);
    v141 = &v131;
    MEMORY[0x1EEE9AC00](v58, v59);
    v61 = &v131 - v60;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4958);
    MEMORY[0x1EEE9AC00](v62, v63);
    v65 = &v131 - v64;
    v66 = *(sub_18B6C48FC() + 20);
    v67 = *MEMORY[0x1E697F470];
    v68 = sub_18B6C4AAC();
    (*(*(v68 - 8) + 104))(&v65[v66], v67, v68);
    __asm { FMOV            V0.2D, #5.0 }

    *v65 = _Q0;
    v70 = &v65[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4960) + 36)];
    sub_18B6C548C();
    LOBYTE(v66) = sub_18B6C4EBC();
    v70[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4968) + 36)] = v66;
    v71 = &v65[*(v62 + 36)];
    *v71 = 0x3FFC71C71C71C71CLL;
    *(v71 + 4) = 0;
    sub_18B4C2140();
    sub_18B6C511C();
    sub_18B4A6454(v65, &qword_1EA9C4958);
    sub_18B6C54BC();
    sub_18B6C479C();
    v72 = &v61[*(v58 + 36)];
    v73 = v147;
    *v72 = v146;
    *(v72 + 1) = v73;
    *(v72 + 2) = v148;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4990);
    MEMORY[0x1EEE9AC00](v74, v75);
    sub_18B4A63EC(v61, &v131 - v76, &qword_1EA9C4950);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4998);
    sub_18B4C2278(&qword_1EA9C49A0, &qword_1EA9C4998, &unk_18B6E76E8, sub_18B4C2308);
    sub_18B4C2520();
    sub_18B6C4C1C();
    sub_18B4A6454(v61, &qword_1EA9C4950);
    goto LABEL_8;
  }

  v140 = v10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4998);
  v141 = &v131;
  v138 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v139 = &v131 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C49B0);
  v137 = &v131;
  v136 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v135 = &v131 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C49C0);
  v134 = &v131;
  v133 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v132 = &v131 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C49D0);
  v131 = &v131;
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = (&v131 - v26);
  v28 = v13;
  sub_18B6C527C();
  v29 = sub_18B6C529C();
  v30 = *(v29 - 8);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = &v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 104))(v34, *MEMORY[0x1E6981638], v29, v32);
  v35 = sub_18B6C52DC();

  (*(v30 + 8))(v34, v29);
  [v28 size];
  v37 = v36;
  [v28 size];
  v38 = v27 + *(v24 + 44);
  v40 = v37 / v39;
  v41 = *(sub_18B6C48FC() + 20);
  v42 = *MEMORY[0x1E697F470];
  v43 = sub_18B6C4AAC();
  (*(*(v43 - 8) + 104))(&v38[v41], v42, v43);
  __asm { FMOV            V0.2D, #5.0 }

  *v38 = _Q0;
  *&v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C49F0) + 36)] = 256;
  *v27 = v35;
  v27[1] = v40;
  *(v27 + 8) = 0;
  [v28 size];
  [v28 size];
  if (qword_1EA9C3E08 != -1)
  {
    swift_once();
  }

  sub_18B6C54BC();
  sub_18B6C479C();
  v49 = v132;
  sub_18B4B1DB4(v27, v132, &qword_1EA9C49D0);
  v50 = (v49 + *(v133 + 36));
  v51 = v147;
  *v50 = v146;
  v50[1] = v51;
  v50[2] = v148;
  v52 = v135;
  sub_18B4B1DB4(v49, v135, &qword_1EA9C49C0);
  v53 = v52 + *(v136 + 9);
  *v53 = 0;
  *(v53 + 8) = 257;
  sub_18B4C2308();
  v54 = v139;
  sub_18B6C511C();
  sub_18B4A6454(v52, &qword_1EA9C49B0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4990);
  MEMORY[0x1EEE9AC00](v55, v56);
  sub_18B4A63EC(v54, &v131 - v57, &qword_1EA9C4998);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4950);
  sub_18B4C2278(&qword_1EA9C49A0, &qword_1EA9C4998, &unk_18B6E76E8, sub_18B4C2308);
  sub_18B4C2520();
  sub_18B6C4C1C();

  sub_18B4C26E4(v140, v9);
  sub_18B4A6454(v54, &qword_1EA9C4998);
LABEL_8:
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4A10);
  v141 = &v131;
  v78 = v77 - 8;
  MEMORY[0x1EEE9AC00](v77, v79);
  v81 = &v131 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = v80;
  MEMORY[0x1EEE9AC00](v82, v83);
  v85 = &v131 - v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4A18);
  MEMORY[0x1EEE9AC00](v86 - 8, v87);
  v89 = &v131 - v88;
  *v89 = sub_18B6C4B0C();
  *(v89 + 1) = 0x4020000000000000;
  v89[16] = 0;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4A20);
  v91 = v142;
  sub_18B4BEBE8(v142, &v89[*(v90 + 44)]);
  sub_18B6C54CC();
  sub_18B6C491C();
  sub_18B4B1DB4(v89, v85, &qword_1EA9C4A18);
  v92 = &v85[*(v78 + 44)];
  v93 = v154;
  *(v92 + 4) = v153;
  *(v92 + 5) = v93;
  *(v92 + 6) = v155;
  v94 = v150;
  *v92 = v149;
  *(v92 + 1) = v94;
  v95 = v152;
  *(v92 + 2) = v151;
  *(v92 + 3) = v95;
  v140 = v81;
  sub_18B4B1DB4(v85, v81, &qword_1EA9C4A10);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4A28);
  v138 = &v131;
  v97 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96 - 8, v98);
  v100 = (&v131 - v99);
  v101 = *(v91 + *(type metadata accessor for AVInfoTabViewConfiguration(0) + 20));
  if (v101 >> 62)
  {
    v102 = sub_18B6C5C6C();
  }

  else
  {
    v102 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4A30);
  v105 = v103;
  v106 = *(v103 - 8);
  if (v102 < 1)
  {
    v115 = (*(*(v103 - 8) + 56))(v100, 1, 1, v103);
  }

  else
  {
    v137 = &v131;
    MEMORY[0x1EEE9AC00](v103, v104);
    v108 = &v131 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4A40);
    v142 = v100;
    v136 = &v131;
    MEMORY[0x1EEE9AC00](v109, v110);
    v112 = &v131 - v111;
    *v112 = sub_18B6C4B1C();
    *(v112 + 1) = 0x4020000000000000;
    v112[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4A48);
    *&v156 = v101;
    swift_getKeyPath();
    sub_18B6C450C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4A50);
    sub_18B4C25D8();
    sub_18B4C263C();
    sub_18B6C544C();
    sub_18B4A6268(&qword_1EA9C4A68, &qword_1EA9C4A40);
    v100 = v142;
    sub_18B6C516C();
    sub_18B4A6454(v112, &qword_1EA9C4A40);
    sub_18B6C54BC();
    sub_18B6C479C();
    v113 = &v108[*(v105 + 36)];
    v114 = v157;
    *v113 = v156;
    *(v113 + 1) = v114;
    *(v113 + 2) = v158;
    sub_18B4B1DB4(v108, v100, &qword_1EA9C4A30);
    v115 = (*(v106 + 56))(v100, 0, 1, v105);
  }

  v142 = &v131;
  MEMORY[0x1EEE9AC00](v115, v116);
  v118 = &v131 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_18B4A63EC(v145, v118, &qword_1EA9C4948);
  v143 = &v131;
  MEMORY[0x1EEE9AC00](v119, v120);
  v122 = &v131 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v140;
  v124 = sub_18B4A63EC(v140, v122, &qword_1EA9C4A10);
  v139 = &v131;
  MEMORY[0x1EEE9AC00](v124, v125);
  v126 = &v131 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B4A63EC(v100, v126, &qword_1EA9C4A28);
  v127 = v100;
  v128 = v144;
  sub_18B4A63EC(v118, v144, &qword_1EA9C4948);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4A38);
  sub_18B4A63EC(v122, v128 + *(v129 + 48), &qword_1EA9C4A10);
  sub_18B4A63EC(v126, v128 + *(v129 + 64), &qword_1EA9C4A28);
  sub_18B4A6454(v127, &qword_1EA9C4A28);
  sub_18B4A6454(v123, &qword_1EA9C4A10);
  sub_18B4A6454(v145, &qword_1EA9C4948);
  sub_18B4A6454(v126, &qword_1EA9C4A28);
  sub_18B4A6454(v122, &qword_1EA9C4A10);
  return sub_18B4A6454(v118, &qword_1EA9C4948);
}

uint64_t sub_18B4BEBE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v39 = type metadata accessor for AVInfoTabMetadataStripView(0);
  MEMORY[0x1EEE9AC00](v39, v3);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v40 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4A70);
  v38 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v43 = &v35 - v10;
  if (a1[1])
  {
    v11 = *a1;
    v36 = a1[1];
    v37 = v11;
  }

  else
  {
    v36 = 0xE000000000000000;
    v37 = 0;
  }

  v12 = (a1 + *(type metadata accessor for MediaInfo() + 36));
  v13 = v12[1];
  if (v13)
  {
    v35 = *v12;
    v14 = v13;
LABEL_8:
    sub_18B6C450C();
    goto LABEL_9;
  }

  v14 = a1[3];
  if (v14)
  {
    v35 = a1[2];
    sub_18B6C450C();
    goto LABEL_8;
  }

  v35 = 0;
  v14 = 0xE000000000000000;
LABEL_9:
  v15 = (a1 + *(type metadata accessor for AVInfoTabView(0) + 28));
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  *&v46 = *v15;
  *(&v46 + 1) = v17;
  *&v47 = v18;
  sub_18B6C450C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4720);
  sub_18B6C534C();
  v19 = v53;
  v20 = v54;
  if (qword_1EA9C3E08 != -1)
  {
    swift_once();
  }

  *&v53 = v16;
  *(&v53 + 1) = v17;
  *&v54 = v18;
  sub_18B6C532C();
  sub_18B6C54BC();
  sub_18B6C479C();
  *&v53 = v37;
  *(&v53 + 1) = v36;
  *&v54 = v35;
  *(&v54 + 1) = v14;
  v55 = v19;
  v56 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4A78);
  sub_18B4C26F8();
  sub_18B6C516C();
  v50 = v57;
  v51 = v58;
  v52 = v59;
  v46 = v53;
  v47 = v54;
  v48 = v55;
  v49 = v56;
  sub_18B4A6454(&v46, &qword_1EA9C4A78);
  *&v53 = v16;
  *(&v53 + 1) = v17;
  *&v54 = v18;
  sub_18B6C532C();
  sub_18B6C54BC();
  sub_18B6C491C();
  *&v45[55] = v56;
  *&v45[71] = v57;
  *&v45[87] = v58;
  *&v45[103] = v59;
  *&v45[7] = v53;
  *&v45[23] = v54;
  v44 = 1;
  *&v45[39] = v55;
  v21 = v40;
  v22 = sub_18B4C27CC(a1, v40, type metadata accessor for MediaInfo);
  *(v21 + *(v39 + 20)) = 511;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v43;
  sub_18B4A63EC(v43, v25, &qword_1EA9C4A70);
  v27 = v41;
  sub_18B4C27CC(v21, v41, type metadata accessor for AVInfoTabMetadataStripView);
  v28 = v42;
  sub_18B4A63EC(v25, v42, &qword_1EA9C4A70);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4A90);
  v30 = v28 + *(v29 + 48);
  v31 = *&v45[80];
  *(v30 + 73) = *&v45[64];
  *(v30 + 89) = v31;
  *(v30 + 105) = *&v45[96];
  v32 = *&v45[16];
  *(v30 + 9) = *v45;
  *(v30 + 25) = v32;
  v33 = *&v45[48];
  *(v30 + 41) = *&v45[32];
  *v30 = 0;
  *(v30 + 8) = 1;
  *(v30 + 120) = *&v45[111];
  *(v30 + 57) = v33;
  sub_18B4C27CC(v27, v28 + *(v29 + 64), type metadata accessor for AVInfoTabMetadataStripView);
  sub_18B4C2834(v21);
  sub_18B4A6454(v26, &qword_1EA9C4A70);
  sub_18B4C2834(v27);
  return sub_18B4A6454(v25, &qword_1EA9C4A70);
}

id sub_18B4BF11C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_18B4BF128@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_18B6C4B0C();
  *(a3 + 8) = 0x402C000000000000;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4A98);
  return sub_18B4BF190(a2, a1, a3 + *(v6 + 44));
}

uint64_t sub_18B4BF190@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AVInfoTabView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4AA0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v28 - v14;
  *v15 = sub_18B6C4B0C();
  *(v15 + 1) = 0x4018000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4AA8);
  sub_18B4BF468(a1, a2, &v15[*(v16 + 44)]);
  v17 = type metadata accessor for AVInfoTabViewConfiguration(0);
  v19 = *(a1 + *(v17 + 20));
  if (v19 >> 62)
  {
    v17 = sub_18B6C5C6C();
    if (v17 >= 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v22 = 0;
    v21 = 0;
    goto LABEL_6;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_18B4C27CC(a1, &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AVInfoTabView);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  sub_18B4C1770(v10, v21 + v20);

  v22 = sub_18B4C2890;
LABEL_6:
  MEMORY[0x1EEE9AC00](v17, v18);
  v23 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B4A63EC(v15, v23, &qword_1EA9C4AA0);
  sub_18B4A63EC(v23, a3, &qword_1EA9C4AA0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4AB0);
  v25 = (a3 + *(v24 + 48));
  *v25 = v22;
  v25[1] = v21;
  v26 = a3 + *(v24 + 64);
  sub_18B4A324C(v22);
  sub_18B4A31A4(v22);
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_18B4A6454(v15, &qword_1EA9C4AA0);
  sub_18B4A31A4(v22);
  return sub_18B4A6454(v23, &qword_1EA9C4AA0);
}

uint64_t sub_18B4BF468@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45[1] = a2;
  v50 = a3;
  v48 = type metadata accessor for AVInfoTabMetadataStripView(0);
  MEMORY[0x1EEE9AC00](v48, v4);
  v47 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4AE0);
  MEMORY[0x1EEE9AC00](v46, v6);
  v49 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45[2] = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4AE8);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v45 - v14;
  if (a1[1])
  {
    v16 = *a1;
    v17 = a1[1];
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = (a1 + *(type metadata accessor for MediaInfo() + 36));
  if (v18[1])
  {
    v19 = *v18;
    v20 = v18[1];
LABEL_8:
    sub_18B6C450C();
    goto LABEL_9;
  }

  v20 = a1[3];
  if (v20)
  {
    v19 = a1[2];
    sub_18B6C450C();
    goto LABEL_8;
  }

  v19 = 0;
  v20 = 0xE000000000000000;
LABEL_9:
  v21 = (a1 + *(type metadata accessor for AVInfoTabView(0) + 32));
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  *&v51 = *v21;
  *(&v51 + 1) = v23;
  *&v52 = v24;
  sub_18B6C450C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4720);
  sub_18B6C534C();
  *&v51 = v16;
  *(&v51 + 1) = v17;
  *&v52 = v19;
  *(&v52 + 1) = v20;
  v53 = v55;
  v54 = v56;
  sub_18B4C2778();
  sub_18B6C516C();
  v55 = v51;
  v56 = v52;
  v57 = v53;
  v58 = v54;
  sub_18B4C29A8(&v55);
  sub_18B6C47EC();
  if (qword_1EA9C3E00 != -1)
  {
    swift_once();
  }

  v25 = byte_1EA9CE3C8;
  v26 = *(a1 + *(type metadata accessor for AVInfoTabViewConfiguration(0) + 20)) >> 62;
  if (v25 == 1)
  {
    if (!v26)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if (v26)
  {
LABEL_17:
    sub_18B6C5C6C();
  }

LABEL_15:
  *&v51 = v22;
  *(&v51 + 1) = v23;
  *&v52 = v24;
  sub_18B6C532C();
  sub_18B6C54BC();
  sub_18B6C479C();
  sub_18B4B1DB4(v15, v11, &qword_1EA9C4AE8);
  v27 = &v11[*(v46 + 9)];
  v28 = v52;
  *v27 = v51;
  *(v27 + 1) = v28;
  *(v27 + 2) = v53;
  v29 = v49;
  sub_18B4B1DB4(v11, v49, &qword_1EA9C4AE0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4AF0);
  v46 = v45;
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8, v32);
  v33 = a1;
  v34 = v47;
  sub_18B4C27CC(v33, v47, type metadata accessor for MediaInfo);
  *(v34 + *(v48 + 5)) = 99;
  sub_18B4C29D8();
  sub_18B6C516C();
  v35 = sub_18B4C2834(v34);
  v48 = v45;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = v45 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_18B4A63EC(v29, v38, &qword_1EA9C4AE0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v41 = v45 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B4A63EC(v41, v41, &qword_1EA9C4AF0);
  v42 = v50;
  sub_18B4A63EC(v38, v50, &qword_1EA9C4AE0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4B00);
  sub_18B4A63EC(v41, v42 + *(v43 + 48), &qword_1EA9C4AF0);
  sub_18B4A6454(v41, &qword_1EA9C4AF0);
  sub_18B4A6454(v29, &qword_1EA9C4AE0);
  sub_18B4A6454(v41, &qword_1EA9C4AF0);
  return sub_18B4A6454(v38, &qword_1EA9C4AE0);
}

uint64_t sub_18B4BFAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4AB8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v17 - v7;
  *v8 = sub_18B6C4A8C();
  *(v8 + 1) = 0x4024000000000000;
  v8[16] = 0;
  v17[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4AC0) + 44);
  v17[3] = *(a2 + *(type metadata accessor for AVInfoTabViewConfiguration(0) + 20));
  swift_getKeyPath();
  v9 = sub_18B6C480C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  (*(v10 + 16))(v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v13);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  sub_18B6C450C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4A50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4AC8);
  sub_18B4C25D8();
  sub_18B4C2928();
  sub_18B6C544C();
  sub_18B4A6268(&qword_1EA9C4AD8, &qword_1EA9C4AB8);
  sub_18B6C516C();
  return sub_18B4A6454(v8, &qword_1EA9C4AB8);
}

double sub_18B4BFD64@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_18B6C47EC();
  v4 = v3;
  sub_18B6C54BC();
  sub_18B6C479C();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  result = *&v10;
  *(a2 + 40) = v10;
  return result;
}

uint64_t sub_18B4BFE14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C48A8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v4 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v103[-v4];
  v108 = type metadata accessor for AVInfoTabView(0);
  v6 = *(v108 + 24);
  v120 = v0;
  v110 = v6;
  v7 = sub_18B4C3B88(&v103[-v4]);
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = &v103[-v4];
  v10 = *MEMORY[0x1E697FF48];
  v11 = sub_18B6C4CCC();
  v12 = *(v11 - 8);
  v13 = v12[13];
  v111 = v10;
  v117 = v13;
  v118 = v12 + 13;
  (v13)(&v103[-v4], v10, v11);
  v115 = v12[7];
  v116 = v12 + 7;
  v115(&v103[-v4], 0, 1, v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4B08);
  v113 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v103[-v16];
  v114 = v18;
  v19 = *(v18 + 48);
  sub_18B4A63EC(&v103[-v4], &v103[-v16], &qword_1EA9C48A8);
  sub_18B4A63EC(&v103[-v4], &v17[v19], &qword_1EA9C48A8);
  v112 = v12;
  v21 = v12 + 6;
  v20 = v12[6];
  v22 = (v20)(v17, 1, v11);
  v119 = v21;
  v121 = v20;
  if (v22 == 1)
  {
    sub_18B4A6454(v9, &qword_1EA9C48A8);
    sub_18B4A6454(v5, &qword_1EA9C48A8);
    if ((v20)(&v17[v19], 1, v11) == 1)
    {
      v24 = sub_18B4A6454(v17, &qword_1EA9C48A8);
      goto LABEL_8;
    }

LABEL_6:
    v24 = sub_18B4A6454(v17, &qword_1EA9C4B08);
    goto LABEL_14;
  }

  v122 = v103;
  MEMORY[0x1EEE9AC00](v22, v23);
  v26 = &v103[-v4];
  sub_18B4A63EC(v17, &v103[-v4], &qword_1EA9C48A8);
  v27 = (v20)(&v17[v19], 1, v11);
  if (v27 == 1)
  {
    sub_18B4A6454(&v103[-v4], &qword_1EA9C48A8);
    sub_18B4A6454(&v103[-v4], &qword_1EA9C48A8);
    (v112[1])(&v103[-v4], v11);
    goto LABEL_6;
  }

  v109 = v103;
  v29 = v112;
  v30 = MEMORY[0x1EEE9AC00](v27, v28);
  v32 = &v103[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (v29[4])(v32, &v17[v19], v11, v30);
  sub_18B4C3D60(&qword_1EA9C4B10, MEMORY[0x1EEE80310]);
  LODWORD(v107) = sub_18B6C55EC();
  v33 = v29[1];
  v33(v32, v11);
  sub_18B4A6454(v9, &qword_1EA9C48A8);
  sub_18B4A6454(v5, &qword_1EA9C48A8);
  v33(v26, v11);
  v24 = sub_18B4A6454(v17, &qword_1EA9C48A8);
  if ((v107 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v122 = v103;
  MEMORY[0x1EEE9AC00](v24, v25);
  v34 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = &v103[-v34];
  v36 = sub_18B4C3B88(&v103[-v34]);
  v109 = v103;
  v38 = MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v103[-v34];
  v117(&v103[-v34], *MEMORY[0x1E697FF30], v11, v38);
  v40 = (v115)(&v103[-v34], 0, 1, v11);
  v107 = v103;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v103[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = *(v114 + 48);
  sub_18B4A63EC(&v103[-v34], v43, &qword_1EA9C48A8);
  sub_18B4A63EC(&v103[-v34], &v43[v44], &qword_1EA9C48A8);
  v45 = v121;
  v46 = (v121)(v43, 1, v11);
  if (v46 != 1)
  {
    v106 = v103;
    MEMORY[0x1EEE9AC00](v46, v47);
    v49 = &v103[-v34];
    sub_18B4A63EC(v43, &v103[-v34], &qword_1EA9C48A8);
    v50 = v45(&v43[v44], 1, v11);
    if (v50 != 1)
    {
      v105 = v103;
      v92 = v112;
      v93 = MEMORY[0x1EEE9AC00](v50, v51);
      v95 = &v103[-((v94 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (v92[4])(v95, &v43[v44], v11, v93);
      sub_18B4C3D60(&qword_1EA9C4B10, MEMORY[0x1EEE80310]);
      v104 = sub_18B6C55EC();
      v96 = v92[1];
      v96(v95, v11);
      sub_18B4A6454(v39, &qword_1EA9C48A8);
      sub_18B4A6454(v35, &qword_1EA9C48A8);
      v96(v49, v11);
      v24 = sub_18B4A6454(v43, &qword_1EA9C48A8);
      if (v104)
      {
        v48 = 1;
        return v48 & 1;
      }

LABEL_14:
      v122 = v103;
      MEMORY[0x1EEE9AC00](v24, v25);
      v52 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
      v53 = &v103[-v52];
      v54 = sub_18B4C3B88(&v103[-v52]);
      v110 = v103;
      v56 = MEMORY[0x1EEE9AC00](v54, v55);
      v57 = &v103[-v52];
      v117(&v103[-v52], v111, v11, v56);
      v58 = (v115)(&v103[-v52], 0, 1, v11);
      v109 = v103;
      MEMORY[0x1EEE9AC00](v58, v59);
      v61 = &v103[-((v60 + 15) & 0xFFFFFFFFFFFFFFF0)];
      v62 = *(v114 + 48);
      sub_18B4A63EC(&v103[-v52], v61, &qword_1EA9C48A8);
      sub_18B4A63EC(&v103[-v52], &v61[v62], &qword_1EA9C48A8);
      v63 = v121;
      v64 = (v121)(v61, 1, v11);
      if (v64 == 1)
      {
        sub_18B4A6454(&v103[-v52], &qword_1EA9C48A8);
        sub_18B4A6454(&v103[-v52], &qword_1EA9C48A8);
        if ((v121)(&v61[v62], 1, v11) == 1)
        {
          v66 = sub_18B4A6454(v61, &qword_1EA9C48A8);
          goto LABEL_22;
        }
      }

      else
      {
        v107 = v103;
        MEMORY[0x1EEE9AC00](v64, v65);
        v68 = &v103[-v52];
        sub_18B4A63EC(v61, &v103[-v52], &qword_1EA9C48A8);
        v69 = v63(&v61[v62], 1, v11);
        if (v69 != 1)
        {
          v106 = v103;
          v71 = v112;
          v72 = MEMORY[0x1EEE9AC00](v69, v70);
          v74 = &v103[-((v73 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (v71[4])(v74, &v61[v62], v11, v72);
          sub_18B4C3D60(&qword_1EA9C4B10, MEMORY[0x1EEE80310]);
          LODWORD(v105) = sub_18B6C55EC();
          v75 = v71[1];
          v75(v74, v11);
          sub_18B4A6454(v57, &qword_1EA9C48A8);
          sub_18B4A6454(v53, &qword_1EA9C48A8);
          v75(v68, v11);
          v66 = sub_18B4A6454(v61, &qword_1EA9C48A8);
          if ((v105 & 1) == 0)
          {
            v48 = 0;
            return v48 & 1;
          }

LABEL_22:
          v122 = v103;
          MEMORY[0x1EEE9AC00](v66, v67);
          v76 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
          v77 = &v103[-v76];
          v78 = sub_18B4C3B88(&v103[-v76]);
          v80 = MEMORY[0x1EEE9AC00](v78, v79);
          v81 = &v103[-v76];
          v117(&v103[-v76], v111, v11, v80);
          v82 = (v115)(&v103[-v76], 0, 1, v11);
          v120 = v103;
          MEMORY[0x1EEE9AC00](v82, v83);
          v85 = &v103[-((v84 + 15) & 0xFFFFFFFFFFFFFFF0)];
          v86 = *(v114 + 48);
          sub_18B4A63EC(&v103[-v76], v85, &qword_1EA9C48A8);
          sub_18B4A63EC(&v103[-v76], &v85[v86], &qword_1EA9C48A8);
          v87 = v121;
          v88 = (v121)(v85, 1, v11);
          if (v88 == 1)
          {
            sub_18B4A6454(v81, &qword_1EA9C48A8);
            sub_18B4A6454(v77, &qword_1EA9C48A8);
            if (v87(&v85[v86], 1, v11) == 1)
            {
              sub_18B4A6454(v85, &qword_1EA9C48A8);
              v48 = 1;
              return v48 & 1;
            }
          }

          else
          {
            v118 = v103;
            MEMORY[0x1EEE9AC00](v88, v89);
            sub_18B4A63EC(v85, &v103[-v76], &qword_1EA9C48A8);
            v90 = (v87)(&v85[v86], 1, v11);
            if (v90 != 1)
            {
              v119 = v103;
              v121 = v103;
              v97 = v112;
              v98 = MEMORY[0x1EEE9AC00](v90, v91);
              v100 = &v103[-((v99 + 15) & 0xFFFFFFFFFFFFFFF0)];
              (v97[4])(v100, &v85[v86], v11, v98);
              sub_18B4C3D60(&qword_1EA9C4B10, MEMORY[0x1EEE80310]);
              v48 = sub_18B6C55EC();
              v101 = v97[1];
              v101(v100, v11);
              sub_18B4A6454(v81, &qword_1EA9C48A8);
              sub_18B4A6454(v77, &qword_1EA9C48A8);
              v101(&v103[-v76], v11);
              sub_18B4A6454(v85, &qword_1EA9C48A8);
              return v48 & 1;
            }

            sub_18B4A6454(&v103[-v76], &qword_1EA9C48A8);
            sub_18B4A6454(&v103[-v76], &qword_1EA9C48A8);
            (v112[1])(&v103[-v76], v11);
          }

          sub_18B4A6454(v85, &qword_1EA9C4B08);
          v48 = 0;
          return v48 & 1;
        }

        sub_18B4A6454(&v103[-v52], &qword_1EA9C48A8);
        sub_18B4A6454(&v103[-v52], &qword_1EA9C48A8);
        (v112[1])(&v103[-v52], v11);
      }

      sub_18B4A6454(v61, &qword_1EA9C4B08);
      v48 = 0;
      return v48 & 1;
    }

    sub_18B4A6454(v39, &qword_1EA9C48A8);
    sub_18B4A6454(v35, &qword_1EA9C48A8);
    (v112[1])(v49, v11);
LABEL_13:
    v24 = sub_18B4A6454(v43, &qword_1EA9C4B08);
    goto LABEL_14;
  }

  sub_18B4A6454(v39, &qword_1EA9C48A8);
  sub_18B4A6454(v35, &qword_1EA9C48A8);
  if (v45(&v43[v44], 1, v11) != 1)
  {
    goto LABEL_13;
  }

  sub_18B4A6454(v43, &qword_1EA9C48A8);
  v48 = 1;
  return v48 & 1;
}

uint64_t sub_18B4C0E20()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C48A8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v4 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v58[-v4];
  v68 = type metadata accessor for AVInfoTabView(0);
  v70 = v0;
  v6 = sub_18B4C3B88(&v58[-v4]);
  MEMORY[0x1EEE9AC00](v6, v7);
  v8 = &v58[-v4];
  v9 = *MEMORY[0x1E697FF30];
  v10 = sub_18B6C4CCC();
  v11 = *(v10 - 8);
  v12 = v11[13];
  LODWORD(v69) = v9;
  v66 = v12;
  v62 = v11 + 13;
  (v12)(&v58[-v4], v9, v10);
  v13 = v11[7];
  v67 = v11 + 7;
  v65 = v13;
  v13(&v58[-v4], 0, 1, v10);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4B08);
  v63 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v58[-v16];
  v64 = v18;
  v19 = *(v18 + 48);
  sub_18B4A63EC(&v58[-v4], &v58[-v16], &qword_1EA9C48A8);
  sub_18B4A63EC(&v58[-v4], &v17[v19], &qword_1EA9C48A8);
  v73 = v11;
  v20 = v11[6];
  v21 = (v20)(v17, 1, v10);
  v71 = v2;
  if (v21 == 1)
  {
    v72 = v20;
    sub_18B4A6454(v8, &qword_1EA9C48A8);
    sub_18B4A6454(v5, &qword_1EA9C48A8);
    if ((v72)(&v17[v19], 1, v10) == 1)
    {
      v23 = sub_18B4A6454(v17, &qword_1EA9C48A8);
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v61 = v58;
  MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v58[-v4];
  sub_18B4A63EC(v17, v25, &qword_1EA9C48A8);
  v26 = (v20)(&v17[v19], 1, v10);
  if (v26 == 1)
  {
    sub_18B4A6454(v8, &qword_1EA9C48A8);
    sub_18B4A6454(v5, &qword_1EA9C48A8);
    (v73[1])(v25, v10);
LABEL_6:
    sub_18B4A6454(v17, &qword_1EA9C4B08);
    goto LABEL_7;
  }

  v72 = v20;
  v60 = v58;
  v29 = v73;
  v30 = MEMORY[0x1EEE9AC00](v26, v27);
  v32 = &v58[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (v29[4])(v32, &v17[v19], v10, v30);
  sub_18B4C3D60(&qword_1EA9C4B10, MEMORY[0x1EEE80310]);
  v59 = sub_18B6C55EC();
  v33 = v29[1];
  v33(v32, v10);
  sub_18B4A6454(v8, &qword_1EA9C48A8);
  sub_18B4A6454(v5, &qword_1EA9C48A8);
  v33(v25, v10);
  v23 = sub_18B4A6454(v17, &qword_1EA9C48A8);
  if (v59)
  {
LABEL_9:
    v61 = v58;
    v34 = v71;
    MEMORY[0x1EEE9AC00](v23, v24);
    v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
    v36 = &v58[-v35];
    v37 = sub_18B4C3B88(&v58[-v35]);
    v70 = v58;
    v39 = MEMORY[0x1EEE9AC00](v37, v38);
    v40 = &v58[-v35];
    v66(&v58[-v35], v69, v10, v39);
    v41 = v65(&v58[-v35], 0, 1, v10);
    v69 = v58;
    MEMORY[0x1EEE9AC00](v41, v42);
    v44 = &v58[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v45 = *(v64 + 48);
    sub_18B4A63EC(&v58[-v35], v44, &qword_1EA9C48A8);
    sub_18B4A63EC(&v58[-v35], &v44[v45], &qword_1EA9C48A8);
    v46 = v72;
    v47 = (v72)(v44, 1, v10);
    if (v47 == 1)
    {
      sub_18B4A6454(v40, &qword_1EA9C48A8);
      sub_18B4A6454(v36, &qword_1EA9C48A8);
      if (v46(&v44[v45], 1, v10) == 1)
      {
        sub_18B4A6454(v44, &qword_1EA9C48A8);
        v28 = 1;
        return v28 & 1;
      }
    }

    else
    {
      v68 = v58;
      MEMORY[0x1EEE9AC00](v47, v48);
      v49 = &v58[-v35];
      sub_18B4A63EC(v44, v49, &qword_1EA9C48A8);
      v50 = (v46)(&v44[v45], 1, v10);
      if (v50 != 1)
      {
        v72 = v58;
        v52 = v73;
        v53 = MEMORY[0x1EEE9AC00](v50, v51);
        v55 = &v58[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (v52[4])(v55, &v44[v45], v10, v53);
        sub_18B4C3D60(&qword_1EA9C4B10, MEMORY[0x1EEE80310]);
        v28 = sub_18B6C55EC();
        v56 = v52[1];
        v56(v55, v10);
        sub_18B4A6454(v40, &qword_1EA9C48A8);
        sub_18B4A6454(v36, &qword_1EA9C48A8);
        v56(v49, v10);
        sub_18B4A6454(v44, &qword_1EA9C48A8);
        return v28 & 1;
      }

      sub_18B4A6454(v40, &qword_1EA9C48A8);
      sub_18B4A6454(v36, &qword_1EA9C48A8);
      (v73[1])(v49, v10);
    }

    sub_18B4A6454(v44, &qword_1EA9C4B08);
    v28 = 0;
    return v28 & 1;
  }

LABEL_7:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_18B4C1670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  sub_18B4C27CC(v3, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AVInfoTabView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_18B4C1770(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *a3 = sub_18B4C17D4;
  a3[1] = v8;
  return result;
}

uint64_t sub_18B4C1770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AVInfoTabView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_18B4C17D4@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(type metadata accessor for AVInfoTabView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_18B4BD664(v4, a1);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for AVInfoTabView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = type metadata accessor for MediaInfo();
  v7 = v0 + v3 + v6[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4540);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = v0;
    v10 = v4;
    v11 = sub_18B6C41BC();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v7, 1, v11))
    {
      (*(v12 + 8))(v7, v11);
    }

    v4 = v10;
    v0 = v9;
    v3 = (v2 + 16) & ~v2;
  }

  v13 = (v5 + v6[11]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_18B4BB100(*v13, v14);
  }

  v15 = v6[22];
  v16 = sub_18B6C41BC();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v5 + v15, 1, v16))
  {
    (*(v17 + 8))(v5 + v15, v16);
  }

  type metadata accessor for AVInfoTabViewConfiguration(0);

  v18 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C48B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_18B6C4CCC();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v5 + v18, 1, v19))
    {
      (*(v20 + 8))(v5 + v18, v19);
    }
  }

  else
  {
  }

  v21 = *(v1 + 24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_18B6C4CCC();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v5 + v21, 1, v22))
    {
      (*(v23 + 8))(v5 + v21, v22);
    }
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

unint64_t sub_18B4C1D2C()
{
  result = qword_1EA9C48C8;
  if (!qword_1EA9C48C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C48B8);
    sub_18B4C1DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C48C8);
  }

  return result;
}

unint64_t sub_18B4C1DAC()
{
  result = qword_1EA9C48D0;
  if (!qword_1EA9C48D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C48D8);
    sub_18B4A6268(&qword_1EA9C48E0, &qword_1EA9C48E8);
    sub_18B4C1E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C48D0);
  }

  return result;
}

unint64_t sub_18B4C1E4C()
{
  result = qword_1EA9C48F0;
  if (!qword_1EA9C48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C48F0);
  }

  return result;
}

unint64_t sub_18B4C1EA0()
{
  result = qword_1EA9C48F8;
  if (!qword_1EA9C48F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C48C0);
    sub_18B4C1F20();
    sub_18B4C1E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C48F8);
  }

  return result;
}

unint64_t sub_18B4C1F20()
{
  result = qword_1EA9C4900;
  if (!qword_1EA9C4900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4908);
    sub_18B4C1FA0();
    sub_18B4C2040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4900);
  }

  return result;
}

unint64_t sub_18B4C1FA0()
{
  result = qword_1EA9C4910;
  if (!qword_1EA9C4910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4918);
    sub_18B4A6268(&qword_1EA9C4920, &qword_1EA9C4928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4910);
  }

  return result;
}

unint64_t sub_18B4C2040()
{
  result = qword_1EA9C4930;
  if (!qword_1EA9C4930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4930);
  }

  return result;
}

uint64_t sub_18B4C20AC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AVInfoTabView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_18B4C2140()
{
  result = qword_1EA9C4970;
  if (!qword_1EA9C4970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4958);
    sub_18B4C21C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4970);
  }

  return result;
}

unint64_t sub_18B4C21C0()
{
  result = qword_1EA9C4978;
  if (!qword_1EA9C4978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4960);
    sub_18B4C3D60(&qword_1EA9C4980, MEMORY[0x1EEE7EE20]);
    sub_18B4A6268(&qword_1EA9C4988, &qword_1EA9C4968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4978);
  }

  return result;
}

uint64_t sub_18B4C2278(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_18B4C3D60(&qword_1EA9C4710, MEMORY[0x1EEE7C5D8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18B4C2308()
{
  result = qword_1EA9C49A8;
  if (!qword_1EA9C49A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C49B0);
    sub_18B4C2388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C49A8);
  }

  return result;
}

unint64_t sub_18B4C2388()
{
  result = qword_1EA9C49B8;
  if (!qword_1EA9C49B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C49C0);
    sub_18B4C2408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C49B8);
  }

  return result;
}

unint64_t sub_18B4C2408()
{
  result = qword_1EA9C49C8;
  if (!qword_1EA9C49C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C49D0);
    sub_18B4C24A8();
    sub_18B4A6268(&qword_1EA9C49E8, &qword_1EA9C49F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C49C8);
  }

  return result;
}

unint64_t sub_18B4C24A8()
{
  result = qword_1EA9C49D8;
  if (!qword_1EA9C49D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C49E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C49D8);
  }

  return result;
}

unint64_t sub_18B4C2520()
{
  result = qword_1EA9C49F8;
  if (!qword_1EA9C49F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4950);
    sub_18B4C2278(&qword_1EA9C4A00, &qword_1EA9C4A08, &unk_18B6E7718, sub_18B4C2140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C49F8);
  }

  return result;
}

unint64_t sub_18B4C25D8()
{
  result = qword_1EA9C4A58;
  if (!qword_1EA9C4A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4A58);
  }

  return result;
}

unint64_t sub_18B4C263C()
{
  result = qword_1EA9C4A60;
  if (!qword_1EA9C4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4A60);
  }

  return result;
}

uint64_t sub_18B4C2690(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_18B4C26E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_18B4BB100(a1, a2);
  }

  return a1;
}

unint64_t sub_18B4C26F8()
{
  result = qword_1EA9C4A80;
  if (!qword_1EA9C4A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4A78);
    sub_18B4C2778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4A80);
  }

  return result;
}

unint64_t sub_18B4C2778()
{
  result = qword_1EA9C4A88;
  if (!qword_1EA9C4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4A88);
  }

  return result;
}

uint64_t sub_18B4C27CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B4C2834(uint64_t a1)
{
  v2 = type metadata accessor for AVInfoTabMetadataStripView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_18B4C28A8@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  sub_18B6C480C();

  return sub_18B4BFD64(a1, a2);
}

unint64_t sub_18B4C2928()
{
  result = qword_1EA9C4AD0;
  if (!qword_1EA9C4AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4AC8);
    sub_18B4C263C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4AD0);
  }

  return result;
}

unint64_t sub_18B4C29D8()
{
  result = qword_1EA9C4AF8;
  if (!qword_1EA9C4AF8)
  {
    type metadata accessor for AVInfoTabMetadataStripView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4AF8);
  }

  return result;
}

uint64_t sub_18B4C2A30(void *a1)
{
  [a1 performWithSender:objc_msgSend(a1 target:{sel_sender), 0}];

  return swift_unknownObjectRelease();
}

__n128 sub_18B4C2A94@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4B50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4B38);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v18[-v12];
  v20 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4B58);
  sub_18B4C3F60();
  sub_18B6C52FC();
  sub_18B4A6268(&qword_1EA9C4B40, &qword_1EA9C4B38);
  sub_18B4C3EFC();
  sub_18B6C503C();
  (*(v10 + 8))(v13, v9);
  sub_18B6C54BC();
  sub_18B6C491C();
  (*(v5 + 32))(a2, v8, v4);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4B28) + 36);
  v15 = v26;
  *(v14 + 64) = v25;
  *(v14 + 80) = v15;
  *(v14 + 96) = v27;
  v16 = v22;
  *v14 = v21;
  *(v14 + 16) = v16;
  result = v24;
  *(v14 + 32) = v23;
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_18B4C2D64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 title];
  sub_18B6C562C();

  sub_18B4B2068();
  result = sub_18B6C500C();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

id sub_18B4C2DE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [a1 image];
  if (result)
  {
    v4 = result;
    sub_18B6C527C();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4718);
    MEMORY[0x1EEE9AC00](v5 - 8, v6);
    v8 = &v13 - v7;
    v9 = *MEMORY[0x1E6981690];
    v10 = sub_18B6C52CC();
    v11 = *(v10 - 8);
    (*(v11 + 104))(v8, v9, v10);
    (*(v11 + 56))(v8, 0, 1, v10);
    v12 = sub_18B6C52AC();

    result = sub_18B4A6454(v8, &qword_1EA9C4718);
  }

  else
  {
    v12 = 0;
  }

  *a2 = v12;
  return result;
}

uint64_t sub_18B4C2F68()
{
  v1 = *v0;
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4B28);
  sub_18B4C3E10();
  return sub_18B6C536C();
}

__n128 sub_18B4C301C@<Q0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4B68);
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v2);
  v39 = &v36 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4B70);
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v43 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4B78);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v36 - v9;
  v38 = v1;
  v44 = v1;
  sub_18B6C4E9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4B80);
  sub_18B4C3FD8();
  sub_18B6C469C();
  v11 = sub_18B6C4C5C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B6C4C4C();
  v16 = sub_18B6C4E9C();
  sub_18B6C4E8C();
  sub_18B6C4E8C();
  if (sub_18B6C4E8C() != v16)
  {
    sub_18B6C4E8C();
  }

  v17 = sub_18B4A6268(&qword_1EA9C4BB8, &qword_1EA9C4B78);
  sub_18B6C515C();
  (*(v12 + 8))(v15, v11);
  (*(v7 + 8))(v10, v6);
  v18 = sub_18B6C4D8C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B6C4C4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18B6E6E50;
  v24 = sub_18B6C4E9C();
  *(inited + 32) = v24;
  v25 = sub_18B6C4E7C();
  *(inited + 33) = v25;
  sub_18B6C4E8C();
  sub_18B6C4E8C();
  if (sub_18B6C4E8C() != v24)
  {
    sub_18B6C4E8C();
  }

  sub_18B6C4E8C();
  if (sub_18B6C4E8C() != v25)
  {
    sub_18B6C4E8C();
  }

  *&v46 = v6;
  *(&v46 + 1) = v17;
  swift_getOpaqueTypeConformance2();
  v26 = v39;
  v27 = v37;
  v28 = v43;
  sub_18B6C50DC();
  (*(v19 + 8))(v22, v18);
  (*(v36 + 8))(v28, v27);
  v29 = *(v38 + 48);
  v46 = *(v38 + 32);
  v47 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4BC8);
  MEMORY[0x18CFF6FE0](&v45, v30);
  sub_18B6C54BC();
  sub_18B6C491C();
  v31 = v42;
  (*(v40 + 32))(v42, v26, v41);
  v32 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4BD0) + 36);
  v33 = v51;
  *(v32 + 64) = v50;
  *(v32 + 80) = v33;
  *(v32 + 96) = v52;
  v34 = v47;
  *v32 = v46;
  *(v32 + 16) = v34;
  result = v49;
  *(v32 + 32) = v48;
  *(v32 + 48) = result;
  return result;
}

uint64_t sub_18B4C369C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v35 = a1[1];
  v36 = v4;
  sub_18B4C41CC(&v36, v34);
  sub_18B4C41CC(&v35, v34);
  sub_18B4B2068();
  v32 = sub_18B6C500C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v33[0] = v35;
  v11 = sub_18B6C500C();
  v13 = v12;
  v15 = v14;
  v16 = v8 & 1;
  v34[0] = v8 & 1;
  v18 = v17 & 1;
  v37 = v17 & 1;
  v19 = sub_18B6C4EBC();
  sub_18B6C466C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  LOBYTE(v33[0]) = 0;
  v28 = swift_allocObject();
  v29 = a1[1];
  v28[1] = *a1;
  v28[2] = v29;
  v30 = a1[3];
  v28[3] = a1[2];
  v28[4] = v30;
  *a2 = v32;
  *(a2 + 8) = v6;
  *(a2 + 16) = v16;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = v18;
  *(a2 + 56) = v15;
  *(a2 + 64) = v19;
  *(a2 + 72) = v21;
  *(a2 + 80) = v23;
  *(a2 + 88) = v25;
  *(a2 + 96) = v27;
  *(a2 + 104) = 0;
  *(a2 + 112) = sub_18B4C4228;
  *(a2 + 120) = v28;
  return sub_18B4C4230(a1, v33);
}

uint64_t sub_18B4C38AC@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_18B6C4D0C();
  v29 = *(v1 - 8);
  v2 = v29;
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v28 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B6C4D1C();
  v5 = sub_18B6C4D2C();
  v26 = *(v5 - 8);
  v6 = v26;
  v27 = v5;
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v9 = sub_18B6C4D3C();
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 16);
  v14 = v13(v12, v12, v1, v11);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v6 + 16);
  v19 = v27;
  v18(v17, v17, v27, v16);
  v20 = v30;
  (v13)(v30, v12, v1);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4BF8);
  (v18)(v20 + *(v21 + 48), v17, v19);
  v22 = *(v26 + 8);
  v22(v17, v19);
  v23 = *(v29 + 8);
  v23(v28, v1);
  v22(v17, v19);
  return (v23)(v12, v1);
}

uint64_t sub_18B4C3B30@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_18B6C4A8C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4BF0);
  return sub_18B4C38AC(a1 + *(v2 + 44));
}

uint64_t sub_18B4C3B88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C48B0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v15 - v6;
  sub_18B4A63EC(v2, &v15 - v6, &qword_1EA9C48B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_18B4B1DB4(v7, a1, &qword_1EA9C48A8);
  }

  sub_18B6C595C();
  v9 = sub_18B6C4E5C();
  sub_18B6C433C();

  v10 = sub_18B6C4A7C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v15 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B6C4A6C();
  swift_getAtKeyPath();

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_18B4C3D60(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18B4C3E10()
{
  result = qword_1EA9C4B30;
  if (!qword_1EA9C4B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4B28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4B38);
    sub_18B4A6268(&qword_1EA9C4B40, &qword_1EA9C4B38);
    sub_18B4C3EFC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4B30);
  }

  return result;
}

unint64_t sub_18B4C3EFC()
{
  result = qword_1EA9C4B48;
  if (!qword_1EA9C4B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4B48);
  }

  return result;
}

unint64_t sub_18B4C3F60()
{
  result = qword_1EA9C4B60;
  if (!qword_1EA9C4B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4B60);
  }

  return result;
}

unint64_t sub_18B4C3FD8()
{
  result = qword_1EA9C4B88;
  if (!qword_1EA9C4B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4B80);
    sub_18B4C4078();
    sub_18B4A6268(&qword_1EA9C47C8, &qword_1EA9C47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4B88);
  }

  return result;
}

unint64_t sub_18B4C4078()
{
  result = qword_1EA9C4B90;
  if (!qword_1EA9C4B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4B98);
    sub_18B4C40F8();
    sub_18B4BCD74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4B90);
  }

  return result;
}

unint64_t sub_18B4C40F8()
{
  result = qword_1EA9C4BA0;
  if (!qword_1EA9C4BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4BA8);
    sub_18B4C4178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4BA0);
  }

  return result;
}

unint64_t sub_18B4C4178()
{
  result = qword_1EA9C4BB0;
  if (!qword_1EA9C4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4BB0);
  }

  return result;
}

unint64_t sub_18B4C4278()
{
  result = qword_1EA9C4BE8;
  if (!qword_1EA9C4BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4BD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4B70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4B78);
    sub_18B4A6268(&qword_1EA9C4BB8, &qword_1EA9C4B78);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4BE8);
  }

  return result;
}

uint64_t sub_18B4C43A4()
{
  swift_getKeyPath();
  sub_18B4C7B30(&qword_1EA9C4C28, type metadata accessor for MultiviewTilesLayout);
  sub_18B6C421C();

  return sub_18B6C450C();
}

uint64_t sub_18B4C4448@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B4C7B30(&qword_1EA9C4C28, type metadata accessor for MultiviewTilesLayout);
  sub_18B6C421C();

  *a2 = *(v3 + 16);
  return sub_18B6C450C();
}

uint64_t sub_18B4C4520(uint64_t a1)
{
  v3 = sub_18B6C450C();
  v4 = sub_18B4F3D98(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_18B4C7B30(&qword_1EA9C4C28, type metadata accessor for MultiviewTilesLayout);
    sub_18B6C420C();
  }
}

uint64_t sub_18B4C4674()
{

  v1 = OBJC_IVAR____TtC5AVKit20MultiviewTilesLayout___observationRegistrar;
  v2 = sub_18B6C425C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MultiviewTilesLayout()
{
  result = qword_1EA9C4C18;
  if (!qword_1EA9C4C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18B4C476C()
{
  result = sub_18B6C425C();
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

double sub_18B4C480C()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = [objc_opt_self() mainScreen];
  [v5 bounds];
  v7 = v6;

  v8 = 2.0;
  if (v1)
  {
    v8 = 2.5;
  }

  v9 = v7 / v8;
  v10 = 16.0;
  if (v1)
  {
    v10 = 24.0;
  }

  v11 = (v9 - v10) * 0.7;
  if ((v4 | v2))
  {
    v11 = v9;
  }

  if (v4 == 1)
  {
    v12 = 0.0;
    if ((v2 - 2) <= 2)
    {
      v12 = dbl_18B6E8010[v2 - 2];
    }

    v11 = v11 * (1.0 - (v3 * v12 + 1.0 + -1.0));
  }

  return v11 * 1.77777778;
}

double sub_18B4C490C()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if ((v1 & (v2 == 4)) != 0)
  {
    v5 = 3.0;
  }

  else
  {
    v5 = 2.0;
  }

  v6 = [objc_opt_self() mainScreen];
  [v6 bounds];
  v8 = v7;

  v9 = 16.0;
  if (v1)
  {
    v9 = 24.0;
  }

  v10 = 2.5;
  if (!v1)
  {
    v10 = 2.0;
  }

  v11 = v8 / (v10 * v5) + v9 / (-4.5 / v5);
  if (v4 == 1)
  {
    v12 = 0.0;
    if ((v2 - 2) <= 2)
    {
      v12 = dbl_18B6E8010[v2 - 2];
    }

    v11 = v11 * (v3 * v12 + 1.0 + -1.0 + 1.0);
  }

  return v11 * 1.77777778;
}

uint64_t (*sub_18B4C4AC8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18B6C464C();
  return sub_18B4C4B50;
}

uint64_t (*sub_18B4C4B60(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18B6C464C();
  return sub_18B4C7C60;
}

uint64_t (*sub_18B4C4BF4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18B6C464C();
  return sub_18B4C7C60;
}

uint64_t (*sub_18B4C4CC8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18B6C464C();
  return sub_18B4C7C60;
}

void sub_18B4C4D50(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_18B4C4D98()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
  sub_18B6C450C();
}

unint64_t sub_18B4C4DE8()
{
  result = qword_1EA9C4C30;
  if (!qword_1EA9C4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4C30);
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_18B4C4E9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18B4C4EE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18B4C4F40()
{
  result = qword_1EA9C4C38;
  if (!qword_1EA9C4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4C38);
  }

  return result;
}

unint64_t sub_18B4C4F8C()
{
  result = qword_1EA9C4C40;
  if (!qword_1EA9C4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4C40);
  }

  return result;
}

unint64_t sub_18B4C4FE4()
{
  result = qword_1EA9C4C48;
  if (!qword_1EA9C4C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4C48);
  }

  return result;
}

unint64_t sub_18B4C503C()
{
  result = qword_1EA9C4C50;
  if (!qword_1EA9C4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4C50);
  }

  return result;
}

unint64_t sub_18B4C5094()
{
  result = qword_1EA9C4C58;
  if (!qword_1EA9C4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4C58);
  }

  return result;
}

uint64_t sub_18B4C50E8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v4 + 1);
  v12 = *(v4 + 2);
  v13 = v4[24];
  sub_18B6C487C();
  sub_18B4C7AE4();
  sub_18B6C590C();
  result = sub_18B6C592C();
  if (v27 != v31)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v15 = [objc_opt_self() mainScreen];
        [v15 bounds];
      }

      else
      {
        LOBYTE(v27) = 2;
        BYTE1(v27) = v10;
        v28 = v11;
        v29 = v12;
        v30 = v13;
        sub_18B4C480C();
        v34.origin.x = a1;
        v34.origin.y = a2;
        v34.size.width = a3;
        v34.size.height = a4;
        CGRectGetMidX(v34);
        v35.origin.x = a1;
        v35.origin.y = a2;
        v35.size.width = a3;
        v35.size.height = a4;
        CGRectGetMidY(v35);
      }
    }

    else
    {
      if (qword_1EA9C3E38 != -1)
      {
        swift_once();
      }

      v16 = *(qword_1EA9CE408 + 16);
      swift_getKeyPath();
      v27 = v16;
      sub_18B4C7B30(&qword_1EA9C4C70, type metadata accessor for AVMultiviewWindowManager.TransitionConfiguration);

      sub_18B6C421C();

      v17 = v16[3];
      v18 = v16[4];
      v19 = v16[5];
      v20 = v16[6];

      v32.origin.x = v17;
      v32.origin.y = v18;
      v32.size.width = v19;
      v32.size.height = v20;
      CGRectGetMinX(v32);
      v33.origin.x = v17;
      v33.origin.y = v18;
      v33.size.width = v19;
      v33.size.height = v20;
      CGRectGetMinY(v33);
    }

    v21 = sub_18B6C482C();
    v22 = *(v21 - 8);
    MEMORY[0x1EEE9AC00](v21, v23);
    v25 = &v26 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_18B6C488C();
    sub_18B6C551C();
    LOBYTE(v27) = 0;
    LOBYTE(v31) = 0;
    sub_18B6C481C();
    return (*(v22 + 8))(v25, v21);
  }

  return result;
}

uint64_t sub_18B4C5448(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v95 = a5;
  v10 = *v5;
  v11 = v5[1];
  v12 = *(v5 + 1);
  v13 = *(v5 + 2);
  v14 = v5[24];
  v15 = *(v5 + 4);
  v92 = *(v5 + 5);
  v93 = v15;
  v91 = *(v5 + 6);
  v16 = sub_18B6C487C();
  v17 = sub_18B4C7AE4();
  sub_18B6C590C();
  v94 = a1;
  result = sub_18B6C592C();
  if (v97 != v101[0])
  {
    v77 = sub_18B4C480C();
    v81 = v19;
    v86 = sub_18B4C490C();
    v87 = v20;
    v102.origin.x = a2;
    v102.origin.y = a3;
    v102.size.width = a4;
    v102.size.height = v95;
    MidX = CGRectGetMidX(v102);
    v90 = sub_18B4C480C();
    LOBYTE(v97) = v10;
    BYTE1(v97) = v11;
    v98 = v12;
    v99 = v13;
    v100 = v14;
    v21 = sub_18B4C490C();
    if (v11)
    {
      v22 = 24.0;
    }

    else
    {
      v22 = 16.0;
    }

    v103.origin.x = a2;
    v103.origin.y = a3;
    v103.size.width = a4;
    v103.size.height = v95;
    MidY = CGRectGetMidY(v103);
    LOBYTE(v97) = v10;
    BYTE1(v97) = v11;
    v98 = v12;
    v78 = v13;
    v99 = v13;
    v100 = v14;
    sub_18B4C480C();
    v79 = a3;
    v85 = v10;
    v84 = v11;
    v83 = v12;
    v76[2] = v16;
    v76[1] = v17;
    if (v14)
    {
      v25 = MidX - v90 * 0.5 - v21 * 0.5;
      v90 = v22 * 0.5;
      v26 = v25 - v22 * 0.5;
      v27 = a2;
      v28 = v77;
      v29 = v81;
    }

    else
    {
      v104.origin.x = a2;
      v104.origin.y = a3;
      v104.size.width = a4;
      v104.size.height = v95;
      v90 = v22 * 0.5;
      v26 = CGRectGetMidX(v104) - v77 - v22 * 0.5;
      v105.origin.x = a2;
      v105.origin.y = a3;
      v105.size.width = a4;
      v105.size.height = v95;
      MidY = CGRectGetMidY(v105);
      v29 = v81;
      v24 = v81;
      v27 = a2;
      v28 = v77;
    }

    MidX = MidY - v24 * 0.5;
    v98 = v92;
    v99 = v91;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4C68);
    MEMORY[0x18CFF6FE0](v101);
    v30 = v101[0];
    v31 = &unk_18B6E7A98;
    swift_getKeyPath();
    sub_18B4C7B30(&qword_1EA9C4C28, type metadata accessor for MultiviewTilesLayout);
    sub_18B6C421C();

    swift_getKeyPath();
    sub_18B6C423C();

    *(v30 + 16) = MEMORY[0x1E69E7CC0];

    v97 = v30;
    swift_getKeyPath();
    sub_18B6C422C();

    v32 = 0;
    v33 = 0;
    v82 = v87 * 0.5;
    v34 = v79;
    v35 = v78;
    v88 = v14;
    do
    {
      v42 = v32;
      v97 = v93;
      v98 = v92;
      v99 = v91;
      MEMORY[0x18CFF6FE0](v101, v89);
      v43 = v101[0];
      swift_getKeyPath();
      v97 = v43;
      sub_18B6C421C();

      v97 = v43;
      swift_getKeyPath();
      sub_18B6C423C();

      v44 = *(v43 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v43 + 16) = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v44 = sub_18B53BF10(0, *(v44 + 2) + 1, 1, v44);
        *(v43 + 16) = v44;
      }

      v47 = *(v44 + 2);
      v46 = *(v44 + 3);
      if (v47 >= v46 >> 1)
      {
        v44 = sub_18B53BF10((v46 > 1), v47 + 1, 1, v44);
      }

      *(v44 + 2) = v47 + 1;
      v48 = &v44[32 * v47];
      v49 = MidX;
      *(v48 + 4) = v26;
      *(v48 + 5) = v49;
      *(v48 + 6) = v28;
      *(v48 + 7) = v29;
      *(v43 + 16) = v44;
      v97 = v43;
      v50 = v31;
      swift_getKeyPath();
      sub_18B6C422C();

      if (qword_1EA9C3E38 != -1)
      {
        swift_once();
      }

      v51 = *(qword_1EA9CE408 + 16);
      swift_getKeyPath();
      v97 = v51;
      sub_18B4C7B30(&qword_1EA9C4C70, type metadata accessor for AVMultiviewWindowManager.TransitionConfiguration);

      sub_18B6C421C();

      if (*(v51 + 64) == v33 && (swift_getKeyPath(), v97 = v51, sub_18B6C421C(), , !*(v51 + 16)))
      {
        swift_getKeyPath();
        v97 = v51;
        sub_18B6C421C();

        v61 = v27;
        v62 = *(v51 + 24);
        v63 = *(v51 + 32);
        v80 = v28;
        v81 = v29;
        v64 = *(v51 + 40);
        v65 = *(v51 + 48);
        v66 = sub_18B6C482C();
        v67 = *(v66 - 8);
        MEMORY[0x1EEE9AC00](v66, v68);
        v70 = v76 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_18B6C488C();
        v108.origin.x = v62;
        v108.origin.y = v63;
        v108.size.width = v64;
        v108.size.height = v65;
        CGRectGetMinX(v108);
        v109.origin.x = v62;
        v109.origin.y = v63;
        v27 = v61;
        v35 = v78;
        v109.size.width = v64;
        v109.size.height = v65;
        CGRectGetMinY(v109);
        v28 = v80;
        v29 = v81;
        sub_18B6C551C();
        LOBYTE(v97) = 0;
        LOBYTE(v101[0]) = 0;
        v34 = v79;
        sub_18B6C481C();
        (*(v67 + 8))(v70, v66);
      }

      else
      {
        swift_getKeyPath();
        v97 = v51;
        sub_18B6C421C();

        if (*(v51 + 72) == v33 && (swift_getKeyPath(), v97 = v51, sub_18B6C421C(), , *(v51 + 16) == 1))
        {
          v52 = [objc_opt_self() mainScreen];
          [v52 bounds];

          v53 = sub_18B6C482C();
          v54 = *(v53 - 8);
          MEMORY[0x1EEE9AC00](v53, v55);
          v57 = v76 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_18B6C488C();
          sub_18B6C551C();
          LOBYTE(v97) = 0;
          LOBYTE(v101[0]) = 0;
        }

        else
        {
          v53 = sub_18B6C482C();
          v54 = *(v53 - 8);
          MEMORY[0x1EEE9AC00](v53, v58);
          v57 = v76 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_18B6C488C();
          sub_18B6C551C();
          LOBYTE(v97) = 0;
          LOBYTE(v101[0]) = 0;
        }

        sub_18B6C481C();
        (*(v54 + 8))(v57, v53);
      }

      v107.origin.x = v27;
      v107.origin.y = v34;
      v107.size.width = a4;
      v107.size.height = v95;
      v40 = CGRectGetMidX(v107);
      v31 = v50;
      v60 = v88;
      if (v88)
      {
        v36 = v85;
        LOBYTE(v97) = v85;
        v37 = v84;
        BYTE1(v97) = v84;
        v38 = v83;
        v98 = v83;
        v99 = v35;
        v100 = v88;
        v39 = sub_18B4C480C();
        LOBYTE(v97) = v36;
        BYTE1(v97) = v37;
        v98 = v38;
        v99 = v35;
        v100 = v60;
        v40 = v40 + v39 * 0.5 - sub_18B4C490C() * 0.5;
        v106.origin.x = v27;
        v106.origin.y = v34;
        v106.size.width = a4;
        v106.size.height = v95;
        v41 = CGRectGetMidY(v106);

        MidX = v41 - v82;
        v28 = v86;
        v29 = v87;
      }

      else
      {
      }

      v26 = v90 + v40;
      v32 = 1;
      v33 = 1;
    }

    while ((v42 & 1) == 0);
    sub_18B6C590C();
    sub_18B6C592C();
    result = sub_18B6C591C();
    if (result == 3)
    {
      v110.origin.x = v27;
      v110.origin.y = v34;
      v110.size.width = a4;
      v110.size.height = v95;
      CGRectGetMidX(v110);
      v111.origin.x = v27;
      v111.origin.y = v34;
      v111.size.width = a4;
      v111.size.height = v95;
      CGRectGetMidY(v111);
      v71 = sub_18B6C482C();
      v72 = *(v71 - 8);
      MEMORY[0x1EEE9AC00](v71, v73);
      v75 = v76 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_18B6C488C();
      sub_18B6C552C();
      LOBYTE(v97) = 0;
      LOBYTE(v101[0]) = 0;
      sub_18B6C481C();
      return (*(v72 + 8))(v75, v71);
    }
  }

  return result;
}

uint64_t sub_18B4C61AC(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v102 = a5;
  v10 = *v5;
  v11 = *(v5 + 1);
  v12 = v5[1];
  v13 = *(v5 + 2);
  v14 = *(v5 + 24);
  v15 = *(v5 + 4);
  v89 = v5[5];
  v16 = *(v5 + 6);
  v17 = sub_18B6C487C();
  v18 = sub_18B4C7AE4();
  sub_18B6C590C();
  result = sub_18B6C592C();
  if (v103 != v107[0])
  {
    v86[1] = v18;
    v86[2] = v17;
    v87 = sub_18B4C480C();
    v21 = v20;
    v101 = sub_18B4C490C();
    v97 = v22;
    v108.origin.x = a2;
    v108.origin.y = a3;
    v108.size.width = a4;
    v108.size.height = v102;
    MidX = CGRectGetMidX(v108);
    v88 = a2;
    v24 = sub_18B4C480C();
    LOBYTE(v103) = v10;
    BYTE1(v103) = v11;
    v104 = v12;
    v105 = v13;
    v106 = v14;
    v25 = sub_18B4C490C();
    v26 = v24 * 0.5;
    v27 = a2;
    v28 = MidX - v26 - v25 * 0.5;
    v29 = 8.0;
    if (v11)
    {
      v29 = 12.0;
    }

    v96 = v29;
    v30 = v28 - v29;
    v109.origin.x = v27;
    v109.origin.y = a3;
    v109.size.width = a4;
    v109.size.height = v102;
    MidY = CGRectGetMidY(v109);
    v94 = v10;
    v93 = v11;
    v92 = v12;
    v91 = v13;
    v32 = v30;
    v90 = v14;
    v106 = v14;
    sub_18B4C480C();
    v34 = MidY - v33 * 0.5;
    v99 = v15;
    v35 = v89;
    v104 = v89;
    v98 = v16;
    v105 = v16;
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4C68);
    MEMORY[0x18CFF6FE0](v107);
    v36 = v107[0];
    swift_getKeyPath();
    sub_18B4C7B30(&qword_1EA9C4C28, type metadata accessor for MultiviewTilesLayout);
    sub_18B6C421C();

    swift_getKeyPath();
    sub_18B6C423C();

    *(v36 + 16) = MEMORY[0x1E69E7CC0];

    v103 = v36;
    swift_getKeyPath();
    sub_18B6C422C();

    v37 = 0;
    v38 = v87;
    v100 = a1;
    v39 = v35;
    do
    {
      v103 = v99;
      v104 = v39;
      v42 = v39;
      v105 = v98;
      MEMORY[0x18CFF6FE0](v107, v95);
      v43 = v107[0];
      swift_getKeyPath();
      v103 = v43;
      sub_18B6C421C();

      v103 = v43;
      swift_getKeyPath();
      sub_18B6C423C();

      v44 = *(v43 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v43 + 16) = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v44 = sub_18B53BF10(0, *(v44 + 2) + 1, 1, v44);
        *(v43 + 16) = v44;
      }

      v47 = *(v44 + 2);
      v46 = *(v44 + 3);
      if (v47 >= v46 >> 1)
      {
        v44 = sub_18B53BF10((v46 > 1), v47 + 1, 1, v44);
      }

      *(v44 + 2) = v47 + 1;
      v48 = &v44[32 * v47];
      *(v48 + 4) = v32;
      *(v48 + 5) = v34;
      *(v48 + 6) = v38;
      *(v48 + 7) = v21;
      *(v43 + 16) = v44;
      v103 = v43;
      swift_getKeyPath();
      sub_18B6C422C();

      if (qword_1EA9C3E38 != -1)
      {
        swift_once();
      }

      v49 = *(qword_1EA9CE408 + 16);
      swift_getKeyPath();
      v103 = v49;
      sub_18B4C7B30(&qword_1EA9C4C70, type metadata accessor for AVMultiviewWindowManager.TransitionConfiguration);

      sub_18B6C421C();

      if (v37 == *(v49 + 64) && (swift_getKeyPath(), v103 = v49, sub_18B6C421C(), , !*(v49 + 16)))
      {
        swift_getKeyPath();
        v103 = v49;
        sub_18B6C421C();

        v58 = *(v49 + 24);
        v59 = *(v49 + 32);
        v89 = v32;
        v60 = *(v49 + 40);
        v61 = *(v49 + 48);
        v51 = sub_18B6C482C();
        v52 = *(v51 - 8);
        MEMORY[0x1EEE9AC00](v51, v62);
        v55 = v86 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_18B6C488C();
        v110.origin.x = v58;
        v110.origin.y = v59;
        v110.size.width = v60;
        v110.size.height = v61;
        CGRectGetMinX(v110);
        v111.origin.x = v58;
        v111.origin.y = v59;
        v111.size.width = v60;
        v111.size.height = v61;
        CGRectGetMinY(v111);
        v32 = v89;
        sub_18B6C551C();
        LOBYTE(v103) = 0;
        LOBYTE(v107[0]) = 0;
        v27 = v88;
      }

      else
      {
        swift_getKeyPath();
        v103 = v49;
        sub_18B6C421C();

        if (v37 == *(v49 + 72) && (swift_getKeyPath(), v103 = v49, sub_18B6C421C(), , *(v49 + 16) == 1))
        {
          v50 = [objc_opt_self() mainScreen];
          [v50 bounds];

          v51 = sub_18B6C482C();
          v52 = *(v51 - 8);
          MEMORY[0x1EEE9AC00](v51, v53);
          v55 = v86 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_18B6C488C();
          sub_18B6C551C();
          LOBYTE(v103) = 0;
          LOBYTE(v107[0]) = 0;
        }

        else
        {
          v51 = sub_18B6C482C();
          v52 = *(v51 - 8);
          MEMORY[0x1EEE9AC00](v51, v56);
          v55 = v86 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_18B6C488C();
          sub_18B6C551C();
          LOBYTE(v103) = 0;
          LOBYTE(v107[0]) = 0;
        }
      }

      sub_18B6C481C();
      (*(v52 + 8))(v55, v51);
      v64 = v27;
      v65 = a3;
      v66 = a4;
      if (v37)
      {
        v40 = v102;
        v41 = CGRectGetMidY(*&v64);

        v21 = v97;
        v34 = v96 + v41;
      }

      else
      {
        v67 = v102;
        v68 = v102;
        v69 = CGRectGetMidX(*&v64);
        v70 = v94;
        LOBYTE(v103) = v94;
        v71 = v93;
        BYTE1(v103) = v93;
        v72 = v92;
        v104 = v92;
        v73 = v91;
        v105 = v91;
        v74 = v90;
        v106 = v90;
        v75 = sub_18B4C480C();
        LOBYTE(v103) = v70;
        BYTE1(v103) = v71;
        v104 = v72;
        v105 = v73;
        v106 = v74;
        v76 = v69 + v75 * 0.5 - sub_18B4C490C() * 0.5;
        v77 = v96;
        v78 = v96 + v76;
        v112.origin.x = v27;
        v112.origin.y = a3;
        v112.size.width = a4;
        v112.size.height = v67;
        v79 = CGRectGetMidY(v112);

        v21 = v97;
        v34 = v79 - v97 - v77;
        v32 = v78;
      }

      ++v37;
      v38 = v101;
      v39 = v42;
    }

    while (v37 != 3);
    sub_18B6C590C();
    sub_18B6C592C();
    result = sub_18B6C591C();
    if (result == 4)
    {
      v113.origin.x = v27;
      v113.origin.y = a3;
      v113.size.width = a4;
      v80 = v102;
      v113.size.height = v102;
      CGRectGetMidX(v113);
      v114.origin.x = v27;
      v114.origin.y = a3;
      v114.size.width = a4;
      v114.size.height = v80;
      CGRectGetMidY(v114);
      v81 = sub_18B6C482C();
      v82 = *(v81 - 8);
      MEMORY[0x1EEE9AC00](v81, v83);
      v85 = v86 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_18B6C488C();
      sub_18B6C552C();
      LOBYTE(v103) = 0;
      LOBYTE(v107[0]) = 0;
      sub_18B6C481C();
      return (*(v82 + 8))(v85, v81);
    }
  }

  return result;
}

uint64_t sub_18B4C6D5C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v99 = a2;
  v10 = *v5;
  v11 = v5[1];
  v12 = *(v5 + 1);
  v13 = *(v5 + 2);
  v14 = v5[24];
  v15 = *(v5 + 4);
  v97 = *(v5 + 5);
  v98 = v15;
  v96 = *(v5 + 6);
  v16 = sub_18B6C487C();
  v17 = sub_18B4C7AE4();
  sub_18B6C590C();
  result = sub_18B6C592C();
  if (v101 != v105[0])
  {
    v100 = sub_18B4C480C();
    v94 = v19;
    v90 = sub_18B4C490C();
    v91 = v20;
    v106.origin.x = v99;
    v106.origin.y = a3;
    v106.size.width = a4;
    v106.size.height = a5;
    MidX = CGRectGetMidX(v106);
    v21 = sub_18B4C480C();
    LOBYTE(v101) = v10;
    BYTE1(v101) = v11;
    v102 = v12;
    v103 = v13;
    v104 = v14;
    v22 = sub_18B4C490C();
    if (v11)
    {
      v23 = 24.0;
    }

    else
    {
      v23 = 16.0;
    }

    v107.origin.x = v99;
    v107.origin.y = a3;
    v107.size.width = a4;
    v107.size.height = a5;
    MidY = CGRectGetMidY(v107);
    LOBYTE(v101) = v10;
    BYTE1(v101) = v11;
    v102 = v12;
    v83 = v13;
    v103 = v13;
    v104 = v14;
    sub_18B4C480C();
    v86 = v10;
    v85 = v11;
    v84 = v12;
    v79 = v16;
    v78 = v17;
    v95 = a4;
    if (v14)
    {
      v92 = v23 * 0.5;
      v88 = MidX - v21 * 0.5 - v22 * 0.5 - v23 * 0.5;
      v89 = MidY - v25 * 0.5;
      v26 = a5;
      v27 = a3;
      v28 = v100;
      v29 = v94;
    }

    else
    {
      v108.origin.x = v99;
      v108.origin.y = a3;
      v108.size.width = a4;
      v108.size.height = a5;
      v88 = CGRectGetMidX(v108) - v100 - v23 * 0.5;
      v109.origin.x = v99;
      v109.origin.y = a3;
      v109.size.width = a4;
      v109.size.height = a5;
      v29 = v94;
      v92 = v23 * 0.5;
      v89 = CGRectGetMidY(v109) - v94 - v23 * 0.5;
      v26 = a5;
      v27 = a3;
      v28 = v100;
    }

    v82 = v23;
    v102 = v97;
    v103 = v96;
    MidX = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4C68));
    MEMORY[0x18CFF6FE0](v105);
    v30 = v105[0];
    swift_getKeyPath();
    sub_18B4C7B30(&qword_1EA9C4C28, type metadata accessor for MultiviewTilesLayout);
    sub_18B6C421C();

    swift_getKeyPath();
    sub_18B6C423C();

    *(v30 + 16) = MEMORY[0x1E69E7CC0];

    v101 = v30;
    swift_getKeyPath();
    sub_18B6C422C();

    v31 = 0;
    v87 = v23 + v91;
    v80 = v91 * 1.5;
    v32 = v28;
    v94 = *&a1;
    v33 = v89;
    v34 = v88;
    v81 = v27;
    do
    {
      v101 = v98;
      v102 = v97;
      v103 = v96;
      MEMORY[0x18CFF6FE0](v105, *&MidX);
      v35 = v105[0];
      swift_getKeyPath();
      v101 = v35;
      sub_18B6C421C();

      v101 = v35;
      swift_getKeyPath();
      sub_18B6C423C();

      v36 = *(v35 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v35 + 16) = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = sub_18B53BF10(0, *(v36 + 2) + 1, 1, v36);
        *(v35 + 16) = v36;
      }

      v39 = *(v36 + 2);
      v38 = *(v36 + 3);
      if (v39 >= v38 >> 1)
      {
        v36 = sub_18B53BF10((v38 > 1), v39 + 1, 1, v36);
      }

      v40 = v14;
      *(v36 + 2) = v39 + 1;
      v41 = &v36[32 * v39];
      v41[4] = v34;
      v41[5] = v33;
      v41[6] = v32;
      v41[7] = v29;
      *(v35 + 16) = v36;
      v101 = v35;
      swift_getKeyPath();
      sub_18B6C422C();

      if (qword_1EA9C3E38 != -1)
      {
        swift_once();
      }

      v42 = *(qword_1EA9CE408 + 16);
      swift_getKeyPath();
      v101 = v42;
      sub_18B4C7B30(&qword_1EA9C4C70, type metadata accessor for AVMultiviewWindowManager.TransitionConfiguration);

      sub_18B6C421C();

      if (v31 == *(v42 + 64) && (swift_getKeyPath(), v101 = v42, sub_18B6C421C(), , !*(v42 + 16)))
      {
        swift_getKeyPath();
        v101 = v42;
        sub_18B6C421C();

        v88 = v34;
        v62 = *(v42 + 24);
        v61 = *(v42 + 32);
        v89 = v33;
        v63 = *(v42 + 40);
        v64 = *(v42 + 48);
        v44 = sub_18B6C482C();
        v45 = *(v44 - 8);
        MEMORY[0x1EEE9AC00](v44, v65);
        v48 = &v78 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_18B6C488C();
        v112.origin.x = v62;
        v112.origin.y = v61;
        v112.size.width = v63;
        v112.size.height = v64;
        CGRectGetMinX(v112);
        v113.origin.x = v62;
        v27 = v81;
        v113.origin.y = v61;
        v113.size.width = v63;
        v113.size.height = v64;
        CGRectGetMinY(v113);
        v33 = v89;
        sub_18B6C551C();
        LOBYTE(v101) = 0;
        LOBYTE(v105[0]) = 0;
        v34 = v88;
      }

      else
      {
        swift_getKeyPath();
        v101 = v42;
        sub_18B6C421C();

        if (v31 == *(v42 + 72) && (swift_getKeyPath(), v101 = v42, sub_18B6C421C(), , *(v42 + 16) == 1))
        {
          v43 = [objc_opt_self() mainScreen];
          [v43 bounds];

          v44 = sub_18B6C482C();
          v45 = *(v44 - 8);
          MEMORY[0x1EEE9AC00](v44, v46);
          v48 = &v78 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_18B6C488C();
          sub_18B6C551C();
          LOBYTE(v101) = 0;
          LOBYTE(v105[0]) = 0;
        }

        else
        {
          v44 = sub_18B6C482C();
          v45 = *(v44 - 8);
          MEMORY[0x1EEE9AC00](v44, v49);
          v48 = &v78 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_18B6C488C();
          sub_18B6C551C();
          LOBYTE(v101) = 0;
          LOBYTE(v105[0]) = 0;
        }
      }

      sub_18B6C481C();
      (*(v45 + 8))(v48, v44);
      v14 = v40;
      if (v40)
      {
        if (v31)
        {

          v33 = v87 + v33;
        }

        else
        {
          v51 = v99;
          v110.origin.x = v99;
          v110.origin.y = v27;
          v52 = v95;
          v110.size.width = v95;
          v110.size.height = v26;
          v53 = CGRectGetMidX(v110);
          v54 = v86;
          LOBYTE(v101) = v86;
          v55 = v85;
          BYTE1(v101) = v85;
          v56 = v84;
          v102 = v84;
          v57 = v83;
          v103 = v83;
          v104 = v40;
          v58 = sub_18B4C480C();
          LOBYTE(v101) = v54;
          BYTE1(v101) = v55;
          v102 = v56;
          v103 = v57;
          v104 = v40;
          v59 = sub_18B4C490C();
          v111.origin.x = v51;
          v111.origin.y = v27;
          v111.size.width = v52;
          v111.size.height = v26;
          v60 = CGRectGetMidY(v111);

          v34 = v92 + v53 + v58 * 0.5 - v59 * 0.5;
          v33 = v60 - v80 - v82;
        }

        v32 = v90;
        v29 = v91;
      }

      else
      {
        v114.origin.x = v99;
        v114.origin.y = v27;
        v114.size.width = v95;
        v114.size.height = v26;
        v67 = CGRectGetMidX(v114);
        if (v31 == 2)
        {
          v116.origin.x = v99;
          v116.origin.y = v27;
          v116.size.width = v95;
          v116.size.height = v26;
          v70 = CGRectGetMidX(v116);

          v34 = v70 - v32 - v92;
        }

        else
        {
          v34 = v92 + v67;
          if (v31 == 1)
          {
            v115.origin.x = v99;
            v115.origin.y = v27;
            v115.size.width = v95;
            v115.size.height = v26;
            v68 = v34;
            v69 = CGRectGetMidY(v115);

            v33 = v92 + v69;
            v34 = v68;
          }

          else
          {
          }
        }
      }

      ++v31;
    }

    while (v31 != 4);
    sub_18B6C590C();
    sub_18B6C592C();
    result = sub_18B6C591C();
    if (result == 5)
    {
      v71 = v99;
      v117.origin.x = v99;
      v117.origin.y = v27;
      v72 = v95;
      v117.size.width = v95;
      v117.size.height = v26;
      CGRectGetMidX(v117);
      v118.origin.x = v71;
      v118.origin.y = v27;
      v118.size.width = v72;
      v118.size.height = v26;
      CGRectGetMidY(v118);
      v73 = sub_18B6C482C();
      v74 = *(v73 - 8);
      MEMORY[0x1EEE9AC00](v73, v75);
      v77 = &v78 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_18B6C488C();
      sub_18B6C552C();
      LOBYTE(v101) = 0;
      LOBYTE(v105[0]) = 0;
      sub_18B6C481C();
      return (*(v74 + 8))(v77, v73);
    }
  }

  return result;
}

unint64_t sub_18B4C7AE4()
{
  result = qword_1EA9C4C60;
  if (!qword_1EA9C4C60)
  {
    sub_18B6C487C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4C60);
  }

  return result;
}

uint64_t sub_18B4C7B30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B4C7B78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18B4C7BCC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_18B4C7C70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4C78);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (v19 - v6);
  *v7 = sub_18B6C54BC();
  v7[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4C80);
  sub_18B4C7E9C(v1, (v7 + *(v9 + 44)));
  v19[0] = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4C88);
  sub_18B6C532C();
  type metadata accessor for MultiviewTilesLayout();
  sub_18B4A6268(&qword_1EA9C4C90, &qword_1EA9C4C78);
  sub_18B4CB93C(&qword_1EA9C4C28, type metadata accessor for MultiviewTilesLayout);
  sub_18B6C506C();

  sub_18B4A6454(v7, &qword_1EA9C4C78);
  v10 = swift_allocObject();
  v11 = *(v2 + 176);
  *(v10 + 176) = *(v2 + 160);
  *(v10 + 192) = v11;
  *(v10 + 208) = *(v2 + 192);
  v12 = *(v2 + 112);
  *(v10 + 112) = *(v2 + 96);
  *(v10 + 128) = v12;
  v13 = *(v2 + 144);
  *(v10 + 144) = *(v2 + 128);
  *(v10 + 160) = v13;
  v14 = *(v2 + 48);
  *(v10 + 48) = *(v2 + 32);
  *(v10 + 64) = v14;
  v15 = *(v2 + 80);
  *(v10 + 80) = *(v2 + 64);
  *(v10 + 96) = v15;
  v16 = *(v2 + 16);
  *(v10 + 16) = *v2;
  *(v10 + 32) = v16;
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4C98) + 36));
  *v17 = sub_18B4CB8E0;
  v17[1] = v10;
  v17[2] = 0;
  v17[3] = 0;
  return sub_18B4CB8E8(v2, v19);
}

uint64_t sub_18B4C7E9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v17 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4CA0);
  sub_18B6C532C();
  swift_getKeyPath();
  *&v17 = v20;
  sub_18B4CB93C(&qword_1EA9C4C70, type metadata accessor for AVMultiviewWindowManager.TransitionConfiguration);
  sub_18B6C421C();

  v4 = *(v20 + 16);

  v23 = *(a1 + 24);
  v5 = *(a1 + 16);
  v22 = v5;

  if ((v23 & 1) == 0)
  {
    sub_18B6C595C();
    v6 = sub_18B6C4E5C();
    sub_18B6C433C();

    v7 = sub_18B6C4A7C();
    v8 = *(v7 - 8);
    MEMORY[0x1EEE9AC00](v7, v9);
    v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_18B6C4A6C();
    swift_getAtKeyPath();
    sub_18B4A6454(&v22, &qword_1EA9C41D8);
    (*(v8 + 8))(v11, v7);
    v5 = v17;
  }

  swift_getKeyPath();
  *&v17 = v5;
  sub_18B4CB93C(&qword_1EA9C3ED8, type metadata accessor for MultiviewContentSelectorManager);
  sub_18B6C421C();

  v12 = *(v5 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_18B6C461C();

  v13 = *(v17 + 16);

  v20 = *(a1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4CA8);
  sub_18B6C532C();
  v20 = *(a1 + 88);
  v21 = *(a1 + 104);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4CB0);
  MEMORY[0x18CFF6FE0](&v19, v14);
  LOBYTE(v17) = v4;
  BYTE1(v17) = v12;
  *(&v17 + 1) = v13;
  v18 = v19;
  *a2 = sub_18B4C8230(&v17);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4CB8) + 44);

  sub_18B4C841C(a1, a2 + v15);
}

uint64_t sub_18B4C8230(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4C88);
      sub_18B6C534C();
      sub_18B4CC990();
      return sub_18B6C550C();
    }

    if (v1 == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4C88);
      sub_18B6C534C();
      sub_18B4CC93C();
      return sub_18B6C550C();
    }

LABEL_8:
    sub_18B6C4AFC();
    sub_18B4CC8F4();
    return sub_18B6C550C();
  }

  if (v1 == 1)
  {
    sub_18B4CCA38();
    return sub_18B6C550C();
  }

  if (v1 != 2)
  {
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4C88);
  sub_18B6C534C();
  sub_18B4CC9E4();
  return sub_18B6C550C();
}

uint64_t sub_18B4C841C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4CC0);
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v46 = v5;
  v6 = (&v44 - v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18B6C461C();

  v7 = sub_18B4CB2BC(v58);

  *&v78 = v7;
  swift_getKeyPath();
  v8 = swift_allocObject();
  v9 = *(a1 + 176);
  *(v8 + 176) = *(a1 + 160);
  *(v8 + 192) = v9;
  *(v8 + 208) = *(a1 + 192);
  v10 = *(a1 + 112);
  *(v8 + 112) = *(a1 + 96);
  *(v8 + 128) = v10;
  v11 = *(a1 + 144);
  *(v8 + 144) = *(a1 + 128);
  *(v8 + 160) = v11;
  v12 = *(a1 + 48);
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 64) = v12;
  v13 = *(a1 + 80);
  *(v8 + 80) = *(a1 + 64);
  *(v8 + 96) = v13;
  v14 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_18B4CB984;
  *(v15 + 24) = v8;
  sub_18B4CB8E8(a1, &v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4CC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4CD0);
  sub_18B4CB9D8();
  sub_18B4CBA3C();
  v57 = v6;
  sub_18B6C544C();
  v78 = *(a1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4CA8);
  sub_18B6C534C();
  v48 = v59;
  v49 = v58;
  v16 = v60;
  if (qword_1EA9C3E40 != -1)
  {
    swift_once();
  }

  type metadata accessor for AVMultiviewManager();
  sub_18B4CB93C(&qword_1EA9C3F78, type metadata accessor for AVMultiviewManager);

  v45 = sub_18B6C489C();
  v53 = v17;
  type metadata accessor for MultiviewContentSelectorManager();
  sub_18B4CB93C(&qword_1EA9C3ED8, type metadata accessor for MultiviewContentSelectorManager);
  v56 = sub_18B6C474C();
  v19 = v18;
  type metadata accessor for CGPoint(0);
  v78 = 0uLL;
  sub_18B6C531C();
  v20 = v58;
  v21 = v59;
  v55 = v60;
  v78 = 0uLL;
  sub_18B6C531C();
  v22 = v58;
  v23 = v59;
  v54 = v60;
  LOBYTE(v78) = 0;
  v24 = sub_18B6C531C();
  v47 = &v44;
  v25 = v58;
  v26 = v59;
  v44 = v59;
  v77 = v19 & 1;
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v31 = v51;
  v30 = v52;
  v32 = *(v51 + 16);
  v46 = (&v44 - v46);
  v29 = v46;
  v32(v46, v57, v52, v28);
  v33 = v77;
  v34 = v50;
  (v32)(v50, v29, v30);
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4D48) + 48);
  v36 = v45;
  *&v78 = v45;
  *(&v78 + 1) = v53;
  *&v79 = v56;
  BYTE8(v79) = v33;
  *(&v79 + 9) = *v76;
  HIDWORD(v79) = *&v76[3];
  *&v80 = v20;
  *(&v80 + 1) = v21;
  *&v81 = v55;
  *(&v81 + 1) = v22;
  *&v82 = v23;
  *(&v82 + 1) = v54;
  LOBYTE(v83) = v25;
  DWORD1(v83) = *&v75[3];
  *(&v83 + 1) = *v75;
  v37 = v49;
  *(&v83 + 1) = v26;
  *&v84 = v49;
  v38 = v48;
  *(&v84 + 1) = v48;
  v85 = v16;
  v39 = v81;
  *(v35 + 32) = v80;
  *(v35 + 48) = v39;
  v40 = v79;
  *v35 = v78;
  *(v35 + 16) = v40;
  v41 = v83;
  *(v35 + 64) = v82;
  *(v35 + 80) = v41;
  *(v35 + 96) = v84;
  *(v35 + 112) = v85;
  sub_18B4CBD50(&v78, &v58);
  v42 = *(v31 + 8);
  v42(v57, v30);
  v58 = v36;
  v59 = v53;
  v60 = v56;
  v61 = v33;
  *v62 = *v76;
  *&v62[3] = *&v76[3];
  v63 = v20;
  v64 = v21;
  v65 = v55;
  v66 = v22;
  v67 = v23;
  v68 = v54;
  v69 = v25;
  *v70 = *v75;
  *&v70[3] = *&v75[3];
  v71 = v44;
  v72 = v37;
  v73 = v38;
  v74 = v16;
  sub_18B4CBDAC(&v58);
  return (v42)(v46, v30);
}

uint64_t sub_18B4C89E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v60 = a3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4CF0);
  MEMORY[0x1EEE9AC00](v58, v7);
  v59 = &v52 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4D00);
  MEMORY[0x1EEE9AC00](v56, v9);
  v57 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4D50);
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v52 - v13;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4D08);
  v55 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v15);
  v17 = &v52 - v16;
  v18 = swift_allocObject();
  v19 = *(v4 + 176);
  *(v18 + 176) = *(v4 + 160);
  *(v18 + 192) = v19;
  v20 = *(v4 + 192);
  v21 = *(v4 + 112);
  *(v18 + 112) = *(v4 + 96);
  *(v18 + 128) = v21;
  v22 = *(v4 + 144);
  *(v18 + 144) = *(v4 + 128);
  *(v18 + 160) = v22;
  v23 = *(v4 + 48);
  *(v18 + 48) = *(v4 + 32);
  *(v18 + 64) = v23;
  v24 = *(v4 + 80);
  *(v18 + 80) = *(v4 + 64);
  *(v18 + 96) = v24;
  v25 = *(v4 + 16);
  *(v18 + 16) = *v4;
  *(v18 + 32) = v25;
  *(v18 + 208) = v20;
  *(v18 + 216) = a2;
  v62 = a2;
  v63 = v4;
  v61 = a1;
  v64 = a1;
  v26 = a2;
  sub_18B4CB8E8(v4, &v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4D58);
  sub_18B4CBE18();
  sub_18B6C536C();
  v71 = *(v4 + 128);
  v72 = *(v4 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4DB0);
  sub_18B6C467C();
  v71 = v69;
  v72 = v70;
  *&v69 = v26;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F80);
  sub_18B4A6268(&qword_1EA9C4D10, &qword_1EA9C4D08);
  sub_18B4CBC80();
  v28 = v14;
  v29 = v52;
  sub_18B6C518C();

  v55[1](v17, v29);
  v71 = *(v4 + 64);
  v72 = *(v4 + 80);
  v69 = *(v4 + 64);
  v70 = *(v4 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4DB8);
  MEMORY[0x18CFF6FE0](&v65);

  if (!v65 || (v30 = 1.0, v65 != v27))
  {
    if (sub_18B4C9E84(v61))
    {
      v30 = 1.0;
    }

    else
    {
      v30 = 0.0;
    }
  }

  v55 = v27;
  v31 = v57;
  (*(v53 + 32))(v57, v28, v54);
  *&v31[*(v56 + 36)] = v30;
  v69 = v71;
  v70 = v72;
  sub_18B6C541C();
  v56 = v65;
  v53 = v67;
  v54 = v66;
  type metadata accessor for MultiviewTilesLayout();
  sub_18B4CB93C(&qword_1EA9C4C28, type metadata accessor for MultiviewTilesLayout);
  v52 = sub_18B6C474C();
  v33 = v32;
  if (qword_1EA9C3E40 != -1)
  {
    swift_once();
  }

  type metadata accessor for AVMultiviewManager();
  sub_18B4CB93C(&qword_1EA9C3F78, type metadata accessor for AVMultiviewManager);

  v34 = sub_18B6C489C();
  v36 = v35;
  type metadata accessor for CGPoint(0);
  v65 = 0;
  v66 = 0;
  sub_18B6C531C();
  v37 = v69;
  v38 = v70;
  v65 = sub_18B4F7848(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4DC0);
  sub_18B6C531C();
  v39 = v69;
  LOBYTE(v65) = 0;
  sub_18B6C531C();
  v40 = v69;
  v41 = *(&v69 + 1);
  v68 = v33 & 1;
  v42 = v31;
  v43 = v59;
  sub_18B4B1DB4(v42, v59, &qword_1EA9C4D00);
  v44 = v43 + *(v58 + 36);
  v45 = v55;
  *v44 = v61;
  *(v44 + 8) = v45;
  v46 = v54;
  *(v44 + 16) = v56;
  *(v44 + 24) = v46;
  v47 = v52;
  *(v44 + 32) = v53;
  *(v44 + 40) = v47;
  *(v44 + 48) = v68;
  *(v44 + 49) = v69;
  *(v44 + 52) = *(&v69 + 3);
  *(v44 + 56) = v34;
  *(v44 + 64) = v36;
  *(v44 + 72) = v37;
  *(v44 + 88) = v38;
  *(v44 + 96) = v39;
  *(v44 + 112) = v40;
  *(v44 + 116) = *(&v65 + 3);
  *(v44 + 113) = v65;
  *(v44 + 120) = v41;
  v48 = v45;
  sub_18B6C47CC();
  sub_18B6C47CC();
  v49 = sub_18B6C47AC();

  v50 = v60;
  sub_18B4B1DB4(v43, v60, &qword_1EA9C4CF0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4CD0);
  *(v50 + *(result + 36)) = v49;
  return result;
}

uint64_t sub_18B4C90F0()
{
  sub_18B6C54FC();
  sub_18B6C486C();
}

uint64_t sub_18B4C915C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4CA0);
  sub_18B6C532C();
  if (*(v3 + 16) != 2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v2);
    sub_18B4CB93C(&qword_1EA9C4C70, type metadata accessor for AVMultiviewWindowManager.TransitionConfiguration);
    sub_18B6C420C();
  }
}

uint64_t sub_18B4C92B0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_18B6C462C();
  return sub_18B4C9334();
}

uint64_t sub_18B4C9334()
{
  v1 = v0;
  sub_18B6C54FC();
  sub_18B6C486C();

  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v19 = v2;
  v20[0] = v3;
  v16 = v3;
  v17 = v2;
  sub_18B4A63EC(v20, aBlock, &qword_1EA9C3F48);
  sub_18B4A63EC(&v19, aBlock, &qword_1EA9C3F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F58);
  sub_18B6C532C();
  v4 = aBlock[0];
  [aBlock[0] invalidate];

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v7 = *(v1 + 176);
  *(v6 + 176) = *(v1 + 160);
  *(v6 + 192) = v7;
  *(v6 + 208) = *(v1 + 192);
  v8 = *(v1 + 112);
  *(v6 + 112) = *(v1 + 96);
  *(v6 + 128) = v8;
  v9 = *(v1 + 144);
  *(v6 + 144) = *(v1 + 128);
  *(v6 + 160) = v9;
  v10 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v10;
  v11 = *(v1 + 80);
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = v11;
  v12 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v12;
  aBlock[4] = sub_18B4CC854;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B4A4D8C;
  aBlock[3] = &block_descriptor_0;
  v13 = _Block_copy(aBlock);
  sub_18B4CB8E8(v1, &v16);

  v14 = [v5 scheduledTimerWithTimeInterval:0 repeats:v13 block:3.0];
  _Block_release(v13);
  v16 = v3;
  v17 = v2;
  aBlock[0] = v14;
  sub_18B6C533C();
  sub_18B4A6454(v20, &qword_1EA9C3F48);
  return sub_18B4A6454(&v19, &qword_1EA9C3F50);
}

uint64_t sub_18B4C958C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v44 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4D70);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v41 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = a1;
  sub_18B6C461C();

  v11 = v54;
  if (qword_1EA9C3E40 != -1)
  {
    swift_once();
  }

  *&v49[0] = qword_1EA9C5A78;
  type metadata accessor for AVMultiviewManager();

  sub_18B6C531C();
  v41 = *(&v54 + 1);
  v42 = v54;
  v12 = v10;
  sub_18B4C9A24(v64);
  v72 = v64[6];
  v73 = v64[7];
  v74 = v65;
  v68 = v64[2];
  v69 = v64[3];
  v70 = v64[4];
  v71 = v64[5];
  v66 = v64[0];
  v67 = v64[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18B6C461C();

  if (!v54 || v54 != v12 || (v54 = *(a2 + 32), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4CA0), sub_18B6C532C(), v13 = *&v49[0], swift_getKeyPath(), *&v54 = v13, sub_18B4CB93C(&qword_1EA9C4C70, type metadata accessor for AVMultiviewWindowManager.TransitionConfiguration), sub_18B6C421C(), , v14 = *(v13 + 16), , v15 = 1.0, v14 != 2))
  {
    v15 = 0.0;
  }

  if (v11)
  {
    _ZF = v11 == v12;
  }

  else
  {
    _ZF = 0;
  }

  v17 = _ZF;
  v18 = sub_18B6C54AC();
  v46[6] = v72;
  v46[7] = v73;
  v46[2] = v68;
  v46[3] = v69;
  v46[4] = v70;
  v46[5] = v71;
  v46[0] = v66;
  v46[1] = v67;
  v60 = v72;
  v61 = v73;
  v56 = v68;
  v57 = v69;
  v58 = v70;
  v59 = v71;
  *&v47 = v74;
  *(&v47 + 1) = v15;
  *&v48 = v18;
  *(&v48 + 1) = v19;
  v54 = v66;
  v55 = v67;
  v62 = v47;
  v63 = v48;
  v49[6] = v72;
  v49[7] = v73;
  v49[2] = v68;
  v49[3] = v69;
  v50 = v74;
  v49[4] = v70;
  v49[5] = v71;
  v49[0] = v66;
  v49[1] = v67;
  v51 = v15;
  v52 = v18;
  v53 = v19;
  sub_18B4A63EC(v46, &v45, &qword_1EA9C4D98);
  sub_18B4A6454(v49, &qword_1EA9C4D98);
  v20 = &v9[*(v6 + 36)];
  v21 = *(sub_18B6C48FC() + 20);
  v22 = *MEMORY[0x1E697F470];
  v23 = sub_18B6C4AAC();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  __asm { FMOV            V0.2D, #12.0 }

  *v20 = _Q0;
  *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C49F0) + 36)] = 256;
  *v9 = v12;
  v9[8] = v17;
  v28 = v41;
  *(v9 + 2) = v42;
  *(v9 + 3) = v28;
  v29 = v61;
  *(v9 + 8) = v60;
  *(v9 + 9) = v29;
  v30 = v63;
  *(v9 + 10) = v62;
  *(v9 + 11) = v30;
  v31 = v57;
  *(v9 + 4) = v56;
  *(v9 + 5) = v31;
  v32 = v59;
  *(v9 + 6) = v58;
  *(v9 + 7) = v32;
  v33 = v55;
  *(v9 + 2) = v54;
  *(v9 + 3) = v33;
  v34 = sub_18B4C9C20(v43, v12);
  v35 = sub_18B6C549C();
  v37 = v36;
  v38 = v44;
  sub_18B4CC04C(v9, v44);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4D58);
  v40 = (v38 + *(result + 36));
  *v40 = v34;
  v40[1] = v35;
  v40[2] = v37;
  return result;
}

double sub_18B4C9A24@<D0>(uint64_t a1@<X8>)
{
  sub_18B6C528C();
  v2 = sub_18B6C529C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  (*(v3 + 104))(v7, *MEMORY[0x1E6981638], v2, v5);
  v8 = sub_18B6C52DC();

  (*(v3 + 8))(v7, v2);
  sub_18B6C54BC();
  sub_18B6C479C();
  v24 = 1;
  *&v23[6] = v26;
  *&v23[22] = v27;
  *&v23[38] = v28;
  v9 = sub_18B6C4EBC();
  sub_18B6C466C();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v25 = 0;
  v18 = sub_18B6C521C();
  KeyPath = swift_getKeyPath();
  v20 = *&v23[16];
  *(a1 + 18) = *v23;
  *a1 = v8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 257;
  *(a1 + 34) = v20;
  result = *&v23[32];
  *(a1 + 50) = *&v23[32];
  *(a1 + 64) = *&v23[46];
  *(a1 + 72) = v9;
  *(a1 + 80) = v11;
  *(a1 + 88) = v13;
  *(a1 + 96) = v15;
  *(a1 + 104) = v17;
  *(a1 + 112) = 0;
  *(a1 + 120) = KeyPath;
  *(a1 + 128) = v18;
  return result;
}

uint64_t sub_18B4C9C20(uint64_t a1, void *a2)
{
  v3 = v2;
  v20 = *(v2 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F60);
  sub_18B6C532C();
  if (v19 != 1)
  {
    return sub_18B6C53EC();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_18B6C461C();

  if (!v20)
  {
    return sub_18B6C53EC();
  }

  if (v20 != a2)
  {
    return sub_18B6C53EC();
  }

  v20 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4CA0);
  sub_18B6C532C();
  swift_getKeyPath();
  *&v20 = v19;
  sub_18B4CB93C(&qword_1EA9C4C70, type metadata accessor for AVMultiviewWindowManager.TransitionConfiguration);
  sub_18B6C421C();

  v6 = *(v19 + 16);

  if (v6 != 2)
  {
    return sub_18B6C53EC();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4DC8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v18 - v9;
  *v10 = sub_18B6C4A8C();
  *(v10 + 1) = 0;
  v10[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4DD0);
  sub_18B4C9FE8(a2, a1, v3);
  v11 = sub_18B6C4EBC();
  sub_18B6C466C();
  v12 = &v10[*(v7 + 36)];
  *v12 = v11;
  *(v12 + 1) = v13;
  *(v12 + 2) = v14;
  *(v12 + 3) = v15;
  *(v12 + 4) = v16;
  v12[40] = 0;
  sub_18B4CC0BC();
  return sub_18B6C53EC();
}

BOOL sub_18B4C9E84(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4CA0);
  sub_18B6C532C();
  swift_getKeyPath();
  sub_18B4CB93C(&qword_1EA9C4C70, type metadata accessor for AVMultiviewWindowManager.TransitionConfiguration);
  sub_18B6C421C();

  v2 = *(v5 + 64);

  if (v2 == a1)
  {
    return 1;
  }

  sub_18B6C532C();
  swift_getKeyPath();
  sub_18B6C421C();

  v4 = *(v5 + 72);

  return v4 == a1;
}

uint64_t sub_18B4C9FE8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4DF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4DF8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v24 - v12;
  sub_18B4CA258(a1, a2, a3, &v24 - v12);
  v14 = sub_18B6C51DC();
  KeyPath = swift_getKeyPath();
  v16 = &v13[*(v10 + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  sub_18B4CC15C();
  sub_18B6C512C();
  sub_18B4A6454(v13, &qword_1EA9C4DF8);
  v17 = &v9[*(v6 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E28);
  sub_18B6C492C();
  *v17 = swift_getKeyPath();
  v18 = sub_18B6C4AEC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B6C4ADC();
  sub_18B4CC294();
  sub_18B4CC364();
  sub_18B6C504C();
  (*(v19 + 8))(v22, v18);
  return sub_18B4A6454(v9, &qword_1EA9C4DF0);
}

uint64_t sub_18B4CA258@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a2;
  v36 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E48);
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6, v9);
  *(swift_allocObject() + 16) = a1;
  v10 = a1;
  v34[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E50);
  sub_18B4CC3E8();
  v11 = sub_18B6C536C();
  MEMORY[0x1EEE9AC00](v11, v12);
  v13 = swift_allocObject();
  v14 = *(a3 + 128);
  *(v13 + 168) = *(a3 + 144);
  v15 = *(a3 + 176);
  *(v13 + 184) = *(a3 + 160);
  *(v13 + 200) = v15;
  v16 = *(a3 + 64);
  *(v13 + 104) = *(a3 + 80);
  v17 = *(a3 + 112);
  *(v13 + 120) = *(a3 + 96);
  *(v13 + 136) = v17;
  *(v13 + 152) = v14;
  v18 = *a3;
  *(v13 + 40) = *(a3 + 16);
  v19 = *(a3 + 48);
  *(v13 + 56) = *(a3 + 32);
  *(v13 + 72) = v19;
  *(v13 + 88) = v16;
  *(v13 + 16) = v35;
  v20 = *(a3 + 192);
  *(v13 + 24) = v18;
  *(v13 + 216) = v20;
  *(v13 + 224) = v10;
  v21 = v10;
  sub_18B4CB8E8(a3, v37);
  v22 = sub_18B6C536C();
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v7[2];
  v27 = v26(v25, v25, v6, v24);
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v26(v25, v25, v6, v29);
  v30 = v36;
  (v26)(v36, v25, v6);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E68);
  (v26)(v30 + *(v31 + 48), v25, v6);
  v32 = v7[1];
  v32(v25, v6);
  v32(v25, v6);
  v32(v25, v6);
  return (v32)(v25, v6);
}

uint64_t sub_18B4CA5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_18B6C580C();
  v4[4] = sub_18B6C57FC();
  v6 = sub_18B6C57CC();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_18B4CA660, v6, v5);
}

uint64_t sub_18B4CA660()
{
  *(v0 + 56) = AVPlayerViewController.experienceController.getter();
  *(v0 + 72) = 0;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_18B4CA714;
  v2 = *(v0 + 16);

  return AVExperienceController.transition(to:)(v2, (v0 + 72));
}

uint64_t sub_18B4CA714()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_18B4CCBD0, v3, v2);
}

uint64_t sub_18B4CA858@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_18B6C528C();
  result = sub_18B6C521C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_18B4CA89C(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1EA9C3E38 != -1)
  {
    swift_once();
  }

  v6 = *(qword_1EA9CE408 + 16);
  if (*(v6 + 72) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    *&v17 = v6;
    sub_18B4CB93C(&qword_1EA9C4C70, type metadata accessor for AVMultiviewWindowManager.TransitionConfiguration);

    sub_18B6C420C();
  }

  v17 = *(a2 + 64);
  v18 = *(a2 + 80);
  v16[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4DB8);
  sub_18B6C540C();
  *(swift_allocObject() + 16) = a3;
  v9 = a3;
  sub_18B6C54FC();
  v10 = sub_18B6C4DBC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B6C4DAC();
  sub_18B6C485C();

  return (*(v11 + 8))(v14, v10);
}

void sub_18B4CAB58()
{
  if (qword_1EA9C3E38 != -1)
  {
    swift_once();
  }

  if (*(*(qword_1EA9CE408 + 16) + 16) != 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v1);
    sub_18B4CB93C(&qword_1EA9C4C70, type metadata accessor for AVMultiviewWindowManager.TransitionConfiguration);

    sub_18B6C420C();
  }
}

uint64_t sub_18B4CACC4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = sub_18B6C584C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_18B6C580C();
  v10 = a1;
  v11 = sub_18B6C57FC();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  sub_18B5286A8(0, 0, v8, a3, v12);
}

uint64_t sub_18B4CADE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_18B6C580C();
  v4[4] = sub_18B6C57FC();
  v6 = sub_18B6C57CC();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_18B4CAE80, v6, v5);
}

uint64_t sub_18B4CAE80()
{
  *(v0 + 56) = AVPlayerViewController.experienceController.getter();
  *(v0 + 72) = 1;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_18B4CAF38;
  v2 = *(v0 + 16);

  return AVExperienceController.transition(to:)(v2, (v0 + 72));
}

uint64_t sub_18B4CAF38()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_18B4CB07C, v3, v2);
}

uint64_t sub_18B4CB07C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B4CB0DC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_18B6C528C();
  result = sub_18B6C521C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_18B4CB124()
{
  sub_18B6C54FC();
  sub_18B6C486C();
}

uint64_t sub_18B4CB1F4(uint64_t a1)
{
  v2 = sub_18B6C493C();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_18B6C49EC();
}

char *sub_18B4CB2BC(char *result)
{
  v1 = *(result + 2);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x1E69E7CC0] + 32);
    v6 = result + 32;
    while (1)
    {
      v7 = *&v6[8 * v3];
      if (v4)
      {
        result = v7;
        v8 = __OFSUB__(v4--, 1);
        if (v8)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v9 = *(v2 + 3);
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E78);
        v12 = swift_allocObject();
        v13 = _swift_stdlib_malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 17;
        }

        v15 = v14 >> 4;
        *(v12 + 2) = v11;
        *(v12 + 3) = 2 * (v14 >> 4);
        v16 = v12 + 32;
        v17 = *(v2 + 3) >> 1;
        v5 = &v12[16 * v17 + 32];
        v18 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
        if (*(v2 + 2))
        {
          v19 = v2 + 32;
          if (v12 != v2 || v16 >= &v19[16 * v17])
          {
            memmove(v16, v19, 16 * v17);
          }

          v20 = v7;
          *(v2 + 2) = 0;
        }

        else
        {
          v21 = v7;
        }

        v2 = v12;
        v8 = __OFSUB__(v18, 1);
        v4 = v18 - 1;
        if (v8)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 1) = v7;
      v5 += 16;
      if (v1 == ++v3)
      {
        goto LABEL_23;
      }
    }
  }

  v4 = 0;
LABEL_23:
  v22 = *(v2 + 3);
  if (v22 >= 2)
  {
    v23 = v22 >> 1;
    v8 = __OFSUB__(v23, v4);
    v24 = v23 - v4;
    if (v8)
    {
      goto LABEL_29;
    }

    *(v2 + 2) = v24;
  }

  return v2;
}

__n128 sub_18B4CB440@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (qword_1EA9C3E40 != -1)
  {
    swift_once();
  }

  type metadata accessor for AVMultiviewManager();
  sub_18B4CB93C(&qword_1EA9C3F78, type metadata accessor for AVMultiviewManager);

  v8 = sub_18B6C489C();
  v14 = v9;
  v15 = v8;
  type metadata accessor for MultiviewContentSelectorManager();
  sub_18B4CB93C(&qword_1EA9C3ED8, type metadata accessor for MultiviewContentSelectorManager);
  v13 = sub_18B6C474C();
  v12 = v10;
  if (qword_1EA9C3E38 != -1)
  {
    swift_once();
  }

  type metadata accessor for AVMultiviewWindowManager.TransitionConfiguration();

  sub_18B6C531C();
  type metadata accessor for MultiviewTilesLayout();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC0];
  sub_18B6C424C();
  sub_18B6C531C();
  sub_18B6C531C();
  sub_18B6C468C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F80);
  sub_18B6C531C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F48);
  sub_18B6C531C();
  sub_18B6C531C();
  *a7 = v15;
  *(a7 + 8) = v14;
  *(a7 + 16) = v13;
  *(a7 + 24) = v12 & 1;
  *(a7 + 25) = v22.n128_u32[0];
  *(a7 + 28) = *(v22.n128_u32 + 3);
  *(a7 + 32) = v22;
  *(a7 + 48) = v22;
  *(a7 + 64) = a1;
  *(a7 + 72) = a2;
  *(a7 + 80) = a3;
  *(a7 + 88) = a4;
  *(a7 + 96) = a5;
  *(a7 + 104) = a6 & 1;
  *(a7 + 108) = 0;
  *(a7 + 105) = 0;
  *(a7 + 112) = v22;
  result = v22;
  *(a7 + 128) = v22;
  *(a7 + 144) = v23;
  *(a7 + 152) = v22;
  *(a7 + 168) = v22;
  *(a7 + 184) = v22.n128_u8[0];
  *(a7 + 185) = *v24;
  *(a7 + 188) = *&v24[3];
  *(a7 + 192) = v22.n128_u64[1];
  return result;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_18B4CB7FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_18B4CB844(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18B4CB93C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18B4CB9D8()
{
  result = qword_1EA9C4CD8;
  if (!qword_1EA9C4CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4CD8);
  }

  return result;
}

unint64_t sub_18B4CBA3C()
{
  result = qword_1EA9C4CE0;
  if (!qword_1EA9C4CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4CD0);
    sub_18B4CBADC();
    sub_18B4A6268(&qword_1EA9C4D38, &qword_1EA9C4D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4CE0);
  }

  return result;
}

unint64_t sub_18B4CBADC()
{
  result = qword_1EA9C4CE8;
  if (!qword_1EA9C4CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4CF0);
    sub_18B4CBB5C();
    sub_18B4CBCFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4CE8);
  }

  return result;
}

unint64_t sub_18B4CBB5C()
{
  result = qword_1EA9C4CF8;
  if (!qword_1EA9C4CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4D00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4D08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C3F80);
    sub_18B4A6268(&qword_1EA9C4D10, &qword_1EA9C4D08);
    sub_18B4CBC80();
    swift_getOpaqueTypeConformance2();
    sub_18B4A6268(&qword_1EA9C4D20, &qword_1EA9C4D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4CF8);
  }

  return result;
}

unint64_t sub_18B4CBC80()
{
  result = qword_1EA9C4D18;
  if (!qword_1EA9C4D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C3F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4D18);
  }

  return result;
}

unint64_t sub_18B4CBCFC()
{
  result = qword_1EA9C4D30;
  if (!qword_1EA9C4D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4D30);
  }

  return result;
}

unint64_t sub_18B4CBE18()
{
  result = qword_1EA9C4D60;
  if (!qword_1EA9C4D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4D58);
    sub_18B4CBEB8();
    sub_18B4A6268(&qword_1EA9C4DA0, &qword_1EA9C4DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4D60);
  }

  return result;
}

unint64_t sub_18B4CBEB8()
{
  result = qword_1EA9C4D68;
  if (!qword_1EA9C4D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4D70);
    sub_18B4CBF58();
    sub_18B4A6268(&qword_1EA9C49E8, &qword_1EA9C49F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4D68);
  }

  return result;
}

unint64_t sub_18B4CBF58()
{
  result = qword_1EA9C4D78;
  if (!qword_1EA9C4D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4D80);
    sub_18B4CBFF8();
    sub_18B4A6268(&qword_1EA9C4D90, &qword_1EA9C4D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4D78);
  }

  return result;
}

unint64_t sub_18B4CBFF8()
{
  result = qword_1EA9C4D88;
  if (!qword_1EA9C4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4D88);
  }

  return result;
}

uint64_t sub_18B4CC04C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4D70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18B4CC0BC()
{
  result = qword_1EA9C4DD8;
  if (!qword_1EA9C4DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4DC8);
    sub_18B4A6268(&qword_1EA9C4DE0, &qword_1EA9C4DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4DD8);
  }

  return result;
}

unint64_t sub_18B4CC15C()
{
  result = qword_1EA9C4E00;
  if (!qword_1EA9C4E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4DF8);
    sub_18B4CC1FC();
    sub_18B4A6268(&qword_1EA9C45B0, &qword_1EA9C45B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4E00);
  }

  return result;
}

unint64_t sub_18B4CC1FC()
{
  result = qword_1EA9C4E08;
  if (!qword_1EA9C4E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4E10);
    sub_18B4A6268(&qword_1EA9C4E18, &qword_1EA9C4E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4E08);
  }

  return result;
}

unint64_t sub_18B4CC294()
{
  result = qword_1EA9C4E30;
  if (!qword_1EA9C4E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4DF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4DF8);
    sub_18B4CC15C();
    swift_getOpaqueTypeConformance2();
    sub_18B4A6268(&qword_1EA9C4E38, &qword_1EA9C4E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4E30);
  }

  return result;
}

unint64_t sub_18B4CC364()
{
  result = qword_1EA9C4E40;
  if (!qword_1EA9C4E40)
  {
    sub_18B6C4AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4E40);
  }

  return result;
}

unint64_t sub_18B4CC3E8()
{
  result = qword_1EA9C4E58;
  if (!qword_1EA9C4E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4E50);
    sub_18B4A6268(&qword_1EA9C5800, &qword_1EA9C4E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4E58);
  }

  return result;
}

uint64_t sub_18B4CC4EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CC5A0;

  return sub_18B4CADE8(a1, v4, v5, v6);
}

uint64_t sub_18B4CC5A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_57Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18B4CC6D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B4CA5C8(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x1EEE6BDD0](v0, 216, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_18B4CC8F4()
{
  result = qword_1EA9C4E80;
  if (!qword_1EA9C4E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4E80);
  }

  return result;
}

unint64_t sub_18B4CC93C()
{
  result = qword_1EA9C4E88;
  if (!qword_1EA9C4E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4E88);
  }

  return result;
}

unint64_t sub_18B4CC990()
{
  result = qword_1EA9C4E90;
  if (!qword_1EA9C4E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4E90);
  }

  return result;
}

unint64_t sub_18B4CC9E4()
{
  result = qword_1EA9C4E98;
  if (!qword_1EA9C4E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4E98);
  }

  return result;
}

unint64_t sub_18B4CCA38()
{
  result = qword_1EA9C4EA0;
  if (!qword_1EA9C4EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4EA0);
  }

  return result;
}

unint64_t sub_18B4CCA8C()
{
  result = qword_1EA9C4EA8;
  if (!qword_1EA9C4EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4C98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4C78);
    type metadata accessor for MultiviewTilesLayout();
    sub_18B4A6268(&qword_1EA9C4C90, &qword_1EA9C4C78);
    sub_18B4CB93C(&qword_1EA9C4C28, type metadata accessor for MultiviewTilesLayout);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4EA8);
  }

  return result;
}

uint64_t sub_18B4CCBD4(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v120) = a3;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F28);
  v140 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142, v6);
  v139 = (&v105 - v7);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F30);
  v141 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143, v8);
  v138 = &v105 - v9;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F38);
  v134 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136, v10);
  v133 = (&v105 - v11);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F40);
  v135 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137, v12);
  v132 = &v105 - v13;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F48);
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v14);
  v126 = (&v105 - v15);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F50);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131, v16);
  v127 = &v105 - v17;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F58);
  v121 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124, v18);
  v119 = (&v105 - v19);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F60);
  v122 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125, v20);
  v118 = &v105 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F68);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v111 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v146 = &v105 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F70);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v115 = &v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v105 - v33;
  v144 = &v105 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F78);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v116 = &v105 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v145 = &v105 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F80);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v123 = &v105 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v105 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v51 = &v105 - v50;
  *(v3 + OBJC_IVAR____TtC5AVKit17MicrophoneManager_isDiscovering) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F88);
  v52 = swift_allocObject();
  sub_18B6C450C();
  sub_18B6C582C();
  v53 = sub_18B6C584C();
  v54 = *(v53 - 8);
  v55 = *(v54 + 56);
  v107 = v53;
  v106 = v55;
  v105 = v54 + 56;
  (v55)(v51, 0, 1);
  v56 = swift_allocObject();
  v56[2] = 0;
  v56[3] = 0;
  v56[4] = sub_18B4D119C;
  v56[5] = 0;
  v57 = sub_18B4CFB20(0, 0, v51, &unk_18B6E8620, v56);
  v108 = v51;
  sub_18B4A6454(v51, &qword_1EA9C4E70);
  *(v52 + 16) = v57;
  v151[3] = &type metadata for MXAVInputContextFactory;
  v151[4] = &off_1EFECD038;
  v151[0] = v52;
  type metadata accessor for AVRoutingInputController();
  v58 = swift_allocObject();
  v59 = __swift_mutable_project_boxed_opaque_existential_1(v151, &type metadata for MXAVInputContextFactory);
  v60 = MEMORY[0x1EEE9AC00](v59, v59);
  v62 = (&v105 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62, v60);
  v64 = *v62;
  v109 = a2;
  v65 = sub_18B4D16C8(v120, a1, a2, v64, v58);
  __swift_destroy_boxed_opaque_existential_1(v151);
  *(v3 + 16) = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F18);
  v67 = *(v66 - 8);
  v68 = *(v67 + 56);
  v117 = v47;
  v68(v47, 1, 1, v66);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F08);
  v70 = *(v69 - 8);
  v71 = *(v70 + 56);
  v72 = v145;
  v120 = v69;
  v71(v145, 1, 1);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4EF8);
  v112 = *(v73 - 8);
  v74 = *(v112 + 56);
  v113 = v73;
  v74(v34, 1, 1);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4EE8);
  v114 = *(v75 - 8);
  v76 = *(v114 + 56);
  v77 = v146;
  v110 = v75;
  v76(v146, 1, 1);
  v78 = v119;
  *v119 = 1;
  v79 = *MEMORY[0x1E69E8640];
  (*(v121 + 104))(v78, v79, v124);
  v150 = v47;
  v80 = v118;
  sub_18B6C589C();
  (*(v122 + 32))(v3 + OBJC_IVAR____TtC5AVKit17MicrophoneManager_selectedMicrophoneStream, v80, v125);
  v81 = v126;
  *v126 = 1;
  (*(v128 + 104))(v81, v79, v129);
  v149 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4EC0);
  v82 = v127;
  sub_18B6C589C();
  (*(v130 + 32))(v3 + OBJC_IVAR____TtC5AVKit17MicrophoneManager_availableMicrophonesStream, v82, v131);
  v83 = v133;
  *v133 = 1;
  (*(v134 + 104))(v83, v79, v136);
  v148 = v144;
  v84 = v132;
  sub_18B6C589C();
  (*(v135 + 32))(v3 + OBJC_IVAR____TtC5AVKit17MicrophoneManager_inputGainStream, v84, v137);
  v85 = v139;
  *v139 = 1;
  (*(v140 + 104))(v85, v79, v142);
  v147 = v77;
  v86 = v138;
  v87 = v3;
  v88 = v123;
  sub_18B6C589C();
  v89 = v86;
  v90 = v117;
  (*(v141 + 32))(v87 + OBJC_IVAR____TtC5AVKit17MicrophoneManager_canSetInputGainStream, v89, v143);
  sub_18B4A63EC(v90, v88, &qword_1EA9C4F80);
  result = (*(v67 + 48))(v88, 1, v66);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  (*(v67 + 32))(v87 + OBJC_IVAR____TtC5AVKit17MicrophoneManager_selectedMicrophoneContinuation, v88, v66);
  v92 = v145;
  v93 = v116;
  sub_18B4A63EC(v145, v116, &qword_1EA9C4F78);
  v94 = v120;
  result = (*(v70 + 48))(v93, 1, v120);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  (*(v70 + 32))(v87 + OBJC_IVAR____TtC5AVKit17MicrophoneManager_availableMicrophonesContinuation, v93, v94);
  v95 = v144;
  v96 = v115;
  sub_18B4A63EC(v144, v115, &qword_1EA9C4F70);
  v97 = v112;
  v98 = v113;
  result = (*(v112 + 48))(v96, 1, v113);
  v99 = v114;
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  (*(v97 + 32))(v87 + OBJC_IVAR____TtC5AVKit17MicrophoneManager_inputGainContinuation, v96, v98);
  v100 = v111;
  sub_18B4A63EC(v146, v111, &qword_1EA9C4F68);
  v101 = v110;
  result = (*(v99 + 48))(v100, 1, v110);
  if (result != 1)
  {

    (*(v99 + 32))(v87 + OBJC_IVAR____TtC5AVKit17MicrophoneManager_canSetInputGainContinuation, v100, v101);
    *(*(v87 + 16) + 40) = &off_1EFECDFE0;
    swift_unknownObjectWeakAssign();
    v102 = v108;
    v106(v108, 1, 1, v107);
    v103 = swift_allocObject();
    swift_weakInit();
    v104 = swift_allocObject();
    v104[2] = 0;
    v104[3] = 0;
    v104[4] = v103;
    sub_18B5283A4(0, 0, v102, &unk_18B6E8628, v104);

    sub_18B4A6454(v146, &qword_1EA9C4F68);
    sub_18B4A6454(v95, &qword_1EA9C4F70);
    sub_18B4A6454(v92, &qword_1EA9C4F78);
    sub_18B4A6454(v90, &qword_1EA9C4F80);
    return v87;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_18B4CDCAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  sub_18B4A6454(a2, a3);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v11 = *(v8 - 8);
  (*(v11 + 16))(a2, a1, v8);
  v9 = *(v11 + 56);

  return v9(a2, 0, 1, v8);
}

void sub_18B4CDD80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - v8;
  v10 = *(v2 + 16);
  v11 = *(v10 + 120);
  if (!a2)
  {
    if (!v11)
    {
      return;
    }

    goto LABEL_12;
  }

  if (!v11 || (*(v10 + 112) == a1 ? (v12 = v11 == a2) : (v12 = 0), !v12 && (sub_18B6C5CEC() & 1) == 0))
  {
LABEL_12:
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;

    sub_18B4D6D14();
    v13 = sub_18B6C584C();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    sub_18B6C580C();

    v14 = sub_18B6C57FC();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v3;
    sub_18B5280B4(0, 0, v9, &unk_18B6E8548, v15);

    return;
  }
}

uint64_t sub_18B4CDF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_18B6C580C();
  v4[3] = sub_18B6C57FC();
  v6 = sub_18B6C57CC();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_18B4CDFC4, v6, v5);
}

uint64_t sub_18B4CDFC4()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_18B4CE058;

  return sub_18B4D39C4();
}

uint64_t sub_18B4CE058()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_18B4D226C, v3, v2);
}

uint64_t sub_18B4CE178()
{
  v1[2] = v0;
  v2 = sub_18B6C584C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_18B6C580C();
  v1[6] = sub_18B6C57FC();
  v4 = sub_18B6C57CC();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_18B4CE26C, v4, v3);
}

uint64_t sub_18B4CE294()
{
  v1 = swift_allocObject();
  v0[10] = v1;
  swift_weakInit();
  sub_18B6C582C();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_18B4CE3BC;
  v3 = v0[5];

  return sub_18B4F0F64(0x7475706E49746567, 0xEE0029286E696147, v3, &unk_18B6E8598, v1);
}

uint64_t sub_18B4CE3BC(float a1)
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 96) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);

  return MEMORY[0x1EEE6DFA0](sub_18B4CE55C, v7, v6);
}

uint64_t sub_18B4CE55C()
{

  v1 = *(v0 + 8);
  v2.n128_u32[0] = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_18B4CE5C8(float a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  sub_18B6C580C();
  *(v2 + 24) = sub_18B6C57FC();
  v4 = sub_18B6C57CC();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;

  return MEMORY[0x1EEE6DFA0](sub_18B4CE664, v4, v3);
}

uint64_t sub_18B4CE68C()
{
  v1 = *(v0 + 80);
  v2 = swift_allocObject();
  *(v0 + 56) = v2;
  swift_weakInit();
  v3 = swift_allocObject();
  *(v0 + 64) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_18B4CE7CC;

  return sub_18B51A6F0(0xD000000000000010, 0x800000018B6FC2F0, 10000000000000000, 0, &unk_18B6E86C8, v3);
}

uint64_t sub_18B4CE7CC()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_18B4CE92C, v3, v2);
}

uint64_t sub_18B4CE92C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B4CE98C()
{
  v1[2] = v0;
  v2 = sub_18B6C584C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_18B6C580C();
  v1[6] = sub_18B6C57FC();
  v4 = sub_18B6C57CC();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_18B4CEA80, v4, v3);
}

uint64_t sub_18B4CEAA8()
{
  v1 = swift_allocObject();
  v0[10] = v1;
  swift_weakInit();
  sub_18B6C582C();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_18B4CEBC8;
  v3 = v0[5];

  return sub_18B4F175C(0xD000000000000014, 0x800000018B6FC2D0, v3, &unk_18B6E85A8, v1);
}

uint64_t sub_18B4CEBC8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 96) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);

  return MEMORY[0x1EEE6DFA0](sub_18B4CED70, v7, v6);
}

uint64_t sub_18B4CED70()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_18B4CEDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_18B6C580C();
  v4[3] = sub_18B6C57FC();
  v6 = sub_18B6C57CC();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_18B4CEE74, v6, v5);
}

uint64_t sub_18B4CEE74()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_18B4CE058;

  return sub_18B4D61B8();
}

uint64_t sub_18B4CEF08()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v46 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F18);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v39 - v13;
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v15 = sub_18B6C435C();
  __swift_project_value_buffer(v15, qword_1EA9CE398);
  v16 = sub_18B6C434C();
  v17 = sub_18B6C596C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_18B49C000, v16, v17, "[deinit] MicrophoneManager start deinit", v18, 2u);
    MEMORY[0x18CFF91B0](v18, -1, -1);
  }

  v44 = v10;
  v45 = OBJC_IVAR____TtC5AVKit17MicrophoneManager_selectedMicrophoneContinuation;
  (*(v11 + 16))(v14, v1 + OBJC_IVAR____TtC5AVKit17MicrophoneManager_selectedMicrophoneContinuation, v10);
  sub_18B6C586C();
  v43 = *(v11 + 8);
  v43(v14, v10);
  v42 = OBJC_IVAR____TtC5AVKit17MicrophoneManager_availableMicrophonesContinuation;
  (*(v6 + 16))(v9, v1 + OBJC_IVAR____TtC5AVKit17MicrophoneManager_availableMicrophonesContinuation, v5);
  sub_18B6C586C();
  v41 = *(v6 + 8);
  v41(v9, v5);
  v19 = *(v1 + 16);
  *(v19 + 40) = 0;
  swift_unknownObjectWeakAssign();
  v20 = sub_18B6C584C();
  v21 = *(*(v20 - 8) + 56);
  v40 = v5;
  v22 = v46;
  v21(v46, 1, 1, v20);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v23;

  sub_18B5283A4(0, 0, v22, &unk_18B6E86A0, v24);

  v21(v22, 1, 1, v20);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v19;

  sub_18B4D0100(0, 0, v22, &unk_18B6E86B0, v25);

  sub_18B4A6454(v22, &qword_1EA9C4E70);

  v43((v1 + v45), v44);
  v41((v1 + v42), v40);
  v26 = OBJC_IVAR____TtC5AVKit17MicrophoneManager_inputGainContinuation;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4EF8);
  (*(*(v27 - 8) + 8))(v1 + v26, v27);
  v28 = OBJC_IVAR____TtC5AVKit17MicrophoneManager_canSetInputGainContinuation;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4EE8);
  (*(*(v29 - 8) + 8))(v1 + v28, v29);
  v30 = OBJC_IVAR____TtC5AVKit17MicrophoneManager_selectedMicrophoneStream;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F60);
  (*(*(v31 - 8) + 8))(v1 + v30, v31);
  v32 = OBJC_IVAR____TtC5AVKit17MicrophoneManager_availableMicrophonesStream;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F50);
  (*(*(v33 - 8) + 8))(v1 + v32, v33);
  v34 = OBJC_IVAR____TtC5AVKit17MicrophoneManager_inputGainStream;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F40);
  (*(*(v35 - 8) + 8))(v1 + v34, v35);
  v36 = OBJC_IVAR____TtC5AVKit17MicrophoneManager_canSetInputGainStream;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F30);
  (*(*(v37 - 8) + 8))(v1 + v36, v37);
  return v1;
}

uint64_t sub_18B4CF570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_18B6C584C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4CF630, 0, 0);
}

uint64_t sub_18B4CF630()
{
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v1 = sub_18B6C435C();
  __swift_project_value_buffer(v1, qword_1EA9CE398);
  v2 = sub_18B6C434C();
  v3 = sub_18B6C596C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18B49C000, v2, v3, "[deinit] MicrophoneManager doing the cancelling of observations", v4, 2u);
    MEMORY[0x18CFF91B0](v4, -1, -1);
  }

  v5 = v0[2];

  v0[6] = *(v5 + 16);
  v0[7] = swift_allocObject();
  swift_weakInit();
  sub_18B6C582C();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_18B4CF80C;

  return (sub_18B4F1F54)();
}

uint64_t sub_18B4CF80C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B4CF980, 0, 0);
}

uint64_t sub_18B4CF980()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_18B4CFA10;

  return sub_18B51B588();
}

uint64_t sub_18B4CFA10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_18B4CFB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_18B4A63EC(a3, v26 - v11, &qword_1EA9C4E70);
  v13 = sub_18B6C584C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_18B4A6454(v12, &qword_1EA9C4E70);
  }

  else
  {
    sub_18B6C583C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_18B6C57CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_18B6C564C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;
      sub_18B4AC60C(0, &qword_1EA9C3A60);

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_18B4AC60C(0, &qword_1EA9C3A60);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_18B4CFE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_18B4A63EC(a3, v26 - v11, &qword_1EA9C4E70);
  v13 = sub_18B6C584C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_18B4A6454(v12, &qword_1EA9C4E70);
  }

  else
  {
    sub_18B6C583C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_18B6C57CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_18B6C564C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;
      sub_18B4AC60C(0, &qword_1EA9C39E0);

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_18B4AC60C(0, &qword_1EA9C39E0);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_18B4D0100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_18B4A63EC(a3, v26 - v11, &qword_1EA9C4E70);
  v13 = sub_18B6C584C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_18B4A6454(v12, &qword_1EA9C4E70);
  }

  else
  {
    sub_18B6C583C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_18B6C57CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_18B6C564C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_18B4D03C0()
{
  sub_18B4CEF08();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MicrophoneManager()
{
  result = qword_1EA9C3D10;
  if (!qword_1EA9C3D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B4D046C()
{
  sub_18B4D0830(319, &qword_1EA9C3AA8, &type metadata for InputPickerMicrophone, MEMORY[0x1E69E8660]);
  if (v0 <= 0x3F)
  {
    sub_18B4D07C4(319, &qword_1EA9C3AA0, MEMORY[0x1E69E8660]);
    if (v1 <= 0x3F)
    {
      sub_18B4D0830(319, &qword_1EA9C4EC8, MEMORY[0x1E69E6448], MEMORY[0x1E69E8660]);
      if (v2 <= 0x3F)
      {
        sub_18B4D0830(319, &qword_1EA9C4ED0, MEMORY[0x1E69E6370], MEMORY[0x1E69E8660]);
        if (v3 <= 0x3F)
        {
          sub_18B4D0830(319, &qword_1EA9C3A90, &type metadata for InputPickerMicrophone, MEMORY[0x1E69E8698]);
          if (v4 <= 0x3F)
          {
            sub_18B4D07C4(319, &qword_1EA9C3A80, MEMORY[0x1E69E8698]);
            if (v5 <= 0x3F)
            {
              sub_18B4D0830(319, &qword_1EA9C4ED8, MEMORY[0x1E69E6448], MEMORY[0x1E69E8698]);
              if (v6 <= 0x3F)
              {
                sub_18B4D0830(319, &qword_1EA9C4EE0, MEMORY[0x1E69E6370], MEMORY[0x1E69E8698]);
                if (v7 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_18B4D07C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4EC0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_18B4D0830(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_18B4D08A4(uint64_t a1, __int128 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F18);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F20);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v19[-v13];
  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC5AVKit17MicrophoneManager_selectedMicrophoneContinuation, v4, v12);
  v15 = *a2;
  v24 = a2[1];
  v25 = v15;
  v16 = a2[1];
  v17 = a2[2];
  v20 = *a2;
  v21 = v16;
  v22 = a2[2];
  v23 = v17;
  sub_18B4C41CC(&v25, v19);
  sub_18B4C41CC(&v24, v19);
  sub_18B4C41CC(&v23, v19);
  sub_18B6C585C();
  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_18B4D0A90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F08);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F10);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v16 - v13;
  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC5AVKit17MicrophoneManager_availableMicrophonesContinuation, v4, v12);
  v16[1] = a2;
  sub_18B6C450C();
  sub_18B6C585C();
  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_18B4D0C48(float a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4EF8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F00);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = v15 - v12;
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC5AVKit17MicrophoneManager_inputGainContinuation, v3, v11);
  *&v15[3] = a1;
  sub_18B6C585C();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v13, v8);
}

uint64_t sub_18B4D0E00(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4EE8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4EF0);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v16[-v13];
  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC5AVKit17MicrophoneManager_canSetInputGainContinuation, v4, v12);
  v16[15] = a2;
  sub_18B6C585C();
  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_18B4D0FB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CC5A0;

  return sub_18B4CDF2C(a1, v4, v5, v6);
}

uint64_t sub_18B4D1064(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18B4CCBCC;

  return sub_18B4E42A0(a1, v1);
}

uint64_t sub_18B4D1100(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18B4CCBCC;

  return sub_18B4E4D00(a1, v1);
}

id sub_18B4D119C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E69587D8]) init];
  *a1 = result;
  return result;
}

uint64_t sub_18B4D11D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18B4D11FC, 0, 0);
}

uint64_t sub_18B4D11FC()
{
  v1 = *(v0 + 24);
  (*(v0 + 32))();
  *v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18B4D1270(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_18B4CCBCC;

  return sub_18B4D11D8(a1, v4, v5, v7, v6);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_18B4D138C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_18B4D1480;

  return v5(v2 + 16);
}

uint64_t sub_18B4D1480()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_18B4D15B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18B4D2264, 0, 0);
}

uint64_t sub_18B4D15D4(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_18B4D2268;

  return v5(v2 + 16);
}

uint64_t sub_18B4D16C8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a2;
  v27 = a3;
  HIDWORD(v25) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v25 - v9;
  v28[3] = &type metadata for MXAVInputContextFactory;
  v28[4] = &off_1EFECD038;
  v28[0] = a4;
  type metadata accessor for AVInputPickerTaskRegistry();
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v11 + 112) = sub_18B4F7930(MEMORY[0x1E69E7CC0]);
  *(a5 + 16) = v11;
  *(a5 + 40) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for AVRoutingInputController.ViewModelState();
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0;
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v12 + 304) = 0;
  *(v12 + 272) = 0u;
  *(v12 + 288) = 0u;
  *(v12 + 240) = 0u;
  *(v12 + 256) = 0u;
  *(v12 + 208) = 0u;
  *(v12 + 224) = 0u;
  *(v12 + 176) = 0u;
  *(v12 + 192) = 0u;
  *(v12 + 144) = 0u;
  *(v12 + 160) = 0u;
  *(v12 + 112) = 0u;
  *(v12 + 128) = 0u;
  *(a5 + 112) = 0;
  *(a5 + 120) = 0;
  *(a5 + 104) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F90);
  v13 = swift_allocObject();
  sub_18B6C582C();
  v14 = sub_18B6C584C();
  v15 = *(*(v14 - 8) + 56);
  v15(v10, 0, 1, v14);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = sub_18B4D2260;
  v16[5] = 0;
  v17 = sub_18B4CFE10(0, 0, v10, &unk_18B6E8640, v16);
  sub_18B4A6454(v10, &qword_1EA9C4E70);
  *(v13 + 16) = v17;
  *(a5 + 128) = v13;
  v18 = swift_allocObject();
  sub_18B6C582C();
  v15(v10, 0, 1, v14);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = sub_18B4D2260;
  v19[5] = 0;
  v20 = sub_18B4CFE10(0, 0, v10, &unk_18B6E8648, v19);
  sub_18B4A6454(v10, &qword_1EA9C4E70);
  *(v18 + 16) = v20;
  *(a5 + 136) = v18;
  *(a5 + 24) = BYTE4(v25);
  v21 = v27;
  *(a5 + 112) = v26;
  *(a5 + 120) = v21;

  sub_18B4D1D10(v28, a5 + 144);
  v15(v10, 1, 1, v14);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v22;
  sub_18B5280B4(0, 0, v10, &unk_18B6E8650, v23);

  __swift_destroy_boxed_opaque_existential_1(v28);
  return a5;
}

uint64_t sub_18B4D1B50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B4D656C(a1, v4, v5, v6);
}

uint64_t sub_18B4D1C04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_18B4CCBCC;

  return sub_18B4D15B0(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_42Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18B4D1D10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_18B4D1D74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B4D7468(a1, v4, v5, v6);
}

uint64_t sub_18B4D1E28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B4CCBCC;

  return sub_18B4F3F5C(a1, v4);
}

uint64_t sub_18B4D1EE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B4CCBCC;

  return sub_18B4D15D4(a1, v4);
}

uint64_t sub_18B4D1F98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B4CCBCC;

  return sub_18B4D138C(a1, v4);
}

uint64_t sub_18B4D2050(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B4CC5A0;

  return sub_18B4D138C(a1, v4);
}

uint64_t sub_18B4D2108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B4CF570(a1, v4, v5, v6);
}

uint64_t sub_18B4D21BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_18B4CCBCC;

  return sub_18B4E4610(v2, v3);
}

void sub_18B4D2270(unsigned __int8 *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (v8)
    {
      if (v8 == 1)
      {
        v11 = sub_18B6C584C();
        (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
        v12 = swift_allocObject();
        *(v12 + 16) = 0;
        *(v12 + 24) = 0;
        sub_18B5280B4(0, 0, v7, &unk_18B6E8730, v12);
      }
    }

    else
    {
      v14 = sub_18B6C584C();
      (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v10;
      sub_18B5280B4(0, 0, v7, &unk_18B6E8740, v15);
    }

    v13 = 5;
  }

  else
  {
    v13 = 2;
  }

  *a2 = v13;
}

uint64_t sub_18B4D2450()
{
  *(v0 + 24) = sub_18B6C580C();
  *(v0 + 32) = sub_18B6C57FC();
  v2 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B4D24E8, v2, v1);
}

uint64_t sub_18B4D24E8()
{

  if (qword_1EA9C3E40 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_18B4D2580, 0, 0);
}

uint64_t sub_18B4D2580()
{
  *(v0 + 40) = sub_18B6C57FC();
  v2 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B4D260C, v2, v1);
}

uint64_t sub_18B4D260C()
{

  *(v0 + 48) = qword_1EA9C5A78;

  return MEMORY[0x1EEE6DFA0](sub_18B4D2688, 0, 0);
}

uint64_t sub_18B4D2688()
{
  *(v0 + 56) = sub_18B6C57FC();
  v2 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B4D2714, v2, v1);
}

uint64_t sub_18B4D2714()
{
  v1 = *(v0 + 16);

  sub_18B535E98(v1);

  return MEMORY[0x1EEE6DFA0](sub_18B4D2790, 0, 0);
}

uint64_t sub_18B4D2790()
{
  if (qword_1EA9C3E38 != -1)
  {
    swift_once();
  }

  *(v0 + 64) = qword_1EA9CE408;
  *(v0 + 72) = sub_18B6C57FC();
  v2 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B4D2858, v2, v1);
}

uint64_t sub_18B4D2858()
{
  v1 = *(v0 + 16);

  sub_18B51C3A8(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18B4D28E0()
{
  if (qword_1EA9C3E38 != -1)
  {
    swift_once();
  }

  *(v0 + 64) = qword_1EA9CE408;
  sub_18B6C580C();
  *(v0 + 72) = sub_18B6C57FC();
  v2 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B4D29B0, v2, v1);
}

uint64_t sub_18B4D29B0()
{
  v1 = v0[8];

  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_18B4D3154;
    v0[7] = v3;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_18B533A4C;
    v0[5] = &block_descriptor_1;
    v4 = _Block_copy(v0 + 2);
    v5 = v2;

    [v5 dismissViewControllerAnimated:0 completion:v4];
    _Block_release(v4);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_18B4D2B04()
{
  *(v0 + 24) = sub_18B6C580C();
  *(v0 + 32) = sub_18B6C57FC();
  v2 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B4D2B9C, v2, v1);
}

uint64_t sub_18B4D2B9C()
{

  if (qword_1EA9C3E40 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_18B4D2C34, 0, 0);
}

uint64_t sub_18B4D2C34()
{
  *(v0 + 40) = sub_18B6C57FC();
  v2 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B4D2CC0, v2, v1);
}

uint64_t sub_18B4D2CC0()
{

  *(v0 + 48) = qword_1EA9C5A78;

  return MEMORY[0x1EEE6DFA0](sub_18B4D2D3C, 0, 0);
}

uint64_t sub_18B4D2D3C()
{
  *(v0 + 56) = sub_18B6C57FC();
  v2 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B4D2DC8, v2, v1);
}

uint64_t sub_18B4D2DC8()
{

  sub_18B536028();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B4D2E5C()
{
  if (qword_1EA9C3E38 != -1)
  {
    swift_once();
  }

  *(v0 + 24) = qword_1EA9CE408;
  sub_18B6C580C();
  *(v0 + 32) = sub_18B6C57FC();
  v2 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B4D2F2C, v2, v1);
}

uint64_t sub_18B4D2F2C()
{
  v1 = *(v0 + 16);

  sub_18B51C53C(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18B4D2F98()
{
  MEMORY[0x18CFF9250](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_18B4D2FF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18B4CC5A0;

  return sub_18B4D28C4();
}

uint64_t sub_18B4D30A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B4D2430(a1, v4, v5, v6);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18B4D3178(uint64_t a1)
{
  sub_18B4D3208(a1, v3);
  sub_18B4D3208(v3, v2);
  sub_18B514924(v2);
  return sub_18B4AF210(v3);
}

uint64_t AVControlItem.tip.setter(uint64_t a1)
{
  sub_18B4D3208(a1, v3);
  sub_18B514924(v3);
  return sub_18B4AF210(a1);
}

uint64_t sub_18B4D3208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*AVControlItem.tip.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  _sSo13AVControlItemC5AVKitE3tip6TipKit0E0_pSgvg_0(v3);
  return sub_18B4D32F0;
}

void sub_18B4D32F0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_18B4D3208(*a1, v2 + 40);
    sub_18B4D3208(v2 + 40, v2 + 80);
    sub_18B514924(v2 + 80);
    sub_18B4AF210(v2 + 40);
  }

  else
  {
    sub_18B4D3208(*a1, v2 + 40);
    sub_18B514924(v2 + 40);
  }

  sub_18B4AF210(v2);

  free(v2);
}

uint64_t sub_18B4D3378(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  v3 = sub_18B6C584C();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4D343C, 0, 0);
}

uint64_t sub_18B4D343C()
{
  v36 = v0;
  v1 = *(v0 + 80);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  swift_weakInit();
  v3 = swift_allocObject();
  v34 = v0;
  *(v0 + 56) = v3;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5090);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18B6E6E50;
  if (v1)
  {
    v5 = &unk_18B6E8D50;
  }

  else
  {
    v5 = &unk_18B6E8D40;
  }

  if (v1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v2;
  }

  if (v1)
  {
    v7 = &unk_18B6E8D88;
  }

  else
  {
    v7 = &unk_18B6E8D68;
  }

  if (v1)
  {
    v8 = &unk_18B6E8D40;
  }

  else
  {
    v8 = &unk_18B6E8D50;
  }

  if (v1)
  {
    v9 = v2;
  }

  else
  {
    v9 = v3;
  }

  if (v1)
  {
    v10 = &unk_18B6E8D90;
  }

  else
  {
    v10 = &unk_18B6E8D70;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v6;
  *(v4 + 32) = v7;
  *(v4 + 40) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v12 + 24) = v9;
  *(v4 + 48) = v10;
  *(v4 + 56) = v12;
  v13 = qword_1EA9C3DA0;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_18B6C435C();
  __swift_project_value_buffer(v14, qword_1EA9CE398);

  v15 = sub_18B6C434C();
  v16 = sub_18B6C596C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v34 + 16);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35 = v19;
    *v18 = 136315650;
    v33 = v19;
    if (*(v17 + 24))
    {
      if (*(v17 + 24) == 1)
      {
        v20 = 0xE600000000000000;
        v21 = 0x7070412D6E49;
      }

      else
      {
        v20 = 0xE800000000000000;
        v21 = 0x73676E6974746553;
      }
    }

    else
    {
      v20 = 0xE200000000000000;
      v21 = 17219;
    }

    v22 = *(v34 + 80);
    v23 = sub_18B4F4244(v21, v20, &v35);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    if (v22)
    {
      v24 = 0x6C6F686563616C70;
    }

    else
    {
      v24 = 0x746E65696C63;
    }

    if (v22)
    {
      v25 = 0xEB00000000726564;
    }

    else
    {
      v25 = 0xE600000000000000;
    }

    if (v22)
    {
      v26 = 0x746E65696C63;
    }

    else
    {
      v26 = 0x6C6F686563616C70;
    }

    if (v22)
    {
      v27 = 0xE600000000000000;
    }

    else
    {
      v27 = 0xEB00000000726564;
    }

    v28 = sub_18B4F4244(v24, v25, &v35);

    *(v18 + 14) = v28;
    *(v18 + 22) = 2080;
    v29 = sub_18B4F4244(v26, v27, &v35);

    *(v18 + 24) = v29;
    _os_log_impl(&dword_18B49C000, v15, v16, "[%s] Sending clear preferred input notification to %s first, then %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x18CFF91B0](v33, -1, -1);
    MEMORY[0x18CFF91B0](v18, -1, -1);
  }

  else
  {
  }

  v30 = *(*(v34 + 16) + 16);
  *(v34 + 64) = v30;
  v31 = swift_allocObject();
  *(v34 + 72) = v31;
  *(v31 + 16) = v4;
  sub_18B6C581C();

  return MEMORY[0x1EEE6DFA0](sub_18B4D387C, v30, 0);
}

uint64_t sub_18B4D387C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_18B51A000(0xD000000000000021, 0x800000018B6FC800, v1, &unk_18B6E8D80, v0[9]);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B4D3950, 0, 0);
}

uint64_t sub_18B4D3950()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B4D39C4()
{
  v1[27] = v0;
  v2 = sub_18B6C584C();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4D3A84, 0, 0);
}

uint64_t sub_18B4D3A84()
{
  v1 = *(*(v0 + 216) + 104);
  *(v0 + 248) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18B4D3AA8, v1, 0);
}

uint64_t sub_18B4D3AA8()
{
  v1 = v0[31];
  v2 = v1[20];
  v0[32] = v2;
  v3 = v1[21];
  v0[33] = v3;
  v0[34] = v1[23];
  v0[35] = v1[25];
  sub_18B4F47EC(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B4D3B30, 0, 0);
}

uint64_t sub_18B4D3B30()
{
  v1 = *(v0 + 264);
  if (v1)
  {
    v2 = *(v0 + 256);
    *(v0 + 312) = *(v0 + 272);
    *(v0 + 304) = v1;
    v3 = swift_task_alloc();
    *(v0 + 328) = v3;
    *v3 = v0;
    v3[1] = sub_18B4D3F40;

    return sub_18B4F7A64(v2, v1);
  }

  else
  {
    v5 = swift_allocObject();
    *(v0 + 288) = v5;
    swift_weakInit();
    sub_18B6C582C();
    v6 = swift_task_alloc();
    *(v0 + 296) = v6;
    *v6 = v0;
    v6[1] = sub_18B4D3D00;
    v7 = *(v0 + 240);

    return sub_18B4EF6C4(v0 + 128, 0xD000000000000019, 0x800000018B6FC5F0, v7, &unk_18B6E88C0, v5);
  }
}

uint64_t sub_18B4D3D00()
{
  v2 = *v0;
  v1 = *v0;
  v3 = *(*v0 + 240);
  v4 = *(*v0 + 232);
  v5 = *(*v0 + 224);
  v6 = *v0;

  (*(v4 + 8))(v3, v5);
  v7 = v1[17];
  if (v7)
  {
    v8 = v2[21];
    v9 = v2[16];
    v2[39] = v2[19];
    v2[40] = v8;
    v2[38] = v7;
    v10 = swift_task_alloc();
    v2[41] = v10;
    *v10 = v6;
    v10[1] = sub_18B4D3F40;

    return sub_18B4F7A64(v9, v7);
  }

  else
  {

    v12 = *(v6 + 8);

    return v12();
  }
}

uint64_t sub_18B4D3F40(uint64_t a1)
{
  *(*v1 + 336) = a1;

  return MEMORY[0x1EEE6DFA0](sub_18B4D40A0, 0, 0);
}

uint64_t sub_18B4D40A0()
{
  v30 = v0;
  v1 = *(v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F98);
  inited = swift_initStackObject();
  v3 = inited;
  *(inited + 16) = xmmword_18B6E6E50;
  v4 = *MEMORY[0x1E6958668];
  *(inited + 32) = *MEMORY[0x1E6958668];
  v5 = *(v1 + 24);
  *(v0 + 384) = v5;
  v6 = 0xD000000000000015;
  if (v5)
  {
    v6 = 0xD000000000000023;
    v7 = "userPreferredInputRoute()";
  }

  else
  {
    v7 = "AVKitRoutingService";
  }

  v8 = v7 | 0x8000000000000000;
  v9 = MEMORY[0x1E69E6158];
  *(inited + 40) = v6;
  *(inited + 48) = v8;
  v10 = *MEMORY[0x1E6958660];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  *(inited + 104) = v9;
  *(inited + 80) = v6;
  *(inited + 88) = v8;
  v11 = v4;
  v12 = v10;
  *(v0 + 344) = sub_18B4F7F0C(v3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FA0);
  swift_arrayDestroy();
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 336);
  v14 = sub_18B6C435C();
  *(v0 + 352) = __swift_project_value_buffer(v14, qword_1EA9CE398);
  v15 = v13;

  v16 = sub_18B6C434C();
  v17 = sub_18B6C596C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v18 = 136315394;
    if (v5)
    {
      if (v5 == 1)
      {
        v21 = 0xE600000000000000;
        v22 = 0x7070412D6E49;
      }

      else
      {
        v21 = 0xE800000000000000;
        v22 = 0x73676E6974746553;
      }
    }

    else
    {
      v21 = 0xE200000000000000;
      v22 = 17219;
    }

    v23 = *(v0 + 336);
    v24 = sub_18B4F4244(v22, v21, &v29);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v15;
    *v19 = v23;
    v25 = v15;
    _os_log_impl(&dword_18B49C000, v16, v17, "[%s] Initializing preferred input device for metering placeholder with id %@", v18, 0x16u);
    sub_18B4A6454(v19, &qword_1EA9C4FA8);
    MEMORY[0x18CFF91B0](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x18CFF91B0](v20, -1, -1);
    MEMORY[0x18CFF91B0](v18, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((*(v0 + 216) + 144), *(*(v0 + 216) + 168));
  v28 = (off_1EFECD040 + *off_1EFECD040);
  v26 = swift_task_alloc();
  *(v0 + 360) = v26;
  *v26 = v0;
  v26[1] = sub_18B4D4490;

  return v28(v0 + 176, &type metadata for MXAVInputContextFactory, &off_1EFECD038);
}

uint64_t sub_18B4D4490()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4D458C, 0, 0);
}

uint64_t sub_18B4D458C()
{
  v1 = v0[43];
  v2 = v0[25];
  v3 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[46] = v4;
  *v4 = v0;
  v4[1] = sub_18B4D46CC;
  v5 = v0[42];

  return v7(v5, v1, v2, v3);
}

uint64_t sub_18B4D46CC(uint64_t a1)
{
  *(*v1 + 376) = a1;

  return MEMORY[0x1EEE6DFA0](sub_18B4D47EC, 0, 0);
}

uint64_t sub_18B4D47EC()
{
  v22 = v0;
  v1 = *(v0 + 376);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  v2 = v1;

  v3 = v2;
  v4 = sub_18B6C434C();
  v5 = sub_18B6C596C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 384);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315394;
    v9 = 0xE600000000000000;
    v10 = 0x7070412D6E49;
    if (v6 != 1)
    {
      v10 = 0x73676E6974746553;
      v9 = 0xE800000000000000;
    }

    if (v6)
    {
      v11 = v10;
    }

    else
    {
      v11 = 17219;
    }

    if (v6)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0xE200000000000000;
    }

    v13 = *(v0 + 376);
    v14 = *(v0 + 336);
    v15 = sub_18B4F4244(v11, v12, &v21);

    *(v7 + 4) = v15;
    *(v7 + 12) = 2048;
    v16 = [v13 status];

    *(v7 + 14) = v16;
    _os_log_impl(&dword_18B49C000, v4, v5, "[%s] set new input on metering placeholder session completed with status %ld", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x18CFF91B0](v8, -1, -1);
    MEMORY[0x18CFF91B0](v7, -1, -1);
  }

  else
  {
    v17 = *(v0 + 376);
    v18 = *(v0 + 336);
  }

  v19 = *(v0 + 8);

  return v19();
}