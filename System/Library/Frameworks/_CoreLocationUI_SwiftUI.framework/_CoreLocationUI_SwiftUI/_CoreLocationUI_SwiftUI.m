_BYTE *LocationButton.init(_:action:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  if (v4 <= 2)
  {
    v5 = 2;
    if (v4 != 1)
    {
      v5 = 3;
    }

    if (*result)
    {
      v6 = v5;
    }

    else
    {
      v6 = 1;
    }

    goto LABEL_11;
  }

  if (v4 == 3)
  {
    v6 = 4;
    goto LABEL_11;
  }

  if (v4 == 4)
  {
    v6 = 5;
LABEL_11:
    *a4 = v6;
    *(a4 + 8) = 0;
    *(a4 + 16) = a2;
    *(a4 + 24) = a3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t LocationButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v27 = sub_23B6B1638(&qword_27E1787C0, &qword_23B6B4F60);
  v2 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v4 = (&v26 - v3);
  v26 = sub_23B6B1638(&qword_27E1787C8, &qword_23B6B4F68);
  v5 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v7 = &v26 - v6;
  v8 = sub_23B6B1638(&qword_27E1787D0, &qword_23B6B4F70);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v18 = *v1;
  v19 = *(v1 + 8);
  v21 = *(v1 + 16);
  v20 = *(v1 + 24);
  *v7 = sub_23B6B4B54();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v22 = sub_23B6B1638(&qword_27E1787D8, &qword_23B6B4F78);
  sub_23B6B1680(v18, v19, v21, v20, &v7[*(v22 + 44)]);

  if (sub_23B6B4CD4())
  {
    v23 = sub_23B6B4CB4();
  }

  else
  {
    v23 = sub_23B6B4CA4();
  }

  v24 = v23;
  sub_23B6B4828(v7, v15, &qword_27E1787C8, &qword_23B6B4F68);
  *&v15[*(v8 + 36)] = v24;
  sub_23B6B4828(v15, v17, &qword_27E1787D0, &qword_23B6B4F70);
  sub_23B6B4890(v17, v12, &qword_27E1787D0, &qword_23B6B4F70);
  sub_23B6B1860();
  *v4 = sub_23B6B4CC4();
  swift_storeEnumTagMultiPayload();
  sub_23B6B198C(&qword_27E1787E8, &qword_27E1787C8, &qword_23B6B4F68);
  sub_23B6B4C14();
  return sub_23B6B4778(v17, &qword_27E1787D0, &qword_23B6B4F70);
}

uint64_t sub_23B6B1638(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23B6B1680@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = swift_getKeyPath();
  *(a5 + 8) = 0;
  *(a5 + 16) = swift_getKeyPath();
  *(a5 + 24) = 0;
  v10 = type metadata accessor for ViewRepresentable();
  v11 = v10[6];
  *(a5 + v11) = swift_getKeyPath();
  sub_23B6B1638(&qword_27E1788E8, &qword_23B6B5258);
  swift_storeEnumTagMultiPayload();
  v12 = v10[7];
  *(a5 + v12) = swift_getKeyPath();
  sub_23B6B1638(&qword_27E1788F0, &qword_23B6B5260);
  swift_storeEnumTagMultiPayload();
  v13 = a5 + v10[8];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = v10[9];
  *(a5 + v14) = swift_getKeyPath();
  sub_23B6B1638(&qword_27E1788C8, &qword_23B6B5240);
  swift_storeEnumTagMultiPayload();
  v15 = v10[10];
  *(a5 + v15) = swift_getKeyPath();
  sub_23B6B1638(&qword_27E1788D8, &qword_23B6B5248);
  swift_storeEnumTagMultiPayload();
  v16 = v10[11];
  *(a5 + v16) = swift_getKeyPath();
  sub_23B6B1638(&qword_27E1788E0, &qword_23B6B5250);
  result = swift_storeEnumTagMultiPayload();
  *(a5 + v10[12]) = 0x4049000000000000;
  *(a5 + v10[13]) = 0x4024000000000000;
  v18 = a5 + v10[14];
  *v18 = a1;
  *(v18 + 8) = a2 & 1;
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  return result;
}

unint64_t sub_23B6B1860()
{
  result = qword_27E1787E0;
  if (!qword_27E1787E0)
  {
    sub_23B6B1944(&qword_27E1787D0, &qword_23B6B4F70);
    sub_23B6B198C(&qword_27E1787E8, &qword_27E1787C8, &qword_23B6B4F68);
    sub_23B6B198C(&qword_27E1787F0, &qword_27E1787F8, &qword_23B6B4F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1787E0);
  }

  return result;
}

uint64_t sub_23B6B1944(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23B6B198C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_23B6B1944(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B6B1A34()
{
  v1 = *v0;
  sub_23B6B4D14();
  MEMORY[0x23EEA2B00](v1);
  return sub_23B6B4D34();
}

uint64_t sub_23B6B1AA8()
{
  v1 = *v0;
  sub_23B6B4D14();
  MEMORY[0x23EEA2B00](v1);
  return sub_23B6B4D34();
}

uint64_t sub_23B6B1B10()
{
  v1 = sub_23B6B4B14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for ViewRepresentable() + 32));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_23B6B4CF4();
    v9 = sub_23B6B4C34();
    sub_23B6B49A4();

    sub_23B6B4B04();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_23B6B1C64@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23B6B4B14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23B6B1638(&qword_27E1788C8, &qword_23B6B5240);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ViewRepresentable();
  sub_23B6B4890(v1 + *(v12 + 36), v11, &qword_27E1788C8, &qword_23B6B5240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23B6B4C54();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23B6B4CF4();
    v16 = sub_23B6B4C34();
    sub_23B6B49A4();

    sub_23B6B4B04();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

__n128 sub_23B6B1E70(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void sub_23B6B1EB4(void *a1)
{
  v2 = v1;
  v111 = a1;
  v3 = sub_23B6B4C54();
  v100 = *(v3 - 8);
  v101 = v3;
  v4 = *(v100 + 64);
  MEMORY[0x28223BE20](v3);
  v99 = &v89[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_23B6B4B14();
  v107 = *(v6 - 8);
  v108 = v6;
  v7 = *(v107 + 64);
  MEMORY[0x28223BE20](v6);
  v106 = &v89[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = sub_23B6B4B44();
  v113 = *(v105 - 8);
  v9 = *(v113 + 64);
  MEMORY[0x28223BE20](v105);
  v93 = &v89[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = sub_23B6B1638(&qword_27E1788B0, &qword_23B6B5238);
  v11 = *(*(v112 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v112);
  v98 = &v89[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v104 = &v89[-v14];
  v15 = sub_23B6B1638(&qword_27E178868, &qword_23B6B50E0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v92 = &v89[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v110 = &v89[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v103 = &v89[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v94 = &v89[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v89[-v26];
  MEMORY[0x28223BE20](v25);
  v29 = &v89[-v28];
  v30 = sub_23B6B49F4();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v89[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v33);
  v37 = &v89[-v36];
  v38 = type metadata accessor for ViewRepresentable();
  v39 = v1 + *(v38 + 28);
  sub_23B6B4398(&qword_27E1788F0, &qword_23B6B5260, MEMORY[0x277CDF8C8], v37);
  sub_23B6B49D4();
  LOBYTE(v39) = sub_23B6B49E4();
  v40 = *(v31 + 8);
  v40(v35, v30);
  v40(v37, v30);
  if (v39)
  {
    v41 = 1;
  }

  else
  {
    v41 = 2;
  }

  v102 = v38;
  v42 = *(v38 + 24);
  v43 = v2;
  v44 = v29;
  v45 = v104;
  v109 = v43;
  v95 = v42;
  sub_23B6B4598(v44);
  sub_23B6B4B34();
  v46 = v113;
  v47 = v105;
  v96 = *(v113 + 56);
  v96(v27, 0, 1, v105);
  v48 = *(v112 + 48);
  sub_23B6B4890(v44, v45, &qword_27E178868, &qword_23B6B50E0);
  sub_23B6B4890(v27, v45 + v48, &qword_27E178868, &qword_23B6B50E0);
  v49 = *(v46 + 48);
  v50 = v49(v45, 1, v47);
  v97 = v41;
  if (v50 == 1)
  {
    sub_23B6B4778(v27, &qword_27E178868, &qword_23B6B50E0);
    sub_23B6B4778(v44, &qword_27E178868, &qword_23B6B50E0);
    if (v49(v45 + v48, 1, v47) == 1)
    {
      sub_23B6B4778(v45, &qword_27E178868, &qword_23B6B50E0);
      v51 = v111;
      v52 = v109;
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v91 = v44;
  v53 = v94;
  sub_23B6B4890(v45, v94, &qword_27E178868, &qword_23B6B50E0);
  if (v49(v45 + v48, 1, v47) == 1)
  {
    sub_23B6B4778(v27, &qword_27E178868, &qword_23B6B50E0);
    sub_23B6B4778(v91, &qword_27E178868, &qword_23B6B50E0);
    (*(v113 + 8))(v53, v47);
LABEL_9:
    sub_23B6B4778(v45, &qword_27E1788B0, &qword_23B6B5238);
    v52 = v109;
    v54 = v110;
    goto LABEL_10;
  }

  v62 = v113;
  v63 = v45 + v48;
  v64 = v93;
  (*(v113 + 32))(v93, v63, v47);
  sub_23B6B48F8(&qword_27E1788C0, MEMORY[0x277CDDEF8]);
  v90 = sub_23B6B4CE4();
  v65 = *(v62 + 8);
  v65(v64, v47);
  sub_23B6B4778(v27, &qword_27E178868, &qword_23B6B50E0);
  sub_23B6B4778(v91, &qword_27E178868, &qword_23B6B50E0);
  v65(v53, v47);
  sub_23B6B4778(v45, &qword_27E178868, &qword_23B6B50E0);
  v54 = v110;
  v51 = v111;
  v52 = v109;
  if (v90)
  {
LABEL_21:
    v59 = 0;
    v66 = v52 + *(v102 + 56);
    if (*(v66 + 8))
    {
      v58 = 1;
    }

    else
    {
      v58 = *v66;
    }

    goto LABEL_24;
  }

LABEL_10:
  v55 = v103;
  sub_23B6B4598(v103);
  sub_23B6B4B24();
  v96(v54, 0, 1, v47);
  v56 = *(v112 + 48);
  v57 = v98;
  sub_23B6B4890(v55, v98, &qword_27E178868, &qword_23B6B50E0);
  sub_23B6B4890(v54, &v57[v56], &qword_27E178868, &qword_23B6B50E0);
  if (v49(v57, 1, v47) == 1)
  {
    sub_23B6B4778(v54, &qword_27E178868, &qword_23B6B50E0);
    sub_23B6B4778(v55, &qword_27E178868, &qword_23B6B50E0);
    if (v49(&v57[v56], 1, v47) == 1)
    {
      sub_23B6B4778(v57, &qword_27E178868, &qword_23B6B50E0);
      v58 = 0;
      v59 = v97;
      v51 = v111;
      goto LABEL_24;
    }
  }

  else
  {
    v60 = v92;
    sub_23B6B4890(v57, v92, &qword_27E178868, &qword_23B6B50E0);
    if (v49(&v57[v56], 1, v47) != 1)
    {
      v83 = v47;
      v84 = v113;
      v85 = &v57[v56];
      v86 = v93;
      (*(v113 + 32))(v93, v85, v83);
      sub_23B6B48F8(&qword_27E1788C0, MEMORY[0x277CDDEF8]);
      v87 = sub_23B6B4CE4();
      v88 = *(v84 + 8);
      v88(v86, v83);
      sub_23B6B4778(v110, &qword_27E178868, &qword_23B6B50E0);
      sub_23B6B4778(v103, &qword_27E178868, &qword_23B6B50E0);
      v88(v60, v83);
      sub_23B6B4778(v57, &qword_27E178868, &qword_23B6B50E0);
      v51 = v111;
      if (v87)
      {
        v58 = 0;
        v59 = v97;
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    sub_23B6B4778(v110, &qword_27E178868, &qword_23B6B50E0);
    sub_23B6B4778(v103, &qword_27E178868, &qword_23B6B50E0);
    (*(v113 + 8))(v60, v47);
  }

  sub_23B6B4778(v57, &qword_27E1788B0, &qword_23B6B5238);
  v51 = v111;
LABEL_16:
  v61 = v52 + *(v102 + 56);
  if (*(v61 + 8))
  {
    v58 = 1;
  }

  else
  {
    v58 = *v61;
  }

  v59 = v97;
LABEL_24:
  [v51 setLabel_];
  [v51 setIcon_];
  v67 = v52[2];
  v68 = *(v52 + 24);

  if ((v68 & 1) == 0)
  {
    sub_23B6B4CF4();
    v69 = sub_23B6B4C34();
    sub_23B6B49A4();

    v70 = v106;
    sub_23B6B4B04();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v107 + 8))(v70, v108);
    v67 = v114;
  }

  if (!v67)
  {
    sub_23B6B4C94();
  }

  sub_23B6B47D8();
  v71 = sub_23B6B4D04();
  [v51 setBackgroundColor_];

  v72 = *v52;
  v73 = *(v52 + 8);

  if ((v73 & 1) == 0)
  {
    sub_23B6B4CF4();
    v74 = sub_23B6B4C34();
    sub_23B6B49A4();

    v75 = v106;
    sub_23B6B4B04();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v107 + 8))(v75, v108);
    v72 = v114;
  }

  if (!v72)
  {
    sub_23B6B4CB4();
  }

  v76 = sub_23B6B4D04();
  [v51 setTintColor_];

  if (!sub_23B6B1B10())
  {
    v78 = 0;
    if ((sub_23B6B4CD4() & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v77 = v99;
  sub_23B6B1C64(v99);
  v78 = sub_23B6B4C44();

  (*(v100 + 8))(v77, v101);
  [v78 pointSize];
  v80 = [objc_opt_self() systemFontOfSize_];
  [v80 pointSize];
  v82 = v81;

  [v51 setFontSize_];
  if (sub_23B6B4CD4())
  {
LABEL_34:
    [v51 setControlSize_];
    [v51 setCornerRadius_];
  }

LABEL_35:
  [v51 updateConstraints];
}

uint64_t sub_23B6B2BD8()
{
  v20 = sub_23B6B4B14();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23B6B1638(&qword_27E1788E0, &qword_23B6B5250);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v19 - v7);
  v9 = sub_23B6B49B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ViewRepresentable();
  sub_23B6B4890(v0 + *(v14 + 44), v8, &qword_27E1788E0, &qword_23B6B5250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    v15 = *v8;
    sub_23B6B4CF4();
    v16 = sub_23B6B4C34();
    sub_23B6B49A4();

    sub_23B6B4B04();
    swift_getAtKeyPath();

    (*(v1 + 8))(v4, v20);
  }

  v17 = (*(v10 + 88))(v13, v9);
  result = 1;
  if (v17 != *MEMORY[0x277CDF418] && v17 != *MEMORY[0x277CDF438])
  {
    if (v17 == *MEMORY[0x277CDF440])
    {
      return 0;
    }

    else
    {
      result = 2;
      if (v17 != *MEMORY[0x277CDF420] && v17 != *MEMORY[0x277CDF410])
      {
        (*(v10 + 8))(v13, v9);
        return 2;
      }
    }
  }

  return result;
}

double sub_23B6B2EEC()
{
  v1 = v0;
  v2 = sub_23B6B4A44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v24 = type metadata accessor for ViewRepresentable();
  v13 = v24[10];
  sub_23B6B4398(&qword_27E1788D8, &qword_23B6B5248, MEMORY[0x277CDDBB8], v12);
  v14 = sub_23B6B4A04();
  v16 = v15;
  v17 = *(v3 + 8);
  v17(v12, v2);
  if (v16)
  {
    sub_23B6B4398(&qword_27E1788D8, &qword_23B6B5248, MEMORY[0x277CDDBB8], v10);
    sub_23B6B4A34();
    sub_23B6B48F8(&qword_27E1788D0, MEMORY[0x277CDDBB8]);
    v18 = sub_23B6B4CE4();
    v17(v7, v2);
    if (v18 & 1) != 0 || (sub_23B6B4A24(), v19 = sub_23B6B4CE4(), v17(v7, v2), (v19))
    {
      v17(v10, v2);
    }

    else
    {
      sub_23B6B4A14();
      v22 = sub_23B6B4CE4();
      v17(v7, v2);
      v17(v10, v2);
      if (v22)
      {
        v20 = v24[13];
        return *(v1 + v20);
      }
    }

    v20 = v24[12];
    return *(v1 + v20);
  }

  return *&v14;
}

id sub_23B6B31BC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBFCF8]) init];
  sub_23B6B1638(&qword_27E1788F8, &qword_23B6B5268);
  sub_23B6B4C24();
  [v0 addTarget:v2 action:sel_action forControlEvents:64];

  return v0;
}

id sub_23B6B3254@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (v2 + *(a1 + 56));
  v5 = *v4;
  v6 = *(v4 + 8);
  v8 = v4[2];
  v7 = v4[3];
  v9 = type metadata accessor for Coordinator();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC23_CoreLocationUI_SwiftUIP33_8A043ABF03A1FE75D0192BCB51A8BCAD11Coordinator_config];
  *v11 = v5;
  v11[8] = v6;
  *(v11 + 2) = v8;
  *(v11 + 3) = v7;
  v13.receiver = v10;
  v13.super_class = v9;

  result = objc_msgSendSuper2(&v13, sel_init);
  *a2 = result;
  return result;
}

uint64_t sub_23B6B3334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B6B48F8(&qword_27E178900, type metadata accessor for ViewRepresentable);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23B6B33C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B6B48F8(&qword_27E178900, type metadata accessor for ViewRepresentable);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23B6B345C()
{
  sub_23B6B48F8(&qword_27E178900, type metadata accessor for ViewRepresentable);
  sub_23B6B4BF4();
  __break(1u);
}

id sub_23B6B353C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23B6B35B0()
{
  result = qword_27E178808;
  if (!qword_27E178808)
  {
    sub_23B6B1944(&qword_27E178810, &qword_23B6B5058);
    sub_23B6B198C(&qword_27E1787E8, &qword_27E1787C8, &qword_23B6B4F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E178808);
  }

  return result;
}

uint64_t sub_23B6B366C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23B6B3700(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23B6B37D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B6B381C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_23B6B3880(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23B6B1638(&qword_27E178818, &qword_23B6B5098);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_11:
    v14 = *(v8 + 48);

    return v14(a1 + v9, a2, v7);
  }

  v10 = sub_23B6B1638(&qword_27E178820, &qword_23B6B50A0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_11;
  }

  v11 = sub_23B6B1638(&qword_27E178828, &qword_23B6B50A8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[9];
    goto LABEL_11;
  }

  v12 = sub_23B6B1638(&qword_27E178830, &qword_23B6B50B0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[10];
    goto LABEL_11;
  }

  v13 = sub_23B6B1638(&qword_27E178838, &qword_23B6B50B8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v7 = v13;
    v8 = *(v13 - 8);
    v9 = a3[11];
    goto LABEL_11;
  }

  v16 = *(a1 + a3[14] + 16);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_23B6B3AB4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23B6B1638(&qword_27E178818, &qword_23B6B5098);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    v12 = sub_23B6B1638(&qword_27E178820, &qword_23B6B50A0);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[7];
    }

    else
    {
      v13 = sub_23B6B1638(&qword_27E178828, &qword_23B6B50A8);
      if (*(*(v13 - 8) + 84) == a3)
      {
        v9 = v13;
        v10 = *(v13 - 8);
        v11 = a4[9];
      }

      else
      {
        v14 = sub_23B6B1638(&qword_27E178830, &qword_23B6B50B0);
        if (*(*(v14 - 8) + 84) == a3)
        {
          v9 = v14;
          v10 = *(v14 - 8);
          v11 = a4[10];
        }

        else
        {
          result = sub_23B6B1638(&qword_27E178838, &qword_23B6B50B8);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[14] + 16) = (a2 - 1);
            return result;
          }

          v9 = result;
          v10 = *(result - 8);
          v11 = a4[11];
        }
      }
    }
  }

  v16 = *(v10 + 56);

  return v16(a1 + v11, a2, a2, v9);
}

uint64_t type metadata accessor for ViewRepresentable()
{
  result = qword_27E178840;
  if (!qword_27E178840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B6B3D1C()
{
  sub_23B6B3EE4(319, &qword_27E178850, &qword_27E178858, &qword_23B6B50D8);
  if (v0 <= 0x3F)
  {
    sub_23B6B3EE4(319, &qword_27E178860, &qword_27E178868, &qword_23B6B50E0);
    if (v1 <= 0x3F)
    {
      sub_23B6B3F38(319, &qword_27E178870, MEMORY[0x277CDF8C8]);
      if (v2 <= 0x3F)
      {
        sub_23B6B3EE4(319, &qword_27E178878, &qword_27E178880, qword_23B6B50E8);
        if (v3 <= 0x3F)
        {
          sub_23B6B3F38(319, &qword_27E178888, MEMORY[0x277CE0A00]);
          if (v4 <= 0x3F)
          {
            sub_23B6B3F38(319, &qword_27E178890, MEMORY[0x277CDDBB8]);
            if (v5 <= 0x3F)
            {
              sub_23B6B3F38(319, &qword_27E178898, MEMORY[0x277CDF450]);
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

void sub_23B6B3EE4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_23B6B1944(a3, a4);
    v5 = sub_23B6B49C4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23B6B3F38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23B6B49C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23B6B3F90()
{
  result = qword_27E1788A0;
  if (!qword_27E1788A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1788A0);
  }

  return result;
}

uint64_t sub_23B6B4038@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x23EEA28B0]();
  *a1 = result;
  return result;
}

uint64_t sub_23B6B4064@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B6B4A54();
  *a1 = result;
  return result;
}

uint64_t sub_23B6B4090(uint64_t *a1)
{
  v1 = *a1;

  return sub_23B6B4A64();
}

uint64_t sub_23B6B40E0(uint64_t a1)
{
  v2 = sub_23B6B1638(&qword_27E178868, &qword_23B6B50E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23B6B4890(a1, &v6 - v4, &qword_27E178868, &qword_23B6B50E0);
  return sub_23B6B4AB4();
}

uint64_t sub_23B6B41D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B6B4AE4();
  *a1 = result;
  return result;
}

uint64_t sub_23B6B4204(uint64_t *a1)
{
  v1 = *a1;

  return sub_23B6B4AF4();
}

uint64_t sub_23B6B42C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_23B6B4398@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_23B6B4B14();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23B6B1638(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v23 - v17);
  sub_23B6B4890(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_23B6B4CF4();
    v22 = sub_23B6B4C34();
    sub_23B6B49A4();

    sub_23B6B4B04();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_23B6B4598@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23B6B4B14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23B6B1638(&qword_27E1788E8, &qword_23B6B5258);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_23B6B4890(v2, &v16 - v11, &qword_27E1788E8, &qword_23B6B5258);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23B6B4828(v12, a1, &qword_27E178868, &qword_23B6B50E0);
  }

  v14 = *v12;
  sub_23B6B4CF4();
  v15 = sub_23B6B4C34();
  sub_23B6B49A4();

  sub_23B6B4B04();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_23B6B4778(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_23B6B1638(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_23B6B47D8()
{
  result = qword_27E1788B8;
  if (!qword_27E1788B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1788B8);
  }

  return result;
}

uint64_t sub_23B6B4828(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_23B6B1638(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B6B4890(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_23B6B1638(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B6B48F8(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for CLLocationButtonLabel()
{
  if (!qword_27E178908)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27E178908);
    }
  }
}