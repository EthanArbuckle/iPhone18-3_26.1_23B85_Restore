uint64_t sub_2385A0F30(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875B940();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v112 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v104 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v104 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B0D8, &qword_238772730);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v113 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v104 - v22;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v104 - v26;
  if ((MEMORY[0x23EE5F1E0](a1, a2, v25) & 1) == 0)
  {
    goto LABEL_82;
  }

  v109 = v8;
  v110 = v5;
  v111 = type metadata accessor for ReturnDetails.ViewModel(0);
  v28 = v111[5];
  v29 = (a1 + v28);
  v30 = (a2 + v28);
  v31 = *(a1 + v28 + 8);
  v32 = *(a2 + v28 + 8);
  if (v31)
  {
    if (!v32 || (*v29 != *v30 || v31 != v32) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (v32)
  {
    goto LABEL_82;
  }

  v108 = v4;
  v33 = type metadata accessor for MerchantImage.ViewModel(0);
  if ((MEMORY[0x23EE5FA60](v29 + *(v33 + 20), v30 + *(v33 + 20)) & 1) == 0)
  {
    goto LABEL_82;
  }

  v34 = *(v33 + 24);
  v35 = *(v29 + v34);
  v36 = *(v29 + v34 + 8);
  v37 = (v30 + v34);
  if ((v35 != *v37 || v36 != v37[1]) && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_82;
  }

  v38 = v111;
  if (!sub_238541108((a1 + v111[6]), (a2 + v111[6])) || !sub_23869BB40(a1 + v38[7], a2 + v38[7]))
  {
    goto LABEL_82;
  }

  v39 = v38[8];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = v42[1];
  if (v41)
  {
    if (!v43 || (*v40 != *v42 || v41 != v43) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (v43)
  {
    goto LABEL_82;
  }

  v44 = v38[9];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  v48 = v47[1];
  if (v46)
  {
    if (!v48 || (*v45 != *v47 || v46 != v48) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (v48)
  {
    goto LABEL_82;
  }

  if ((sub_238518CAC(*(a1 + v38[10]), *(a2 + v38[10])) & 1) == 0)
  {
    goto LABEL_82;
  }

  v49 = v38[11];
  v50 = (a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (a2 + v49);
  v53 = v52[1];
  if (v51)
  {
    if (!v53 || (*v50 != *v52 || v51 != v53) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (v53)
  {
    goto LABEL_82;
  }

  v54 = v38[12];
  v55 = (a1 + v54);
  v56 = *(a1 + v54 + 8);
  v57 = (a2 + v54);
  v58 = v57[1];
  if (v56)
  {
    if (!v58 || (*v55 != *v57 || v56 != v58) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (v58)
  {
    goto LABEL_82;
  }

  v59 = v38[13];
  v60 = (a1 + v59);
  v61 = *(a1 + v59 + 8);
  v62 = (a2 + v59);
  v63 = v62[1];
  if (v61)
  {
    if (!v63 || (*v60 != *v62 || v61 != v63) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (v63)
  {
    goto LABEL_82;
  }

  v64 = v38[14];
  v65 = (a1 + v64);
  v66 = *(a1 + v64 + 8);
  v67 = (a2 + v64);
  v68 = v67[1];
  if (v66)
  {
    if (!v68 || (*v65 != *v67 || v66 != v68) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_82;
    }
  }

  else if (v68)
  {
    goto LABEL_82;
  }

  v69 = v38[15];
  v70 = *(v18 + 48);
  sub_23843981C(a1 + v69, v27, &qword_27DF0D040, &qword_2387676A0);
  v107 = v70;
  sub_23843981C(a2 + v69, &v27[v70], &qword_27DF0D040, &qword_2387676A0);
  v71 = v110 + 48;
  v72 = *(v110 + 48);
  v73 = v108;
  v74 = v72(v27, 1, v108);
  v105 = v72;
  v106 = v71;
  if (v74 == 1)
  {
    if (v72(&v27[v107], 1, v73) == 1)
    {
      sub_238439884(v27, &qword_27DF0D040, &qword_2387676A0);
      goto LABEL_65;
    }

LABEL_63:
    v75 = v27;
LABEL_81:
    sub_238439884(v75, &qword_27DF0B0D8, &qword_238772730);
    goto LABEL_82;
  }

  sub_23843981C(v27, v17, &qword_27DF0D040, &qword_2387676A0);
  if (v72(&v27[v107], 1, v73) == 1)
  {
    (*(v110 + 8))(v17, v108);
    goto LABEL_63;
  }

  v76 = v110;
  v77 = v108;
  (*(v110 + 32))(v109, &v27[v107], v108);
  sub_2385A1A4C(&qword_27DF0B0E0, MEMORY[0x277CC9260]);
  LODWORD(v107) = sub_23875E9E0();
  v78 = *(v76 + 8);
  v78(v109, v77);
  v78(v17, v77);
  sub_238439884(v27, &qword_27DF0D040, &qword_2387676A0);
  if ((v107 & 1) == 0)
  {
    goto LABEL_82;
  }

LABEL_65:
  v79 = v111[16];
  v80 = *(v18 + 48);
  sub_23843981C(a1 + v79, v23, &qword_27DF0D040, &qword_2387676A0);
  sub_23843981C(a2 + v79, &v23[v80], &qword_27DF0D040, &qword_2387676A0);
  if (v105(v23, 1, v108) != 1)
  {
    sub_23843981C(v23, v14, &qword_27DF0D040, &qword_2387676A0);
    if (v105(&v23[v80], 1, v108) != 1)
    {
      v82 = v109;
      v81 = v110;
      v83 = v108;
      (*(v110 + 32))(v109, &v23[v80], v108);
      sub_2385A1A4C(&qword_27DF0B0E0, MEMORY[0x277CC9260]);
      v84 = sub_23875E9E0();
      v85 = *(v81 + 8);
      v85(v82, v83);
      v85(v14, v83);
      sub_238439884(v23, &qword_27DF0D040, &qword_2387676A0);
      if ((v84 & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_72;
    }

    (*(v110 + 8))(v14, v108);
    goto LABEL_70;
  }

  if (v105(&v23[v80], 1, v108) != 1)
  {
LABEL_70:
    v75 = v23;
    goto LABEL_81;
  }

  sub_238439884(v23, &qword_27DF0D040, &qword_2387676A0);
LABEL_72:
  v86 = v111[17];
  v87 = *(a1 + v86);
  v88 = *(a1 + v86 + 8);
  v89 = (a2 + v86);
  if ((v87 != *v89 || v88 != v89[1]) && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_82;
  }

  v90 = v111[18];
  v91 = *(v18 + 48);
  v92 = v113;
  sub_23843981C(a1 + v90, v113, &qword_27DF0D040, &qword_2387676A0);
  sub_23843981C(a2 + v90, v92 + v91, &qword_27DF0D040, &qword_2387676A0);
  if (v105(v92, 1, v108) == 1)
  {
    if (v105((v113 + v91), 1, v108) == 1)
    {
      sub_238439884(v113, &qword_27DF0D040, &qword_2387676A0);
LABEL_85:
      v94 = sub_238519644(*(a1 + v111[19]), *(a2 + v111[19]));
      return v94 & 1;
    }

    goto LABEL_80;
  }

  v93 = v113;
  sub_23843981C(v113, v112, &qword_27DF0D040, &qword_2387676A0);
  if (v105((v93 + v91), 1, v108) == 1)
  {
    (*(v110 + 8))(v112, v108);
LABEL_80:
    v75 = v113;
    goto LABEL_81;
  }

  v97 = v109;
  v96 = v110;
  v98 = v113;
  v99 = v113 + v91;
  v100 = v108;
  (*(v110 + 32))(v109, v99, v108);
  sub_2385A1A4C(&qword_27DF0B0E0, MEMORY[0x277CC9260]);
  v101 = v112;
  v102 = sub_23875E9E0();
  v103 = *(v96 + 8);
  v103(v97, v100);
  v103(v101, v100);
  sub_238439884(v98, &qword_27DF0D040, &qword_2387676A0);
  if (v102)
  {
    goto LABEL_85;
  }

LABEL_82:
  v94 = 0;
  return v94 & 1;
}

uint64_t sub_2385A19D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385A1A4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2385A1A94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385A1B04(uint64_t a1)
{
  v2 = type metadata accessor for ReturnDetailsContentsSection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2385A1B68()
{
  result = qword_27DF0F288;
  if (!qword_27DF0F288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F280, &qword_238772480);
    sub_2385A1C20();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F288);
  }

  return result;
}

unint64_t sub_2385A1C20()
{
  result = qword_27DF0F290;
  if (!qword_27DF0F290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F298, &qword_238772488);
    sub_2385A1CD8();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F290);
  }

  return result;
}

unint64_t sub_2385A1CD8()
{
  result = qword_27DF0F2A0;
  if (!qword_27DF0F2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F2A8, &qword_238772490);
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F2A0);
  }

  return result;
}

unint64_t sub_2385A1D9C()
{
  result = qword_27DF0F2C0;
  if (!qword_27DF0F2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F2B8, &qword_238772498);
    sub_2385A1E54();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F2C0);
  }

  return result;
}

unint64_t sub_2385A1E54()
{
  result = qword_27DF0F2C8;
  if (!qword_27DF0F2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F2D0, &qword_2387724A0);
    sub_2385A1F0C();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F2C8);
  }

  return result;
}

unint64_t sub_2385A1F0C()
{
  result = qword_27DF0F2D8;
  if (!qword_27DF0F2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F2E0, &qword_2387724A8);
    sub_23843A3E8(&qword_27DF0F2E8, &qword_27DF0F2F0, &qword_2387724B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F2D8);
  }

  return result;
}

unint64_t sub_2385A1FD0()
{
  result = qword_27DF0F308;
  if (!qword_27DF0F308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F300, &qword_2387724B8);
    sub_2385A2088();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F308);
  }

  return result;
}

unint64_t sub_2385A2088()
{
  result = qword_27DF0F310;
  if (!qword_27DF0F310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F318, &qword_2387724C0);
    sub_2385A2140();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F310);
  }

  return result;
}

unint64_t sub_2385A2140()
{
  result = qword_27DF0F320;
  if (!qword_27DF0F320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F328, &qword_2387724C8);
    sub_23843A3E8(&qword_27DF0F330, &qword_27DF0F338, &qword_2387724D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F320);
  }

  return result;
}

unint64_t sub_2385A2204()
{
  result = qword_27DF0F350;
  if (!qword_27DF0F350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F348, &qword_2387724D8);
    sub_2385A22BC();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F350);
  }

  return result;
}

unint64_t sub_2385A22BC()
{
  result = qword_27DF0F358;
  if (!qword_27DF0F358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F360, &qword_2387724E0);
    sub_2385A2374();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F358);
  }

  return result;
}

unint64_t sub_2385A2374()
{
  result = qword_27DF0F368;
  if (!qword_27DF0F368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F370, &qword_2387724E8);
    sub_2385A2404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F368);
  }

  return result;
}

unint64_t sub_2385A2404()
{
  result = qword_27DF0F378;
  if (!qword_27DF0F378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F380, &qword_2387724F0);
    sub_2385A24BC();
    sub_23843A3E8(&qword_27DF0B398, &qword_27DF0B3A0, &qword_23876A9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F378);
  }

  return result;
}

unint64_t sub_2385A24BC()
{
  result = qword_27DF0F388;
  if (!qword_27DF0F388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F390, &qword_2387724F8);
    sub_238532714();
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F388);
  }

  return result;
}

uint64_t objectdestroyTm_17()
{
  v54 = type metadata accessor for ReturnDetails(0);
  v60 = *(*(v54 - 1) + 80);
  v57 = *(*(v54 - 1) + 64);
  v59 = sub_23875B940();
  v1 = *(v59 - 8);
  v55 = *(v1 + 80);
  v56 = *(v1 + 64);
  v61 = v0;
  v58 = (v60 + 16) & ~v60;
  v2 = v0 + v58;
  v3 = sub_23875A710();
  (*(*(v3 - 8) + 8))(v0 + v58, v3);
  v4 = type metadata accessor for ReturnDetails.ViewModel(0);
  v5 = v0 + v58 + v4[5];
  v6 = *(v5 + 8);

  v7 = type metadata accessor for MerchantImage.ViewModel(0);
  v8 = *(v7 + 20);
  v9 = sub_23875AF90();
  v10 = *(*(v9 - 8) + 8);
  v10(v5 + v8, v9);
  v11 = *(v5 + *(v7 + 24) + 8);

  v12 = v2 + v4[6];
  v13 = *(v12 + 8);

  v10(v12 + *(v7 + 20), v9);
  v14 = *(v12 + *(v7 + 24) + 8);

  v15 = *(type metadata accessor for ReturnDetailsHeader.ViewModel(0) + 20);
  v16 = sub_23875BC40();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (!v18(v12 + v15, 1, v16))
  {
    (*(v17 + 8))(v12 + v15, v16);
  }

  v19 = v2 + v4[7];
  v20 = sub_23875AD40();
  (*(*(v20 - 8) + 8))(v19, v20);
  v21 = type metadata accessor for ReturnDetailsStatusLabel.ViewModel(0);
  v22 = *(v21 + 20);
  if (!v18(v19 + v22, 1, v16))
  {
    (*(v17 + 8))(v19 + v22, v16);
  }

  v23 = v19 + *(v21 + 24);
  v24 = type metadata accessor for OrderDetailsNote(0);
  if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v28 = *(v23 + 8);

      v29 = *(v23 + 24);

      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
      v31 = sub_23875AD80();
      (*(*(v31 - 8) + 8))(v23 + v30, v31);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      v26 = *(v23 + 8);

      v27 = *(v23 + 24);
    }
  }

  v32 = *(v2 + v4[8] + 8);

  v33 = *(v2 + v4[9] + 8);

  v34 = *(v2 + v4[10]);

  v35 = *(v2 + v4[11] + 8);

  v36 = *(v2 + v4[12] + 8);

  v37 = *(v2 + v4[13] + 8);

  v38 = *(v2 + v4[14] + 8);

  v39 = v4[15];
  v40 = *(v1 + 48);
  if (!v40(v2 + v39, 1, v59))
  {
    (*(v1 + 8))(v2 + v39, v59);
  }

  v41 = v4[16];
  if (!v40(v2 + v41, 1, v59))
  {
    (*(v1 + 8))(v2 + v41, v59);
  }

  v42 = *(v2 + v4[17] + 8);

  v43 = v4[18];
  if (!v40(v2 + v43, 1, v59))
  {
    (*(v1 + 8))(v2 + v43, v59);
  }

  v44 = *(v2 + v4[19]);

  v45 = *(v2 + v54[5] + 80);

  v46 = v54[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = sub_23875C6D0();
    (*(*(v47 - 8) + 8))(v2 + v46, v47);
  }

  else
  {
    v48 = *(v2 + v46);
  }

  v49 = v54[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = sub_23875C880();
    (*(*(v50 - 8) + 8))(v2 + v49, v50);
  }

  else
  {
    v51 = *(v2 + v49);
  }

  v52 = (v58 + v57 + v55) & ~v55;
  (*(v1 + 8))(v61 + v52, v59);

  return MEMORY[0x2821FE8E8](v61, v52 + v56, v60 | v55 | 7);
}

uint64_t sub_2385A2C08()
{
  v0 = *(type metadata accessor for ReturnDetails(0) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(*(sub_23875B940() - 8) + 80);
  return sub_23859EDA4();
}

void sub_2385A2D50()
{
  type metadata accessor for OrderDetailsShippingAddress.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_23859FD98(319, &qword_27DF0A0B0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2385A2E20()
{
  sub_23859FD98(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23875AD80();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2385A2EC8()
{
  v1 = sub_23875AD80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OrderDetailsShippingAddress.ViewModel(0);
  (*(v2 + 16))(v5, v0 + *(v6 + 20), v1);
  v7 = (*(v2 + 88))(v5, v1);
  if (v7 == *MEMORY[0x277CC8440] || v7 == *MEMORY[0x277CC8438])
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v8 = qword_2814F1B90;
    v9 = sub_23875EA50();
    v10 = sub_23875EA50();
    v11 = sub_23875EA50();
    v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

    v13 = sub_23875EA80();
    return v13;
  }

  else
  {
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_23875F470();
    MEMORY[0x23EE63650](0xD000000000000016, 0x800000023878BC10);
    sub_23875F510();
    result = sub_23875F520();
    __break(1u);
  }

  return result;
}

uint64_t sub_2385A3168(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (v5)
    {
      if (*a1 == *a2 && v4 == v5)
      {
        goto LABEL_8;
      }

      v7 = a3;
      v8 = sub_23875F630();
      a3 = v7;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:
  v9 = *(a3 + 20);

  return sub_23875AD70();
}

uint64_t sub_2385A3228@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F3D0, &qword_2387725E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v59 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F3D8, &qword_2387725E8);
  v8 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v75 = &v59 - v9;
  v74 = sub_23875C950();
  v69 = *(v74 - 8);
  v10 = *(v69 + 64);
  MEMORY[0x28223BE20](v74);
  v67 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OrderDetailsShippingAddress(0);
  v64 = *(v12 - 8);
  v13 = *(v64 + 64);
  MEMORY[0x28223BE20](v12);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F3E0, &qword_2387725F0);
  v65 = *(v70 - 8);
  v14 = *(v65 + 64);
  MEMORY[0x28223BE20](v70);
  v16 = &v59 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F3E8, &qword_2387725F8);
  v68 = *(v73 - 8);
  v17 = *(v68 + 64);
  MEMORY[0x28223BE20](v73);
  v66 = &v59 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F3F0, &qword_238772600);
  v20 = *(*(v19 - 8) + 64);
  v24.n128_f64[0] = MEMORY[0x28223BE20](v19);
  v71 = &v59 - v25;
  v26 = v2[1];
  if (!v26)
  {
    goto LABEL_9;
  }

  v27 = *v2;
  v28 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v28 = *v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    v60 = v23;
    v61 = v22;
    v62 = v4;
    v63 = a1;
    v77 = 10;
    v78 = 0xE100000000000000;
    MEMORY[0x28223BE20](v21);
    *(&v59 - 2) = &v77;
    swift_bridgeObjectRetain_n();
    v30 = sub_2385A4F48(0x7FFFFFFFFFFFFFFFLL, 1, sub_2385A5308, (&v59 - 4), v27, v26, v29);
    if (*(v30 + 16) < 2uLL)
    {

      *v7 = sub_23875D030();
      *(v7 + 1) = 0x4000000000000000;
      v7[16] = 0;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F3F8, &unk_238772608);
      sub_2385A4AA8(v27, v26, &v7[*(v43 + 44)]);

      sub_23843981C(v7, v75, &qword_27DF0F3D0, &qword_2387725E0);
      swift_storeEnumTagMultiPayload();
      v44 = sub_23843A3E8(&qword_27DF0F400, &qword_27DF0F3E0, &qword_2387725F0);
      v45 = sub_2385A5494(&qword_27DF0A778, MEMORY[0x277CDDB18]);
      v77 = v70;
      v78 = v74;
      v79 = v44;
      v80 = v45;
      swift_getOpaqueTypeConformance2();
      sub_23843A3E8(&qword_27DF0F408, &qword_27DF0F3D0, &qword_2387725E0);
      v46 = v71;
      sub_23875D1B0();
      sub_238439884(v7, &qword_27DF0F3D0, &qword_2387725E0);
LABEL_14:
      v58 = v63;
      sub_238413E14(v46, v63);
      return (*(v60 + 56))(v58, 0, 1, v61);
    }

    v31 = v30;
    v32 = v2 + *(v12 + 20);
    v33 = *v32;
    v34 = *(v32 + 1);
    LOBYTE(v77) = v33;
    v78 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
    sub_23875E1B0();
    if (v76 != 1)
    {
LABEL_13:

      sub_2385A5360(v2, &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      v47 = (*(v64 + 80) + 16) & ~*(v64 + 80);
      v48 = swift_allocObject();
      v49 = sub_2385A53C4(&v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v48 + v47);
      MEMORY[0x28223BE20](v49);
      *(&v59 - 4) = v2;
      *(&v59 - 3) = v27;
      *(&v59 - 2) = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F410, &qword_238772618);
      sub_23843A3E8(&qword_27DF0F418, &qword_27DF0F410, &qword_238772618);
      sub_23875E200();

      v50 = v67;
      sub_23875C940();
      v51 = sub_23843A3E8(&qword_27DF0F400, &qword_27DF0F3E0, &qword_2387725F0);
      v52 = sub_2385A5494(&qword_27DF0A778, MEMORY[0x277CDDB18]);
      v53 = v66;
      v54 = v70;
      v55 = v74;
      sub_23875DB30();
      (*(v69 + 8))(v50, v55);
      (*(v65 + 8))(v16, v54);
      v56 = v68;
      v57 = v73;
      (*(v68 + 16))(v75, v53, v73);
      swift_storeEnumTagMultiPayload();
      v77 = v54;
      v78 = v55;
      v79 = v51;
      v80 = v52;
      swift_getOpaqueTypeConformance2();
      sub_23843A3E8(&qword_27DF0F408, &qword_27DF0F3D0, &qword_2387725E0);
      v46 = v71;
      sub_23875D1B0();
      (*(v56 + 8))(v53, v57);
      goto LABEL_14;
    }

    if (v31[2])
    {
      v36 = v31;
      v37 = v31[4];
      v38 = v31[5];
      v39 = v31[6];
      v40 = v36[7];

      v27 = MEMORY[0x23EE635F0](v37, v38, v39, v40);
      v26 = v41;
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    v42 = *(v23 + 56);

    return v42(a1, 1, 1, v24);
  }

  return result;
}

uint64_t sub_2385A3B9C(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for OrderDetailsShippingAddress(0) + 20));
  v6 = *v2;
  v7 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  v3 = sub_23875E1B0();
  if (v5 == 1)
  {
    MEMORY[0x28223BE20](v3);
    sub_23875E500();
    sub_23875C6F0();
  }
}

uint64_t sub_2385A3CF8(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for OrderDetailsShippingAddress(0) + 20));
  v3 = *v2;
  v4 = *(v2 + 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1B0();
  sub_23875E1C0();
}

uint64_t sub_2385A3E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a4 = sub_23875CE60();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F420, &qword_238772620);
  sub_2385A3F04(a1, a2, a3, a4 + *(v8 + 44));
}

uint64_t sub_2385A3F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a2;
  v51 = a3;
  v55 = a4;
  v5 = sub_23875CE20();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v5);
  v47 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F428, &qword_238772628);
  v52 = *(v54 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F430, &qword_238772630);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F438, &qword_238772638);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v47 - v26;
  sub_23875ED50();
  v53 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v27 = sub_23875D030();
  *(v27 + 1) = 0x4000000000000000;
  v27[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F440, &qword_238772640);
  sub_2385A446C(a1, v50, v51, &v27[*(v28 + 44)]);
  v29 = &v27[*(v21 + 52)];
  strcpy(v29, "textContainer");
  *(v29 + 7) = -4864;
  v30 = a1 + *(type metadata accessor for OrderDetailsShippingAddress(0) + 20);
  v31 = *v30;
  v32 = *(v30 + 8);
  v57 = v31;
  v58 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1B0();
  v33 = 1;
  v34 = v54;
  if (v56 == 1)
  {
    sub_23875D2B0();
    sub_23875E590();
    v36 = v35;
    v38 = v37;
    v39 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F450, &qword_238772650) + 36)];
    *v39 = 0x3FF921FB54442D18;
    *(v39 + 1) = v36;
    *(v39 + 2) = v38;
    sub_23875CE10();
    v40 = v48;
    v41 = v49;
    (*(v48 + 16))(v47, v10, v49);
    sub_2385A5494(&unk_27DF0C340, MEMORY[0x277CE0068]);
    v42 = sub_23875C5E0();
    (*(v40 + 8))(v10, v41);
    *&v13[*(v34 + 36)] = v42;
    sub_2385A54DC(v13, v20);
    v33 = 0;
  }

  (*(v52 + 56))(v20, v33, 1, v34);
  sub_23843981C(v27, v24, &qword_27DF0F438, &qword_238772638);
  sub_23843981C(v20, v17, &qword_27DF0F430, &qword_238772630);
  v43 = v55;
  sub_23843981C(v24, v55, &qword_27DF0F438, &qword_238772638);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F448, &qword_238772648);
  v45 = v43 + *(v44 + 48);
  *v45 = 0;
  *(v45 + 8) = 1;
  sub_23843981C(v17, v43 + *(v44 + 64), &qword_27DF0F430, &qword_238772630);
  sub_238439884(v20, &qword_27DF0F430, &qword_238772630);
  sub_238439884(v27, &qword_27DF0F438, &qword_238772638);
  sub_238439884(v17, &qword_27DF0F430, &qword_238772630);
  sub_238439884(v24, &qword_27DF0F438, &qword_238772638);
}

uint64_t sub_2385A446C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a4;
  v60 = sub_23875D510();
  v7 = *(v60 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v60);
  v10 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F458, &qword_238772658);
  v11 = *(*(v62 - 1) + 64);
  MEMORY[0x28223BE20](v62);
  v63 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v51[-v14];
  sub_23875ED50();
  v64 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v72 = sub_2385A2EC8();
  v73 = v16;
  sub_2384397A8();
  v57 = sub_23875DAA0();
  v56 = v17;
  v53 = a1;
  v19 = v18;
  v58 = v20;
  v59 = sub_23875D7F0();
  KeyPath = swift_getKeyPath();
  LOBYTE(v72) = v19 & 1;
  v21 = v19 & 1;
  v52 = v19 & 1;
  v54 = sub_23875D440();
  v72 = a2;
  v73 = a3;

  v22 = sub_23875DAA0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = sub_23875D420();
  v72 = v22;
  v73 = v24;
  v74 = v26 & 1;
  v76 = v28;
  v77 = 0x5473736572646461;
  v78 = 0xEB00000000747865;
  LODWORD(v79) = v29;
  sub_23875D500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F460, &qword_238772690);
  sub_2385A554C();
  v30 = v60;
  sub_23875DC10();
  (*(v7 + 8))(v10, v30);
  sub_2384397FC(v22, v24, v26 & 1);

  v31 = sub_23875E4D0();
  v32 = (v53 + *(type metadata accessor for OrderDetailsShippingAddress(0) + 20));
  v33 = *v32;
  v34 = *(v32 + 1);
  LOBYTE(v72) = v33;
  v73 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1B0();
  v35 = v66;
  v36 = &v15[*(v62 + 9)];
  *v36 = v31;
  v36[8] = v35;
  v37 = v63;
  sub_23843981C(v15, v63, &qword_27DF0F458, &qword_238772658);
  v38 = v57;
  *&v66 = v57;
  v62 = v15;
  v39 = v56;
  *(&v66 + 1) = v56;
  LOBYTE(v67) = v21;
  *(&v67 + 1) = *v65;
  DWORD1(v67) = *&v65[3];
  v40 = v58;
  *(&v67 + 1) = v58;
  *&v68 = 0x69546F5470696873;
  *(&v68 + 1) = 0xEB00000000656C74;
  v41 = KeyPath;
  v42 = v59;
  *&v69 = KeyPath;
  *(&v69 + 1) = v59;
  v43 = v54;
  LODWORD(v70) = v54;
  *(&v70 + 1) = sub_2385A4A04;
  v71 = 0;
  v44 = v68;
  v45 = v69;
  v46 = v70;
  v47 = v61;
  *(v61 + 80) = 0;
  v47[3] = v45;
  v47[4] = v46;
  v48 = v66;
  v47[1] = v67;
  v47[2] = v44;
  *v47 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F480, &qword_2387726A8);
  sub_23843981C(v37, v47 + *(v49 + 48), &qword_27DF0F458, &qword_238772658);
  sub_23843981C(&v66, &v72, &qword_27DF0F488, &unk_2387726B0);
  sub_238439884(v62, &qword_27DF0F458, &qword_238772658);
  sub_238439884(v37, &qword_27DF0F458, &qword_238772658);
  v72 = v38;
  v73 = v39;
  v74 = v52;
  *v75 = *v65;
  *&v75[3] = *&v65[3];
  v76 = v40;
  v77 = 0x69546F5470696873;
  v78 = 0xEB00000000656C74;
  v79 = v41;
  v80 = v42;
  v81 = v43;
  v82 = sub_2385A4A04;
  v83 = 0;
  sub_238439884(&v72, &qword_27DF0F488, &unk_2387726B0);
}

uint64_t sub_2385A4A04()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875C4E0();
}

uint64_t sub_2385A4AA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v55 = a1;
  v56 = a2;
  v64 = a3;
  v3 = sub_23875D510();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v3);
  v57 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA48, &qword_238770B30);
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v6);
  v61 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v50 - v10;
  sub_23875ED50();
  v60 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v66 = sub_2385A2EC8();
  v67 = v11;
  sub_2384397A8();
  v12 = sub_23875DAA0();
  v14 = v13;
  v16 = v15;
  sub_23875D7F0();
  v17 = sub_23875DA60();
  v19 = v18;
  v21 = v20;

  sub_2384397FC(v12, v14, v16 & 1);

  LODWORD(v66) = sub_23875D440();
  v51 = sub_23875DA20();
  v52 = v22;
  v53 = v23;
  v54 = v24;
  sub_2384397FC(v17, v19, v21 & 1);

  v66 = v55;
  v67 = v56;

  v25 = sub_23875DAA0();
  v27 = v26;
  v29 = v28;
  LODWORD(v66) = sub_23875D420();
  v30 = sub_23875DA20();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_2384397FC(v25, v27, v29 & 1);

  v66 = v30;
  v67 = v32;
  v68 = v34 & 1;
  v69 = v36;
  v37 = v57;
  sub_23875D500();
  v38 = v65;
  v39 = v59;
  sub_23875DC10();
  (*(v58 + 8))(v37, v39);
  sub_2384397FC(v30, v32, v34 & 1);

  v41 = v61;
  v40 = v62;
  v42 = *(v62 + 16);
  v43 = v63;
  v42(v61, v38, v63);
  v44 = v64;
  v45 = v51;
  v46 = v52;
  *v64 = v51;
  v44[1] = v46;
  LOBYTE(v25) = v53 & 1;
  *(v44 + 16) = v53 & 1;
  v44[3] = v54;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F490, &qword_2387726C0);
  v42(v44 + *(v47 + 48), v41, v43);
  sub_23843980C(v45, v46, v25);
  v48 = *(v40 + 8);

  v48(v65, v43);
  v48(v41, v43);
  sub_2384397FC(v45, v46, v25);
}

unint64_t sub_2385A4F48@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_23875EC00();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_2384988E0(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_2384988E0((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_23875EBE0();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_23875EB50();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_23875EB50();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_23875EC00();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_2384988E0(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_23875EC00();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_2384988E0(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_2384988E0((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_23875EB50();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2385A5308(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_23875F630() & 1;
  }
}

uint64_t sub_2385A5360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsShippingAddress(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2385A53C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsShippingAddress(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2385A5428()
{
  v1 = *(type metadata accessor for OrderDetailsShippingAddress(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2385A3B9C(v2);
}

uint64_t sub_2385A5494(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2385A54DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F428, &qword_238772628);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2385A554C()
{
  result = qword_27DF0F468;
  if (!qword_27DF0F468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F460, &qword_238772690);
    sub_23843A3E8(&qword_27DF0F470, &qword_27DF0F478, &unk_238772698);
    sub_23843A3E8(&qword_2814F0930, &unk_27DF12F00, &unk_238769090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F468);
  }

  return result;
}

unint64_t sub_2385A564C()
{
  result = qword_27DF0F498;
  if (!qword_27DF0F498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F4A0, &qword_2387726C8);
    sub_2385A56D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F498);
  }

  return result;
}

unint64_t sub_2385A56D0()
{
  result = qword_27DF0F4A8;
  if (!qword_27DF0F4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F3F0, &qword_238772600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F3E0, &qword_2387725F0);
    sub_23875C950();
    sub_23843A3E8(&qword_27DF0F400, &qword_27DF0F3E0, &qword_2387725F0);
    sub_2385A5494(&qword_27DF0A778, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0F408, &qword_27DF0F3D0, &qword_2387725E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F4A8);
  }

  return result;
}

void sub_2385A5890()
{
  sub_23875AE10();
  if (v0 <= 0x3F)
  {
    type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel(319);
    if (v1 <= 0x3F)
    {
      sub_23875AD80();
      if (v2 <= 0x3F)
      {
        sub_2385A8CCC(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2385A8C68(319, &qword_2814F1160, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_2385A8C68(319, &qword_27DF0F4C0, type metadata accessor for OrderDetailsShippingTracking.ViewModel, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2385A5AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

uint64_t sub_2385A5B7C()
{
  v0 = sub_23875AE10();
  v29 = *(v0 - 8);
  v30 = v0;
  v1 = *(v29 + 64);
  MEMORY[0x28223BE20](v0);
  v27 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - v4;
  v6 = sub_23875ACE0();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB30, &unk_2387691F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  v18 = *(type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0) + 20);
  sub_23875B0B0();
  v19 = (*(v11 + 88))(v17, v10);
  if (v19 == *MEMORY[0x277CC83B8])
  {
LABEL_13:
    (*(v11 + 8))(v17, v10);
    return 0;
  }

  if (v19 != *MEMORY[0x277CC83A8])
  {
    if (v19 != *MEMORY[0x277CC83B0])
    {
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_23875F470();
      MEMORY[0x23EE63650](0xD000000000000017, 0x800000023878AD90);
      sub_23875B0B0();
      sub_23875F510();
      v24 = *(v11 + 8);
      v21 = v11 + 8;
      v24(v14, v10);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  (*(v11 + 96))(v17, v10);
  v20 = v28;
  (*(v28 + 32))(v9, v17, v6);
  sub_23875ACD0();
  v18 = v29;
  v21 = v30;
  v22 = (*(v29 + 88))(v5, v30);
  if (v22 == *MEMORY[0x277CC8468] || v22 == *MEMORY[0x277CC8458] || v22 == *MEMORY[0x277CC8480] || v22 == *MEMORY[0x277CC8460])
  {
    (*(v20 + 8))(v9, v6);
    return 1;
  }

  if (v22 != *MEMORY[0x277CC8490] && v22 != *MEMORY[0x277CC8478] && v22 != *MEMORY[0x277CC8470] && v22 != *MEMORY[0x277CC8488])
  {
    while (1)
    {
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_23875F470();
      MEMORY[0x23EE63650](0xD000000000000019, 0x800000023878BD60);
      v25 = v27;
      sub_23875ACD0();
      sub_23875F510();
      v26 = *(v18 + 8);
      v18 += 8;
      v26(v25, v21);
LABEL_18:
      sub_23875F520();
      __break(1u);
    }
  }

  (*(v20 + 8))(v9, v6);
  return 0;
}

uint64_t sub_2385A609C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB30, &unk_2387691F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  v10 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
  v11 = *(v10 + 20);
  sub_23875B0B0();
  v12 = (*(v3 + 88))(v9, v2);
  if (v12 == *MEMORY[0x277CC83B8])
  {
    v13 = 40;
    goto LABEL_5;
  }

  if (v12 == *MEMORY[0x277CC83A8])
  {
    v13 = 44;
LABEL_5:
    v14 = (v0 + *(v10 + v13));
    v15 = *v14;
    v16 = v14[1];
    v17 = *(v3 + 8);

    v17(v9, v2);
    if (!v16)
    {
      return 0;
    }

    v18 = (v1 + *(v10 + 48));
    v19 = *v18;
    v20 = v18[1];

    return v19;
  }

  if (v12 == *MEMORY[0x277CC83B0])
  {
    (*(v3 + 8))(v9, v2);
    return 0;
  }

  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_23875F470();
  MEMORY[0x23EE63650](0xD000000000000017, 0x800000023878AD90);
  sub_23875B0B0();
  sub_23875F510();
  (*(v3 + 8))(v6, v2);
  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2385A6350@<X0>(uint64_t a1@<X8>)
{
  sub_2385A8D80(v1, a1, type metadata accessor for OrderDetailsShippingFulfillment.ViewModel);
  v3 = type metadata accessor for OrderDetailsShippingFulfillment_iOS(0);
  v4 = v3[5];
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v5 = v3[6];
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v3[7];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = a1 + v3[8];
  result = swift_getKeyPath();
  *v7 = result;
  *(v7 + 8) = 0;
  return result;
}

uint64_t sub_2385A644C@<X0>(uint64_t a1@<X8>)
{
  v146 = a1;
  v2 = type metadata accessor for OrderDetailsShippingTracking(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v129 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F508, &unk_238781470);
  v143 = *(v145 - 8);
  v5 = *(v143 + 64);
  MEMORY[0x28223BE20](v145);
  v128 = &v126 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F0, &unk_23876D630);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v140 = &v126 - v9;
  v139 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v138 = *(v139 - 8);
  v10 = *(v138 + 64);
  MEMORY[0x28223BE20](v139);
  v127 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F510, &unk_2387728D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v144 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v142 = &v126 - v16;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F518, &unk_238781480);
  v135 = *(v136 - 8);
  v17 = *(v135 + 64);
  MEMORY[0x28223BE20](v136);
  v133 = &v126 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F520, &unk_2387728E0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v132 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v131 = &v126 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F528, &unk_238781490);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v130 = &v126 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v147 = &v126 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F530, &qword_2387728F0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v141 = &v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v126 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F538, &qword_2387728F8);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v126 - v38;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F540, &qword_238772900);
  v40 = *(v134 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v134);
  v43 = &v126 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F548, &qword_238772908);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v137 = &v126 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v49 = &v126 - v48;
  MEMORY[0x28223BE20](v50);
  v150 = &v126 - v51;
  *v39 = sub_23875D030();
  *(v39 + 1) = 0x4028000000000000;
  v39[16] = 0;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F550, &qword_238772910);
  sub_2385A7494(v1, &v39[*(v52 + 44)]);
  v53 = sub_2385A5B7C();
  v151 = v35;
  v152 = v1;
  v149 = v19;
  v148 = v20;
  if ((v53 & 1) == 0)
  {
    v54 = sub_2385A609C();
    if (v55)
    {
      sub_23855712C(v54, v55);
    }
  }

  sub_23875C580();
  sub_23843A3E8(&qword_27DF0F558, &qword_27DF0F538, &qword_2387728F8);
  sub_23875DCA0();
  sub_238439884(v39, &qword_27DF0F538, &qword_2387728F8);
  v56 = v152;
  v57 = sub_2385A784C();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  (*(v40 + 32))(v49, v43, v134);
  v64 = &v49[*(v44 + 36)];
  *v64 = v57;
  *(v64 + 1) = v59;
  *(v64 + 2) = v61;
  *(v64 + 3) = v63;
  v64[32] = 0;
  sub_2384396E4(v49, v150, &qword_27DF0F548, &qword_238772908);
  v65 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
  v66 = v65;
  v67 = (v56 + *(v65 + 28));
  v68 = v67[1];
  if (v68)
  {
    v69 = *v67;
    v134 = v65;
    v70 = (v56 + *(v65 + 32));
    v71 = v70[1];
    if (v71)
    {
      v126 = v69;
      v72 = *v70;
      v73 = v147;
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v74 = qword_2814F1B90;
      v75 = sub_23875EA50();
      v76 = sub_23875EA50();
      v77 = sub_23875EA50();
      v78 = [v74 localizedStringForKey:v75 value:v76 table:v77];

      v79 = sub_23875EA80();
      v81 = v80;

      *&v153 = v79;
      *(&v153 + 1) = v81;
      *&v154 = v72;
      *(&v154 + 1) = v71;
      MEMORY[0x28223BE20](v82);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
      sub_2385A8F14();
      sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
      sub_23875DB50();

      v83 = 0;
      v69 = v126;
    }

    else
    {
      v83 = 1;
      v73 = v147;
    }

    (*(v148 + 56))(v73, v83, 1, v149);
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v87 = qword_2814F1B90;
    v88 = sub_23875EA50();
    v89 = sub_23875EA50();
    v90 = sub_23875EA50();
    v91 = [v87 localizedStringForKey:v88 value:v89 table:v90];

    v92 = sub_23875EA80();
    v94 = v93;

    v126 = &v126;
    *&v153 = v92;
    *(&v153 + 1) = v94;
    *&v154 = v69;
    *(&v154 + 1) = v68;
    MEMORY[0x28223BE20](v95);
    v56 = v152;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
    sub_2385A8F14();
    sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
    v96 = v131;
    sub_23875DB50();

    v97 = v73;
    v98 = v130;
    sub_23843981C(v97, v130, &qword_27DF0F528, &unk_238781490);
    v99 = v148;
    v100 = *(v148 + 16);
    v101 = v132;
    v102 = v149;
    v100(v132, v96, v149);
    v103 = v133;
    sub_23843981C(v98, v133, &qword_27DF0F528, &unk_238781490);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F570, &qword_238772928);
    v100((v103 + *(v104 + 48)), v101, v102);
    v105 = *(v99 + 8);
    v105(v96, v102);
    sub_238439884(v147, &qword_27DF0F528, &unk_238781490);
    v105(v101, v102);
    sub_238439884(v98, &qword_27DF0F528, &unk_238781490);
    v106 = v103;
    v85 = v151;
    sub_2384396E4(v106, v151, &qword_27DF0F518, &unk_238781480);
    v84 = 0;
    v86 = v140;
    v66 = v134;
  }

  else
  {
    v84 = 1;
    v85 = v151;
    v86 = v140;
  }

  (*(v135 + 56))(v85, v84, 1, v136);
  sub_23843981C(v56 + *(v66 + 52), v86, &qword_27DF0D5F0, &unk_23876D630);
  v107 = (*(v138 + 48))(v86, 1, v139);
  v108 = v142;
  if (v107 == 1)
  {
    sub_238439884(v86, &qword_27DF0D5F0, &unk_23876D630);
    v109 = 1;
    v110 = v145;
  }

  else
  {
    v111 = v127;
    sub_2385A8DE8(v86, v127, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
    v112 = v129;
    sub_2385A8D80(v111, v129, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
    sub_23875E4B0();
    sub_23875C9C0();
    sub_2385A9624(v111, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
    v113 = v112;
    v114 = v128;
    sub_2385A8DE8(v113, v128, type metadata accessor for OrderDetailsShippingTracking);
    v110 = v145;
    v115 = (v114 + *(v145 + 36));
    v116 = v158;
    v115[4] = v157;
    v115[5] = v116;
    v115[6] = v159;
    v117 = v154;
    *v115 = v153;
    v115[1] = v117;
    v118 = v156;
    v115[2] = v155;
    v115[3] = v118;
    sub_2385A8E50(v114, v108);
    v109 = 0;
  }

  (*(v143 + 56))(v108, v109, 1, v110);
  v119 = v150;
  v120 = v137;
  sub_23843981C(v150, v137, &qword_27DF0F548, &qword_238772908);
  v121 = v141;
  sub_23843981C(v85, v141, &qword_27DF0F530, &qword_2387728F0);
  v122 = v144;
  sub_23843981C(v108, v144, &qword_27DF0F510, &unk_2387728D0);
  v123 = v146;
  sub_23843981C(v120, v146, &qword_27DF0F548, &qword_238772908);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F560, &unk_238772918);
  sub_23843981C(v121, v123 + *(v124 + 48), &qword_27DF0F530, &qword_2387728F0);
  sub_23843981C(v122, v123 + *(v124 + 64), &qword_27DF0F510, &unk_2387728D0);
  sub_238439884(v108, &qword_27DF0F510, &unk_2387728D0);
  sub_238439884(v151, &qword_27DF0F530, &qword_2387728F0);
  sub_238439884(v119, &qword_27DF0F548, &qword_238772908);
  sub_238439884(v122, &qword_27DF0F510, &unk_2387728D0);
  sub_238439884(v121, &qword_27DF0F530, &qword_2387728F0);
  return sub_238439884(v120, &qword_27DF0F548, &qword_238772908);
}

uint64_t sub_2385A7494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_23875AE10();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OrderDetailsShippingStatusLabel(0);
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  sub_23875ED50();
  v40 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
  sub_2385A8D80(a1 + *(v15 + 20), v14, type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel);
  v16 = v8[5];
  *&v14[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2E0, &unk_23876EE10);
  swift_storeEnumTagMultiPayload();
  v17 = v8[6];
  *&v14[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C300, &qword_2387729A0);
  swift_storeEnumTagMultiPayload();
  v18 = v8[7];
  *&v14[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2F8, &unk_23876A240);
  swift_storeEnumTagMultiPayload();
  if (sub_2385A5B7C())
  {
    (*(v4 + 16))(v7, a1, v3);
    v19 = sub_2386D14F8(v7);
    v21 = v20;
    v23 = v22;
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v23 = 1;
  }

  v24 = sub_2385A609C();
  v28 = v25;
  if (v25)
  {
    v29 = v24;
  }

  else
  {
    v29 = 0;
  }

  if (v25)
  {
    v30 = v26;
  }

  else
  {
    v30 = 0;
  }

  if (v25)
  {
    v31 = v27;
  }

  else
  {
    v31 = 0;
  }

  sub_2385A8D80(v14, v11, type metadata accessor for OrderDetailsShippingStatusLabel);
  v32 = v11;
  v39 = v11;
  v33 = v41;
  sub_2385A8D80(v32, v41, type metadata accessor for OrderDetailsShippingStatusLabel);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F578, &qword_2387729E0);
  v35 = (v33 + *(v34 + 48));
  *v35 = v19;
  v35[1] = v21;
  v35[2] = v23;
  v36 = (v33 + *(v34 + 64));
  *v36 = v29;
  v36[1] = v28;
  v36[2] = v30;
  v36[3] = v31;
  sub_2385A9610(v19, v21, v23);
  sub_2385570E8(v29, v28);
  sub_2385A9624(v14, type metadata accessor for OrderDetailsShippingStatusLabel);
  sub_23855712C(v29, v28);
  sub_2385A9684(v19, v21, v23);
  sub_2385A9624(v39, type metadata accessor for OrderDetailsShippingStatusLabel);
}

double sub_2385A784C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F0, &unk_23876D630);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  v6 = sub_23875C880();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v14 = v0 + *(type metadata accessor for OrderDetailsShippingFulfillment_iOS(0) + 20);
  sub_2384D5138(v13);
  (*(v7 + 104))(v10, *MEMORY[0x277CDF9D8], v6);
  sub_23875C870();
  v15 = *(v7 + 8);
  v15(v10, v6);
  v15(v13, v6);
  v16 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
  if (!*(v1 + *(v16 + 28) + 8))
  {
    sub_23843981C(v1 + *(v16 + 52), v5, &qword_27DF0D5F0, &unk_23876D630);
    v17 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
    (*(*(v17 - 8) + 48))(v5, 1, v17);
    sub_238439884(v5, &qword_27DF0D5F0, &unk_23876D630);
  }

  if ((sub_2385A5B7C() & 1) == 0)
  {
    v18 = sub_2385A609C();
    if (v19)
    {
      sub_23855712C(v18, v19);
    }
  }

  return 12.0;
}

uint64_t sub_2385A7AD4()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v0 = qword_2814F1B90;
  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  sub_23875EA80();
  sub_2384397A8();
  sub_23875E190();
}

uint64_t sub_2385A7C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v15[2] = a4;
  v15[3] = a5;
  v15[0] = a2;
  v15[1] = a6;
  v8 = type metadata accessor for OrderDetailsShippingFulfillment_iOS(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385A8D80(a1, v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetailsShippingFulfillment_iOS);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  sub_2385A8DE8(v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for OrderDetailsShippingFulfillment_iOS);
  v13 = (v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v15[0];
  v13[1] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_23875E200();
}

void sub_2385A7E88(uint64_t a1)
{
  v2 = sub_23875CDB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1 + *(type metadata accessor for OrderDetailsShippingFulfillment_iOS(0) + 28);
  if ((*(v7 + 8) & 1) == 0)
  {
    v8 = *v7;

    sub_23875EFF0();
    v9 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v8, 0);
    (*(v3 + 8))(v6, v2);
  }

  v10 = [objc_opt_self() generalPasteboard];
  v11 = sub_23875EA50();
  [v10 setString_];
}

uint64_t sub_2385A809C()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v0 = qword_2814F1B90;
  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  sub_23875EA80();
  sub_2384397A8();
  sub_23875E190();
}

BOOL sub_2385A823C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v75 = *(v4 - 8);
  v76 = v4;
  v5 = *(v75 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F0, &unk_23876D630);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = &v70 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F4C8, &qword_238772728);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v77 = &v70 - v13;
  v14 = sub_23875B940();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v70 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B0D8, &qword_238772730);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v70 - v25;
  if ((sub_23875AE00() & 1) == 0)
  {
    return 0;
  }

  v73 = v7;
  v27 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
  if ((sub_2385ABE60(a1 + v27[5], a2 + v27[5]) & 1) == 0)
  {
    return 0;
  }

  v28 = v27[6];
  if ((sub_23875AD70() & 1) == 0)
  {
    return 0;
  }

  v29 = v27[7];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33 || (*v30 != *v32 || v31 != v33) && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v34 = v27[8];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = v37[1];
  if (v36)
  {
    if (!v38 || (*v35 != *v37 || v36 != v38) && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v38)
  {
    return 0;
  }

  v72 = v27[9];
  v39 = *(v23 + 48);
  sub_23843981C(a1 + v72, v26, &qword_27DF0D040, &qword_2387676A0);
  v40 = a2 + v72;
  v72 = v39;
  sub_23843981C(v40, &v26[v39], &qword_27DF0D040, &qword_2387676A0);
  v71 = *(v15 + 48);
  if (v71(v26, 1, v14) != 1)
  {
    sub_23843981C(v26, v22, &qword_27DF0D040, &qword_2387676A0);
    if (v71(&v26[v72], 1, v14) != 1)
    {
      (*(v15 + 32))(v18, &v26[v72], v14);
      sub_2385A8D1C(&qword_27DF0B0E0, MEMORY[0x277CC9260]);
      LODWORD(v72) = sub_23875E9E0();
      v45 = *(v15 + 8);
      v45(v18, v14);
      v45(v22, v14);
      sub_238439884(v26, &qword_27DF0D040, &qword_2387676A0);
      if ((v72 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_28;
    }

    (*(v15 + 8))(v22, v14);
LABEL_23:
    v41 = &qword_27DF0B0D8;
    v42 = &qword_238772730;
    v43 = v26;
LABEL_24:
    sub_238439884(v43, v41, v42);
    return 0;
  }

  if (v71(&v26[v72], 1, v14) != 1)
  {
    goto LABEL_23;
  }

  sub_238439884(v26, &qword_27DF0D040, &qword_2387676A0);
LABEL_28:
  v46 = v27[10];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 8);
  v49 = (a2 + v46);
  v50 = v49[1];
  if (v48)
  {
    if (!v50 || (*v47 != *v49 || v48 != v50) && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v50)
  {
    return 0;
  }

  v51 = v27[11];
  v52 = (a1 + v51);
  v53 = *(a1 + v51 + 8);
  v54 = (a2 + v51);
  v55 = v54[1];
  if (v53)
  {
    if (!v55 || (*v52 != *v54 || v53 != v55) && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v55)
  {
    return 0;
  }

  v56 = v27[12];
  v57 = *(a1 + v56);
  v58 = *(a1 + v56 + 8);
  v59 = (a2 + v56);
  if ((v57 != *v59 || v58 != v59[1]) && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v60 = v27[13];
  v61 = *(v11 + 48);
  v62 = a1 + v60;
  v63 = v77;
  sub_23843981C(v62, v77, &qword_27DF0D5F0, &unk_23876D630);
  sub_23843981C(a2 + v60, v63 + v61, &qword_27DF0D5F0, &unk_23876D630);
  v64 = v76;
  v65 = *(v75 + 48);
  if (v65(v63, 1, v76) == 1)
  {
    if (v65(v63 + v61, 1, v64) == 1)
    {
      sub_238439884(v63, &qword_27DF0D5F0, &unk_23876D630);
      return 1;
    }

    goto LABEL_50;
  }

  v66 = v74;
  sub_23843981C(v63, v74, &qword_27DF0D5F0, &unk_23876D630);
  if (v65(v63 + v61, 1, v64) == 1)
  {
    sub_2385A9624(v66, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
LABEL_50:
    v41 = &qword_27DF0F4C8;
    v42 = &qword_238772728;
    v43 = v63;
    goto LABEL_24;
  }

  v67 = v63 + v61;
  v68 = v73;
  sub_2385A8DE8(v67, v73, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
  v69 = sub_2385DE9BC(v66, v68);
  sub_2385A9624(v68, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
  sub_2385A9624(v66, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
  sub_238439884(v63, &qword_27DF0D5F0, &unk_23876D630);
  return (v69 & 1) != 0;
}

uint64_t sub_2385A8A24()
{
  result = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2385A8AF4()
{
  type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2385A8C68(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_2385A8C68(319, &qword_27DF0B130, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2385A8CCC(319, &qword_27DF0F4F0, &type metadata for CopyStringAction, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_2385A8CCC(319, &qword_27DF0F4F8, &type metadata for CopyURLAction, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2385A8C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2385A8CCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2385A8D1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2385A8D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385A8DE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385A8E50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F508, &unk_238781470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2385A8F14()
{
  result = qword_27DF0F568;
  if (!qword_27DF0F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F568);
  }

  return result;
}

uint64_t objectdestroyTm_18()
{
  v1 = v0;
  v2 = type metadata accessor for OrderDetailsShippingFulfillment_iOS(0);
  v47 = *(*(v2 - 1) + 80);
  v45 = *(*(v2 - 1) + 64);
  v46 = (v47 + 16) & ~v47;
  v3 = v0 + v46;
  v4 = sub_23875AE10();
  (*(*(v4 - 8) + 8))(v0 + v46, v4);
  v5 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
  v6 = v0 + v46 + v5[5];
  v7 = sub_23875B120();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel(0);
  v9 = *(v8 + 20);
  v10 = sub_23875AD80();
  v11 = *(*(v10 - 8) + 8);
  v11(v6 + v9, v10);
  v12 = v6 + *(v8 + 24);
  v13 = type metadata accessor for OrderDetailsNote(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v17 = *(v12 + 8);

      v18 = *(v12 + 24);

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930);
      v11(v12 + *(v19 + 64), v10);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      v15 = *(v12 + 8);

      v16 = *(v12 + 24);
    }
  }

  v11(v3 + v5[6], v10);
  v20 = *(v3 + v5[7] + 8);

  v21 = *(v3 + v5[8] + 8);

  v22 = v5[9];
  v23 = sub_23875B940();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v3 + v22, 1, v23))
  {
    (*(v24 + 8))(v3 + v22, v23);
  }

  v25 = *(v3 + v5[10] + 8);

  v26 = *(v3 + v5[11] + 8);

  v27 = *(v3 + v5[12] + 8);

  v28 = v3 + v5[13];
  v29 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    v30 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
    if ((*(*(v30 - 8) + 48))(v28, 1, v30))
    {
      (*(v24 + 8))(v28 + *(v29 + 20), v23);
    }

    else
    {
      v31 = *(v28 + 8);

      v32 = *(v28 + 24);

      v33 = *(v24 + 8);
      v33(v28 + *(v30 + 24), v23);
      v34 = *(v30 + 28);
      v35 = sub_23875AF90();
      (*(*(v35 - 8) + 8))(v28 + v34, v35);
      v33(v28 + *(v29 + 20), v23);
    }

    v11(v28 + *(v29 + 24), v10);
  }

  v36 = v2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = sub_23875C880();
    (*(*(v37 - 8) + 8))(v3 + v36, v37);
  }

  else
  {
    v38 = *(v3 + v36);
  }

  v39 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = sub_23875C6D0();
    (*(*(v40 - 8) + 8))(v3 + v39, v40);
  }

  else
  {
    v41 = *(v3 + v39);
  }

  v42 = (v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2384348B8(*(v3 + v2[7]), *(v3 + v2[7] + 8));
  sub_2384348B8(*(v3 + v2[8]), *(v3 + v2[8] + 8));
  v43 = *(v1 + v42 + 8);

  return MEMORY[0x2821FE8E8](v1, v42 + 16, v47 | 7);
}

void sub_2385A957C()
{
  v1 = *(type metadata accessor for OrderDetailsShippingFulfillment_iOS(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];
  sub_2385A7E88(v0 + v2);
}

uint64_t sub_2385A9610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_2385A9624(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2385A9684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

void sub_2385A96E4()
{
  sub_23875B120();
  if (v0 <= 0x3F)
  {
    sub_23875AD80();
    if (v1 <= 0x3F)
    {
      sub_23858EE1C(319, &qword_27DF0EDC8, type metadata accessor for OrderDetailsNote, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2385A97BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875D990();
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875BE40();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23875BE20();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23875BD20();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OrderDetailsShippingStatusLabel.TitleFormatter(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OrderDetailsShippingStatusLabel(0);
  v24 = v1 + v23[6];
  sub_2384D57B8(v18);
  v25 = v2 + v23[5];
  sub_2384D5588(v14);
  v26 = v2 + v23[7];
  sub_2384D57E0(v10);
  sub_2387595B0();
  sub_2385AC438(&qword_27DF0F5B8, type metadata accessor for OrderDetailsShippingStatusLabel.TitleFormatter);
  sub_238759950();
  sub_2385AC3B0(v22, type metadata accessor for OrderDetailsShippingStatusLabel.TitleFormatter);
  v28 = v55;
  v27 = v56;
  v30 = v57;
  v29 = v58;
  v50[0] = v58;

  v31 = v27;
  v50[1] = v27;

  LOBYTE(v23) = sub_2385A9C18();
  v32 = type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel(0);
  v33 = *(v32 + 24);
  v34 = type metadata accessor for OrderDetailsStatusLabel();
  sub_2385912B0(v2 + v33, a1 + v34[7]);
  v35 = (v2 + *(v32 + 28));
  v36 = *v35;
  v37 = v35[24];
  *a1 = v28;
  *(a1 + 8) = v31;
  *(a1 + 16) = v30;
  *(a1 + 24) = v29;
  *(a1 + 32) = v23;
  v38 = a1 + v34[8];
  *v38 = v36;
  *(v38 + 8) = *(v35 + 8);
  *(v38 + 24) = v37;
  v39 = a1 + v34[9];
  v54 = 0;
  sub_23875E1A0();
  v40 = v56;
  *v39 = v55;
  *(v39 + 8) = v40;
  v41 = a1 + v34[10];
  *v41 = swift_getKeyPath();
  *(v41 + 8) = 0;
  v42 = v34[11];
  v55 = 0x403F000000000000;
  v43 = *MEMORY[0x277CE0A50];
  v44 = v51;
  v45 = *(v52 + 104);
  v46 = v53;
  v45(v51, v43, v53);
  sub_23857414C();
  sub_23875C540();
  v47 = v34[12];
  v55 = 0x403C000000000000;
  v45(v44, v43, v46);
  sub_23875C540();
  v48 = v34[13];
  v55 = 0x4018000000000000;
  v45(v44, v43, v46);
  sub_23875C540();
}

uint64_t sub_2385A9C18()
{
  v1 = sub_23875AE10();
  v40 = *(v1 - 8);
  v41 = v1;
  v2 = *(v40 + 8);
  MEMORY[0x28223BE20](v1);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - v5;
  v7 = sub_23875ACE0();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB30, &unk_2387691F0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v36 - v23;
  v37 = v0;
  sub_23875B0B0();
  v25 = (*(v12 + 88))(v24, v11);
  if (v25 == *MEMORY[0x277CC83B8])
  {
    (*(v12 + 16))(v18, v24, v11);
    (*(v12 + 96))(v18, v11);
    v26 = sub_238757C30();
    v27 = *(v26 - 8);
    v28 = (*(v27 + 88))(v18, v26);
    if (v28 == *MEMORY[0x277CC6B98])
    {
      v29 = 3;
      goto LABEL_21;
    }

    if (v28 != *MEMORY[0x277CC6BA8])
    {
      if (v28 == *MEMORY[0x277CC6BA0])
      {
        v29 = 1;
        goto LABEL_21;
      }

      v33 = *(v27 + 8);
      v21 = (v27 + 8);
      v33(v18, v26);
LABEL_23:
      v42 = 0;
      v43 = 0xE000000000000000;
      sub_23875F470();
      MEMORY[0x23EE63650](0xD000000000000017, 0x800000023878AD90);
      sub_23875B0B0();
      sub_23875F510();
      (*(v12 + 8))(v15, v11);
      while (1)
      {
        sub_23875F520();
        __break(1u);
LABEL_25:
        v42 = 0;
        v43 = 0xE000000000000000;
        sub_23875F470();
        MEMORY[0x23EE63650](0xD000000000000019, 0x800000023878BD60);
        v34 = v38;
        sub_23875ACD0();
        sub_23875F510();
        v35 = *(v18 + 1);
        v18 += 8;
        v35(v34, v21);
      }
    }

LABEL_17:
    v29 = 0;
    goto LABEL_21;
  }

  if (v25 != *MEMORY[0x277CC83A8])
  {
    if (v25 != *MEMORY[0x277CC83B0])
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  (*(v12 + 16))(v21, v24, v11);
  (*(v12 + 96))(v21, v11);
  v30 = v39;
  (*(v39 + 32))(v10, v21, v7);
  sub_23875ACD0();
  v18 = v40;
  v21 = v41;
  v31 = (*(v40 + 11))(v6, v41);
  v29 = 3;
  if (v31 != *MEMORY[0x277CC8468] && v31 != *MEMORY[0x277CC8458] && v31 != *MEMORY[0x277CC8480] && v31 != *MEMORY[0x277CC8460])
  {
    v29 = 0;
    if (v31 != *MEMORY[0x277CC8490] && v31 != *MEMORY[0x277CC8478])
    {
      if (v31 == *MEMORY[0x277CC8470])
      {
        v29 = 2;
      }

      else
      {
        if (v31 != *MEMORY[0x277CC8488])
        {
          goto LABEL_25;
        }

        v29 = 1;
      }
    }
  }

  (*(v30 + 8))(v10, v7);
LABEL_21:
  (*(v12 + 8))(v24, v11);
  return v29;
}

uint64_t sub_2385AA278(const char *a1, uint64_t a2)
{
  v89 = a2;
  v3 = sub_2387591F0();
  v81 = *(v3 - 8);
  v82 = v3;
  v4 = *(v81 + 64);
  MEMORY[0x28223BE20](v3);
  v80 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_23875BC40();
  v79 = *(v85 - 8);
  v6 = *(v79 + 64);
  MEMORY[0x28223BE20](v85);
  v84 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = &v73 - v10;
  v11 = type metadata accessor for OrderDetailsStatusSubtitleFormatter();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v73 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5D0, &unk_238770FE0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v75 = &v73 - v16;
  v17 = sub_23875AEB0();
  v77 = *(v17 - 8);
  v78 = v17;
  v18 = *(v77 + 64);
  MEMORY[0x28223BE20](v17);
  v76 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23875AE10();
  v83 = *(v20 - 8);
  v21 = *(v83 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23875ACE0();
  v86 = *(v24 - 8);
  v87 = v24;
  v25 = *(v86 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB30, &unk_2387691F0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v73 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v73 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v73 - v40;
  v90 = a1;
  sub_23875B0B0();
  v42 = (*(v29 + 88))(v41, v28);
  if (v42 == *MEMORY[0x277CC83B8])
  {
    (*(v29 + 16))(v35, v41, v28);
    (*(v29 + 96))(v35, v28);
    v43 = sub_238757C30();
    v44 = *(v43 - 8);
    if ((*(v44 + 88))(v35, v43) == *MEMORY[0x277CC6B98])
    {
      v45 = sub_2385AB034(v90, v89);
    }

    else
    {
      (*(v44 + 8))(v35, v43);
      v45 = 0;
    }

    goto LABEL_27;
  }

  v46 = v28;
  if (v42 != *MEMORY[0x277CC83A8])
  {
    if (v42 == *MEMORY[0x277CC83B0])
    {
      (*(v29 + 16))(v32, v41, v28);
      (*(v29 + 96))(v32, v28);
      v55 = v79;
      (*(v79 + 32))();
      v90 = "Unknown displayStatus: ";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_2387632F0;
      v57 = sub_23875B9D0();
      v59 = v58;
      *(v56 + 56) = MEMORY[0x277D837D0];
      *(v56 + 64) = sub_238448C58();
      *(v56 + 32) = v57;
      *(v56 + 40) = v59;
      v60 = v80;
      v61 = v81;
      v62 = v82;
      (*(v81 + 104))(v80, *MEMORY[0x277CC77B0], v82);
      v45 = sub_238758A50();

      (*(v61 + 8))(v60, v62);
      (*(v55 + 8))(v84, v85);
LABEL_27:
      (*(v29 + 8))(v41, v28);
      return v45;
    }

    goto LABEL_25;
  }

  (*(v29 + 16))(v38, v41, v28);
  (*(v29 + 96))(v38, v28);
  v47 = v86;
  v48 = v27;
  v49 = v38;
  v50 = v87;
  (*(v86 + 32))(v27, v49, v87);
  sub_23875ACD0();
  v51 = (*(v83 + 88))(v23, v20);
  if (v51 == *MEMORY[0x277CC8468] || v51 == *MEMORY[0x277CC8458])
  {
    v45 = sub_2385AB034(v90, v89);
    goto LABEL_21;
  }

  if (v51 == *MEMORY[0x277CC8480] || v51 == *MEMORY[0x277CC8460])
  {
    v63 = v75;
    sub_23875B0F0();
    v64 = v77;
    v65 = v78;
    if ((*(v77 + 48))(v63, 1, v78) == 1)
    {
      (*(v47 + 8))(v48, v50);
      sub_238439884(v63, &qword_27DF0D5D0, &unk_238770FE0);
LABEL_25:
      v45 = 0;
      goto LABEL_26;
    }

    v66 = v76;
    (*(v64 + 32))(v76, v63, v65);
    v67 = sub_2387595E0();
    v68 = v73;
    (*(*(v67 - 8) + 16))(v73, v88, v67);
    v69 = v66;
    v70 = v64;
    v45 = sub_2385BCA9C(v69, v89);
    sub_2385AC3B0(v68, type metadata accessor for OrderDetailsStatusSubtitleFormatter);
    (*(v70 + 8))(v76, v78);
LABEL_21:
    (*(v47 + 8))(v48, v50);
LABEL_26:
    v28 = v46;
    goto LABEL_27;
  }

  if (v51 == *MEMORY[0x277CC8490])
  {
    v52 = v74;
    v53 = sub_23875B0D0();
    MEMORY[0x28223BE20](v53);
    v54 = sub_2385AC5E8;
LABEL_20:
    v45 = sub_238601BF0(v54);
    sub_238439884(v52, &qword_27DF12E00, &unk_238763FC0);
    goto LABEL_21;
  }

  if (v51 == *MEMORY[0x277CC8478])
  {
    v52 = v74;
    v71 = sub_23875B0C0();
    MEMORY[0x28223BE20](v71);
    v54 = sub_2385AC7E8;
    goto LABEL_20;
  }

  if (v51 == *MEMORY[0x277CC8470] || v51 == *MEMORY[0x277CC8488])
  {
    (*(v47 + 8))(v27, v50);
    goto LABEL_25;
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2385AAD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a2;
  v26 = a3;
  v24 = sub_238759120();
  v22 = *(v24 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2387595E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_238759140();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v21);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BC40();
  sub_2385AC438(&unk_27DF12BC0, MEMORY[0x277CC9578]);
  v25 = a1;
  result = sub_23875E9C0();
  v17 = 0;
  v18 = 0;
  if (result)
  {
    (*(v8 + 16))(v11, v23, v7);
    (*(v22 + 104))(v6, *MEMORY[0x277CC7750], v24);
    sub_238759110();
    v17 = sub_238759130();
    v18 = v19;
    result = (*(v12 + 8))(v15, v21);
  }

  v20 = v26;
  *v26 = v17;
  v20[1] = v18;
  return result;
}

uint64_t sub_2385AB034(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v2 = sub_2387591F0();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v2);
  v43 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238759120();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2387595E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23875AEA0();
  v37 = *(v14 - 8);
  v38 = v14;
  v15 = *(v37 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5D0, &unk_238770FE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v36 - v20;
  v22 = sub_23875AEB0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875B0F0();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_238439884(v21, &qword_27DF0D5D0, &unk_238770FE0);
    return 0;
  }

  else
  {
    (*(v23 + 32))(v26, v21, v22);
    (*(v10 + 16))(v13, v41, v9);
    (*(v39 + 104))(v8, *MEMORY[0x277CC7750], v40);
    sub_23875AE80();
    v28 = sub_23875AE90();
    v30 = v29;
    (*(v37 + 8))(v17, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_2387632F0;
    *(v31 + 56) = MEMORY[0x277D837D0];
    *(v31 + 64) = sub_238448C58();
    *(v31 + 32) = v28;
    *(v31 + 40) = v30;
    v33 = v43;
    v32 = v44;
    v34 = v45;
    (*(v44 + 104))(v43, *MEMORY[0x277CC77B0], v45);
    v35 = sub_238758A50();

    (*(v32 + 8))(v33, v34);
    (*(v23 + 8))(v26, v22);
    return v35;
  }
}

uint64_t sub_2385AB4F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_2387595E0();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F5F8, &qword_238772C40);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = sub_23875BE40();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_23875BE20();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_23875BD20();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = type metadata accessor for OrderDetailsShippingStatusLabel.TitleFormatter(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2385AC608();
  v22 = v29;
  sub_23875F780();
  if (!v22)
  {
    v23 = v27;
    sub_2385AC438(&qword_27DF09CE0, MEMORY[0x277CC7968]);
    sub_23875F5B0();
    (*(v28 + 8))(v10, v7);
    (*(v23 + 40))(v20, v6, v3);
    sub_2385AC65C(v20, v26);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2385AC3B0(v20, type metadata accessor for OrderDetailsShippingStatusLabel.TitleFormatter);
}

uint64_t sub_2385AB88C(uint64_t a1)
{
  v2 = sub_2385AC608();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2385AB8C8(uint64_t a1)
{
  v2 = sub_2385AC608();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2385AB904@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_2387595E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23875B150();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4, v8, v16);
  sub_23875B130();
  v19 = sub_23875B140();
  v21 = v20;
  (*(v14 + 8))(v18, v13);
  result = sub_2385AA278(a1, a2);
  *a3 = v19;
  a3[1] = v21;
  a3[2] = result;
  a3[3] = v23;
  return result;
}

uint64_t sub_2385ABABC()
{
  sub_2385AC438(&qword_27DF0F5B8, type metadata accessor for OrderDetailsShippingStatusLabel.TitleFormatter);

  return sub_238759950();
}

uint64_t sub_2385ABB58(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F608, &qword_238772C48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2385AC608();
  sub_23875F790();
  sub_2387595E0();
  sub_2385AC438(&qword_27DF09CF0, MEMORY[0x277CC7968]);
  sub_23875F5C0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2385ABCD0()
{
  sub_23875F700();
  sub_2387595E0();
  sub_2385AC438(&qword_27DF09CF8, MEMORY[0x277CC7968]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_2385ABD58()
{
  sub_2387595E0();
  sub_2385AC438(&qword_27DF09CF8, MEMORY[0x277CC7968]);

  return sub_23875E960();
}

uint64_t sub_2385ABDDC()
{
  sub_23875F700();
  sub_2387595E0();
  sub_2385AC438(&qword_27DF09CF8, MEMORY[0x277CC7968]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_2385ABE60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsNote(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F8, &unk_23876D640);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F5A0, qword_238772A58);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  if ((MEMORY[0x23EE5FBE0](a1, a2, v15) & 1) == 0)
  {
    return 0;
  }

  v18 = type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel(0);
  v19 = v18[5];
  if ((sub_23875AD70() & 1) == 0)
  {
    return 0;
  }

  v20 = v18[6];
  v21 = *(v13 + 48);
  sub_2385912B0(a1 + v20, v17);
  sub_2385912B0(a2 + v20, &v17[v21]);
  v22 = *(v5 + 48);
  if (v22(v17, 1, v4) != 1)
  {
    sub_2385912B0(v17, v12);
    if (v22(&v17[v21], 1, v4) != 1)
    {
      sub_2385AC184(&v17[v21], v8);
      v24 = sub_23857EB54(v12, v8);
      sub_2385AC3B0(v8, type metadata accessor for OrderDetailsNote);
      sub_2385AC3B0(v12, type metadata accessor for OrderDetailsNote);
      sub_238439884(v17, &qword_27DF0D5F8, &unk_23876D640);
      if (v24)
      {
        goto LABEL_12;
      }

      return 0;
    }

    sub_2385AC3B0(v12, type metadata accessor for OrderDetailsNote);
LABEL_8:
    sub_238439884(v17, &qword_27DF0F5A0, qword_238772A58);
    return 0;
  }

  if (v22(&v17[v21], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_238439884(v17, &qword_27DF0D5F8, &unk_23876D640);
LABEL_12:
  v25 = v18[7];
  v26 = *(a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = *(a1 + v25 + 16);
  v29 = *(a1 + v25 + 24);
  v30 = (a2 + v25);
  v31 = *v30;
  v32 = *(v30 + 1);
  v33 = *(v30 + 2);
  v34 = v30[24];
  v35 = (v27 == v32) & ~(v26 ^ v31);
  if (v28 != v33)
  {
    v35 = 0;
  }

  return v35 & (v29 ^ v34 ^ 1u);
}

uint64_t sub_2385AC184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsNote(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2385AC230()
{
  type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_23858EE1C(319, &qword_27DF0DC58, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_23858EE1C(319, &qword_27DF0EDF0, MEMORY[0x277CC9788], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_23858EE1C(319, &qword_27DF0EDF8, MEMORY[0x277CC9A70], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2385AC3B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2385AC438(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2385AC608()
{
  result = qword_27DF0F600;
  if (!qword_27DF0F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F600);
  }

  return result;
}

uint64_t sub_2385AC65C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsShippingStatusLabel.TitleFormatter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2385AC6E4()
{
  result = qword_27DF0F610;
  if (!qword_27DF0F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F610);
  }

  return result;
}

unint64_t sub_2385AC73C()
{
  result = qword_27DF0F618;
  if (!qword_27DF0F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F618);
  }

  return result;
}

unint64_t sub_2385AC794()
{
  result = qword_27DF0F620;
  if (!qword_27DF0F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F620);
  }

  return result;
}

uint64_t type metadata accessor for AccountConsentManagementTransactionHistoryView()
{
  result = qword_27DF0F630;
  if (!qword_27DF0F630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2385AC874()
{
  sub_2385AC8F8();
  if (v0 <= 0x3F)
  {
    sub_238464EC8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2385AC8F8()
{
  if (!qword_27DF0F640)
  {
    sub_23875A230();
    v0 = sub_23875D380();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0F640);
    }
  }
}

uint64_t sub_2385AC97C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F648, &qword_238772E58);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21[-v4];
  v22 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F650, &qword_238772E60);
  sub_2385AF228();
  sub_23875D9C0();
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  sub_23875EA80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2387632F0;
  v12 = MEMORY[0x277D849A0];
  *(v11 + 56) = MEMORY[0x277D84958];
  *(v11 + 64) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F628, &unk_238772DC0);
  sub_23875D370();
  v13 = sub_23875EAB0();
  v15 = v14;

  v23 = v13;
  v24 = v15;
  sub_2384397A8();
  v16 = sub_23875DAA0();
  v18 = v17;
  LOBYTE(v8) = v19;
  sub_23843A3E8(&qword_27DF0F670, &qword_27DF0F648, &qword_238772E58);
  sub_23875DC60();
  sub_2384397FC(v16, v18, v8 & 1);

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_2385ACC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v3 = type metadata accessor for AccountConsentManagementTransactionHistoryView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F628, &unk_238772DC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - v9;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v7 + 16))(v10, a1, v6);
  swift_getKeyPath();
  sub_2385AF2D8(a1, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_2385AF33C(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F668, qword_238772E68);
  sub_23843A3E8(&qword_27DF0F678, &qword_27DF0F628, &unk_238772DC0);
  sub_2385AF420(&qword_27DF0A200, MEMORY[0x277CC95F0]);
  sub_23843A3E8(&qword_27DF0F660, &qword_27DF0F668, qword_238772E68);
  sub_23875E370();
}

void *sub_2385ACF88@<X0>(void (**a1)(void, void)@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23875D030();
  v10 = 1;
  sub_2385AD0C4(v3, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_23843981C(__dst, v7, &qword_27DF0F680, &unk_238772EB0);
  sub_238439884(v12, &qword_27DF0F680, &unk_238772EB0);

  memcpy(&v9[7], __dst, 0x168uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x16FuLL);
}

uint64_t sub_2385AD0C4@<X0>(void (*a1)(void, void)@<X0>, uint64_t a2@<X8>)
{
  v235 = a1;
  v201 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v204 = &v196[-v4];
  v5 = sub_23875BC40();
  v6 = *(v5 - 8);
  v209 = v5;
  v210 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v198 = &v196[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v199 = &v196[-v10];
  v11 = sub_238758AD0();
  v229 = *(v11 - 8);
  v230 = v11;
  v12 = *(v229 + 64);
  MEMORY[0x28223BE20](v11);
  v228 = &v196[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_2387587A0();
  v231 = *(v14 - 8);
  v232 = v14;
  v15 = *(v231 + 64);
  MEMORY[0x28223BE20](v14);
  v227 = &v196[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_23875CEF0();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v234 = &v196[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v196[-v22];
  v24 = sub_238758090();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v196[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23875ED50();
  v207 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v223 = sub_23875CE60();
  LOBYTE(v267[0]) = 1;
  v29 = v235;
  sub_2385AE514(v235, &v263);
  v270 = *&v264[16];
  v271 = *&v264[32];
  v268 = v263;
  v269 = *v264;
  v273[2] = *&v264[16];
  v273[3] = *&v264[32];
  v273[4] = *&v264[48];
  v273[1] = *v264;
  v272 = *&v264[48];
  v273[0] = v263;
  sub_23843981C(&v268, &v256, &qword_27DF0A248, &unk_238765310);
  sub_238439884(v273, &qword_27DF0A248, &unk_238765310);
  *&v266[23] = v269;
  *&v266[39] = v270;
  *&v266[55] = v271;
  *&v266[71] = v272;
  *&v266[7] = v268;
  v222 = LOBYTE(v267[0]);
  sub_23875A160();
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_238439884(v23, &unk_27DF0B080, &unk_2387662A0);
    memset(v267, 0, 88);
  }

  else
  {
    (*(v25 + 32))(v28, v23, v24);
    v30 = sub_23875CE60();
    LOBYTE(v256) = 1;
    sub_2385AEB34(v28, v29, &v263);
    *(v236 + 7) = v263;
    *(&v236[1] + 7) = *v264;
    *(&v236[2] + 7) = *&v264[16];
    *(&v236[3] + 7) = *&v264[32];
    v31 = v256;
    (*(v25 + 8))(v28, v24);
    v267[0] = v30;
    LOBYTE(v267[1]) = v31;
    *(&v267[2] + 1) = v236[1];
    *(&v267[3] + 1) = v236[2];
    *(&v267[4] + 1) = v236[3];
    *&v267[5] = *(&v236[3] + 15);
    *(&v267[1] + 1) = v236[0];
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v32 = qword_2814F1B90;
  v33 = sub_23875EA50();
  v34 = sub_23875EA50();
  v225 = "ON_PICKER_CANCEL_BUTTON_TITLE";
  v35 = sub_23875EA50();
  v213 = v32;
  v36 = [v32 localizedStringForKey:v33 value:v34 table:v35];

  sub_23875EA80();
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v37 = swift_allocObject();
  v224 = xmmword_2387632F0;
  *(v37 + 16) = xmmword_2387632F0;
  v38 = sub_23875A170();
  v40 = v39;
  *(v37 + 56) = MEMORY[0x277D837D0];
  v208 = sub_238448C58();
  *(v37 + 64) = v208;
  *(v37 + 32) = v38;
  *(v37 + 40) = v40;
  v41 = sub_23875EAB0();
  v43 = v42;

  *&v263 = v41;
  *(&v263 + 1) = v43;
  v211 = sub_2384397A8();
  v44 = sub_23875DAA0();
  v220 = v46;
  v221 = v45;
  v48 = v47;
  v49 = sub_23875A090();
  v51 = v50;
  v52 = sub_23875A170();
  v205 = v44;
  v206 = v48;
  if (v49 == v52 && v51 == v53)
  {

LABEL_12:
    v256 = v44;
    v257 = v221;
    *v258 = v220 & 1;
    *&v258[8] = v48;
    v258[16] = 1;
    sub_23843980C(v44, v221, v220 & 1);

    sub_23875D1B0();
    v56 = v263;
    v55 = *v264;
    goto LABEL_14;
  }

  v54 = sub_23875F630();

  if (v54)
  {
    goto LABEL_12;
  }

  sub_23875CED0();
  sub_23875CEC0();
  sub_23875A090();
  sub_23875CEB0();

  sub_23875CEC0();
  sub_23875CF10();
  v57 = sub_23875DA90();
  v59 = v58;
  v61 = v60;
  LODWORD(v263) = sub_23875D440();
  v62 = sub_23875DA20();
  v64 = v63;
  v66 = v65;
  v234 = v67;
  sub_2384397FC(v57, v59, v61 & 1);

  v68 = sub_23875DA30();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  sub_2384397FC(v62, v64, v66 & 1);

  v256 = v68;
  v257 = v70;
  *v258 = v72 & 1;
  *&v258[8] = v74;
  v258[16] = 0;
  sub_23875D1B0();
  v56 = v263;
  v55 = *v264;
LABEL_14:
  v202 = v56;
  v203 = v55;
  v218 = v55;
  v219 = v56;
  v233 = *(&v55 + 1);
  v234 = *(&v56 + 1);
  v217 = v264[16];
  sub_23845B7C4(v56, *(&v56 + 1), v55);
  v75 = sub_23875EA50();
  v76 = sub_23875EA50();
  v77 = sub_23875EA50();
  v78 = v213;
  v79 = [v213 localizedStringForKey:v75 value:v76 table:v77];

  sub_23875EA80();
  v80 = swift_allocObject();
  *(v80 + 16) = v224;
  v81 = v227;
  sub_23875A0F0();
  v82 = sub_238758770();
  v84 = v83;
  (*(v231 + 8))(v81, v232);
  v85 = v208;
  *(v80 + 56) = MEMORY[0x277D837D0];
  *(v80 + 64) = v85;
  *(v80 + 32) = v82;
  *(v80 + 40) = v84;
  v86 = sub_23875EAB0();
  v88 = v87;

  *&v263 = v86;
  *(&v263 + 1) = v88;
  v216 = sub_23875DAA0();
  v231 = v89;
  v232 = v90;
  v200 = v91;
  v92 = sub_23875EA50();
  v93 = sub_23875EA50();
  v94 = sub_23875EA50();
  v95 = [v78 localizedStringForKey:v92 value:v93 table:v94];

  sub_23875EA80();
  v96 = swift_allocObject();
  *(v96 + 16) = v224;
  v97 = v228;
  sub_23875A210();
  v98 = sub_238758AC0();
  v100 = v99;
  (*(v229 + 8))(v97, v230);
  *(v96 + 56) = MEMORY[0x277D837D0];
  *(v96 + 64) = v85;
  *(v96 + 32) = v98;
  *(v96 + 40) = v100;
  v101 = sub_23875EAB0();
  v103 = v102;

  *&v263 = v101;
  *(&v263 + 1) = v103;
  v104 = sub_23875DAA0();
  v214 = v105;
  v215 = v104;
  v230 = v106;
  v108 = v107;
  v109 = sub_23875A150();
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v113 = 0;
  if ((v109 & 0x10000) == 0)
  {
    v114 = v109;
    v115 = sub_23875EA50();
    v116 = sub_23875EA50();
    v117 = sub_23875EA50();
    v118 = [v213 localizedStringForKey:v115 value:v116 table:v117];

    sub_23875EA80();
    v119 = swift_allocObject();
    v120 = MEMORY[0x277D84958];
    *(v119 + 16) = v224;
    v121 = MEMORY[0x277D849A0];
    *(v119 + 56) = v120;
    *(v119 + 64) = v121;
    *(v119 + 32) = v114;
    v122 = sub_23875EAB0();
    v124 = v123;

    *&v263 = v122;
    *(&v263 + 1) = v124;
    v110 = sub_23875DAA0();
    v111 = v125;
    v113 = v126;
    v112 = (v127 & 1);
    sub_23843980C(v110, v125, v127 & 1);
  }

  v226 = v111;
  v227 = v112;
  v228 = v113;
  v229 = v110;
  v128 = v204;
  sub_23875A0A0();
  v129 = v209;
  v130 = v210;
  if ((*(v210 + 48))(v128, 1, v209) == 1)
  {
    sub_238439884(v128, &qword_27DF12E00, &unk_238763FC0);
    v131 = 0;
    v132 = 0;
    v133 = 0;
    v134 = 0;
  }

  else
  {
    v197 = v108;
    v135 = v199;
    (*(v130 + 32))(v199, v128, v129);
    v136 = v198;
    sub_23875A0E0();
    sub_2385AF420(&qword_27DF0DC38, MEMORY[0x277CC9578]);
    v137 = sub_23875E9E0();
    v140 = *(v130 + 8);
    v138 = v130 + 8;
    v139 = v140;
    v140(v136, v129);
    if (v137)
    {
      v139(v135, v129);
      v131 = 0;
      v132 = 0;
      v133 = 0;
      v134 = 0;
    }

    else
    {
      v141 = sub_23875EA50();
      v142 = sub_23875EA50();
      v143 = sub_23875EA50();
      v144 = [v213 localizedStringForKey:v141 value:v142 table:v143];

      sub_23875EA80();
      v145 = swift_allocObject();
      *(v145 + 16) = v224;
      v146 = sub_23875BC10();
      v235 = v139;
      v147 = v208;
      *(v145 + 56) = MEMORY[0x277D837D0];
      *(v145 + 64) = v147;
      *(v145 + 32) = v146;
      *(v145 + 40) = v148;
      v149 = sub_23875EAB0();
      v151 = v150;

      *&v263 = v149;
      *(&v263 + 1) = v151;
      v152 = sub_23875DAA0();
      v154 = v153;
      LOBYTE(v143) = v155;
      sub_23875D7F0();
      v156 = sub_23875DA60();
      v158 = v157;
      v210 = v138;
      v160 = v159;

      sub_2384397FC(v152, v154, v143 & 1);

      LODWORD(v263) = sub_23875D440();
      v161 = sub_23875DA20();
      v132 = v162;
      LOBYTE(v154) = v163;
      v165 = v164;
      sub_2384397FC(v156, v158, v160 & 1);

      v235(v199, v209);
      v166 = v154 & 1;
      v131 = v161;
      sub_23843980C(v161, v132, v166);

      v133 = v166;
      v134 = v165;
    }

    LOBYTE(v108) = v197;
  }

  *&v224 = v133;
  v225 = v134;
  v235 = v132;
  v252 = v267[2];
  v253 = v267[3];
  v254 = v267[4];
  v250 = v267[0];
  v251 = v267[1];
  v256 = v223;
  v257 = 0;
  v258[0] = v222;
  *&v258[1] = *v266;
  *&v258[17] = *&v266[16];
  *&v258[80] = *&v266[79];
  *&v258[65] = *&v266[64];
  *&v258[49] = *&v266[48];
  *&v258[33] = *&v266[32];
  v240 = v223;
  v241 = *v258;
  v244 = *&v258[48];
  v245 = *&v258[64];
  v242 = *&v258[16];
  v243 = *&v258[32];
  v259[0] = v267[0];
  v259[1] = v267[1];
  v259[4] = v267[4];
  v259[2] = v267[2];
  v259[3] = v267[3];
  v255 = *&v267[5];
  v167 = v217;
  v249 = v217;
  v168 = v200 & 1;
  v248 = v200 & 1;
  v169 = v108 & 1;
  v247 = v108 & 1;
  v260 = *&v267[5];
  *(&v246[1] + 8) = v267[1];
  *(v246 + 8) = v267[0];
  *&v246[0] = *&v258[80];
  *(&v246[5] + 1) = *&v267[5];
  *(&v246[4] + 8) = v267[4];
  *(&v246[3] + 8) = v267[3];
  *(&v246[2] + 8) = v267[2];
  v239 = v217;
  v238 = v200 & 1;
  v237 = v108 & 1;
  v170 = v223;
  v171 = *v258;
  v172 = *&v258[32];
  v173 = v201;
  *(v201 + 32) = *&v258[16];
  *(v173 + 48) = v172;
  *v173 = v170;
  *(v173 + 16) = v171;
  v174 = v244;
  v175 = v245;
  v176 = v246[1];
  *(v173 + 96) = v246[0];
  *(v173 + 112) = v176;
  *(v173 + 64) = v174;
  *(v173 + 80) = v175;
  v177 = v246[2];
  v178 = v246[3];
  v179 = v246[5];
  *(v173 + 160) = v246[4];
  *(v173 + 176) = v179;
  *(v173 + 128) = v177;
  *(v173 + 144) = v178;
  v180 = v203;
  *(v173 + 192) = v202;
  *(v173 + 208) = v180;
  *(v173 + 224) = v167;
  v182 = v215;
  v181 = v216;
  v184 = v231;
  v183 = v232;
  *(v173 + 232) = v216;
  *(v173 + 240) = v184;
  *(v173 + 248) = v168;
  *(v173 + 256) = v183;
  *(v173 + 264) = v182;
  v185 = v229;
  *(v173 + 272) = v230;
  *(v173 + 280) = v169;
  *(v173 + 288) = v214;
  *(v173 + 296) = v185;
  v186 = v227;
  *(v173 + 304) = v226;
  *(v173 + 312) = v186;
  *(v173 + 320) = v228;
  *(v173 + 328) = v131;
  *(v173 + 336) = v132;
  *(v173 + 344) = v133;
  *(v173 + 352) = v134;
  sub_23843981C(v267, &v263, &qword_27DF0F688, &qword_238772EC0);
  sub_23843981C(&v256, &v263, &qword_27DF0A250, &qword_238768E60);
  sub_23843981C(v259, &v263, &qword_27DF0F688, &qword_238772EC0);
  sub_23845B7C4(v219, v234, v218);
  sub_23843980C(v181, v231, v168);

  sub_23843980C(v182, v230, v169);

  v187 = v228;
  v188 = v229;
  v189 = v226;
  v190 = v227;
  sub_238476F5C(v229, v226, v227, v228);
  v191 = v235;
  v192 = v224;
  v193 = v225;
  sub_238476F5C(v131, v235, v224, v225);
  sub_2384397FC(v205, v221, v220 & 1);

  sub_238476FA0(v188, v189, v190, v187);
  LOBYTE(v188) = v218;
  v194 = v219;
  sub_23845B800(v219, v234, v218);
  sub_238439884(v267, &qword_27DF0F688, &qword_238772EC0);
  sub_238476FA0(v131, v191, v192, v193);
  sub_238476FA0(v131, v191, v192, v193);
  sub_238476FA0(v229, v226, v227, v228);
  sub_2384397FC(v215, v230, v247);

  sub_2384397FC(v216, v231, v248);

  sub_23845B800(v194, v234, v188);
  v261[2] = v252;
  v261[3] = v253;
  v261[4] = v254;
  v262 = v255;
  v261[0] = v250;
  v261[1] = v251;
  sub_238439884(v261, &qword_27DF0F688, &qword_238772EC0);
  *&v264[33] = *&v266[32];
  *&v264[49] = *&v266[48];
  v265[0] = *&v266[64];
  *&v264[1] = *v266;
  v263 = v223;
  v264[0] = v222;
  *(v265 + 15) = *&v266[79];
  *&v264[17] = *&v266[16];
  sub_238439884(&v263, &qword_27DF0A250, &qword_238768E60);
}

uint64_t sub_2385AE514@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v66 = a2;
  v67 = a1;
  v2 = sub_23875BC40();
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = *(v64 + 64);
  MEMORY[0x28223BE20](v2);
  v63 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875BD20();
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875B7C0();
  v58 = *(v9 - 8);
  v59 = v9;
  v10 = *(v58 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2387591B0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - v19;
  v57 = sub_238758090();
  v21 = *(v57 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v57);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v62 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875A100();
  sub_23875A140();
  (*(v14 + 104))(v17, *MEMORY[0x277CC7790], v13);
  sub_2385AF420(&qword_27DF0F690, MEMORY[0x277CC7798]);
  sub_23875EC40();
  sub_23875EC40();
  v25 = *(v14 + 8);
  v25(v17, v13);
  v25(v20, v13);
  if (v70 == v72)
  {
    sub_23875B7A0();
  }

  else
  {
    sub_23875B790();
  }

  sub_23875BCC0();
  v26 = sub_238758070();
  v28 = v27;
  (*(v60 + 8))(v8, v61);
  (*(v58 + 8))(v12, v59);
  (*(v21 + 8))(v24, v57);
  v70 = v26;
  v71 = v28;
  sub_2384397A8();
  v29 = sub_23875DAA0();
  v31 = v30;
  v33 = v32;
  v34 = sub_23875DA50();
  v36 = v35;
  v38 = v37;
  sub_2384397FC(v29, v31, v33 & 1);

  sub_23875D8F0();
  v39 = sub_23875DA60();
  v41 = v40;
  LOBYTE(v28) = v42;
  v44 = v43;

  sub_2384397FC(v34, v36, v38 & 1);

  v45 = v63;
  sub_23875A0E0();
  v46 = sub_23875BC10();
  v48 = v47;
  (*(v64 + 8))(v45, v65);
  v70 = v46;
  v71 = v48;
  v49 = sub_23875DAA0();
  v51 = v50;
  v52 = v28 & 1;
  LOBYTE(v70) = v28 & 1;
  LOBYTE(v72) = v28 & 1;
  v69 = 1;
  LOBYTE(v28) = v53 & 1;
  v68 = v53 & 1;
  v54 = v66;
  *v66 = v39;
  v54[1] = v41;
  *(v54 + 16) = v52;
  v54[3] = v44;
  v54[4] = 0;
  *(v54 + 40) = 1;
  v54[6] = v49;
  v54[7] = v50;
  *(v54 + 64) = v53 & 1;
  v54[9] = v55;
  sub_23843980C(v39, v41, v52);

  sub_23843980C(v49, v51, v28);

  sub_2384397FC(v49, v51, v28);

  sub_2384397FC(v39, v41, v70);
}

uint64_t sub_2385AEB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v73 = a3;
  v74 = a2;
  v71 = a1;
  v70 = sub_23875BD20();
  v3 = *(v70 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v70);
  v6 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_23875B7C0();
  v7 = *(v69 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v69);
  v10 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2387591B0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v67 - v17;
  sub_23875ED50();
  v72 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875A140();
  (*(v12 + 104))(v15, *MEMORY[0x277CC7790], v11);
  sub_2385AF420(&qword_27DF0F690, MEMORY[0x277CC7798]);
  sub_23875EC40();
  sub_23875EC40();
  v19 = *(v12 + 8);
  v19(v15, v11);
  v19(v18, v11);
  if (v75 == v77)
  {
    sub_23875B7A0();
  }

  else
  {
    sub_23875B790();
  }

  sub_23875BCC0();
  v20 = sub_238758070();
  v22 = v21;
  (*(v3 + 8))(v6, v70);
  (*(v7 + 8))(v10, v69);
  v75 = v20;
  v76 = v22;
  v23 = sub_2384397A8();
  v24 = sub_23875DAA0();
  v26 = v25;
  v28 = v27;
  LODWORD(v75) = sub_23875D440();
  v29 = sub_23875DA20();
  v31 = v30;
  LODWORD(v3) = v32;
  v34 = v33;
  sub_2384397FC(v24, v26, v28 & 1);

  v35 = sub_23875A1B0();
  if (v35)
  {
    v67[1] = v23;
    v68 = v3;
    v69 = v31;
    v70 = v29;
    v71 = v34;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v36 = qword_2814F1B90;
    v37 = sub_23875EA50();
    v38 = sub_23875EA50();
    v39 = sub_23875EA50();
    v40 = [v36 localizedStringForKey:v37 value:v38 table:v39];

    sub_23875EA80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_238763300;
    v42 = sub_23875A220();
    v44 = v43;
    v45 = MEMORY[0x277D837D0];
    *(v41 + 56) = MEMORY[0x277D837D0];
    v46 = sub_238448C58();
    *(v41 + 64) = v46;
    *(v41 + 32) = v42;
    *(v41 + 40) = v44;
    [v35 doubleValue];
    v47 = MEMORY[0x277D83A80];
    *(v41 + 96) = MEMORY[0x277D839F8];
    *(v41 + 104) = v47;
    *(v41 + 72) = v48;
    v49 = sub_238758040();
    *(v41 + 136) = v45;
    *(v41 + 144) = v46;
    *(v41 + 112) = v49;
    *(v41 + 120) = v50;
    v51 = sub_23875EAB0();
    v53 = v52;

    v75 = v51;
    v76 = v53;
    v3 = sub_23875DAA0();
    v55 = v54;
    LOBYTE(v44) = v56;
    LODWORD(v75) = sub_23875D440();
    v57 = sub_23875DA20();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    sub_2384397FC(v3, v55, v44 & 1);

    v35 = v61 & 1;
    sub_23843980C(v57, v59, v61 & 1);

    v29 = v70;
    v34 = v71;
    v31 = v69;
    LOBYTE(v3) = v68;
  }

  else
  {
    v57 = 0;
    v59 = 0;
    v63 = 0;
  }

  v64 = v3 & 1;
  sub_23843980C(v29, v31, v64);

  sub_238476F5C(v57, v59, v35, v63);
  sub_238476FA0(v57, v59, v35, v63);
  LOBYTE(v75) = v64;
  v65 = v73;
  *v73 = v29;
  v65[1] = v31;
  *(v65 + 16) = v64;
  v65[3] = v34;
  v65[4] = v57;
  v65[5] = v59;
  v65[6] = v35;
  v65[7] = v63;
  sub_238476FA0(v57, v59, v35, v63);
  sub_2384397FC(v29, v31, v64);
}

unint64_t sub_2385AF228()
{
  result = qword_27DF0F658;
  if (!qword_27DF0F658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F650, &qword_238772E60);
    sub_23843A3E8(&qword_27DF0F660, &qword_27DF0F668, qword_238772E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F658);
  }

  return result;
}

uint64_t sub_2385AF2D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountConsentManagementTransactionHistoryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2385AF33C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountConsentManagementTransactionHistoryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_2385AF3A0@<X0>(void (**a1)(void, void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for AccountConsentManagementTransactionHistoryView() - 8) + 80);

  return sub_2385ACF88(a1, a2);
}

uint64_t sub_2385AF420(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2385AF494(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_23875F630(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_23875F630();
    }
  }

  return result;
}

uint64_t sub_2385AF538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  sub_23875E1A0();
  *(a5 + 32) = v11;
  *(a5 + 40) = v12;
  sub_23875E1A0();
  *(a5 + 48) = v11;
  *(a5 + 56) = v12;
  v6 = type metadata accessor for OrderDetailsStatusDescription_iOS(0);
  v7 = v6[7];
  *(a5 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  swift_storeEnumTagMultiPayload();
  v8 = v6[8];
  *(a5 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v9 = v6[9];
  *(a5 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C308, &qword_23876A250);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2385AF674@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];

  return sub_2385AF538(v3, v4, v6, v5, a1);
}

uint64_t sub_2385AF700()
{
  v1 = sub_23875CFF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for OrderDetailsStatusDescription_iOS(0) + 36);
  sub_2384D5808(v5);
  v7 = sub_23875CFE0();
  (*(v2 + 8))(v5, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F768, &qword_2387731D8);
  v8 = sub_23875CF40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2387632F0;
  if (v7)
  {
    sub_23875CF20();
  }

  else
  {
    sub_23875CF30();
  }

  v13 = sub_23844D310(v12);
  swift_setDeallocating();
  (*(v9 + 8))(v12 + v11, v8);
  swift_deallocClassInstance();
  return v13;
}

uint64_t sub_2385AF8CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a1;
  v60 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F6D0, &qword_238773118);
  v2 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v61 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v56 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F6D8, &qword_238773120);
  v7 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v56 - v11;
  v13 = sub_23875C450();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - v19;
  sub_23875ED50();
  v58 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = type metadata accessor for OrderDetailsStatusDescription_iOS(0);
  v22 = v57;
  v23 = v57 + *(v21 + 32);
  sub_2384D4E38(v20);
  (*(v14 + 104))(v17, *MEMORY[0x277CDF3D0], v13);
  LOBYTE(v23) = sub_23875C440();
  v24 = *(v14 + 8);
  v24(v17, v13);
  v24(v20, v13);
  v25 = objc_opt_self();
  v26 = &selRef_systemGray6Color;
  if ((v23 & 1) == 0)
  {
    v26 = &selRef_systemGray4Color;
  }

  v27 = [v25 *v26];
  v28 = sub_23875DFB0();
  v29 = *(sub_23875C980() + 20);
  v30 = *MEMORY[0x277CE0118];
  v31 = sub_23875CF50();
  (*(*(v31 - 8) + 104))(&v12[v29], v30, v31);
  __asm { FMOV            V0.2D, #12.0 }

  *v12 = _Q0;
  *&v12[*(v56 + 36)] = v28;

  *v6 = sub_23875D030();
  *(v6 + 1) = 0x4000000000000000;
  v6[16] = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F6E0, &qword_238773128);
  sub_2385AFDC8(v22, &v6[*(v37 + 44)]);
  LOBYTE(v30) = sub_23875D770();
  sub_23875C3D0();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F6E8, &qword_238773130) + 36)];
  *v46 = v30;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  LOBYTE(v30) = sub_23875D7D0();
  sub_23875C3D0();
  v47 = &v6[*(v59 + 36)];
  *v47 = v30;
  *(v47 + 1) = v48;
  *(v47 + 2) = v49;
  *(v47 + 3) = v50;
  *(v47 + 4) = v51;
  v47[40] = 0;
  sub_23843981C(v12, v9, &qword_27DF0F6D8, &qword_238773120);
  v52 = v61;
  sub_23843981C(v6, v61, &qword_27DF0F6D0, &qword_238773118);
  v53 = v60;
  sub_23843981C(v9, v60, &qword_27DF0F6D8, &qword_238773120);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F6F0, &qword_238773138);
  sub_23843981C(v52, v53 + *(v54 + 48), &qword_27DF0F6D0, &qword_238773118);

  sub_238439884(v6, &qword_27DF0F6D0, &qword_238773118);
  sub_238439884(v12, &qword_27DF0F6D8, &qword_238773120);
  sub_238439884(v52, &qword_27DF0F6D0, &qword_238773118);
  sub_238439884(v9, &qword_27DF0F6D8, &qword_238773120);
}

uint64_t sub_2385AFDC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v62 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F6F8, &qword_238773140);
  v3 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v5 = (&v54 - v4);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F700, &unk_238773148);
  v6 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v61 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = &v54 - v9;
  MEMORY[0x28223BE20](v10);
  v59 = &v54 - v11;
  sub_23875ED50();
  v60 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2387632F0;
  v13 = *a1;
  v14 = a1[1];
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_238448C58();
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  v15 = qword_2814F0880;

  v55 = a1;
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_2814F1B90;
  v17 = sub_23875EA50();
  v18 = sub_23875EA50();
  v19 = sub_23875EA50();
  v20 = [v16 localizedStringForKey:v17 value:v18 table:v19];

  sub_23875EA80();
  v21 = sub_23875EAA0();
  v23 = v22;

  *&v63 = v21;
  *(&v63 + 1) = v23;
  sub_2384397A8();
  v24 = sub_23875DAA0();
  v26 = v25;
  LOBYTE(v23) = v27;
  sub_23875D7F0();
  v28 = sub_23875DA60();
  v30 = v29;
  v32 = v31;

  sub_2384397FC(v24, v26, v23 & 1);

  LODWORD(v63) = sub_23875D440();
  v33 = sub_23875DA20();
  v35 = v34;
  LOBYTE(v17) = v36;
  v38 = v37;
  sub_2384397FC(v28, v30, v32 & 1);

  *v5 = sub_23875E4A0();
  v5[1] = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F708, &qword_238773158);
  sub_2385B0390(v55, v5 + *(v40 + 44));
  *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F710, &qword_238773160) + 36)) = 256;
  v41 = sub_23875D7F0();
  KeyPath = swift_getKeyPath();
  v43 = (v5 + *(v56 + 36));
  *v43 = KeyPath;
  v43[1] = v41;
  sub_23875E4B0();
  sub_23875C9C0();
  v44 = v58;
  sub_2384396E4(v5, v58, &qword_27DF0F6F8, &qword_238773140);
  v45 = (v44 + *(v57 + 36));
  v46 = v68;
  v45[4] = v67;
  v45[5] = v46;
  v45[6] = v69;
  v47 = v64;
  *v45 = v63;
  v45[1] = v47;
  v48 = v66;
  v45[2] = v65;
  v45[3] = v48;
  v49 = v59;
  sub_2384396E4(v44, v59, &qword_27DF0F700, &unk_238773148);
  v50 = v61;
  sub_23843981C(v49, v61, &qword_27DF0F700, &unk_238773148);
  v51 = v62;
  *v62 = v33;
  v51[1] = v35;
  *(v51 + 16) = v17 & 1;
  v51[3] = v38;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F718, &qword_238773198);
  sub_23843981C(v50, v51 + *(v52 + 48), &qword_27DF0F700, &unk_238773148);
  sub_23843980C(v33, v35, v17 & 1);

  sub_238439884(v49, &qword_27DF0F700, &unk_238773148);
  sub_238439884(v50, &qword_27DF0F700, &unk_238773148);
  sub_2384397FC(v33, v35, v17 & 1);
}

uint64_t sub_2385B0390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for OrderDetailsStatusDescription_iOS(0);
  v50 = *(v3 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MoreButton(0);
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F720, &qword_2387731A0);
  v60 = *(v9 - 8);
  v61 = v9;
  v10 = *(v60 + 64);
  MEMORY[0x28223BE20](v9);
  v52 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F728, &unk_2387731A8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v58 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v62 = &v48 - v16;
  sub_23875ED50();
  v59 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *(a1 + 24);
  *&v57 = *(a1 + 16);
  *(&v57 + 1) = v17;
  v19 = *(a1 + 56);
  LOBYTE(v63) = *(a1 + 48);
  v18 = v63;
  *(&v63 + 1) = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v55 = *(&v66 + 1);
  v56 = v66;
  v54 = v67;
  sub_23875E480();
  v20 = 1;
  sub_23875C9C0();
  *(&v77[3] + 7) = *(&v77[10] + 8);
  *(&v77[4] + 7) = *(&v77[11] + 8);
  *(&v77[5] + 7) = *(&v77[12] + 8);
  *(&v77[6] + 7) = *(&v77[13] + 8);
  *(v77 + 7) = *(&v77[7] + 8);
  *(&v77[1] + 7) = *(&v77[8] + 8);
  *(&v77[2] + 7) = *(&v77[9] + 8);
  LOBYTE(v66) = v18;
  *(&v66 + 1) = v19;
  sub_23875E1B0();
  if (v63 == 1)
  {
    v22 = *(a1 + 40);
    LOBYTE(v63) = *(a1 + 32);
    v21 = v63;
    *(&v63 + 1) = v22;
    sub_23875E1D0();
    v23 = *(&v66 + 1);
    v24 = v67;
    *v8 = v66;
    *(v8 + 1) = v23;
    v8[16] = v24;
    v25 = v5[5];
    *&v8[v25] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
    swift_storeEnumTagMultiPayload();
    v26 = v5[6];
    *&v8[v26] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
    swift_storeEnumTagMultiPayload();
    v27 = v5[7];
    *&v8[v27] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C308, &qword_23876A250);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v63) = v21;
    *(&v63 + 1) = v22;
    sub_23875E1D0();
    v48 = v66;
    v49 = v67;
    v28 = v51;
    sub_2385B2A84(a1, v51, type metadata accessor for OrderDetailsStatusDescription_iOS);
    v29 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v30 = swift_allocObject();
    sub_2385B2AEC(v28, v30 + v29, type metadata accessor for OrderDetailsStatusDescription_iOS);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F740, &qword_2387731C8);
    sub_2385B2738(&qword_27DF0F748, type metadata accessor for MoreButton);
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F750, &qword_2387731D0);
    v32 = sub_23843A3E8(&qword_27DF0F758, &qword_27DF0F750, &qword_2387731D0);
    *&v66 = v31;
    *(&v66 + 1) = v32;
    swift_getOpaqueTypeConformance2();
    v33 = v52;
    sub_23875DED0();

    sub_2385B2780(v8);
    (*(v60 + 32))(v62, v33, v61);
    v20 = 0;
  }

  v34 = v62;
  (*(v60 + 56))(v62, v20, 1, v61);
  v35 = v58;
  sub_23843981C(v34, v58, &qword_27DF0F728, &unk_2387731A8);
  v36 = v57;
  v63 = v57;
  v37 = v55;
  v38 = v56;
  *&v64 = v56;
  *(&v64 + 1) = v55;
  v39 = v54;
  v65[0] = v54;
  *&v65[1] = v77[0];
  *&v65[17] = v77[1];
  *&v65[65] = v77[4];
  *&v65[81] = v77[5];
  *&v65[97] = v77[6];
  v40 = *(&v77[6] + 15);
  *&v65[112] = *(&v77[6] + 15);
  *&v65[33] = v77[2];
  *&v65[49] = v77[3];
  v41 = *&v65[80];
  v42 = v53;
  *(v53 + 96) = *&v65[64];
  *(v42 + 112) = v41;
  *(v42 + 128) = *&v65[96];
  *(v42 + 144) = v40;
  v43 = *&v65[16];
  *(v42 + 32) = *v65;
  *(v42 + 48) = v43;
  v44 = *&v65[48];
  *(v42 + 64) = *&v65[32];
  *(v42 + 80) = v44;
  v45 = v64;
  *v42 = v63;
  *(v42 + 16) = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F730, &qword_2387731B8);
  sub_23843981C(v35, v42 + *(v46 + 48), &qword_27DF0F728, &unk_2387731A8);
  sub_23843981C(&v63, &v66, &qword_27DF0F738, &qword_2387731C0);
  sub_238439884(v34, &qword_27DF0F728, &unk_2387731A8);
  sub_238439884(v35, &qword_27DF0F728, &unk_2387731A8);
  v74 = v77[4];
  v75 = v77[5];
  *v76 = v77[6];
  v70 = v77[0];
  v71 = v77[1];
  v72 = v77[2];
  v66 = v36;
  v67 = v38;
  v68 = v37;
  v69 = v39;
  *&v76[15] = *(&v77[6] + 15);
  v73 = v77[3];
  sub_238439884(&v66, &qword_27DF0F738, &qword_2387731C0);
}

uint64_t sub_2385B0B4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F750, &qword_2387731D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v9 - 2) = a1;
  sub_2385B27E4();
  sub_23875C8F0();
  sub_2385AF700();
  sub_23843A3E8(&qword_27DF0F758, &qword_27DF0F750, &qword_2387731D0);
  sub_23875DD40();

  (*(v3 + 8))(v6, v2);
}

uint64_t sub_2385B0D40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v6;
  return result;
}

uint64_t sub_2385B0DF4(uint64_t a1)
{
  v2 = sub_23875CFF0();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_23875CA90();
}

void sub_2385B0EE4()
{
  sub_23857C1DC(319, &qword_27DF0A0B0, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_2385B1018(319, &qword_27DF0B940, MEMORY[0x277CDFAA0]);
    if (v1 <= 0x3F)
    {
      sub_2385B1018(319, &qword_2814F09B0, MEMORY[0x277CDF3E0]);
      if (v2 <= 0x3F)
      {
        sub_2385B1018(319, &qword_27DF0F6B0, MEMORY[0x277CE02A8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2385B1018(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875C470();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2385B1098@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_23875E4A0();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F6C0, &qword_238773108);
  sub_2385AF8CC(v1, a1 + *(v4 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F6C8, &qword_238773110);
  *(a1 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_2385B1104()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_23875EA50();
  sub_23875C630();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F808, &unk_2387838C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = objc_opt_self();
  v9 = *MEMORY[0x277D769D0];
  v10 = v7;
  v11 = [v8 preferredFontForTextStyle_];
  *(inited + 64) = sub_2385B2ED0();
  *(inited + 40) = v11;
  sub_23854B584(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &qword_27DF0DED0, &qword_23876E8F0);
  type metadata accessor for Key(0);
  sub_2385B2738(&qword_27DF091F0, type metadata accessor for Key);
  v12 = sub_23875E910();

  [v3 boundingRectWithSize:1 options:v12 attributes:0 context:{v5, 1.79769313e308}];

  sub_23875C630();
  v14 = *(v0 + 1);
  v15 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  return sub_23875E2F0();
}

uint64_t sub_2385B1300@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_23875D510();
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *v1;
  v41[0] = v40;
  sub_2384397A8();

  v7 = sub_23875DAA0();
  v9 = v8;
  v11 = v10;
  LODWORD(v41[0]) = sub_23875D420();
  v27 = sub_23875DA20();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_2384397FC(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  v19 = swift_getKeyPath();
  v15 &= 1u;
  LOBYTE(v31) = v15;
  v38 = 0;
  v20 = *(v1 + 3);
  v39 = *(v1 + 2);
  v21 = swift_allocObject();
  v22 = v1[1];
  *(v21 + 16) = *v1;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(v1 + 32);
  sub_238477AFC(&v40, v41);
  sub_2385B2CA0(&v39, v41);

  v23 = sub_23875E4A0();
  *&v31 = v27;
  *(&v31 + 1) = v13;
  LOBYTE(v32) = v15;
  *(&v32 + 1) = v17;
  *&v33 = KeyPath;
  BYTE8(v33) = 0;
  *&v34 = v19;
  *(&v34 + 1) = 2;
  LOBYTE(v35) = 0;
  *(&v35 + 1) = sub_2385B2C98;
  *&v36 = v21;
  *(&v36 + 1) = v23;
  v37 = v24;
  sub_23875D500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F7D8, &qword_238773388);
  sub_2385B2CFC();
  v25 = v28;
  sub_23875DC10();
  (*(v29 + 8))(v6, v25);
  v41[4] = v35;
  v41[5] = v36;
  v42 = v37;
  v41[0] = v31;
  v41[1] = v32;
  v41[2] = v33;
  v41[3] = v34;
  return sub_238439884(v41, &qword_27DF0F7D8, &qword_238773388);
}

uint64_t sub_2385B15B4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_23875C650();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_23875E020();
  v17 = *a2;
  v9 = *(a2 + 3);
  v16 = *(a2 + 2);
  (*(v7 + 16))(&v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1, v6);
  v10 = (*(v7 + 80) + 49) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = a2[1];
  *(v11 + 16) = *a2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a2 + 32);
  (*(v7 + 32))(v11 + v10, &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v6);
  sub_238477AFC(&v17, v15);
  sub_2385B2CA0(&v16, v15);

  *a3 = v14;
  a3[1] = sub_2385B2E6C;
  a3[2] = v11;
  a3[3] = 0;
  a3[4] = 0;
  return result;
}

uint64_t sub_2385B17A4()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385B1104();
}

uint64_t sub_2385B1854@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  return sub_2385B1300(a1);
}

__n128 sub_2385B1890@<Q0>(uint64_t a1@<X8>)
{
  v118 = a1;
  v117 = sub_23875C8A0();
  v116 = *(v117 - 8);
  v1 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v124 = &v97[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v115 = &v97[-v4];
  v111 = sub_23875D2E0();
  v110 = *(v111 - 8);
  v5 = *(v110 + 64);
  MEMORY[0x28223BE20](v111);
  v109 = &v97[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v106 = sub_23875C450();
  v112 = *(v106 - 8);
  v7 = v112[8];
  MEMORY[0x28223BE20](v106);
  v100 = &v97[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v97[-v10];
  v121 = type metadata accessor for MoreButton(0);
  v12 = *(v121 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v121);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v14 = *(v101 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v101);
  v17 = &v97[-v16];
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F798, &qword_2387732E8);
  v18 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v102 = &v97[-v19];
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F7A0, &qword_2387732F0);
  v107 = *(v108 - 8);
  v20 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v105 = &v97[-v21];
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F7A8, &qword_2387732F8);
  v22 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v122 = &v97[-v23];
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F7B0, &unk_238773300);
  v24 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v114 = &v97[-v25];
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v26 = qword_2814F1B90;
  v27 = sub_23875EA50();
  v28 = sub_23875EA50();
  v29 = sub_23875EA50();
  v30 = [v26 localizedStringForKey:v27 value:v28 table:v29];

  v31 = sub_23875EA80();
  v33 = v32;

  *&v128 = v31;
  *(&v128 + 1) = v33;
  sub_2385B2A84(v123, &v97[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for MoreButton);
  v34 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v35 = swift_allocObject();
  sub_2385B2AEC(&v97[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], v35 + v34, type metadata accessor for MoreButton);
  sub_2384397A8();
  sub_23875E230();
  v99 = *(v121 + 24);
  v36 = v11;
  sub_2384D4E38(v11);
  v98 = *MEMORY[0x277CDF3D0];
  v37 = v112;
  v38 = v112[13];
  v119 = (v112 + 13);
  v120 = v38;
  v39 = v100;
  v40 = v106;
  v38(v100);
  v41 = sub_23875C440();
  v42 = v37[1];
  v112 = v42;
  (v42)(v39, v40);
  (v42)(v36, v40);
  v43 = objc_opt_self();
  v44 = &selRef_systemGray4Color;
  if (v41)
  {
    v44 = &selRef_systemGray6Color;
  }

  v45 = [v43 *v44];
  v46 = sub_23875DFB0();
  v47 = sub_23875D780();
  v48 = v102;
  (*(v14 + 32))(v102, v17, v101);
  v49 = v48 + *(v104 + 36);
  *v49 = v46;
  *(v49 + 8) = v47;
  v50 = v109;
  sub_23875D2D0();
  sub_2385B2BB4();
  sub_2385B2738(&qword_27DF0F7C0, MEMORY[0x277CDE0B8]);
  v51 = v105;
  v52 = v111;
  sub_23875DB30();
  (*(v110 + 8))(v50, v52);
  sub_238439884(v48, &qword_27DF0F798, &qword_2387732E8);
  LOBYTE(v48) = sub_23875D7B0();
  sub_23875C3D0();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = v122;
  (*(v107 + 32))(v122, v51, v108);
  v62 = &v61[*(v103 + 36)];
  *v62 = v48;
  *(v62 + 1) = v54;
  *(v62 + 2) = v56;
  *(v62 + 3) = v58;
  *(v62 + 4) = v60;
  v62[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F7C8, &qword_238773310);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_238763B60;
  sub_2384D4E38(v36);
  v64 = v98;
  v120(v39, v98, v40);
  LOBYTE(v48) = sub_23875C440();
  v65 = v112;
  (v112)(v39, v40);
  v65(v36, v40);
  v66 = objc_opt_self();
  v67 = &selRef_systemGray4Color;
  if (v48)
  {
    v67 = &selRef_systemGray6Color;
  }

  v68 = [v66 *v67];
  sub_23875DFB0();
  *(v63 + 32) = sub_23875E440();
  *(v63 + 40) = v69;
  sub_2384D4E38(v36);
  v120(v39, v64, v40);
  v70 = sub_23875C440();
  v65(v39, v40);
  v65(v36, v40);
  v71 = objc_opt_self();
  v72 = &selRef_systemGray4Color;
  if (v70)
  {
    v72 = &selRef_systemGray6Color;
  }

  v73 = [v71 *v72];
  sub_23875DFB0();
  sub_23875E060();

  *(v63 + 48) = sub_23875E440();
  *(v63 + 56) = v74;
  v120 = sub_23875E450();
  v121 = *(v121 + 20);
  v75 = v115;
  sub_2384D5200(v115);
  v76 = *MEMORY[0x277CDFA88];
  v77 = v116;
  v78 = *(v116 + 104);
  v79 = v124;
  v80 = v117;
  v78(v124, v76, v117);
  v81 = sub_23875C890();
  v82 = *(v77 + 8);
  v82(v79, v80);
  v82(v75, v80);
  if (v81)
  {
    sub_23875E5B0();
  }

  else
  {
    sub_23875E5A0();
  }

  sub_2384D5200(v75);
  v83 = v124;
  v78(v124, v76, v80);
  v84 = sub_23875C890();
  v82(v83, v80);
  v82(v75, v80);
  if (v84)
  {
    sub_23875E5A0();
  }

  else
  {
    sub_23875E5B0();
  }

  v85 = v122;
  sub_23875C740();
  v86 = v125;
  v87 = sub_23875D780();
  v88 = v85;
  v89 = v114;
  sub_2384396E4(v88, v114, &qword_27DF0F7A8, &qword_2387732F8);
  v90 = &v89[*(v113 + 36)];
  *v90 = v86;
  v91 = v126;
  *(v90 + 24) = v127;
  *(v90 + 8) = v91;
  v90[40] = v87;
  sub_23875E490();
  sub_23875C9C0();
  v92 = v118;
  sub_2384396E4(v89, v118, &qword_27DF0F7B0, &unk_238773300);
  v93 = v92 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F7D0, &unk_238773318) + 36);
  v94 = v133;
  *(v93 + 64) = v132;
  *(v93 + 80) = v94;
  *(v93 + 96) = v134;
  v95 = v129;
  *v93 = v128;
  *(v93 + 16) = v95;
  result = v131;
  *(v93 + 32) = v130;
  *(v93 + 48) = result;
  return result;
}

uint64_t sub_2385B25D4(uint64_t *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  sub_23875E2F0();
}

uint64_t sub_2385B26C8()
{
  v1 = *(type metadata accessor for OrderDetailsStatusDescription_iOS(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2385B0B4C(v2);
}

uint64_t sub_2385B2738(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2385B2780(uint64_t a1)
{
  v2 = type metadata accessor for MoreButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2385B27E4()
{
  result = qword_27DF0F760;
  if (!qword_27DF0F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F760);
  }

  return result;
}

void sub_2385B2860()
{
  sub_23857C1DC(319, &qword_27DF0C678, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_2385B1018(319, &qword_27DF0B940, MEMORY[0x277CDFAA0]);
    if (v1 <= 0x3F)
    {
      sub_2385B1018(319, &qword_2814F09B0, MEMORY[0x277CDF3E0]);
      if (v2 <= 0x3F)
      {
        sub_2385B1018(319, &qword_27DF0F6B0, MEMORY[0x277CE02A8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2385B2994()
{
  result = qword_27DF0F780;
  if (!qword_27DF0F780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F6C8, &qword_238773110);
    sub_23843A3E8(&qword_27DF0F788, &qword_27DF0F790, qword_238773238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F780);
  }

  return result;
}

uint64_t sub_2385B2A84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385B2AEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385B2B54()
{
  v1 = *(type metadata accessor for MoreButton(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_2385B25D4(v2);
}

unint64_t sub_2385B2BB4()
{
  result = qword_27DF0F7B8;
  if (!qword_27DF0F7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F798, &qword_2387732E8);
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F7B8);
  }

  return result;
}

unint64_t sub_2385B2CFC()
{
  result = qword_27DF0F7E0;
  if (!qword_27DF0F7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F7D8, &qword_238773388);
    sub_2385B2DB4();
    sub_23843A3E8(&qword_27DF0F7F8, &qword_27DF0F800, &qword_2387733A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F7E0);
  }

  return result;
}

unint64_t sub_2385B2DB4()
{
  result = qword_27DF0F7E8;
  if (!qword_27DF0F7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F7F0, &unk_238773390);
    sub_2384D0E10();
    sub_23843A3E8(&qword_2814F0928, &qword_27DF09360, &unk_23876F830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F7E8);
  }

  return result;
}

uint64_t sub_2385B2E6C()
{
  v0 = *(*(sub_23875C650() - 8) + 80);

  return sub_2385B17A4();
}

unint64_t sub_2385B2ED0()
{
  result = qword_27DF0F810;
  if (!qword_27DF0F810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF0F810);
  }

  return result;
}

unint64_t sub_2385B2F1C()
{
  result = qword_27DF0F818;
  if (!qword_27DF0F818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F7D0, &unk_238773318);
    sub_2385B2FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F818);
  }

  return result;
}

unint64_t sub_2385B2FA8()
{
  result = qword_27DF0F820;
  if (!qword_27DF0F820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F7B0, &unk_238773300);
    sub_2385B3060();
    sub_23843A3E8(&qword_27DF0F830, &qword_27DF0F838, qword_2387733A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F820);
  }

  return result;
}

unint64_t sub_2385B3060()
{
  result = qword_27DF0F828;
  if (!qword_27DF0F828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F7A8, &qword_2387732F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F798, &qword_2387732E8);
    sub_23875D2E0();
    sub_2385B2BB4();
    sub_2385B2738(&qword_27DF0F7C0, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F828);
  }

  return result;
}

uint64_t sub_2385B3180@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  v7 = *(type metadata accessor for OrderDetailsStatusDescriptionSheet_iOS() + 24);
  *(a1 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_2385B3214@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_23875CE00();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F858, &qword_238773538);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F860, &qword_238773540);
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F868, &qword_238773548);
  v15 = *(v14 - 8);
  v38 = v14;
  v39 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v32 = v1;
  v33 = &v31 - v17;
  v42 = v1;
  sub_23875D760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BAE8, &unk_23876A630);
  sub_2384BF528();
  sub_23875C410();
  v43 = sub_2385B3810();
  v44 = v18;
  v19 = sub_23843A3E8(&qword_27DF0F870, &qword_27DF0F858, &qword_238773538);
  v20 = sub_2384397A8();
  v21 = MEMORY[0x277D837D0];
  sub_23875DC70();

  (*(v6 + 8))(v9, v5);
  v22 = v35;
  v23 = v36;
  v24 = v37;
  (*(v36 + 104))(v35, *MEMORY[0x277CDDDC0], v37);
  v43 = v5;
  v44 = v21;
  v45 = v19;
  v46 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v33;
  sub_23875DE50();
  (*(v23 + 8))(v22, v24);
  (*(v34 + 8))(v13, v10);
  v41 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA20, &unk_238771150);
  v43 = v10;
  v44 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EA28, &qword_238770B20);
  v28 = sub_23843A3E8(&qword_27DF0EA30, &qword_27DF0EA28, &qword_238770B20);
  v43 = v27;
  v44 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v38;
  sub_23875DEF0();
  return (*(v39 + 8))(v26, v29);
}

double sub_2385B36F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  sub_2384397A8();

  v4 = sub_23875DAA0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_23875D780();

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  result = 0.0;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 1;
  return result;
}

uint64_t sub_2385B3810()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2387632F0;
  v3 = *v0;
  v2 = v0[1];
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_238448C58();
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;
  v4 = qword_2814F0880;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  sub_23875EA80();
  v10 = sub_23875EAA0();

  return v10;
}

uint64_t sub_2385B3994(uint64_t a1)
{
  v2 = sub_23875D2A0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA28, &qword_238770B20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_23875D250();
  MEMORY[0x28223BE20](v9);
  *(&v12 - 2) = a1;
  sub_23857F5E0();
  sub_23875C4D0();
  v10 = sub_23843A3E8(&qword_27DF0EA30, &qword_27DF0EA28, &qword_238770B20);
  MEMORY[0x23EE61E80](v8, v4, v10);
  (*(v5 + 8))(v8, v4);
}

uint64_t sub_2385B3BC4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = type metadata accessor for OrderDetailsStatusDescriptionSheet_iOS();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385B41D4(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2385B4238(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  *a2 = sub_2385B429C;
  a2[1] = v8;
  return result;
}

uint64_t sub_2385B3D24(uint64_t a1)
{
  v2 = sub_23875CDB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v20 - v9);
  v11 = sub_23875C600();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OrderDetailsStatusDescriptionSheet_iOS();
  sub_23857F760(a1 + *(v16 + 24), v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v17 = *v10;
    sub_23875EFF0();
    v18 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_23875C5F0();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_2385B3F9C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_23875F770();
  sub_23875EB30();
  sub_23875EB30();
  sub_23875F750();
  result = sub_23875F600();
  *a1 = result;
  a1[1] = v8;
  return result;
}

uint64_t type metadata accessor for OrderDetailsStatusDescriptionSheet_iOS()
{
  result = qword_27DF0F840;
  if (!qword_27DF0F840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2385B40CC()
{
  sub_23857F390();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_2385B4148()
{
  result = qword_27DF0F850;
  if (!qword_27DF0F850)
  {
    type metadata accessor for OrderDetailsStatusDescriptionSheet_iOS();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F850);
  }

  return result;
}

uint64_t sub_2385B41D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsStatusDescriptionSheet_iOS();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2385B4238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsStatusDescriptionSheet_iOS();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2385B429C()
{
  v1 = *(type metadata accessor for OrderDetailsStatusDescriptionSheet_iOS() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2385B3D24(v2);
}

uint64_t static SaveOrderProvider.saveOrder(data:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238580A3C;

  return (sub_2385B4B28)(a1, a2);
}

uint64_t sub_2385B4534(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_23875ED50();
  v2[4] = sub_23875ED40();
  v4 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_2385B45CC, v4, v3);
}

uint64_t sub_2385B45CC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v2);
  v4 = v3;
  v5 = sub_23875B990();
  v7 = v6;

  v0[6] = v5;
  v0[7] = v7;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_2385B46B4;

  return sub_2385B4B28(v5, v7);
}

uint64_t sub_2385B46B4(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 64);
  v8 = *v2;

  v9 = v5[7];
  v10 = v5[6];
  v11 = v5[5];
  sub_23844C954(v10, v9);
  if (v3)
  {
    v12 = sub_23875B720();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(v11, a1, 0);
  }

  _Block_release(v6[5]);
  v13 = *(v8 + 8);

  return v13();
}

id SaveOrderProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SaveOrderProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SaveOrderProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2385B493C(uint64_t a1)
{
  v2 = sub_2387577B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  v9 = 0;
  if (v8 == *MEMORY[0x277CC6658])
  {
    goto LABEL_6;
  }

  if (v8 == *MEMORY[0x277CC6660])
  {
    v9 = 1;
LABEL_6:
    (*(v3 + 8))(a1, v2);
    return v9;
  }

  if (v8 == *MEMORY[0x277CC6650])
  {
    v9 = 2;
    goto LABEL_6;
  }

  v12 = 0;
  v13 = 0xE000000000000000;
  sub_23875F470();

  v12 = 0xD000000000000026;
  v13 = 0x800000023878C1A0;
  sub_2385B5254();
  v11 = sub_23875F600();
  MEMORY[0x23EE63650](v11);

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2385B4B28(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2387577B0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = sub_2387579B0();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  sub_23875ED50();
  v2[11] = sub_23875ED40();
  v10 = sub_23875ECE0();
  v2[12] = v10;
  v2[13] = v9;

  return MEMORY[0x2822009F8](sub_2385B4C84, v10, v9);
}

uint64_t sub_2385B4C84()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_2387579D0();
  sub_2387579A0();
  (*(v2 + 104))(v1, *MEMORY[0x277CC6A50], v3);
  sub_238757830();
  (*(v2 + 8))(v1, v3);

  v0[14] = sub_2387579A0();
  v4 = *(MEMORY[0x277CC6A58] + 4);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_2385B4E30;
  v6 = v0[7];
  v7 = v0[2];
  v8 = v0[3];

  return MEMORY[0x282116F28](v6, v7, v8);
}

uint64_t sub_2385B4E30()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_2385B5028;
  }

  else
  {
    v7 = v2[14];

    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_2385B4F4C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2385B4F4C()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];

  (*(v6 + 16))(v4, v3, v5);
  v7 = sub_2385B493C(v4);
  (*(v6 + 8))(v3, v5);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_2385B5028()
{
  v1 = v0[14];
  v2 = v0[11];

  v3 = v0[16];
  v4 = v0[10];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2385B50E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2384494A4;

  return sub_2385B4534(v2, v3);
}

uint64_t sub_2385B5194()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_238449A7C;

  return sub_2386E6408(v2, v3, v5);
}

unint64_t sub_2385B5254()
{
  result = qword_27DF0F878;
  if (!qword_27DF0F878)
  {
    sub_2387577B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F878);
  }

  return result;
}

uint64_t type metadata accessor for OrderDetailsStatusLabel()
{
  result = qword_27DF0F888;
  if (!qword_27DF0F888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2385B5320()
{
  sub_2385B5538(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2385B5538(319, &qword_27DF0F898, &type metadata for OrderDetailsStatusLabel.IconType, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2385B54E0();
      if (v2 <= 0x3F)
      {
        sub_2385B5538(319, &qword_27DF0F8A0, &type metadata for OrderDetailsFulfillmentIndex.ViewModel, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2385B5538(319, &qword_27DF0A0B0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_2385B5538(319, &qword_2814F09A0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_2385B5588();
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

void sub_2385B54E0()
{
  if (!qword_27DF0EDC8)
  {
    type metadata accessor for OrderDetailsNote(255);
    v0 = sub_23875F1F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0EDC8);
    }
  }
}

void sub_2385B5538(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2385B5588()
{
  if (!qword_27DF0F8A8)
  {
    sub_23857414C();
    v0 = sub_23875C560();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0F8A8);
    }
  }
}

unint64_t sub_2385B55F8()
{
  result = qword_27DF0F8B0;
  if (!qword_27DF0F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F8B0);
  }

  return result;
}

uint64_t sub_2385B5668@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F8B8, &qword_2387736C0);
  v2 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v4 = &v22 - v3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F8C0, &qword_2387736C8);
  v5 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F8, &unk_23876D640);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for OrderDetailsNote(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OrderDetailsStatusLabel();
  sub_23843981C(v1 + *(v17 + 28), v11, &qword_27DF0D5F8, &unk_23876D640);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_238439884(v11, &qword_27DF0D5F8, &unk_23876D640);
  }

  else
  {
    sub_2385B8050(v11, v16, type metadata accessor for OrderDetailsNote);
    if (*(v1 + 32) == 3)
    {
      *v7 = sub_23875D030();
      *(v7 + 1) = 0x4010000000000000;
      v7[16] = 0;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F8E8, &qword_2387736E0);
      sub_2385B5C04(v1, v16, &v7[*(v18 + 44)]);
      sub_23843981C(v7, v4, &qword_27DF0F8C0, &qword_2387736C8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F8D0, &qword_2387736D8);
      sub_23843A3E8(&qword_27DF0F8D8, &qword_27DF0F8C0, &qword_2387736C8);
      sub_23843A3E8(&qword_27DF0F8E0, &qword_27DF0F8D0, &qword_2387736D8);
      sub_23875D1B0();
      sub_238439884(v7, &qword_27DF0F8C0, &qword_2387736C8);
      return sub_23857F198(v16);
    }

    sub_23857F198(v16);
  }

  v20 = sub_23875CE60();
  v43 = 1;
  sub_2385B69CC(v1, &v27);
  v56 = v39;
  v57 = v40;
  v58[0] = v41[0];
  *(v58 + 11) = *(v41 + 11);
  v52 = v35;
  v53 = v36;
  v54 = v37;
  v55 = v38;
  v48 = v31;
  v49 = v32;
  v50 = v33;
  v51 = v34;
  v44 = v27;
  v45 = v28;
  v46 = v29;
  v47 = v30;
  v59[12] = v39;
  v59[13] = v40;
  v60[0] = v41[0];
  *(v60 + 11) = *(v41 + 11);
  v59[8] = v35;
  v59[9] = v36;
  v59[10] = v37;
  v59[11] = v38;
  v59[4] = v31;
  v59[5] = v32;
  v59[6] = v33;
  v59[7] = v34;
  v59[0] = v27;
  v59[1] = v28;
  v59[2] = v29;
  v59[3] = v30;
  sub_23843981C(&v44, &v26, &qword_27DF0F8C8, &qword_2387736D0);
  sub_238439884(v59, &qword_27DF0F8C8, &qword_2387736D0);
  *(&v42[99] + 1) = v56;
  *(&v42[107] + 1) = v57;
  *(&v42[115] + 1) = v58[0];
  *&v42[121] = *(v58 + 11);
  *(&v42[67] + 1) = v52;
  *(&v42[75] + 1) = v53;
  *(&v42[83] + 1) = v54;
  *(&v42[91] + 1) = v55;
  *(&v42[35] + 1) = v48;
  *(&v42[43] + 1) = v49;
  *(&v42[51] + 1) = v50;
  *(&v42[59] + 1) = v51;
  *(&v42[3] + 1) = v44;
  *(&v42[11] + 1) = v45;
  *(&v42[19] + 1) = v46;
  *(&v42[27] + 1) = v47;
  v21 = v43;
  *v4 = v20;
  *(v4 + 1) = 0;
  v4[16] = v21;
  memcpy(v4 + 17, v42, 0x102uLL);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F8D0, &qword_2387736D8);
  sub_23843A3E8(&qword_27DF0F8D8, &qword_27DF0F8C0, &qword_2387736C8);
  sub_23843A3E8(&qword_27DF0F8E0, &qword_27DF0F8D0, &qword_2387736D8);
  return sub_23875D1B0();
}

uint64_t sub_2385B5C04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F8F0, &qword_2387736E8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  sub_23875ED50();
  v44 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = a1 + *(type metadata accessor for OrderDetailsStatusLabel() + 32);
  v14 = *v13;
  v15 = *(v13 + 2);
  if (v14 == 2 || v15 < 2)
  {
    v43 = 0;
    v15 = 0;
    v42 = 0;
    v41 = 2;
  }

  else
  {
    v43 = *(v13 + 1);
    v17 = v13[24];
    v41 = v14 & 1;
    v42 = v17 & 1;
  }

  *v12 = sub_23875CE60();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F8F8, &qword_2387736F0);
  sub_2385B5F30(a1, a2, &v12[*(v18 + 44)]);
  v19 = a1[3];
  if (v19)
  {
    v45 = a1[2];
    v46 = v19;
    sub_2384397A8();

    v20 = sub_23875DAA0();
    v39 = a3;
    v40 = v9;
    v22 = v21;
    v24 = v23;
    sub_23875D820();
    v25 = sub_23875DA60();
    v19 = v26;
    v38 = v15;
    v28 = v27;
    v30 = v29;

    v31 = v24 & 1;
    v32 = v22;
    a3 = v39;
    v9 = v40;
    sub_2384397FC(v20, v32, v31);

    v33 = v28 & 1;
    v15 = v38;
  }

  else
  {
    v25 = 0;
    v33 = 0;
    v30 = 0;
  }

  sub_23843981C(v12, v9, &qword_27DF0F8F0, &qword_2387736E8);
  v34 = v43;
  *a3 = v41;
  *(a3 + 8) = v34;
  *(a3 + 16) = v15;
  *(a3 + 24) = v42;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F900, &qword_2387736F8);
  sub_23843981C(v9, a3 + *(v35 + 48), &qword_27DF0F8F0, &qword_2387736E8);
  v36 = (a3 + *(v35 + 64));
  *v36 = v25;
  v36[1] = v19;
  v36[2] = v33;
  v36[3] = v30;
  sub_238476F5C(v25, v19, v33, v30);
  sub_238439884(v12, &qword_27DF0F8F0, &qword_2387736E8);
  sub_238476FA0(v25, v19, v33, v30);
  sub_238439884(v9, &qword_27DF0F8F0, &qword_2387736E8);
}

uint64_t sub_2385B5F30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F908, &qword_238773700);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v36 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v34 = v32 - v9;
  sub_23875ED50();
  v35 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a1[1];
  v37 = *a1;
  v38 = v10;
  sub_2384397A8();

  v11 = sub_23875DAA0();
  v13 = v12;
  v15 = v14;
  sub_23875D8E0();
  v16 = sub_23875DA60();
  v18 = v17;
  v32[1] = a1;
  v20 = v19;

  sub_2384397FC(v11, v13, v15 & 1);

  sub_23875D890();
  v21 = sub_23875D9E0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_2384397FC(v16, v18, v20 & 1);

  v28 = v34;
  sub_2385B61FC(v33, v34);
  v29 = v36;
  sub_23843981C(v28, v36, &qword_27DF0F908, &qword_238773700);
  *a3 = v21;
  *(a3 + 8) = v23;
  *(a3 + 16) = v25 & 1;
  *(a3 + 24) = v27;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F910, &qword_238773708);
  sub_23843981C(v29, a3 + *(v30 + 64), &qword_27DF0F908, &qword_238773700);
  sub_23843980C(v21, v23, v25 & 1);

  sub_238439884(v28, &qword_27DF0F908, &qword_238773700);
  sub_238439884(v29, &qword_27DF0F908, &qword_238773700);
  sub_2384397FC(v21, v23, v25 & 1);
}

uint64_t sub_2385B61FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v61 = a1;
  v63 = a2;
  v49 = sub_23875CDB0();
  v48 = *(v49 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v49);
  v47 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OrderDetailsNote(0);
  v60 = *(v6 - 8);
  v59 = *(v60 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_23875D2E0();
  v55 = *(v53 - 8);
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OrderDetailsStatusLabel();
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F918, &qword_238773710);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F920, &qword_238773718);
  v20 = *(v19 - 8);
  v57 = v19;
  v58 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v51 = &v47 - v22;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F928, &unk_238773720);
  v23 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v54 = &v47 - v24;
  v52 = v3;
  sub_2385B81FC(v3, &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetailsStatusLabel);
  v25 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v26 = swift_allocObject();
  sub_2385B8050(&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for OrderDetailsStatusLabel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A410, &unk_238773730);
  sub_23846E74C();
  sub_23875E200();
  v50 = v15;
  v18[*(v15 + 36)] = 0;
  sub_23875D2D0();
  v27 = sub_2385B8118();
  v28 = sub_2385B84BC(&qword_27DF0F7C0, MEMORY[0x277CDE0B8]);
  v29 = v53;
  sub_23875DB30();
  (*(v55 + 8))(v10, v29);
  sub_238439884(v18, &qword_27DF0F918, &qword_238773710);
  v30 = v3 + *(v12 + 44);
  v31 = *v30;
  v32 = *(v30 + 8);
  v68 = v31;
  v69 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  LODWORD(v55) = v66;
  v33 = v56;
  sub_2385B81FC(v61, v56, type metadata accessor for OrderDetailsNote);
  v34 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v35 = swift_allocObject();
  sub_2385B8050(v33, v35 + v34, type metadata accessor for OrderDetailsNote);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F948, &qword_238773748);
  v64 = v50;
  v65 = v29;
  v66 = v27;
  v67 = v28;
  swift_getOpaqueTypeConformance2();
  v36 = v54;
  sub_23843A3E8(&qword_27DF0F950, &qword_27DF0F948, &qword_238773748);
  v37 = v57;
  v38 = v51;
  sub_23875DED0();

  (*(v58 + 8))(v38, v37);
  v39 = v52 + *(v12 + 48);
  v40 = *v39;
  if (*(v39 + 8) != 1)
  {

    sub_23875EFF0();
    v41 = sub_23875D730();
    sub_23875C110();

    v42 = v47;
    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v40, 0);
    (*(v48 + 8))(v42, v49);
    LOBYTE(v40) = v64;
  }

  KeyPath = swift_getKeyPath();
  v44 = swift_allocObject();
  *(v44 + 16) = v40 & 1;
  v45 = (v36 + *(v62 + 36));
  *v45 = KeyPath;
  v45[1] = sub_238477BAC;
  v45[2] = v44;
  sub_2385B82D4();
  sub_23875DE00();
  return sub_238439884(v36, &qword_27DF0F928, &unk_238773720);
}

uint64_t sub_2385B69CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23875D030();
  LOBYTE(v36[0]) = 0;
  sub_2385B6D74(a1, &v38);
  v27 = *&v39[16];
  v28 = *&v39[32];
  v29 = *&v39[48];
  v30 = *&v39[64];
  v25 = v38;
  v26 = *v39;
  v31[2] = *&v39[16];
  v31[3] = *&v39[32];
  v31[4] = *&v39[48];
  v31[5] = *&v39[64];
  v31[0] = v38;
  v31[1] = *v39;
  sub_23843981C(&v25, &v32, &qword_27DF0F968, &qword_2387737B8);
  sub_238439884(v31, &qword_27DF0F968, &qword_2387737B8);
  *&v24[39] = v27;
  *&v24[55] = v28;
  *&v24[71] = v29;
  *&v24[87] = v30;
  *&v24[7] = v25;
  *&v24[23] = v26;
  v5 = v36[0];
  sub_2385B70A4(a1, &v17);
  *&v32 = v4;
  *(&v32 + 1) = 0x4010000000000000;
  v33[0] = v5;
  *&v33[49] = *&v24[48];
  *&v33[65] = *&v24[64];
  *&v33[81] = *&v24[80];
  *&v33[1] = *v24;
  *&v33[17] = *&v24[16];
  *&v33[33] = *&v24[32];
  v6 = v20;
  v34[4] = v21;
  v7 = v21;
  v34[5] = v22;
  v34[0] = v17;
  v8 = v17;
  v9 = v18;
  v34[1] = v18;
  *&v16[7] = v17;
  v34[2] = v19;
  *&v16[23] = v18;
  *&v16[39] = v19;
  v10 = v19;
  v34[3] = v20;
  *&v16[55] = v20;
  *&v16[71] = v21;
  v11 = v22;
  v35[0] = *v23;
  *&v16[87] = v22;
  *&v16[103] = *v23;
  *&v16[118] = *&v23[15];
  v12 = *&v33[32];
  *(a2 + 32) = *&v33[16];
  *(a2 + 48) = v12;
  v13 = *v33;
  *a2 = v32;
  *(a2 + 16) = v13;
  *(a2 + 96) = *&v33[80];
  v14 = *&v33[64];
  *(a2 + 64) = *&v33[48];
  *(a2 + 80) = v14;
  *(a2 + 177) = *&v16[48];
  *(a2 + 161) = *&v16[32];
  *(a2 + 145) = *&v16[16];
  *(a2 + 129) = *v16;
  *(a2 + 235) = *&v16[106];
  *(a2 + 225) = *&v16[96];
  *(a2 + 209) = *&v16[80];
  *&v33[96] = *&v24[95];
  *(v35 + 15) = *&v16[118];
  *(a2 + 112) = *&v24[95];
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  *(a2 + 193) = *&v16[64];
  v36[2] = v10;
  v36[3] = v6;
  v36[0] = v8;
  v36[1] = v9;
  *&v37[15] = *&v23[15];
  v36[5] = v11;
  *v37 = *v23;
  v36[4] = v7;
  sub_23843981C(&v32, &v38, &qword_27DF0F970, &qword_2387737C0);
  sub_23843981C(v34, &v38, &qword_27DF0F978, &qword_2387737C8);
  sub_238439884(v36, &qword_27DF0F978, &qword_2387737C8);
  *&v39[49] = *&v24[48];
  *&v39[65] = *&v24[64];
  *v40 = *&v24[80];
  *&v39[1] = *v24;
  *&v39[17] = *&v24[16];
  *&v38 = v4;
  *(&v38 + 1) = 0x4010000000000000;
  v39[0] = v5;
  *&v40[15] = *&v24[95];
  *&v39[33] = *&v24[32];
  sub_238439884(&v38, &qword_27DF0F970, &qword_2387737C0);
}

uint64_t sub_2385B6D74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1 + *(type metadata accessor for OrderDetailsStatusLabel() + 32);
  v5 = *v4;
  if (v5 == 2 || *(v4 + 2) < 2)
  {
    v42 = 0;
    v43 = 0;
    v41 = 0;
    v40 = 2;
  }

  else
  {
    v43 = *(v4 + 2);
    v42 = *(v4 + 1);
    v40 = v5 & 1;
    v41 = v4[24] & 1;
  }

  v44 = *a1;
  v46 = a1[1];
  sub_2384397A8();

  v7 = sub_23875DAA0();
  v9 = v8;
  v11 = v10;
  sub_23875D8E0();
  v12 = sub_23875DA60();
  v14 = v13;
  v16 = v15;

  sub_2384397FC(v7, v9, v11 & 1);

  sub_23875D890();
  v17 = sub_23875D9E0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_2384397FC(v12, v14, v16 & 1);

  if (a1[3])
  {
    v45 = a1[2];

    v24 = sub_23875DAA0();
    v26 = v25;
    v39 = v21;
    v28 = v27;
    sub_23875D820();
    v29 = sub_23875DA60();
    v31 = v30;
    v38 = v32;
    v34 = v33;

    v35 = v28 & 1;
    v21 = v39;
    sub_2384397FC(v24, v26, v35);

    v36 = v38 & 1;
  }

  else
  {
    v29 = 0;
    v31 = 0;
    v36 = 0;
    v34 = 0;
  }

  *a2 = v40;
  *(a2 + 8) = v42;
  *(a2 + 16) = v43;
  *(a2 + 24) = v41;
  *(a2 + 32) = v17;
  *(a2 + 40) = v19;
  *(a2 + 48) = v21 & 1;
  *(a2 + 56) = v23;
  *(a2 + 64) = v29;
  *(a2 + 72) = v31;
  *(a2 + 80) = v36;
  *(a2 + 88) = v34;
  sub_23843980C(v17, v19, v21 & 1);

  sub_238476F5C(v29, v31, v36, v34);
  sub_238476FA0(v29, v31, v36, v34);
  sub_2384397FC(v17, v19, v21 & 1);
}

double sub_2385B70A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_23875E0E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875DFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v51 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 32) > 1u)
  {
    if (*(a1 + 32) != 2)
    {
      LOBYTE(v82) = 1;
      HIBYTE(v80) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F980, &qword_2387737D0);
      sub_2385B8504();
      sub_23875D1B0();
      v77 = v67;
      v78 = v68;
      v79 = v69;
      v80 = v70;
      v73 = v63;
      v74 = v64;
      v75 = v65;
      v76 = v66;
      LOBYTE(v53) = 1;
      v81 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F9B0, &qword_2387737F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F9B8, &qword_2387737F8);
      sub_2385B8648();
      sub_2385B88FC();
      sub_23875D1B0();
      goto LABEL_11;
    }

    sub_23875E0D0();
    (*(v4 + 104))(v7, *MEMORY[0x277CE0FE0], v3);
    v50 = sub_23875E150();

    (*(v4 + 8))(v7, v3);
    v22 = type metadata accessor for OrderDetailsStatusLabel();
    v23 = v22[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F880, &qword_2387735D8);
    sub_23875C550();
    v24 = a1 + v22[12];
    sub_23875C550();
    sub_23875E4A0();
    sub_23875C5C0();
    v25 = v83;
    v48 = *(&v83 + 1);
    v49 = v82;
    v26 = v84;
    v46 = v85;
    v47 = *(&v84 + 1);
    v27 = sub_23875E010();
    v28 = sub_23875E050();
    LOBYTE(v63) = v25;
    LOBYTE(v53) = v26;
    v29 = sub_23875D7D0();
    v30 = a1 + v22[13];
    sub_23875C550();
    sub_23875C3D0();
    LOBYTE(v71[0]) = 0;
    *&v53 = v50;
    *(&v53 + 1) = v49;
    LOBYTE(v54) = v25;
    *(&v54 + 1) = v48;
    LOBYTE(v55) = v26;
    *(&v55 + 1) = v47;
    *&v56 = v46;
    *(&v56 + 1) = v27;
    *&v57 = v28;
    BYTE8(v57) = v29;
    HIDWORD(v57) = *(&v73 + 3);
    *(&v57 + 9) = v73;
    *&v58 = v31;
    *(&v58 + 1) = v32;
    *&v59 = v33;
    *(&v59 + 1) = v34;
    v60 = 0;
    v77 = v57;
    v78 = v58;
    v79 = v59;
    v80 = 0;
    v73 = v53;
    v74 = v54;
    v75 = v55;
    v76 = v56;
    v61 = 0;
    v20 = &qword_27DF0F980;
    v21 = &qword_2387737D0;
    sub_23843981C(&v53, v71, &qword_27DF0F980, &qword_2387737D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F980, &qword_2387737D0);
    sub_2385B8504();
    sub_23875D1B0();
    v77 = v67;
    v78 = v68;
    v79 = v69;
    v80 = v70;
    v73 = v63;
    v74 = v64;
    v75 = v65;
    v76 = v66;
    v62 = 1;
    v81 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F9B0, &qword_2387737F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F9B8, &qword_2387737F8);
    sub_2385B8648();
    sub_2385B88FC();
  }

  else
  {
    if (*(a1 + 32))
    {
      v35 = sub_23875E0D0();
      v36 = sub_23875DFF0();
      v37 = sub_23875D7E0();
      KeyPath = swift_getKeyPath();
      LOBYTE(v82) = 1;
      *&v73 = v35;
      *(&v73 + 1) = v36;
      *&v74 = KeyPath;
      *(&v74 + 1) = v37;
      LOBYTE(v77) = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7F8, &qword_238773800);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F9F8, &qword_238773818);
      sub_2385B86D4();
      sub_2385B8844();
      sub_23875D1B0();
      v75 = v65;
      v76 = v66;
      LOBYTE(v77) = v67;
      v73 = v63;
      v74 = v64;
      LOBYTE(v53) = 0;
      v81 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F9B0, &qword_2387737F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F9B8, &qword_2387737F8);
      sub_2385B8648();
      sub_2385B88FC();
      sub_23875D1B0();

      goto LABEL_11;
    }

    v13 = sub_23875E0D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA8, &unk_23876B470);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_238763B60;
    v15 = *MEMORY[0x277CE0EE0];
    v16 = *(v9 + 104);
    v16(v12, v15, v8);
    *(v14 + 32) = sub_23875E090();
    v16(v12, v15, v8);
    *(v14 + 40) = sub_23875E090();
    sub_23875E590();
    sub_23875E570();
    MEMORY[0x23EE62F40](v14);
    sub_23875C740();
    v17 = v82;
    v18 = sub_23875D7E0();
    v19 = swift_getKeyPath();
    *&v53 = v13;
    *(&v53 + 1) = v17;
    v54 = v83;
    v55 = v84;
    *&v56 = v19;
    *(&v56 + 1) = v18;
    v73 = v53;
    v74 = v83;
    v75 = v84;
    v76 = v56;
    v61 = 0;
    LOBYTE(v77) = 0;
    v20 = &qword_27DF0C7F8;
    v21 = &qword_238773800;
    sub_23843981C(&v53, v71, &qword_27DF0C7F8, &qword_238773800);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7F8, &qword_238773800);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F9F8, &qword_238773818);
    sub_2385B86D4();
    sub_2385B8844();
    sub_23875D1B0();
    v75 = v65;
    v76 = v66;
    LOBYTE(v77) = v67;
    v73 = v63;
    v74 = v64;
    v62 = 0;
    v81 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F9B0, &qword_2387737F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F9B8, &qword_2387737F8);
    sub_2385B8648();
    sub_2385B88FC();
  }

  sub_23875D1B0();
  sub_238439884(&v53, v20, v21);
LABEL_11:

  v79 = *v72;
  v39 = *&v72[15];
  HIBYTE(v79) = v72[15];
  v73 = v71[0];
  v74 = v71[1];
  v75 = v71[2];
  v76 = v71[3];
  v40 = v71[5];
  v41 = v52;
  *(v52 + 64) = v71[4];
  *(v41 + 80) = v40;
  *(v41 + 96) = v79;
  *(v41 + 111) = v39;
  v42 = v74;
  *v41 = v73;
  *(v41 + 16) = v42;
  result = *&v75;
  v44 = v76;
  *(v41 + 32) = v75;
  *(v41 + 48) = v44;
  return result;
}

void sub_2385B7A34(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for OrderDetailsStatusLabel() + 36));
  v3 = *v2;
  v4 = *(v2 + 1);
  LOBYTE(v23[0]) = v3;
  v23[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v6 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_238763300;
  v8 = *MEMORY[0x277D383D8];
  *(v7 + 32) = *MEMORY[0x277D383D8];
  v9 = *MEMORY[0x277D38428];
  v10 = sub_23875EA80();
  v11 = MEMORY[0x277D38390];
  *(v7 + 40) = v10;
  *(v7 + 48) = v12;
  v13 = *v11;
  *(v7 + 56) = *v11;
  *(v7 + 64) = 0xD000000000000010;
  v14 = *MEMORY[0x277D384B8];
  *(v7 + 72) = 0x8000000238785CB0;
  *(v7 + 80) = v14;
  strcpy((v7 + 88), "orderDetails");
  *(v7 + 101) = 0;
  *(v7 + 102) = -5120;
  v15 = v8;
  v16 = v13;
  v17 = v14;
  v18 = sub_23854B138(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23[0] = v18;
  sub_2385C33E4(v6, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v23);

  v20 = *MEMORY[0x277D38548];
  v21 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2385B84BC(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v22 = sub_23875E910();

  [v21 subject:v20 sendEvent:v22];
}

uint64_t sub_2385B7D94@<X0>(uint64_t *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875E0D0();
  v3 = sub_23875D8E0();
  KeyPath = swift_getKeyPath();

  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  return result;
}

uint64_t sub_2385B7E68()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  type metadata accessor for OrderDetailsNotes(0);
  sub_2385B84BC(&qword_27DF0F960, type metadata accessor for OrderDetailsNotes);
  sub_23875C8F0();
}

uint64_t sub_2385B7F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385B81FC(a1, a2, type metadata accessor for OrderDetailsNote);
}

uint64_t sub_2385B8050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2385B80B8()
{
  v1 = *(type metadata accessor for OrderDetailsStatusLabel() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_2385B7A34(v2);
}

unint64_t sub_2385B8118()
{
  result = qword_27DF0F930;
  if (!qword_27DF0F930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F918, &qword_238773710);
    sub_23843A3E8(&qword_27DF0F938, &qword_27DF0F940, &qword_238773740);
    sub_23843A3E8(&qword_27DF0A760, &qword_27DF0A768, &qword_238765D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F930);
  }

  return result;
}

uint64_t sub_2385B81FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385B8264()
{
  v0 = *(*(type metadata accessor for OrderDetailsNote(0) - 8) + 80);

  return sub_2385B7E68();
}

unint64_t sub_2385B82D4()
{
  result = qword_27DF0F958;
  if (!qword_27DF0F958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F928, &unk_238773720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F920, &qword_238773718);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F948, &qword_238773748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F918, &qword_238773710);
    sub_23875D2E0();
    sub_2385B8118();
    sub_2385B84BC(&qword_27DF0F7C0, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0F950, &qword_27DF0F948, &qword_238773748);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0A858, &qword_27DF0A860, &qword_238768810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F958);
  }

  return result;
}

uint64_t sub_2385B84BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2385B8504()
{
  result = qword_27DF0F988;
  if (!qword_27DF0F988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F980, &qword_2387737D0);
    sub_2385B8590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F988);
  }

  return result;
}

unint64_t sub_2385B8590()
{
  result = qword_27DF0F990;
  if (!qword_27DF0F990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F998, &unk_2387737D8);
    sub_238449688();
    sub_23843A3E8(&qword_27DF0F9A0, &qword_27DF0F9A8, &qword_2387737E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F990);
  }

  return result;
}

unint64_t sub_2385B8648()
{
  result = qword_27DF0F9C0;
  if (!qword_27DF0F9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F9B0, &qword_2387737F0);
    sub_2385B86D4();
    sub_2385B8844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F9C0);
  }

  return result;
}

unint64_t sub_2385B86D4()
{
  result = qword_27DF0F9C8;
  if (!qword_27DF0F9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C7F8, &qword_238773800);
    sub_2385B878C();
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F9C8);
  }

  return result;
}

unint64_t sub_2385B878C()
{
  result = qword_27DF0F9D0;
  if (!qword_27DF0F9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F9D8, &qword_238773808);
    sub_23843A3E8(&qword_27DF0F9E0, &qword_27DF0F9E8, &qword_238773810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F9D0);
  }

  return result;
}

unint64_t sub_2385B8844()
{
  result = qword_27DF0F9F0;
  if (!qword_27DF0F9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F9F8, &qword_238773818);
    sub_2384B9DE8();
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F9F0);
  }

  return result;
}

unint64_t sub_2385B88FC()
{
  result = qword_27DF0FA00;
  if (!qword_27DF0FA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F9B8, &qword_2387737F8);
    sub_2385B8504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FA00);
  }

  return result;
}

unint64_t sub_2385B8988()
{
  result = qword_27DF0FA08;
  if (!qword_27DF0FA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FA10, &qword_238773828);
    sub_23843A3E8(&qword_27DF0F8D8, &qword_27DF0F8C0, &qword_2387736C8);
    sub_23843A3E8(&qword_27DF0F8E0, &qword_27DF0F8D0, &qword_2387736D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FA08);
  }

  return result;
}

char *sub_2385B8A6C(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for BankConnectInstitutionConsentManagementViewController());

  return sub_2385B8D10(a1, a2);
}

uint64_t type metadata accessor for BankConnectInstitutionConsentManagementViewController()
{
  result = qword_27DF0FA38;
  if (!qword_27DF0FA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id BankConnectInstitutionConsentManagementViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectInstitutionConsentManagementViewControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectInstitutionConsentManagementViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

char *sub_2385B8D10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = qword_27DF0FA18;
  sub_238758890();
  *(v2 + v6) = sub_238758880();
  v7 = type metadata accessor for BankConnectConsentDeletionListener();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_fetchController] = 0;
  v9 = &v8[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_onDeletionOfLastConsent];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v8[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_context] = 0;
  v10 = &v8[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_institutionID];
  *v10 = a1;
  *(v10 + 1) = a2;
  v27.receiver = v8;
  v27.super_class = v7;

  *(v3 + qword_27DF0FA20) = objc_msgSendSuper2(&v27, sel_init);
  v25 = *(v3 + v6);

  v11 = sub_23875D080();
  v12 = qword_27DF0FA20;
  v13 = *&v11[qword_27DF0FA20];
  v26 = *&v11[qword_27DF0FA18];
  v14 = v11;
  v15 = v13;
  v16 = sub_238758A30();
  v17 = *&v15[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_context];
  *&v15[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_context] = v16;
  v18 = v16;

  sub_2385BBD94();
  v19 = *&v11[v12];

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v21 = &v19[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_onDeletionOfLastConsent];
  v22 = *&v19[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_onDeletionOfLastConsent];
  v23 = *&v19[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_onDeletionOfLastConsent + 8];
  *v21 = sub_2385B9560;
  v21[1] = v20;

  sub_2384348A8(v22);

  return v14;
}

void sub_2385B8FA8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationController];

    if (v2)
    {
      v3 = [v2 popViewControllerAnimated_];
    }
  }
}

uint64_t sub_2385B903C(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = qword_27DF0FA18;
  sub_238758890();
  *(a1 + v2) = sub_238758880();
  result = sub_23875F520();
  __break(1u);
  return result;
}

void sub_2385B9118()
{
  v1 = *(v0 + qword_27DF0FA18);

  v2 = *(v0 + qword_27DF0FA20);
}

id sub_2385B9174(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2385B91AC(uint64_t a1)
{
  v2 = *(a1 + qword_27DF0FA18);

  v3 = *(a1 + qword_27DF0FA20);
}

uint64_t sub_2385B9260()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

uint64_t sub_2385B92E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2385B9330(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2385B939C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for InstitutionConsentManagementView(0) + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  sub_2386ED8A0();
  sub_2387582B0();
  sub_23875C4F0();
  KeyPath = swift_getKeyPath();
  v14[3] = sub_238758890();
  v14[4] = MEMORY[0x277CC70D0];
  v14[0] = a1;
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FAB0, &qword_2387739D0) + 36));
  sub_23845C998(v14, (v6 + 1));
  *v6 = KeyPath;

  __swift_destroy_boxed_opaque_existential_1(v14);
  v7 = swift_getKeyPath();
  v14[0] = a1;
  v8 = sub_238758A30();
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FAB8, &qword_238773A08) + 36));
  *v9 = v7;
  v9[1] = v8;
  v10 = swift_getKeyPath();
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0FAC0, &qword_238773A10) + 36));
  v12 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD0, qword_238764B90) + 28);
  result = sub_23875C120();
  *v11 = v10;
  return result;
}

uint64_t sub_2385B9554@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  return sub_2385B939C(*v1, a1);
}

unint64_t sub_2385B9568()
{
  result = qword_27DF0FAD0;
  if (!qword_27DF0FAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0FAC0, &qword_238773A10);
    sub_2385B960C();
    sub_2384DE298(&qword_27DF09E70, &qword_27DF09DD0, qword_238764B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FAD0);
  }

  return result;
}

unint64_t sub_2385B960C()
{
  result = qword_27DF0FAD8;
  if (!qword_27DF0FAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FAB8, &qword_238773A08);
    sub_2385B96B0();
    sub_2384DE298(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FAD8);
  }

  return result;
}

unint64_t sub_2385B96B0()
{
  result = qword_27DF0FAE0;
  if (!qword_27DF0FAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FAB0, &qword_2387739D0);
    sub_2385B9754();
    sub_2384DE298(&qword_27DF09E50, &unk_27DF09E58, &unk_238764C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FAE0);
  }

  return result;
}

unint64_t sub_2385B9754()
{
  result = qword_27DF0FAE8;
  if (!qword_27DF0FAE8)
  {
    type metadata accessor for InstitutionConsentManagementView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FAE8);
  }

  return result;
}

uint64_t sub_2385B97AC()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_2385B9818()
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FAF0, &unk_238773A70);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_238763320;
  *(v1 + 32) = &type metadata for CurrencyCodeTokenProvider;
  *(v1 + 40) = &off_284B261A8;
  *(v1 + 48) = type metadata accessor for TransactionTypeTokenProvider();
  *(v1 + 56) = &off_284B2E950;
  *(v1 + 64) = &type metadata for InstitutionNameTokenProvider;
  *(v1 + 72) = &off_284B279D8;
  *(v1 + 80) = type metadata accessor for AccountNameTokenProvider();
  *(v1 + 88) = &off_284B2ABE0;
  *(v1 + 96) = &type metadata for LocationTokenProvider;
  *(v1 + 104) = &off_284B2DBC0;
  v0[15] = 0;
  v0[16] = 0;
  v0[14] = v1;
  return v0;
}

uint64_t sub_2385B98E8()
{
  v0 = sub_2387580D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875A5B0();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == *MEMORY[0x277CC6DF0])
  {
    return 0x6E776F6E6B6E75;
  }

  if (v5 == *MEMORY[0x277CC6DE0])
  {
    return 1852141679;
  }

  if (v5 == *MEMORY[0x277CC6DD8])
  {
    return 0x69737365636F7270;
  }

  if (v5 == *MEMORY[0x277CC6DF8])
  {
    return 0x656C6C65636E6163;
  }

  if (v5 == *MEMORY[0x277CC6DE8])
  {
    return 0x6575737369;
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t sub_2385B9AA4()
{
  v1 = v0;
  v2 = sub_23875BB30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v16 = sub_23875BC40();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [v1 orderUpdateDate];
  sub_23875BBE0();

  MEMORY[0x23EE5FF10]();
  sub_23875BB00();
  v23 = *(v3 + 8);
  v23(v6, v2);
  sub_23875BB20();
  v23(v9, v2);
  sub_23875BB10();
  v23(v12, v2);
  sub_23843AD1C();
  sub_23875BC20();
  v23(v15, v2);
  (*(v17 + 8))(v21, v16);
  return v25;
}

uint64_t sub_2385B9D18()
{
  v0 = sub_23875ABE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ABF0();
  v5 = (*(v1 + 88))(v4, v0);
  result = 0;
  if (v5 != *MEMORY[0x277CC8320])
  {
    if (v5 == *MEMORY[0x277CC8318])
    {
      return 0x64657070696873;
    }

    else if (v5 == *MEMORY[0x277CC8328])
    {
      return 0x7961576568546E6FLL;
    }

    else if (v5 == *MEMORY[0x277CC8300])
    {
      return 0x6544726F4674756FLL;
    }

    else if (v5 == *MEMORY[0x277CC8340])
    {
      return 0x65726576696C6564;
    }

    else if (v5 == *MEMORY[0x277CC8338])
    {
      return 0x656C6C65636E6163;
    }

    else if (v5 == *MEMORY[0x277CC8310])
    {
      return 0x6575737369;
    }

    else if (v5 == *MEMORY[0x277CC8308])
    {
      return 0x726F467964616572;
    }

    else if (v5 == *MEMORY[0x277CC8330])
    {
      return 0x705564656B636970;
    }

    else if (v5 == *MEMORY[0x277CC82F8])
    {
      return 0x69737365636F7270;
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      return 0;
    }
  }

  return result;
}

uint64_t sub_2385B9FC0()
{
  v0 = sub_23875BB30();
  v46 = *(v0 - 8);
  v47 = v0;
  v1 = *(v46 + 64);
  MEMORY[0x28223BE20](v0);
  v42 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v43 = &v38 - v4;
  MEMORY[0x28223BE20](v5);
  v44 = &v38 - v6;
  MEMORY[0x28223BE20](v7);
  v45 = &v38 - v8;
  v9 = sub_23875BE40();
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23875BE20();
  v39 = *(v13 - 8);
  v14 = *(v39 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_238757F90();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FAF8, &unk_238774480);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v38 - v24;
  v26 = sub_23875BC40();
  v38 = *(v26 - 8);
  v27 = *(v38 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ABC0();
  if ((*(v18 + 48))(v25, 1, v17))
  {
    sub_2385BA4B4(v25);
    return 0;
  }

  else
  {
    (*(v18 + 16))(v21, v25, v17);
    sub_2385BA4B4(v25);
    sub_23875BDB0();
    sub_23875BE30();
    MEMORY[0x23EE5CA60](v16, v12);
    (*(v40 + 8))(v12, v41);
    (*(v39 + 8))(v16, v13);
    v31 = (*(v18 + 8))(v21, v17);
    v32 = v42;
    MEMORY[0x23EE5FF10](v31);
    v33 = v43;
    sub_23875BB00();
    v34 = v47;
    v35 = *(v46 + 8);
    v35(v32, v47);
    v36 = v44;
    sub_23875BB20();
    v35(v33, v34);
    v37 = v45;
    sub_23875BB10();
    v35(v36, v34);
    sub_23843AD1C();
    sub_23875BC20();
    v35(v37, v34);
    (*(v38 + 8))(v29, v26);
    return v48;
  }
}

uint64_t sub_2385BA4B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FAF8, &unk_238774480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2385BA528(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2385BA564(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_2385BA5B0(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_2385BA5E8@<X0>(uint64_t a1@<X8>)
{
  sub_2385BA73C(v1, &v15);
  if (v17 >= 4u)
  {
    v6 = v15;
    v7 = v16;

    v8 = sub_238650240(v7);
    v10 = v9;
    v11 = sub_23875E030();
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 32) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 0xD000000000000012;
    *(a1 + 56) = 0x6E6F697461636F4CLL;
    *(a1 + 64) = 0xE800000000000000;
    *(a1 + 48) = 0x800000023878C470;
    *a1 = v6;
    *(a1 + 72) = &unk_238782BD0;
    *(a1 + 80) = result;
  }

  else
  {
    sub_2384347C0(&v15, v12);
    v3 = v13;
    v4 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v4 + 8))(v3, v4);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return result;
}

uint64_t sub_2385BA774()
{
  v0 = sub_23875BCB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  sub_2385BA5E8(v13);
  sub_2385BA5E8(v14);
  v8 = v13[0] == v14[0] && v13[1] == v14[1];
  if (v8 || (sub_23875F630()) && (v13[2] == v14[2] && v13[3] == v14[3] || (sub_23875F630()) && (sub_23875DFE0() & 1) != 0 && (v13[5] == v14[5] && v13[6] == v14[6] || (sub_23875F630()))
  {
    if (v13[7] == v14[7] && v13[8] == v14[8])
    {
      sub_2384B5DE4(v14);
      sub_2384B5DE4(v13);
LABEL_19:
      sub_23875BCA0();
      sub_23875BCA0();
      v9 = sub_23875BC80();
      v12 = *(v1 + 8);
      v12(v4, v0);
      v12(v7, v0);
      return v9 & 1;
    }

    v11 = sub_23875F630();
    sub_2384B5DE4(v14);
    sub_2384B5DE4(v13);
    v9 = 0;
    if (v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_2384B5DE4(v14);
    sub_2384B5DE4(v13);
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_2385BA98C()
{
  v1 = sub_238758D20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875A570();
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x277CC7480])
  {
    v7 = *(sub_23875A4F0() + 16);

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v10 = sub_23875A580();
      if (v10 >> 62)
      {
        v11 = sub_23875F3A0();
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = v11 == 0;
    }

    if ([v0 hasActiveFulfillment] & 1) != 0 || ((v8 | sub_23875A510()))
    {
      v9 = 1;
    }

    else
    {
      sub_2385BAB40();
    }
  }

  else if (v6 == *MEMORY[0x277CC7490])
  {
    v9 = sub_23875A510();
  }

  else
  {
    if (v6 != *MEMORY[0x277CC7488])
    {
      (*(v2 + 8))(v5, v1);
    }

    v9 = 0;
  }

  return v9 & 1;
}

void sub_2385BAB40()
{
  v0 = sub_23875A4F0();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = 0;
    while (v2 < *(v0 + 16))
    {
      v3 = *(v0 + 32 + 8 * v2);
      if ((v3 & 0x8000000000000000) != 0 || (v4 = v3, sub_23875AA30(), v5 = sub_23875A240(), v6 = sub_23875A240(), v4, v5 != v6))
      {
        if (v1 != ++v2)
        {
          continue;
        }
      }

      goto LABEL_7;
    }

    __break(1u);
  }

  else
  {
LABEL_7:
  }
}

uint64_t sub_2385BAC24@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

unint64_t sub_2385BAC78()
{
  result = qword_27DF0FB00;
  if (!qword_27DF0FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FB00);
  }

  return result;
}

__n128 sub_2385BACE8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FB08, &qword_238773D00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v19 - v12;
  *v13 = sub_23875D030();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FB10, &qword_238773D08);
  sub_2385BAE54(a1, a2, a3, a4, &v13[*(v14 + 44)]);
  sub_23875E4B0();
  sub_23875C9C0();
  sub_238416B60(v13, a5);
  v15 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FB18, &qword_238773D10) + 36);
  v16 = v19[5];
  *(v15 + 64) = v19[4];
  *(v15 + 80) = v16;
  *(v15 + 96) = v19[6];
  v17 = v19[1];
  *v15 = v19[0];
  *(v15 + 16) = v17;
  result = v19[3];
  *(v15 + 32) = v19[2];
  *(v15 + 48) = result;
  return result;
}

uint64_t sub_2385BAE54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v60 = a3;
  v61 = a4;
  v66 = a5;
  v7 = sub_23875D550();
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FB20, &qword_238773D18);
  v64 = *(v11 - 8);
  v65 = v11;
  v12 = *(v64 + 64);
  MEMORY[0x28223BE20](v11);
  v63 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v67 = &v57 - v15;
  sub_23875ED50();
  v62 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v68 = a1;
  v69 = a2;
  v57 = sub_2384397A8();

  v16 = sub_23875DAA0();
  v18 = v17;
  v20 = v19;
  sub_23875D7F0();
  v21 = sub_23875DA60();
  v23 = v22;
  v25 = v24;

  sub_2384397FC(v16, v18, v20 & 1);

  LODWORD(v68) = sub_23875D440();
  v26 = sub_23875DA20();
  v28 = v27;
  LOBYTE(v16) = v29;
  v31 = v30;
  sub_2384397FC(v21, v23, v25 & 1);

  v68 = v26;
  v69 = v28;
  v70 = v16 & 1;
  v71 = v31;
  sub_23875D540();
  v32 = v59;
  sub_23875DC10();
  (*(v58 + 8))(v10, v32);
  sub_2384397FC(v26, v28, v16 & 1);

  v68 = v60;
  v69 = v61;

  v33 = sub_23875DAA0();
  v35 = v34;
  v37 = v36;
  sub_23875D820();
  v38 = sub_23875DA60();
  v40 = v39;
  LOBYTE(v23) = v41;

  sub_2384397FC(v33, v35, v37 & 1);

  LODWORD(v68) = sub_23875D420();
  v42 = sub_23875DA20();
  v44 = v43;
  v46 = v45;
  v61 = v47;
  sub_2384397FC(v38, v40, v23 & 1);

  v49 = v63;
  v48 = v64;
  v50 = *(v64 + 16);
  v51 = v67;
  v52 = v65;
  v50(v63, v67, v65);
  v53 = v66;
  v50(v66, v49, v52);
  v54 = &v53[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FB28, &unk_238773D20) + 48)];
  *v54 = v42;
  *(v54 + 1) = v44;
  v46 &= 1u;
  v54[16] = v46;
  *(v54 + 3) = v61;
  sub_23843980C(v42, v44, v46);
  v55 = *(v48 + 8);

  v55(v51, v52);
  sub_2384397FC(v42, v44, v46);

  v55(v49, v52);
}

unint64_t sub_2385BB338()
{
  result = qword_27DF0FB30;
  if (!qword_27DF0FB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FB18, &qword_238773D10);
    sub_2385BB3C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FB30);
  }

  return result;
}

unint64_t sub_2385BB3C4()
{
  result = qword_27DF0FB38;
  if (!qword_27DF0FB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FB08, &qword_238773D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FB38);
  }

  return result;
}

void sub_2385BB448(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v47[0] = *v1;
  v5 = v47[0];
  aBlock = v47[0];
  v41 = v4;
  LOBYTE(v42) = v6;
  sub_2385B2CA0(v47, &v46);

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  MEMORY[0x23EE62DC0](&v46);
  if (v46 != 1)
  {
    sub_2385BBC90(v47);
    goto LABEL_5;
  }

  v8 = [a1 presentedViewController];
  if (v8)
  {
    v9 = v8;
    sub_2385BBC90(v47);

LABEL_5:

    aBlock = v5;
    v41 = v4;
    LOBYTE(v42) = v6;
    MEMORY[0x23EE62DC0](&v46, v7);
    if ((v46 & 1) == 0)
    {
      v10 = [a1 presentedViewController];
      if (v10)
      {
        v11 = v10;
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();

        if (v12)
        {
          v13 = [a1 presentedViewController];
          if (v13)
          {
            v14 = v13;
            [v13 dismissViewControllerAnimated:1 completion:0];
          }
        }
      }
    }

    return;
  }

  v35 = v6;
  v36 = v5;
  v37 = v4;
  v15 = *(v1 + 32);
  v16 = *(v1 + 40);
  v17 = sub_23875EA50();
  v18 = [objc_opt_self() alertControllerWithTitle:0 message:v17 preferredStyle:1];

  v39 = v18;
  [v18 _setAttributedTitle_];
  v19 = *(v2 + 48);
  v20 = *(v19 + 16);
  if (v20)
  {
    v38 = objc_opt_self();
    v21 = (v19 + 72);
    do
    {
      v22 = *(v21 - 5);
      v23 = *(v21 - 4);
      v24 = *(v21 - 3);
      v25 = *(v21 - 16);
      v26 = *(v21 - 1);
      v27 = *v21;
      v28 = swift_allocObject();
      *(v28 + 16) = v22;
      *(v28 + 24) = v23;
      *(v28 + 32) = v24;
      *(v28 + 40) = v25;
      *(v28 + 41) = v46;
      *(v28 + 44) = *(&v46 + 3);
      *(v28 + 48) = v26;
      *(v28 + 56) = v27;
      v29 = *(v2 + 16);
      *(v28 + 64) = *v2;
      *(v28 + 80) = v29;
      *(v28 + 96) = *(v2 + 32);
      *(v28 + 112) = *(v2 + 48);
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      sub_2385BBCF0(v2, &aBlock);
      v30 = sub_23875EA50();
      v44 = sub_2385BBCE4;
      v45 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v41 = 1107296256;
      v42 = sub_238461390;
      v43 = &block_descriptor_10;
      v31 = _Block_copy(&aBlock);

      v32 = [v38 actionWithTitle:v30 style:v24 handler:v31];
      _Block_release(v31);

      [v39 addAction_];
      if (v25 == 1)
      {
        [v39 setPreferredAction_];
      }

      else
      {
      }

      v21 += 6;
      --v20;
    }

    while (v20);
  }

  v33 = sub_2385BB970();
  if (v33)
  {
    v34 = v33;
    sub_2385BBC90(v47);

    [v34 presentViewController:v39 animated:1 completion:0];
  }

  else
  {
    aBlock = v36;
    v41 = v37;
    LOBYTE(v42) = v35;
    sub_23875E2F0();

    sub_2385BBC90(v47);
  }
}

uint64_t sub_2385BB88C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a2 + 40);
  (*(a2 + 32))(isCurrentExecutor);
  v8 = *a3;
  v9 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  sub_23875E2F0();
}

id sub_2385BB970()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {

    return [v0 presentedViewController];
  }

  result = [v0 view];
  if (result)
  {
    v4 = result;
    v5 = [result window];

    if (!v5)
    {
      return 0;
    }

    v6 = [v5 rootViewController];
    if (v6)
    {
      v7 = v6;
      v8 = [v7 presentedViewController];
      v2 = v7;
      if (v8)
      {
        v9 = v7;
        do
        {
          v2 = v8;

          v8 = [v2 presentedViewController];
          v9 = v2;
        }

        while (v8);
      }
    }

    else
    {

      return 0;
    }

    return v2;
  }

  __break(1u);
  return result;
}

id sub_2385BBA98()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75D28]);

  return [v0 init];
}

void sub_2385BBAD0(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 6);
  sub_2385BB448(a1);
}

uint64_t sub_2385BBB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2385BBD40();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2385BBBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2385BBD40();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2385BBC10()
{
  sub_2385BBD40();
  sub_23875D6B0();
  __break(1u);
}

unint64_t sub_2385BBC3C()
{
  result = qword_27DF0FB40;
  if (!qword_27DF0FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FB40);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_10(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

unint64_t sub_2385BBD40()
{
  result = qword_27DF0FB48;
  if (!qword_27DF0FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FB48);
  }

  return result;
}

void sub_2385BBD94()
{
  v1 = *&v0[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_context];
  if (v1)
  {
    v2 = v0;
    sub_2387582B0();
    v3 = v1;
    v4 = sub_238758290();
    v5 = *&v0[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_institutionID];
    v6 = *&v0[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_institutionID + 8];
    v7 = sub_238758280();
    [v4 setPredicate_];

    sub_23845CA1C();
    v8 = sub_23875EC60();
    [v4 setSortDescriptors_];

    v9 = [objc_allocWithZone(MEMORY[0x277CBE430]) initWithFetchRequest:v4 managedObjectContext:v3 sectionNameKeyPath:0 cacheName:0];
    v10 = OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_fetchController;
    v11 = *&v2[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_fetchController];
    *&v2[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_fetchController] = v9;

    v12 = *&v2[v10];
    if (v12)
    {
      [v12 setDelegate_];
    }

    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    v16[4] = sub_2385BCA7C;
    v16[5] = v13;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_238461548;
    v16[3] = &block_descriptor_11;
    v14 = _Block_copy(v16);
    v15 = v2;

    [v3 performBlock_];
    _Block_release(v14);
  }
}

id sub_2385BBF60(void *a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23875C1E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v32 - v8;
  sub_23875C120();
  v10 = a1;
  v11 = sub_23875C1B0();
  v12 = sub_23875EFC0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_2384615AC(*&v10[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_institutionID], *&v10[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_institutionID + 8], v33);
    _os_log_impl(&dword_2383F8000, v11, v12, "Listening for deletion of consent with institutionID: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x23EE64DF0](v14, -1, -1);
    MEMORY[0x23EE64DF0](v13, -1, -1);
  }

  v15 = *(v3 + 8);
  v15(v9, v2);
  result = *&v10[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_fetchController];
  if (!result)
  {
    goto LABEL_12;
  }

  v33[0] = 0;
  v17 = [result performFetch_];
  v18 = v33[0];
  if (!v17)
  {
    v32[1] = v3;
    v32[2] = v33[0];
    v20 = v33[0];
    v21 = sub_23875B730();

    swift_willThrow();
    sub_23875C120();
    v22 = v10;
    v23 = v21;
    v24 = sub_23875C1B0();
    v25 = sub_23875EFE0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v33[0] = v28;
      *v26 = 136315394;
      *(v26 + 4) = sub_2384615AC(*&v22[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_institutionID], *&v22[OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_institutionID + 8], v33);
      *(v26 + 12) = 2112;
      v29 = v21;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v30;
      *v27 = v30;
      _os_log_impl(&dword_2383F8000, v24, v25, "Failed to fetch updates for institutionId: %s with: %@", v26, 0x16u);
      sub_238439884(v27, &qword_27DF09930, &unk_2387638C0);
      MEMORY[0x23EE64DF0](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x23EE64DF0](v28, -1, -1);
      MEMORY[0x23EE64DF0](v26, -1, -1);
    }

    else
    {
    }

    result = (v15)(v6, v2);
LABEL_12:
    v31 = *MEMORY[0x277D85DE8];
    return result;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

unint64_t sub_2385BC42C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  sub_2387582B0();
  v5 = *(a1 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_institutionID);
  v6 = *(a1 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_institutionID + 8);
  result = sub_2387582A0();
  if (!v2)
  {
    if (result >> 62)
    {
      v8 = sub_23875F3A0();
    }

    else
    {
      v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *a2 = v8 == 0;
  }

  return result;
}

void sub_2385BC720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875C1E0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = (v3 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_onDeletionOfLastConsent);
  v9 = *(v3 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_onDeletionOfLastConsent);
  if (v9)
  {
    v10 = a3 == 2;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v8[1];
    sub_238453DB4(a1, v22);
    sub_2387582B0();

    if (swift_dynamicCast())
    {

      if (*(v3 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_context))
      {
        MEMORY[0x28223BE20](v12);
        v20 = v3;
        *(&v19 - 2) = v3;
        *(&v19 - 1) = v13;
        v14 = v13;
        v15 = sub_23875F120();
        if (v22[0] == 1)
        {
          v9(v15);

          sub_2384348A8(v9);
          v16 = *v8;
          v17 = v8[1];
          *v8 = 0;
          v8[1] = 0;
          sub_2384348A8(v16);
          v18 = *(v20 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_fetchController);
          *(v20 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectConsentDeletionListener_fetchController) = 0;

          return;
        }
      }
    }

    sub_2384348A8(v9);
  }
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2385BCA9C(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v53 = a1;
  v50 = sub_238759120();
  v48 = *(v50 - 8);
  v2 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2387595E0();
  v42 = *(v44 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875AEA0();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875BE20();
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v9);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_238757AC0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23875AEB0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23875BC40();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v38 - v29;
  (*(v18 + 16))(v21, v53, v17, v28);
  v31 = (*(v18 + 88))(v21, v17);
  if (v31 == *MEMORY[0x277CC84C8])
  {
    (*(v18 + 96))(v21, v17);
    (*(v23 + 16))(v26, v21, v22);
    if (sub_23875BB50() & 1) == 0 || (v32 = v39, sub_2387595C0(), v33 = sub_23875BD70(), (*(v40 + 8))(v32, v41), (v33))
    {
      v34 = *(v23 + 8);
      v34(v26, v22);
      v34(v21, v22);
      return 0;
    }

    (*(v23 + 32))(v30, v26, v22);
    (*(v23 + 8))(v21, v22);
LABEL_7:
    (*(v42 + 16))(v45, v51, v44);
    (*(v48 + 104))(v49, *MEMORY[0x277CC7750], v50);
    sub_23875BB50();
    v36 = v43;
    sub_23875AE80();
    v35 = sub_23875AE90();
    (*(v46 + 8))(v36, v47);
    (*(v23 + 8))(v30, v22);
    return v35;
  }

  if (v31 == *MEMORY[0x277CC84C0])
  {
    (*(v18 + 96))(v21, v17);
    (*(v13 + 32))(v16, v21, v12);
    sub_238757AB0();
    (*(v13 + 8))(v16, v12);
    goto LABEL_7;
  }

  v54 = 0;
  v55 = 0xE000000000000000;
  sub_23875F470();
  MEMORY[0x23EE63650](0xD000000000000014, 0x800000023878C600);
  sub_23875F510();
  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for OrderDetailsStatusSubtitleFormatter()
{
  result = qword_27DF0FB70;
  if (!qword_27DF0FB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2385BD1E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_2387595E0();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FBB0, &qword_238774038);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = sub_23875BE40();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_23875BE20();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_23875BD20();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = type metadata accessor for OrderDetailsStatusSubtitleFormatter();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2385BDB10();
  v22 = v29;
  sub_23875F780();
  if (!v22)
  {
    v23 = v27;
    sub_2385BDC24(&qword_27DF09CE0, MEMORY[0x277CC7968]);
    sub_23875F5B0();
    (*(v28 + 8))(v10, v7);
    (*(v23 + 40))(v20, v6, v3);
    sub_2385BDBC0(v20, v26);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2385BDB64(v20);
}

uint64_t sub_2385BD564(uint64_t a1)
{
  v2 = sub_2385BDB10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2385BD5A0(uint64_t a1)
{
  v2 = sub_2385BDB10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2385BD5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2385BCA9C(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_2385BD604()
{
  sub_2385BDC24(&qword_27DF0FBA8, type metadata accessor for OrderDetailsStatusSubtitleFormatter);

  return sub_238759950();
}

uint64_t sub_2385BD6A0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FBC0, &qword_238774040);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2385BDB10();
  sub_23875F790();
  sub_2387595E0();
  sub_2385BDC24(&qword_27DF09CF0, MEMORY[0x277CC7968]);
  sub_23875F5C0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2385BD818()
{
  sub_23875F700();
  sub_2387595E0();
  sub_2385BDC24(&qword_27DF09CF8, MEMORY[0x277CC7968]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_2385BD8A0()
{
  sub_2387595E0();
  sub_2385BDC24(&qword_27DF09CF8, MEMORY[0x277CC7968]);

  return sub_23875E960();
}

uint64_t sub_2385BD924()
{
  sub_23875F700();
  sub_2387595E0();
  sub_2385BDC24(&qword_27DF09CF8, MEMORY[0x277CC7968]);
  sub_23875E960();
  return sub_23875F760();
}

unint64_t sub_2385BDB10()
{
  result = qword_27DF0FBB8;
  if (!qword_27DF0FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FBB8);
  }

  return result;
}

uint64_t sub_2385BDB64(uint64_t a1)
{
  v2 = type metadata accessor for OrderDetailsStatusSubtitleFormatter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2385BDBC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsStatusSubtitleFormatter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2385BDC24(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2385BDC80()
{
  result = qword_27DF0FBC8;
  if (!qword_27DF0FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FBC8);
  }

  return result;
}

unint64_t sub_2385BDCD8()
{
  result = qword_27DF0FBD0;
  if (!qword_27DF0FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FBD0);
  }

  return result;
}

unint64_t sub_2385BDD30()
{
  result = qword_27DF0FBD8;
  if (!qword_27DF0FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FBD8);
  }

  return result;
}

id sub_2385BDD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_allocWithZone(type metadata accessor for OrderDetailsViewController());
  v13 = &v12[qword_27DF0FBE0];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = &v12[qword_27DF0FBE8];
  *v14 = a3;
  *(v14 + 1) = a4;
  v15 = &v12[qword_27DF0FBF0];
  *v15 = a5;
  *(v15 + 1) = a6;

  return sub_238669FD0();
}

uint64_t type metadata accessor for OrderDetailsViewController()
{
  result = qword_27DF0FC00;
  if (!qword_27DF0FC00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id OrderDetailsViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OrderDetailsViewControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrderDetailsViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_2385BE190(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for OrderDetailsViewController();
  objc_msgSendSuper2(&v11, sel_viewDidAppear_, a1 & 1);
  v3 = *&v1[qword_27DF0FBE0];
  v4 = *&v1[qword_27DF0FBE0 + 8];
  v5 = sub_23875EA50();
  v6 = *&v1[qword_27DF0FBE8];
  v7 = *&v1[qword_27DF0FBE8 + 8];
  v8 = sub_23875EA50();
  if (*&v1[qword_27DF0FBF0 + 8])
  {
    v9 = *&v1[qword_27DF0FBF0];
    v10 = sub_23875EA50();
  }

  else
  {
    v10 = 0;
  }

  [v1 showDetailsForOrderTypeIdentifier:v5 orderIdentifier:v8 fulfillmentIdentifier:v10 sourceApplication:0];
}

void sub_2385BE264(void *a1, uint64_t a2, char a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1;
  sub_2385BE190(a3);
}

uint64_t sub_2385BE330()
{
  v1 = *(v0 + qword_27DF0FBE0 + 8);

  v2 = *(v0 + qword_27DF0FBE8 + 8);

  v3 = *(v0 + qword_27DF0FBF0 + 8);
}

id sub_2385BE3A8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2385BE3E0(uint64_t a1)
{
  v2 = *(a1 + qword_27DF0FBE0 + 8);

  v3 = *(a1 + qword_27DF0FBE8 + 8);

  v4 = *(a1 + qword_27DF0FBF0 + 8);
}

uint64_t sub_2385BE450()
{
  v14 = v0[2];
  v15[0] = v0[3];
  if (v0[8])
  {

    v1 = sub_23875F010();
  }

  else
  {

    v1 = 0;
    v2 = 0;
  }

  v3 = 0;
  v15[1] = v1;
  v15[2] = v2;
  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v5 = &v15[2 * v3];
  while (++v3 != 3)
  {
    v6 = v5 + 2;
    v7 = *v5;
    v5 += 2;
    if (v7)
    {
      v8 = *(v6 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_238497C2C(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_238497C2C((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      goto LABEL_5;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AEB8, &unk_2387673D0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09550, &qword_2387638E0);
  sub_23843A3E8(&qword_27DF0AEC0, &qword_27DF09550, &qword_2387638E0);
  v12 = sub_23875E980();

  return v12;
}

uint64_t sub_2385BE60C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v83 = sub_23875BD20();
  v82 = *(v83 - 8);
  v3 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v81 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v79 - v7;
  v91 = sub_238758090();
  v94 = *(v91 - 8);
  v9 = *(v94 + 64);
  MEMORY[0x28223BE20](v91);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OrderDetailsShippingAddress(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v100 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v79 - v16);
  sub_23875ED50();
  v95 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = sub_2385BE450();
  v20 = v19;
  v21 = *(type metadata accessor for OrderDetailsShippingAddress.ViewModel(0) + 20);
  v22 = *MEMORY[0x277CC8440];
  v23 = sub_23875AD80();
  (*(*(v23 - 8) + 104))(v17 + v21, v22, v23);
  *v17 = v18;
  v17[1] = v20;
  v24 = v17 + *(v12 + 20);
  v105 = 1;
  sub_23875E1A0();
  v25 = v107;
  *v24 = v106;
  *(v24 + 1) = v25;
  v26 = a1[1];
  if (v26)
  {
    v104 = *a1;
    KeyPath = swift_getKeyPath();
  }

  else
  {
    KeyPath = 0;
    v104 = 0;
  }

  v27 = v91;
  v98 = a1[5];
  v99 = v17;
  v80 = v11;
  if (v98)
  {
    v97 = a1[4];
    v28 = qword_2814F0880;

    if (v28 != -1)
    {
      swift_once();
    }

    v29 = v26;
    v30 = qword_2814F1B90;
    v31 = sub_23875EA50();
    v32 = sub_23875EA50();
    v33 = sub_23875EA50();
    v34 = [v30 localizedStringForKey:v31 value:v32 table:v33];

    v35 = sub_23875EA80();
    v101 = v36;
    v102 = v35;
  }

  else
  {
    v29 = v26;

    v101 = 0;
    v102 = 0;
    v97 = 0;
  }

  v93 = a1[7];
  if (v93)
  {
    v92 = a1[6];
    v37 = qword_2814F0880;

    if (v37 != -1)
    {
      swift_once();
    }

    v38 = qword_2814F1B90;
    v39 = sub_23875EA50();
    v40 = sub_23875EA50();
    v41 = sub_23875EA50();
    v42 = [v38 &selRef:v39 hostViewController:v40 didBeginHosting:v41 + 4];

    v43 = sub_23875EA80();
    v89 = v44;
    v90 = v43;
  }

  else
  {
    v89 = 0;
    v90 = 0;
    v92 = 0;
  }

  v45 = type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(0);
  sub_23843981C(a1 + *(v45 + 36), v8, &unk_27DF0B080, &unk_2387662A0);
  v46 = v94;
  if ((*(v94 + 48))(v8, 1, v27) == 1)
  {
    sub_238439884(v8, &unk_27DF0B080, &unk_2387662A0);
    v87 = 0;
    v88 = 0;
    v86 = 0;
    v85 = 0;
  }

  else
  {
    v47 = v80;
    (*(v46 + 32))(v80, v8, v27);
    v48 = v27;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v49 = qword_2814F1B90;
    v50 = sub_23875EA50();
    v51 = sub_23875EA50();
    v52 = sub_23875EA50();
    v53 = [v49 &selRef:v50 hostViewController:v51 didBeginHosting:v52 + 4];

    v54 = sub_23875EA80();
    v87 = v55;
    v88 = v54;

    v56 = v81;
    sub_23875BCC0();
    v86 = sub_238758080();
    v85 = v57;
    (*(v82 + 8))(v56, v83);
    (*(v46 + 8))(v47, v48);
  }

  v58 = v100;
  sub_2385A5360(v99, v100);
  v59 = v96;
  sub_2385A5360(v58, v96);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FCC0, &qword_2387742F8);
  v61 = v59 + v60[12];
  v62 = v104;
  *v61 = v104;
  *(v61 + 8) = v29;
  v104 = v62;
  v63 = v29;
  v84 = v29;
  v65 = v102;
  v64 = KeyPath;
  *(v61 + 16) = KeyPath;
  v66 = v64;
  v102 = v65;
  KeyPath = v64;
  *(v61 + 24) = 0;
  v67 = (v59 + v60[16]);
  v68 = v101;
  *v67 = v65;
  v67[1] = v68;
  v101 = v68;
  v69 = v98;
  v67[2] = v97;
  v67[3] = v69;
  v70 = (v59 + v60[20]);
  v72 = v89;
  v71 = v90;
  *v70 = v90;
  v70[1] = v72;
  v73 = v93;
  v70[2] = v92;
  v70[3] = v73;
  v74 = (v59 + v60[24]);
  v76 = v87;
  v75 = v88;
  *v74 = v88;
  v74[1] = v76;
  v77 = v85;
  v74[2] = v86;
  v74[3] = v77;
  sub_2385C0814(v62, v63, v66, 0);
  sub_2385570E8(v65, v68);
  sub_2385570E8(v71, v72);
  sub_2385570E8(v75, v76);
  sub_2385C0860(v99);
  sub_23855712C(v75, v76);
  sub_23855712C(v71, v72);
  sub_23855712C(v102, v101);
  sub_2385C08BC(v104, v84, KeyPath, 0);
  sub_2385C0860(v100);
}