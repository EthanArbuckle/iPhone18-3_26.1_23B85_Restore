uint64_t sub_2385BEE98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FCB0, &qword_2387742F0);
  sub_23843A3E8(&qword_27DF0FCB8, &qword_27DF0FCB0, &qword_2387742F0);
  return sub_23875E3D0();
}

uint64_t sub_2385BEF3C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - v8;
  v10 = *(type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(0) + 36);
  v11 = sub_238758090();
  (*(*(v11 - 8) + 56))(a3 + v10, 1, 1, v11);
  v12 = [a1 orderContent];
  v13 = [v12 orderNumber];
  v14 = sub_23875EA80();
  v16 = v15;

  *a3 = v14;
  a3[1] = v16;
  if (a2 && (v17 = [a2 recipientFullName]) != 0)
  {
    v18 = v17;
    v19 = sub_23875EA80();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  a3[2] = v19;
  a3[3] = v21;
  v22 = [a1 recipientEmailAddress];
  if (v22)
  {
    v23 = v22;
    v24 = sub_23875EA80();
    v26 = v25;

    a3[4] = v24;
    a3[5] = v26;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    a3[4] = 0;
    a3[5] = 0;
    if (!a2)
    {
LABEL_11:
      v29 = 0;
      v31 = 0;
      goto LABEL_12;
    }
  }

  v27 = [a2 recipientPhoneNumber];
  if (!v27)
  {
    goto LABEL_11;
  }

  v28 = v27;
  v29 = sub_23875EA80();
  v31 = v30;

LABEL_12:
  a3[6] = v29;
  a3[7] = v31;
  a3[8] = [a2 recipientAddress];
  sub_23875A5C0();

  return sub_2385BF194(v9, a3 + v10);
}

uint64_t sub_2385BF194(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2385BF22C()
{
  sub_2384561E8();
  if (v0 <= 0x3F)
  {
    sub_2385862B4();
    if (v1 <= 0x3F)
    {
      sub_2385BF2CC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2385BF2CC()
{
  if (!qword_27DF0BB88)
  {
    sub_238758090();
    v0 = sub_23875F1F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0BB88);
    }
  }
}

uint64_t sub_2385BF324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v111 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FC80, &qword_238774280);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v117 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v116 = &v96 - v12;
  v13 = sub_2387581F0();
  v101 = *(v13 - 8);
  v102 = v13;
  v14 = *(v101 + 64);
  MEMORY[0x28223BE20](v13);
  v98 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v99 = &v96 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FC88, &qword_238774288);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v100 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v103 = &v96 - v22;
  v109 = sub_238758520();
  v23 = *(v109 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v109);
  v108 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FC90, &qword_238774290);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v112 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v96 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v96 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FC98, &qword_238774298);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v113 = &v96 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v104 = &v96 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v96 - v41;
  v43 = *(type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(0) + 36);
  v44 = sub_238758090();
  v45 = *(v44 - 8);
  v46 = *(v45 + 56);
  v114 = v43;
  v106 = v46;
  v107 = v44;
  v105 = v45 + 56;
  (v46)(a4 + v43, 1, 1);
  *a4 = sub_2387580E0();
  a4[1] = v47;
  v115 = a3;
  sub_23843981C(a3, v34, &qword_27DF0FC90, &qword_238774290);
  v48 = sub_2387581D0();
  v49 = *(v48 - 8);
  v118 = *(v49 + 48);
  v50 = v118(v34, 1, v48);
  v110 = v49;
  if (v50 == 1)
  {
    sub_238439884(v34, &qword_27DF0FC90, &qword_238774290);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v97 = a1;
    sub_238758180();
    (*(v49 + 8))(v34, v48);
    v53 = sub_238758130();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v42, 1, v53) == 1)
    {
      sub_238439884(v42, &qword_27DF0FC98, &qword_238774298);
      v51 = 0;
      v52 = 0;
    }

    else
    {
      v51 = sub_238758120();
      v52 = v55;
      (*(v54 + 8))(v42, v53);
    }

    a1 = v97;
  }

  a4[2] = v51;
  a4[3] = v52;
  if (*(v111 + 16))
  {
    v57 = v108;
    v56 = v109;
    (*(v23 + 16))(v108, v111 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v109);

    v58 = sub_2387584A0();
    v60 = v59;
    (*(v23 + 8))(v57, v56);
  }

  else
  {

    v58 = 0;
    v60 = 0;
  }

  v61 = v115;
  a4[4] = v58;
  a4[5] = v60;
  sub_23843981C(v61, v31, &qword_27DF0FC90, &qword_238774290);
  if (v118(v31, 1, v48) == 1)
  {
    v62 = &qword_27DF0FC90;
    v63 = &qword_238774290;
    v64 = v31;
LABEL_14:
    sub_238439884(v64, v62, v63);
    v68 = 0;
    v69 = 0;
    goto LABEL_16;
  }

  v65 = v104;
  sub_238758180();
  (*(v110 + 8))(v31, v48);
  v66 = sub_238758130();
  v67 = *(v66 - 8);
  if ((*(v67 + 48))(v65, 1, v66) == 1)
  {
    v62 = &qword_27DF0FC98;
    v63 = &qword_238774298;
    v64 = v65;
    goto LABEL_14;
  }

  v68 = sub_238758100();
  v70 = v65;
  v69 = v71;
  (*(v67 + 8))(v70, v66);
LABEL_16:
  a4[6] = v68;
  a4[7] = v69;
  v72 = v112;
  v73 = v113;
  sub_23843981C(v61, v112, &qword_27DF0FC90, &qword_238774290);
  if (v118(v72, 1, v48) == 1)
  {
    sub_238439884(v72, &qword_27DF0FC90, &qword_238774290);
    v74 = 0;
    v76 = v116;
    v75 = v117;
    goto LABEL_24;
  }

  sub_238758180();
  (*(v110 + 8))(v72, v48);
  v77 = sub_238758130();
  v78 = *(v77 - 8);
  v79 = (*(v78 + 48))(v73, 1, v77);
  v76 = v116;
  v75 = v117;
  if (v79 == 1)
  {
    v80 = &qword_27DF0FC98;
    v81 = &qword_238774298;
    v82 = v73;
LABEL_22:
    sub_238439884(v82, v80, v81);
    v74 = 0;
    goto LABEL_24;
  }

  v83 = v103;
  MEMORY[0x23EE5CBF0]();
  v84 = v83;
  (*(v78 + 8))(v73, v77);
  v85 = v83;
  v86 = v100;
  sub_23843981C(v85, v100, &qword_27DF0FC88, &qword_238774288);
  v88 = v101;
  v87 = v102;
  if ((*(v101 + 48))(v86, 1, v102) == 1)
  {
    v80 = &qword_27DF0FC88;
    v81 = &qword_238774288;
    v82 = v84;
    goto LABEL_22;
  }

  v89 = v86;
  v90 = v99;
  (*(v88 + 32))(v99, v89, v87);
  sub_238449184(0, &qword_27DF0D608, 0x277CBDB60);
  (*(v88 + 16))(v98, v90, v87);
  v74 = sub_23875F0E0();
  (*(v88 + 8))(v90, v87);
  sub_238439884(v103, &qword_27DF0FC88, &qword_238774288);
LABEL_24:
  a4[8] = v74;
  sub_238758220();
  v91 = sub_238758210();
  v92 = *(v91 - 8);
  if ((*(v92 + 48))(v75, 1, v91) == 1)
  {
    sub_238439884(v61, &qword_27DF0FC90, &qword_238774290);
    v93 = sub_238758270();
    (*(*(v93 - 8) + 8))(a1, v93);
    sub_238439884(v75, &qword_27DF0FC80, &qword_238774280);
    v106(v76, 1, 1, v107);
  }

  else
  {
    sub_238758200();
    sub_238439884(v61, &qword_27DF0FC90, &qword_238774290);
    v94 = sub_238758270();
    (*(*(v94 - 8) + 8))(a1, v94);
    (*(v92 + 8))(v75, v91);
  }

  return sub_2385BF194(v76, a4 + v114);
}

uint64_t sub_2385BFE34(uint64_t *a1, void *a2)
{
  v4 = sub_238758090();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v89 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC88, &qword_23876D250);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v89 - v16;
  v18 = a1[1];
  v19 = a2[1];
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_99;
    }

    if (*a1 != *a2 || v18 != v19)
    {
      v20 = v15;
      v21 = *a1;
      v22 = sub_23875F630();
      v15 = v20;
      if ((v22 & 1) == 0)
      {
        goto LABEL_99;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_99;
  }

  v23 = a1[3];
  v24 = a2[3];
  if (v23)
  {
    if (!v24)
    {
      goto LABEL_99;
    }

    if (a1[2] != a2[2] || v23 != v24)
    {
      v25 = v15;
      v26 = a1[2];
      v27 = sub_23875F630();
      v15 = v25;
      if ((v27 & 1) == 0)
      {
        goto LABEL_99;
      }
    }
  }

  else if (v24)
  {
    goto LABEL_99;
  }

  v28 = a1[5];
  v29 = a2[5];
  if (v28)
  {
    if (!v29)
    {
      goto LABEL_99;
    }

    if (a1[4] != a2[4] || v28 != v29)
    {
      v30 = v15;
      v31 = a1[4];
      v32 = sub_23875F630();
      v15 = v30;
      if ((v32 & 1) == 0)
      {
        goto LABEL_99;
      }
    }
  }

  else if (v29)
  {
    goto LABEL_99;
  }

  v33 = a1[7];
  v34 = a2[7];
  if (v33)
  {
    if (!v34)
    {
      goto LABEL_99;
    }

    if (a1[6] != a2[6] || v33 != v34)
    {
      v35 = v15;
      v36 = a1[6];
      v37 = sub_23875F630();
      v15 = v35;
      if ((v37 & 1) == 0)
      {
        goto LABEL_99;
      }
    }
  }

  else if (v34)
  {
    goto LABEL_99;
  }

  v38 = a1[8];
  v92 = v15;
  v94 = v38;
  if (v38)
  {
    v39 = [v38 street];
    v91 = sub_23875EA80();
    v41 = v40;

    v42 = a2[8];
    if (!v42)
    {
      if (v41)
      {
        goto LABEL_98;
      }

      v93 = 0;
      v43 = 1;
      v44 = v94;
      goto LABEL_45;
    }
  }

  else
  {
    v42 = a2[8];
    if (!v42)
    {
      goto LABEL_102;
    }

    v41 = 0;
    v91 = 0;
  }

  v93 = v42;
  v45 = [v42 street];
  v90 = sub_23875EA80();
  v47 = v46;

  if (v41)
  {
    if (!v47)
    {
      goto LABEL_98;
    }

    if (v91 == v90 && v41 == v47)
    {
    }

    else
    {
      v48 = sub_23875F630();

      if ((v48 & 1) == 0)
      {
        goto LABEL_99;
      }
    }
  }

  else if (v47)
  {
    goto LABEL_98;
  }

  v44 = v94;
  if (!v94)
  {
    v51 = 0;
    v91 = 0;
    goto LABEL_49;
  }

  v43 = 0;
LABEL_45:
  v49 = [v44 city];
  v91 = sub_23875EA80();
  v51 = v50;

  if (v43)
  {
    if (v51)
    {
      goto LABEL_98;
    }

    v52 = 1;
    v53 = v94;
    goto LABEL_59;
  }

LABEL_49:
  v54 = [v93 city];
  v90 = sub_23875EA80();
  v56 = v55;

  if (v51)
  {
    if (!v56)
    {
      goto LABEL_98;
    }

    if (v91 == v90 && v51 == v56)
    {
    }

    else
    {
      v57 = sub_23875F630();

      if ((v57 & 1) == 0)
      {
        goto LABEL_99;
      }
    }
  }

  else if (v56)
  {
    goto LABEL_98;
  }

  v53 = v94;
  if (!v94)
  {
    v60 = 0;
    v91 = 0;
    goto LABEL_63;
  }

  v52 = 0;
LABEL_59:
  v58 = [v53 state];
  v91 = sub_23875EA80();
  v60 = v59;

  if (v52)
  {
    if (v60)
    {
      goto LABEL_98;
    }

    v61 = 1;
    v62 = v94;
    goto LABEL_73;
  }

LABEL_63:
  v63 = [v93 state];
  v90 = sub_23875EA80();
  v65 = v64;

  if (v60)
  {
    if (!v65)
    {
      goto LABEL_98;
    }

    if (v91 == v90 && v60 == v65)
    {
    }

    else
    {
      v66 = sub_23875F630();

      if ((v66 & 1) == 0)
      {
        goto LABEL_99;
      }
    }
  }

  else if (v65)
  {
    goto LABEL_98;
  }

  v62 = v94;
  if (!v94)
  {
    v69 = 0;
    v91 = 0;
    goto LABEL_77;
  }

  v61 = 0;
LABEL_73:
  v94 = v62;
  v67 = [v62 postalCode];
  v91 = sub_23875EA80();
  v69 = v68;

  if (v61)
  {
    if (v69)
    {
      goto LABEL_98;
    }

    v70 = 1;
    v71 = v94;
LABEL_87:
    v76 = [v71 country];
    v94 = sub_23875EA80();
    v78 = v77;

    if (v70)
    {
      if (!v78)
      {
        goto LABEL_102;
      }

LABEL_98:

      goto LABEL_99;
    }

    goto LABEL_91;
  }

LABEL_77:
  v72 = [v93 postalCode];
  v90 = sub_23875EA80();
  v74 = v73;

  if (v69)
  {
    if (!v74)
    {
      goto LABEL_98;
    }

    if (v91 == v90 && v69 == v74)
    {
    }

    else
    {
      v75 = sub_23875F630();

      if ((v75 & 1) == 0)
      {
        goto LABEL_99;
      }
    }
  }

  else if (v74)
  {
    goto LABEL_98;
  }

  v71 = v94;
  if (v94)
  {
    v70 = 0;
    goto LABEL_87;
  }

  v78 = 0;
  v94 = 0;
LABEL_91:
  v79 = [v93 country];
  v93 = sub_23875EA80();
  v81 = v80;

  if (v78)
  {
    if (v81)
    {
      if (v94 == v93 && v78 == v81)
      {
      }

      else
      {
        v84 = sub_23875F630();

        if ((v84 & 1) == 0)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_102;
    }

    goto LABEL_98;
  }

  if (v81)
  {
    goto LABEL_98;
  }

LABEL_102:
  v85 = *(type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(0) + 36);
  v86 = *(v92 + 48);
  sub_23843981C(a1 + v85, v17, &unk_27DF0B080, &unk_2387662A0);
  sub_23843981C(a2 + v85, &v17[v86], &unk_27DF0B080, &unk_2387662A0);
  v87 = *(v5 + 48);
  if (v87(v17, 1, v4) == 1)
  {
    if (v87(&v17[v86], 1, v4) == 1)
    {
      sub_238439884(v17, &unk_27DF0B080, &unk_2387662A0);
      v82 = 1;
      return v82 & 1;
    }
  }

  else
  {
    sub_23843981C(v17, v12, &unk_27DF0B080, &unk_2387662A0);
    if (v87(&v17[v86], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v86], v4);
      sub_2385C06E4();
      v82 = sub_23875E9E0();
      v88 = *(v5 + 8);
      v88(v8, v4);
      v88(v12, v4);
      sub_238439884(v17, &unk_27DF0B080, &unk_2387662A0);
      return v82 & 1;
    }

    (*(v5 + 8))(v12, v4);
  }

  sub_238439884(v17, &qword_27DF0BC88, &qword_23876D250);
LABEL_99:
  v82 = 0;
  return v82 & 1;
}

unint64_t sub_2385C06E4()
{
  result = qword_27DF0BC90;
  if (!qword_27DF0BC90)
  {
    sub_238758090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BC90);
  }

  return result;
}

uint64_t sub_2385C0784()
{
  result = type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2385C0814(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a2)
  {

    sub_2384BE900(a3, a4 & 1);
  }
}

uint64_t sub_2385C0860(uint64_t a1)
{
  v2 = type metadata accessor for OrderDetailsShippingAddress(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2385C08BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a2)
  {

    sub_2385A9698(a3, a4 & 1);
  }
}

unint64_t sub_2385C0908()
{
  result = qword_27DF0FCC8;
  if (!qword_27DF0FCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FCD0, &qword_238774328);
    sub_23843A3E8(&qword_27DF0FCB8, &qword_27DF0FCB0, &qword_2387742F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FCC8);
  }

  return result;
}

void sub_2385C0A0C()
{
  sub_2384561E8();
  if (v0 <= 0x3F)
  {
    sub_2385C0B18(319, &qword_27DF0FCF0, MEMORY[0x277CC78D8], MEMORY[0x277CDD7C8]);
    if (v1 <= 0x3F)
    {
      sub_2385C0B18(319, &qword_27DF0FCF8, type metadata accessor for AnalyticsSession, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2385C0B18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2385C0B98(uint64_t a1, unint64_t a2)
{
  v2 = MEMORY[0x277D38520];
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = MEMORY[0x277D38528];
  }

  else
  {
    v4 = MEMORY[0x277D38520];
  }

  if (a2)
  {
    v2 = v4;
  }

  v5 = *v2;
  return sub_23875EA80();
}

uint64_t sub_2385C0BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_2386F5600() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6 + 16);
  v14 = *(a1 + v6);
  v15[0] = v7;
  *(v15 + 12) = *(a1 + v6 + 28);
  v8 = (a2 + v6);
  v9 = v8[1];
  v16 = *v8;
  v17[0] = v9;
  *(v17 + 12) = *(v8 + 28);
  if ((sub_23846C7F4(&v14, &v16) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a3 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);

  return sub_2385192A4(v11, v12);
}

id sub_2385C0C80@<X0>(char **a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FetchedExtractedOrderDetails(0);
  v5 = v4 - 8;
  v26 = *(v4 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD00, &qword_2387743E0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27[-1] - v10;
  v12 = *(v5 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FCD8, &unk_238774360);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF0FD08, &qword_27DF0FD00, &qword_2387743E0);
  sub_23875EED0();
  sub_23875EF00();
  if (v27[4] == v27[0])
  {
    result = (*(v8 + 8))(v11, v7);
    v14 = 0;
    v15 = 0;
LABEL_5:
    *a1 = v14;
    a1[1] = 0;
    a1[2] = v15;
    a1[3] = 0;
    return result;
  }

  v16 = sub_23875EF20();
  v18 = *v17;
  v16(v27, 0);
  (*(v8 + 8))(v11, v7);
  sub_2385C30DC(v2, &v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FetchedExtractedOrderDetails);
  v19 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v20 = swift_allocObject();
  sub_2385C314C(&v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for FetchedExtractedOrderDetails);

  result = [v18 managedObjectContext];
  if (result)
  {
    v21 = result;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD10, &qword_2387743E8);
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v25 = v18;
    v14 = sub_238626C04(v18, v21, sub_2385C1C98, v20);

    v15 = sub_2385C11C4;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_2385C0FD8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_23875CDB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = a2 + *(type metadata accessor for FetchedExtractedOrderDetails(0) + 28);
  v14 = *v13;
  v15 = *(v13 + 8);

  if ((v15 & 1) == 0)
  {
    sub_23875EFF0();
    v16 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    v14 = v24;
  }

  v17 = a1;
  sub_2386F4984(v17, v11, v12, 0, a3);
  v18 = v17;
  sub_23846C8C4(v18, 1, &v24);

  v19 = type metadata accessor for FetchedExtractedOrderDetails.ViewModel(0);
  v20 = (a3 + *(v19 + 20));
  v21 = v25[0];
  *v20 = v24;
  v20[1] = v21;
  *(v20 + 28) = *(v25 + 12);
  v22 = sub_2385C1D18(v18, v14);

  *(a3 + *(v19 + 24)) = v22;
  return result;
}

uint64_t sub_2385C11C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for FetchedExtractedOrderDetails.ViewModel(0);
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for ExtractedOrderDetails(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385C30DC(a1, v8, type metadata accessor for ExtractedOrderDetails.ViewModel);
  v9 = &v8[*(v5 + 20)];
  LOBYTE(v30) = 1;
  v25 = 0u;
  v24 = 0u;
  v26 = 1;
  v27 = 0u;
  v28 = 0u;
  v29 = 1;
  sub_23875E1A0();
  v10 = v33;
  v11 = v34;
  v12 = v31;
  *(v9 + 2) = v32;
  *(v9 + 3) = v10;
  *(v9 + 4) = v11;
  *(v9 + 10) = v35;
  *v9 = v30;
  *(v9 + 1) = v12;
  v13 = *(v5 + 24);
  *&v8[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD18, &qword_238774428);
  sub_2385C3320(&qword_27DF0DAF0, type metadata accessor for ExtractedOrderDetails);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FD20, &unk_238774430);
  v15 = sub_23843A3E8(&qword_27DF0FD28, &qword_27DF0FD20, &unk_238774430);
  *&v24 = v14;
  *(&v24 + 1) = v15;
  swift_getOpaqueTypeConformance2();
  v16 = v21;
  sub_23875DEF0();
  sub_2385C3368(v8, type metadata accessor for ExtractedOrderDetails);
  sub_2385C30DC(a1, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FetchedExtractedOrderDetails.ViewModel);
  v17 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v18 = swift_allocObject();
  sub_2385C314C(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for FetchedExtractedOrderDetails.ViewModel);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD30, &qword_238774440);
  v20 = (v16 + *(result + 36));
  *v20 = sub_2385C31B4;
  v20[1] = v18;
  v20[2] = 0;
  v20[3] = 0;
  return result;
}

uint64_t sub_2385C1568(uint64_t a1)
{
  v2 = sub_23875D2A0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD20, &unk_238774430);
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

  v9 = sub_23875D270();
  MEMORY[0x28223BE20](v9);
  *(&v12 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD38, &qword_238774448);
  sub_2385C3234();
  sub_23875C990();
  v10 = sub_23843A3E8(&qword_27DF0FD28, &qword_27DF0FD20, &unk_238774430);
  MEMORY[0x23EE61E80](v8, v4, v10);
  (*(v5 + 8))(v8, v4);
}

uint64_t sub_2385C17AC(uint64_t a1)
{
  v2 = type metadata accessor for ExtractedOrderActionsMenu(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = (a1 + *(type metadata accessor for FetchedExtractedOrderDetails.ViewModel(0) + 20));
  v7 = *(v6 + 28);
  v8 = v6[1];
  v16 = *v6;
  v17[0] = v8;
  *(v17 + 12) = v7;
  *v5 = v16;
  v5[1] = v8;
  *(v5 + 28) = v7;
  v9 = *(v2 + 20);
  *(v5 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v10 = v5 + *(v2 + 24);
  v15 = 0;
  sub_23846CF68(&v16, v13);
  sub_23875E1A0();
  v11 = v14;
  *v10 = v13[0];
  *(v10 + 1) = v11;
  sub_2385C3320(&qword_27DF0FD48, type metadata accessor for ExtractedOrderActionsMenu);
  sub_23875DE00();
  sub_2385C3368(v5, type metadata accessor for ExtractedOrderActionsMenu);
}

uint64_t sub_2385C19B8(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + *(type metadata accessor for FetchedExtractedOrderDetails.ViewModel(0) + 24));
  v20 = *(v2 + 16);
  if (!v20)
  {
  }

  v3 = 0;
  v19 = *MEMORY[0x277D38548];
  v18 = *MEMORY[0x277D38470];
  v4 = *MEMORY[0x277D383D8];
  v5 = *MEMORY[0x277D384B8];
  while (v3 < *(v2 + 16))
  {
    v6 = *(v2 + 32 + 8 * v3);
    v7 = sub_23875EA80();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
    inited = swift_initStackObject();
    *(inited + 32) = v4;
    *(inited + 16) = xmmword_238763B60;
    *(inited + 40) = v7;
    *(inited + 48) = v9;
    *(inited + 56) = v5;
    strcpy((inited + 64), "orderDetails");
    *(inited + 77) = 0;
    *(inited + 78) = -5120;

    v11 = v4;
    v12 = v5;
    v13 = sub_23854B138(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v13;
    sub_2385C33E4(v6, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v21);

    ++v3;
    v15 = objc_opt_self();
    type metadata accessor for PKAnalyticsKey(0);
    sub_2385C3320(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
    v16 = sub_23875E910();

    [v15 subject:v19 sendEvent:v16];

    if (v20 == v3)
    {
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2385C1C98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for FetchedExtractedOrderDetails(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2385C0FD8(a1, v6, a2);
}

uint64_t sub_2385C1D18(void *a1, uint64_t a2)
{
  v203 = sub_238757F90();
  v191 = *(v203 - 8);
  v4 = *(v191 + 64);
  MEMORY[0x28223BE20](v203);
  v177 = &v170 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FAF8, &unk_238774480);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v202 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v201 = &v170 - v10;
  v200 = sub_23875BE40();
  v180 = *(v200 - 8);
  v11 = *(v180 + 64);
  MEMORY[0x28223BE20](v200);
  v199 = &v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_238757F70();
  v179 = *(v198 - 8);
  v13 = *(v179 + 64);
  MEMORY[0x28223BE20](v198);
  v176 = &v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD50, &unk_2387774D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v197 = &v170 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v196 = &v170 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD58, &unk_238774490);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v195 = &v170 - v22;
  v208 = sub_23875BE20();
  v212 = *(v208 - 8);
  v23 = *(v212 + 64);
  MEMORY[0x28223BE20](v208);
  v207 = &v170 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_23875BC40();
  v213 = *(v211 - 8);
  v25 = *(v213 + 64);
  MEMORY[0x28223BE20](v211);
  v210 = &v170 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = &v170 - v30;
  v214 = a1;
  v32 = [a1 orderContent];
  v33 = [a1 trackedOrderIdentifier];
  v34 = sub_23875EA80();
  v36 = v35;

  v37 = *(a2 + 16);
  v217 = v34;
  v218 = v36;
  v38 = *(*v37 + *MEMORY[0x277D841D0] + 16);
  v39 = (*(*v37 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v37 + v39));
  sub_2385C33C8(v220);
  os_unfair_lock_unlock((v37 + v39));

  v215 = v220[1];
  v216 = v220[0];
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD60, &qword_2387744A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238774330;
  *(inited + 32) = sub_23875EA50();
  v204 = inited + 32;
  *(inited + 40) = xmmword_238774340;
  *(inited + 56) = sub_23875EA50();
  *(inited + 64) = sub_2385B98E8();
  *(inited + 72) = v41;
  *(inited + 80) = sub_23875EA50();
  v42 = [v32 orderNumber];
  v43 = sub_23875EA80();
  v45 = v44;

  v46 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v46 = v43 & 0xFFFFFFFFFFFFLL;
  }

  v47 = *MEMORY[0x277D38520];
  v48 = *MEMORY[0x277D38528];
  if (v46)
  {
    v49 = *MEMORY[0x277D38528];
  }

  else
  {
    v49 = *MEMORY[0x277D38520];
  }

  v50 = sub_23875EA80();
  v52 = v51;

  *(inited + 88) = v50;
  *(inited + 96) = v52;
  *(inited + 104) = sub_23875EA50();
  sub_23875A5C0();
  v53 = sub_238758090();
  (*(*(v53 - 8) + 48))(v31, 1, v53);
  v54 = sub_23875EA80();
  v56 = v55;
  sub_238439884(v31, &unk_27DF0B080, &unk_2387662A0);
  *(inited + 112) = v54;
  *(inited + 120) = v56;
  *(inited + 128) = sub_23875EA50();
  v57 = v210;
  sub_23875BBF0();
  v58 = v207;
  sub_23875BDB0();
  sub_238759450();
  v59 = *(v212 + 8);
  v212 += 8;
  v193 = v59;
  v59(v58, v208);
  v60 = *(v213 + 8);
  v213 += 8;
  v205 = v60;
  v60(v57, v211);
  v209 = v47;
  *(inited + 136) = sub_23875EA80();
  *(inited + 144) = v61;
  *(inited + 152) = sub_23875EA50();
  v171 = v32;
  v62 = [v32 paymentTotalCurrencyCode];
  if (v62)
  {
    v63 = v62;
    v64 = sub_23875EA80();
    v66 = v65;
  }

  else
  {
    v66 = 0xE700000000000000;
    v64 = 0x6E776F6E6B6E75;
  }

  *(inited + 160) = v64;
  *(inited + 168) = v66;
  *(inited + 176) = sub_23875EA50();
  v67 = sub_23875A5E0();
  v206 = v48;
  if (v67 >> 62)
  {
    v68 = sub_23875F3A0();
  }

  else
  {
    v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v69 = MEMORY[0x277D38520];
  if (v68 > 1)
  {
    v69 = MEMORY[0x277D38528];
  }

  v70 = *v69;
  *(inited + 184) = sub_23875EA80();
  *(inited + 192) = v71;
  *(inited + 200) = sub_23875EA50();
  v72 = v171;
  *(inited + 208) = sub_2385B9AA4();
  *(inited + 216) = v73;
  *(inited + 224) = sub_23875EA50();
  v74 = [v72 orderUpdateDate];
  v75 = v210;
  sub_23875BBE0();

  v76 = sub_23844C544(v75);
  v78 = v77;
  v205(v75, v211);
  *(inited + 232) = v76;
  *(inited + 240) = v78;
  v79 = sub_23875EA50();
  v80 = v215;
  v81 = v216;
  *(inited + 248) = v79;
  *(inited + 256) = v81;
  *(inited + 264) = v80;
  *(inited + 272) = sub_23875EA50();
  v82 = sub_238759470();
  if (v82 >> 62)
  {
    v88 = v82;
    v89 = sub_23875F3A0();
    v82 = v88;
    if (v89)
    {
      goto LABEL_15;
    }

LABEL_21:

    v85 = sub_23875EA80();
    v87 = v90;
    goto LABEL_22;
  }

  if (!*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_15:
  if ((v82 & 0xC000000000000001) != 0)
  {
    v83 = MEMORY[0x23EE63F70](0);
  }

  else
  {
    if (!*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_62;
    }

    v83 = *(v82 + 32);
  }

  v84 = v83;

  v85 = sub_23875EA80();
  v87 = v86;

LABEL_22:
  *(inited + 280) = v85;
  *(inited + 288) = v87;
  *(inited + 296) = sub_23875EA50();
  v91 = [v171 merchantDisplayName];
  v92 = sub_23875EA80();
  v94 = v93;

  *(inited + 304) = v92;
  *(inited + 312) = v94;
  *(inited + 320) = sub_23875EA50();
  *(inited + 328) = 0x74656C6C6177;
  *(inited + 336) = 0xE600000000000000;
  v95 = sub_23854BB54(inited);
  swift_setDeallocating();
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD68, &qword_2387744A8);
  swift_arrayDestroy();
  v204 = sub_23862110C(v95);

  v96 = sub_23875A5E0();
  if (v96 >> 62)
  {
    v97 = sub_23875F3A0();
  }

  else
  {
    v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v97)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF10, &qword_2387744B0);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_2387632F0;
    *(v102 + 32) = v204;

    return v102;
  }

  v98 = sub_23875A5E0();
  v99 = v98;
  if (!(v98 >> 62))
  {
    v100 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v100)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

  v168 = v98;
  v100 = sub_23875F3A0();
  v99 = v168;
  if (!v100)
  {
LABEL_58:
    v102 = MEMORY[0x277D84F90];
LABEL_59:

    return v102;
  }

LABEL_27:
  if (v100 >= 1)
  {
    v101 = 0;
    v188 = "fulfillmentStatus";
    v189 = "orderEmailAvailable";
    v186 = "deliveryETASpecified";
    v187 = "trackingNumberSpecified";
    v184 = "carrierSpecified";
    v185 = "orderShippingAddressSpecified";
    v182 = v99 & 0xC000000000000001;
    v183 = "daysSinceDelivered";
    v180 += 8;
    v181 = (v179 + 48);
    v174 = (v179 + 8);
    v175 = (v179 + 32);
    v179 = v191 + 48;
    v172 = (v191 + 8);
    v173 = (v191 + 32);
    v102 = MEMORY[0x277D84F90];
    v178 = xmmword_238774350;
    v190 = v100;
    v191 = v99;
    while (1)
    {
      v215 = v102;
      v216 = v101;
      v214 = 0;
      v103 = v182 ? MEMORY[0x23EE63F70](v101) : *(v99 + 8 * v101 + 32);
      v104 = v103;
      v105 = swift_initStackObject();
      *(v105 + 16) = v178;
      *(v105 + 32) = sub_23875EA50();
      *(v105 + 40) = sub_2385B9D18();
      *(v105 + 48) = v106;
      *(v105 + 56) = sub_23875EA50();
      v107 = [v104 trackingNumber];
      if (v107)
      {
        v108 = v107;
        v109 = sub_23875EA80();
        v111 = v110;
      }

      else
      {
        v109 = 0;
        v111 = 0;
      }

      v112 = sub_2385C0B98(v109, v111);
      v114 = v113;

      *(v105 + 64) = v112;
      *(v105 + 72) = v114;
      *(v105 + 80) = sub_23875EA50();
      v115 = v195;
      sub_23875ABD0();
      v116 = sub_238757FA0();
      (*(*(v116 - 8) + 48))(v115, 1, v116);
      v117 = sub_23875EA80();
      v119 = v118;
      sub_238439884(v115, &qword_27DF0FD58, &unk_238774490);
      *(v105 + 88) = v117;
      *(v105 + 96) = v119;
      *(v105 + 104) = sub_23875EA50();
      v120 = [v104 recipientAddress];
      if (v120)
      {
        v121 = v120;
        v122 = sub_23875EA80();
        v124 = v123;
      }

      else
      {
        v122 = sub_23875EA80();
        v124 = v125;
      }

      *(v105 + 112) = v122;
      *(v105 + 120) = v124;
      *(v105 + 128) = sub_23875EA50();
      v126 = [v104 carrierName];
      if (v126)
      {
        v127 = v126;
        v128 = sub_23875EA80();
        v130 = v129;
      }

      else
      {
        v128 = 0;
        v130 = 0;
      }

      v131 = sub_2385C0B98(v128, v130);
      v133 = v132;

      *(v105 + 136) = v131;
      *(v105 + 144) = v133;
      *(v105 + 152) = sub_23875EA50();
      *(v105 + 160) = sub_2385B9FC0();
      *(v105 + 168) = v134;
      v135 = sub_23854BB54(v105);
      swift_setDeallocating();
      swift_arrayDestroy();
      v136 = sub_23862110C(v135);

      v220[0] = v136;
      v137 = v196;
      sub_23875ABB0();
      v138 = v197;
      sub_23843981C(v137, v197, &qword_27DF0FD50, &unk_2387774D0);
      v139 = v198;
      if ((*v181)(v138, 1, v198) == 1)
      {
        sub_238439884(v137, &qword_27DF0FD50, &unk_2387774D0);
        v140 = 0;
        v141 = 0;
      }

      else
      {
        v142 = v176;
        (*v175)(v176, v138, v139);
        v143 = v207;
        sub_23875BDB0();
        v144 = v199;
        sub_23875BE30();
        v145 = v210;
        MEMORY[0x23EE5CA40](v143, v144);
        (*v180)(v144, v200);
        v193(v143, v208);
        v140 = sub_23844C544(v145);
        v141 = v146;
        v205(v145, v211);
        (*v174)(v142, v139);
        sub_238439884(v137, &qword_27DF0FD50, &unk_2387774D0);
      }

      v147 = v203;
      v148 = v201;
      v149 = v214;
      v150 = sub_23875EA50();
      sub_2386C41A8(v140, v141, v150);
      sub_23875ABC0();
      v151 = v202;
      sub_23843981C(v148, v202, &qword_27DF0FAF8, &unk_238774480);
      if ((*v179)(v151, 1, v147) == 1)
      {
        sub_238439884(v148, &qword_27DF0FAF8, &unk_238774480);
        v152 = 0;
        v153 = 0;
      }

      else
      {
        v154 = v177;
        (*v173)(v177, v151, v147);
        v155 = v207;
        sub_23875BDB0();
        v156 = v199;
        sub_23875BE30();
        v157 = v210;
        MEMORY[0x23EE5CA60](v155, v156);
        (*v180)(v156, v200);
        v193(v155, v208);
        v152 = sub_23844C544(v157);
        v153 = v158;
        v205(v157, v211);
        (*v172)(v154, v147);
        sub_238439884(v148, &qword_27DF0FAF8, &unk_238774480);
      }

      v159 = sub_23875EA50();
      sub_2386C41A8(v152, v153, v159);
      v160 = v220[0];
      v161 = v204;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v219[0] = v161;
      sub_2385C33E4(v160, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v219);

      v163 = v219[0];
      if (v149)
      {
        goto LABEL_63;
      }

      v102 = v215;
      v164 = swift_isUniquelyReferenced_nonNull_native();
      v165 = v216;
      if ((v164 & 1) == 0)
      {
        v102 = sub_2384989EC(0, *(v102 + 16) + 1, 1, v102);
      }

      v167 = *(v102 + 16);
      v166 = *(v102 + 24);
      if (v167 >= v166 >> 1)
      {
        v102 = sub_2384989EC((v166 > 1), v167 + 1, 1, v102);
      }

      v101 = v165 + 1;

      *(v102 + 16) = v167 + 1;
      *(v102 + 8 * v167 + 32) = v163;
      v99 = v191;
      if (v190 == v101)
      {
        goto LABEL_59;
      }
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:

  __break(1u);
  return result;
}

uint64_t sub_2385C30DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385C314C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385C31B4()
{
  v1 = *(type metadata accessor for FetchedExtractedOrderDetails.ViewModel(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2385C19B8(v2);
}

unint64_t sub_2385C3234()
{
  result = qword_27DF0FD40;
  if (!qword_27DF0FD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FD38, &qword_238774448);
    sub_2385C3320(&qword_27DF0FD48, type metadata accessor for ExtractedOrderActionsMenu);
    sub_2385C3320(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FD40);
  }

  return result;
}

uint64_t sub_2385C3320(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2385C3368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2385C33E4(uint64_t a1, void (*a2)(void *__return_ptr, void *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v45 = -1 << *(a1 + 32);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v47 = a5;
  v48 = v7;
  v46 = v11;
  while (v10)
  {
    v53 = a4;
    v18 = v12;
LABEL_14:
    v20 = __clz(__rbit64(v10)) | (v18 << 6);
    v21 = *(*(a1 + 48) + 8 * v20);
    v22 = (*(a1 + 56) + 16 * v20);
    v23 = *v22;
    v24 = v22[1];
    v52[0] = v21;
    v52[1] = v23;
    v52[2] = v24;
    v25 = v21;

    a2(v51, v52);

    v26 = v51[0];
    v27 = v51[1];
    v28 = v51[2];
    v29 = *a5;
    v31 = sub_2385477FC(v51[0]);
    v32 = v29[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_25;
    }

    v35 = v30;
    if (v29[3] >= v34)
    {
      if ((v53 & 1) == 0)
      {
        sub_23854A0B4();
      }
    }

    else
    {
      sub_2385483BC(v34, v53 & 1);
      v36 = *a5;
      v37 = sub_2385477FC(v26);
      if ((v35 & 1) != (v38 & 1))
      {
        goto LABEL_27;
      }

      v31 = v37;
    }

    v10 &= v10 - 1;
    v39 = *a5;
    if (v35)
    {
      v13 = (v39[7] + 16 * v31);
      v15 = *v13;
      v14 = v13[1];

      v16 = (v39[7] + 16 * v31);
      v17 = v16[1];
      *v16 = v15;
      v16[1] = v14;
    }

    else
    {
      v39[(v31 >> 6) + 8] |= 1 << v31;
      *(v39[6] + 8 * v31) = v26;
      v40 = (v39[7] + 16 * v31);
      *v40 = v27;
      v40[1] = v28;
      v41 = v39[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_26;
      }

      v39[2] = v43;
    }

    a4 = 1;
    v12 = v18;
    a5 = v47;
    v7 = v48;
    v11 = v46;
  }

  v19 = v12;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v11)
    {
      sub_238434840();
    }

    v10 = *(v7 + 8 * v18);
    ++v19;
    if (v10)
    {
      v53 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  type metadata accessor for PKAnalyticsKey(0);
  result = sub_23875F680();
  __break(1u);
  return result;
}

void sub_2385C36AC()
{
  type metadata accessor for ExtractedOrderDetails.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2385C3738();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2385C3738()
{
  if (!qword_27DF0FD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AF18, &qword_238767530);
    v0 = sub_23875ECC0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0FD80);
    }
  }
}

unint64_t sub_2385C379C()
{
  result = qword_27DF0FD88;
  if (!qword_27DF0FD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FD90, &qword_2387744D0);
    sub_23843A3E8(&qword_27DF0FD98, &qword_27DF0FDA0, qword_2387744D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FD88);
  }

  return result;
}

uint64_t sub_2385C384C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875D1A0();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v9 - v7, a1, a2, v6);
  swift_storeEnumTagMultiPayload();
  return sub_23875D1B0();
}

uint64_t sub_2385C3944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23875D1A0();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3, v7);
  swift_storeEnumTagMultiPayload();
  return sub_23875D1B0();
}

uint64_t ThumbnailOptions.ColorScheme.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875C450();
  v16 = *(v4 - 8);
  v5 = (*(v16 + 88))(a1, v4);
  if (v5 == *MEMORY[0x277CDF3D0])
  {
    v6 = *MEMORY[0x277CC7120];
    v7 = sub_238758960();
    v8 = *(*(v7 - 8) + 104);
    v9 = v7;
    v10 = a2;
    v11 = v6;
LABEL_5:

    return v8(v10, v11, v9);
  }

  v12 = v5;
  v13 = *MEMORY[0x277CDF3C0];
  v9 = sub_238758960();
  v8 = *(*(v9 - 8) + 104);
  if (v12 == v13)
  {
    v11 = *MEMORY[0x277CC7118];
    v10 = a2;
    goto LABEL_5;
  }

  v8(a2, *MEMORY[0x277CC7128], v9);
  v15 = *(v16 + 8);

  return v15(a1, v4);
}

uint64_t OrderImageModel.init(size:imageNames:orderVersionIdentifier:contentMode:scale:colorScheme:layoutDirection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v14 = *a3;
  *a7 = a8;
  *(a7 + 8) = a9;
  *(a7 + 16) = a1;
  v15 = type metadata accessor for OrderImageModel();
  v16 = v15[6];
  v17 = sub_23875AF90();
  (*(*(v17 - 8) + 32))(a7 + v16, a2, v17);
  *(a7 + v15[7]) = v14;
  *(a7 + v15[8]) = a4;
  v18 = v15[9];
  v19 = sub_23875C450();
  (*(*(v19 - 8) + 32))(a7 + v18, a5, v19);
  v20 = v15[10];
  v21 = sub_23875C8A0();
  v22 = *(*(v21 - 8) + 32);

  return v22(a7 + v20, a6, v21);
}

uint64_t type metadata accessor for OrderImageModel()
{
  result = qword_27DF0FE58;
  if (!qword_27DF0FE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ThumbnailOptions.LayoutDirection.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875C8A0();
  v15 = *(v4 - 8);
  v5 = (*(v15 + 88))(a1, v4);
  if (v5 == *MEMORY[0x277CDFA88])
  {
    v6 = *MEMORY[0x277CC7148];
    v7 = sub_2387589C0();
    v8 = *(*(v7 - 8) + 104);

    return v8(a2, v6, v7);
  }

  else
  {
    v10 = v5;
    v11 = *MEMORY[0x277CDFA90];
    v12 = *MEMORY[0x277CC7150];
    v13 = sub_2387589C0();
    result = (*(*(v13 - 8) + 104))(a2, v12, v13);
    if (v10 != v11)
    {
      v14 = *(v15 + 8);

      return v14(a1, v4);
    }
  }

  return result;
}

uint64_t sub_2385C3F68(uint64_t a1)
{
  v2 = sub_23875C8A0();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_23875CB10();
}

uint64_t sub_2385C4070(uint64_t a1)
{
  sub_23845C998(a1, v3);
  sub_23845C998(v3, &v2);
  sub_238585BE0();
  sub_23875CDD0();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_2385C40D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23875CDB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_23843981C(v2 + *(a1 + 52), &v18 - v12, &qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23875C450();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_23875EFF0();
    v17 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_2385C42D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23875CDB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_23843981C(v2 + *(a1 + 56), &v18 - v12, &qword_27DF0BEF8, &qword_23876DAC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23875C8A0();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_23875EFF0();
    v17 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t OrderImage.init(imageNames:orderVersionIdentifier:contentMode:fallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v11 = *a3;
  v12 = type metadata accessor for OrderImage();
  v13 = v12[10];
  *&a6[v13] = sub_2387588A0();
  v14 = v12[13];
  *&a6[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v15 = v12[14];
  *&a6[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  swift_storeEnumTagMultiPayload();
  *a6 = a1;
  v16 = v12[9];
  v17 = sub_23875AF90();
  result = (*(*(v17 - 8) + 32))(&a6[v16], a2, v17);
  a6[v12[11]] = v11;
  v19 = &a6[v12[12]];
  *v19 = a4;
  *(v19 + 1) = a5;
  return result;
}

uint64_t OrderImage.body.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = *(a1 + 24);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 24) = v7;
  (*(v2 + 32))(v6 + v5, &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for OrderImageInternalContainer();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v8 = sub_23875C610();
  v9 = type metadata accessor for OrderImageModel();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_2385CAFDC(&qword_27DF0ECC0, type metadata accessor for OrderImageModel);
  v18 = v8;
  v19 = v9;
  v20 = WitnessTable;
  v21 = v11;
  sub_23875E270();
  swift_getWitnessTable();
  v16 = sub_23875C720();
  v17 = v12;
  v13 = sub_23875C730();
  v14 = swift_getWitnessTable();
  sub_23844EA0C(&v16, v13, v14);

  v16 = v18;
  v17 = v19;
  sub_23844EA0C(&v16, v13, v14);
}

uint64_t sub_2385C48DC@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v65 = a3;
  v5 = type metadata accessor for OrderImageInternalContainer();
  v63 = *(v5 - 8);
  v6 = *(v63 + 64);
  MEMORY[0x28223BE20](v5);
  v62 = v51 - v7;
  WitnessTable = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  v64 = v5;
  v58 = v9;
  v59 = WitnessTable;
  v10 = sub_23875C610();
  v60 = *(v10 - 8);
  v11 = *(v60 + 64);
  MEMORY[0x28223BE20](v10);
  v57 = v51 - v12;
  v13 = type metadata accessor for OrderImageModel();
  v14 = swift_getWitnessTable();
  v15 = sub_2385CAFDC(&qword_27DF0ECC0, type metadata accessor for OrderImageModel);
  v61 = v10;
  v66 = v10;
  v67 = v13;
  v54 = v14;
  v68 = v14;
  v69 = v15;
  v51[2] = v15;
  v16 = sub_23875E270();
  v55 = *(v16 - 8);
  v56 = v16;
  v17 = *(v55 + 64);
  MEMORY[0x28223BE20](v16);
  v52 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v53 = v51 - v20;
  v21 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v22);
  v24 = v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = v51 - v26;
  sub_23875ED50();
  v51[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875C630();
  v29 = v28;
  v31 = v30;
  v32 = *a1;
  v33 = type metadata accessor for OrderImage();
  v51[0] = a2;
  v34 = v33;
  v35 = *(v33 + 36);
  v36 = a1;
  v37 = v13[6];
  v38 = sub_23875AF90();
  (*(*(v38 - 8) + 16))(&v27[v37], &v36[v35], v38);
  LOBYTE(v37) = v36[v34[11]];
  v39 = *&v36[v34[10]];
  v40 = v13[9];

  sub_2385C40D0(v34, &v27[v40]);
  sub_2385C42D4(v34, &v27[v13[10]]);
  *v27 = v29;
  *(v27 + 1) = v31;
  *(v27 + 2) = v32;
  v27[v13[7]] = v37;
  *&v27[v13[8]] = v39;
  sub_23858BA48(v27, v24);
  v41 = v62;
  sub_2385C4F20(v24, *&v36[v34[12]], *&v36[v34[12] + 8], v62);

  v42 = v57;
  v43 = v64;
  sub_23875DF70();
  (*(v63 + 8))(v41, v43);
  v44 = v52;
  v45 = v61;
  sub_23875DE60();
  (*(v60 + 8))(v42, v45);
  sub_2385CA710(v27);
  v46 = v56;
  v47 = swift_getWitnessTable();
  v48 = v53;
  sub_23844EA0C(v44, v46, v47);
  v49 = *(v55 + 8);
  v49(v44, v46);
  sub_23844EA0C(v48, v46, v47);
  v49(v48, v46);
}

uint64_t sub_2385C4E6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for OrderImage() - 8);
  v6 = (v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));

  return sub_2385C48DC(v6, v3, a1);
}

uint64_t sub_2385C4F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2385CAAA0(a1, a4);
  v7 = type metadata accessor for OrderImageInternalContainer();
  v8 = (a4 + *(v7 + 36));
  *v8 = a2;
  v8[1] = a3;
  v9 = a4 + *(v7 + 40);
  result = swift_getKeyPath();
  *v9 = result;
  *(v9 + 40) = 0;
  return result;
}

uint64_t OrderImageModel.ContentMode.hashValue.getter()
{
  v1 = *v0;
  sub_23875F700();
  MEMORY[0x23EE641F0](v1);
  return sub_23875F760();
}

uint64_t OrderImageModel.Resource.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_23875F590();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2385C50A0()
{
  sub_23875F700();
  sub_23875EB30();
  return sub_23875F760();
}

uint64_t sub_2385C510C()
{
  sub_23875F700();
  sub_23875EB30();
  return sub_23875F760();
}

uint64_t sub_2385C515C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23875F590();

  *a2 = v5 != 0;
  return result;
}

uint64_t OrderImageModel.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  if (*v0 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x23EE64220](*&v2);
  v3 = *(v0 + 8);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x23EE64220](*&v3);
  v4 = *(v0 + 16);
  MEMORY[0x23EE641F0](*(v4 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      sub_23875EB30();

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  v9 = type metadata accessor for OrderImageModel();
  v10 = v9[6];
  sub_23875AF90();
  sub_2385CAFDC(&qword_27DF0FDA8, MEMORY[0x277CC84E8]);
  sub_23875E960();
  MEMORY[0x23EE641F0](*(v1 + v9[7]));
  MEMORY[0x23EE641F0](*(v1 + v9[8]));
  v11 = v9[9];
  sub_23875C450();
  sub_2385CAFDC(&qword_27DF0FDB0, MEMORY[0x277CDF3E0]);
  sub_23875E960();
  v12 = v9[10];
  sub_23875C8A0();
  sub_2385CAFDC(&qword_27DF0FDB8, MEMORY[0x277CDFAA0]);
  return sub_23875E960();
}

uint64_t OrderImageModel.hashValue.getter()
{
  sub_23875F700();
  OrderImageModel.hash(into:)();
  return sub_23875F760();
}

uint64_t sub_2385C53F4()
{
  sub_23875F700();
  OrderImageModel.hash(into:)();
  return sub_23875F760();
}

uint64_t sub_2385C5438()
{
  sub_23875F700();
  OrderImageModel.hash(into:)();
  return sub_23875F760();
}

uint64_t ThumbnailOptions.ContentMode.init(contentMode:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_238758970();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277CC7140];
  if (!v3)
  {
    v6 = MEMORY[0x277CC7138];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t sub_2385C54FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  v5 = type metadata accessor for OrderImageModel();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = type metadata accessor for OrderImageInternal();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v27[-1] - v17;
  sub_23858BA48(v2, v8);
  v19 = v2 + *(a1 + 40);
  sub_2384D5228(v27);
  v20 = (v3 + *(a1 + 36));
  v21 = *v20;
  v22 = v20[1];

  sub_2385C56F8(v8, v27, v21, v22, v15);
  WitnessTable = swift_getWitnessTable();
  sub_23844EA0C(v15, v11, WitnessTable);
  v24 = *(v12 + 8);
  v24(v15, v11);
  sub_23844EA0C(v18, v11, WitnessTable);
  return (v24)(v18, v11);
}

uint64_t sub_2385C56F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for OrderImageModel();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v35[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OrderImageInternal();
  v15 = a5 + v14[13];
  *v15 = swift_getKeyPath();
  *(v15 + 40) = 0;
  v16 = a5 + v14[14];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  sub_23858BA48(a1, a5);
  sub_23845C998(a2, a5 + v14[9]);
  v17 = (a5 + v14[10]);
  *v17 = a3;
  v17[1] = a4;
  v34 = a1;
  sub_23858BA48(a1, v13);
  sub_23845C998(a2, v35);
  v18 = v36;
  v19 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v20 = *(v19 + 24);

  v21 = v20(v13, v18, v19);
  if (v21)
  {
    v22 = v21;
    v23 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v21 scale:0 orientation:1.0];
  }

  else
  {
    v23 = 0;
  }

  sub_2385CA710(v13);
  __swift_destroy_boxed_opaque_existential_1(v35);
  v24 = (a5 + v14[11]);
  *v24 = v23;
  v24[1] = 0;
  sub_23845C998(a2, v35);
  v25 = v36;
  v26 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v27 = *(v26 + 32);
  v28 = sub_2385CA76C(v23);
  v29 = v27(v28, v25, v26);
  if (v29)
  {
    v30 = v29;
    v31 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v29 scale:0 orientation:1.0];

    sub_2385CA77C(v23);
  }

  else
  {

    sub_2385CA77C(v23);
    v31 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(a2);
  sub_2385CA710(v34);
  result = __swift_destroy_boxed_opaque_existential_1(v35);
  v33 = (a5 + v14[12]);
  *v33 = v31;
  v33[1] = 0;
  return result;
}

uint64_t _s12FinanceKitUI15OrderImageModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if ((sub_238518C1C(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for OrderImageModel();
  if ((MEMORY[0x23EE5FA60](a1 + v5[6], a2 + v5[6]) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v5[7]) != *(a2 + v5[7]))
  {
    return 0;
  }

  if (*(a1 + v5[8]) != *(a2 + v5[8]))
  {
    return 0;
  }

  v6 = v5[9];
  if ((sub_23875C440() & 1) == 0)
  {
    return 0;
  }

  v7 = v5[10];

  return sub_23875C890();
}

uint64_t sub_2385C5A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return _s12FinanceKitUI15OrderImageModelV2eeoiySbAC_ACtFZ_0(a1, a2);
}

uint64_t sub_2385C5A70(void *a1, unint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return v2 == 0;
  }

  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (v2 < 2)
  {
    return 0;
  }

  sub_238449184(0, &qword_27DF10008, 0x277D82BB8);
  return sub_23875F1B0() & 1;
}

uint64_t sub_2385C5AF4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FFC8, &qword_238774A38);
  v3 = *(a1 + 16);
  sub_23875D1C0();
  sub_23875D1C0();
  sub_23875D6E0();
  sub_23875C8C0();
  sub_23875C6E0();
  sub_23875C8C0();
  sub_23875C8C0();
  v4 = sub_2385CADE4();
  v5 = *(a1 + 24);
  v29 = v4;
  v30 = v5;
  WitnessTable = swift_getWitnessTable();
  v28 = MEMORY[0x277CE0F70];
  v25 = swift_getWitnessTable();
  v26 = sub_2385CAFDC(&qword_27DF09330, MEMORY[0x277CDE470]);
  v23 = swift_getWitnessTable();
  v24 = sub_2385CAFDC(&qword_27DF08DC8, MEMORY[0x277CDD8B0]);
  v21 = swift_getWitnessTable();
  v22 = v24;
  swift_getWitnessTable();
  v6 = sub_23875E2C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v17[-v12];
  v18 = v3;
  v19 = v5;
  v20 = v1;
  sub_23875D020();
  sub_23875E2B0();
  v14 = swift_getWitnessTable();
  sub_23844EA0C(v10, v6, v14);
  v15 = *(v7 + 8);
  v15(v10, v6);
  sub_23844EA0C(v13, v6, v14);
  return (v15)(v13, v6);
}

uint64_t sub_2385C5E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a4;
  v78 = sub_23875ED80();
  v74 = *(v78 - 8);
  v7 = *(v74 + 64);
  MEMORY[0x28223BE20](v78);
  v73 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OrderImageInternal();
  v72 = *(v9 - 8);
  v77 = *(v72 + 64);
  MEMORY[0x28223BE20](v9);
  v71 = &v54 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FFC8, &qword_238774A38);
  v60 = sub_23875D1C0();
  v11 = sub_23875D1C0();
  v61 = *(v11 - 8);
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - v13;
  sub_23875D6E0();
  v15 = sub_23875C8C0();
  v63 = *(v15 - 8);
  v16 = *(v63 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v54 - v17;
  sub_23875C6E0();
  v62 = v15;
  v19 = sub_23875C8C0();
  v67 = *(v19 - 8);
  v20 = *(v67 + 64);
  MEMORY[0x28223BE20](v19);
  v76 = &v54 - v21;
  v68 = v22;
  v23 = sub_23875C8C0();
  v69 = *(v23 - 8);
  v70 = v23;
  v24 = *(v69 + 64);
  MEMORY[0x28223BE20](v23);
  v65 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v66 = &v54 - v27;
  sub_23875ED50();
  v64 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385C6694(v9, v14);
  v87 = sub_2385CADE4();
  v88 = a3;
  WitnessTable = swift_getWitnessTable();
  v86 = MEMORY[0x277CE0F70];
  v28 = v9;
  v29 = swift_getWitnessTable();
  v58 = v18;
  sub_23875DBF0();
  (*(v61 + 8))(v14, v11);
  v30 = a3;
  v59 = a3;
  v31 = v72;
  v61 = *(v72 + 16);
  v32 = v71;
  v33 = v28;
  v55 = v28;
  (v61)(v71, a1, v28);
  v34 = *(v31 + 80);
  v57 = a1;
  v35 = (v34 + 32) & ~v34;
  v36 = swift_allocObject();
  *(v36 + 16) = a2;
  *(v36 + 24) = v30;
  v60 = a2;
  v72 = *(v31 + 32);
  (v72)(v36 + v35, v32, v33);
  v37 = sub_2385CAFDC(&qword_27DF09330, MEMORY[0x277CDE470]);
  v83 = v29;
  v84 = v37;
  v56 = MEMORY[0x277CDFAD8];
  v38 = v62;
  v54 = swift_getWitnessTable();
  v39 = v73;
  sub_23875ED60();
  v40 = v58;
  sub_23875DE90();

  v74 = *(v74 + 8);
  (v74)(v39, v78);
  (*(v63 + 8))(v40, v38);
  v41 = v55;
  (v61)(v32, v57, v55);
  v42 = swift_allocObject();
  v43 = v59;
  *(v42 + 16) = v60;
  *(v42 + 24) = v43;
  (v72)(v42 + v35, v32, v41);
  v44 = sub_2385CAFDC(&qword_27DF08DC8, MEMORY[0x277CDD8B0]);
  v81 = v54;
  v82 = v44;
  v45 = v68;
  v46 = swift_getWitnessTable();
  sub_23875ED60();
  v47 = v65;
  v48 = v76;
  sub_23875DE90();

  (v74)(v39, v78);
  (*(v67 + 8))(v48, v45);
  v79 = v46;
  v80 = v44;
  v49 = v70;
  v50 = swift_getWitnessTable();
  v51 = v66;
  sub_23844EA0C(v47, v49, v50);
  v52 = *(v69 + 8);
  v52(v47, v49);
  sub_23844EA0C(v51, v49, v50);
  v52(v51, v49);
}

uint64_t sub_2385C6694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v70 = a2;
  v5 = *(a1 + 16);
  v61 = *(v5 - 8);
  v6 = v61[8];
  MEMORY[0x28223BE20](a1);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v59 - v10;
  v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FFC8, &qword_238774A38);
  v65 = v5;
  v12 = sub_23875D1C0();
  v64 = *(v12 - 8);
  v13 = *(v64 + 64);
  MEMORY[0x28223BE20](v12);
  v63 = &v59 - v14;
  v15 = sub_23875E0E0();
  v60 = *(v15 - 8);
  v16 = *(v60 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23875CDB0();
  v59 = *(v19 - 8);
  v20 = *(v59 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v12;
  v68 = sub_23875D1C0();
  v67 = *(v68 - 8);
  v23 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v66 = &v59 - v24;
  v25 = a1;
  v75 = *(v3 + *(a1 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10000, &qword_238774A78);
  v26 = sub_23875E1B0();
  if (!*v73)
  {
    *&v75 = sub_23875E020();
    v36 = sub_2385CADE4();
    v29 = *(a1 + 24);
    v86 = v36;
    v87 = v29;
    v37 = v69;
    swift_getWitnessTable();
    v35 = v66;
    sub_2385C3944(&v75, v37, MEMORY[0x277CE0F78]);

    goto LABEL_15;
  }

  if (*v73 != 1)
  {
    v38 = v3 + *(a1 + 56);
    v39 = *v38;
    v40 = *(v38 + 8) == 1;
    v61 = *v73;
    if (v40)
    {
      if (v39)
      {
        goto LABEL_10;
      }
    }

    else
    {

      sub_23875EFF0();
      v49 = sub_23875D730();
      sub_23875C110();

      sub_23875CDA0();
      swift_getAtKeyPath();
      sub_2384348B8(v39, 0);
      (*(v59 + 8))(v22, v19);
      if (v75 == 1)
      {
LABEL_10:
        v75 = *(v3 + *(a1 + 48));
        sub_23875E1B0();
        v50 = *v73;
        if (*v73 >= 2uLL)
        {
          *v73 = v61;
          *&v73[8] = v50;
          *&v73[16] = 0;
          LOWORD(v74) = 257;
          BYTE2(v74) = 0;
          v52 = v61;
        }

        else
        {
          v51 = sub_23875E020();
          *&v73[16] = 0;
          *v73 = v51;
          LOWORD(v74) = 0;
          BYTE2(v74) = 1;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FFF0, &unk_238774A48);
        sub_2385CAEFC();
        sub_23875D1B0();
        v48 = v69;
        *v73 = v75;
        *&v73[16] = v76;
        LOWORD(v74) = v77;
        HIWORD(v74) = v78 != 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FFE0, &qword_238774A40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A160, &unk_23876F200);
        sub_2385CAE70();
        sub_238464BD4();
        sub_23875D1B0();
        v44 = v75;
        v45 = v76;
        v46 = v77 | (v78 << 16);
        v47 = v79;
        goto LABEL_14;
      }
    }

    v41 = v61;
    sub_23875E0C0();
    v42 = v60;
    (*(v60 + 104))(v18, *MEMORY[0x277CE0FE0], v15);
    v43 = sub_23875E150();

    (*(v42 + 8))(v18, v15);
    *v73 = v43;
    *&v73[8] = xmmword_238774510;
    v74 = 0x1000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FFE0, &qword_238774A40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A160, &unk_23876F200);
    sub_2385CAE70();
    sub_238464BD4();
    sub_23875D1B0();
    v44 = v75;
    v45 = v76;
    v46 = v77 | (v78 << 16);
    v47 = v79;
    v48 = v69;
LABEL_14:
    v75 = v44;
    v76 = v45;
    v77 = v46;
    v78 = BYTE2(v46);
    v79 = v47;
    v53 = v44;
    sub_2385CB834(v44, *(&v44 + 1), v45, v46, v47);
    v54 = sub_2385CADE4();
    v29 = *(v25 + 24);
    v55 = v63;
    sub_2385C384C(&v75, v62);
    v71 = v54;
    v72 = v29;
    swift_getWitnessTable();
    v35 = v66;
    sub_2385C384C(v55, v48);
    sub_2385CB890(v53, *(&v53 + 1), v45, v46, v47);
    sub_2385CB890(v53, *(&v53 + 1), v45, v46, v47);
    sub_2385CA77C(v61);
    (*(v64 + 8))(v55, v48);
    goto LABEL_15;
  }

  v27 = v3 + *(a1 + 40);
  v28 = *(v27 + 8);
  (*v27)(v26);
  v29 = *(a1 + 24);
  v30 = v65;
  sub_23844EA0C(v8, v65, v29);
  v31 = v61[1];
  v31(v8, v30);
  sub_23844EA0C(v11, v30, v29);
  v32 = sub_2385CADE4();
  v33 = v63;
  sub_2385C3944(v8, v62, v30);
  v80 = v32;
  v81 = v29;
  v34 = v69;
  swift_getWitnessTable();
  v35 = v66;
  sub_2385C384C(v33, v34);
  (*(v64 + 8))(v33, v34);
  v31(v8, v30);
  v31(v11, v30);
LABEL_15:
  v56 = v68;
  v84 = sub_2385CADE4();
  v85 = v29;
  WitnessTable = swift_getWitnessTable();
  v83 = MEMORY[0x277CE0F70];
  v57 = swift_getWitnessTable();
  sub_23844EA0C(v35, v56, v57);
  return (*(v67 + 8))(v35, v56);
}

uint64_t sub_2385C7068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  sub_23875ED50();
  v3[14] = sub_23875ED40();
  v5 = sub_23875ECE0();
  v3[15] = v5;
  v3[16] = v4;

  return MEMORY[0x2822009F8](sub_2385C7104, v5, v4);
}

uint64_t sub_2385C7104()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = type metadata accessor for OrderImageInternal();
  v5 = (v3 + *(v4 + 44));
  v6 = *v5;
  v0[17] = *v5;
  v7 = v5[1];
  v0[2] = v6;
  v0[18] = v7;
  v0[3] = v7;
  v0[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10000, &qword_238774A78);
  sub_23875E1B0();
  v8 = v0[8];
  if (v8)
  {
    v9 = v0[14];

    if (v8 != 1)
    {
      sub_2385CA77C(v8);
    }

    v13 = v0[1];

    return v13();
  }

  else
  {
    v10 = swift_task_alloc();
    v0[20] = v10;
    *v10 = v0;
    v10[1] = sub_2385C724C;
    v11 = v0[11];

    return sub_2385C7374(v4);
  }
}

uint64_t sub_2385C724C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = a1;

  v4 = *(v2 + 128);
  v5 = *(v2 + 120);

  return MEMORY[0x2822009F8](sub_2385CBA00, v5, v4);
}

uint64_t sub_2385C7374(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(a1 - 8);
  v2[10] = v3;
  v2[11] = *(v3 + 64);
  v2[12] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v5 = sub_23875C8A0();
  v2[14] = v5;
  v6 = *(v5 - 8);
  v2[15] = v6;
  v7 = *(v6 + 64) + 15;
  v2[16] = swift_task_alloc();
  v8 = sub_2387589C0();
  v2[17] = v8;
  v9 = *(v8 - 8);
  v2[18] = v9;
  v2[19] = *(v9 + 64);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v10 = sub_23875C450();
  v2[23] = v10;
  v11 = *(v10 - 8);
  v2[24] = v11;
  v12 = *(v11 + 64) + 15;
  v2[25] = swift_task_alloc();
  v13 = sub_238758960();
  v2[26] = v13;
  v14 = *(v13 - 8);
  v2[27] = v14;
  v2[28] = *(v14 + 64);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v15 = sub_238758970();
  v2[32] = v15;
  v16 = *(v15 - 8);
  v2[33] = v16;
  v2[34] = *(v16 + 64);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  sub_23875ED50();
  v2[38] = sub_23875ED40();
  v18 = sub_23875ECE0();
  v2[39] = v18;
  v2[40] = v17;

  return MEMORY[0x2822009F8](sub_2385C76C4, v18, v17);
}

uint64_t sub_2385C76C4()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v8 = *(v0 + 72);
  v77 = v8[2];
  v9 = *v8;
  v10 = v8[1];
  v11 = type metadata accessor for OrderImageModel();
  if (*(v8 + v11[7]))
  {
    v12 = MEMORY[0x277CC7140];
  }

  else
  {
    v12 = MEMORY[0x277CC7138];
  }

  (*(v4 + 104))(v2, *v12, v3);
  v71 = *(v4 + 32);
  v71(v1, v2, v3);
  (*(v5 + 16))(v6, v8 + v11[9], v7);
  v13 = (*(v5 + 88))(v6, v7);
  if (v13 == *MEMORY[0x277CDF3D0])
  {
    (*(*(v0 + 216) + 104))(*(v0 + 240), *MEMORY[0x277CC7120], *(v0 + 208));
  }

  else
  {
    v14 = *(v0 + 208);
    v15 = *(*(v0 + 216) + 104);
    v16 = *(v0 + 240);
    if (v13 == *MEMORY[0x277CDF3C0])
    {
      v15(*(v0 + 240), *MEMORY[0x277CC7118], v14);
    }

    else
    {
      v17 = *(v0 + 192);
      v18 = *(v0 + 200);
      v19 = *(v0 + 184);
      v15(*(v0 + 240), *MEMORY[0x277CC7128], v14);
      v20 = *(v17 + 8);

      v20(v18, v19);
    }
  }

  v21 = *(v0 + 120);
  v22 = *(v0 + 128);
  v23 = *(v0 + 112);
  v24 = *(v0 + 72);
  v70 = *(*(v0 + 216) + 32);
  v70(*(v0 + 248), *(v0 + 240), *(v0 + 208));
  (*(v21 + 16))(v22, v24 + v11[10], v23);
  v25 = (*(v21 + 88))(v22, v23);
  v26 = *(v0 + 168);
  v27 = *(v0 + 136);
  v28 = *(v0 + 144);
  v66 = v11;
  if (v25 == *MEMORY[0x277CDFA88])
  {
    (*(v28 + 104))(v26, *MEMORY[0x277CC7148], v27);
  }

  else
  {
    v29 = *MEMORY[0x277CDFA90];
    (*(v28 + 104))(v26, *MEMORY[0x277CC7150], v27);
    if (v25 != v29)
    {
      (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    }
  }

  v59 = *(v0 + 296);
  v76 = *(v0 + 280);
  v65 = *(v0 + 272);
  v30 = *(v0 + 264);
  v75 = *(v0 + 256);
  v57 = *(v0 + 248);
  v73 = *(v0 + 232);
  v31 = *(v0 + 208);
  v32 = *(v0 + 216);
  v62 = v31;
  v63 = *(v0 + 224);
  v33 = *(v0 + 168);
  v56 = *(v0 + 176);
  v74 = *(v0 + 160);
  v64 = *(v0 + 152);
  v35 = *(v0 + 136);
  v34 = *(v0 + 144);
  v37 = *(v0 + 96);
  v36 = *(v0 + 104);
  v61 = v35;
  v60 = *(v0 + 88);
  v72 = *(v0 + 80);
  v38 = *(v0 + 64);
  v39 = *(v0 + 72);
  v69 = *(v34 + 32);
  v69();
  v40 = *(v39 + v66[8]);
  v67 = *(v38 + 36);
  v68 = v36;
  v58 = v38;
  sub_23875ED60();
  v41 = sub_23875ED80();
  (*(*(v41 - 8) + 56))(v36, 0, 1, v41);
  (*(v72 + 16))(v37, v39, v38);
  (*(v32 + 16))(v73, v57, v31);
  (*(v30 + 16))(v76, v59, v75);
  (*(v34 + 16))(v74, v56, v35);
  sub_23845C998(v39 + v67, v0 + 16);
  v42 = (*(v72 + 80) + 48) & ~*(v72 + 80);
  v43 = (v60 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF8;
  v46 = (*(v32 + 80) + v45 + 8) & ~*(v32 + 80);
  v47 = (v63 + *(v30 + 80) + v46) & ~*(v30 + 80);
  v48 = (v65 + *(v34 + 80) + v47) & ~*(v34 + 80);
  v49 = swift_allocObject();
  *(v49 + 2) = 0;
  *(v49 + 3) = 0;
  *(v49 + 4) = *(v58 + 16);
  *(v49 + 5) = *(v58 + 24);
  (*(v72 + 32))(&v49[v42], v37);
  *&v49[v43] = v77;
  v50 = &v49[v44];
  *v50 = v9;
  *(v50 + 1) = v10;
  *&v49[v45] = v40;
  v70(&v49[v46], v73, v62);
  v71(&v49[v47], v76, v75);
  (v69)(&v49[v48], v74, v61);
  sub_2384D5830((v0 + 16), &v49[(v64 + v48 + 7) & 0xFFFFFFFFFFFFFFF8]);
  v51 = sub_2385C9244(0, 0, v68, &unk_238774AA0, v49);
  *(v0 + 328) = v51;
  sub_238439884(v68, &unk_27DF09920, &qword_238764D80);
  v52 = *(MEMORY[0x277D857E0] + 4);
  v53 = swift_task_alloc();
  *(v0 + 336) = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  *v53 = v0;
  v53[1] = sub_2385C7D28;

  return MEMORY[0x282200460](v0 + 56, v51, v54);
}

uint64_t sub_2385C7D28()
{
  v1 = *v0;
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 328);
  v7 = *v0;

  v4 = *(v1 + 320);
  v5 = *(v1 + 312);

  return MEMORY[0x2822009F8](sub_2385C7E6C, v5, v4);
}

uint64_t sub_2385C7E6C()
{
  v2 = v0[37];
  v1 = v0[38];
  v14 = v0[36];
  v15 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[31];
  v16 = v0[30];
  v17 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[22];
  v18 = v0[25];
  v19 = v0[21];
  v10 = v0[17];
  v9 = v0[18];
  v20 = v0[20];
  v21 = v0[16];
  v22 = v0[13];
  v23 = v0[12];

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v11 = v0[7];

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_2385C7FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  sub_23875ED50();
  v3[14] = sub_23875ED40();
  v5 = sub_23875ECE0();
  v3[15] = v5;
  v3[16] = v4;

  return MEMORY[0x2822009F8](sub_2385C8080, v5, v4);
}

uint64_t sub_2385C8080()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = type metadata accessor for OrderImageInternal();
  v5 = (v3 + *(v4 + 48));
  v6 = *v5;
  v0[17] = *v5;
  v7 = v5[1];
  v0[2] = v6;
  v0[18] = v7;
  v0[3] = v7;
  v0[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10000, &qword_238774A78);
  sub_23875E1B0();
  v8 = v0[8];
  if (v8)
  {
    v9 = v0[14];

    if (v8 != 1)
    {
      sub_2385CA77C(v8);
    }

    v13 = v0[1];

    return v13();
  }

  else
  {
    v10 = swift_task_alloc();
    v0[20] = v10;
    *v10 = v0;
    v10[1] = sub_2385C81C8;
    v11 = v0[11];

    return sub_2385C8398(v4);
  }
}

uint64_t sub_2385C81C8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = a1;

  v4 = *(v2 + 128);
  v5 = *(v2 + 120);

  return MEMORY[0x2822009F8](sub_2385C82F0, v5, v4);
}

uint64_t sub_2385C82F0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 112);

  if (v1)
  {
    *(v0 + 80) = *(v0 + 168);
    *(v0 + 48) = *(v0 + 136);
  }

  else
  {
    *(v0 + 32) = *(v0 + 136);
    *(v0 + 72) = 1;
  }

  v3 = *(v0 + 152);
  sub_23875E1C0();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2385C8398(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_23875CDB0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  sub_23875ED50();
  v2[7] = sub_23875ED40();
  v7 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_2385C848C, v7, v6);
}

uint64_t sub_2385C848C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  v4 = v3 + *(v2 + 56);
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = *(v0 + 32);

    sub_23875EFF0();
    v9 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v5, 0);
    (*(v7 + 8))(v6, v8);
    if (*(v0 + 64) != 1)
    {
      goto LABEL_11;
    }
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v10 = qword_2814F1B90;
  v11 = sub_23875EA50();
  v12 = [objc_opt_self() imageNamed:v11 inBundle:v10];

  if (v12)
  {
    v13 = [v12 CGImage];
    if (v13)
    {
      v14 = v13;
      v15 = (*(v0 + 24) + *(*(v0 + 16) + 36));
      v16 = v15[4];
      __swift_project_boxed_opaque_existential_1(v15, v15[3]);
      (*(v16 + 16))(v14);
      v17 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v14 scale:0 orientation:1.0];

      goto LABEL_12;
    }
  }

LABEL_11:
  v17 = 0;
LABEL_12:
  v18 = *(v0 + 48);

  v19 = *(v0 + 8);

  return v19(v17);
}

uint64_t sub_2385C86F0(uint64_t a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 144) = v31;
  *(v11 + 128) = v30;
  *(v11 + 112) = a10;
  *(v11 + 120) = a11;
  *(v11 + 104) = a9;
  *(v11 + 88) = a3;
  *(v11 + 96) = a4;
  *(v11 + 80) = a2;
  *(v11 + 64) = a7;
  *(v11 + 72) = a8;
  *(v11 + 56) = a1;
  v12 = sub_23875C1E0();
  *(v11 + 152) = v12;
  v13 = *(v12 - 8);
  *(v11 + 160) = v13;
  v14 = *(v13 + 64) + 15;
  *(v11 + 168) = swift_task_alloc();
  *(v11 + 176) = swift_task_alloc();
  v15 = sub_2387589C0();
  *(v11 + 184) = v15;
  v16 = *(v15 - 8);
  *(v11 + 192) = v16;
  v17 = *(v16 + 64) + 15;
  *(v11 + 200) = swift_task_alloc();
  v18 = sub_238758970();
  *(v11 + 208) = v18;
  v19 = *(v18 - 8);
  *(v11 + 216) = v19;
  v20 = *(v19 + 64) + 15;
  *(v11 + 224) = swift_task_alloc();
  v21 = sub_238758960();
  *(v11 + 232) = v21;
  v22 = *(v21 - 8);
  *(v11 + 240) = v22;
  v23 = *(v22 + 64) + 15;
  *(v11 + 248) = swift_task_alloc();
  v24 = *(*(sub_2387589A0() - 8) + 64) + 15;
  *(v11 + 256) = swift_task_alloc();
  v25 = sub_2387589D0();
  *(v11 + 264) = v25;
  v26 = *(v25 - 8);
  *(v11 + 272) = v26;
  v27 = *(v26 + 64) + 15;
  *(v11 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2385C8980, 0, 0);
}

uint64_t sub_2385C8980()
{
  sub_23875ED50();
  *(v0 + 288) = sub_23875ED40();
  v2 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_2385C8A14, v2, v1);
}

uint64_t sub_2385C8A14()
{
  v1 = v0[36];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[8];

  v5 = v4 + *(type metadata accessor for OrderImageInternal() + 52);
  sub_2384D55B0((v0 + 2));

  return MEMORY[0x2822009F8](sub_2385C8AAC, 0, 0);
}

uint64_t sub_2385C8AAC()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 8);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[37] = v5;
  *v5 = v0;
  v5[1] = sub_2385C8BD8;
  v6 = v0[9];

  return v8(v6, v1, v2);
}

uint64_t sub_2385C8BD8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 296);
  v7 = *v2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v1;

  if (v1)
  {
    v5 = sub_2385C906C;
  }

  else
  {
    v5 = sub_2385C8CEC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2385C8CEC()
{
  v1 = *(v0 + 304);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v1)
  {
    v44 = *(v0 + 280);
    v45 = *(v0 + 312);
    v2 = *(v0 + 248);
    v4 = *(v0 + 232);
    v3 = *(v0 + 240);
    v6 = *(v0 + 216);
    v5 = *(v0 + 224);
    v7 = *(v0 + 200);
    v39 = *(v0 + 208);
    v8 = *(v0 + 192);
    v42 = *(v0 + 184);
    v43 = *(v0 + 304);
    v9 = *(v0 + 112);
    v40 = *(v0 + 120);
    v41 = *(v0 + 256);
    v10 = *(v0 + 104);
    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v13 = *(v0 + 80);
    sub_238758990();
    (*(v3 + 16))(v2, v10, v4);
    (*(v6 + 16))(v5, v9, v39);
    (*(v8 + 16))(v7, v40, v42);
    sub_2387589B0();
    v14 = sub_238758950();
    v16 = *(v0 + 272);
    v15 = *(v0 + 280);
    v17 = *(v0 + 264);
    if (v45)
    {
      v18 = *(v0 + 168);
      (*(v16 + 8))(v15, v17);

      sub_23875C180();
      v19 = v45;
      v20 = sub_23875C1B0();
      v21 = sub_23875EFE0();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = v45;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v25;
        *v23 = v25;
        _os_log_impl(&dword_2383F8000, v20, v21, "Error rendering image thumbnail: %@", v22, 0xCu);
        sub_238439884(v23, &qword_27DF09930, &unk_2387638C0);
        MEMORY[0x23EE64DF0](v23, -1, -1);
        MEMORY[0x23EE64DF0](v22, -1, -1);
      }

      else
      {
      }

      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
      v1 = 0;
    }

    else
    {
      v26 = *(v0 + 128);
      v27 = *(v0 + 64);
      (*(v16 + 8))(v15, v17);

      v28 = v26[3];
      v29 = v26[4];
      __swift_project_boxed_opaque_existential_1(v26, v28);
      (*(v29 + 8))(v14, v27, v28, v29);
      v1 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v14 scale:0 orientation:1.0];
    }
  }

  v30 = *(v0 + 280);
  v32 = *(v0 + 248);
  v31 = *(v0 + 256);
  v33 = *(v0 + 224);
  v34 = *(v0 + 200);
  v36 = *(v0 + 168);
  v35 = *(v0 + 176);
  **(v0 + 56) = v1;

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_2385C906C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_23875C180();
  v3 = v1;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 312);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2383F8000, v4, v5, "Error loading image thumbnail: %@", v8, 0xCu);
    sub_238439884(v9, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v9, -1, -1);
    MEMORY[0x23EE64DF0](v8, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));
  v12 = *(v0 + 280);
  v13 = *(v0 + 248);
  v14 = *(v0 + 256);
  v15 = *(v0 + 224);
  v16 = *(v0 + 200);
  v18 = *(v0 + 168);
  v17 = *(v0 + 176);
  **(v0 + 56) = 0;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2385C9244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23843981C(a3, v27 - v11, &unk_27DF09920, &qword_238764D80);
  v13 = sub_23875ED80();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_238439884(v12, &unk_27DF09920, &qword_238764D80);
  }

  else
  {
    sub_23875ED70();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23875ECE0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23875EB00() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id sub_2385C951C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_image;
  v7 = *(a1 + OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_image);
  *(a1 + OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_image) = a3;
  v8 = a3;

  [*(a1 + OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_baseImageView) setImage_];
  [*(a1 + OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_filteredImageView) setImage_];
  v9 = *(a1 + OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_vignette);
  *(a1 + OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_vignette) = a4;
  v10 = a4;

  v11 = *(a1 + OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_maskImageView);

  return [v11 setImage_];
}

id sub_2385C95E0(void *a1, void *a2)
{
  v5 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_image;
  *&v2[OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_image] = 0;
  v6 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_vignette;
  *&v2[OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_vignette] = 0;
  v7 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_baseImageView;
  *&v2[v7] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v8 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_filteredImageView;
  *&v2[v8] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v9 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_maskImageView;
  *&v2[v9] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v10 = *&v2[v5];
  *&v2[v5] = a1;
  v11 = a1;

  v12 = *&v2[v6];
  *&v2[v6] = a2;
  v13 = a2;

  v16.receiver = v2;
  v16.super_class = type metadata accessor for OrderImageFilterView.ImageView();
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2385C98C4();

  return v14;
}

id sub_2385C970C(void *a1)
{
  v3 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_image;
  *&v1[OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_image] = 0;
  v4 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_vignette;
  *&v1[OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_vignette] = 0;
  v5 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_baseImageView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v6 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_filteredImageView;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v7 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_maskImageView;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v8 = *&v1[v3];
  *&v1[v3] = 0;

  v9 = *&v1[v4];
  *&v1[v4] = 0;

  v14.receiver = v1;
  v14.super_class = type metadata accessor for OrderImageFilterView.ImageView();
  v10 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    sub_2385C98C4();
  }

  return v11;
}

id sub_2385C98C4()
{
  v1 = *&v0[OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_baseImageView];
  [v1 setContentMode_];
  v2 = OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_image;
  [v1 setImage_];
  [v1 setClipsToBounds_];
  v3 = *&v0[OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_filteredImageView];
  [v3 setContentMode_];
  [v3 setImage_];
  [v3 setClipsToBounds_];
  v4 = *&v0[OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_maskImageView];
  [v4 setContentMode_];
  [v4 setImage_];
  v5 = [v3 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2B8, &qword_238774910);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2387632F0;
  v7 = sub_2385CA7E0();
  *(v6 + 56) = sub_238449184(0, &qword_27DF0FF18, 0x277CD9EA0);
  *(v6 + 32) = v7;
  v8 = sub_23875EC60();

  [v5 setFilters_];

  [v3 setMaskView_];
  [v0 addSubview_];

  return [v0 addSubview_];
}

id sub_2385C9AAC()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for OrderImageFilterView.ImageView();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_baseImageView];
  [v0 frame];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_filteredImageView];
  [v0 frame];
  [v2 setFrame_];
  v3 = *&v0[OBJC_IVAR____TtCV12FinanceKitUIP33_76F7BA28342C53BC40CB4FB6230E258020OrderImageFilterView9ImageView_maskImageView];
  [v0 frame];
  return [v3 setFrame_];
}

id sub_2385C9CAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrderImageFilterView.ImageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2385C9D60()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = objc_allocWithZone(type metadata accessor for OrderImageFilterView.ImageView());
  v4 = v2;
  v5 = v1;
  return sub_2385C95E0(v1, v2);
}

uint64_t sub_2385C9DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2385CB9AC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_2385C9E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2385CB9AC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2385C9E84()
{
  sub_2385CB9AC();
  sub_23875D120();
  __break(1u);
}

uint64_t sub_2385C9EAC@<X0>(_BYTE *a1@<X8>)
{
  sub_2385CA78C();
  result = sub_23875CDC0();
  *a1 = v3;
  return result;
}

uint64_t sub_2385C9EFC(char *a1)
{
  v2 = *a1;
  sub_2385CA78C();
  return sub_23875CDD0();
}

uint64_t sub_2385C9F48(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_2385CA03C;

  return v6(v2 + 16);
}

uint64_t sub_2385CA03C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_2385CA1B4()
{
  result = qword_27DF0FDC0;
  if (!qword_27DF0FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FDC0);
  }

  return result;
}

unint64_t sub_2385CA20C()
{
  result = qword_27DF0FDC8;
  if (!qword_27DF0FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FDC8);
  }

  return result;
}

void sub_2385CA2A8()
{
  sub_2385CAD28(319, &qword_2814F08B0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23875AF90();
    if (v1 <= 0x3F)
    {
      sub_23846D0DC();
      if (v2 <= 0x3F)
      {
        sub_2385CA410(319, &qword_2814F09B0, MEMORY[0x277CDF3E0]);
        if (v3 <= 0x3F)
        {
          sub_2385CA410(319, &qword_27DF0B940, MEMORY[0x277CDFAA0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2385CA410(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_2385CA48C()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_2385CAD28(319, &qword_2814F08B0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_23875AF90();
      if (v2 <= 0x3F)
      {
        sub_23875C450();
        if (v3 <= 0x3F)
        {
          sub_23875C8A0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2385CA5D8()
{
  type metadata accessor for OrderImageModel();
  if (v0 <= 0x3F)
  {
    sub_23846D0DC();
    if (v1 <= 0x3F)
    {
      sub_2385CACD4(319, &qword_27DF0B948, &qword_27DF0B950, qword_2387747F0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2385CA710(uint64_t a1)
{
  v2 = type metadata accessor for OrderImageModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2385CA76C(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_2385CA77C(id a1)
{
  if (a1 >= 2)
  {
  }
}

unint64_t sub_2385CA78C()
{
  result = qword_27DF0FF10;
  if (!qword_27DF0FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FF10);
  }

  return result;
}

id sub_2385CA7E0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2B8, &qword_238774910);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_238763310;
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v3 = sub_238449184(0, &qword_27DF0B0A0, 0x277CCABB0);
  *(v1 + 56) = v3;
  *(v1 + 32) = v2;
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v1 + 88) = v3;
  *(v1 + 64) = v4;
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v1 + 120) = v3;
  *(v1 + 96) = v5;
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v1 + 152) = v3;
  *(v1 + 128) = v6;
  v7 = objc_allocWithZone(MEMORY[0x277CBEA60]);
  v8 = sub_23875EC60();

  v9 = [v7 initWithArray_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4D0, &unk_2387713A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v11 = *MEMORY[0x277CDA500];
  *(inited + 32) = sub_23875EA80();
  *(inited + 40) = v12;
  v13 = sub_238449184(0, qword_27DF0FF20, 0x277CBEA60);
  *(inited + 72) = v13;
  *(inited + 48) = v9;
  v14 = *MEMORY[0x277CDA498];
  *(inited + 80) = sub_23875EA80();
  *(inited + 88) = v15;
  *(inited + 120) = v13;
  *(inited + 96) = v9;
  v16 = *MEMORY[0x277CDA3D0];
  *(inited + 128) = sub_23875EA80();
  *(inited + 136) = v17;
  *(inited + 168) = v13;
  *(inited + 144) = v9;
  v18 = v9;
  sub_23853BB18(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4D8, &qword_238766B00);
  swift_arrayDestroy();
  v19 = sub_23875E910();

  [v0 setValuesForKeysWithDictionary_];

  return v0;
}

uint64_t sub_2385CAAA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderImageModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2385CAB04()
{
  type metadata accessor for OrderImageModel();
  if (v0 <= 0x3F)
  {
    sub_2385CAC70();
    if (v1 <= 0x3F)
    {
      sub_23846D0DC();
      if (v2 <= 0x3F)
      {
        sub_2385CAD28(319, &qword_27DF0FFB0, &type metadata for OrderImageState, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_2385CACD4(319, &qword_27DF0FFB8, &qword_27DF0FFC0, qword_238774958);
          if (v4 <= 0x3F)
          {
            sub_2385CAD28(319, &qword_2814F09A0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
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

unint64_t sub_2385CAC70()
{
  result = qword_27DF0FFA8;
  if (!qword_27DF0FFA8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DF0FFA8);
  }

  return result;
}

void sub_2385CACD4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23875C470();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2385CAD28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_12FinanceKitUI15OrderImageStateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_2385CADE4()
{
  result = qword_27DF0FFD0;
  if (!qword_27DF0FFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FFC8, &qword_238774A38);
    sub_2385CAE70();
    sub_238464BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FFD0);
  }

  return result;
}

unint64_t sub_2385CAE70()
{
  result = qword_27DF0FFD8;
  if (!qword_27DF0FFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FFE0, &qword_238774A40);
    sub_2385CAEFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FFD8);
  }

  return result;
}

unint64_t sub_2385CAEFC()
{
  result = qword_27DF0FFE8;
  if (!qword_27DF0FFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FFF0, &unk_238774A48);
    sub_2385CAF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FFE8);
  }

  return result;
}

unint64_t sub_2385CAF88()
{
  result = qword_27DF0FFF8;
  if (!qword_27DF0FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0FFF8);
  }

  return result;
}

uint64_t sub_2385CAFDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2385CB030()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for OrderImageInternal() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_238449A7C;

  return sub_2385C7068(v0 + v5, v2, v3);
}

uint64_t objectdestroy_67Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for OrderImageInternal();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = v0 + v5;
  v8 = *(v0 + v5 + 16);

  v9 = type metadata accessor for OrderImageModel();
  v10 = v9[6];
  v11 = sub_23875AF90();
  (*(*(v11 - 8) + 8))(v0 + v5 + v10, v11);
  v12 = v9[9];
  v13 = sub_23875C450();
  (*(*(v13 - 8) + 8))(v0 + v5 + v12, v13);
  v14 = v9[10];
  v15 = sub_23875C8A0();
  (*(*(v15 - 8) + 8))(v0 + v5 + v14, v15);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5 + v3[9]));
  v16 = *(v0 + v5 + v3[10] + 8);

  v17 = v0 + v5 + v3[11];
  if (*v17 >= 2uLL)
  {
  }

  v18 = *(v17 + 8);

  v19 = v7 + v3[12];
  if (*v19 >= 2uLL)
  {
  }

  v20 = *(v19 + 8);

  v21 = v7 + v3[13];
  if (*(v21 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v22 = *v21;
  }

  sub_2384348B8(*(v7 + v3[14]), *(v7 + v3[14] + 8));

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_2385CB324()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for OrderImageInternal() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_238449A7C;

  return sub_2385C7FE4(v0 + v5, v2, v3);
}

uint64_t sub_2385CB40C(uint64_t a1)
{
  v3 = v2;
  v27 = v1[4];
  v26 = v1[5];
  v4 = *(type metadata accessor for OrderImageInternal() - 8);
  v25 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v5 = (*(v4 + 64) + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_238758960() - 8);
  v9 = (*(v8 + 80) + v7 + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_238758970() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_2387589C0() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = v1[2];
  v17 = v1[3];
  v18 = *(v1 + v5);
  v19 = *(v1 + v6);
  v20 = *(v1 + v6 + 8);
  v21 = *(v1 + v7);
  v22 = v1 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = swift_task_alloc();
  *(v3 + 16) = v23;
  *v23 = v3;
  v23[1] = sub_2384494A4;

  return sub_2385C86F0(a1, v19, v20, v21, v16, v17, v1 + v25, v18, v1 + v9, v1 + v12, v1 + v15);
}

uint64_t sub_2385CB6C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238449A7C;

  return sub_2385C9F48(a1, v5);
}

uint64_t sub_2385CB77C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2384494A4;

  return sub_2385C9F48(a1, v5);
}

id sub_2385CB834(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    return sub_2385CB844(a1, a2, a3, a4, BYTE2(a4) & 1);
  }
}

id sub_2385CB844(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    v7 = a2;

    return a1;
  }
}

void sub_2385CB890(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    sub_2385CB8A0(a1, a2, a3, a4, BYTE2(a4) & 1);
  }
}

void sub_2385CB8A0(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

uint64_t sub_2385CB8EC(uint64_t *a1, unsigned int a2)
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

uint64_t sub_2385CB948(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2385CB9AC()
{
  result = qword_27DF10010;
  if (!qword_27DF10010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10010);
  }

  return result;
}

uint64_t BankConnectTermsAndConditionsViewModel.__allocating_init(institution:paymentPass:flowType:bankConnectService:completionHandler:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v27 = a6;
  v12 = *(v6 + 48);
  v13 = *(v6 + 52);
  v14 = swift_allocObject();
  v15 = a4[3];
  v16 = a4[4];
  v17 = a4[5];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a4, v15);
  v19 = *(*(v15 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v20);
  v24 = sub_2385D420C(a1, a2, a3, v22, a5, v27, v14, v15, v16, v17);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v24;
}

uint64_t BankConnectTermsAndConditionsView.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875E1A0();
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  sub_23875E1A0();
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  sub_23875E1A0();
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  v4 = type metadata accessor for BankConnectTermsAndConditionsView(0);
  v5 = *(v4 + 32);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v6 = *(v4 + 36);
  v7 = *MEMORY[0x277CDFA10];
  v8 = sub_23875C880();
  result = (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  *a2 = sub_238447830;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_2385CBCA4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  return v1;
}

uint64_t BankConnectTermsAndConditionsViewModel.init(institution:paymentPass:flowType:bankConnectService:completionHandler:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = a4[3];
  v13 = a4[4];
  v14 = a4[5];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a4, v12);
  v16 = *(*(v12 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = sub_2385D420C(a1, a2, a3, v19, a5, a6, v23[1], v12, v13, v14);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v21;
}

uint64_t sub_2385CBE70(const char *a1, uint64_t a2)
{
  v5 = v2;
  v6 = sub_23875C1E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875C120();
  v11 = sub_23875C1B0();
  v12 = sub_23875F000();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2383F8000, v11, v12, a1, v13, 2u);
    MEMORY[0x23EE64DF0](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v14 = *(v5 + 16);
  v15 = *(v5 + 24);
  v18 = a2;
  return v14(&v18);
}

void sub_2385CBFD4()
{
  v1 = v0;
  v2 = sub_23875A820();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_23875C1E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23875C120();
  v12 = sub_23875C1B0();
  v13 = sub_23875F000();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2383F8000, v12, v13, "Terms and conditions step was skipped.", v14, 2u);
    MEMORY[0x23EE64DF0](v14, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v15 = *(v1 + 16);
  v16 = *(v1 + 24);
  v38[0] = 2;
  v15(v38);
  if (*(v1 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_flowType))
  {
    v17 = MEMORY[0x277D38550];
  }

  else
  {
    v17 = MEMORY[0x277D38560];
  }

  v18 = *v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v20 = sub_23867B330(v6);
  v22 = v21;
  (*(v3 + 8))(v6, v2);
  *(inited + 40) = v20;
  *(inited + 48) = v22;
  v23 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_238763300;
  v25 = *MEMORY[0x277D383D8];
  *(v24 + 32) = *MEMORY[0x277D383D8];
  v26 = *MEMORY[0x277D38428];
  *(v24 + 40) = sub_23875EA80();
  *(v24 + 48) = v27;
  v28 = *MEMORY[0x277D38390];
  *(v24 + 56) = *MEMORY[0x277D38390];
  *(v24 + 64) = 0x776F4E746F6ELL;
  v29 = *MEMORY[0x277D384B8];
  *(v24 + 72) = 0xE600000000000000;
  *(v24 + 80) = v29;
  strcpy((v24 + 88), "bankLinkStart");
  *(v24 + 102) = -4864;
  v30 = v25;
  v31 = v28;
  v32 = v29;
  v33 = sub_23854B138(v24);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38[0] = v33;
  sub_2385C33E4(v23, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v38);

  v35 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2385D4A74(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v36 = sub_23875E910();

  [v35 subject:v18 sendEvent:v36];
}

uint64_t sub_2385CC458()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11[-v4];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  if ((v11[15] & 1) == 0)
  {
    v7 = sub_23875ED80();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    sub_23875ED50();

    v8 = sub_23875ED40();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v1;
    sub_2386C3BA4(0, 0, v5, &unk_2387750F0, v9);
  }

  return result;
}

uint64_t sub_2385CC5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_23875ED50();
  v4[3] = sub_23875ED40();
  v6 = sub_23875ECE0();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_2385CC664, v6, v5);
}

uint64_t sub_2385CC664()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 56) = 1;

  sub_23875C2E0();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_2385CC748;
  v3 = *(v0 + 16);

  return sub_2385CCBB4();
}

uint64_t sub_2385CC748()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_2385CC868, v4, v3);
}

uint64_t sub_2385CC868()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  sub_2385CC918();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 57) = 0;

  sub_23875C2E0();
  v3 = *(v0 + 8);

  return v3();
}

void sub_2385CC918()
{
  v1 = sub_23875A820();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v7 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v8 = *MEMORY[0x277D38470];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v9;
  v10 = *MEMORY[0x277D384B8];
  *(inited + 56) = *MEMORY[0x277D384B8];
  strcpy((inited + 64), "bankLinkStart");
  *(inited + 78) = -4864;
  v11 = v7;
  v12 = v10;
  *(inited + 80) = sub_23875EA50();
  sub_23875A7E0();
  v13 = sub_23867B330(v5);
  v15 = v14;
  (*(v2 + 8))(v5, v1);
  *(inited + 88) = v13;
  *(inited + 96) = v15;
  sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  if (*(v0 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_flowType))
  {
    v16 = MEMORY[0x277D38550];
  }

  else
  {
    v16 = MEMORY[0x277D38560];
  }

  v17 = *v16;
  v18 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2385D4A74(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v19 = sub_23875E910();

  [v18 subject:v17 sendEvent:v19];
}

uint64_t sub_2385CCBB4()
{
  v1[5] = v0;
  v2 = sub_23875C1E0();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10038, &qword_238774BF0) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_23875ED50();
  v1[11] = sub_23875ED40();
  v7 = sub_23875ECE0();
  v1[12] = v7;
  v1[13] = v6;

  return MEMORY[0x2822009F8](sub_2385CCCEC, v7, v6);
}

uint64_t sub_2385CCCEC()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_institution;
  v0[14] = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_institution;
  sub_238757B00();
  v4 = sub_23875A6C0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    v6 = v0[11];
    sub_238439884(v0[10], &qword_27DF10038, &qword_238774BF0);

    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[10];
    v13 = v0[5];
    sub_23875A6B0();
    (*(v5 + 8))(v12, v4);

    v14 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_bankConnectService;
    v0[15] = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_bankConnectService;
    v15 = *(v13 + v14 + 24);
    v16 = *(v13 + v14 + 32);
    __swift_project_boxed_opaque_existential_1((v13 + v14), v15);
    v17 = *(MEMORY[0x277CC7FE0] + 4);
    v18 = swift_task_alloc();
    v0[16] = v18;
    *v18 = v0;
    v18[1] = sub_2385CCEE8;

    return MEMORY[0x28211A0D0](v2 + v3, v15, v16);
  }
}

uint64_t sub_2385CCEE8()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_2385CD2EC;
  }

  else
  {
    v7 = sub_2385CD024;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2385CD024()
{
  v1 = v0[14];
  v2 = (v0[5] + v0[15]);
  v3 = v2[3];
  v4 = v2[5];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = sub_238757B40();
  v7 = v6;
  v0[18] = v6;
  v8 = *(MEMORY[0x277CC8288] + 4);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_2385CD114;
  v10 = v0[9];

  return MEMORY[0x28211A940](v10, v5, v7, v3, v4);
}

uint64_t sub_2385CD114()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v9 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_2385CD4B0;
  }

  else
  {
    v7 = v2[18];

    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_2385CD230;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2385CD230()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[5];

  v4 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_termsAndConditions;
  swift_beginAccess();
  sub_2385D4E00(v2, v3 + v4);
  swift_endAccess();
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2385CD2EC()
{
  v24 = v0;
  v1 = v0[17];
  v2 = v0[11];
  v3 = v0[8];

  sub_23875C120();
  v4 = v1;
  v5 = sub_23875C1B0();
  v6 = sub_23875EFE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2383F8000, v5, v6, "Failed to load terms and conditions with error: %@", v7, 0xCu);
    sub_238439884(v8, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v8, -1, -1);
    MEMORY[0x23EE64DF0](v7, -1, -1);
  }

  v12 = v0[7];
  v11 = v0[8];
  v14 = v0[5];
  v13 = v0[6];

  (*(v12 + 8))(v11, v13);
  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  v23 = v1;
  v17 = v1;
  v16(&v23);

  sub_2385D4DF0(v23);
  v19 = v0[9];
  v18 = v0[10];
  v20 = v0[8];

  v21 = v0[1];

  return v21();
}

uint64_t sub_2385CD4B0()
{
  v25 = v0;
  v1 = v0[18];

  v2 = v0[20];
  v3 = v0[11];
  v4 = v0[8];

  sub_23875C120();
  v5 = v2;
  v6 = sub_23875C1B0();
  v7 = sub_23875EFE0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2383F8000, v6, v7, "Failed to load terms and conditions with error: %@", v8, 0xCu);
    sub_238439884(v9, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v9, -1, -1);
    MEMORY[0x23EE64DF0](v8, -1, -1);
  }

  v13 = v0[7];
  v12 = v0[8];
  v15 = v0[5];
  v14 = v0[6];

  (*(v13 + 8))(v12, v14);
  v17 = *(v15 + 16);
  v16 = *(v15 + 24);
  v24 = v2;
  v18 = v2;
  v17(&v24);

  sub_2385D4DF0(v24);
  v20 = v0[9];
  v19 = v0[10];
  v21 = v0[8];

  v22 = v0[1];

  return v22();
}

uint64_t BankConnectTermsAndConditionsViewModel.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel__isLoading;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_institution;
  v5 = sub_238757B60();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_bankConnectService));
  sub_238439884(v0 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_termsAndConditions, &qword_27DF10038, &qword_238774BF0);
  return v0;
}

uint64_t BankConnectTermsAndConditionsViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel__isLoading;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_institution;
  v5 = sub_238757B60();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);

  __swift_destroy_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_bankConnectService]);
  sub_238439884(&v0[OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_termsAndConditions], &qword_27DF10038, &qword_238774BF0);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2385CD8A0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BankConnectTermsAndConditionsViewModel(0);
  result = sub_23875C260();
  *a1 = result;
  return result;
}

uint64_t sub_2385CD8E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for BankConnectTermsAndConditionsView(0);
  sub_23843981C(v1 + *(v12 + 32), v11, &qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C880();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23875EFF0();
    v16 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t BankConnectTermsAndConditionsView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for BankConnectTermsAndConditionsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2385D4B8C(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectTermsAndConditionsView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_2385D4BF4(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for BankConnectTermsAndConditionsView);
  *a1 = sub_2385D4458;
  a1[1] = v7;
  return result;
}

uint64_t sub_2385CDC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a1;
  v52 = a3;
  v4 = type metadata accessor for BankConnectTermsAndConditionsView(0);
  v53 = *(v4 - 8);
  v5 = *(v53 + 8);
  MEMORY[0x28223BE20](v4 - 8);
  v55 = v6;
  v45 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF101A0, &qword_2387750F8);
  v7 = *(v44 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v44);
  v10 = v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF101A8, &qword_238775100);
  v46 = *(v11 - 8);
  v47 = v11;
  v12 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v39 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF101B0, &qword_238775108);
  v15 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v49 = v39 - v16;
  sub_23875ED50();
  v50 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = sub_23875D760();
  MEMORY[0x28223BE20](v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF101B8, &qword_238775110);
  sub_23843A3E8(&qword_27DF101C0, &qword_27DF101B8, &qword_238775110);
  v18 = sub_23875C410();
  MEMORY[0x28223BE20](v18);
  sub_23875D020();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF101C8, &qword_238775118);
  v41 = sub_23843A3E8(&qword_27DF101D0, &qword_27DF101A0, &qword_2387750F8);
  v38 = sub_2385D5134();
  v19 = v44;
  sub_23875DBA0();
  (*(v7 + 8))(v10, v19);
  v20 = *(a2 + 24);
  v21 = *(a2 + 32);
  v54 = a2;
  v60 = v20;
  v61 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v39[1] = v58;
  v43 = type metadata accessor for BankConnectTermsAndConditionsView;
  v22 = a2;
  v23 = v45;
  sub_2385D4B8C(v22, v45, type metadata accessor for BankConnectTermsAndConditionsView);
  v42 = *(v53 + 80);
  v24 = (v42 + 16) & ~v42;
  v25 = swift_allocObject();
  v53 = type metadata accessor for BankConnectTermsAndConditionsView;
  sub_2385D4BF4(v23, v25 + v24, type metadata accessor for BankConnectTermsAndConditionsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10210, &qword_238775140);
  v56 = v19;
  v57 = v40;
  v58 = v41;
  v59 = v38;
  swift_getOpaqueTypeConformance2();
  sub_2385D53A8();
  v26 = v49;
  v27 = v47;
  sub_23875DED0();

  (*(v46 + 8))(v14, v27);
  v28 = sub_23875C910();
  v29 = sub_23875D7D0();
  v30 = v26 + *(v48 + 36);
  *v30 = v28;
  *(v30 + 8) = v29;
  sub_23875C620();
  v56 = v31;
  v32 = v43;
  sub_2385D4B8C(v54, v23, v43);
  v33 = swift_allocObject();
  sub_2385D4BF4(v23, v33 + v24, v53);
  sub_2385D54DC();
  sub_2385D566C();
  v34 = v52;
  sub_23875DF10();

  sub_238439884(v26, &qword_27DF101B0, &qword_238775108);
  sub_2385D4B8C(v54, v23, v32);
  v35 = swift_allocObject();
  sub_2385D4BF4(v23, v35 + v24, v53);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10238, &qword_238775148);
  v37 = (v34 + *(result + 36));
  *v37 = sub_2385D56C0;
  v37[1] = v35;
  v37[2] = 0;
  v37[3] = 0;
  return result;
}

uint64_t sub_2385CE310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D030();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10288, &qword_2387751C0);
  sub_2385CE3E0(a1, a2 + *(v4 + 44));
}

uint64_t sub_2385CE3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10290, &qword_2387751C8);
  v150 = *(v3 - 8);
  v151 = v3;
  v4 = *(v150 + 64);
  MEMORY[0x28223BE20](v3);
  v143 = (&v142 - v5);
  v6 = sub_23875C880();
  v147 = *(v6 - 8);
  v148 = v6;
  v7 = *(v147 + 64);
  MEMORY[0x28223BE20](v6);
  v146 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10298, &qword_2387751D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v153 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v161 = &v142 - v13;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF102A0, &qword_2387751D8);
  v14 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v16 = &v142 - v15;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF102A8, &qword_2387751E0);
  v17 = *(v159 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v159);
  v20 = &v142 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF102B0, &qword_2387751E8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v160 = &v142 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v162 = &v142 - v25;
  sub_23875ED50();
  v152 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = *a1;
  v27 = *(a1 + 8);
  v28 = *(a1 + 16);
  type metadata accessor for BankConnectTermsAndConditionsViewModel(0);
  sub_2385D4A74(&qword_27DF10070, type metadata accessor for BankConnectTermsAndConditionsViewModel);
  v29 = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_paymentPass);
  v30 = v29;

  v149 = a1;
  if (v29)
  {
    v31 = *(a1 + 64);
    v171 = *(a1 + 56);
    v172 = v31;
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10240, &qword_238775150);
    sub_23875E1D0();
    v33 = v183;
    v34 = v184;
    v35 = v185;
    KeyPath = swift_getKeyPath();
    v37 = type metadata accessor for BankConnectTermsAndConditionsHeroView(0);
    *&v16[*(v37 + 24)] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
    swift_storeEnumTagMultiPayload();
    *v16 = v32;
    *(v16 + 1) = sub_238445F18;
    *(v16 + 2) = 0;
    v16[24] = 0;
    v38 = &v16[*(v37 + 28)];
    *v38 = v33;
    *(v38 + 1) = v34;
    *(v38 + 2) = v35;
    LOBYTE(KeyPath) = sub_23875D7A0();
    sub_23875C3D0();
    v39 = &v16[*(v158 + 36)];
    *v39 = KeyPath;
    *(v39 + 1) = v40;
    *(v39 + 2) = v41;
    *(v39 + 3) = v42;
    *(v39 + 4) = v43;
    v39[40] = 0;
    sub_2385D587C();
    sub_23875DBF0();

    sub_238439884(v16, &qword_27DF102A0, &qword_2387751D8);
    v44 = v162;
    sub_2384396E4(v20, v162, &qword_27DF102A8, &qword_2387751E0);
    (*(v17 + 56))(v44, 0, 1, v159);
  }

  else
  {
    (*(v17 + 56))(v162, 1, 1, v159);
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v45 = qword_2814F1B90;
  v46 = sub_23875EA50();
  v47 = sub_23875EA50();
  v48 = sub_23875EA50();
  v49 = [v45 localizedStringForKey:v46 value:v47 table:v48];

  v50 = sub_23875EA80();
  v52 = v51;

  v183 = v50;
  v184 = v52;
  sub_2384397A8();
  v53 = sub_23875DAA0();
  v157 = v54;
  v158 = v53;
  LOBYTE(v50) = v55;
  v159 = v56;
  v156 = sub_23875D770();
  sub_23875C3D0();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v155 = v50 & 1;
  LOBYTE(v183) = v50 & 1;
  LOBYTE(v171) = 0;
  v65 = sub_23875EA50();
  v66 = sub_23875EA50();
  v67 = sub_23875EA50();
  v68 = [v45 localizedStringForKey:v65 value:v66 table:v67];

  v69 = sub_23875EA80();
  v71 = v70;

  v183 = v69;
  v184 = v71;
  v72 = sub_23875DAA0();
  v74 = v73;
  LOBYTE(v68) = v75;
  v145 = v76;
  v144 = sub_23875D770();
  sub_23875C3D0();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v85 = v68 & 1;
  LOBYTE(v183) = v68 & 1;
  LOBYTE(v171) = 0;
  v86 = v146;
  v87 = v149;
  sub_2385CD8E0(v146);
  LODWORD(v68) = *(type metadata accessor for BankConnectTermsAndConditionsView(0) + 36);
  sub_2385D4A74(&qword_27DF0AAC0, MEMORY[0x277CDFA28]);
  v88 = v148;
  LOBYTE(v68) = sub_23875E990();
  (*(v147 + 8))(v86, v88);
  if (v68)
  {
    v89 = sub_23875D020();
    v90 = v143;
    *v143 = v89;
    *(v90 + 8) = 0x402C000000000000;
    *(v90 + 16) = 0;
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10250, &qword_238775190);
    sub_2385CFF08(v87, v90 + *(v91 + 44));
    v92 = sub_23875D7A0();
    v149 = v58;
    sub_23875C3D0();
    v146 = v62;
    v147 = v60;
    v94 = v93;
    v96 = v95;
    v148 = v64;
    v98 = v97;
    v142 = v84;
    v99 = v82;
    v100 = v80;
    v101 = v78;
    v103 = v102;
    v104 = v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF101F8, &qword_238775128) + 36);
    *v104 = v92;
    *(v104 + 8) = v94;
    *(v104 + 16) = v96;
    *(v104 + 24) = v98;
    *(v104 + 32) = v103;
    v78 = v101;
    v80 = v100;
    v82 = v99;
    v84 = v142;
    *(v104 + 40) = 0;
    v105 = sub_23875D770();
    sub_23875C3D0();
    v107 = v106;
    v109 = v108;
    v111 = v110;
    v113 = v112;
    v114 = v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF101E0, &qword_238775120) + 36);
    *v114 = v105;
    *(v114 + 8) = v107;
    *(v114 + 16) = v109;
    *(v114 + 24) = v111;
    *(v114 + 32) = v113;
    v62 = v146;
    v60 = v147;
    v64 = v148;
    v58 = v149;
    *(v114 + 40) = 0;
    v115 = sub_23875D790();
    sub_23875C3D0();
    v116 = v151;
    v117 = v90 + *(v151 + 36);
    *v117 = v115;
    *(v117 + 8) = v118;
    *(v117 + 16) = v119;
    *(v117 + 24) = v120;
    *(v117 + 32) = v121;
    *(v117 + 40) = 0;
    v122 = v161;
    sub_2384396E4(v90, v161, &qword_27DF10290, &qword_2387751C8);
    v123 = 0;
  }

  else
  {
    v123 = 1;
    v122 = v161;
    v116 = v151;
  }

  (*(v150 + 56))(v122, v123, 1, v116);
  v124 = v160;
  sub_23843981C(v162, v160, &qword_27DF102B0, &qword_2387751E8);
  v125 = v122;
  v126 = v153;
  sub_23843981C(v125, v153, &qword_27DF10298, &qword_2387751D0);
  v127 = v124;
  v128 = v154;
  sub_23843981C(v127, v154, &qword_27DF102B0, &qword_2387751E8);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF102B8, &qword_2387751F0);
  v130 = (v128 + v129[12]);
  *&v163 = v158;
  *(&v163 + 1) = v157;
  LOBYTE(v164) = v155;
  *(&v164 + 1) = *v195;
  DWORD1(v164) = *&v195[3];
  *(&v164 + 1) = v159;
  LOBYTE(v165) = v156;
  *(&v165 + 1) = *v194;
  DWORD1(v165) = *&v194[3];
  *(&v165 + 1) = v58;
  *&v166[0] = v60;
  *(&v166[0] + 1) = v62;
  *&v166[1] = v64;
  BYTE8(v166[1]) = 0;
  v131 = v163;
  v132 = v164;
  *(v130 + 57) = *(v166 + 9);
  v133 = v166[0];
  v130[2] = v165;
  v130[3] = v133;
  *v130 = v131;
  v130[1] = v132;
  v134 = (v128 + v129[16]);
  *&v167 = v72;
  *(&v167 + 1) = v74;
  LOBYTE(v168) = v85;
  DWORD1(v168) = *(v197 + 3);
  *(&v168 + 1) = v197[0];
  v150 = v72;
  v151 = v74;
  v135 = v145;
  *(&v168 + 1) = v145;
  v136 = v85;
  v137 = v144;
  LOBYTE(v169) = v144;
  DWORD1(v169) = *&v196[3];
  *(&v169 + 1) = *v196;
  *(&v169 + 1) = v78;
  *&v170[0] = v80;
  *(&v170[0] + 1) = v82;
  *&v170[1] = v84;
  BYTE8(v170[1]) = 0;
  v138 = v167;
  v139 = v168;
  *(v134 + 57) = *(v170 + 9);
  v140 = v170[0];
  v134[2] = v169;
  v134[3] = v140;
  *v134 = v138;
  v134[1] = v139;
  sub_23843981C(v126, v128 + v129[20], &qword_27DF10298, &qword_2387751D0);
  sub_23843981C(&v163, &v183, &qword_27DF102C0, &unk_2387751F8);
  sub_23843981C(&v167, &v183, &qword_27DF0AB28, &qword_238771F60);
  sub_238439884(v161, &qword_27DF10298, &qword_2387751D0);
  sub_238439884(v162, &qword_27DF102B0, &qword_2387751E8);
  sub_238439884(v126, &qword_27DF10298, &qword_2387751D0);
  v171 = v150;
  v172 = v151;
  v173 = v136;
  *v174 = v197[0];
  *&v174[3] = *(v197 + 3);
  v175 = v135;
  v176 = v137;
  *v177 = *v196;
  *&v177[3] = *&v196[3];
  v178 = v78;
  v179 = v80;
  v180 = v82;
  v181 = v84;
  v182 = 0;
  sub_238439884(&v171, &qword_27DF0AB28, &qword_238771F60);
  v183 = v158;
  v184 = v157;
  LOBYTE(v185) = v155;
  *(&v185 + 1) = *v195;
  HIDWORD(v185) = *&v195[3];
  v186 = v159;
  v187 = v156;
  *v188 = *v194;
  *&v188[3] = *&v194[3];
  v189 = v58;
  v190 = v60;
  v191 = v62;
  v192 = v64;
  v193 = 0;
  sub_238439884(&v183, &qword_27DF102C0, &unk_2387751F8);
  sub_238439884(v160, &qword_27DF102B0, &qword_2387751E8);
}

uint64_t sub_2385CF058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_23875CFB0();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF101E0, &qword_238775120);
  v6 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v8 = &v44 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10248, &qword_238775188);
  v9 = *(v50 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v50);
  v45 = &v44 - v11;
  v12 = sub_23875C880();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF101C8, &qword_238775118);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v44 - v19;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385CD8E0(v16);
  v21 = *(type metadata accessor for BankConnectTermsAndConditionsView(0) + 36);
  sub_2385D4A74(&qword_27DF0AAC0, MEMORY[0x277CDFA28]);
  LOBYTE(v21) = sub_23875E990();
  (*(v13 + 8))(v16, v12);
  if (v21)
  {
    v22 = 1;
    v23 = v50;
  }

  else
  {
    *v8 = sub_23875D020();
    *(v8 + 1) = 0x402C000000000000;
    v8[16] = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10250, &qword_238775190);
    sub_2385CFF08(a1, &v8[*(v24 + 44)]);
    v25 = sub_23875D7A0();
    sub_23875C3D0();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF101F8, &qword_238775128) + 36)];
    *v34 = v25;
    *(v34 + 1) = v27;
    *(v34 + 2) = v29;
    *(v34 + 3) = v31;
    *(v34 + 4) = v33;
    v34[40] = 0;
    v35 = sub_23875D770();
    sub_23875C3D0();
    v36 = v47;
    v37 = &v8[*(v46 + 36)];
    *v37 = v35;
    *(v37 + 1) = v38;
    *(v37 + 2) = v39;
    *(v37 + 3) = v40;
    *(v37 + 4) = v41;
    v37[40] = 0;
    sub_23875CFA0();
    sub_2385D51F4();
    v42 = v45;
    sub_23875DD10();
    (*(v48 + 8))(v36, v49);
    sub_238439884(v8, &qword_27DF101E0, &qword_238775120);
    v23 = v50;
    (*(v9 + 32))(v20, v42, v50);
    v22 = 0;
  }

  (*(v9 + 56))(v20, v22, 1, v23);
  sub_2384396E4(v20, v51, &qword_27DF101C8, &qword_238775118);
}

uint64_t sub_2385CF530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for BankConnectTermsAndConditionsView(0);
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for BankConnectTermsAndConditionsWebView(0);
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v37);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10038, &qword_238774BF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10210, &qword_238775140);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v34 - v15;
  sub_23875ED50();
  v36 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  type metadata accessor for BankConnectTermsAndConditionsViewModel(0);
  sub_2385D4A74(&qword_27DF10070, type metadata accessor for BankConnectTermsAndConditionsViewModel);
  v20 = sub_23875C490();
  v21 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_termsAndConditions;
  swift_beginAccess();
  sub_23843981C(v20 + v21, v12, &qword_27DF10038, &qword_238774BF0);

  v22 = sub_23875A6C0();
  if ((*(*(v22 - 8) + 48))(v12, 1, v22))
  {
    sub_238439884(v12, &qword_27DF10038, &qword_238774BF0);
    v23 = 1;
    v24 = v37;
  }

  else
  {
    v25 = sub_23875A6B0();
    v27 = v26;
    sub_238439884(v12, &qword_27DF10038, &qword_238774BF0);
    v28 = a1;
    v29 = v35;
    sub_2385D4B8C(v28, v35, type metadata accessor for BankConnectTermsAndConditionsView);
    v30 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v25;
    *(v31 + 24) = v27;
    sub_2385D4BF4(v29, v31 + v30, type metadata accessor for BankConnectTermsAndConditionsView);
    *v8 = sub_2385D5720;
    *(v8 + 1) = v31;
    v8[16] = 0;
    v24 = v37;
    v32 = *(v37 + 20);
    *&v8[v32] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
    swift_storeEnumTagMultiPayload();
    sub_2385D4BF4(v8, v16, type metadata accessor for BankConnectTermsAndConditionsWebView);
    v23 = 0;
  }

  (*(v5 + 56))(v16, v23, 1, v24);
  sub_2384396E4(v16, v38, &qword_27DF10210, &qword_238775140);
}

uint64_t sub_2385CF9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v33 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v4 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for BankConnectTermsAndConditionsView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  type metadata accessor for BankConnectTermsAndConditionsViewModel(0);
  sub_2385D4A74(&qword_27DF10070, type metadata accessor for BankConnectTermsAndConditionsViewModel);
  LOBYTE(v16) = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_flowType);

  sub_2385D4B8C(a3, v13, type metadata accessor for BankConnectTermsAndConditionsView);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  sub_2385D4BF4(v13, v18 + v17, type metadata accessor for BankConnectTermsAndConditionsView);
  v19 = sub_238758CC0();
  v20 = sub_238758CB0();
  v36 = v19;
  v37 = MEMORY[0x277CC7460];
  *&v35 = v20;
  v21 = type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v34 = 0;
  sub_23875C290();
  v25 = sub_23875B940();
  (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
  sub_23843981C(v9, v6, &qword_27DF0D040, &qword_2387676A0);
  sub_23875C290();
  sub_238439884(v9, &qword_27DF0D040, &qword_2387676A0);
  v26 = (v24 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_termsAndConditionsID);
  v27 = v33;
  *v26 = v32;
  v26[1] = v27;
  *(v24 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_isDeclinable) = 1;
  *(v24 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_flowType) = v16;
  sub_2384347C0(&v35, v24 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_bankConnectService);
  v28 = (v24 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_completionHandler);
  *v28 = sub_2385D5784;
  v28[1] = v18;

  return v24;
}

uint64_t sub_2385CFD24(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a3 + 56);
  v7 = *(a3 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10240, &qword_238775150);
  sub_23875E1C0();
}

uint64_t sub_2385CFDF8(uint64_t *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  type metadata accessor for BankConnectTermsAndConditionsViewModel(0);
  sub_2385D4A74(&qword_27DF10070, type metadata accessor for BankConnectTermsAndConditionsViewModel);
  sub_23875C490();
  sub_2385CC458();
}

void sub_2385CFF08(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10258, &qword_238775198);
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v34 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v30[-v8];
  v10 = sub_238759940();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23875ED50();
  v33 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v11 + 104))(v14, *MEMORY[0x277CC7B48], v10);
  v15 = sub_23869C4FC(v14);
  v31 = sub_23875D7A0();
  v16 = sub_23875C3D0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  MEMORY[0x28223BE20](v16);
  *&v30[-16] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10260, &qword_2387751A0);
  sub_23843A3E8(&qword_27DF10268, &qword_27DF10260, &qword_2387751A0);
  sub_23875D1D0();
  v25 = v4[2];
  v26 = v34;
  v25(v34, v9, v3);
  *a2 = v15;
  *(a2 + 8) = v31;
  *(a2 + 16) = v18;
  *(a2 + 24) = v20;
  *(a2 + 32) = v22;
  *(a2 + 40) = v24;
  *(a2 + 48) = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10270, &qword_2387751A8);
  v25((a2 + *(v27 + 48)), v26, v3);
  v28 = v4[1];
  v29 = v15;
  v28(v9, v3);
  v28(v26, v3);
}

uint64_t sub_2385D0284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0x402C000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10278, &qword_2387751B0);
  sub_2385D0358(a1, a2 + *(v4 + 44));
}

uint64_t sub_2385D0358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for BankConnectTermsAndConditionsView(0);
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = v5;
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09580, &qword_238763900);
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v36 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v36 - v18);
  sub_23875ED50();
  v40 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385D07B4(v19);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v20 = qword_2814F1B90;
  v21 = sub_23875EA50();
  v22 = sub_23875EA50();
  v23 = sub_23875EA50();
  v24 = [v20 localizedStringForKey:v21 value:v22 table:v23];

  v25 = sub_23875EA80();
  v27 = v26;

  v28 = v12 + v6[9];
  sub_23875CFC0();
  v29 = v39;
  sub_2385D4B8C(a1, v39, type metadata accessor for BankConnectTermsAndConditionsView);
  v30 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v31 = swift_allocObject();
  sub_2385D4BF4(v29, v31 + v30, type metadata accessor for BankConnectTermsAndConditionsView);
  *v12 = v25;
  v12[1] = v27;
  *(v12 + v6[10]) = 0;
  v32 = (v12 + v6[11]);
  *v32 = sub_2385D5808;
  v32[1] = v31;
  sub_23843981C(v19, v16, &qword_27DF0AAD8, &qword_23876B8C0);
  sub_23843981C(v12, v9, &qword_27DF09580, &qword_238763900);
  v33 = v41;
  sub_23843981C(v16, v41, &qword_27DF0AAD8, &qword_23876B8C0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10280, &qword_2387751B8);
  sub_23843981C(v9, v33 + *(v34 + 48), &qword_27DF09580, &qword_238763900);
  sub_238439884(v12, &qword_27DF09580, &qword_238763900);
  sub_238439884(v19, &qword_27DF0AAD8, &qword_23876B8C0);
  sub_238439884(v9, &qword_27DF09580, &qword_238763900);
  sub_238439884(v16, &qword_27DF0AAD8, &qword_23876B8C0);
}

uint64_t sub_2385D07B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for BankConnectTermsAndConditionsView(0);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  v10 = sub_23875EA80();
  v12 = v11;

  v13 = *v1;
  v14 = *(v1 + 8);
  v15 = *(v1 + 16);
  type metadata accessor for BankConnectTermsAndConditionsViewModel(0);
  sub_2385D4A74(&qword_27DF10070, type metadata accessor for BankConnectTermsAndConditionsViewModel);
  sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v16 = v24;
  sub_2385D4B8C(v1, &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectTermsAndConditionsView);
  v17 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v18 = swift_allocObject();
  sub_2385D4BF4(&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for BankConnectTermsAndConditionsView);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  v20 = a1 + v19[9];
  result = sub_23875D610();
  *a1 = v10;
  a1[1] = v12;
  *(a1 + v19[10]) = v16;
  v22 = (a1 + v19[11]);
  *v22 = sub_2385D5820;
  v22[1] = v18;
  return result;
}

uint64_t sub_2385D0AAC()
{
  v59 = sub_23875A6C0();
  v58 = *(v59 - 8);
  v1 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v50 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10038, &qword_238774BF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v49 - v7;
  v8 = sub_23875A820();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v0;
  v14 = v0[1];
  v51 = v0;
  v15 = *(v0 + 16);
  v16 = type metadata accessor for BankConnectTermsAndConditionsViewModel(0);
  v17 = sub_2385D4A74(&qword_27DF10070, type metadata accessor for BankConnectTermsAndConditionsViewModel);
  v55 = v13;
  v54 = v14;
  v53 = v15;
  v52 = v16;
  v60 = v17;
  LODWORD(v13) = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_flowType);

  v18 = MEMORY[0x277D38550];
  if (!v13)
  {
    v18 = MEMORY[0x277D38560];
  }

  v19 = *v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v21 = sub_23867B330(v12);
  v23 = v22;
  (*(v9 + 8))(v12, v8);
  *(inited + 40) = v21;
  *(inited + 48) = v23;
  v24 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_238763300;
  v26 = *MEMORY[0x277D383D8];
  *(v25 + 32) = *MEMORY[0x277D383D8];
  v27 = *MEMORY[0x277D38428];
  *(v25 + 40) = sub_23875EA80();
  *(v25 + 48) = v28;
  v29 = *MEMORY[0x277D38390];
  *(v25 + 56) = *MEMORY[0x277D38390];
  *(v25 + 64) = 0x65756E69746E6F63;
  v30 = *MEMORY[0x277D384B8];
  *(v25 + 72) = 0xE800000000000000;
  *(v25 + 80) = v30;
  strcpy((v25 + 88), "bankLinkStart");
  *(v25 + 102) = -4864;
  v31 = v26;
  v32 = v29;
  v33 = v30;
  v34 = sub_23854B138(v25);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64[0] = v34;
  sub_2385C33E4(v24, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v64);

  v36 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2385D4A74(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v37 = sub_23875E910();

  [v36 subject:v19 sendEvent:v37];

  v38 = sub_23875C490();
  v39 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_termsAndConditions;
  swift_beginAccess();
  v40 = v57;
  sub_23843981C(v38 + v39, v57, &qword_27DF10038, &qword_238774BF0);

  v41 = v56;
  sub_23843981C(v40, v56, &qword_27DF10038, &qword_238774BF0);
  v42 = v58;
  v43 = v59;
  if ((*(v58 + 48))(v41, 1, v59) == 1)
  {
    sub_238439884(v40, &qword_27DF10038, &qword_238774BF0);
  }

  else
  {
    v44 = v51;
    v45 = v50;
    (*(v42 + 32))(v50, v41, v43);
    v46 = sub_23875A6A0();
    (*(v42 + 8))(v45, v43);
    sub_238439884(v40, &qword_27DF10038, &qword_238774BF0);
    if (v46)
    {
      v47 = v44[4];
      v62 = *(v44 + 24);
      v63 = v47;
      v61 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
      return sub_23875E1C0();
    }
  }

  sub_23875C490();
  sub_2385CBE50();
}

uint64_t sub_2385D11A0(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  type metadata accessor for BankConnectTermsAndConditionsViewModel(0);
  sub_2385D4A74(&qword_27DF10070, type metadata accessor for BankConnectTermsAndConditionsViewModel);
  sub_23875C490();
  a2();
}

uint64_t sub_2385D1250@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_2385D4B8C(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectTermsAndConditionsView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_2385D4BF4(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for BankConnectTermsAndConditionsView);
  *a2 = sub_2385D5B60;
  a2[1] = v7;
  return result;
}

uint64_t sub_2385D1364()
{
  result = MEMORY[0x23EE63CB0](500.65);
  qword_27DF10018 = result;
  unk_27DF10020 = v1;
  dword_27DF10028 = v2;
  return result;
}

uint64_t sub_2385D1394@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for BankConnectTermsAndConditionsHeroView(0);
  sub_23843981C(v1 + *(v12 + 24), v11, &qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C450();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23875EFF0();
    v16 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2385D159C@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E48, &qword_238761CD0);
  v2 = *(*(v68 - 1) + 64);
  MEMORY[0x28223BE20](v68);
  v71 = &v64 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100A8, &qword_238774E50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v64 - v6);
  *v7 = sub_23875E4A0();
  v7[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100B0, &qword_238774E58);
  sub_2385D1D38(v7 + *(v9 + 44));
  v10 = sub_23875D790();
  v11 = type metadata accessor for BankConnectTermsAndConditionsHeroView(0);
  v12 = (v1 + *(v11 + 28));
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v73 = *v12;
  v74 = v14;
  v75 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100B8, &qword_238774E60);
  MEMORY[0x23EE62DC0](&v72);
  if (*&v72 > 0.0)
  {
    v73 = v13;
    v74 = v14;
    v75 = v15;
    MEMORY[0x23EE62DC0](&v72, v16, *&v72);
  }

  sub_23875C3D0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100C0, &qword_238774E68) + 36);
  *v25 = v10;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  *(v7 + *(v4 + 36)) = 0;
  v26 = sub_23875C450();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2385D1394(v29);
  v67 = v1;
  v31 = MEMORY[0x28223BE20](v30);
  (*(v27 + 104))(v29, *MEMORY[0x277CDF3D0], v26, v31);
  LOBYTE(v28) = sub_23875C440();
  v32 = *(v27 + 8);
  v32(v29, v26);
  v32(v29, v26);
  v33 = objc_opt_self();
  v34 = &selRef_systemGroupedBackgroundColor;
  if ((v28 & 1) == 0)
  {
    v34 = &selRef_secondarySystemGroupedBackgroundColor;
  }

  v35 = [v33 *v34];
  v36 = sub_23875DFB0();
  v37 = sub_23875D780();
  v38 = v71;
  v39 = sub_2384396E4(v7, v71, &qword_27DF100A8, &qword_238774E50);
  v69 = &v64;
  v40 = v38 + *(v68 + 9);
  *v40 = v36;
  *(v40 + 8) = v37;
  v41 = *(v11 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  sub_2385D4B8C(v67, &v64 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectTermsAndConditionsHeroView);
  sub_23875ED50();
  v43 = sub_23875ED40();
  v44 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v45 = swift_allocObject();
  v46 = MEMORY[0x277D85700];
  *(v45 + 16) = v43;
  *(v45 + 24) = v46;
  sub_2385D4BF4(&v64 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v44, type metadata accessor for BankConnectTermsAndConditionsHeroView);
  v47 = sub_23875ED80();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_23875ED60();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v66 = sub_23875C830();
    v67 = &v64;
    v65 = *(v66 - 8);
    v51 = *(v65 + 64);
    MEMORY[0x28223BE20](v66);
    v68 = &v64;
    v53 = &v64 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    v73 = 0;
    v74 = 0xE000000000000000;
    sub_23875F470();

    v73 = 0xD000000000000041;
    v74 = 0x800000023878CB40;
    v72 = 389;
    v54 = sub_23875F600();
    MEMORY[0x23EE63650](v54);

    v56 = MEMORY[0x28223BE20](v55);
    (*(v48 + 16))(&v64 - v50, &v64 - v50, v47, v56);
    sub_23875C820();
    (*(v48 + 8))(&v64 - v50, v47);
    v57 = v70;
    sub_2384396E4(v71, v70, &qword_27DF08E48, &qword_238761CD0);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E50, &qword_238761CD8);
    return (*(v65 + 32))(v57 + *(v58 + 36), v53, v66);
  }

  else
  {
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E58, &qword_238761CE0);
    v61 = v70;
    v62 = (v70 + *(v60 + 36));
    v63 = sub_23875C6E0();
    (*(v48 + 32))(&v62[*(v63 + 20)], &v64 - v50, v47);
    *v62 = &unk_238774E80;
    *(v62 + 1) = v45;
    return sub_2384396E4(v38, v61, &qword_27DF08E48, &qword_238761CD0);
  }
}

uint64_t sub_2385D1D38@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100C8, &qword_238774E88);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v59 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v52 - v5;
  v7 = sub_23875C450();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100D0, &qword_238774E90);
  v15 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v17 = &v52 - v16;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100D8, &qword_238774E98);
  v18 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v57 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - v21;
  MEMORY[0x28223BE20](v23);
  v55 = &v52 - v24;
  sub_23875ED50();
  v56 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875D1E0();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = *(sub_23875D460() + 20);
  v34 = *MEMORY[0x277CE0118];
  v35 = sub_23875CF50();
  (*(*(v35 - 8) + 104))(&v17[v33], v34, v35);
  *v17 = v26;
  *(v17 + 1) = v28;
  *(v17 + 2) = v30;
  *(v17 + 3) = v32;
  sub_23875E4A0();
  sub_23875C5C0();
  v36 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100E0, &qword_238774EA0) + 36)];
  v37 = v61;
  *v36 = v60;
  *(v36 + 1) = v37;
  *(v36 + 2) = v62;
  v38 = objc_opt_self();
  v39 = [v38 systemGroupedBackgroundColor];
  *&v17[*(v53 + 36)] = sub_23875DFB0();
  sub_2385D1394(v14);
  (*(v8 + 104))(v11, *MEMORY[0x277CDF3D0], v7);
  LOBYTE(v33) = sub_23875C440();
  v40 = *(v8 + 8);
  v40(v11, v7);
  v40(v14, v7);
  v41 = &selRef_systemGray3Color;
  if ((v33 & 1) == 0)
  {
    v41 = &selRef_systemGray4Color;
  }

  v42 = [v38 *v41];
  v43 = sub_23875DFB0();
  sub_2384396E4(v17, v22, &qword_27DF100D0, &qword_238774E90);
  v44 = v55;
  v45 = &v22[*(v54 + 36)];
  *v45 = v43;
  v45[1] = 0x4024000000000000;
  v45[2] = 0;
  v45[3] = 0;
  sub_2384396E4(v22, v44, &qword_27DF100D8, &qword_238774E98);
  *v6 = sub_23875D020();
  *(v6 + 1) = 0x4020000000000000;
  v6[16] = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100E8, &qword_238774EA8);
  sub_2385D22F8(&v6[*(v46 + 44)]);
  v47 = v57;
  sub_23843981C(v44, v57, &qword_27DF100D8, &qword_238774E98);
  v48 = v59;
  sub_23843981C(v6, v59, &qword_27DF100C8, &qword_238774E88);
  v49 = v58;
  sub_23843981C(v47, v58, &qword_27DF100D8, &qword_238774E98);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100F0, &qword_238774EB0);
  sub_23843981C(v48, v49 + *(v50 + 48), &qword_27DF100C8, &qword_238774E88);
  sub_238439884(v6, &qword_27DF100C8, &qword_238774E88);
  sub_238439884(v44, &qword_27DF100D8, &qword_238774E98);
  sub_238439884(v48, &qword_27DF100C8, &qword_238774E88);
  sub_238439884(v47, &qword_27DF100D8, &qword_238774E98);
}

uint64_t sub_2385D22F8@<X0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100F8, &qword_238774EB8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v27[-v7];
  sub_23875ED50();
  v29 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_23875CE60();
  v31 = 1;
  sub_2385D26A8(&v45);
  v35 = *&v46[32];
  v36 = *&v46[48];
  v37 = *&v46[64];
  v38 = v46[80];
  v32 = v45;
  v33 = *v46;
  v34 = *&v46[16];
  v39[0] = v45;
  v39[1] = *v46;
  v39[2] = *&v46[16];
  v39[3] = *&v46[32];
  v39[4] = *&v46[48];
  v39[5] = *&v46[64];
  v40 = v46[80];
  sub_23843981C(&v32, v41, &qword_27DF10100, &qword_238774EC0);
  sub_238439884(v39, &qword_27DF10100, &qword_238774EC0);
  *&v30[55] = v35;
  *&v30[71] = v36;
  *&v30[87] = v37;
  *&v30[7] = v32;
  *&v30[23] = v33;
  v30[103] = v38;
  *&v30[39] = v34;
  v10 = v31;
  v28 = v31;
  v11 = sub_23875D790();
  sub_23875C3D0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_2385D2B0C(v8);
  sub_23843981C(v8, v5, &qword_27DF100F8, &qword_238774EB8);
  *(&v42[3] + 1) = *&v30[48];
  *(&v42[4] + 1) = *&v30[64];
  *(&v42[5] + 1) = *&v30[80];
  *(v42 + 1) = *v30;
  v41[0] = v9;
  v41[1] = 0;
  LOBYTE(v42[0]) = v10;
  *(&v42[6] + 1) = *&v30[96];
  *(&v42[1] + 1) = *&v30[16];
  *(&v42[2] + 1) = *&v30[32];
  LOBYTE(v43) = v11;
  *(&v43 + 1) = v13;
  *&v44[0] = v15;
  *(&v44[0] + 1) = v17;
  *&v44[1] = v19;
  BYTE8(v44[1]) = 0;
  v20 = v42[0];
  *a1 = v9;
  a1[1] = v20;
  v21 = v42[4];
  a1[4] = v42[3];
  a1[5] = v21;
  v22 = v42[6];
  a1[6] = v42[5];
  a1[7] = v22;
  v23 = v42[2];
  a1[2] = v42[1];
  a1[3] = v23;
  *(a1 + 153) = *(v44 + 9);
  v24 = v44[0];
  a1[8] = v43;
  a1[9] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10108, &qword_238774EC8);
  sub_23843981C(v5, a1 + *(v25 + 48), &qword_27DF100F8, &qword_238774EB8);
  sub_23843981C(v41, &v45, &qword_27DF10110, &qword_238774ED0);
  sub_238439884(v8, &qword_27DF100F8, &qword_238774EB8);
  sub_238439884(v5, &qword_27DF100F8, &qword_238774EB8);
  *&v46[49] = *&v30[48];
  *&v46[65] = *&v30[64];
  *&v46[81] = *&v30[80];
  *&v46[1] = *v30;
  *&v46[17] = *&v30[16];
  v45 = v9;
  v46[0] = v28;
  v47 = *&v30[96];
  *&v46[33] = *&v30[32];
  v48 = v11;
  v49 = v13;
  v50 = v15;
  v51 = v17;
  v52 = v19;
  v53 = 0;
  sub_238439884(&v45, &qword_27DF10110, &qword_238774ED0);
}

uint64_t sub_2385D26A8@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385D2840(&v9);
  v16[1] = v10;
  v14[1] = v10;
  v16[2] = v11;
  v16[3] = v12;
  v14[2] = v11;
  v14[3] = v12;
  v16[0] = v9;
  v14[0] = v9;
  v17 = v13;
  v8 = 1;
  v15 = v13;
  *&v7[7] = v9;
  v7[71] = v13;
  *&v7[55] = v12;
  *&v7[39] = v11;
  *&v7[23] = v10;
  v6[72] = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = *&v7[16];
  *(a1 + 9) = *v7;
  v3 = *&v7[32];
  v4 = *&v7[48];
  *(a1 + 73) = *&v7[64];
  *(a1 + 57) = v4;
  *(a1 + 41) = v3;
  *(a1 + 25) = v2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  sub_23843981C(v14, v6, &qword_27DF096E0, &qword_238763AD0);
  sub_238439884(v16, &qword_27DF096E0, &qword_238763AD0);
}

__n128 sub_2385D2840@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  type metadata accessor for PassLoader();
  sub_2385D4A74(&qword_27DF096B8, type metadata accessor for PassLoader);
  sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  if (v13)
  {
    v6 = v13;
    sub_23875E0C0();
    sub_23875E4A0();
    sub_23875C5C0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF096E8, &unk_238763B20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF096F0, &unk_238775090);
    sub_2384495FC();
    sub_238449760();
    sub_23875D1B0();

    v15 = v10;
    v16 = v11;
    v17 = v12;
    v13 = v8;
    v14 = v9;
  }

  else
  {
    sub_23875E020();
    swift_getKeyPath();
    sub_23875E4A0();
    sub_23875C5C0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF096E8, &unk_238763B20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF096F0, &unk_238775090);
    sub_2384495FC();
    sub_238449760();
    sub_23875D1B0();
  }

  *(a1 + 32) = v15;
  *(a1 + 48) = v16;
  *(a1 + 64) = v17;
  result = v14;
  *a1 = v13;
  *(a1 + 16) = v14;
  return result;
}

uint64_t sub_2385D2B0C@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = sub_23875C450();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10118, &qword_238774ED8);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10120, &qword_238774EE0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v56 = &v56 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10128, &qword_238774EE8);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - v22;
  *v14 = sub_23875CE60();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10130, &unk_238774EF0);
  sub_2385D3118(v1, &v14[*(v24 + 44)]);
  sub_23875E4A0();
  sub_23875C5C0();
  v25 = &v14[*(v11 + 44)];
  v26 = v59;
  *v25 = v58;
  *(v25 + 1) = v26;
  *(v25 + 2) = v60;
  sub_2385D1394(v9);
  (*(v3 + 104))(v6, *MEMORY[0x277CDF3D0], v2);
  LOBYTE(v11) = sub_23875C440();
  v27 = *(v3 + 8);
  v27(v6, v2);
  v27(v9, v2);
  v28 = objc_opt_self();
  v29 = &selRef_systemBackgroundColor;
  if ((v11 & 1) == 0)
  {
    v29 = &selRef_secondarySystemGroupedBackgroundColor;
  }

  v30 = [v28 *v29];
  v31 = sub_23875DFB0();
  v32 = sub_23875D780();
  v33 = v14;
  v34 = v56;
  sub_2384396E4(v33, v56, &qword_27DF10118, &qword_238774ED8);
  v35 = v34 + *(v16 + 44);
  *v35 = v31;
  *(v35 + 8) = v32;
  v36 = &v23[*(v20 + 44)];
  v37 = *(sub_23875C980() + 20);
  v38 = *MEMORY[0x277CE0118];
  v39 = sub_23875CF50();
  (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
  __asm { FMOV            V0.2D, #26.0 }

  *v36 = _Q0;
  *&v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)] = 256;
  sub_2384396E4(v34, v23, &qword_27DF10120, &qword_238774EE0);
  LOBYTE(v38) = sub_23875D7A0();
  sub_23875C3D0();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v57;
  sub_2384396E4(v23, v57, &qword_27DF10128, &qword_238774EE8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF100F8, &qword_238774EB8);
  v55 = v53 + *(result + 36);
  *v55 = v38;
  *(v55 + 8) = v46;
  *(v55 + 16) = v48;
  *(v55 + 24) = v50;
  *(v55 + 32) = v52;
  *(v55 + 40) = 0;
  return result;
}

uint64_t sub_2385D2F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  sub_23875ED50();
  v3[3] = sub_23875ED40();
  v5 = sub_23875ECE0();
  v3[4] = v5;
  v3[5] = v4;

  return MEMORY[0x2822009F8](sub_2385D2FEC, v5, v4);
}

uint64_t sub_2385D2FEC()
{
  v1 = v0[2];
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  type metadata accessor for PassLoader();
  sub_2385D4A74(&qword_27DF096B8, type metadata accessor for PassLoader);
  v0[6] = sub_23875C490();
  v5 = *v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23844728C;

  return sub_238517CC4(v5, 1911, 187.0, 121.0);
}

uint64_t sub_2385D3118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10138, &qword_238774F00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = sub_23875D030();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10140, &qword_238774F08);
  sub_2385D3308(a1, &v10[*(v11 + 44)]);
  v12 = sub_23875D7B0();
  sub_23875C3D0();
  v13 = &v10[*(v4 + 36)];
  *v13 = v12;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  sub_23843981C(v10, v7, &qword_27DF10138, &qword_238774F00);
  sub_23843981C(v7, a2, &qword_27DF10138, &qword_238774F00);
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10148, &qword_238774F10) + 48);
  *v18 = 0;
  *(v18 + 8) = 1;
  sub_238439884(v10, &qword_27DF10138, &qword_238774F00);
  sub_238439884(v7, &qword_27DF10138, &qword_238774F00);
}

uint64_t sub_2385D3308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a1;
  v98 = a2;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10150, &qword_238774F18);
  v94 = *(v95 - 8);
  v2 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v86 = &v85 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10158, &unk_238774F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v97 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v96 = &v85 - v8;
  v9 = sub_23875C450();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v85 - v15;
  v87 = sub_23875C980();
  v17 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F6D8, &qword_238773120);
  v20 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v22 = &v85 - v21;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10160, &qword_238774F30);
  v23 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v25 = &v85 - v24;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10168, &qword_238774F38);
  v26 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v93 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v85 - v29;
  MEMORY[0x28223BE20](v31);
  v91 = &v85 - v32;
  sub_23875ED50();
  v92 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = *(v87 + 20);
  v34 = *MEMORY[0x277CE0118];
  v35 = sub_23875CF50();
  (*(*(v35 - 8) + 104))(&v19[v33], v34, v35);
  __asm { FMOV            V0.2D, #3.0 }

  *v19 = _Q0;
  sub_2385D1394(v16);
  (*(v10 + 104))(v13, *MEMORY[0x277CDF3D0], v9);
  LOBYTE(v34) = sub_23875C440();
  v41 = *(v10 + 8);
  v41(v13, v9);
  v41(v16, v9);
  v42 = objc_opt_self();
  v43 = &selRef_systemGray4Color;
  if ((v34 & 1) == 0)
  {
    v43 = &selRef_tertiarySystemGroupedBackgroundColor;
  }

  v44 = [v42 *v43];
  v45 = sub_23875DFB0();
  sub_2385D4BF4(v19, v22, MEMORY[0x277CDFC08]);
  *&v22[*(v88 + 36)] = v45;
  sub_23875E4A0();
  sub_23875C5C0();
  sub_2384396E4(v22, v25, &qword_27DF0F6D8, &qword_238773120);
  v46 = &v25[*(v89 + 36)];
  v47 = v110;
  *v46 = v109;
  *(v46 + 1) = v47;
  *(v46 + 2) = v111;
  LOBYTE(v45) = sub_23875D790();
  sub_23875C3D0();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_2384396E4(v25, v30, &qword_27DF10160, &qword_238774F30);
  v56 = &v30[*(v90 + 36)];
  *v56 = v45;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  v57 = v91;
  sub_2384396E4(v30, v91, &qword_27DF10168, &qword_238774F38);
  v58 = sub_2385D3C5C();
  if (v59)
  {
    *&v107[0] = v58;
    *(&v107[0] + 1) = v59;
    sub_2384397A8();
    v60 = sub_23875DAA0();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    KeyPath = swift_getKeyPath();
    v68 = swift_getKeyPath();
    v106 = v64 & 1;
    v105 = 0;
    *&v100 = v60;
    *(&v100 + 1) = v62;
    LOBYTE(v101) = v64 & 1;
    *(&v101 + 1) = v66;
    *&v102 = KeyPath;
    *(&v102 + 1) = 1;
    LOBYTE(v103) = 0;
    *(&v103 + 1) = v68;
    v104 = 0x3FE0000000000000;
    sub_23875D850();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10178, &qword_238774FA8);
    sub_2385D4D38();
    v69 = v86;
    sub_23875DAF0();
    v107[3] = v103;
    v108 = v104;
    v107[1] = v101;
    v107[2] = v102;
    v107[0] = v100;
    sub_238439884(v107, &qword_27DF10178, &qword_238774FA8);
    v70 = swift_getKeyPath();
    v71 = &v69[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10198, &qword_238774FF8) + 36)];
    *v71 = v70;
    v71[8] = 1;
    LOBYTE(v70) = sub_23875D7A0();
    sub_23875C3D0();
    v72 = v95;
    v73 = &v69[*(v95 + 36)];
    *v73 = v70;
    *(v73 + 1) = v74;
    *(v73 + 2) = v75;
    *(v73 + 3) = v76;
    *(v73 + 4) = v77;
    v73[40] = 0;
    v78 = v69;
    v79 = v96;
    sub_2384396E4(v78, v96, &qword_27DF10150, &qword_238774F18);
    (*(v94 + 56))(v79, 0, 1, v72);
  }

  else
  {
    v79 = v96;
    (*(v94 + 56))(v96, 1, 1, v95);
  }

  v80 = v93;
  sub_23843981C(v57, v93, &qword_27DF10168, &qword_238774F38);
  v81 = v97;
  sub_23843981C(v79, v97, &qword_27DF10158, &unk_238774F20);
  v82 = v98;
  sub_23843981C(v80, v98, &qword_27DF10168, &qword_238774F38);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10170, &qword_238774F40);
  sub_23843981C(v81, v82 + *(v83 + 48), &qword_27DF10158, &unk_238774F20);
  sub_238439884(v79, &qword_27DF10158, &unk_238774F20);
  sub_238439884(v57, &qword_27DF10168, &qword_238774F38);
  sub_238439884(v81, &qword_27DF10158, &unk_238774F20);
  sub_238439884(v80, &qword_27DF10168, &qword_238774F38);
}

uint64_t sub_2385D3C5C()
{
  v0 = sub_238758090();
  v22 = *(v0 - 8);
  v1 = *(v22 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875BD20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E140, &unk_238775000);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v21 - v14;
  sub_23875BCD0();
  sub_23875BD10();
  v16 = *(v5 + 8);
  v16(v11, v4);
  v17 = sub_23875BD00();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    sub_238439884(v15, &qword_27DF0E140, &unk_238775000);
    return 0;
  }

  else
  {
    v21 = v0;
    sub_23875BCE0();
    (*(v18 + 8))(v15, v17);
    if (qword_27DF08D10 != -1)
    {
      swift_once();
    }

    sub_2387580A0();
    sub_23875BCC0();
    v20 = sub_238758080();
    v16(v8, v4);
    (*(v22 + 8))(v3, v21);
    return v20;
  }
}

uint64_t sub_2385D3F74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  *a2 = v5;
  return result;
}

uint64_t sub_2385D3FF4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_23875C2E0();
}

uint64_t sub_2385D406C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  *a2 = v5;
  return result;
}

uint64_t sub_2385D40EC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23875C2E0();
}

uint64_t sub_2385D4160@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23875CB20();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2385D41B8@<X0>(void *a1@<X8>)
{
  result = sub_23875CB90();
  *a1 = v3;
  return result;
}

uint64_t sub_2385D420C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v29 = a5;
  v30 = a6;
  v28 = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  v33 = a8;
  v34 = a9;
  v35 = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a4, a8);
  LOBYTE(a8) = *a3;
  v21 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel__isLoading;
  v31 = 0;
  sub_23875C290();
  (*(v16 + 32))(a7 + v21, v19, v15);
  v22 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_termsAndConditions;
  v23 = sub_23875A6C0();
  (*(*(v23 - 8) + 56))(a7 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_institution;
  v25 = sub_238757B60();
  (*(*(v25 - 8) + 32))(a7 + v24, a1, v25);
  *(a7 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_paymentPass) = v28;
  *(a7 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_flowType) = a8;
  sub_2385169F0(&v32, (a7 + OBJC_IVAR____TtC12FinanceKitUI38BankConnectTermsAndConditionsViewModel_bankConnectService));
  v26 = v30;
  *(a7 + 16) = v29;
  *(a7 + 24) = v26;
  return a7;
}

uint64_t get_enum_tag_for_layout_string_12FinanceKitUI35BankConnectTermsAndConditionsResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2385D4490(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2385D44EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void sub_2385D4574()
{
  sub_2385D4B20(319, &qword_27DF09EE8, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_238757B60();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_2385D4ABC(319, &qword_27DF10050, MEMORY[0x277CC7F18], MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2385D474C()
{
  sub_2385D4890();
  if (v0 <= 0x3F)
  {
    sub_2385D4B20(319, &qword_27DF0A0B0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_2385D4B20(319, &qword_27DF10078, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_2385D4ABC(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_23875C880();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2385D4890()
{
  if (!qword_27DF10068)
  {
    type metadata accessor for BankConnectTermsAndConditionsViewModel(255);
    sub_2385D4A74(&qword_27DF10070, type metadata accessor for BankConnectTermsAndConditionsViewModel);
    v0 = sub_23875C4B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF10068);
    }
  }
}

void sub_2385D496C()
{
  sub_2384AD48C();
  if (v0 <= 0x3F)
  {
    sub_2384491CC();
    if (v1 <= 0x3F)
    {
      sub_2385D4ABC(319, &qword_2814F09B0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2385D4B20(319, &qword_27DF100A0, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2385D4A74(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2385D4ABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2385D4B20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2385D4B8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385D4BF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385D4C5C()
{
  v2 = *(type metadata accessor for BankConnectTermsAndConditionsHeroView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2384494A4;

  return sub_2385D2F54(v4, v5, v0 + v3);
}

unint64_t sub_2385D4D38()
{
  result = qword_27DF10180;
  if (!qword_27DF10180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10178, &qword_238774FA8);
    sub_23843A174();
    sub_23843A3E8(&qword_27DF10188, &qword_27DF10190, &qword_238774FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10180);
  }

  return result;
}

void sub_2385D4DF0(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_2385D4E00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10038, &qword_238774BF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2385D4E70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238449A7C;

  return sub_2385CC5CC(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_19()
{
  v1 = type metadata accessor for BankConnectTermsAndConditionsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = *(v0 + v4 + 16);
  sub_2383FC164();
  v9 = *(v0 + v4 + 32);

  v10 = *(v0 + v4 + 48);

  v11 = *(v0 + v4 + 64);

  v12 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C880();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  v15 = *(v1 + 36);
  v16 = sub_23875C880();
  (*(*(v16 - 8) + 8))(v5 + v15, v16);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_2385D50A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for BankConnectTermsAndConditionsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2385CDC04(a1, v6, a2);
}

unint64_t sub_2385D5134()
{
  result = qword_27DF101D8;
  if (!qword_27DF101D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF101C8, &qword_238775118);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF101E0, &qword_238775120);
    sub_2385D51F4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF101D8);
  }

  return result;
}

unint64_t sub_2385D51F4()
{
  result = qword_27DF101E8;
  if (!qword_27DF101E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF101E0, &qword_238775120);
    sub_2385D5280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF101E8);
  }

  return result;
}

unint64_t sub_2385D5280()
{
  result = qword_27DF101F0;
  if (!qword_27DF101F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF101F8, &qword_238775128);
    sub_23843A3E8(&qword_27DF10200, &qword_27DF10208, &unk_238775130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF101F0);
  }

  return result;
}

uint64_t sub_2385D5338@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BankConnectTermsAndConditionsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2385CF530(v4, a1);
}

unint64_t sub_2385D53A8()
{
  result = qword_27DF10218;
  if (!qword_27DF10218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10210, &qword_238775140);
    sub_2385D4A74(&qword_27DF10220, type metadata accessor for BankConnectTermsAndConditionsWebView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10218);
  }

  return result;
}

uint64_t sub_2385D545C(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for BankConnectTermsAndConditionsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2385CFD24(a1, a2, v6);
}

unint64_t sub_2385D54DC()
{
  result = qword_27DF10228;
  if (!qword_27DF10228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF101B0, &qword_238775108);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF101A8, &qword_238775100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10210, &qword_238775140);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF101A0, &qword_2387750F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF101C8, &qword_238775118);
    sub_23843A3E8(&qword_27DF101D0, &qword_27DF101A0, &qword_2387750F8);
    sub_2385D5134();
    swift_getOpaqueTypeConformance2();
    sub_2385D53A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10228);
  }

  return result;
}

unint64_t sub_2385D566C()
{
  result = qword_27DF10230;
  if (!qword_27DF10230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10230);
  }

  return result;
}

uint64_t sub_2385D56C0()
{
  v1 = *(type metadata accessor for BankConnectTermsAndConditionsView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_2385CFDF8(v2);
}

uint64_t sub_2385D5720()
{
  v1 = *(type metadata accessor for BankConnectTermsAndConditionsView(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_2385CF9B4(v2, v3, v4);
}

uint64_t sub_2385D5820()
{
  v1 = *(type metadata accessor for BankConnectTermsAndConditionsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_2385D0AAC();
}

unint64_t sub_2385D587C()
{
  result = qword_27DF102C8;
  if (!qword_27DF102C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF102A0, &qword_2387751D8);
    sub_2385D4A74(&qword_27DF102D0, type metadata accessor for BankConnectTermsAndConditionsHeroView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF102C8);
  }

  return result;
}

unint64_t sub_2385D5938()
{
  result = qword_27DF102D8;
  if (!qword_27DF102D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08E48, &qword_238761CD0);
    sub_2385D59F0();
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF102D8);
  }

  return result;
}

unint64_t sub_2385D59F0()
{
  result = qword_27DF102E0;
  if (!qword_27DF102E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF100A8, &qword_238774E50);
    sub_2385D5AA8();
    sub_23843A3E8(&qword_27DF10300, &qword_27DF10308, &qword_238775248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF102E0);
  }

  return result;
}

unint64_t sub_2385D5AA8()
{
  result = qword_27DF102E8;
  if (!qword_27DF102E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF100C0, &qword_238774E68);
    sub_23843A3E8(&qword_27DF102F0, &qword_27DF102F8, &qword_238775240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF102E8);
  }

  return result;
}

double sub_2385D5B64@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v18 = *(v1 + 1);
  v19 = v1[3];
  v16 = *(v1 + 1);
  v17 = v1[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BC0, &qword_2387645B0);
  sub_23875E1D0();
  v12 = v23;
  v16 = *(v1 + 2);
  v17 = v1[6];
  v13 = v22;
  v14 = *(v1 + 2);
  v15 = v1[6];
  sub_23875E1D0();
  v11 = v22;
  v4 = v23;
  v21 = BYTE8(v23);
  v20 = BYTE8(v23);
  v5 = swift_allocObject();
  v6 = *(v1 + 1);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v1 + 2);
  *(v5 + 64) = v1[6];
  v7 = v21;
  v8 = v20;
  v22 = v16;
  *&v23 = v17;

  sub_23843981C(&v18, &v14, &qword_27DF09BC0, &qword_2387645B0);
  sub_23843981C(&v16, &v14, &qword_27DF09BC0, &qword_2387645B0);
  sub_23875E1B0();
  sub_23875E4A0();
  sub_23875C5C0();
  *a1 = v3;
  *(a1 + 8) = v13;
  *(a1 + 24) = v12;
  *(a1 + 32) = v7;
  *(a1 + 40) = v11;
  *(a1 + 56) = v4;
  *(a1 + 64) = v8;
  *(a1 + 72) = sub_2385D5D78;
  *(a1 + 80) = 0;
  *(a1 + 88) = sub_2385D8314;
  *(a1 + 96) = v5;
  v9 = v23;
  *(a1 + 104) = v22;
  *(a1 + 120) = v9;
  result = v24[0];
  *(a1 + 136) = *v24;
  return result;
}

uint64_t sub_2385D5D78@<X0>(void *a1@<X8>)
{
  result = sub_23875C630();
  *a1 = v3;
  return result;
}

uint64_t sub_2385D5DA4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BC0, &qword_2387645B0);
  sub_23875E1C0();
}

void sub_2385D5E84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23875AC40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v35 - v11;
  v13 = *v1;
  v14 = *(*v1 + 16);
  if (v14)
  {
    v35[0] = v35 - v11;
    v35[1] = a1;
    v36 = v1;
    *v42 = MEMORY[0x277D84F90];
    sub_23875F4E0();
    sub_23875ED50();
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = v13 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v37 = *(v15 + 56);
    v38 = v16;
    do
    {
      v38(v8, v17, v4);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_23875AC10();
      sub_23875EEC0();
      (*(v15 - 8))(v8, v4);

      sub_23875F4C0();
      v18 = *(*v42 + 16);
      sub_23875F4F0();
      sub_23875F500();
      sub_23875F4D0();
      v17 += v37;
      --v14;
    }

    while (v14);
    v2 = v36;
    v12 = v35[0];
  }

  v19 = sub_23875B940();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v12, 1, 1, v19);
  sub_2385D8274();
  v21 = sub_23875EC60();

  v22 = 0;
  if ((*(v20 + 48))(v12, 1, v19) != 1)
  {
    v22 = sub_23875B860();
    (*(v20 + 8))(v12, v19);
  }

  v23 = [objc_allocWithZone(type metadata accessor for OrderLinkedAppViewIOS.LinkedApplication()) initWithStoreIDs:v21 defaultLaunchURL:v22];

  if (v23)
  {
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF103F8, &unk_238775468);
    sub_23875D600();
    v25 = *v42;
    [v24 addObserver_];

    v26 = [objc_allocWithZone(MEMORY[0x277D38B48]) initWithLinkedApplication_];
    v27 = objc_opt_self();
    v28 = v26;
    v29 = [v27 clearColor];
    [v28 setBackgroundColor_];

    [v28 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_23875D600();
    v30 = *v42;
    [v28 setDelegate_];

    *v42 = *(v2 + 1);
    *&v42[9] = *(v2 + 17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF103F0, &unk_238775458);
    MEMORY[0x23EE62DC0](&v40);
    v31 = v40;
    if (v41)
    {
      v31 = INFINITY;
    }

    [v28 sizeThatFits_];
    v32 = v2[5];
    v33 = v2[7];
    *&v42[8] = v2[6];
    *&v42[16] = v33;
    v42[24] = *(v2 + 64);
    v43 = v32;
    *v42 = v32;
    v40 = v34;
    v41 = 0;
    sub_2385B2CA0(&v43, v39);

    sub_23875E2F0();

    sub_2385BBC90(&v43);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2385D63A4(void *a1)
{
  v8[0] = *(v1 + 8);
  *(v8 + 9) = *(v1 + 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF103F0, &unk_238775458);
  MEMORY[0x23EE62DC0](&v6);
  v3 = v6;
  if (v7)
  {
    v3 = INFINITY;
  }

  [a1 sizeThatFits_];
  v8[0] = *(v1 + 40);
  *(v8 + 9) = *(v1 + 49);
  v6 = v4;
  v7 = 0;
  return sub_23875E2F0();
}

void sub_2385D645C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10408, &qword_238775478);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v32 - v16;
  if (a1)
  {
    v18 = [a1 storeIdentifier];
    if (v18)
    {
      v34 = v18;
      v19 = v18;
      sub_2385D6884(&v34, v1, v17);
    }

    else
    {
      v20 = sub_23875AC40();
      (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
    }

    v33 = a1;
    sub_23843981C(v17, v13, &qword_27DF10408, &qword_238775478);
    v21 = sub_23875AC40();
    v22 = *(v21 - 8);
    v23 = *(v22 + 48);
    if (v23(v13, 1, v21) == 1)
    {
      sub_238439884(v13, &qword_27DF10408, &qword_238775478);
      v24 = sub_23875B940();
      (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
      v25 = 0;
    }

    else
    {
      sub_23875AC30();
      (*(v22 + 8))(v13, v21);
      v26 = sub_23875B940();
      v27 = *(v26 - 8);
      v25 = 0;
      if ((*(v27 + 48))(v6, 1, v26) != 1)
      {
        v25 = sub_23875B860();
        (*(v27 + 8))(v6, v26);
      }
    }

    v28 = v33;
    [v33 setDefaultLaunchURL_];

    sub_23843981C(v17, v10, &qword_27DF10408, &qword_238775478);
    if (v23(v10, 1, v21) == 1)
    {
      sub_238439884(v10, &qword_27DF10408, &qword_238775478);
    }

    else
    {
      sub_23875AC20();
      v30 = v29;
      (*(v22 + 8))(v10, v21);
      if (v30)
      {
        v31 = sub_23875EA50();

LABEL_14:
        [v28 setCustomProductPageIdentifier_];

        sub_238439884(v17, &qword_27DF10408, &qword_238775478);
        return;
      }
    }

    v31 = 0;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_2385D6884@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = sub_23875AC40();
  v7 = *(v25 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v25);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  sub_23875ED50();
  v20 = sub_23875ED40();
  sub_23875ECE0();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v12 = *(a2 + OBJC_IVAR____TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS11Coordinator_parent);
  v23 = *(v12 + 16);
  if (v23)
  {
    v18 = a3;
    v19 = v3;
    v13 = 0;
    v22 = v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v21 = v7 + 16;
    while (v13 < *(v12 + 16))
    {
      (*(v7 + 16))(v10, v22 + *(v7 + 72) * v13, v25);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v14 = sub_23875AC10();
      v15 = [v24 integerValue];

      if (v14 == v15)
      {
        a3 = v18;
        (*(v7 + 32))(v18, v10, v25);
        v16 = 0;
        goto LABEL_13;
      }

      ++v13;
      result = (*(v7 + 8))(v10, v25);
      if (v23 == v13)
      {
        v16 = 1;
        a3 = v18;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = 1;
LABEL_13:
    (*(v7 + 56))(a3, v16, 1, v25);
  }

  return result;
}

uint64_t sub_2385D6C10(void *a1)
{
  v10 = *(v1 + OBJC_IVAR____TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS11Coordinator_parent + 40);
  v3 = *(v1 + OBJC_IVAR____TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS11Coordinator_parent + 56);
  v4 = *(v1 + OBJC_IVAR____TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS11Coordinator_parent + 64);
  v5 = *(v1 + OBJC_IVAR____TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS11Coordinator_parent + 24);
  v6 = *(v1 + OBJC_IVAR____TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS11Coordinator_parent + 32);
  v14 = *(v1 + OBJC_IVAR____TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS11Coordinator_parent + 8);
  v15 = v5;
  v16 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF103F0, &unk_238775458);
  MEMORY[0x23EE62DC0](&v12);
  v7 = v12;
  if (v13)
  {
    v7 = INFINITY;
  }

  [a1 sizeThatFits_];
  v14 = v11;
  v15 = v3;
  v16 = v4;
  v12 = v8;
  v13 = 0;
  return sub_23875E2F0();
}

void sub_2385D6EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v29 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v9 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_238763300;
  v11 = *MEMORY[0x277D383D8];
  *(v10 + 32) = *MEMORY[0x277D383D8];
  v12 = *MEMORY[0x277D38428];
  *(v10 + 40) = sub_23875EA80();
  *(v10 + 48) = v13;
  v14 = *MEMORY[0x277D38390];
  *(v10 + 56) = *MEMORY[0x277D38390];
  *(v10 + 64) = 0x746E61686372656DLL;
  v15 = *MEMORY[0x277D384B8];
  *(v10 + 72) = 0xEB00000000707041;
  *(v10 + 80) = v15;
  strcpy((v10 + 88), "orderDetails");
  *(v10 + 101) = 0;
  *(v10 + 102) = -5120;
  v16 = v11;
  v17 = v14;
  v18 = v15;
  v19 = sub_23854B138(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v19;
  sub_2385C33E4(v9, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v32);

  v21 = *MEMORY[0x277D38548];
  v22 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v23 = sub_23875E910();

  [v22 subject:v21 sendEvent:v23];

  sub_23843981C(a3, v7, &qword_27DF0D040, &qword_2387676A0);
  v24 = sub_23875B940();
  v25 = *(v24 - 8);
  v26 = 0;
  if ((*(v25 + 48))(v7, 1, v24) != 1)
  {
    v26 = sub_23875B860();
    (*(v25 + 8))(v7, v24);
  }

  v27 = type metadata accessor for OrderLinkedAppViewIOS.LinkedApplication();
  v31.receiver = v28;
  v31.super_class = v27;
  objc_msgSendSuper2(&v31, sel_openApplication_withLaunchOptions_launchURL_, v29, v30, v26);
}

id sub_2385D7498(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  if (a1)
  {
    sub_2385D8274();
    v10 = sub_23875EC60();
  }

  else
  {
    v10 = 0;
  }

  sub_23843981C(a2, v9, &qword_27DF0D040, &qword_2387676A0);
  v11 = sub_23875B940();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    v13 = sub_23875B860();
    (*(v12 + 8))(v9, v11);
  }

  v14 = type metadata accessor for OrderLinkedAppViewIOS.LinkedApplication();
  v18.receiver = v3;
  v18.super_class = v14;
  v15 = objc_msgSendSuper2(&v18, sel_initWithStoreIDs_defaultLaunchURL_, v10, v13);

  v16 = v15;
  sub_238439884(a2, &qword_27DF0D040, &qword_2387676A0);
  if (v16)
  {
  }

  return v16;
}

id sub_2385D777C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  if (a1)
  {
    sub_2385D8274();
    v12 = sub_23875EC60();

    if (a2)
    {
LABEL_3:
      v13 = sub_23875EC60();

      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  sub_23843981C(a3, v11, &qword_27DF0D040, &qword_2387676A0);
  v14 = sub_23875B940();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v11, 1, v14) != 1)
  {
    v16 = sub_23875B860();
    (*(v15 + 8))(v11, v14);
  }

  v17 = type metadata accessor for OrderLinkedAppViewIOS.LinkedApplication();
  v21.receiver = v4;
  v21.super_class = v17;
  v18 = objc_msgSendSuper2(&v21, sel_initWithStoreIDs_systemAppBundleIdentifiers_defaultLaunchURL_, v12, v13, v16);

  v19 = v18;
  sub_238439884(a3, &qword_27DF0D040, &qword_2387676A0);
  if (v19)
  {
  }

  return v19;
}

id sub_2385D7ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  if (a1)
  {
    v12 = sub_23875EC60();

    if (a2)
    {
LABEL_3:
      sub_2385D8274();
      v13 = sub_23875EC60();

      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  sub_23843981C(a3, v11, &qword_27DF0D040, &qword_2387676A0);
  v14 = sub_23875B940();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v11, 1, v14) != 1)
  {
    v16 = sub_23875B860();
    (*(v15 + 8))(v11, v14);
  }

  v17 = type metadata accessor for OrderLinkedAppViewIOS.LinkedApplication();
  v21.receiver = v4;
  v21.super_class = v17;
  v18 = objc_msgSendSuper2(&v21, sel_initWithApplicationIdentifiers_storeIDs_defaultLaunchURL_, v12, v13, v16);

  v19 = v18;
  sub_238439884(a3, &qword_27DF0D040, &qword_2387676A0);
  if (v19)
  {
  }

  return v19;
}

id sub_2385D7E58(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2385D7EE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_2385D7F28(uint64_t result, int a2, int a3)
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
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2385D7FB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v1 + 64);
  v2 = *v1;
  v3 = v1[1];
  sub_2385D5E84(a1);
}

uint64_t sub_2385D7FFC(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 64);
  v3 = *v1;
  v4 = v1[1];
  return sub_2385D63A4(a1);
}

id sub_2385D8040@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v17 = v1[3];
  v18 = *(v1 + 64);
  v4 = *v1;
  v15 = v1[1];
  v16 = v3;
  v14 = v4;
  v5 = type metadata accessor for OrderLinkedAppViewIOS.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS11Coordinator_parent];
  *v7 = v14;
  v8 = v17;
  v10 = v15;
  v9 = v16;
  v7[64] = v18;
  *(v7 + 2) = v9;
  *(v7 + 3) = v8;
  *(v7 + 1) = v10;
  sub_2385D823C(&v14, v13);
  v12.receiver = v6;
  v12.super_class = v5;
  result = objc_msgSendSuper2(&v12, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_2385D80F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2385D82C0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_2385D8158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2385D82C0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2385D81BC()
{
  sub_2385D82C0();
  sub_23875D120();
  __break(1u);
}

unint64_t sub_2385D81E8()
{
  result = qword_27DF103E8;
  if (!qword_27DF103E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF103E8);
  }

  return result;
}

unint64_t sub_2385D8274()
{
  result = qword_27DF0B0A0;
  if (!qword_27DF0B0A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF0B0A0);
  }

  return result;
}

unint64_t sub_2385D82C0()
{
  result = qword_27DF10400;
  if (!qword_27DF10400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10400);
  }

  return result;
}

unint64_t sub_2385D831C()
{
  result = qword_27DF10410;
  if (!qword_27DF10410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10418, &qword_238775480);
    sub_2385D83A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10410);
  }

  return result;
}

unint64_t sub_2385D83A8()
{
  result = qword_27DF10420;
  if (!qword_27DF10420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10428, &qword_238775488);
    sub_2385D81E8();
    sub_2385D8434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10420);
  }

  return result;
}

unint64_t sub_2385D8434()
{
  result = qword_27DF10430;
  if (!qword_27DF10430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10438, &unk_238775490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10430);
  }

  return result;
}

uint64_t sub_2385D8500()
{
  result = type metadata accessor for OrderDetailsShippingTracking.ViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2385D8594()
{
  sub_2385D87D0(319, &qword_27DF10460, type metadata accessor for OrderProviderLogoButton.ViewModel, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23875B940();
    if (v1 <= 0x3F)
    {
      sub_23875AD80();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2385D86C8()
{
  type metadata accessor for OrderProviderLogoButton.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2385DF1F8(319, &qword_27DF0AB68, &qword_27DF09540, &unk_238763800, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_2385D87D0(319, &qword_27DF0B130, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2385D87D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2385D885C()
{
  result = sub_23875B940();
  if (v1 <= 0x3F)
  {
    result = sub_23875AF90();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2385D88F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875D990();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385DED64(a1, a2, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
  v9 = type metadata accessor for OrderDetailsShippingTracking_iOS(0);
  v10 = v9[5];
  v17[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  *(a2 + v10) = v18;
  v11 = v9[6];
  *&v18 = 0x4051800000000000;
  v12 = *MEMORY[0x277CE0AA0];
  v13 = *(v5 + 104);
  v13(v8, v12, v4);
  sub_23845A940();
  sub_23875C540();
  v14 = v9[7];
  *&v18 = 0x402C000000000000;
  v13(v8, v12, v4);
  sub_23875C540();
  v15 = v9[8];
  *&v18 = 0x4010000000000000;
  v13(v8, v12, v4);
  return sub_23875C540();
}

uint64_t sub_2385D8AF0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385DEDEC(v1, v6, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
  return sub_2385D88F4(v6, a1);
}

uint64_t sub_2385D8B8C(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_23875F630() & 1) != 0)
  {
    v7 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v7 || (sub_23875F630() & 1) != 0)
    {
      v8 = *(a3 + 24);
      if (sub_23875B890())
      {
        v9 = *(a3 + 28);

        JUMPOUT(0x23EE5FA60);
      }
    }
  }

  return 0;
}

void sub_2385D8C60(uint64_t a1)
{
  v2 = sub_23875C6D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1 + *(type metadata accessor for OrderProviderLogoButton(0) + 32);
  sub_2384D51B0(v6);
  v8 = *(type metadata accessor for OrderProviderLogoButton.ViewModel(0) + 24);
  sub_23875C6A0();
  (*(v3 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v10 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_238763300;
  v12 = *MEMORY[0x277D383D8];
  *(v11 + 32) = *MEMORY[0x277D383D8];
  v13 = *MEMORY[0x277D38428];
  *(v11 + 40) = sub_23875EA80();
  *(v11 + 48) = v14;
  v15 = *MEMORY[0x277D38390];
  *(v11 + 56) = *MEMORY[0x277D38390];
  strcpy((v11 + 64), "goToPlatform");
  v16 = *MEMORY[0x277D384B8];
  *(v11 + 77) = 0;
  *(v11 + 78) = -5120;
  *(v11 + 80) = v16;
  strcpy((v11 + 88), "orderDetails");
  *(v11 + 101) = 0;
  *(v11 + 102) = -5120;
  v17 = v12;
  v18 = v15;
  v19 = v16;
  v20 = sub_23854B138(v11);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v20;
  sub_2385C33E4(v10, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v26);

  v22 = *MEMORY[0x277D38548];
  v23 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2385DEEA8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v24 = sub_23875E910();

  [v23 subject:v22 sendEvent:v24];
}

uint64_t sub_2385D9038@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *a1;
  v4 = *(a1 + 1);
  v7 = *(a1 + 2);
  v6 = *(a1 + 3);
  v8 = *(type metadata accessor for OrderProviderLogoButton.ViewModel(0) + 28);
  v9 = type metadata accessor for OrderProviderLogo(0);
  v10 = v9[6];
  v11 = sub_23875AF90();
  (*(*(v11 - 8) + 16))(&a2[v10], &a1[v8], v11);
  v12 = type metadata accessor for OrderProviderLogoButton(0);
  v13 = *&a1[v12[5]];
  v14 = *&a1[v12[6]];
  v15 = &a1[v12[7]];
  v24 = *v15;
  v25 = *(v15 + 2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB80, &qword_238766950);
  sub_23875E310();
  *a2 = v5;
  *(a2 + 1) = v4;
  *(a2 + 2) = v7;
  *(a2 + 3) = v6;
  *&a2[v9[7]] = v13;
  *&a2[v9[8]] = v14;
  v16 = &a2[v9[9]];
  *v16 = v22;
  *(v16 + 2) = v23;
  v17 = &a2[v9[10]];
  *v17 = swift_getKeyPath();
  v17[40] = 0;
  v18 = &a2[v9[11]];
  *v18 = swift_getKeyPath();
  v18[40] = 0;
  v19 = v9[12];
  *&a2[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v20 = v9[13];
  *&a2[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_2385D9284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v4 = sub_23875C950();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10490, &qword_2387755F8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v20 - v15;
  sub_2385DEDEC(v2, v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderProviderLogoButton);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  sub_2385DED64(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for OrderProviderLogoButton);
  v21 = v2;
  type metadata accessor for OrderProviderLogo(0);
  sub_2385DEEA8(&qword_27DF10498, type metadata accessor for OrderProviderLogo);
  sub_23875E200();
  sub_23875C940();
  sub_23843A3E8(&qword_27DF104A0, &qword_27DF10490, &qword_2387755F8);
  sub_2385DEEA8(&qword_27DF0A778, MEMORY[0x277CDDB18]);
  sub_23875DB30();
  (*(v5 + 8))(v8, v4);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_2385D95F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v63 = type metadata accessor for TrackShipmentButton(0);
  v3 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v5 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10510, &qword_238775830);
  v6 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v64 = v54 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10518, &qword_238775838);
  v8 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v55 = (v54 - v9);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10520, &qword_238775840);
  v10 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v60 = v54 - v11;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10528, &qword_238775848);
  v12 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v56 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = v54 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10530, &qword_238775850);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v61 = v54 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5E0, &qword_23876D620);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v54 - v21;
  v23 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v2;
  sub_23843981C(v2, v22, &qword_27DF0D5E0, &qword_23876D620);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_238439884(v22, &qword_27DF0D5E0, &qword_23876D620);
    v29 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
    v30 = *(v29 + 20);
    v31 = sub_23875B940();
    (*(*(v31 - 8) + 16))(v5, v28 + v30, v31);
    v32 = *(v29 + 24);
    v33 = v63;
    v34 = *(v63 + 20);
    v35 = sub_23875AD80();
    (*(*(v35 - 8) + 16))(&v5[v34], v28 + v32, v35);
    v36 = *(v33 + 24);
    *&v5[v36] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
    swift_storeEnumTagMultiPayload();
    v37 = &v5[*(v33 + 28)];
    *v37 = swift_getKeyPath();
    v37[8] = 0;
    sub_2385DEDEC(v5, v64, type metadata accessor for TrackShipmentButton);
    swift_storeEnumTagMultiPayload();
    sub_2385DF674();
    sub_2385DEEA8(&qword_27DF10550, type metadata accessor for TrackShipmentButton);
    sub_23875D1B0();
    v38 = type metadata accessor for TrackShipmentButton;
    v39 = v5;
  }

  else
  {
    v54[1] = v16;
    sub_2385DED64(v22, v27, type metadata accessor for OrderProviderLogoButton.ViewModel);
    v68 = *(v2 + *(type metadata accessor for OrderDetailsShippingTracking_iOS(0) + 20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A120, &qword_2387758B0);
    sub_23875E1B0();
    if (v67)
    {
      v40 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10560, &qword_2387758C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_238763B60;
      v42 = sub_23875D740();
      *(inited + 32) = v42;
      v43 = sub_23875D760();
      *(inited + 33) = v43;
      v44 = sub_23875D750();
      sub_23875D750();
      if (sub_23875D750() != v42)
      {
        v44 = sub_23875D750();
      }

      sub_23875D750();
      if (sub_23875D750() != v43)
      {
        v44 = sub_23875D750();
      }

      v45 = v64;
      v46 = v56;
      *v56 = v44;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10568, &qword_2387758C8);
      sub_2385D9F28(v2, v40, v46 + *(v47 + 44));
      v48 = v57;
      sub_2384396E4(v46, v57, &qword_27DF10528, &qword_238775848);
      sub_23843981C(v48, v60, &qword_27DF10528, &qword_238775848);
      swift_storeEnumTagMultiPayload();
      sub_23843A3E8(&qword_27DF10540, &qword_27DF10528, &qword_238775848);
      sub_23843A3E8(&qword_27DF10548, &qword_27DF10518, &qword_238775838);
      v49 = v61;
      sub_23875D1B0();
      sub_238439884(v48, &qword_27DF10528, &qword_238775848);
    }

    else
    {
      v50 = sub_23875CE60();
      v51 = v55;
      *v55 = v50;
      *(v51 + 8) = 0;
      *(v51 + 16) = 1;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10558, &qword_2387758B8);
      sub_2385DB450(v28, v27, v51 + *(v52 + 44));
      sub_23843981C(v51, v60, &qword_27DF10518, &qword_238775838);
      swift_storeEnumTagMultiPayload();
      sub_23843A3E8(&qword_27DF10540, &qword_27DF10528, &qword_238775848);
      sub_23843A3E8(&qword_27DF10548, &qword_27DF10518, &qword_238775838);
      v49 = v61;
      sub_23875D1B0();
      sub_238439884(v51, &qword_27DF10518, &qword_238775838);
      v45 = v64;
      v40 = v27;
    }

    sub_23843981C(v49, v45, &qword_27DF10530, &qword_238775850);
    swift_storeEnumTagMultiPayload();
    sub_2385DF674();
    sub_2385DEEA8(&qword_27DF10550, type metadata accessor for TrackShipmentButton);
    sub_23875D1B0();
    sub_238439884(v49, &qword_27DF10530, &qword_238775850);
    v38 = type metadata accessor for OrderProviderLogoButton.ViewModel;
    v39 = v40;
  }

  return sub_2385DF5F4(v39, v38);
}

uint64_t sub_2385D9F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10570, &qword_2387758D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10578, &qword_2387758D8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10580, &qword_2387758E0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v34 - v23;
  sub_23875ED50();
  v36 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v24 = sub_23875CE60();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10588, &qword_2387758E8);
  sub_2385DA324(a1, a2, &v24[*(v25 + 44)]);
  *v17 = sub_23875D030();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10590, &qword_2387758F0);
  sub_2385DA8E0(a1, a2, &v17[*(v26 + 44)]);
  *v10 = sub_23875D030();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10598, &qword_2387758F8);
  sub_2385DAF90(a1, a2, &v10[*(v27 + 44)]);
  sub_23843981C(v24, v21, &qword_27DF10580, &qword_2387758E0);
  v28 = v21;
  v34 = v21;
  sub_23843981C(v17, v14, &qword_27DF10578, &qword_2387758D8);
  v29 = v35;
  sub_23843981C(v10, v35, &qword_27DF10570, &qword_2387758D0);
  v30 = v28;
  v31 = v37;
  sub_23843981C(v30, v37, &qword_27DF10580, &qword_2387758E0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF105A0, &qword_238775900);
  sub_23843981C(v14, v31 + *(v32 + 48), &qword_27DF10578, &qword_2387758D8);
  sub_23843981C(v29, v31 + *(v32 + 64), &qword_27DF10570, &qword_2387758D0);
  sub_238439884(v10, &qword_27DF10570, &qword_2387758D0);
  sub_238439884(v17, &qword_27DF10578, &qword_2387758D8);
  sub_238439884(v24, &qword_27DF10580, &qword_2387758E0);
  sub_238439884(v29, &qword_27DF10570, &qword_2387758D0);
  sub_238439884(v14, &qword_27DF10578, &qword_2387758D8);
  sub_238439884(v34, &qword_27DF10580, &qword_2387758E0);
}

uint64_t sub_2385DA324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32[0] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF105B0, &qword_238775910);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v32 - v10;
  v12 = type metadata accessor for TrackShipmentButton(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v32 - v17;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v20 = *(v19 + 20);
  v21 = sub_23875B940();
  (*(*(v21 - 8) + 16))(v18, a1 + v20, v21);
  v22 = *(v19 + 24);
  v23 = v12[5];
  v24 = sub_23875AD80();
  (*(*(v24 - 8) + 16))(&v18[v23], a1 + v22, v24);
  v25 = v12[6];
  *&v18[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
  v26 = &v18[v12[7]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  LODWORD(v26) = *(type metadata accessor for OrderDetailsShippingTracking_iOS(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F18, &unk_2387756C0);
  sub_23875C550();
  v27 = v32[1];
  *v11 = sub_23875CE60();
  *(v11 + 1) = v27;
  v11[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF105B8, &qword_238775918);
  sub_2385DAC8C(a1, v32[0], &v11[*(v28 + 44)]);
  sub_2385DEDEC(v18, v15, type metadata accessor for TrackShipmentButton);
  sub_23843981C(v11, v8, &qword_27DF105B0, &qword_238775910);
  sub_2385DEDEC(v15, a3, type metadata accessor for TrackShipmentButton);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF105D0, &qword_238775930);
  v30 = a3 + *(v29 + 48);
  *v30 = 0;
  *(v30 + 8) = 1;
  sub_23843981C(v8, a3 + *(v29 + 64), &qword_27DF105B0, &qword_238775910);
  sub_238439884(v11, &qword_27DF105B0, &qword_238775910);
  sub_2385DF5F4(v18, type metadata accessor for TrackShipmentButton);
  sub_238439884(v8, &qword_27DF105B0, &qword_238775910);
  sub_2385DF5F4(v15, type metadata accessor for TrackShipmentButton);
}

uint64_t sub_2385DA6E4@<X0>(uint64_t a1@<X8>)
{
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  LOBYTE(v4) = v10;
  sub_23875D930();
  v11 = sub_23875DA60();
  v13 = v12;
  v15 = v14;

  sub_2384397FC(v7, v9, v4 & 1);

  sub_23875D440();
  v16 = sub_23875DA20();
  v18 = v17;
  LOBYTE(v4) = v19;
  v21 = v20;
  sub_2384397FC(v11, v13, v15 & 1);

  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v21;
  return result;
}

uint64_t sub_2385DA8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31[0] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF105B0, &qword_238775910);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v31 - v10;
  v12 = type metadata accessor for TrackShipmentButton(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v31 - v17;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v20 = *(v19 + 20);
  v21 = sub_23875B940();
  (*(*(v21 - 8) + 16))(v18, a1 + v20, v21);
  v22 = *(v19 + 24);
  v23 = v12[5];
  v24 = sub_23875AD80();
  (*(*(v24 - 8) + 16))(&v18[v23], a1 + v22, v24);
  v25 = v12[6];
  *&v18[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
  v26 = &v18[v12[7]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  LODWORD(v26) = *(type metadata accessor for OrderDetailsShippingTracking_iOS(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F18, &unk_2387756C0);
  sub_23875C550();
  v27 = v31[1];
  *v11 = sub_23875CE60();
  *(v11 + 1) = v27;
  v11[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF105B8, &qword_238775918);
  sub_2385DAC8C(a1, v31[0], &v11[*(v28 + 44)]);
  sub_2385DEDEC(v18, v15, type metadata accessor for TrackShipmentButton);
  sub_23843981C(v11, v8, &qword_27DF105B0, &qword_238775910);
  sub_2385DEDEC(v15, a3, type metadata accessor for TrackShipmentButton);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF105C0, &qword_238775920);
  sub_23843981C(v8, a3 + *(v29 + 48), &qword_27DF105B0, &qword_238775910);
  sub_238439884(v11, &qword_27DF105B0, &qword_238775910);
  sub_2385DF5F4(v18, type metadata accessor for TrackShipmentButton);
  sub_238439884(v8, &qword_27DF105B0, &qword_238775910);
  sub_2385DF5F4(v15, type metadata accessor for TrackShipmentButton);
}

uint64_t sub_2385DAC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for OrderProviderLogoButton(0);
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  sub_23875ED50();
  v28 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385DA6E4(&v31);
  v12 = v31;
  v13 = v32;
  v27 = v33;
  sub_2385DEDEC(a2, v11, type metadata accessor for OrderProviderLogoButton.ViewModel);
  v14 = type metadata accessor for OrderDetailsShippingTracking_iOS(0);
  v15 = v14[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F18, &unk_2387756C0);
  sub_23875C550();
  v16 = v31;
  v17 = a1 + v14[7];
  sub_23875C550();
  v18 = v31;
  v30 = *(a1 + v14[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A120, &qword_2387758B0);
  sub_23875E1D0();
  v19 = v31;
  *&v11[v6[5]] = v16;
  *&v11[v6[6]] = v18;
  v20 = v32;
  v21 = &v11[v6[7]];
  *v21 = v19;
  *(v21 + 2) = v20;
  v22 = v6[8];
  *&v11[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
  v23 = v29;
  sub_2385DEDEC(v11, v29, type metadata accessor for OrderProviderLogoButton);
  *a3 = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = v27;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF105C8, &qword_238775928);
  sub_2385DEDEC(v23, a3 + *(v24 + 48), type metadata accessor for OrderProviderLogoButton);
  sub_23843980C(v12, *(&v12 + 1), v13);

  sub_2385DF5F4(v11, type metadata accessor for OrderProviderLogoButton);
  sub_2385DF5F4(v23, type metadata accessor for OrderProviderLogoButton);
  sub_2384397FC(v12, *(&v12 + 1), v13);
}

uint64_t sub_2385DAF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v5 = type metadata accessor for OrderProviderLogoButton(0);
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5);
  v47 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v41[-v9];
  v11 = type metadata accessor for TrackShipmentButton(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v46 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v41[-v15];
  sub_23875ED50();
  v44 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v18 = *(v17 + 20);
  v19 = sub_23875B940();
  (*(*(v19 - 8) + 16))(v16, a1 + v18, v19);
  v20 = *(v17 + 24);
  v21 = v11[5];
  v22 = sub_23875AD80();
  (*(*(v22 - 8) + 16))(&v16[v21], a1 + v20, v22);
  v23 = v11[6];
  *&v16[v23] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
  v24 = &v16[v11[7]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  sub_2385DA6E4(&v49);
  v25 = v49;
  v42 = v50;
  v43 = v51;
  sub_2385DEDEC(a2, v10, type metadata accessor for OrderProviderLogoButton.ViewModel);
  v26 = type metadata accessor for OrderDetailsShippingTracking_iOS(0);
  v27 = v26[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F18, &unk_2387756C0);
  sub_23875C550();
  v28 = v49;
  v29 = a1 + v26[7];
  sub_23875C550();
  v30 = v49;
  v48 = *(a1 + v26[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A120, &qword_2387758B0);
  sub_23875E1D0();
  v31 = v49;
  *&v10[v5[5]] = v28;
  *&v10[v5[6]] = v30;
  v32 = v50;
  v33 = &v10[v5[7]];
  *v33 = v31;
  *(v33 + 2) = v32;
  v34 = v5[8];
  *&v10[v34] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v35 = v46;
  sub_2385DEDEC(v16, v46, type metadata accessor for TrackShipmentButton);
  v36 = v47;
  sub_2385DEDEC(v10, v47, type metadata accessor for OrderProviderLogoButton);
  v37 = v45;
  sub_2385DEDEC(v35, v45, type metadata accessor for TrackShipmentButton);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF105A8, &qword_238775908);
  v39 = v37 + *(v38 + 48);
  *v39 = v25;
  LOBYTE(v26) = v42;
  *(v39 + 16) = v42;
  *(v39 + 24) = v43;
  sub_2385DEDEC(v36, v37 + *(v38 + 64), type metadata accessor for OrderProviderLogoButton);
  sub_23843980C(v25, *(&v25 + 1), v26);

  sub_2385DF5F4(v10, type metadata accessor for OrderProviderLogoButton);
  sub_2385DF5F4(v16, type metadata accessor for TrackShipmentButton);
  sub_2385DF5F4(v36, type metadata accessor for OrderProviderLogoButton);
  sub_2384397FC(v25, *(&v25 + 1), v26);

  sub_2385DF5F4(v35, type metadata accessor for TrackShipmentButton);
}

uint64_t sub_2385DB450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = type metadata accessor for OrderProviderLogoButton(0);
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v39 - v10;
  v12 = type metadata accessor for TrackShipmentButton(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v39 - v17;
  sub_23875ED50();
  v39[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v20 = *(v19 + 20);
  v21 = sub_23875B940();
  (*(*(v21 - 8) + 16))(v18, a1 + v20, v21);
  v22 = *(v19 + 24);
  v23 = v12[5];
  v24 = sub_23875AD80();
  (*(*(v24 - 8) + 16))(&v18[v23], a1 + v22, v24);
  v25 = v12[6];
  *&v18[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
  v26 = &v18[v12[7]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  sub_2385DEDEC(a2, v11, type metadata accessor for OrderProviderLogoButton.ViewModel);
  v27 = type metadata accessor for OrderDetailsShippingTracking_iOS(0);
  v28 = v27[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F18, &unk_2387756C0);
  sub_23875C550();
  v29 = v41;
  v30 = a1 + v27[7];
  sub_23875C550();
  v31 = v41;
  v43 = *(a1 + v27[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A120, &qword_2387758B0);
  sub_23875E1D0();
  v32 = v41;
  *&v11[v5[5]] = v29;
  *&v11[v5[6]] = v31;
  v33 = v42;
  v34 = &v11[v5[7]];
  *v34 = v32;
  *(v34 + 2) = v33;
  v35 = v5[8];
  *&v11[v35] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_2385DEDEC(v18, v15, type metadata accessor for TrackShipmentButton);
  sub_2385DEDEC(v11, v8, type metadata accessor for OrderProviderLogoButton);
  v36 = v40;
  sub_2385DEDEC(v15, v40, type metadata accessor for TrackShipmentButton);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF105D8, &qword_238775938);
  sub_2385DEDEC(v8, v36 + *(v37 + 48), type metadata accessor for OrderProviderLogoButton);
  sub_2385DF5F4(v11, type metadata accessor for OrderProviderLogoButton);
  sub_2385DF5F4(v18, type metadata accessor for TrackShipmentButton);
  sub_2385DF5F4(v8, type metadata accessor for OrderProviderLogoButton);
  sub_2385DF5F4(v15, type metadata accessor for TrackShipmentButton);
}

uint64_t sub_2385DB894@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_23875D2E0();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TrackShipmentButton(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10608, &qword_2387759B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10610, &qword_2387759B8);
  v16 = *(v15 - 8);
  v26 = v15;
  v27 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  sub_2385DEDEC(v2, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TrackShipmentButton);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  sub_2385DED64(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for TrackShipmentButton);
  v31 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12EE0, &unk_2387759C0);
  sub_2384D0E10();
  sub_23875E200();
  sub_23875D2D0();
  v22 = sub_23843A3E8(&qword_27DF10618, &qword_27DF10608, &qword_2387759B0);
  v23 = sub_2385DEEA8(&qword_27DF0F7C0, MEMORY[0x277CDE0B8]);
  sub_23875DB30();
  (*(v28 + 8))(v6, v3);
  (*(v11 + 8))(v14, v10);
  v30 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  v32 = v10;
  v33 = v3;
  v34 = v22;
  v35 = v23;
  swift_getOpaqueTypeConformance2();
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
  v24 = v26;
  sub_23875DB50();
  return (*(v27 + 8))(v19, v24);
}

uint64_t sub_2385DBD0C(uint64_t a1)
{
  v2 = sub_23875C6D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1 + *(type metadata accessor for TrackShipmentButton(0) + 24);
  sub_2384D51B0(v6);
  sub_23875C6A0();
  (*(v3 + 8))(v6, v2);
}

uint64_t sub_2385DBE60@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385DBF60();
  sub_2384397A8();
  v2 = sub_23875DAA0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  KeyPath = swift_getKeyPath();

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_2385DBF60()
{
  v1 = sub_23875AD80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TrackShipmentButton(0);
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
    result = sub_23875F520();
    __break(1u);
  }

  return result;
}

uint64_t sub_2385DC1B4(uint64_t a1)
{
  v2 = type metadata accessor for TrackShipmentButton(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385DEDEC(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TrackShipmentButton);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2385DED64(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for TrackShipmentButton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_23875E200();
}