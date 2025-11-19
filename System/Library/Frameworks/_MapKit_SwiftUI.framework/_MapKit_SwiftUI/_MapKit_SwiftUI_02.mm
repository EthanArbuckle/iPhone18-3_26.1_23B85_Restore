id sub_213CFCDA8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD4FA0]) initWithFrame:*(v0 + 136) locationManager:{0.0, 0.0, 0.0, 0.0}];
  [v1 setHonorsLayoutMargins_];
  return v1;
}

id sub_213CFCE10@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for StaticMapBridgingViewCoordinator(0)) init];
  *a1 = result;
  return result;
}

uint64_t sub_213CFCE4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0C8, &qword_213D97090);
  v0 = *(sub_213D9118C() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_213D94520;
  sub_213D9117C();
  sub_213D1D0FC(&qword_27C8EB0D0, MEMORY[0x277CDE558]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0D8, &qword_213D97098);
  sub_213CEDCEC(&qword_27C8EB0E0, &qword_27C8EB0D8, &qword_213D97098);
  return sub_213D91CBC();
}

void *sub_213CFCFC0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for MapContentList.Item.Content(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ResolvedAnnotation();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v80 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB290, &qword_213D98000);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v75 - v18;
  v79 = type metadata accessor for CustomAnnotationViewModel(0);
  v82 = *(v79 - 8);
  v20 = *(v82 + 64);
  MEMORY[0x28223BE20](v79);
  v99 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v81 = &v75 - v23;
  v95 = type metadata accessor for MapContentList.Item(0);
  v24 = *(v95 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v95);
  v94 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = a1;
  v104 = a2;
  v105 = a3;
  v106 = v26;
  if (a2)
  {
    sub_213D1E8F0(a1, a2, a3, v26);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB250, &qword_213D972A8);
    MEMORY[0x21604E7B0](&v101, v28);
    v29 = v105;
    v30 = v106;

    sub_213D1E9BC(v29, v30);
    v78 = v102 - 1 < 2;
    sub_213D1E9BC(v101, v102);
  }

  else
  {
    v31 = v26;
    sub_213D1E8F0(a1, 0, a3, v26);
    sub_213D1E95C(a1, 0, a3, v31);
    v78 = 0;
  }

  v32 = *(a5 + 16);
  v33 = v80;
  v34 = v79;
  if (!v32)
  {
    return MEMORY[0x277D84F90];
  }

  v35 = a5 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
  v98 = (v82 + 56);
  v100 = MEMORY[0x277D84F90];
  v36 = *(v24 + 72);
  v96 = (v82 + 48);
  v97 = v36;
  v77 = v9;
  v76 = v12;
  v38 = v94;
  v37 = v95;
  v75 = v13;
  do
  {
    sub_213D1E9F8(v35, v38, type metadata accessor for MapContentList.Item);
    sub_213D1E9F8(v38 + *(v37 + 24), v12, type metadata accessor for MapContentList.Item.Content);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_213D1F330(v12, type metadata accessor for MapContentList.Item.Content);
      v39 = 1;
    }

    else
    {
      sub_213D1E884(v12, v33, type metadata accessor for ResolvedAnnotation);
      v40 = *(v37 + 28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB240, &qword_213D972A0);
      sub_213CEDCEC(&qword_27C8EB248, &qword_27C8EB240, &qword_213D972A0);
      v93 = v40;
      sub_213D9101C();
      v41 = v103;
      v42 = v13[6];
      v92 = *v38;

      v43 = sub_213D90CDC();
      if (v43)
      {
        v44 = v43;
        v45 = [v43 string];

        v46 = sub_213D9193C();
        v90 = v47;
        v91 = v46;
      }

      else
      {
        v90 = 0;
        v91 = 0;
      }

      v48 = sub_213D90CCC();
      if (v48)
      {
        v49 = v48;
        v50 = [v48 string];

        v89 = sub_213D9193C();
        v88 = v51;
      }

      else
      {
        v89 = 0;
        v88 = 0;
      }

      v52 = v13[11];
      v53 = *(v33 + v13[12]);
      v54 = v13[10];
      v87 = *(v33 + v13[9]);
      v86 = *(v33 + v54);
      v55 = *(v33 + v13[7]);
      v56 = *v33;
      v57 = v33[1];
      v58 = v33[2];
      v59 = v33[3];
      v85 = v78 & (v41 ^ 1);
      v60 = *(v33 + v52);
      v84 = *(v33 + v52 + 8);
      v83 = *(v33 + v52 + 16);
      v61 = *(v33 + v13[13]);
      v62 = v53;

      sub_213D1F330(v33, type metadata accessor for ResolvedAnnotation);
      v34 = v79;
      v63 = *(v79 + 64);
      v64 = sub_213D9100C();
      v65 = &v19[v63];
      v33 = v80;
      v38 = v94;
      (*(*(v64 - 8) + 16))(v65, &v94[v93], v64);
      v39 = 0;
      v66 = v91;
      *v19 = v92;
      *(v19 + 1) = v66;
      v67 = v89;
      *(v19 + 2) = v90;
      *(v19 + 3) = v67;
      *(v19 + 4) = v88;
      *(v19 + 5) = v53;
      v19[48] = v87;
      v19[49] = v86;
      *(v19 + 7) = v56;
      *(v19 + 8) = v57;
      *(v19 + 9) = v55;
      *(v19 + 10) = v58;
      *(v19 + 11) = v59;
      v19[96] = v85;
      v68 = v84;
      *(v19 + 13) = v60;
      *(v19 + 14) = v68;
      v19[120] = v83;
      v19[121] = v61;
      v13 = v75;
      v12 = v76;
      v37 = v95;
    }

    (*v98)(v19, v39, 1, v34);
    sub_213D1F330(v38, type metadata accessor for MapContentList.Item);
    if ((*v96)(v19, 1, v34) == 1)
    {
      sub_213CD8330(v19, &qword_27C8EB290, &qword_213D98000);
    }

    else
    {
      v69 = v81;
      sub_213D1E884(v19, v81, type metadata accessor for CustomAnnotationViewModel);
      sub_213D1E884(v69, v99, type metadata accessor for CustomAnnotationViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v100 = sub_213D6FD1C(0, v100[2] + 1, 1, v100);
      }

      v71 = v100[2];
      v70 = v100[3];
      if (v71 >= v70 >> 1)
      {
        v100 = sub_213D6FD1C(v70 > 1, v71 + 1, 1, v100);
      }

      v72 = v99;
      v73 = v100;
      v100[2] = v71 + 1;
      sub_213D1E884(v72, v73 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v71, type metadata accessor for CustomAnnotationViewModel);
      v38 = v94;
      v37 = v95;
    }

    v35 += v97;
    --v32;
  }

  while (v32);
  return v100;
}

void *sub_213CFD81C(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, int a6, uint64_t a7)
{
  LODWORD(v8) = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB260, qword_213D985C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v35 - v15;
  v17 = type metadata accessor for MarkerAnnotationViewModel(0);
  v38 = *(v17 - 8);
  v18 = *(v38 + 64);
  MEMORY[0x28223BE20](v17);
  v39 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v37 = &v35 - v21;
  if ((v8 & 1) == 0)
  {
    v42 = a1;
    v43 = a2;
    v44 = a3;
    v45 = a4;
    if (a2)
    {
      sub_213D1E8F0(a1, a2, a3, a4);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB250, &qword_213D972A8);
      MEMORY[0x21604E7B0](&v40, v24);
      v25 = v44;
      v26 = v45;

      sub_213D1E9BC(v25, v26);
      v22 = v41 - 1 < 2;
      sub_213D1E9BC(v40, v41);
      v23 = *(a7 + 16);
      if (v23)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_213D1E8F0(a1, 0, a3, a4);
      sub_213D1E95C(a1, 0, a3, a4);
      v22 = 0;
      v23 = *(a7 + 16);
      if (v23)
      {
        goto LABEL_6;
      }
    }

    return MEMORY[0x277D84F90];
  }

  v22 = 1;
  v23 = *(a7 + 16);
  if (!v23)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_6:
  v27 = *(type metadata accessor for MapContentList.Item(0) - 8);
  v28 = (v38 + 48);
  v29 = (a7 + ((*(v27 + 80) + 32) & ~*(v27 + 80)));
  v30 = *(v27 + 72);
  v31 = MEMORY[0x277D84F90];
  v36 = v8;
  v35 = v30;
  do
  {
    sub_213D184C4(v29, v8 & 1, v22, v16);
    if ((*v28)(v16, 1, v17) == 1)
    {
      sub_213CD8330(v16, &qword_27C8EB260, qword_213D985C0);
    }

    else
    {
      v32 = v37;
      sub_213D1E884(v16, v37, type metadata accessor for MarkerAnnotationViewModel);
      sub_213D1E884(v32, v39, type metadata accessor for MarkerAnnotationViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_213D6FF7C(0, v31[2] + 1, 1, v31);
      }

      v8 = v31[2];
      v33 = v31[3];
      if (v8 >= v33 >> 1)
      {
        v31 = sub_213D6FF7C(v33 > 1, v8 + 1, 1, v31);
      }

      v31[2] = v8 + 1;
      sub_213D1E884(v39, v31 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v8, type metadata accessor for MarkerAnnotationViewModel);
      LOBYTE(v8) = v36;
      v30 = v35;
    }

    v29 += v30;
    --v23;
  }

  while (v23);
  return v31;
}

void *sub_213CFDC00(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  v64 = type metadata accessor for MapContentList.Item.Content(0);
  v9 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ResolvedUserAnnotation();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v58 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB680, &unk_213D97FF0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v53 - v17;
  v66 = type metadata accessor for UserAnnotationViewModel(0);
  v59 = *(v66 - 8);
  v19 = *(v59 + 64);
  MEMORY[0x28223BE20](v66);
  v63 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v57 = &v53 - v22;
  v23 = type metadata accessor for MapContentList.Item(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v65 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a1;
  v71 = v26;
  v72 = a3;
  v73 = a4;
  if (v26)
  {
    sub_213D1E8F0(a1, v26, a3, a4);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB250, &qword_213D972A8);
    MEMORY[0x21604E7B0](&v68, v28);
    v29 = v72;
    v30 = v73;

    sub_213D1E9BC(v29, v30);
    v56 = v69 - 1 < 2;
    sub_213D1E9BC(v68, v69);
  }

  else
  {
    sub_213D1E8F0(a1, 0, a3, a4);
    sub_213D1E95C(a1, 0, a3, a4);
    v56 = 0;
  }

  v31 = *(a5 + 16);
  v32 = v66;
  if (!v31)
  {
    return MEMORY[0x277D84F90];
  }

  v33 = a5 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
  v62 = (v59 + 56);
  v67 = MEMORY[0x277D84F90];
  v60 = *(v24 + 72);
  v61 = (v59 + 48);
  v34 = v65;
  v55 = v11;
  v54 = v23;
  do
  {
    sub_213D1E9F8(v33, v34, type metadata accessor for MapContentList.Item);
    sub_213D1E9F8(v34 + *(v23 + 24), v11, type metadata accessor for MapContentList.Item.Content);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v35 = v58;
      sub_213D1E884(v11, v58, type metadata accessor for ResolvedUserAnnotation);
      v36 = *(v23 + 28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB240, &qword_213D972A0);
      sub_213CEDCEC(&qword_27C8EB248, &qword_27C8EB240, &qword_213D972A0);
      sub_213D9101C();
      v37 = *v34;
      v38 = *(v35 + 16);
      v39 = *(v35 + 24);
      v40 = *v35;
      v41 = *(v35 + 8);
      v42 = v56 & (v70 ^ 1);
      v43 = *(v35 + 40);

      sub_213CD4E28(v38);
      sub_213D1F330(v35, type metadata accessor for ResolvedUserAnnotation);
      v44 = *(v66 + 36);
      v45 = sub_213D9100C();
      v46 = &v18[v44];
      v32 = v66;
      (*(*(v45 - 8) + 16))(v46, &v65[v36], v45);
      v47 = 0;
      *v18 = v37;
      *(v18 + 1) = v38;
      v11 = v55;
      *(v18 + 2) = v39;
      v23 = v54;
      *(v18 + 3) = v40;
      *(v18 + 4) = v41;
      v18[40] = v42;
      v18[41] = v43;
      v34 = v65;
    }

    else
    {
      sub_213D1F330(v11, type metadata accessor for MapContentList.Item.Content);
      v47 = 1;
    }

    (*v62)(v18, v47, 1, v32);
    sub_213D1F330(v34, type metadata accessor for MapContentList.Item);
    if ((*v61)(v18, 1, v32) == 1)
    {
      sub_213CD8330(v18, &qword_27C8EB680, &unk_213D97FF0);
    }

    else
    {
      v48 = v57;
      sub_213D1E884(v18, v57, type metadata accessor for UserAnnotationViewModel);
      sub_213D1E884(v48, v63, type metadata accessor for UserAnnotationViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_213D6FFA4(0, v67[2] + 1, 1, v67);
      }

      v50 = v67[2];
      v49 = v67[3];
      if (v50 >= v49 >> 1)
      {
        v67 = sub_213D6FFA4(v49 > 1, v50 + 1, 1, v67);
      }

      v51 = v67;
      v67[2] = v50 + 1;
      sub_213D1E884(v63, v51 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v50, type metadata accessor for UserAnnotationViewModel);
    }

    v33 += v60;
    --v31;
  }

  while (v31);
  return v67;
}

uint64_t sub_213CFE29C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *a2 + *a5;
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  *v8 = *a1;
  *(v8 + 8) = v6;
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
}

void sub_213CFE314(void *a1)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(type metadata accessor for StaticMapBridgingView(0) + 64));
  v9 = v8[7];
  v10 = v8[5];
  v66 = v8[6];
  v67 = v9;
  v11 = v8[7];
  v68[0] = v8[8];
  v12 = v8[3];
  v13 = v8[5];
  v64 = v8[4];
  v65 = v13;
  v14 = v8[3];
  v15 = v8[1];
  v62 = v8[2];
  v63 = v14;
  v16 = v8[1];
  v60 = *v8;
  v61 = v16;
  v69[6] = v66;
  v69[7] = v11;
  v70[0] = v8[8];
  v69[2] = v62;
  v69[3] = v12;
  v69[4] = v64;
  v69[5] = v10;
  *(v68 + 15) = *(v8 + 143);
  *(v70 + 15) = *(v8 + 143);
  v69[0] = v60;
  v69[1] = v15;
  if (sub_213D1E0A4(v69) == 1)
  {
    nullsub_2(v69);
    v38 = v66;
    v39 = v67;
    v40[0] = v68[0];
    *(v40 + 15) = *(v68 + 15);
    v34 = v62;
    v35 = v63;
    v36 = v64;
    v37 = v65;
    v32 = v60;
    v33 = v61;
    v17 = nullsub_2(&v32);
    v18 = *(v17 + 16);
    v50 = *v17;
    v51 = v18;
    v19 = *(v17 + 32);
    v20 = *(v17 + 48);
    v21 = *(v17 + 80);
    v54 = *(v17 + 64);
    v55 = v21;
    v52 = v19;
    v53 = v20;
    v22 = *(v17 + 96);
    v23 = *(v17 + 112);
    v24 = *(v17 + 128);
    v59 = *(v17 + 144);
    v57 = v23;
    v58 = v24;
    v56 = v22;
    v41 = v60;
    v42 = v61;
    v43 = v62;
    v44 = v63;
    v45 = v64;
    v46 = v65;
    v47 = v66;
    v48 = v67;
    v49[0] = v68[0];
    *(v49 + 15) = *(v68 + 15);
    v25 = nullsub_2(&v41);
    sub_213D1E0AC(v25, &v31);
  }

  else
  {
    nullsub_2(v69);
    v38 = v66;
    v39 = v67;
    v40[0] = v68[0];
    *(v40 + 15) = *(v68 + 15);
    v34 = v62;
    v35 = v63;
    v36 = v64;
    v37 = v65;
    v32 = v60;
    v33 = v61;
    v26 = *nullsub_2(&v32);
    v41 = v60;
    v42 = v61;
    v45 = v64;
    v46 = v65;
    v43 = v62;
    v44 = v63;
    *(v49 + 15) = *(v68 + 15);
    v48 = v67;
    v49[0] = v68[0];
    v47 = v66;
    v27 = *nullsub_2(&v41);

    sub_213D91BDC();
    v28 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CD8330(&v60, &unk_27C8EB0F0, &qword_213D971E8);
    (*(v4 + 8))(v7, v3);
  }

  v38 = v56;
  v39 = v57;
  v40[0] = v58;
  LOWORD(v40[1]) = v59;
  v34 = v52;
  v35 = v53;
  v36 = v54;
  v37 = v55;
  v32 = v50;
  v33 = v51;
  isa = MapStyle.configuration()().super.isa;
  v47 = v38;
  v48 = v39;
  v49[0] = v40[0];
  LOWORD(v49[1]) = v40[1];
  v43 = v34;
  v44 = v35;
  v45 = v36;
  v46 = v37;
  v41 = v32;
  v42 = v33;
  sub_213CEB3CC(&v41);
  [a1 setPreferredConfiguration_];
}

id sub_213CFE6B4(void *a1)
{
  v35 = a1;
  v1 = sub_213D9089C();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v34 = sub_213D90ECC();
  v9 = *(v34 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v34);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_213D90C7C();
  v13 = *(v33 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v33);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213CFBDEC(v16);
  sub_213D90EBC();
  sub_213D911DC();
  sub_213D90C6C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  (*(v9 + 8))(v12, v34);
  (*(v13 + 8))(v16, v33);
  sub_213CFBFF4(v8);
  v25 = *MEMORY[0x277CDFA88];
  v26 = v2[13];
  v26(v5, v25, v1);
  LOBYTE(v16) = sub_213D9088C();
  v27 = v2[1];
  v27(v5, v1);
  v27(v8, v1);
  if (v16)
  {
    v28 = v20;
  }

  else
  {
    v28 = v24;
  }

  sub_213CFBFF4(v8);
  v26(v5, v25, v1);
  v29 = sub_213D9088C();
  v27(v5, v1);
  v27(v8, v1);
  if (v29)
  {
    v30 = v24;
  }

  else
  {
    v30 = v20;
  }

  return [v35 setLayoutMargins_];
}

unint64_t sub_213CFEA00@<X0>(unint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  if ((result >> 61) < 4)
  {
    v5 = *MEMORY[0x277D768C8];
    v6 = *(MEMORY[0x277D768C8] + 8);
    v7 = *(MEMORY[0x277D768C8] + 16);
    v8 = *(MEMORY[0x277D768C8] + 24);
    result = sub_213D1DFC0(result);
    v9 = 0;
    goto LABEL_28;
  }

  if (result >> 61 != 4)
  {
    if (result == 0xA000000000000000)
    {
      result = sub_213D2D098(&v19, 0xA000000000000000);
      if ((v21 & 1) == 0)
      {
        result = swift_allocObject();
        v9 = 0;
        v13 = v19;
        v14 = v20;
        v3 = result | 0x2000000000000000;
        goto LABEL_27;
      }
    }

LABEL_10:
    v3 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 2;
    goto LABEL_28;
  }

  v10 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  result = [a2 hasUserLocation];
  if (result)
  {
    goto LABEL_10;
  }

  if (v10 == 0xA000000000000000)
  {
    sub_213D1DFC0(0xA000000000000000);
    v12 = sub_213D1DFC0(0xA000000000000000);
    result = sub_213D2D098(&v19, v12);
    if ((v21 & 1) == 0)
    {
      result = swift_allocObject();
      v13 = v19;
      v14 = v20;
      v3 = result | 0x2000000000000000;
      v9 = 1;
LABEL_27:
      *(result + 16) = v13;
      *(result + 32) = v14;
      v7 = 0x403C000000000000;
      v5 = 0x404C000000000000;
      v6 = 0x404C000000000000;
      v8 = 0x404C000000000000;
      goto LABEL_28;
    }

    goto LABEL_10;
  }

  sub_213D1DFC0(v10);
  sub_213CFEA00(&v19, v10, a2);
  v15 = v19;
  v16 = *(&v20 + 1);
  v6 = v20;
  v17 = v21;
  v18 = v22;
  result = sub_213D1E068(v10);
  if (v18 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v15;
  }

  if (v18 == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v15 + 1);
  }

  if (v18 == 2)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v7 = v16;
  }

  if (v18 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v17;
  }

  if (v18 == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v18;
  }

LABEL_28:
  *a3 = v3;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  return result;
}

unint64_t sub_213CFEBB8(unint64_t a1, void *a2, char a3)
{
  result = sub_213CFEA00(a1, a2, v74);
  v6 = v75;
  if (v75 != 2)
  {
    v7 = v74[0];
    v8 = v74[0] >> 61;
    if ((v74[0] >> 61) <= 1)
    {
      if (!v8)
      {
        v30 = *((v74[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v31 = *((v74[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v33 = *((v74[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v32 = *((v74[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
        v34 = swift_allocObject();
        *(v34 + 16) = a2;
        *(v34 + 24) = v30;
        *(v34 + 32) = v31;
        *(v34 + 40) = v33;
        *(v34 + 48) = v32;
        *(v34 + 56) = a3 & 1;
        sub_213CE2C28(v74, &v68, &qword_27C8EB2D8, &qword_213D97328);
        v18 = a2;
        [v18 frame];
        if (v36 == 0.0 && v35 == 0.0)
        {
          v72 = sub_213D1F1C4;
          v73 = v34;
          v68 = MEMORY[0x277D85DD0];
          v69 = 1107296256;
          v21 = &block_descriptor_520;
          goto LABEL_19;
        }

        v45 = 180.0;
        if (v31 <= 180.0)
        {
          v46 = v31;
        }

        else
        {
          v46 = 180.0;
        }

        v47 = -180.0;
        if (v31 >= -180.0)
        {
          v47 = v46;
        }

        v48 = 90.0;
        if (v30 <= 90.0)
        {
          v48 = v30;
        }

        if (v30 < -90.0)
        {
          v48 = -90.0;
        }

        if (v33 <= 180.0)
        {
          v45 = v33;
        }

        v49 = 0.0;
        if (v33 < 0.0)
        {
          v45 = 0.0;
        }

        v50 = 360.0;
        if (v32 <= 360.0)
        {
          v50 = v32;
        }

        if (v32 >= 0.0)
        {
          v49 = v50;
        }

        [v18 setRegion_];
        goto LABEL_40;
      }

      if (v8 == 1)
      {
        v9 = *&v74[1];
        v10 = *&v74[2];
        v11 = *&v74[3];
        v12 = *&v74[4];
        v13 = *((v74[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v14 = *((v74[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v15 = *((v74[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v16 = *((v74[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
        v17 = swift_allocObject();
        *(v17 + 16) = a2;
        *(v17 + 24) = v13;
        *(v17 + 32) = v14;
        *(v17 + 40) = v15;
        *(v17 + 48) = v16;
        *(v17 + 56) = v7;
        *(v17 + 64) = v9;
        *(v17 + 72) = v10;
        *(v17 + 80) = v11;
        *(v17 + 88) = v12;
        *(v17 + 96) = v6;
        *(v17 + 97) = a3 & 1;
        sub_213CE2C28(v74, &v68, &qword_27C8EB2D8, &qword_213D97328);
        sub_213CE2C28(v74, &v68, &qword_27C8EB2D8, &qword_213D97328);
        v18 = a2;
        [v18 frame];
        if (v20 == 0.0 && v19 == 0.0)
        {
          v72 = sub_213D1F1A4;
          v73 = v17;
          v68 = MEMORY[0x277D85DD0];
          v69 = 1107296256;
          v21 = &block_descriptor_514;
LABEL_19:
          v70 = sub_213CFF278;
          v71 = v21;
          v43 = _Block_copy(&v68);

          [v18 addWhenSizedBlock_];

          sub_213CD8330(v74, &qword_27C8EB2D8, &qword_213D97328);
          _Block_release(v43);
          return sub_213CD8330(v74, &qword_27C8EB2D8, &qword_213D97328);
        }

        [v18 setVisibleMapRect:v13 edgePadding:{v14, v15, v16, v9, v10, v11, v12}];
LABEL_40:

        sub_213CD8330(v74, &qword_27C8EB2D8, &qword_213D97328);
      }

      return sub_213CD8330(v74, &qword_27C8EB2D8, &qword_213D97328);
    }

    if (v8 == 2)
    {
      v37 = *((v74[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v38 = *((v74[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v39 = swift_allocObject();
      *(v39 + 16) = v37;
      *(v39 + 24) = v38;
      *(v39 + 32) = a2;
      *(v39 + 40) = a3 & 1;
      sub_213CE2C28(v74, &v68, &qword_27C8EB2D8, &qword_213D97328);
      v18 = a2;
      v40 = v37;
      [v18 frame];
      if (v42 == 0.0 && v41 == 0.0)
      {
        v72 = sub_213D1F190;
        v73 = v39;
        v68 = MEMORY[0x277D85DD0];
        v69 = 1107296256;
        v21 = &block_descriptor_508;
        goto LABEL_19;
      }

      [v18 frame];
      v52 = v51;
      v54 = v53;
      v55 = objc_opt_self();
      v56 = [v55 cameraLookingAtMapItem:v40 forViewSize:v38 allowPitch:{v52, v54}];
      [v56 centerCoordinate];
      v58 = v57;
      v60 = v59;
      [v56 centerCoordinateDistance];
      v62 = v61;
      [v56 heading];
      v64 = v63;
      [v56 pitch];
      v66 = v65;

      v44 = [v55 cameraLookingAtCenterCoordinate:v58 fromDistance:v60 pitch:v62 heading:{v66, v64}];
    }

    else
    {
      if (v8 != 3)
      {
        return sub_213CD8330(v74, &qword_27C8EB2D8, &qword_213D97328);
      }

      v22 = *((v74[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v23 = *((v74[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v25 = *((v74[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v24 = *((v74[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v26 = *((v74[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v27 = swift_allocObject();
      *(v27 + 16) = a2;
      *(v27 + 24) = v22;
      *(v27 + 32) = v23;
      *(v27 + 40) = v25;
      *(v27 + 48) = v24;
      *(v27 + 56) = v26;
      *(v27 + 64) = a3 & 1;
      sub_213CE2C28(v74, &v68, &qword_27C8EB2D8, &qword_213D97328);
      v18 = a2;
      [v18 frame];
      if (v29 == 0.0 && v28 == 0.0)
      {
        v72 = sub_213D1F180;
        v73 = v27;
        v68 = MEMORY[0x277D85DD0];
        v69 = 1107296256;
        v21 = &block_descriptor_502;
        goto LABEL_19;
      }

      v44 = [objc_opt_self() cameraLookingAtCenterCoordinate:v22 fromDistance:v23 pitch:v25 heading:{v26, v24}];
    }

    v67 = v44;
    [v18 setCamera_];

    sub_213CD8330(v74, &qword_27C8EB2D8, &qword_213D97328);

    return sub_213CD8330(v74, &qword_27C8EB2D8, &qword_213D97328);
  }

  return result;
}

uint64_t sub_213CFF278(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_213CFF2BC(uint64_t a1, char a2, id a3)
{
  [a3 frame];
  v7 = v6;
  v9 = v8;
  v10 = objc_opt_self();
  v11 = [v10 cameraLookingAtMapItem:a1 forViewSize:a2 & 1 allowPitch:{v7, v9}];
  [v11 centerCoordinate];
  v13 = v12;
  v15 = v14;
  [v11 centerCoordinateDistance];
  v17 = v16;
  [v11 heading];
  v19 = v18;
  [v11 pitch];
  v21 = v20;

  v22 = [v10 cameraLookingAtCenterCoordinate:v13 fromDistance:v15 pitch:v17 heading:{v21, v19}];
  [a3 setCamera_];
}

void sub_213CFF408(void *a1, double *a2)
{
  v3 = [objc_opt_self() cameraLookingAtCenterCoordinate:*a2 fromDistance:a2[1] pitch:a2[2] heading:{a2[4], a2[3]}];
  [a1 setCamera_];
}

void sub_213CFF4B4(void *a1)
{
  v3 = *(v1 + qword_27C8EB400 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v1 + qword_27C8EB400 + 24);
    v6 = sub_213D4CEE8(*(v3 + 16), 0);
    a1 = sub_213D4CEB4(v20, v6 + 32, v4, v3);
    swift_bridgeObjectRetain_n();

    sub_213CDE778();
    if (a1 != v4)
    {
      __break(1u);
      goto LABEL_37;
    }

    v1 = v16;
    a1 = v17;
    if (v6 < 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_21;
    }
  }

  if ((v6 & 0x4000000000000000) != 0)
  {
LABEL_21:
    if (!sub_213D91EBC())
    {
      goto LABEL_22;
    }

    goto LABEL_8;
  }

  if (!*(v6 + 16))
  {
LABEL_22:

    v11 = *(v1 + qword_27C8EB410 + 16);
    v12 = *(v11 + 16);
    if (v12)
    {
      v19 = a1;
      v13 = *(v1 + qword_27C8EB410 + 24);
      v1 = sub_213D4CEE8(v12, 0);
      v14 = sub_213D4CEB4(v20, v1 + 32, v12, v11);
      a1 = v20[1];
      swift_bridgeObjectRetain_n();

      sub_213CDE778();
      if (v14 != v12)
      {
        __break(1u);
        goto LABEL_44;
      }

      a1 = v19;
      if (v1 < 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v1 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }
    }

    if ((v1 & 0x4000000000000000) == 0)
    {
      if (!*(v1 + 16))
      {
LABEL_40:

        return;
      }

LABEL_29:
      if ((v1 & 0xC000000000000001) == 0)
      {
        v15 = *(v1 + 16);

        if (v15)
        {
          goto LABEL_31;
        }

        __break(1u);
_objc_release_x2:
        MEMORY[0x2821F9730](v8);
        return;
      }

LABEL_44:
      MEMORY[0x21604EF80](0, v1);

      swift_unknownObjectRelease();
LABEL_31:
      if ([a1 showsUserLocation])
      {

        [a1 selectUserLocationAnimated_];
      }

      return;
    }

LABEL_39:
    if (!sub_213D91EBC())
    {
      goto LABEL_40;
    }

    goto LABEL_29;
  }

LABEL_8:
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_37:
    v7 = MEMORY[0x21604EF80](0, v6);
    goto LABEL_11;
  }

  if (!*(v6 + 16))
  {
    __break(1u);
    goto LABEL_39;
  }

  v7 = *(v6 + 32);
LABEL_11:
  v18 = v7;

  if (v18[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_isCustomFeature] == 1)
  {
    v9 = *&v18[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_mapItem];
    if (!v9)
    {

      goto _objc_release_x2;
    }

    v10 = v9;
    [a1 selectMapItem_];
  }

  else
  {
    [a1 selectAnnotation_animated_];
  }
}

id sub_213CFF878(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  v7 = sub_213D2DFC8(a4, 0);
  swift_unknownObjectRelease();

  return v7;
}

id sub_213CFF8E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  v7 = sub_213D491B4(a4);
  swift_unknownObjectRelease();

  return v7;
}

id sub_213CFF94C(char *a1)
{
  *&a1[qword_27C8EAF48] = 0xF000000000000007;
  v2.receiver = a1;
  v2.super_class = type metadata accessor for StaticMapBridgingViewCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_213CFF9B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StaticMapBridgingViewCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_213CFF9F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = swift_readAtKeyPath();
  v281 = *(v8 + 16);

  v7(aBlock, 0);
  v291 = v6;

  v9 = *(a2 + 16);
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    v279 = MEMORY[0x277D84F90];
    v280 = MEMORY[0x277D84F90];
LABEL_83:
    v290 = v11;
    if (a4)
    {
      v132 = objc_opt_self();
      v133 = swift_allocObject();
      *(v133 + 16) = v279;
      *&aBlock[32] = sub_213D1E204;
      *&aBlock[40] = v133;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213CFF278;
      *&aBlock[24] = &block_descriptor;
      v134 = _Block_copy(aBlock);

      v135 = swift_allocObject();
      *(v135 + 16) = v280;
      *&aBlock[32] = sub_213D1E224;
      *&aBlock[40] = v135;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213D183BC;
      *&aBlock[24] = &block_descriptor_106;
      v136 = _Block_copy(aBlock);

      [v132 animateWithDuration:v134 animations:v136 completion:0.25];
      _Block_release(v136);
      _Block_release(v134);
    }

    v137 = v281 + 64;
    v138 = 1 << *(v281 + 32);
    v139 = -1;
    if (v138 < 64)
    {
      v139 = ~(-1 << v138);
    }

    v140 = v139 & *(v281 + 64);
    v285 = (v138 + 63) >> 6;

    v141 = 0;
    while (v140)
    {
      v150 = v141;
LABEL_100:
      v153 = __clz(__rbit64(v140)) | (v150 << 6);
      v154 = *(*(v281 + 48) + 8 * v153);
      v140 &= v140 - 1;
      v155 = *(v281 + 56) + 136 * v153;
      v298 = *v155;
      v156 = *(v155 + 64);
      v158 = *(v155 + 16);
      v157 = *(v155 + 32);
      v301 = *(v155 + 48);
      v302 = v156;
      v299 = v158;
      v300 = v157;
      v160 = *(v155 + 96);
      v159 = *(v155 + 112);
      v161 = *(v155 + 80);
      v306 = *(v155 + 128);
      v304 = v160;
      v305 = v159;
      v303 = v161;
      *&v307[80] = *(v155 + 80);
      *&v307[96] = *(v155 + 96);
      *&v307[112] = *(v155 + 112);
      *&v307[128] = *(v155 + 128);
      *&v307[16] = *(v155 + 16);
      *&v307[32] = *(v155 + 32);
      *&v307[48] = *(v155 + 48);
      *&v307[64] = *(v155 + 64);
      *v307 = *v155;
      *aBlock = v154;
      *&aBlock[8] = *v307;
      *&aBlock[72] = *&v307[64];
      *&aBlock[56] = *&v307[48];
      *&aBlock[40] = *&v307[32];
      *&aBlock[24] = *&v307[16];
      v310 = *&v307[128];
      *&aBlock[120] = *&v307[112];
      *&aBlock[104] = *&v307[96];
      *&aBlock[88] = *&v307[80];
      nullsub_2(aBlock);
      v162 = v154;
      sub_213D1E18C(&v298, v308);
      v163 = *aBlock;
      v317 = *&aBlock[104];
      v318 = *&aBlock[120];
      v319 = v310;
      v164 = *&aBlock[24];
      v313 = *&aBlock[40];
      v314 = *&aBlock[56];
      v315 = *&aBlock[72];
      v316 = *&aBlock[88];
      v165 = *&aBlock[8];
LABEL_101:
      v311 = v165;
      v312 = v164;
      *&aBlock[88] = v316;
      *&aBlock[104] = v317;
      *&aBlock[120] = v318;
      *&aBlock[24] = v164;
      *&aBlock[40] = v313;
      *&aBlock[56] = v314;
      *&aBlock[72] = v315;
      v310 = v319;
      *&aBlock[8] = v165;
      *aBlock = v163;
      if (sub_213CCF338(aBlock) == 1)
      {

        *v307 = MEMORY[0x277D84F90];
        v190 = 1 << *(v281 + 32);
        v191 = -1;
        if (v190 < 64)
        {
          v191 = ~(-1 << v190);
        }

        v192 = v191 & *(v281 + 64);
        v193 = (v190 + 63) >> 6;

        v194 = 0;
        while (v192)
        {
LABEL_118:
          v196 = __clz(__rbit64(v192));
          v192 &= v192 - 1;
          v197 = *(*(v281 + 48) + ((v194 << 9) | (8 * v196)));
          type metadata accessor for MapBridgingUserAnnotation();
          if (!swift_dynamicCastClass())
          {
            v198 = v197;
            sub_213D91DEC();
            v199 = *(*v307 + 16);
            sub_213D91E2C();
            sub_213D91E3C();
            sub_213D91DFC();
          }
        }

        while (1)
        {
          v195 = v194 + 1;
          if (__OFADD__(v194, 1))
          {
            goto LABEL_152;
          }

          if (v195 >= v193)
          {

            v200 = *v307;
            if ((*v307 & 0x8000000000000000) == 0 && (*v307 & 0x4000000000000000) == 0)
            {

              sub_213D91F6C();
              sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
              v201 = v200;
              goto LABEL_123;
            }

            goto LABEL_157;
          }

          v192 = *(v137 + 8 * v195);
          ++v194;
          if (v192)
          {
            v194 = v195;
            goto LABEL_118;
          }
        }
      }

      *&v307[96] = v317;
      *&v307[112] = v318;
      *&v307[128] = v319;
      *v307 = v311;
      *&v307[16] = v312;
      *&v307[32] = v313;
      *&v307[48] = v314;
      *&v307[64] = v315;
      *&v307[80] = v316;
      v166 = v311;
      *&v308[0] = v291;
      v167 = v291;

      v168 = swift_modifyAtReferenceWritableKeyPath();
      v170 = v169;
      v171 = *(v169 + 24);
      v172 = sub_213CE22A8(v166);
      LOBYTE(v171) = v173;

      if (v171)
      {
        v174 = *(v170 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v176 = *(v170 + 24);
        v292[0] = v176;
        *(v170 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB198, &qword_213D97210);
          v176 = v292[0];
        }

        v177 = *(v176[6] + 8 * v172);

        sub_213D1B868(v172, v176);
        v178 = *(v170 + 24);
        *(v170 + 24) = v176;
      }

      v168(&v298, 0);

      v292[0] = v167;
      v179 = v167;
      v180 = swift_modifyAtReferenceWritableKeyPath();
      v182 = v181;
      v183 = *(v181 + 16);
      v184 = sub_213CE2258(v163);
      if (v185)
      {
        v186 = v184;
        v187 = *(v182 + 16);
        v188 = swift_isUniquelyReferenced_nonNull_native();
        v189 = *(v182 + 16);
        v295 = v189;
        *(v182 + 16) = 0x8000000000000000;
        if (!v188)
        {
          sub_213D1C0D4();
          v189 = v295;
        }

        v142 = *(v189 + 56) + 136 * v186;
        v298 = *v142;
        v143 = *(v142 + 48);
        v144 = *(v142 + 64);
        v145 = *(v142 + 32);
        v299 = *(v142 + 16);
        v300 = v145;
        v301 = v143;
        v302 = v144;
        v146 = *(v142 + 80);
        v147 = *(v142 + 96);
        v148 = *(v142 + 112);
        v306 = *(v142 + 128);
        v304 = v147;
        v305 = v148;
        v303 = v146;
        sub_213D1E108(&v298);
        sub_213D1B1E8(v186, v189);
        v149 = *(v182 + 16);
        *(v182 + 16) = v189;
      }

      v180(v308, 0);

      sub_213D1E108(v307);
      v137 = v281 + 64;
    }

    if (v285 <= v141 + 1)
    {
      v151 = v141 + 1;
    }

    else
    {
      v151 = v285;
    }

    v152 = v151 - 1;
    while (1)
    {
      v150 = v141 + 1;
      if (__OFADD__(v141, 1))
      {
        break;
      }

      if (v150 >= v285)
      {
        sub_213D1E1E8(aBlock);
        v140 = 0;
        v319 = v310;
        v163 = *aBlock;
        v317 = *&aBlock[104];
        v318 = *&aBlock[120];
        v164 = *&aBlock[24];
        v313 = *&aBlock[40];
        v314 = *&aBlock[56];
        v315 = *&aBlock[72];
        v316 = *&aBlock[88];
        v165 = *&aBlock[8];
        v141 = v152;
        goto LABEL_101;
      }

      v140 = *(v137 + 8 * v150);
      ++v141;
      if (v140)
      {
        v141 = v150;
        goto LABEL_100;
      }
    }

    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);

    v201 = sub_213D91EAC();

LABEL_123:
    v202 = v290;

    sub_213D17F50(v201);

    v203 = v290[2];
    if (!v203)
    {
      return v202;
    }

    v204 = 0;
    v286 = v203 - 1;
    v205 = 32;
    while (1)
    {
      v288 = v205;
      *v307 = *(v202 + v205);
      v206 = *(v202 + v205 + 16);
      v207 = *(v202 + v205 + 32);
      v208 = *(v202 + v205 + 64);
      *&v307[48] = *(v202 + v205 + 48);
      *&v307[64] = v208;
      *&v307[16] = v206;
      *&v307[32] = v207;
      v209 = *(v202 + v205 + 80);
      v210 = *(v202 + v205 + 96);
      v211 = *(v202 + v205 + 128);
      *&v307[112] = *(v202 + v205 + 112);
      *&v307[128] = v211;
      *&v307[80] = v209;
      *&v307[96] = v210;
      v213 = *&v307[8];
      v212 = *v307;
      *&v308[0] = v291;
      v214 = v291;
      sub_213CE2C28(v307, &v298, &qword_27C8ECC50, &unk_213D971F0);

      v215 = v212;
      v216 = swift_modifyAtReferenceWritableKeyPath();
      v218 = v217;
      v219 = *(v217 + 24);
      v220 = swift_isUniquelyReferenced_nonNull_native();
      v292[0] = *(v218 + 24);
      v221 = v292[0];
      *(v218 + 24) = 0x8000000000000000;
      v223 = sub_213CE22A8(v213);
      v224 = v221[2];
      v225 = (v222 & 1) == 0;
      v226 = v224 + v225;
      if (__OFADD__(v224, v225))
      {
        goto LABEL_153;
      }

      v227 = v222;
      if (v221[3] >= v226)
      {
        if (v220)
        {
          v230 = v292[0];
          if (v222)
          {
            goto LABEL_132;
          }
        }

        else
        {
          sub_213D1CE38(&qword_27C8EB198, &qword_213D97210);
          v230 = v292[0];
          if (v227)
          {
            goto LABEL_132;
          }
        }
      }

      else
      {
        sub_213D1AEB0(v226, v220, &qword_27C8EB198, &qword_213D97210);
        v228 = sub_213CE22A8(v213);
        if ((v227 & 1) != (v229 & 1))
        {
          goto LABEL_161;
        }

        v223 = v228;
        v230 = v292[0];
        if (v227)
        {
LABEL_132:
          v231 = v230[7];
          v232 = *(v231 + 8 * v223);
          *(v231 + 8 * v223) = v215;

          goto LABEL_136;
        }
      }

      v230[(v223 >> 6) + 8] |= 1 << v223;
      *(v230[6] + 8 * v223) = v213;
      *(v230[7] + 8 * v223) = v215;
      v233 = v230[2];
      v116 = __OFADD__(v233, 1);
      v234 = v233 + 1;
      if (v116)
      {
        goto LABEL_155;
      }

      v230[2] = v234;
LABEL_136:
      *(v218 + 24) = v230;
      v216(&v298, 0);

      v292[0] = v214;
      v235 = v214;
      v236 = v215;
      v237 = swift_modifyAtReferenceWritableKeyPath();
      v239 = v238;
      v240 = *(v238 + 16);
      v241 = swift_isUniquelyReferenced_nonNull_native();
      v295 = *(v239 + 16);
      v242 = v295;
      *(v239 + 16) = 0x8000000000000000;
      v243 = sub_213CE2258(v236);
      v245 = v242[2];
      v246 = (v244 & 1) == 0;
      v116 = __OFADD__(v245, v246);
      v247 = v245 + v246;
      v202 = v290;
      if (v116)
      {
        goto LABEL_154;
      }

      v248 = v244;
      if (v242[3] < v247)
      {
        sub_213D19760(v247, v241);
        v243 = sub_213CE2258(v236);
        if ((v248 & 1) != (v249 & 1))
        {
          goto LABEL_160;
        }

LABEL_141:
        if ((v248 & 1) == 0)
        {
          goto LABEL_144;
        }

        goto LABEL_142;
      }

      if (v241)
      {
        goto LABEL_141;
      }

      v264 = v243;
      sub_213D1C0D4();
      v243 = v264;
      if ((v248 & 1) == 0)
      {
LABEL_144:
        v250 = v295;
        v295[(v243 >> 6) + 8] |= 1 << v243;
        *(v250[6] + 8 * v243) = v236;
        v265 = v250[7] + 136 * v243;
        *v265 = *&v307[8];
        v266 = *&v307[40];
        v267 = *&v307[72];
        v268 = *&v307[24];
        *(v265 + 48) = *&v307[56];
        *(v265 + 64) = v267;
        *(v265 + 16) = v268;
        *(v265 + 32) = v266;
        v269 = *&v307[88];
        v270 = *&v307[104];
        v271 = *&v307[120];
        *(v265 + 128) = *&v307[136];
        *(v265 + 96) = v270;
        *(v265 + 112) = v271;
        *(v265 + 80) = v269;
        v272 = v250[2];
        v116 = __OFADD__(v272, 1);
        v273 = v272 + 1;
        if (v116)
        {
          goto LABEL_156;
        }

        v250[2] = v273;
        goto LABEL_146;
      }

LABEL_142:
      v250 = v295;
      v251 = v295[7] + 136 * v243;
      v298 = *v251;
      v252 = *(v251 + 64);
      v254 = *(v251 + 16);
      v253 = *(v251 + 32);
      v301 = *(v251 + 48);
      v302 = v252;
      v299 = v254;
      v300 = v253;
      v256 = *(v251 + 96);
      v255 = *(v251 + 112);
      v257 = *(v251 + 80);
      v306 = *(v251 + 128);
      v304 = v256;
      v305 = v255;
      v303 = v257;
      *v251 = *&v307[8];
      v258 = *&v307[24];
      v259 = *&v307[40];
      v260 = *&v307[72];
      *(v251 + 48) = *&v307[56];
      *(v251 + 64) = v260;
      *(v251 + 16) = v258;
      *(v251 + 32) = v259;
      v261 = *&v307[88];
      v262 = *&v307[104];
      v263 = *&v307[120];
      *(v251 + 128) = *&v307[136];
      *(v251 + 96) = v262;
      *(v251 + 112) = v263;
      *(v251 + 80) = v261;
      sub_213D1E108(&v298);

LABEL_146:
      v274 = *(v239 + 16);
      *(v239 + 16) = v250;

      v237(v308, 0);

      if (v286 == v204)
      {
        goto LABEL_149;
      }

      ++v204;
      v205 = v288 + 144;
      if (v204 >= v290[2])
      {
        __break(1u);
LABEL_149:

        return v202;
      }
    }
  }

  v10 = (a2 + 32);
  v11 = MEMORY[0x277D84F90];
  v279 = MEMORY[0x277D84F90];
  v280 = MEMORY[0x277D84F90];
  while (1)
  {
    v287 = v9;
    v289 = v11;
    v12 = v10[7];
    v324 = v10[6];
    v325 = v12;
    v326 = *(v10 + 16);
    v13 = v10[3];
    v322 = v10[2];
    *v323 = v13;
    v14 = v10[5];
    *&v323[16] = v10[4];
    *&v323[32] = v14;
    v15 = v10[1];
    v320 = *v10;
    v321 = v15;
    v16 = v15;
    v282 = *&v322;
    v284 = v10;
    v17 = BYTE8(v322);
    v18 = *(&v320 + 1);
    v19 = v320;
    *&v298 = v291;
    v20 = v291;
    sub_213D1E18C(&v320, aBlock);

    swift_getAtKeyPath();

    v21 = *&v307[24];
    if (!*(*&v307[24] + 16))
    {

LABEL_15:

      goto LABEL_18;
    }

    v22 = sub_213CE22A8(v19);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_15;
    }

    v25 = *(*(v21 + 56) + 8 * v22);

    v297 = v20;
    v26 = v20;
    swift_getAtKeyPath();

    v27 = v296;
    if (!*(v296 + 16) || (v28 = sub_213CE2258(v25), (v29 & 1) == 0))
    {

      goto LABEL_17;
    }

    v30 = *(v27 + 56) + 136 * v28;
    *aBlock = *v30;
    v31 = *(v30 + 48);
    v32 = *(v30 + 64);
    v33 = *(v30 + 32);
    *&aBlock[16] = *(v30 + 16);
    *&aBlock[32] = v33;
    *&aBlock[48] = v31;
    *&aBlock[64] = v32;
    v34 = *(v30 + 80);
    v35 = *(v30 + 96);
    v36 = *(v30 + 112);
    *&aBlock[128] = *(v30 + 128);
    *&aBlock[96] = v35;
    *&aBlock[112] = v36;
    *&aBlock[80] = v34;
    sub_213D1E18C(aBlock, v307);

    v37 = v18;
    v38 = *(&v16 + 1);
    v39 = *&v16;
    if (v17)
    {
      v40 = v282;
      if ((aBlock[40] & 1) == 0)
      {
        sub_213D1E108(aBlock);

        v11 = v289;
        v41 = v284;
        goto LABEL_20;
      }

      if (v18 != *&aBlock[8] || *&v16 != *&aBlock[16] || *(&v16 + 1) != *&aBlock[24] || *&aBlock[32] != v282)
      {
LABEL_46:
        sub_213D1E108(aBlock);
LABEL_17:

LABEL_18:
        v37 = v18;
        v38 = *(&v16 + 1);
        v39 = *&v16;
        v41 = v284;
        if (v17)
        {
          v40 = v282;
          v11 = v289;
LABEL_20:
          v42 = [objc_opt_self() circleWithMapRect_];
LABEL_23:
          v43 = v42;
          *&aBlock[96] = v324;
          *&aBlock[112] = v325;
          *&aBlock[128] = v326;
          *&aBlock[32] = v322;
          *&aBlock[48] = *v323;
          *&aBlock[64] = *&v323[16];
          *&aBlock[80] = *&v323[32];
          *aBlock = v320;
          *&aBlock[16] = v321;
          sub_213D1E18C(&v320, v307);
          v44 = v43;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_213D70434(0, v11[2] + 1, 1, v11);
          }

          v46 = v11[2];
          v45 = v11[3];
          if (v46 >= v45 >> 1)
          {
            v11 = sub_213D70434((v45 > 1), v46 + 1, 1, v11);
          }

          sub_213D1E108(&v320);

          v11[2] = v46 + 1;
          v47 = &v11[18 * v46];
          v47[4] = v44;
          *(v47 + 5) = *aBlock;
          v48 = *&aBlock[16];
          v49 = *&aBlock[32];
          v50 = *&aBlock[48];
          *(v47 + 13) = *&aBlock[64];
          *(v47 + 11) = v50;
          *(v47 + 9) = v49;
          *(v47 + 7) = v48;
          v51 = *&aBlock[80];
          v52 = *&aBlock[96];
          v53 = *&aBlock[112];
          v47[21] = *&aBlock[128];
          *(v47 + 19) = v53;
          *(v47 + 17) = v52;
          *(v47 + 15) = v51;
          goto LABEL_28;
        }

        v11 = v289;
LABEL_22:
        v42 = [objc_opt_self() circleWithCenterCoordinate:v37 radius:{v39, v38}];
        goto LABEL_23;
      }
    }

    else
    {
      if ((aBlock[40] & 1) != 0 || v18 != *&aBlock[8] || *&v16 != *&aBlock[16])
      {
        sub_213D1E108(aBlock);

        v11 = v289;
        v41 = v284;
        goto LABEL_22;
      }

      if (*(&v16 + 1) != *&aBlock[24])
      {
        goto LABEL_46;
      }
    }

    if (v326 != *&aBlock[128])
    {
      goto LABEL_46;
    }

    *(&v299 + 1) = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
    *&v300 = &off_28263B0B0;
    *&v298 = a1;
    sub_213D1E22C(&v298, v308);
    sub_213D1E22C(v308, v292);
    v54 = swift_allocObject();
    sub_213D1E2DC(v308, v54 + 16);
    *(v54 + 56) = v25;
    v55 = v325;
    *(v54 + 160) = v324;
    *(v54 + 176) = v55;
    *(v54 + 192) = v326;
    v56 = *v323;
    *(v54 + 96) = v322;
    *(v54 + 112) = v56;
    v57 = *&v323[32];
    *(v54 + 128) = *&v323[16];
    *(v54 + 144) = v57;
    v58 = v321;
    *(v54 + 64) = v320;
    *(v54 + 80) = v58;
    if (!a4)
    {
      v71 = v293;
      v72 = v294;
      __swift_project_boxed_opaque_existential_1(v292, v293);
      v73 = *(v72 + 48);
      sub_213D1E18C(&v320, v307);
      v74 = v25;
      v75 = a1;
      v76 = v73(v74, v71, v72);
      if (v76)
      {
        v77 = v76;
        objc_opt_self();
        v78 = swift_dynamicCastObjCClass();
        v11 = v289;
        if (v78)
        {
          v79 = v78;
          v327 = *&v323[8];
          v328 = *&v323[24];
          v329 = *&v323[40];
          v80 = *&v323[32];
          v81 = *&v323[8];
          sub_213D1E3A4(&v327, v307);
          [v79 setLineWidth_];
          [v79 setLineCap_];
          [v79 setLineJoin_];
          [v79 setMiterLimit_];
          if (*(v80 + 16))
          {

            sub_213D18410(v82);
            sub_213D1E400(&v327);
            sub_213CE2B34(0, &unk_27C8EB188, 0x277CCABB0);
            v83 = sub_213D919EC();
          }

          else
          {
            v83 = 0;
          }

          v84 = v324;
          v85 = BYTE8(v324);
          [v79 setLineDashPattern_];

          [v79 setLineDashPhase_];
          sub_213D1E400(&v327);
          if (v85)
          {
            if (!*(v84 + 16))
            {
              sub_213D9149C();
LABEL_59:
              v87 = v325;
              v88 = BYTE8(v325);
              sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
              v89 = sub_213D91C3C();
              [v79 setStrokeColor_];

              if (v88)
              {
                if (!*(v87 + 16))
                {
                  sub_213D9149C();
                  goto LABEL_63;
                }

                v90 = *(v87 + 32);
              }

LABEL_63:
              v91 = sub_213D91C3C();
              [v79 setFillColor_];

              [v79 setNeedsDisplay];

              goto LABEL_64;
            }

            v86 = *(v84 + 32);
          }

          goto LABEL_59;
        }
      }

      else
      {

        v11 = v289;
      }

LABEL_64:
      __swift_destroy_boxed_opaque_existential_1(v292);
      __swift_destroy_boxed_opaque_existential_1(&v298);
      v283 = 0;
      v276 = 0;
      goto LABEL_65;
    }

    sub_213D1E18C(&v320, v307);
    v59 = v25;
    v60 = a1;

    __swift_destroy_boxed_opaque_existential_1(v292);
    v61 = swift_allocObject();
    v61[2] = sub_213D1E2F4;
    v61[3] = v54;
    v61[4] = a4;
    v62 = swift_allocObject();
    *(v62 + 16) = sub_213D1E2F4;
    *(v62 + 24) = v54;

    __swift_destroy_boxed_opaque_existential_1(&v298);
    v63 = swift_allocObject();
    *(v63 + 16) = sub_213D1E454;
    *(v63 + 24) = v61;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v279 = sub_213D6FE48(0, v279[2] + 1, 1, v279);
    }

    v11 = v289;
    v65 = v279[2];
    v64 = v279[3];
    if (v65 >= v64 >> 1)
    {
      v279 = sub_213D6FE48((v64 > 1), v65 + 1, 1, v279);
    }

    v279[2] = v65 + 1;
    v66 = &v279[2 * v65];
    v66[4] = sub_213CFA4DC;
    v66[5] = v63;
    v67 = swift_allocObject();
    *(v67 + 16) = sub_213D1E460;
    *(v67 + 24) = v62;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v280 = sub_213D6FE48(0, v280[2] + 1, 1, v280);
    }

    v69 = v280[2];
    v68 = v280[3];
    if (v69 >= v68 >> 1)
    {
      v280 = sub_213D6FE48((v68 > 1), v69 + 1, 1, v280);
    }

    v280[2] = v69 + 1;
    v70 = &v280[2 * v69];
    v70[4] = sub_213D1F608;
    v70[5] = v67;
    v276 = sub_213D1E460;
    v283 = sub_213D1E454;
LABEL_65:
    v92 = v281;
    v93 = sub_213CE2258(v25);
    if (v94)
    {
      v95 = v93;
      v96 = swift_isUniquelyReferenced_nonNull_native();
      *&v298 = v281;
      if (!v96)
      {
        sub_213D1C0D4();
        v92 = v298;
      }

      v97 = *(v92 + 56) + 136 * v95;
      *v307 = *v97;
      v98 = *(v97 + 48);
      v99 = *(v97 + 64);
      v100 = *(v97 + 32);
      *&v307[16] = *(v97 + 16);
      *&v307[32] = v100;
      *&v307[48] = v98;
      *&v307[64] = v99;
      v101 = *(v97 + 80);
      v102 = *(v97 + 96);
      v103 = *(v97 + 112);
      *&v307[128] = *(v97 + 128);
      *&v307[96] = v102;
      *&v307[112] = v103;
      *&v307[80] = v101;
      sub_213D1E108(v307);
      v281 = v92;
      sub_213D1B1E8(v95, v92);
    }

    *&v298 = v26;
    v104 = v26;
    sub_213D1E18C(&v320, v307);
    v105 = v25;
    v106 = swift_modifyAtReferenceWritableKeyPath();
    v108 = v107;
    v109 = *(v107 + 16);
    v110 = swift_isUniquelyReferenced_nonNull_native();
    *&v308[0] = *(v108 + 16);
    v111 = *&v308[0];
    *(v108 + 16) = 0x8000000000000000;
    v112 = sub_213CE2258(v105);
    v114 = *(v111 + 16);
    v115 = (v113 & 1) == 0;
    v116 = __OFADD__(v114, v115);
    v117 = v114 + v115;
    if (v116)
    {
      break;
    }

    v118 = v113;
    if (*(v111 + 24) < v117)
    {
      sub_213D19760(v117, v110);
      v112 = sub_213CE2258(v105);
      if ((v118 & 1) != (v119 & 1))
      {
        goto LABEL_160;
      }

LABEL_74:
      v120 = *&v308[0];
      if ((v118 & 1) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_75;
    }

    if (v110)
    {
      goto LABEL_74;
    }

    v121 = v112;
    sub_213D1C0D4();
    v112 = v121;
    v120 = *&v308[0];
    if ((v118 & 1) == 0)
    {
LABEL_79:
      v120[(v112 >> 6) + 8] |= 1 << v112;
      *(v120[6] + 8 * v112) = v105;
      v122 = v120[7] + 136 * v112;
      *v122 = v320;
      v123 = v321;
      v124 = v322;
      v125 = *&v323[16];
      *(v122 + 48) = *v323;
      *(v122 + 64) = v125;
      *(v122 + 16) = v123;
      *(v122 + 32) = v124;
      v126 = *&v323[32];
      v127 = v324;
      v128 = v325;
      *(v122 + 128) = v326;
      *(v122 + 96) = v127;
      *(v122 + 112) = v128;
      *(v122 + 80) = v126;
      v129 = v120[2];
      v116 = __OFADD__(v129, 1);
      v130 = v129 + 1;
      if (v116)
      {
        goto LABEL_159;
      }

      v120[2] = v130;
      goto LABEL_81;
    }

LABEL_75:
    sub_213D1E348(&v320, v120[7] + 136 * v112);

LABEL_81:
    v131 = *(v108 + 16);
    *(v108 + 16) = v120;

    v106(v307, 0);
    sub_213D1E108(aBlock);
    sub_213CCE520(v276);
    sub_213CCE520(v283);

    sub_213D1E108(&v320);
    v41 = v284;
    v9 = v287;
LABEL_28:
    v10 = (v41 + 136);
    if (!--v9)
    {
      goto LABEL_83;
    }
  }

  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  sub_213CE2B34(0, &qword_27C8EB180, 0x277CD4DA0);
  sub_213D91F8C();
  __break(1u);
LABEL_161:
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D01228(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = swift_readAtKeyPath();
  v290 = *(v8 + 16);

  v7(aBlock, 0);
  v294 = v6;

  v9 = *(a2 + 16);
  if (!v9)
  {
    v10 = MEMORY[0x277D84F90];
    v283 = MEMORY[0x277D84F90];
    v284 = MEMORY[0x277D84F90];
LABEL_80:
    v289 = v10;
    if (a4)
    {
      v126 = objc_opt_self();
      v127 = swift_allocObject();
      *(v127 + 16) = v283;
      *&aBlock[32] = sub_213D1F590;
      *&aBlock[40] = v127;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213CFF278;
      *&aBlock[24] = &block_descriptor_132;
      v128 = _Block_copy(aBlock);

      v129 = swift_allocObject();
      *(v129 + 16) = v284;
      *&aBlock[32] = sub_213D1F60C;
      *&aBlock[40] = v129;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213D183BC;
      *&aBlock[24] = &block_descriptor_139;
      v130 = _Block_copy(aBlock);

      [v126 animateWithDuration:v128 animations:v130 completion:0.25];
      _Block_release(v130);
      _Block_release(v128);
    }

    v131 = v290 + 64;
    v132 = 1 << *(v290 + 32);
    v133 = -1;
    if (v132 < 64)
    {
      v133 = ~(-1 << v132);
    }

    v134 = v133 & *(v290 + 64);
    v286 = ((v132 + 63) >> 6);

    v135 = 0;
    while (v134)
    {
      v144 = v135;
LABEL_97:
      v147 = __clz(__rbit64(v134));
      v134 &= v134 - 1;
      v148 = v147 | (v144 << 6);
      v149 = *(*(v290 + 48) + 8 * v148);
      v150 = *(v290 + 56) + 120 * v148;
      v152 = *(v150 + 32);
      v151 = *(v150 + 48);
      v153 = *v150;
      v302 = *(v150 + 16);
      v303 = v152;
      v301 = v153;
      v155 = *(v150 + 80);
      v154 = *(v150 + 96);
      v156 = *(v150 + 64);
      v308 = *(v150 + 112);
      v306 = v155;
      v307 = v154;
      v304 = v151;
      v305 = v156;
      v157 = *v150;
      v158 = *(v150 + 16);
      v159 = *(v150 + 48);
      *&v309[32] = *(v150 + 32);
      *&v309[48] = v159;
      *v309 = v157;
      *&v309[16] = v158;
      v160 = *(v150 + 64);
      v161 = *(v150 + 80);
      v162 = *(v150 + 96);
      *&v309[112] = *(v150 + 112);
      *&v309[80] = v161;
      *&v309[96] = v162;
      *&v309[64] = v160;
      *aBlock = v149;
      *&aBlock[72] = v160;
      *&aBlock[88] = v161;
      *&aBlock[104] = v162;
      v312 = *&v309[112];
      *&aBlock[8] = *v309;
      *&aBlock[24] = *&v309[16];
      *&aBlock[40] = *&v309[32];
      *&aBlock[56] = v159;
      nullsub_2(aBlock);
      v163 = v149;
      sub_213D1E518(&v301, v310);
      v164 = *aBlock;
      v317 = *&aBlock[72];
      v318 = *&aBlock[88];
      v319 = *&aBlock[104];
      v320 = v312;
      v313 = *&aBlock[8];
      v314 = *&aBlock[24];
      v165 = *&aBlock[40];
      v166 = *&aBlock[56];
LABEL_98:
      v315 = v165;
      v316 = v166;
      *&aBlock[72] = v317;
      *&aBlock[88] = v318;
      *&aBlock[104] = v319;
      *&aBlock[8] = v313;
      *&aBlock[24] = v314;
      *&aBlock[40] = v165;
      v312 = v320;
      *&aBlock[56] = v166;
      *aBlock = v164;
      if (sub_213CCF338(aBlock) == 1)
      {

        *v309 = MEMORY[0x277D84F90];
        v191 = 1 << *(v290 + 32);
        v192 = -1;
        if (v191 < 64)
        {
          v192 = ~(-1 << v191);
        }

        v193 = v192 & *(v290 + 64);
        v194 = (v191 + 63) >> 6;

        v195 = 0;
        while (v193)
        {
LABEL_115:
          v197 = __clz(__rbit64(v193));
          v193 &= v193 - 1;
          v198 = *(*(v290 + 48) + ((v195 << 9) | (8 * v197)));
          type metadata accessor for MapBridgingUserAnnotation();
          if (!swift_dynamicCastClass())
          {
            v199 = v198;
            sub_213D91DEC();
            v200 = *(*v309 + 16);
            sub_213D91E2C();
            sub_213D91E3C();
            sub_213D91DFC();
          }
        }

        while (1)
        {
          v196 = v195 + 1;
          if (__OFADD__(v195, 1))
          {
            goto LABEL_149;
          }

          if (v196 >= v194)
          {

            v201 = *v309;
            if ((*v309 & 0x8000000000000000) == 0 && (*v309 & 0x4000000000000000) == 0)
            {

              sub_213D91F6C();
              sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
              v202 = v201;
              goto LABEL_120;
            }

            goto LABEL_154;
          }

          v193 = *(v131 + 8 * v196);
          ++v195;
          if (v193)
          {
            v195 = v196;
            goto LABEL_115;
          }
        }
      }

      *&v309[64] = v317;
      *&v309[80] = v318;
      *&v309[96] = v319;
      *&v309[112] = v320;
      *v309 = v313;
      *&v309[16] = v314;
      *&v309[32] = v315;
      *&v309[48] = v316;
      v167 = v313;
      *&v310[0] = v294;
      v168 = v294;

      v169 = swift_modifyAtReferenceWritableKeyPath();
      v171 = v170;
      v172 = *(v170 + 24);
      v173 = sub_213CE22A8(v167);
      LOBYTE(v172) = v174;

      if (v172)
      {
        v175 = *(v171 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v177 = *(v171 + 24);
        v295[0] = v177;
        *(v171 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB1C8, &qword_213D97230);
          v177 = v295[0];
        }

        v178 = *(v177[6] + 8 * v173);

        sub_213D1B868(v173, v177);
        v179 = *(v171 + 24);
        *(v171 + 24) = v177;
      }

      v169(&v301, 0);

      v295[0] = v168;
      v180 = v168;
      v181 = swift_modifyAtReferenceWritableKeyPath();
      v183 = v182;
      v184 = *(v182 + 16);
      v185 = sub_213CE2354(v164);
      if (v186)
      {
        v187 = v185;
        v188 = *(v183 + 16);
        v189 = swift_isUniquelyReferenced_nonNull_native();
        v190 = *(v183 + 16);
        v298 = v190;
        *(v183 + 16) = 0x8000000000000000;
        if (!v189)
        {
          sub_213D1C2B8();
          v190 = v298;
        }

        v136 = *(v190 + 56) + 120 * v187;
        v138 = *(v136 + 32);
        v137 = *(v136 + 48);
        v139 = *(v136 + 16);
        v301 = *v136;
        v302 = v139;
        v303 = v138;
        v304 = v137;
        v140 = *(v136 + 64);
        v141 = *(v136 + 80);
        v142 = *(v136 + 96);
        v308 = *(v136 + 112);
        v306 = v141;
        v307 = v142;
        v305 = v140;
        sub_213D1E4C4(&v301);
        sub_213D1B378(v187, v190);
        v143 = *(v183 + 16);
        *(v183 + 16) = v190;
      }

      v181(v310, 0);

      sub_213D1E4C4(v309);
      v131 = v290 + 64;
    }

    if (v286 <= v135 + 1)
    {
      v145 = (v135 + 1);
    }

    else
    {
      v145 = v286;
    }

    v146 = v145 - 1;
    while (1)
    {
      v144 = v135 + 1;
      if (__OFADD__(v135, 1))
      {
        break;
      }

      if (v144 >= v286)
      {
        sub_213D1E5D0(aBlock);
        v134 = 0;
        v320 = v312;
        v164 = *aBlock;
        v317 = *&aBlock[72];
        v318 = *&aBlock[88];
        v319 = *&aBlock[104];
        v313 = *&aBlock[8];
        v314 = *&aBlock[24];
        v165 = *&aBlock[40];
        v166 = *&aBlock[56];
        v135 = v146;
        goto LABEL_98;
      }

      v134 = *(v131 + 8 * v144);
      ++v135;
      if (v134)
      {
        v135 = v144;
        goto LABEL_97;
      }
    }

    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);

    v202 = sub_213D91EAC();

LABEL_120:
    v203 = v289;

    sub_213D17F50(v202);

    v204 = v289[2];
    if (!v204)
    {
      return v203;
    }

    v205 = 0;
    v291 = v204 - 1;
    v206 = 32;
    while (1)
    {
      v293 = v206;
      v207 = *(v203 + v206 + 48);
      v209 = *(v203 + v206);
      v208 = *(v203 + v206 + 16);
      *&v309[32] = *(v203 + v206 + 32);
      *&v309[48] = v207;
      *v309 = v209;
      *&v309[16] = v208;
      v210 = *(v203 + v206 + 64);
      v211 = *(v203 + v206 + 80);
      v212 = *(v203 + v206 + 112);
      *&v309[96] = *(v203 + v206 + 96);
      *&v309[112] = v212;
      *&v309[64] = v210;
      *&v309[80] = v211;
      v214 = *&v309[8];
      v213 = *v309;
      *&v310[0] = v294;
      v215 = v294;
      sub_213CE2C28(v309, &v301, &qword_27C8EB1B0, &qword_213D97220);

      v216 = v213;
      v217 = swift_modifyAtReferenceWritableKeyPath();
      v219 = v218;
      v220 = *(v218 + 24);
      v221 = swift_isUniquelyReferenced_nonNull_native();
      v295[0] = *(v219 + 24);
      v222 = v295[0];
      *(v219 + 24) = 0x8000000000000000;
      v224 = sub_213CE22A8(v214);
      v225 = v222[2];
      v226 = (v223 & 1) == 0;
      v227 = v225 + v226;
      if (__OFADD__(v225, v226))
      {
        goto LABEL_150;
      }

      v228 = v223;
      if (v222[3] >= v227)
      {
        if (v221)
        {
          v231 = v295[0];
          if (v223)
          {
            goto LABEL_130;
          }
        }

        else
        {
          sub_213D1CE38(&qword_27C8EB1C8, &qword_213D97230);
          v231 = v295[0];
          if (v228)
          {
            goto LABEL_130;
          }
        }
      }

      else
      {
        sub_213D1AEB0(v227, v221, &qword_27C8EB1C8, &qword_213D97230);
        v229 = sub_213CE22A8(v214);
        if ((v228 & 1) != (v230 & 1))
        {
          goto LABEL_158;
        }

        v224 = v229;
        v231 = v295[0];
        if (v228)
        {
LABEL_130:
          v234 = v231[7];
          v235 = *(v234 + 8 * v224);
          *(v234 + 8 * v224) = v216;

          goto LABEL_131;
        }
      }

      v231[(v224 >> 6) + 8] |= 1 << v224;
      *(v231[6] + 8 * v224) = v214;
      *(v231[7] + 8 * v224) = v216;
      v232 = v231[2];
      v110 = __OFADD__(v232, 1);
      v233 = v232 + 1;
      if (v110)
      {
        goto LABEL_152;
      }

      v231[2] = v233;
LABEL_131:
      *(v219 + 24) = v231;
      v217(&v301, 0);

      v295[0] = v215;
      v236 = v215;
      v237 = v216;
      v238 = swift_modifyAtReferenceWritableKeyPath();
      v240 = v239;
      v241 = *(v239 + 16);
      v242 = swift_isUniquelyReferenced_nonNull_native();
      v298 = *(v240 + 16);
      v243 = v298;
      *(v240 + 16) = 0x8000000000000000;
      v244 = sub_213CE2354(v237);
      v246 = v243[2];
      v247 = (v245 & 1) == 0;
      v110 = __OFADD__(v246, v247);
      v248 = v246 + v247;
      v203 = v289;
      if (v110)
      {
        goto LABEL_151;
      }

      v249 = v245;
      if (v243[3] < v248)
      {
        sub_213D19B34(v248, v242);
        v244 = sub_213CE2354(v237);
        if ((v249 & 1) != (v250 & 1))
        {
          goto LABEL_157;
        }

LABEL_136:
        if ((v249 & 1) == 0)
        {
          goto LABEL_141;
        }

        goto LABEL_137;
      }

      if (v242)
      {
        goto LABEL_136;
      }

      v265 = v244;
      sub_213D1C2B8();
      v244 = v265;
      if ((v249 & 1) == 0)
      {
LABEL_141:
        v251 = v298;
        v298[(v244 >> 6) + 8] |= 1 << v244;
        *(v251[6] + 8 * v244) = v237;
        v266 = v251[7] + 120 * v244;
        v267 = *&v309[24];
        v268 = *&v309[56];
        v269 = *&v309[8];
        *(v266 + 32) = *&v309[40];
        *(v266 + 48) = v268;
        *v266 = v269;
        *(v266 + 16) = v267;
        v270 = *&v309[72];
        v271 = *&v309[88];
        v272 = *&v309[104];
        *(v266 + 112) = *&v309[120];
        *(v266 + 80) = v271;
        *(v266 + 96) = v272;
        *(v266 + 64) = v270;
        v273 = v251[2];
        v110 = __OFADD__(v273, 1);
        v274 = v273 + 1;
        if (v110)
        {
          goto LABEL_153;
        }

        v251[2] = v274;
        goto LABEL_143;
      }

LABEL_137:
      v251 = v298;
      v252 = v298[7] + 120 * v244;
      v253 = *(v252 + 48);
      v255 = *v252;
      v254 = *(v252 + 16);
      v303 = *(v252 + 32);
      v304 = v253;
      v301 = v255;
      v302 = v254;
      v257 = *(v252 + 80);
      v256 = *(v252 + 96);
      v258 = *(v252 + 64);
      v308 = *(v252 + 112);
      v306 = v257;
      v307 = v256;
      v305 = v258;
      v259 = *&v309[8];
      v260 = *&v309[24];
      v261 = *&v309[56];
      *(v252 + 32) = *&v309[40];
      *(v252 + 48) = v261;
      *v252 = v259;
      *(v252 + 16) = v260;
      v262 = *&v309[72];
      v263 = *&v309[88];
      v264 = *&v309[104];
      *(v252 + 112) = *&v309[120];
      *(v252 + 80) = v263;
      *(v252 + 96) = v264;
      *(v252 + 64) = v262;
      sub_213D1E4C4(&v301);

LABEL_143:
      v275 = *(v240 + 16);
      *(v240 + 16) = v251;

      v238(v310, 0);

      if (v291 == v205)
      {
        goto LABEL_146;
      }

      ++v205;
      v206 = v293 + 128;
      if (v205 >= v289[2])
      {
        __break(1u);
LABEL_146:

        return v203;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
  v11 = (a2 + 40);
  v283 = MEMORY[0x277D84F90];
  v284 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = *(v11 + 72);
    *&v323[32] = *(v11 + 56);
    v324 = v12;
    v325 = *(v11 + 88);
    v326 = *(v11 + 13);
    v13 = *(v11 + 8);
    v321 = *(v11 - 8);
    v322 = v13;
    v14 = *(v11 + 40);
    *v323 = *(v11 + 24);
    *&v323[16] = v14;
    v15 = *v11;
    v331 = *(v11 + 2);
    v330 = v15;
    *&v301 = v294;
    v16 = v294;
    sub_213D1E518(&v321, aBlock);
    swift_getAtKeyPath();

    v17 = *&v309[24];
    if (!*(*&v309[24] + 16) || (v18 = sub_213CE22A8(v321), (v19 & 1) == 0))
    {

      goto LABEL_34;
    }

    v20 = *(*(v17 + 56) + 8 * v18);

    v300 = v16;
    v21 = v16;
    swift_getAtKeyPath();

    v22 = v299;
    if (!*(v299 + 16) || (v23 = sub_213CE2354(v20), (v24 & 1) == 0))
    {

      goto LABEL_33;
    }

    v25 = *(v22 + 56) + 120 * v23;
    v27 = *(v25 + 32);
    v26 = *(v25 + 48);
    v28 = *(v25 + 16);
    *aBlock = *v25;
    *&aBlock[16] = v28;
    *&aBlock[32] = v27;
    *&aBlock[48] = v26;
    v29 = *(v25 + 64);
    v30 = *(v25 + 80);
    v31 = *(v25 + 96);
    *&aBlock[112] = *(v25 + 112);
    *&aBlock[80] = v30;
    *&aBlock[96] = v31;
    *&aBlock[64] = v29;
    sub_213D1E518(aBlock, v309);

    if (((*(&v330 + 9) | ((*(&v330 + 13) | (SHIBYTE(v330) << 16)) << 32)) & 0x8000000000000000) != 0)
    {
      if ((*&aBlock[16] & 0x8000000000000000) == 0)
      {
        goto LABEL_32;
      }

      sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
      if ((sub_213D91C5C() & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if ((*&aBlock[16] & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v32 = v331;
      v33 = *&aBlock[24];
      if (!sub_213D6798C(v330, BYTE8(v330) & 1, *&aBlock[8], aBlock[16] & 1))
      {
        goto LABEL_32;
      }

      if (v32)
      {
        if (!v33)
        {
          goto LABEL_20;
        }

        v34 = sub_213D6F248(v32, v33);

        if ((v34 & 1) == 0)
        {
LABEL_32:
          sub_213D1E4C4(aBlock);
LABEL_33:

LABEL_34:
          v54 = *(&v330 + 1);
          v55 = v330;
          if ((*(&v330 + 1) & 0x8000000000000000) != 0)
          {
            sub_213D1E574(&v330, aBlock);
          }

          else
          {
            v56 = v331;
            sub_213D1E574(&v330, aBlock);

            sub_213CE2B34(0, &qword_27C8EB1C0, 0x277CD4F18);
            sub_213D1E574(&v330, aBlock);
            v55 = sub_213D67678(v55, v54, v56);
          }

          *&aBlock[64] = *&v323[32];
          *&aBlock[80] = v324;
          *&aBlock[96] = v325;
          *&aBlock[112] = v326;
          *aBlock = v321;
          *&aBlock[16] = v322;
          *&aBlock[32] = *v323;
          *&aBlock[48] = *&v323[16];
          sub_213D1E518(&v321, v309);
          v57 = v55;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_213D70584(0, v10[2] + 1, 1, v10);
          }

          v59 = v10[2];
          v58 = v10[3];
          if (v59 >= v58 >> 1)
          {
            v10 = sub_213D70584((v58 > 1), v59 + 1, 1, v10);
          }

          v10[2] = v59 + 1;
          v60 = &v10[16 * v59];
          v60[4] = v57;
          v61 = *aBlock;
          v62 = *&aBlock[16];
          v63 = *&aBlock[32];
          *(v60 + 11) = *&aBlock[48];
          *(v60 + 9) = v63;
          *(v60 + 7) = v62;
          *(v60 + 5) = v61;
          v64 = *&aBlock[64];
          v65 = *&aBlock[80];
          v66 = *&aBlock[96];
          v60[19] = *&aBlock[112];
          *(v60 + 17) = v66;
          *(v60 + 15) = v65;
          *(v60 + 13) = v64;
          sub_213D1E4C4(&v321);
          goto LABEL_42;
        }
      }

      else if (v33)
      {
LABEL_20:

        sub_213D1E4C4(aBlock);
        goto LABEL_34;
      }
    }

    if (v326 != *&aBlock[112])
    {
      goto LABEL_32;
    }

    *(&v302 + 1) = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
    *&v303 = &off_28263B0B0;
    *&v301 = a1;
    sub_213D1E22C(&v301, v310);
    sub_213D1E22C(v310, v295);
    v35 = swift_allocObject();
    sub_213D1E2DC(v310, v35 + 16);
    *(v35 + 56) = v20;
    v36 = v324;
    *(v35 + 128) = *&v323[32];
    *(v35 + 144) = v36;
    *(v35 + 160) = v325;
    *(v35 + 176) = v326;
    v37 = v322;
    *(v35 + 64) = v321;
    *(v35 + 80) = v37;
    v38 = *&v323[16];
    *(v35 + 96) = *v323;
    *(v35 + 112) = v38;
    if (!a4)
    {
      v288 = v10;
      v67 = v296;
      v68 = v297;
      v279 = v297;
      __swift_project_boxed_opaque_existential_1(v295, v296);
      v69 = *(v68 + 48);
      sub_213D1E518(&v321, v309);
      v70 = v20;
      v71 = a1;
      v72 = v69(v70, v67, v279);
      if (v72)
      {
        v73 = v72;
        objc_opt_self();
        v74 = swift_dynamicCastObjCClass();
        if (v74)
        {
          v75 = v74;
          v327 = *&v323[8];
          v328 = *&v323[24];
          v329 = *&v323[40];
          v76 = *&v323[32];
          v77 = *&v323[8];
          sub_213D1E3A4(&v327, v309);
          [v75 setLineWidth_];
          [v75 setLineCap_];
          [v75 setLineJoin_];
          v285 = v75;
          [v75 setMiterLimit_];
          v10 = v288;
          v280 = v73;
          if (*(v76 + 16))
          {

            sub_213D18410(v78);
            sub_213D1E400(&v327);
            sub_213CE2B34(0, &unk_27C8EB188, 0x277CCABB0);
            v79 = sub_213D919EC();
          }

          else
          {
            v79 = 0;
          }

          v80 = v324;
          v277 = BYTE8(v324);
          [v285 setLineDashPattern_];

          [v285 setLineDashPhase_];
          sub_213D1E400(&v327);
          if (v277)
          {
            if (!*(v80 + 16))
            {
              sub_213D9149C();
LABEL_56:
              v82 = v325;
              v83 = BYTE8(v325);
              sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
              v84 = sub_213D91C3C();
              [v285 setStrokeColor_];

              if (v83)
              {
                if (!*(v82 + 16))
                {
                  sub_213D9149C();
                  goto LABEL_60;
                }

                v85 = *(v82 + 32);
              }

LABEL_60:
              v86 = sub_213D91C3C();
              [v285 setFillColor_];

              [v285 setNeedsDisplay];

              goto LABEL_61;
            }

            v81 = *(v80 + 32);
          }

          goto LABEL_56;
        }
      }

      else
      {
      }

      v10 = v288;
LABEL_61:
      __swift_destroy_boxed_opaque_existential_1(v295);
      __swift_destroy_boxed_opaque_existential_1(&v301);
      v53 = 0;
      v52 = 0;
      v44 = v290;
      goto LABEL_62;
    }

    sub_213D1E518(&v321, v309);
    v39 = v20;
    v40 = a1;

    __swift_destroy_boxed_opaque_existential_1(v295);
    v41 = swift_allocObject();
    v41[2] = sub_213D1E634;
    v41[3] = v35;
    v41[4] = a4;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_213D1E634;
    *(v42 + 24) = v35;
    v287 = v42;

    __swift_destroy_boxed_opaque_existential_1(&v301);
    v43 = swift_allocObject();
    *(v43 + 16) = sub_213D1E454;
    *(v43 + 24) = v41;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v283 = sub_213D6FE48(0, v283[2] + 1, 1, v283);
    }

    v44 = v290;
    v46 = v283[2];
    v45 = v283[3];
    if (v46 >= v45 >> 1)
    {
      v283 = sub_213D6FE48((v45 > 1), v46 + 1, 1, v283);
    }

    v283[2] = v46 + 1;
    v47 = &v283[2 * v46];
    v47[4] = sub_213D1F608;
    v47[5] = v43;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_213D1E460;
    *(v48 + 24) = v287;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v284 = sub_213D6FE48(0, v284[2] + 1, 1, v284);
    }

    v50 = v284[2];
    v49 = v284[3];
    if (v50 >= v49 >> 1)
    {
      v284 = sub_213D6FE48((v49 > 1), v50 + 1, 1, v284);
    }

    v284[2] = v50 + 1;
    v51 = &v284[2 * v50];
    v51[4] = sub_213D1F608;
    v51[5] = v48;
    v52 = sub_213D1E460;
    v53 = sub_213D1E454;
LABEL_62:
    v87 = sub_213CE2354(v20);
    v278 = v52;
    v281 = v53;
    if (v88)
    {
      v89 = v87;
      v90 = swift_isUniquelyReferenced_nonNull_native();
      *&v301 = v44;
      if (!v90)
      {
        sub_213D1C2B8();
        v44 = v301;
      }

      v91 = *(v44 + 56) + 120 * v89;
      v93 = *(v91 + 32);
      v92 = *(v91 + 48);
      v94 = *(v91 + 16);
      *v309 = *v91;
      *&v309[16] = v94;
      *&v309[32] = v93;
      *&v309[48] = v92;
      v95 = *(v91 + 64);
      v96 = *(v91 + 80);
      v97 = *(v91 + 96);
      *&v309[112] = *(v91 + 112);
      *&v309[80] = v96;
      *&v309[96] = v97;
      *&v309[64] = v95;
      sub_213D1E4C4(v309);
      v290 = v44;
      sub_213D1B378(v89, v44);
    }

    *&v301 = v21;
    v98 = v21;
    sub_213D1E518(&v321, v309);
    v99 = v20;
    v100 = swift_modifyAtReferenceWritableKeyPath();
    v102 = v101;
    v103 = *(v101 + 16);
    v104 = swift_isUniquelyReferenced_nonNull_native();
    *&v310[0] = *(v102 + 16);
    v105 = *&v310[0];
    *(v102 + 16) = 0x8000000000000000;
    v106 = sub_213CE2354(v99);
    v108 = *(v105 + 16);
    v109 = (v107 & 1) == 0;
    v110 = __OFADD__(v108, v109);
    v111 = v108 + v109;
    if (v110)
    {
      break;
    }

    v112 = v107;
    if (*(v105 + 24) < v111)
    {
      sub_213D19B34(v111, v104);
      v106 = sub_213CE2354(v99);
      if ((v112 & 1) != (v113 & 1))
      {
        goto LABEL_157;
      }

LABEL_71:
      v114 = *&v310[0];
      if ((v112 & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_72;
    }

    if (v104)
    {
      goto LABEL_71;
    }

    v115 = v106;
    sub_213D1C2B8();
    v106 = v115;
    v114 = *&v310[0];
    if ((v112 & 1) == 0)
    {
LABEL_76:
      v114[(v106 >> 6) + 8] |= 1 << v106;
      *(v114[6] + 8 * v106) = v99;
      v116 = v114[7] + 120 * v106;
      v117 = v321;
      v118 = v322;
      v119 = *&v323[16];
      *(v116 + 32) = *v323;
      *(v116 + 48) = v119;
      *v116 = v117;
      *(v116 + 16) = v118;
      v120 = *&v323[32];
      v121 = v324;
      v122 = v325;
      *(v116 + 112) = v326;
      *(v116 + 80) = v121;
      *(v116 + 96) = v122;
      *(v116 + 64) = v120;
      v123 = v114[2];
      v110 = __OFADD__(v123, 1);
      v124 = v123 + 1;
      if (v110)
      {
        goto LABEL_156;
      }

      v114[2] = v124;
      goto LABEL_78;
    }

LABEL_72:
    sub_213D1E644(&v321, v114[7] + 120 * v106);

LABEL_78:
    v125 = *(v102 + 16);
    *(v102 + 16) = v114;

    v100(v309, 0);
    sub_213D1E4C4(aBlock);
    sub_213CCE520(v278);
    sub_213CCE520(v281);

    sub_213D1E4C4(&v321);
LABEL_42:
    v11 = (v11 + 120);
    if (!--v9)
    {
      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  sub_213CE2B34(0, &qword_27C8EB1C0, 0x277CD4F18);
  sub_213D91F8C();
  __break(1u);
LABEL_158:
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D02A04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = swift_readAtKeyPath();
  v252 = *(v8 + 16);

  v7(aBlock, 0);
  v254 = v6;

  v9 = *(a2 + 16);
  if (!v9)
  {
    v10 = MEMORY[0x277D84F90];
    v235 = MEMORY[0x277D84F90];
    v236 = MEMORY[0x277D84F90];
LABEL_70:
    if (a4)
    {
      v108 = objc_opt_self();
      v109 = swift_allocObject();
      *(v109 + 16) = v235;
      *&aBlock[32] = sub_213D1F590;
      *&aBlock[40] = v109;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213CFF278;
      *&aBlock[24] = &block_descriptor_166;
      v110 = _Block_copy(aBlock);

      v111 = swift_allocObject();
      *(v111 + 16) = v236;
      *&aBlock[32] = sub_213D1F60C;
      *&aBlock[40] = v111;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213D183BC;
      *&aBlock[24] = &block_descriptor_173;
      v112 = _Block_copy(aBlock);

      [v108 animateWithDuration:v110 animations:v112 completion:0.25];
      _Block_release(v112);
      _Block_release(v110);
    }

    v113 = v252;
    v114 = v252 + 8;
    v115 = 1 << *(v252 + 32);
    v116 = -1;
    if (v115 < 64)
    {
      v116 = ~(-1 << v115);
    }

    v117 = v116 & v252[8];
    v118 = (v115 + 63) >> 6;

    v119 = 0;
    v251 = v10;
    v237 = v118;
    while (v117)
    {
LABEL_82:
      v127 = __clz(__rbit64(v117)) | (v119 << 6);
      v128 = *(v113[6] + 8 * v127);
      v129 = (v113[7] + 96 * v127);
      v130 = v129[1];
      *aBlock = *v129;
      *&aBlock[16] = v130;
      v131 = v129[4];
      v132 = v129[5];
      v133 = v129[3];
      *&aBlock[32] = v129[2];
      *&aBlock[48] = v133;
      *&aBlock[64] = v131;
      *&aBlock[80] = v132;
      v246 = *&aBlock[16];
      v248 = *aBlock;
      v241 = v132;
      v244 = v133;
      v238 = v131;
      v239 = *&aBlock[32];
      v134 = v128;
      sub_213D1E6AC(aBlock, &v262);
      if (!v134)
      {
LABEL_90:

        *aBlock = MEMORY[0x277D84F90];
        v158 = 1 << *(v113 + 32);
        v159 = -1;
        if (v158 < 64)
        {
          v159 = ~(-1 << v158);
        }

        v160 = v159 & v113[8];
        v161 = (v158 + 63) >> 6;

        v162 = 0;
        while (v160)
        {
LABEL_98:
          v164 = __clz(__rbit64(v160));
          v160 &= v160 - 1;
          v165 = *(v113[6] + ((v162 << 9) | (8 * v164)));
          type metadata accessor for MapBridgingUserAnnotation();
          if (!swift_dynamicCastClass())
          {
            v166 = v165;
            sub_213D91DEC();
            v167 = *(*aBlock + 16);
            sub_213D91E2C();
            sub_213D91E3C();
            sub_213D91DFC();
            v113 = v252;
          }
        }

        while (1)
        {
          v163 = v162 + 1;
          if (__OFADD__(v162, 1))
          {
            __break(1u);
            goto LABEL_132;
          }

          if (v163 >= v161)
          {
            break;
          }

          v160 = v114[v163];
          ++v162;
          if (v160)
          {
            v162 = v163;
            goto LABEL_98;
          }
        }

        v168 = *aBlock;
        if ((*aBlock & 0x8000000000000000) == 0 && (*aBlock & 0x4000000000000000) == 0)
        {

          sub_213D91F6C();
          sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
          v169 = v168;
          goto LABEL_103;
        }

        goto LABEL_137;
      }

      *aBlock = v248;
      *&aBlock[16] = v246;
      *&aBlock[32] = v239;
      *&aBlock[48] = v244;
      *&aBlock[64] = v238;
      *&aBlock[80] = v241;
      v259[0] = v254;
      v135 = v254;

      v136 = swift_modifyAtReferenceWritableKeyPath();
      v138 = v137;
      v139 = *(v137 + 24);
      v140 = sub_213CE22A8(v248);
      LOBYTE(v139) = v141;

      if (v139)
      {
        v142 = *(v138 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v144 = *(v138 + 24);
        *&v258[0] = v144;
        *(v138 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB1F8, &qword_213D97250);
          v144 = *&v258[0];
        }

        v145 = *(*(v144 + 48) + 8 * v140);

        sub_213D1B868(v140, v144);
        v146 = *(v138 + 24);
        *(v138 + 24) = v144;
      }

      v136(&v262, 0);

      *&v258[0] = v135;
      v147 = v135;
      v148 = swift_modifyAtReferenceWritableKeyPath();
      v150 = v149;
      v151 = *(v149 + 16);
      v152 = sub_213CE23A4(v134);
      v10 = v251;
      if (v153)
      {
        v154 = v152;
        v155 = *(v150 + 16);
        v156 = swift_isUniquelyReferenced_nonNull_native();
        v157 = *(v150 + 16);
        v255[0] = v157;
        *(v150 + 16) = 0x8000000000000000;
        if (!v156)
        {
          sub_213D1C5E4();
          v157 = v255[0];
        }

        v120 = (*(v157 + 56) + 96 * v154);
        v121 = v120[1];
        v262 = *v120;
        v263 = v121;
        v122 = v120[5];
        v124 = v120[2];
        v123 = v120[3];
        v266 = v120[4];
        v267 = v122;
        v264 = v124;
        v265 = v123;
        sub_213D1E764(&v262);
        sub_213D1B508(v154, v157);
        v125 = *(v150 + 16);
        *(v150 + 16) = v157;
      }

      v117 &= v117 - 1;
      v148(v259, 0);

      sub_213D1E764(aBlock);
      v113 = v252;
      v118 = v237;
    }

    while (1)
    {
      v126 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        break;
      }

      if (v126 >= v118)
      {
        goto LABEL_90;
      }

      v117 = v114[v126];
      ++v119;
      if (v117)
      {
        v119 = v126;
        goto LABEL_82;
      }
    }

LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);

    v169 = sub_213D91EAC();

LABEL_103:

    sub_213D17F50(v169);

    v170 = *(v10 + 16);
    if (!v170)
    {
      return v10;
    }

    v171 = 0;
    v249 = v170 - 1;
    v172 = 32;
    while (1)
    {
      v253 = v172;
      v173 = *(v10 + v172 + 32);
      v174 = *(v10 + v172);
      *&aBlock[16] = *(v10 + v172 + 16);
      *&aBlock[32] = v173;
      *aBlock = v174;
      v175 = *(v10 + v172 + 48);
      v176 = *(v10 + v172 + 64);
      v177 = *(v10 + v172 + 80);
      *&aBlock[96] = *(v10 + v172 + 96);
      *&aBlock[64] = v176;
      *&aBlock[80] = v177;
      *&aBlock[48] = v175;
      v10 = *&aBlock[8];
      v178 = *aBlock;
      v259[0] = v254;
      v179 = v254;
      sub_213CE2C28(aBlock, &v262, &qword_27C8ECC90, &qword_213D97240);

      v180 = v178;
      v181 = swift_modifyAtReferenceWritableKeyPath();
      v183 = v182;
      v184 = *(v182 + 24);
      v185 = swift_isUniquelyReferenced_nonNull_native();
      *&v258[0] = *(v183 + 24);
      v186 = *&v258[0];
      *(v183 + 24) = 0x8000000000000000;
      v188 = sub_213CE22A8(v10);
      v189 = *(v186 + 16);
      v190 = (v187 & 1) == 0;
      v191 = v189 + v190;
      if (__OFADD__(v189, v190))
      {
        goto LABEL_133;
      }

      v192 = v187;
      if (*(v186 + 24) >= v191)
      {
        if (v185)
        {
          v195 = *&v258[0];
          if (v187)
          {
            goto LABEL_113;
          }
        }

        else
        {
          sub_213D1CE38(&qword_27C8EB1F8, &qword_213D97250);
          v195 = *&v258[0];
          if (v192)
          {
            goto LABEL_113;
          }
        }
      }

      else
      {
        sub_213D1AEB0(v191, v185, &qword_27C8EB1F8, &qword_213D97250);
        v193 = sub_213CE22A8(v10);
        if ((v192 & 1) != (v194 & 1))
        {
          goto LABEL_141;
        }

        v188 = v193;
        v195 = *&v258[0];
        if (v192)
        {
LABEL_113:
          v198 = v195[7];
          v199 = *(v198 + 8 * v188);
          *(v198 + 8 * v188) = v180;

          goto LABEL_114;
        }
      }

      v195[(v188 >> 6) + 8] |= 1 << v188;
      *(v195[6] + 8 * v188) = v10;
      *(v195[7] + 8 * v188) = v180;
      v196 = v195[2];
      v94 = __OFADD__(v196, 1);
      v197 = v196 + 1;
      if (v94)
      {
        goto LABEL_135;
      }

      v195[2] = v197;
LABEL_114:
      *(v183 + 24) = v195;
      v181(&v262, 0);

      *&v258[0] = v179;
      v200 = v179;
      v201 = v180;
      v10 = swift_modifyAtReferenceWritableKeyPath();
      v203 = v202;
      v204 = *(v202 + 16);
      v205 = swift_isUniquelyReferenced_nonNull_native();
      v255[0] = *(v203 + 16);
      v206 = v255[0];
      *(v203 + 16) = 0x8000000000000000;
      v207 = sub_213CE23A4(v201);
      v209 = *(v206 + 16);
      v210 = (v208 & 1) == 0;
      v94 = __OFADD__(v209, v210);
      v211 = v209 + v210;
      if (v94)
      {
        goto LABEL_134;
      }

      v212 = v208;
      if (*(v206 + 24) < v211)
      {
        sub_213D1A16C(v211, v205);
        v207 = sub_213CE23A4(v201);
        if ((v212 & 1) != (v213 & 1))
        {
          goto LABEL_140;
        }

LABEL_119:
        if ((v212 & 1) == 0)
        {
          goto LABEL_124;
        }

        goto LABEL_120;
      }

      if (v205)
      {
        goto LABEL_119;
      }

      v224 = v207;
      sub_213D1C5E4();
      v207 = v224;
      if ((v212 & 1) == 0)
      {
LABEL_124:
        v214 = v255[0];
        *(v255[0] + 8 * (v207 >> 6) + 64) |= 1 << v207;
        *(v214[6] + 8 * v207) = v201;
        v225 = (v214[7] + 96 * v207);
        v226 = *&aBlock[24];
        *v225 = *&aBlock[8];
        v225[1] = v226;
        v227 = *&aBlock[40];
        v228 = *&aBlock[56];
        v229 = *&aBlock[88];
        v225[4] = *&aBlock[72];
        v225[5] = v229;
        v225[2] = v227;
        v225[3] = v228;
        v230 = v214[2];
        v94 = __OFADD__(v230, 1);
        v231 = v230 + 1;
        if (v94)
        {
          goto LABEL_136;
        }

        v214[2] = v231;
        goto LABEL_126;
      }

LABEL_120:
      v214 = v255[0];
      v215 = (*(v255[0] + 56) + 96 * v207);
      v216 = v215[1];
      v262 = *v215;
      v263 = v216;
      v217 = v215[2];
      v218 = v215[3];
      v219 = v215[5];
      v266 = v215[4];
      v267 = v219;
      v264 = v217;
      v265 = v218;
      v220 = *&aBlock[56];
      v221 = *&aBlock[88];
      v222 = *&aBlock[40];
      v215[4] = *&aBlock[72];
      v215[5] = v221;
      v215[2] = v222;
      v215[3] = v220;
      v223 = *&aBlock[24];
      *v215 = *&aBlock[8];
      v215[1] = v223;
      sub_213D1E764(&v262);

LABEL_126:
      v232 = *(v203 + 16);
      *(v203 + 16) = v214;

      (v10)(v259, 0);

      if (v249 == v171)
      {
        goto LABEL_129;
      }

      ++v171;
      v10 = v251;
      v172 = v253 + 104;
      if (v171 >= *(v251 + 16))
      {
        __break(1u);
LABEL_129:
        v10 = v251;

        return v10;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
  v11 = a2 + 40;
  v235 = MEMORY[0x277D84F90];
  v236 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = *(v11 + 40);
    v271 = *(v11 + 24);
    v272 = v12;
    v13 = *(v11 + 72);
    v273 = *(v11 + 56);
    v274 = v13;
    v14 = *(v11 + 8);
    v269 = *(v11 - 8);
    v270 = v14;
    v275 = *v11;
    v276 = *(v11 + 8);
    v259[0] = v254;
    v15 = v254;
    sub_213D1E6AC(&v269, aBlock);
    swift_getAtKeyPath();

    v16 = *(&v263 + 1);
    if (!*(*(&v263 + 1) + 16) || (v17 = sub_213CE22A8(v269), (v18 & 1) == 0))
    {

      goto LABEL_32;
    }

    v19 = *(*(v16 + 56) + 8 * v17);

    v261 = v15;
    v20 = v15;
    swift_getAtKeyPath();

    v21 = v260;
    if (!*(v260 + 16) || (v22 = sub_213CE23A4(v19), (v23 & 1) == 0))
    {

LABEL_24:

      goto LABEL_32;
    }

    v250 = v10;
    v24 = (*(v21 + 56) + 96 * v22);
    v25 = v24[1];
    *aBlock = *v24;
    *&aBlock[16] = v25;
    v26 = v24[5];
    v28 = v24[2];
    v27 = v24[3];
    *&aBlock[64] = v24[4];
    *&aBlock[80] = v26;
    *&aBlock[32] = v28;
    *&aBlock[48] = v27;
    sub_213D1E6AC(aBlock, &v262);

    v29 = v275;
    v30 = v276;
    v31 = *&aBlock[8];
    v32 = *&aBlock[16];
    if (v276 < 0)
    {
      if (*&aBlock[16] < 0)
      {
        sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
        sub_213D1E7B8(v31, v32);
        sub_213D1E708(&v275, &v262);
        sub_213D1E7B8(v31, v32);
        sub_213D1E708(&v275, &v262);
        v51 = sub_213D91C5C();
        sub_213D1E6A0(v31, v32);
        sub_213D1E7C4(&v275);
        sub_213D1E6A0(v29, v30);
        sub_213D1E6A0(v31, v32);
        v10 = v250;
        if (v51)
        {
          goto LABEL_11;
        }

LABEL_31:

        sub_213D1E764(aBlock);
      }

      else
      {
        sub_213D1E7B8(*&aBlock[8], *&aBlock[16]);
LABEL_27:
        sub_213D1E708(&v275, &v262);
        sub_213D1E7B8(v31, v32);
        sub_213D1E708(&v275, &v262);

        sub_213D1E764(aBlock);
        sub_213D1E6A0(v31, v32);
        sub_213D1E7C4(&v275);
        sub_213D1E6A0(v29, v30);
        sub_213D1E6A0(v31, v32);
LABEL_29:
        v10 = v250;
      }

LABEL_32:
      v52 = v275;
      if (SHIBYTE(v276) < 0)
      {
        sub_213D1E708(&v275, aBlock);
LABEL_40:
        *&aBlock[32] = v271;
        *&aBlock[48] = v272;
        *&aBlock[64] = v273;
        *&aBlock[80] = v274;
        *aBlock = v269;
        *&aBlock[16] = v270;
        sub_213D1E6AC(&v269, &v262);
        v57 = v52;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_213D706B8(0, *(v10 + 16) + 1, 1, v10);
        }

        v59 = *(v10 + 16);
        v58 = *(v10 + 24);
        if (v59 >= v58 >> 1)
        {
          v10 = sub_213D706B8((v58 > 1), v59 + 1, 1, v10);
        }

        sub_213D1E764(&v269);
        *(v10 + 16) = v59 + 1;
        v60 = v10 + 104 * v59;
        *(v60 + 32) = v57;
        v61 = *&aBlock[32];
        v62 = *&aBlock[48];
        v63 = *&aBlock[64];
        *(v60 + 120) = *&aBlock[80];
        *(v60 + 104) = v63;
        *(v60 + 88) = v62;
        *(v60 + 72) = v61;
        v64 = *aBlock;
        *(v60 + 56) = *&aBlock[16];
        *(v60 + 40) = v64;
        goto LABEL_45;
      }

      v53 = v276;
      if ((v276 & 0x100) != 0)
      {
        sub_213CE2B34(0, &qword_27C8EB1F0, 0x277CD4DF0);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v55 = v52[2];
        if (v53)
        {
LABEL_35:
          v56 = [ObjCClassFromMetadata polylineWithCoordinates:v52 + 4 count:v55];
LABEL_39:
          v52 = v56;
          goto LABEL_40;
        }
      }

      else
      {
        ObjCClassFromMetadata = objc_opt_self();
        v55 = v52[2];
        if (v53)
        {
          goto LABEL_35;
        }
      }

      v56 = [ObjCClassFromMetadata polylineWithPoints:v52 + 4 count:v55];
      goto LABEL_39;
    }

    sub_213D1E7B8(*&aBlock[8], *&aBlock[16]);
    if (v32 < 0)
    {
      goto LABEL_27;
    }

    sub_213D1E708(&v275, &v262);
    sub_213D1E7B8(v31, v32);
    sub_213D1E708(&v275, &v262);
    v33 = sub_213D6798C(v29, v30 & 1, v31, v32 & 1);
    sub_213D1E6A0(v31, v32);
    sub_213D1E7C4(&v275);
    sub_213D1E6A0(v29, v30);
    sub_213D1E6A0(v31, v32);
    if (!v33)
    {

      sub_213D1E764(aBlock);
      goto LABEL_29;
    }

    v10 = v250;
    if (((v32 ^ v30) & 0x100) != 0)
    {
      goto LABEL_31;
    }

LABEL_11:
    if (*(&v274 + 1) != *&aBlock[88])
    {
      sub_213D1E764(aBlock);
      goto LABEL_24;
    }

    v245 = v20;
    v259[3] = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
    v259[4] = &off_28263B0B0;
    v259[0] = a1;
    sub_213D1E22C(v259, v258);
    sub_213D1E22C(v258, v255);
    v34 = swift_allocObject();
    sub_213D1E2DC(v258, v34 + 16);
    *(v34 + 56) = v19;
    v35 = v272;
    *(v34 + 96) = v271;
    *(v34 + 112) = v35;
    v36 = v274;
    *(v34 + 128) = v273;
    *(v34 + 144) = v36;
    v37 = v270;
    *(v34 + 64) = v269;
    *(v34 + 80) = v37;
    if (a4)
    {
      sub_213D1E6AC(&v269, &v262);
      v38 = v19;
      v39 = a1;

      __swift_destroy_boxed_opaque_existential_1(v255);
      v40 = swift_allocObject();
      v40[2] = sub_213D1E818;
      v40[3] = v34;
      v40[4] = a4;
      v41 = swift_allocObject();
      *(v41 + 16) = sub_213D1E818;
      *(v41 + 24) = v34;

      __swift_destroy_boxed_opaque_existential_1(v259);
      v42 = swift_allocObject();
      *(v42 + 16) = sub_213D1E454;
      *(v42 + 24) = v40;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v235 = sub_213D6FE48(0, v235[2] + 1, 1, v235);
      }

      v44 = v235[2];
      v43 = v235[3];
      if (v44 >= v43 >> 1)
      {
        v235 = sub_213D6FE48((v43 > 1), v44 + 1, 1, v235);
      }

      v235[2] = v44 + 1;
      v45 = &v235[2 * v44];
      v45[4] = sub_213D1F608;
      v45[5] = v42;
      v46 = swift_allocObject();
      *(v46 + 16) = sub_213D1E460;
      *(v46 + 24) = v41;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v236 = sub_213D6FE48(0, v236[2] + 1, 1, v236);
      }

      v48 = v236[2];
      v47 = v236[3];
      if (v48 >= v47 >> 1)
      {
        v236 = sub_213D6FE48((v47 > 1), v48 + 1, 1, v236);
      }

      v236[2] = v48 + 1;
      v49 = &v236[2 * v48];
      v49[4] = sub_213D1F608;
      v49[5] = v46;
      v240 = sub_213D1E460;
      v242 = sub_213D1E454;
      v50 = v252;
      v20 = v245;
    }

    else
    {
      v65 = v256;
      v66 = v257;
      __swift_project_boxed_opaque_existential_1(v255, v256);
      v243 = *(v66 + 48);
      sub_213D1E6AC(&v269, &v262);
      v67 = v19;
      v68 = a1;
      v69 = v243(v67, v65, v66);
      if (v69)
      {
        v70 = v69;
        objc_opt_self();
        v71 = swift_dynamicCastObjCClass();
        if (v71)
        {
          v264 = v271;
          v265 = v272;
          v266 = v273;
          v267 = v274;
          v262 = v269;
          v263 = v270;
          v72 = v71;
          sub_213D28034(v71);
          [v72 setNeedsDisplay];
        }

        else
        {
        }
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(v255);
      __swift_destroy_boxed_opaque_existential_1(v259);
      v242 = 0;
      v240 = 0;
      v50 = v252;
    }

    v73 = sub_213CE23A4(v19);
    if (v74)
    {
      v75 = v73;
      v76 = swift_isUniquelyReferenced_nonNull_native();
      v259[0] = v50;
      if (!v76)
      {
        sub_213D1C5E4();
        v50 = v259[0];
      }

      v77 = (v50[7] + 96 * v75);
      v78 = v77[1];
      v262 = *v77;
      v263 = v78;
      v79 = v77[5];
      v81 = v77[2];
      v80 = v77[3];
      v266 = v77[4];
      v267 = v79;
      v264 = v81;
      v265 = v80;
      sub_213D1E764(&v262);
      v252 = v50;
      sub_213D1B508(v75, v50);
    }

    v259[0] = v20;
    v82 = v20;
    sub_213D1E6AC(&v269, &v262);
    v83 = v19;
    v84 = swift_modifyAtReferenceWritableKeyPath();
    v86 = v85;
    v87 = *(v85 + 16);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    *&v258[0] = *(v86 + 16);
    v89 = *&v258[0];
    *(v86 + 16) = 0x8000000000000000;
    v90 = sub_213CE23A4(v83);
    v92 = *(v89 + 16);
    v93 = (v91 & 1) == 0;
    v94 = __OFADD__(v92, v93);
    v95 = v92 + v93;
    if (v94)
    {
      break;
    }

    v96 = v91;
    if (*(v89 + 24) >= v95)
    {
      if ((v88 & 1) == 0)
      {
        v107 = v90;
        sub_213D1C5E4();
        v90 = v107;
      }
    }

    else
    {
      sub_213D1A16C(v95, v88);
      v90 = sub_213CE23A4(v83);
      if ((v96 & 1) != (v97 & 1))
      {
        goto LABEL_140;
      }
    }

    v98 = *&v258[0];
    if (v96)
    {
      sub_213D1E828(&v269, *(*&v258[0] + 56) + 96 * v90);
    }

    else
    {
      *(*&v258[0] + 8 * (v90 >> 6) + 64) |= 1 << v90;
      *(v98[6] + 8 * v90) = v83;
      v99 = (v98[7] + 96 * v90);
      v100 = v270;
      *v99 = v269;
      v99[1] = v100;
      v101 = v271;
      v102 = v272;
      v103 = v274;
      v99[4] = v273;
      v99[5] = v103;
      v99[2] = v101;
      v99[3] = v102;
      v104 = v98[2];
      v94 = __OFADD__(v104, 1);
      v105 = v104 + 1;
      if (v94)
      {
        goto LABEL_139;
      }

      v98[2] = v105;
    }

    v106 = *(v86 + 16);
    *(v86 + 16) = v98;

    v84(&v262, 0);
    sub_213D1E764(aBlock);

    sub_213CCE520(v240);
    sub_213CCE520(v242);

    sub_213D1E764(&v269);
    v10 = v250;
LABEL_45:
    v11 += 96;
    if (!--v9)
    {
      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  sub_213CE2B34(0, &qword_27C8EB6C0, 0x277CD4F28);
  sub_213D91F8C();
  __break(1u);
LABEL_141:
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D03F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v291 = a4;
  v285 = a1;
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB208, &unk_213D97260);
  v311 = *(v302 - 8);
  v8 = *(v311 + 64);
  MEMORY[0x28223BE20](v302);
  v313 = (&v275 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v310 = (&v275 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB680, &unk_213D97FF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v276 = &v275 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v284 = &v275 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v275 - v18;
  MEMORY[0x28223BE20](v20);
  v296 = &v275 - v21;
  MEMORY[0x28223BE20](v22);
  v299 = &v275 - v23;
  MEMORY[0x28223BE20](v24);
  v301 = &v275 - v25;
  MEMORY[0x28223BE20](v26);
  v305 = &v275 - v27;
  v315 = type metadata accessor for UserAnnotationViewModel(0);
  v28 = *(v315 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v315);
  v281 = &v275 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v292 = &v275 - v32;
  MEMORY[0x28223BE20](v33);
  v282 = &v275 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = (&v275 - v36);
  MEMORY[0x28223BE20](v38);
  v300 = &v275 - v39;
  MEMORY[0x28223BE20](v40);
  v314 = (&v275 - v41);
  v283 = v42;
  MEMORY[0x28223BE20](v43);
  v304 = &v275 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB220, &qword_213D97280);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v308 = &v275 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v307 = (&v275 - v49);
  *&v321 = v5;
  v50 = v5;
  v317 = a5;
  v51 = swift_readAtKeyPath();
  v53 = *(v52 + 16);

  v51(&aBlock, 0);
  v316 = v50;

  v54 = *(a2 + 16);
  v312 = v28;
  if (!v54)
  {
    v57 = MEMORY[0x277D84F90];
    v294 = MEMORY[0x277D84F90];
    v295 = MEMORY[0x277D84F90];
LABEL_51:
    v303 = v57;
    if (v291)
    {
      v151 = objc_opt_self();
      v152 = swift_allocObject();
      *(v152 + 16) = v294;
      v326 = sub_213D1F590;
      v327 = v152;
      aBlock = MEMORY[0x277D85DD0];
      v323 = 1107296256;
      v324 = sub_213CFF278;
      v325 = &block_descriptor_197;
      v153 = _Block_copy(&aBlock);

      v154 = swift_allocObject();
      *(v154 + 16) = v295;
      v326 = sub_213D1F60C;
      v327 = v154;
      aBlock = MEMORY[0x277D85DD0];
      v323 = 1107296256;
      v324 = sub_213D183BC;
      v325 = &block_descriptor_204;
      v155 = _Block_copy(&aBlock);

      [v151 animateWithDuration:v153 animations:v155 completion:0.25];
      _Block_release(v155);
      _Block_release(v153);
    }

    v156 = v53 + 64;
    v157 = 1 << v53[32];
    v158 = -1;
    if (v157 < 64)
    {
      v158 = ~(-1 << v157);
    }

    v159 = v158 & *(v53 + 8);
    v160 = (v157 + 63) >> 6;
    v313 = (v312 + 56);

    v129 = 0;
    v161 = v308;
    v162 = v307;
    v306 = v53 + 64;
    v309 = v53;
    while (v159)
    {
      v165 = v129;
LABEL_68:
      v168 = __clz(__rbit64(v159));
      v159 &= v159 - 1;
      v169 = v168 | (v165 << 6);
      v170 = *(*(v53 + 6) + 8 * v169);
      v171 = v304;
      sub_213D1E9F8(*(v53 + 7) + *(v312 + 72) * v169, v304, type metadata accessor for UserAnnotationViewModel);
      v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB228, &qword_213D97288);
      v173 = *(v172 + 48);
      *v161 = v170;
      sub_213D1E884(v171, v161 + v173, type metadata accessor for UserAnnotationViewModel);
      (*(*(v172 - 8) + 56))(v161, 0, 1, v172);
      v174 = v170;
LABEL_69:
      sub_213CED608(v161, v162, &qword_27C8EB220, &qword_213D97280);
      v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB228, &qword_213D97288);
      if ((*(*(v175 - 8) + 48))(v162, 1, v175) == 1)
      {
        v206 = v309;

        v207 = 0;
        v208 = 1 << v206[32];
        v209 = -1;
        if (v208 < 64)
        {
          v209 = ~(-1 << v208);
        }

        v210 = v209 & *(v206 + 8);
        v211 = (v208 + 63) >> 6;
        v129 = v303;
        while (v210)
        {
LABEL_82:
          v210 &= v210 - 1;
        }

        while (1)
        {
          v212 = v207 + 1;
          if (__OFADD__(v207, 1))
          {
            goto LABEL_125;
          }

          if (v212 >= v211)
          {

            if (MEMORY[0x277D84F90] >> 62)
            {
              goto LABEL_132;
            }

            v213 = MEMORY[0x277D84F90];
            sub_213D91F0C();
            goto LABEL_90;
          }

          v210 = *&v306[8 * v212];
          ++v207;
          if (v210)
          {
            v207 = v212;
            goto LABEL_82;
          }
        }
      }

      v176 = *v162;
      v177 = v162 + *(v175 + 48);
      v178 = v314;
      sub_213D1E884(v177, v314, type metadata accessor for UserAnnotationViewModel);
      v179 = *v178;
      *&v321 = v316;
      v180 = v316;
      v181 = swift_modifyAtReferenceWritableKeyPath();
      v183 = v182;
      v184 = *(v182 + 24);
      v185 = sub_213CE22A8(v179);
      v156 = v306;
      if (v186)
      {
        v187 = v185;
        v188 = *(v183 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v190 = *(v183 + 24);
        v318 = v190;
        *(v183 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB230, &qword_213D97290);
          v190 = v318;
        }

        v191 = *(*(v190 + 48) + 8 * v187);

        sub_213D1B868(v187, v190);
        v192 = *(v183 + 24);
        *(v183 + 24) = v190;
      }

      v181(&aBlock, 0);

      *&v321 = v180;
      v193 = v180;
      v194 = swift_modifyAtReferenceWritableKeyPath();
      v196 = v195;
      v197 = *(v195 + 16);
      v198 = sub_213CE23F4(v176);
      if (v199)
      {
        v200 = v198;
        v201 = *(v196 + 16);
        v202 = swift_isUniquelyReferenced_nonNull_native();
        v203 = *(v196 + 16);
        v318 = v203;
        *(v196 + 16) = 0x8000000000000000;
        if (!v202)
        {
          sub_213D1C790();
          v203 = v318;
        }

        v164 = v305;
        sub_213D1E884(*(v203 + 56) + *(v312 + 72) * v200, v305, type metadata accessor for UserAnnotationViewModel);
        sub_213D1B698(v200, v203, type metadata accessor for UserAnnotationViewModel);
        v204 = *(v196 + 16);
        *(v196 + 16) = v203;

        v163 = 0;
      }

      else
      {
        v163 = 1;
        v164 = v305;
      }

      (*v313)(v164, v163, 1, v315);
      sub_213CD8330(v164, &qword_27C8EB680, &unk_213D97FF0);
      v194(&aBlock, 0);

      sub_213D1F330(v314, type metadata accessor for UserAnnotationViewModel);
      v53 = v309;
      v161 = v308;
      v162 = v307;
    }

    if (v160 <= (v129 + 1))
    {
      v166 = v129 + 1;
    }

    else
    {
      v166 = v160;
    }

    v167 = v166 - 1;
    while (1)
    {
      v165 = (v129 + 1);
      if (__OFADD__(v129, 1))
      {
        break;
      }

      if (v165 >= v160)
      {
        v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB228, &qword_213D97288);
        (*(*(v205 - 8) + 56))(v161, 1, 1, v205);
        v159 = 0;
        v129 = v167;
        goto LABEL_69;
      }

      v159 = *&v156[8 * v165];
      ++v129;
      if (v159)
      {
        v129 = v165;
        goto LABEL_68;
      }
    }

    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
    v213 = sub_213D91EAC();
LABEL_90:
    v214 = v302;
    sub_213D17F50(v213);

    v309 = *(v129 + 2);
    if (!v309)
    {
      return v129;
    }

    v215 = *(v214 + 48);
    v308 = &v129[(*(v311 + 80) + 32) & ~*(v311 + 80)];
    v307 = (v312 + 48);

    v216 = 0;
    while (1)
    {
      if (v216 >= *(v129 + 2))
      {
        goto LABEL_126;
      }

      v219 = *(v311 + 72);
      v314 = v216;
      v220 = v310;
      sub_213CE2C28(&v308[v219 * v216], v310, &qword_27C8EB208, &unk_213D97260);
      v221 = *v220;
      v222 = v215;
      v223 = *(v220 + v215);
      *&v321 = v316;
      v129 = v316;

      v224 = v221;
      v225 = swift_modifyAtReferenceWritableKeyPath();
      v227 = v226;
      v228 = *(v226 + 24);
      v229 = swift_isUniquelyReferenced_nonNull_native();
      v318 = *(v227 + 24);
      v230 = v318;
      *(v227 + 24) = 0x8000000000000000;
      v232 = sub_213CE22A8(v223);
      v233 = *(v230 + 16);
      v234 = (v231 & 1) == 0;
      v235 = v233 + v234;
      if (__OFADD__(v233, v234))
      {
        goto LABEL_127;
      }

      v236 = v231;
      if (*(v230 + 24) >= v235)
      {
        if ((v229 & 1) == 0)
        {
          sub_213D1CE38(&qword_27C8EB230, &qword_213D97290);
        }
      }

      else
      {
        sub_213D1AEB0(v235, v229, &qword_27C8EB230, &qword_213D97290);
        v237 = sub_213CE22A8(v223);
        if ((v236 & 1) != (v238 & 1))
        {
          goto LABEL_134;
        }

        v232 = v237;
      }

      v239 = v318;
      if (v236)
      {
        v240 = v318[7];
        v241 = *(v240 + 8 * v232);
        *(v240 + 8 * v232) = v224;
      }

      else
      {
        v318[(v232 >> 6) + 8] |= 1 << v232;
        *(v239[6] + 8 * v232) = v223;
        *(v239[7] + 8 * v232) = v224;
        v242 = v239[2];
        v141 = __OFADD__(v242, 1);
        v243 = v242 + 1;
        if (v141)
        {
          goto LABEL_128;
        }

        v239[2] = v243;
      }

      *(v227 + 24) = v239;
      v225(&aBlock, 0);

      v215 = v222;
      v244 = v301;
      sub_213D1E884(v310 + v222, v301, type metadata accessor for UserAnnotationViewModel);
      v245 = *v313;
      v246 = v315;
      (*v313)(v244, 0, 1, v315);
      *&v321 = v129;
      v247 = v129;
      v248 = v224;
      v249 = swift_modifyAtReferenceWritableKeyPath();
      v129 = v250;
      if ((*v307)(v244, 1, v246) == 1)
      {
        sub_213CD8330(v244, &qword_27C8EB680, &unk_213D97FF0);
        v251 = *(v129 + 2);
        v252 = sub_213CE23F4(v248);
        if (v253)
        {
          v254 = v252;
          v255 = *(v129 + 2);
          v256 = swift_isUniquelyReferenced_nonNull_native();
          v257 = *(v129 + 2);
          v318 = v257;
          *(v129 + 2) = 0x8000000000000000;
          if (!v256)
          {
            sub_213D1C790();
            v257 = v318;
          }

          v218 = v299;
          sub_213D1E884(*(v257 + 56) + *(v312 + 72) * v254, v299, type metadata accessor for UserAnnotationViewModel);
          sub_213D1B698(v254, v257, type metadata accessor for UserAnnotationViewModel);

          v258 = *(v129 + 2);
          *(v129 + 2) = v257;

          v217 = 0;
        }

        else
        {

          v217 = 1;
          v218 = v299;
        }

        v245(v218, v217, 1, v315);
        sub_213CD8330(v218, &qword_27C8EB680, &unk_213D97FF0);
        goto LABEL_94;
      }

      sub_213D1E884(v244, v300, type metadata accessor for UserAnnotationViewModel);
      v259 = *(v129 + 2);
      v260 = swift_isUniquelyReferenced_nonNull_native();
      v318 = *(v129 + 2);
      v261 = v318;
      *(v129 + 2) = 0x8000000000000000;
      v262 = sub_213CE23F4(v248);
      v264 = *(v261 + 16);
      v265 = (v263 & 1) == 0;
      v141 = __OFADD__(v264, v265);
      v266 = v264 + v265;
      if (v141)
      {
        goto LABEL_129;
      }

      v267 = v263;
      if (*(v261 + 24) < v266)
      {
        break;
      }

      if (v260)
      {
        goto LABEL_116;
      }

      v270 = v262;
      sub_213D1C790();
      v262 = v270;
      v269 = v318;
      if ((v267 & 1) == 0)
      {
LABEL_119:
        v269[(v262 >> 6) + 8] |= 1 << v262;
        *(v269[6] + 8 * v262) = v248;
        sub_213D1E884(v300, v269[7] + *(v312 + 72) * v262, type metadata accessor for UserAnnotationViewModel);
        v271 = v269[2];
        v141 = __OFADD__(v271, 1);
        v272 = v271 + 1;
        if (v141)
        {
          goto LABEL_130;
        }

        v269[2] = v272;
        goto LABEL_121;
      }

LABEL_117:
      sub_213D1EA60(v300, v269[7] + *(v312 + 72) * v262, type metadata accessor for UserAnnotationViewModel);

LABEL_121:
      v273 = *(v129 + 2);
      *(v129 + 2) = v269;

LABEL_94:
      v216 = v314 + 1;
      v249(&aBlock, 0);

      v129 = v303;
      if (v309 == v216)
      {

        return v129;
      }
    }

    sub_213D1A4D8(v266, v260);
    v262 = sub_213CE23F4(v248);
    if ((v267 & 1) != (v268 & 1))
    {
      goto LABEL_135;
    }

LABEL_116:
    v269 = v318;
    if ((v267 & 1) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_117;
  }

  v280 = v19;
  v55 = *(v28 + 80);
  v56 = a2 + ((v55 + 32) & ~v55);
  v298 = (v28 + 56);
  v306 = *(v28 + 72);
  v279 = v55;
  v278 = (v55 + 64) & ~v55;
  v277 = (v28 + 48);
  v57 = MEMORY[0x277D84F90];
  v294 = MEMORY[0x277D84F90];
  v295 = MEMORY[0x277D84F90];
  v293 = v37;
  while (1)
  {
    sub_213D1E9F8(v56, v37, type metadata accessor for UserAnnotationViewModel);
    v61 = *v37;
    *&v321 = v316;
    v62 = v316;
    swift_getAtKeyPath();

    v63 = v325;
    if (!v325[2] || (v64 = sub_213CE22A8(v61), (v65 & 1) == 0))
    {

LABEL_22:
      v97 = [objc_allocWithZone(type metadata accessor for MapBridgingUserAnnotation()) init];
      v98 = *(v302 + 48);
      v99 = v313;
      *v313 = v97;
      sub_213D1E9F8(v37, v99 + v98, type metadata accessor for UserAnnotationViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_213D70808(0, *(v57 + 2) + 1, 1, v57);
      }

      v101 = *(v57 + 2);
      v100 = *(v57 + 3);
      if (v101 >= v100 >> 1)
      {
        v57 = sub_213D70808(v100 > 1, v101 + 1, 1, v57);
      }

      sub_213D1F330(v37, type metadata accessor for UserAnnotationViewModel);
      *(v57 + 2) = v101 + 1;
      sub_213CED608(v313, &v57[((*(v311 + 80) + 32) & ~*(v311 + 80)) + *(v311 + 72) * v101], &qword_27C8EB208, &unk_213D97260);
      goto LABEL_5;
    }

    v66 = *(v63[7] + 8 * v64);

    *&v321 = v62;
    v67 = v62;
    swift_getAtKeyPath();

    v68 = v324;
    if (!v324[2] || (v69 = sub_213CE23F4(v66), (v70 & 1) == 0))
    {

      v96 = v296;
      (*v298)(v296, 1, 1, v315);
      sub_213CD8330(v96, &qword_27C8EB680, &unk_213D97FF0);
      goto LABEL_22;
    }

    v290 = v67;
    v71 = v68[7] + v69 * v306;
    v297 = v66;
    v72 = v296;
    sub_213D1E9F8(v71, v296, type metadata accessor for UserAnnotationViewModel);

    v289 = *v298;
    v289(v72, 0, 1, v315);
    sub_213CD8330(v72, &qword_27C8EB680, &unk_213D97FF0);
    v325 = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
    v326 = &off_28263B0B0;
    v73 = v285;
    aBlock = v285;
    sub_213D1E22C(&aBlock, &v321);
    v74 = v37;
    v75 = v297;
    v76 = v282;
    sub_213D1E9F8(v74, v282, type metadata accessor for UserAnnotationViewModel);
    sub_213D1E22C(&v321, &v318);
    v77 = v292;
    sub_213D1E9F8(v76, v292, type metadata accessor for UserAnnotationViewModel);
    v78 = v278;
    v79 = swift_allocObject();
    sub_213D1E2DC(&v321, v79 + 16);
    *(v79 + 56) = v75;
    sub_213D1E884(v76, v79 + v78, type metadata accessor for UserAnnotationViewModel);
    v80 = v291;
    if (v291)
    {
      v81 = v75;
      v82 = v73;

      sub_213D1F330(v77, type metadata accessor for UserAnnotationViewModel);
      __swift_destroy_boxed_opaque_existential_1(&v318);
      v83 = swift_allocObject();
      v83[2] = sub_213D1E8EC;
      v83[3] = v79;
      v83[4] = v80;
      v84 = swift_allocObject();
      *(v84 + 16) = sub_213D1E8EC;
      *(v84 + 24) = v79;

      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v85 = swift_allocObject();
      *(v85 + 16) = sub_213D1E454;
      *(v85 + 24) = v83;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v294 = sub_213D6FE48(0, v294[2] + 1, 1, v294);
      }

      v87 = v294[2];
      v86 = v294[3];
      v88 = v297;
      if (v87 >= v86 >> 1)
      {
        v294 = sub_213D6FE48((v86 > 1), v87 + 1, 1, v294);
      }

      v89 = v294;
      v294[2] = v87 + 1;
      v90 = &v89[2 * v87];
      v90[4] = sub_213D1F608;
      v90[5] = v85;
      v91 = swift_allocObject();
      *(v91 + 16) = sub_213D1E460;
      *(v91 + 24) = v84;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v295 = sub_213D6FE48(0, v295[2] + 1, 1, v295);
      }

      v93 = v295[2];
      v92 = v295[3];
      if (v93 >= v92 >> 1)
      {
        v295 = sub_213D6FE48((v92 > 1), v93 + 1, 1, v295);
      }

      v94 = v295;
      v295[2] = v93 + 1;
      v95 = &v94[2 * v93];
      v95[4] = sub_213D1F608;
      v95[5] = v91;
      v286 = sub_213D1E454;
      v288 = sub_213D1E460;
    }

    else
    {
      v309 = v53;
      v303 = v57;
      v102 = v319;
      v103 = v320;
      __swift_project_boxed_opaque_existential_1(&v318, v319);
      v288 = *(v103 + 24);
      v104 = v75;
      v105 = v73;
      v106 = (v288)(v104, v102, v103);
      if (v106)
      {
        v107 = v106;
        type metadata accessor for SwiftUIAnnotationView();
        v108 = swift_dynamicCastClass();
        v53 = v309;
        v109 = v292;
        if (v108)
        {
          v110 = *(v292 + 24);
          v111 = *(v292 + 32);
          v112 = &v108[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_contentAnchorPoint];
          *v112 = v110;
          v112[1] = v111;
          v113 = v108;
          [v108 frame];
          v116 = v113;
          v109 = v292;
          [v116 setCenterOffset_];
        }

        v57 = v303;
      }

      else
      {

        v57 = v303;
        v53 = v309;
        v109 = v292;
      }

      v88 = v297;
      sub_213D1F330(v109, type metadata accessor for UserAnnotationViewModel);
      __swift_destroy_boxed_opaque_existential_1(&v318);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v288 = 0;
      v84 = 0;
      v286 = 0;
      v83 = 0;
    }

    v117 = sub_213CE23F4(v88);
    v287 = v83;
    v303 = v84;
    if (v118)
    {
      v119 = v117;
      v120 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v53;
      v121 = v284;
      if (!v120)
      {
        sub_213D1C790();
        v121 = v284;
        v53 = aBlock;
      }

      v122 = v280;
      sub_213D1E884(*(v53 + 7) + v119 * v306, v280, type metadata accessor for UserAnnotationViewModel);
      sub_213D1B698(v119, v53, type metadata accessor for UserAnnotationViewModel);
      v123 = 0;
    }

    else
    {
      v123 = 1;
      v121 = v284;
      v122 = v280;
    }

    v124 = v315;
    v125 = v289;
    v289(v122, v123, 1, v315);
    sub_213CD8330(v122, &qword_27C8EB680, &unk_213D97FF0);
    sub_213D1E9F8(v293, v121, type metadata accessor for UserAnnotationViewModel);
    v125(v121, 0, 1, v124);
    *&v321 = v290;
    v126 = v290;
    v309 = v297;
    v127 = swift_modifyAtReferenceWritableKeyPath();
    v129 = v128;
    v130 = (*v277)(v121, 1, v124);
    v297 = v127;
    if (v130 != 1)
    {
      break;
    }

    sub_213CD8330(v121, &qword_27C8EB680, &unk_213D97FF0);
    v58 = v276;
    v59 = v309;
    sub_213D18B10(v309, v276);

    sub_213CD8330(v58, &qword_27C8EB680, &unk_213D97FF0);
    v37 = v293;
LABEL_4:
    v60 = v286;
    (v297)(&aBlock, 0);

    sub_213CCE520(v288);
    sub_213CCE520(v60);

    sub_213D1F330(v37, type metadata accessor for UserAnnotationViewModel);
LABEL_5:
    v56 += v306;
    if (!--v54)
    {
      goto LABEL_51;
    }
  }

  sub_213D1E884(v121, v281, type metadata accessor for UserAnnotationViewModel);
  v131 = *(v129 + 2);
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v133 = v309;
  v134 = v132;
  v318 = *(v129 + 2);
  v135 = v318;
  *(v129 + 2) = 0x8000000000000000;
  v136 = v133;
  v137 = sub_213CE23F4(v133);
  v139 = *(v135 + 16);
  v140 = (v138 & 1) == 0;
  v141 = __OFADD__(v139, v140);
  v142 = v139 + v140;
  if (v141)
  {
    goto LABEL_131;
  }

  v143 = v138;
  v144 = *(v135 + 24);
  v290 = v129;
  if (v144 >= v142)
  {
    v37 = v293;
    if ((v134 & 1) == 0)
    {
      v150 = v137;
      sub_213D1C790();
      v137 = v150;
    }

    v59 = v136;
    v146 = v318;
    if ((v143 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_48:
    sub_213D1EA60(v281, v146[7] + v137 * v306, type metadata accessor for UserAnnotationViewModel);

    goto LABEL_49;
  }

  sub_213D1A4D8(v142, v134);
  v59 = v136;
  v137 = sub_213CE23F4(v136);
  v37 = v293;
  if ((v143 & 1) != (v145 & 1))
  {
    goto LABEL_135;
  }

  v146 = v318;
  if (v143)
  {
    goto LABEL_48;
  }

LABEL_43:
  v146[(v137 >> 6) + 8] |= 1 << v137;
  *(v146[6] + 8 * v137) = v59;
  sub_213D1E884(v281, v146[7] + v137 * v306, type metadata accessor for UserAnnotationViewModel);
  v147 = v146[2];
  v141 = __OFADD__(v147, 1);
  v148 = v147 + 1;
  if (!v141)
  {
    v146[2] = v148;
LABEL_49:
    v149 = *(v290 + 2);
    *(v290 + 2) = v146;

    goto LABEL_4;
  }

  __break(1u);
LABEL_134:
  sub_213D91F8C();
  __break(1u);
LABEL_135:
  type metadata accessor for MapBridgingUserAnnotation();
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D05E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v308 = a4;
  v303 = a1;
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAA0, &unk_213D972B0);
  v326 = *(v319 - 8);
  v8 = *(v326 + 64);
  MEMORY[0x28223BE20](v319);
  v10 = &v293 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v325 = (&v293 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB260, qword_213D985C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v293 = &v293 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v301 = &v293 - v17;
  MEMORY[0x28223BE20](v18);
  v302 = &v293 - v19;
  MEMORY[0x28223BE20](v20);
  v313 = &v293 - v21;
  MEMORY[0x28223BE20](v22);
  v315 = &v293 - v23;
  MEMORY[0x28223BE20](v24);
  v317 = &v293 - v25;
  MEMORY[0x28223BE20](v26);
  v322 = &v293 - v27;
  v333 = type metadata accessor for MarkerAnnotationViewModel(0);
  v28 = *(v333 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v333);
  v298 = &v293 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v300 = &v293 - v31;
  MEMORY[0x28223BE20](v32);
  v299 = &v293 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v293 - v35;
  MEMORY[0x28223BE20](v37);
  v316 = &v293 - v38;
  MEMORY[0x28223BE20](v39);
  v331 = (&v293 - v40);
  MEMORY[0x28223BE20](v41);
  v321 = &v293 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB268, &qword_213D972C0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v46 = (&v293 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v47);
  v323 = (&v293 - v48);
  *&v339 = v5;
  v49 = v5;
  v335 = a5;
  v50 = swift_readAtKeyPath();
  v324 = *(v51 + 16);

  v50(&aBlock, 0);
  v334 = v49;

  v52 = *(a2 + 16);
  v332 = v28;
  v328 = v46;
  if (!v52)
  {
    v56 = MEMORY[0x277D84F90];
    v310 = MEMORY[0x277D84F90];
    v311 = MEMORY[0x277D84F90];
LABEL_61:
    v330 = v56;
    if (v308)
    {
      v162 = objc_opt_self();
      v163 = swift_allocObject();
      *(v163 + 16) = v310;
      v344 = sub_213D1F590;
      v345 = v163;
      aBlock = MEMORY[0x277D85DD0];
      v341 = 1107296256;
      v342 = sub_213CFF278;
      v343 = &block_descriptor_228;
      v164 = _Block_copy(&aBlock);

      v165 = swift_allocObject();
      *(v165 + 16) = v311;
      v344 = sub_213D1F60C;
      v345 = v165;
      aBlock = MEMORY[0x277D85DD0];
      v341 = 1107296256;
      v342 = sub_213D183BC;
      v343 = &block_descriptor_235;
      v166 = _Block_copy(&aBlock);

      [v162 animateWithDuration:v164 animations:v166 completion:0.25];
      _Block_release(v166);
      _Block_release(v164);
    }

    v167 = v324 + 64;
    v168 = 1 << *(v324 + 32);
    v169 = -1;
    if (v168 < 64)
    {
      v169 = ~(-1 << v168);
    }

    v170 = v169 & *(v324 + 64);
    v171 = (v168 + 63) >> 6;
    v329 = (v332 + 56);

    v172 = 0;
    while (1)
    {
      if (v170)
      {
        v175 = v172;
        v176 = v332;
LABEL_78:
        v179 = __clz(__rbit64(v170));
        v170 &= v170 - 1;
        v180 = v179 | (v175 << 6);
        v181 = *(*(v324 + 48) + 8 * v180);
        v182 = v321;
        sub_213D1E9F8(*(v324 + 56) + *(v176 + 72) * v180, v321, type metadata accessor for MarkerAnnotationViewModel);
        v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB270, &qword_213D972C8);
        v184 = *(v183 + 48);
        *v46 = v181;
        sub_213D1E884(v182, v46 + v184, type metadata accessor for MarkerAnnotationViewModel);
        (*(*(v183 - 8) + 56))(v46, 0, 1, v183);
        v185 = v181;
      }

      else
      {
        v177 = v171 <= v172 + 1 ? v172 + 1 : v171;
        v178 = v177 - 1;
        v176 = v332;
        while (1)
        {
          v175 = v172 + 1;
          if (__OFADD__(v172, 1))
          {
            __break(1u);
LABEL_137:
            __break(1u);
            goto LABEL_138;
          }

          if (v175 >= v171)
          {
            break;
          }

          v170 = *(v167 + 8 * v175);
          ++v172;
          if (v170)
          {
            v172 = v175;
            goto LABEL_78;
          }
        }

        v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB270, &qword_213D972C8);
        (*(*(v217 - 8) + 56))(v46, 1, 1, v217);
        v170 = 0;
        v172 = v178;
      }

      v186 = v323;
      sub_213CED608(v46, v323, &qword_27C8EB268, &qword_213D972C0);
      v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB270, &qword_213D972C8);
      if ((*(*(v187 - 8) + 48))(v186, 1, v187) == 1)
      {
        break;
      }

      v188 = *v186;
      v189 = v186 + *(v187 + 48);
      v190 = v331;
      sub_213D1E884(v189, v331, type metadata accessor for MarkerAnnotationViewModel);
      v191 = *v190;
      *&v339 = v334;
      v192 = v334;
      v193 = swift_modifyAtReferenceWritableKeyPath();
      v195 = v194;
      v196 = *(v194 + 24);
      v197 = sub_213CE22A8(v191);
      if (v198)
      {
        v199 = v197;
        v200 = *(v195 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v202 = *(v195 + 24);
        v336 = v202;
        *(v195 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB278, &qword_213D972D0);
          v202 = v336;
        }

        v203 = *(*(v202 + 48) + 8 * v199);

        sub_213D1B868(v199, v202);
        v204 = *(v195 + 24);
        *(v195 + 24) = v202;
      }

      v193(&aBlock, 0);

      *&v339 = v192;
      v205 = v192;
      v206 = swift_modifyAtReferenceWritableKeyPath();
      v208 = v207;
      v209 = *(v207 + 16);
      v210 = sub_213CE2448(v188);
      if (v211)
      {
        v212 = v210;
        v213 = *(v208 + 16);
        v214 = swift_isUniquelyReferenced_nonNull_native();
        v215 = *(v208 + 16);
        v336 = v215;
        *(v208 + 16) = 0x8000000000000000;
        v174 = v322;
        if (!v214)
        {
          sub_213D1C9C8();
          v215 = v336;
        }

        sub_213D1E884(*(v215 + 56) + *(v332 + 72) * v212, v174, type metadata accessor for MarkerAnnotationViewModel);
        sub_213D1B698(v212, v215, type metadata accessor for MarkerAnnotationViewModel);
        v216 = *(v208 + 16);
        *(v208 + 16) = v215;

        v173 = 0;
      }

      else
      {
        v173 = 1;
        v174 = v322;
      }

      (*v329)(v174, v173, 1, v333);
      sub_213CD8330(v174, &qword_27C8EB260, qword_213D985C0);
      v206(&aBlock, 0);

      sub_213D1F330(v331, type metadata accessor for MarkerAnnotationViewModel);
      v46 = v328;
    }

    v218 = v324;

    aBlock = MEMORY[0x277D84F90];
    v219 = 1 << *(v218 + 32);
    v220 = -1;
    if (v219 < 64)
    {
      v220 = ~(-1 << v219);
    }

    v221 = v220 & *(v218 + 64);
    v222 = (v219 + 63) >> 6;

    v223 = 0;
    if (v221)
    {
      while (1)
      {
        v224 = v223;
LABEL_97:
        v225 = __clz(__rbit64(v221));
        v221 &= v221 - 1;
        v226 = *(*(v324 + 48) + ((v224 << 9) | (8 * v225)));
        sub_213D91DEC();
        v227 = *(aBlock + 16);
        sub_213D91E2C();
        sub_213D91E3C();
        sub_213D91DFC();
        if (!v221)
        {
          goto LABEL_93;
        }
      }
    }

    while (1)
    {
LABEL_93:
      v224 = v223 + 1;
      if (__OFADD__(v223, 1))
      {
        goto LABEL_137;
      }

      if (v224 >= v222)
      {
        break;
      }

      v221 = *(v167 + 8 * v224);
      ++v223;
      if (v221)
      {
        v223 = v224;
        goto LABEL_97;
      }
    }

    v228 = aBlock;
    if (aBlock < 0 || (aBlock & 0x4000000000000000) != 0)
    {
      goto LABEL_144;
    }

    sub_213D91F6C();
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
    v229 = v228;
    while (1)
    {
      v230 = v330;

      sub_213D17F50(v229);

      v328 = v230[2];
      if (!v328)
      {
        return v230;
      }

      v231 = *(v319 + 48);
      v327 = v230 + ((*(v326 + 80) + 32) & ~*(v326 + 80));
      v324 = v332 + 48;

      v232 = 0;
      while (v232 < v230[2])
      {
        v235 = *(v326 + 72);
        v331 = v232;
        v236 = v325;
        sub_213CE2C28(v327 + v235 * v232, v325, &unk_27C8EBAA0, &unk_213D972B0);
        v237 = *v236;
        v238 = v231;
        v239 = *(v236 + v231);
        *&v339 = v334;
        v240 = v334;

        v241 = v237;
        v242 = swift_modifyAtReferenceWritableKeyPath();
        v244 = v243;
        v245 = *(v243 + 24);
        v246 = swift_isUniquelyReferenced_nonNull_native();
        v336 = *(v244 + 24);
        v247 = v336;
        *(v244 + 24) = 0x8000000000000000;
        v249 = sub_213CE22A8(v239);
        v250 = *(v247 + 16);
        v251 = (v248 & 1) == 0;
        v252 = v250 + v251;
        if (__OFADD__(v250, v251))
        {
          goto LABEL_139;
        }

        v253 = v248;
        if (*(v247 + 24) >= v252)
        {
          if ((v246 & 1) == 0)
          {
            sub_213D1CE38(&qword_27C8EB278, &qword_213D972D0);
          }
        }

        else
        {
          sub_213D1AEB0(v252, v246, &qword_27C8EB278, &qword_213D972D0);
          v254 = sub_213CE22A8(v239);
          if ((v253 & 1) != (v255 & 1))
          {
            goto LABEL_146;
          }

          v249 = v254;
        }

        v256 = v336;
        if (v253)
        {
          v257 = v336[7];
          v258 = *(v257 + 8 * v249);
          *(v257 + 8 * v249) = v241;
        }

        else
        {
          v336[(v249 >> 6) + 8] |= 1 << v249;
          *(v256[6] + 8 * v249) = v239;
          *(v256[7] + 8 * v249) = v241;
          v259 = v256[2];
          v153 = __OFADD__(v259, 1);
          v260 = v259 + 1;
          if (v153)
          {
            goto LABEL_140;
          }

          v256[2] = v260;
        }

        *(v244 + 24) = v256;
        v242(&aBlock, 0);

        v231 = v238;
        v261 = v317;
        sub_213D1E884(v325 + v238, v317, type metadata accessor for MarkerAnnotationViewModel);
        v262 = *v329;
        v263 = v333;
        (*v329)(v261, 0, 1, v333);
        *&v339 = v240;
        v264 = v240;
        v265 = v241;
        v266 = swift_modifyAtReferenceWritableKeyPath();
        v268 = v267;
        if ((*v324)(v261, 1, v263) == 1)
        {
          sub_213CD8330(v261, &qword_27C8EB260, qword_213D985C0);
          v269 = *(v268 + 16);
          v270 = sub_213CE2448(v265);
          if (v271)
          {
            v272 = v270;
            v273 = *(v268 + 16);
            v274 = swift_isUniquelyReferenced_nonNull_native();
            v275 = *(v268 + 16);
            v336 = v275;
            *(v268 + 16) = 0x8000000000000000;
            if (!v274)
            {
              sub_213D1C9C8();
              v275 = v336;
            }

            v234 = v315;
            sub_213D1E884(*(v275 + 56) + *(v332 + 72) * v272, v315, type metadata accessor for MarkerAnnotationViewModel);
            sub_213D1B698(v272, v275, type metadata accessor for MarkerAnnotationViewModel);

            v276 = *(v268 + 16);
            *(v268 + 16) = v275;

            v233 = 0;
          }

          else
          {

            v233 = 1;
            v234 = v315;
          }

          v262(v234, v233, 1, v333);
          sub_213CD8330(v234, &qword_27C8EB260, qword_213D985C0);
        }

        else
        {
          sub_213D1E884(v261, v316, type metadata accessor for MarkerAnnotationViewModel);
          v277 = *(v268 + 16);
          v278 = swift_isUniquelyReferenced_nonNull_native();
          v336 = *(v268 + 16);
          v279 = v336;
          *(v268 + 16) = 0x8000000000000000;
          v280 = sub_213CE2448(v265);
          v282 = *(v279 + 16);
          v283 = (v281 & 1) == 0;
          v153 = __OFADD__(v282, v283);
          v284 = v282 + v283;
          if (v153)
          {
            goto LABEL_141;
          }

          v285 = v281;
          if (*(v279 + 24) >= v284)
          {
            if ((v278 & 1) == 0)
            {
              v291 = v280;
              sub_213D1C9C8();
              v280 = v291;
            }
          }

          else
          {
            sub_213D1A820(v284, v278);
            v280 = sub_213CE2448(v265);
            if ((v285 & 1) != (v286 & 1))
            {
              goto LABEL_147;
            }
          }

          v287 = v336;
          if (v285)
          {
            sub_213D1EA60(v316, v336[7] + *(v332 + 72) * v280, type metadata accessor for MarkerAnnotationViewModel);
          }

          else
          {
            v336[(v280 >> 6) + 8] |= 1 << v280;
            *(v287[6] + 8 * v280) = v265;
            sub_213D1E884(v316, v287[7] + *(v332 + 72) * v280, type metadata accessor for MarkerAnnotationViewModel);
            v288 = v287[2];
            v153 = __OFADD__(v288, 1);
            v289 = v288 + 1;
            if (v153)
            {
              goto LABEL_142;
            }

            v287[2] = v289;
          }

          v290 = *(v268 + 16);
          *(v268 + 16) = v287;
        }

        v232 = v331 + 1;
        v266(&aBlock, 0);

        v230 = v330;
        if (v328 == v232)
        {

          return v230;
        }
      }

LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);

      v229 = sub_213D91EAC();
    }
  }

  v53 = v52;
  v54 = *(v28 + 80);
  v55 = a2 + ((v54 + 32) & ~v54);
  v314 = (v28 + 56);
  v297 = v54;
  v296 = (v54 + 24) & ~v54;
  v295 = (v29 + v296 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = MEMORY[0x277D84F90];
  v294 = (v28 + 48);
  v320 = *(v28 + 72);
  v310 = MEMORY[0x277D84F90];
  v311 = MEMORY[0x277D84F90];
  v318 = v10;
  v57 = v53;
  while (1)
  {
    v329 = v55;
    sub_213D1E9F8(v55, v36, type metadata accessor for MarkerAnnotationViewModel);
    v61 = *v36;
    *&v339 = v334;
    v62 = v334;
    swift_getAtKeyPath();

    v63 = v343;
    v64 = v343[2];
    v330 = v56;
    v327 = v57;
    if (!v64 || (v65 = sub_213CE22A8(v61), (v66 & 1) == 0))
    {

LABEL_18:
      v87 = *(v36 + 1);
      v86 = *(v36 + 2);
      v89 = *(v36 + 3);
      v88 = *(v36 + 4);
      v90 = *(v36 + 11);
      v91 = *(v36 + 12);
      v92 = *(v36 + 5);
      v93 = v36[48];
      v94 = type metadata accessor for MapBridgingMarker();
      v95 = objc_allocWithZone(v94);
      v96 = &v95[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_title];
      *v96 = 0;
      v96[1] = 0;
      v97 = &v95[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_subtitle];
      *v97 = 0;
      v97[1] = 0;
      v98 = OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_mapItem;
      *&v95[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_mapItem] = 0;
      v99 = OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_isCustomFeature;
      v95[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_isCustomFeature] = 0;
      *v96 = v87;
      v96[1] = v86;
      *v97 = v89;
      v97[1] = v88;
      v100 = &v95[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_coordinate];
      *v100 = v90;
      v100[1] = v91;
      v101 = *&v95[v98];
      *&v95[v98] = v92;

      v102 = v92;

      v95[v99] = v93;
      v346.receiver = v95;
      v346.super_class = v94;
      v103 = objc_msgSendSuper2(&v346, sel_init);
      v104 = *(v319 + 48);
      v105 = v318;
      *v318 = v103;
      sub_213D1E9F8(v36, v105 + v104, type metadata accessor for MarkerAnnotationViewModel);
      v56 = v330;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_213D7082C(0, v56[2] + 1, 1, v56);
      }

      v60 = v329;
      v107 = v56[2];
      v106 = v56[3];
      v46 = v328;
      v57 = v327;
      if (v107 >= v106 >> 1)
      {
        v56 = sub_213D7082C(v106 > 1, v107 + 1, 1, v56);
      }

      sub_213D1F330(v36, type metadata accessor for MarkerAnnotationViewModel);
      v56[2] = v107 + 1;
      sub_213CED608(v105, v56 + ((*(v326 + 80) + 32) & ~*(v326 + 80)) + *(v326 + 72) * v107, &unk_27C8EBAA0, &unk_213D972B0);
      goto LABEL_5;
    }

    v67 = *(v63[7] + 8 * v65);

    *&v339 = v62;
    v68 = v62;
    swift_getAtKeyPath();

    v69 = v342;
    if (!v342[2] || (v70 = sub_213CE2448(v67), (v71 & 1) == 0))
    {

      v85 = v313;
      (*v314)(v313, 1, 1, v333);
      sub_213CD8330(v85, &qword_27C8EB260, qword_213D985C0);
      goto LABEL_18;
    }

    v307 = v68;
    v72 = v313;
    sub_213D1E9F8(v69[7] + v70 * v320, v313, type metadata accessor for MarkerAnnotationViewModel);

    v306 = *v314;
    v306(v72, 0, 1, v333);
    sub_213CD8330(v72, &qword_27C8EB260, qword_213D985C0);
    v343 = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
    v344 = &off_28263B0B0;
    v73 = v303;
    aBlock = v303;
    v74 = v299;
    sub_213D1E9F8(v36, v299, type metadata accessor for MarkerAnnotationViewModel);
    sub_213D1E22C(&aBlock, &v339);
    v75 = v300;
    sub_213D1E9F8(v74, v300, type metadata accessor for MarkerAnnotationViewModel);
    sub_213D1E22C(&v339, &v336);
    v76 = v295;
    v77 = swift_allocObject();
    *(v77 + 16) = v67;
    sub_213D1E884(v74, v77 + v296, type metadata accessor for MarkerAnnotationViewModel);
    sub_213D1E2DC(&v339, v77 + v76);
    v78 = v67;
    v79 = v73;
    v80 = v308;
    if (!v308)
    {
      goto LABEL_14;
    }

    [v78 coordinate];
    if (vabdd_f64(v82, *(v36 + 11)) < 0.00000000999999994 && vabdd_f64(v81, *(v36 + 12)) < 0.00000000999999994)
    {

LABEL_14:
      [v78 setCoordinate_];
      if (*(v75 + 16))
      {
        v83 = *(v75 + 8);
        v84 = sub_213D9190C();
      }

      else
      {
        v84 = 0;
      }

      [v78 setTitle_];

      if (*(v75 + 32))
      {
        v122 = *(v75 + 24);
        v123 = sub_213D9190C();
      }

      else
      {
        v123 = 0;
      }

      [v78 setSubtitle_];

      v124 = v337;
      v125 = v338;
      __swift_project_boxed_opaque_existential_1(&v336, v337);
      v126 = (*(v125 + 24))(v78, v124, v125);
      if (v126)
      {
        v127 = v126;
        objc_opt_self();
        v128 = swift_dynamicCastObjCClass();
        if (!v128)
        {

          goto LABEL_41;
        }

        sub_213D2797C(v128, 0);
      }

LABEL_41:
      __swift_destroy_boxed_opaque_existential_1(&v336);
      sub_213D1F330(v75, type metadata accessor for MarkerAnnotationViewModel);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v305 = 0;
      v312 = 0;
      v304 = 0;
      v309 = 0;
      v112 = v302;
      goto LABEL_42;
    }

    __swift_destroy_boxed_opaque_existential_1(&v336);
    sub_213D1F330(v75, type metadata accessor for MarkerAnnotationViewModel);
    v108 = swift_allocObject();
    v108[2] = sub_213D1E9CC;
    v108[3] = v77;
    v108[4] = v80;
    v109 = swift_allocObject();
    *(v109 + 16) = sub_213D1E9CC;
    *(v109 + 24) = v77;
    v312 = v109;

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    v110 = swift_allocObject();
    *(v110 + 16) = sub_213D1E454;
    *(v110 + 24) = v108;
    v309 = v108;
    swift_retain_n();
    v111 = v78;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v310 = sub_213D6FE48(0, v310[2] + 1, 1, v310);
    }

    v112 = v302;
    v114 = v310[2];
    v113 = v310[3];
    if (v114 >= v113 >> 1)
    {
      v310 = sub_213D6FE48((v113 > 1), v114 + 1, 1, v310);
    }

    v115 = v310;
    v310[2] = v114 + 1;
    v116 = &v115[2 * v114];
    v116[4] = sub_213D1F608;
    v116[5] = v110;
    v117 = swift_allocObject();
    *(v117 + 16) = sub_213D1E460;
    *(v117 + 24) = v312;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v311 = sub_213D6FE48(0, v311[2] + 1, 1, v311);
    }

    v119 = v311[2];
    v118 = v311[3];
    if (v119 >= v118 >> 1)
    {
      v311 = sub_213D6FE48((v118 > 1), v119 + 1, 1, v311);
    }

    v120 = v311;
    v311[2] = v119 + 1;
    v121 = &v120[2 * v119];
    v121[4] = sub_213D1F608;
    v121[5] = v117;
    v304 = sub_213D1E454;
    v305 = sub_213D1E460;
    v78 = v111;
LABEL_42:
    v129 = v324;
    v130 = sub_213CE2448(v78);
    if (v131)
    {
      v132 = v130;
      v133 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v129;
      if (!v133)
      {
        sub_213D1C9C8();
        v129 = aBlock;
      }

      v134 = v78;

      sub_213D1E884(*(v129 + 56) + v132 * v320, v112, type metadata accessor for MarkerAnnotationViewModel);
      v324 = v129;
      sub_213D1B698(v132, v129, type metadata accessor for MarkerAnnotationViewModel);
      v135 = 0;
    }

    else
    {
      v134 = v78;
      v135 = 1;
    }

    v136 = v333;
    v137 = v306;
    v306(v112, v135, 1, v333);
    sub_213CD8330(v112, &qword_27C8EB260, qword_213D985C0);
    v138 = v301;
    sub_213D1E9F8(v36, v301, type metadata accessor for MarkerAnnotationViewModel);
    v137(v138, 0, 1, v136);
    *&v339 = v307;
    v139 = v307;
    v140 = v134;
    v307 = swift_modifyAtReferenceWritableKeyPath();
    v142 = v141;
    if ((*v294)(v138, 1, v136) != 1)
    {
      break;
    }

    sub_213CD8330(v138, &qword_27C8EB260, qword_213D985C0);
    v58 = v293;
    sub_213D18C8C(v140, v293);

    sub_213CD8330(v58, &qword_27C8EB260, qword_213D985C0);
LABEL_4:
    v59 = v304;
    (v307)(&aBlock, 0);
    sub_213CCE520(v305);
    sub_213CCE520(v59);

    sub_213D1F330(v36, type metadata accessor for MarkerAnnotationViewModel);
    v60 = v329;
LABEL_5:
    v55 = v60 + v320;
    if (!--v57)
    {
      goto LABEL_61;
    }
  }

  sub_213D1E884(v138, v298, type metadata accessor for MarkerAnnotationViewModel);
  v143 = *(v142 + 16);
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v145 = v140;
  v146 = v144;
  v336 = *(v142 + 16);
  v147 = v336;
  *(v142 + 16) = 0x8000000000000000;
  v148 = v145;
  v149 = sub_213CE2448(v145);
  v151 = *(v147 + 16);
  v152 = (v150 & 1) == 0;
  v153 = __OFADD__(v151, v152);
  v154 = v151 + v152;
  if (v153)
  {
    goto LABEL_143;
  }

  v155 = v150;
  if (*(v147 + 24) >= v154)
  {
    if ((v146 & 1) == 0)
    {
      v161 = v149;
      sub_213D1C9C8();
      v149 = v161;
    }

    v140 = v148;
  }

  else
  {
    sub_213D1A820(v154, v146);
    v140 = v148;
    v149 = sub_213CE2448(v148);
    if ((v155 & 1) != (v156 & 1))
    {
      goto LABEL_147;
    }
  }

  v157 = v336;
  if (v155)
  {
    sub_213D1EA60(v298, v336[7] + v149 * v320, type metadata accessor for MarkerAnnotationViewModel);

LABEL_59:
    v160 = *(v142 + 16);
    *(v142 + 16) = v157;

    goto LABEL_4;
  }

  v336[(v149 >> 6) + 8] |= 1 << v149;
  *(v157[6] + 8 * v149) = v140;
  sub_213D1E884(v298, v157[7] + v149 * v320, type metadata accessor for MarkerAnnotationViewModel);
  v158 = v157[2];
  v153 = __OFADD__(v158, 1);
  v159 = v158 + 1;
  if (!v153)
  {
    v157[2] = v159;
    goto LABEL_59;
  }

  __break(1u);
LABEL_146:
  sub_213D91F8C();
  __break(1u);
LABEL_147:
  type metadata accessor for MapBridgingMarker();
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D07EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v314 = a4;
  v308 = a1;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB288, &unk_213D972E0);
  v332 = *(v325 - 8);
  v8 = *(v332 + 64);
  MEMORY[0x28223BE20](v325);
  i = (&v298 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v331 = (&v298 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB290, &qword_213D98000);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v299 = &v298 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v306 = &v298 - v16;
  MEMORY[0x28223BE20](v17);
  v307 = &v298 - v18;
  MEMORY[0x28223BE20](v19);
  v320 = &v298 - v20;
  MEMORY[0x28223BE20](v21);
  v322 = &v298 - v22;
  MEMORY[0x28223BE20](v23);
  v324 = &v298 - v24;
  MEMORY[0x28223BE20](v25);
  v328 = &v298 - v26;
  v337 = type metadata accessor for CustomAnnotationViewModel(0);
  v27 = *(v337 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v337);
  v304 = &v298 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v319 = &v298 - v30;
  MEMORY[0x28223BE20](v31);
  v305 = &v298 - v32;
  MEMORY[0x28223BE20](v33);
  v340 = (&v298 - v34);
  MEMORY[0x28223BE20](v35);
  v323 = &v298 - v36;
  MEMORY[0x28223BE20](v37);
  v336 = (&v298 - v38);
  MEMORY[0x28223BE20](v39);
  v327 = &v298 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB298, &qword_213D972F0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v44 = &v298 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v329 = (&v298 - v46);
  *&v344 = v5;
  v47 = v5;
  v339 = a5;
  v48 = swift_readAtKeyPath();
  v330 = *(v49 + 16);

  v48(&aBlock, 0);
  v338 = v47;

  v50 = *(a2 + 16);
  v334 = v27;
  v335 = v44;
  if (!v50)
  {
    v53 = MEMORY[0x277D84F90];
    v315 = MEMORY[0x277D84F90];
    v316 = MEMORY[0x277D84F90];
LABEL_60:
    v158 = v44;
    v326 = v53;
    if (v314)
    {
      v159 = objc_opt_self();
      v160 = swift_allocObject();
      *(v160 + 16) = v315;
      v349 = sub_213D1F590;
      v350 = v160;
      aBlock = MEMORY[0x277D85DD0];
      v346 = 1107296256;
      v347 = sub_213CFF278;
      v348 = &block_descriptor_259;
      v161 = _Block_copy(&aBlock);

      v162 = swift_allocObject();
      *(v162 + 16) = v316;
      v349 = sub_213D1F60C;
      v350 = v162;
      aBlock = MEMORY[0x277D85DD0];
      v346 = 1107296256;
      v347 = sub_213D183BC;
      v348 = &block_descriptor_266;
      v163 = _Block_copy(&aBlock);

      [v159 animateWithDuration:v161 animations:v163 completion:0.25];
      _Block_release(v163);
      _Block_release(v161);
    }

    v164 = (v330 + 64);
    v165 = 1 << *(v330 + 32);
    v166 = -1;
    if (v165 < 64)
    {
      v166 = ~(-1 << v165);
    }

    v167 = v166 & *(v330 + 64);
    v168 = (v165 + 63) >> 6;
    v169 = v334;
    v340 = (v334 + 56);

    v170 = 0;
    for (i = v164; ; v164 = i)
    {
      if (v167)
      {
        v175 = v170;
LABEL_77:
        v179 = __clz(__rbit64(v167));
        v167 &= v167 - 1;
        v180 = v179 | (v175 << 6);
        v181 = *(*(v330 + 48) + 8 * v180);
        v182 = v327;
        sub_213D1E9F8(*(v330 + 56) + *(v169 + 72) * v180, v327, type metadata accessor for CustomAnnotationViewModel);
        v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2A0, &qword_213D972F8);
        v184 = *(v183 + 48);
        *v158 = v181;
        v185 = v182;
        v178 = v158;
        sub_213D1E884(v185, &v158[v184], type metadata accessor for CustomAnnotationViewModel);
        (*(*(v183 - 8) + 56))(v158, 0, 1, v183);
        v186 = v181;
      }

      else
      {
        v176 = v168 <= v170 + 1 ? v170 + 1 : v168;
        v177 = v176 - 1;
        v178 = v158;
        while (1)
        {
          v175 = v170 + 1;
          if (__OFADD__(v170, 1))
          {
            __break(1u);
LABEL_137:
            __break(1u);
            goto LABEL_138;
          }

          if (v175 >= v168)
          {
            break;
          }

          v167 = v164[v175];
          ++v170;
          if (v167)
          {
            v170 = v175;
            goto LABEL_77;
          }
        }

        v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2A0, &qword_213D972F8);
        (*(*(v220 - 8) + 56))(v158, 1, 1, v220);
        v167 = 0;
        v170 = v177;
      }

      v187 = v329;
      sub_213CED608(v178, v329, &qword_27C8EB298, &qword_213D972F0);
      v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2A0, &qword_213D972F8);
      if ((*(*(v188 - 8) + 48))(v187, 1, v188) == 1)
      {
        break;
      }

      v189 = *v187;
      v190 = v187 + *(v188 + 48);
      v191 = v336;
      sub_213D1E884(v190, v336, type metadata accessor for CustomAnnotationViewModel);
      v192 = *v191;
      *&v344 = v338;
      v193 = v338;
      v194 = swift_modifyAtReferenceWritableKeyPath();
      v196 = v195;
      v197 = *(v195 + 24);
      v198 = sub_213CE22A8(v192);
      if (v199)
      {
        v200 = v198;
        v201 = *(v196 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v203 = *(v196 + 24);
        v341 = v203;
        *(v196 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB2A8, &qword_213D97300);
          v203 = v341;
        }

        v204 = *(*(v203 + 48) + 8 * v200);

        sub_213D1B868(v200, v203);
        v205 = *(v196 + 24);
        *(v196 + 24) = v203;
      }

      v194(&aBlock, 0);

      *&v344 = v193;
      v206 = v193;
      v207 = swift_modifyAtReferenceWritableKeyPath();
      v209 = v208;
      v210 = *(v208 + 16);
      v211 = sub_213CE249C(v189);
      v212 = v334;
      if (v213)
      {
        v214 = v211;
        v171 = v189;
        v215 = *(v209 + 16);
        v216 = swift_isUniquelyReferenced_nonNull_native();
        v217 = *(v209 + 16);
        v341 = v217;
        *(v209 + 16) = 0x8000000000000000;
        if (!v216)
        {
          sub_213D1CC00();
          v217 = v341;
        }

        v172 = v212;
        v218 = *(v217 + 56) + *(v212 + 72) * v214;
        v174 = v328;
        sub_213D1E884(v218, v328, type metadata accessor for CustomAnnotationViewModel);
        sub_213D1B698(v214, v217, type metadata accessor for CustomAnnotationViewModel);
        v219 = *(v209 + 16);
        *(v209 + 16) = v217;

        v173 = 0;
      }

      else
      {
        v171 = v189;
        v172 = v334;
        v173 = 1;
        v174 = v328;
      }

      (*v340)(v174, v173, 1, v337);
      sub_213CD8330(v174, &qword_27C8EB290, &qword_213D98000);
      v207(&aBlock, 0);

      sub_213D1F330(v336, type metadata accessor for CustomAnnotationViewModel);
      v158 = v335;
      v169 = v172;
    }

    v221 = v330;

    aBlock = MEMORY[0x277D84F90];
    v222 = 1 << *(v221 + 32);
    v223 = -1;
    if (v222 < 64)
    {
      v223 = ~(-1 << v222);
    }

    v224 = v223 & *(v221 + 64);
    v225 = (v222 + 63) >> 6;

    v226 = 0;
    while (v224)
    {
      v227 = v226;
      v228 = v330;
LABEL_97:
      v229 = __clz(__rbit64(v224));
      v224 &= v224 - 1;
      v230 = *(*(v228 + 48) + ((v227 << 9) | (8 * v229)));
      sub_213D91DEC();
      v231 = *(aBlock + 16);
      sub_213D91E2C();
      sub_213D91E3C();
      sub_213D91DFC();
    }

    v228 = v330;
    while (1)
    {
      v227 = v226 + 1;
      if (__OFADD__(v226, 1))
      {
        goto LABEL_137;
      }

      if (v227 >= v225)
      {
        break;
      }

      v224 = v164[v227];
      ++v226;
      if (v224)
      {
        v226 = v227;
        goto LABEL_97;
      }
    }

    v232 = aBlock;
    if (aBlock < 0 || (aBlock & 0x4000000000000000) != 0)
    {
      goto LABEL_144;
    }

    sub_213D91F6C();
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
    v233 = v232;
    while (1)
    {
      v234 = v326;

      sub_213D17F50(v233);

      v335 = v234[2];
      if (!v335)
      {
        return v234;
      }

      v235 = *(v325 + 48);
      i = (v234 + ((*(v332 + 80) + 32) & ~*(v332 + 80)));
      v330 = v334 + 48;

      v236 = 0;
      while (v236 < v234[2])
      {
        v239 = *(v332 + 72);
        v336 = v236;
        v240 = v331;
        sub_213CE2C28(i + v239 * v236, v331, &qword_27C8EB288, &unk_213D972E0);
        v241 = *v240;
        v242 = v235;
        v243 = *(v240 + v235);
        *&v344 = v338;
        v244 = v338;

        v245 = v241;
        v246 = swift_modifyAtReferenceWritableKeyPath();
        v248 = v247;
        v249 = *(v247 + 24);
        v250 = swift_isUniquelyReferenced_nonNull_native();
        v341 = *(v248 + 24);
        v251 = v341;
        *(v248 + 24) = 0x8000000000000000;
        v253 = sub_213CE22A8(v243);
        v254 = *(v251 + 16);
        v255 = (v252 & 1) == 0;
        v256 = v254 + v255;
        if (__OFADD__(v254, v255))
        {
          goto LABEL_139;
        }

        v257 = v252;
        if (*(v251 + 24) >= v256)
        {
          if ((v250 & 1) == 0)
          {
            sub_213D1CE38(&qword_27C8EB2A8, &qword_213D97300);
          }
        }

        else
        {
          sub_213D1AEB0(v256, v250, &qword_27C8EB2A8, &qword_213D97300);
          v258 = sub_213CE22A8(v243);
          if ((v257 & 1) != (v259 & 1))
          {
            goto LABEL_146;
          }

          v253 = v258;
        }

        v260 = v334;
        v261 = v341;
        if (v257)
        {
          v262 = v341[7];
          v263 = *(v262 + 8 * v253);
          *(v262 + 8 * v253) = v245;
        }

        else
        {
          v341[(v253 >> 6) + 8] |= 1 << v253;
          *(v261[6] + 8 * v253) = v243;
          *(v261[7] + 8 * v253) = v245;
          v264 = v261[2];
          v149 = __OFADD__(v264, 1);
          v265 = v264 + 1;
          if (v149)
          {
            goto LABEL_140;
          }

          v261[2] = v265;
        }

        *(v248 + 24) = v261;
        v246(&aBlock, 0);

        v235 = v242;
        v266 = v324;
        sub_213D1E884(v331 + v242, v324, type metadata accessor for CustomAnnotationViewModel);
        v267 = *v340;
        v268 = v337;
        (*v340)(v266, 0, 1, v337);
        *&v344 = v244;
        v269 = v244;
        v270 = v245;
        v271 = swift_modifyAtReferenceWritableKeyPath();
        v273 = v272;
        if ((*v330)(v266, 1, v268) == 1)
        {
          sub_213CD8330(v266, &qword_27C8EB290, &qword_213D98000);
          v274 = *(v273 + 16);
          v275 = sub_213CE249C(v270);
          if (v276)
          {
            v277 = v275;
            v278 = *(v273 + 16);
            v279 = swift_isUniquelyReferenced_nonNull_native();
            v280 = *(v273 + 16);
            v341 = v280;
            *(v273 + 16) = 0x8000000000000000;
            if (!v279)
            {
              sub_213D1CC00();
              v280 = v341;
            }

            v238 = v322;
            sub_213D1E884(*(v280 + 56) + *(v260 + 72) * v277, v322, type metadata accessor for CustomAnnotationViewModel);
            sub_213D1B698(v277, v280, type metadata accessor for CustomAnnotationViewModel);

            v281 = *(v273 + 16);
            *(v273 + 16) = v280;

            v237 = 0;
          }

          else
          {

            v237 = 1;
            v238 = v322;
          }

          v267(v238, v237, 1, v337);
          sub_213CD8330(v238, &qword_27C8EB290, &qword_213D98000);
        }

        else
        {
          sub_213D1E884(v266, v323, type metadata accessor for CustomAnnotationViewModel);
          v282 = *(v273 + 16);
          v283 = swift_isUniquelyReferenced_nonNull_native();
          v341 = *(v273 + 16);
          v284 = v341;
          *(v273 + 16) = 0x8000000000000000;
          v285 = sub_213CE249C(v270);
          v287 = *(v284 + 16);
          v288 = (v286 & 1) == 0;
          v149 = __OFADD__(v287, v288);
          v289 = v287 + v288;
          if (v149)
          {
            goto LABEL_141;
          }

          v290 = v286;
          if (*(v284 + 24) >= v289)
          {
            if ((v283 & 1) == 0)
            {
              v296 = v285;
              sub_213D1CC00();
              v285 = v296;
            }
          }

          else
          {
            sub_213D1AB68(v289, v283);
            v285 = sub_213CE249C(v270);
            if ((v290 & 1) != (v291 & 1))
            {
              goto LABEL_147;
            }
          }

          v292 = v341;
          if (v290)
          {
            sub_213D1EA60(v323, v341[7] + *(v260 + 72) * v285, type metadata accessor for CustomAnnotationViewModel);
          }

          else
          {
            v341[(v285 >> 6) + 8] |= 1 << v285;
            *(v292[6] + 8 * v285) = v270;
            sub_213D1E884(v323, v292[7] + *(v260 + 72) * v285, type metadata accessor for CustomAnnotationViewModel);
            v293 = v292[2];
            v149 = __OFADD__(v293, 1);
            v294 = v293 + 1;
            if (v149)
            {
              goto LABEL_142;
            }

            v292[2] = v294;
          }

          v295 = *(v273 + 16);
          *(v273 + 16) = v292;
        }

        v236 = v336 + 1;
        v271(&aBlock, 0);

        v234 = v326;
        if (v335 == v236)
        {

          return v234;
        }
      }

LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);

      v233 = sub_213D91EAC();
    }
  }

  v51 = *(v27 + 80);
  v52 = a2 + ((v51 + 32) & ~v51);
  v321 = (v27 + 56);
  v303 = v51;
  v302 = (v51 + 24) & ~v51;
  v301 = (v28 + v302 + 7) & 0xFFFFFFFFFFFFFFF8;
  v326 = *(v27 + 72);
  v300 = (v27 + 48);
  v53 = MEMORY[0x277D84F90];
  v315 = MEMORY[0x277D84F90];
  v316 = MEMORY[0x277D84F90];
  v54 = v340;
  while (1)
  {
    sub_213D1E9F8(v52, v54, type metadata accessor for CustomAnnotationViewModel);
    v57 = *v54;
    *&v344 = v338;
    v58 = v338;
    swift_getAtKeyPath();

    v59 = v348;
    if (!v348[2] || (v60 = sub_213CE22A8(v57), (v61 & 1) == 0))
    {
      v81 = v52;
      v82 = v50;
      v83 = v53;

LABEL_18:
      v85 = v340[1];
      v86 = v340[2];
      v87 = v340[3];
      v88 = v340[4];
      v89 = v340[7];
      v90 = v340[8];
      v91 = v340[5];
      v92 = type metadata accessor for MapBridgingCustomAnnotation();
      v93 = objc_allocWithZone(v92);
      v94 = &v93[OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_title];
      *v94 = 0;
      *(v94 + 1) = 0;
      v95 = &v93[OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_subtitle];
      *v95 = 0;
      *(v95 + 1) = 0;
      v96 = OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_mapItem;
      *&v93[OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_mapItem] = 0;
      *v94 = v85;
      *(v94 + 1) = v86;
      *v95 = v87;
      *(v95 + 1) = v88;
      v97 = &v93[OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_coordinate];
      *v97 = v89;
      *(v97 + 1) = v90;
      v98 = *&v93[v96];
      *&v93[v96] = v91;

      v99 = v91;

      v54 = v340;
      v351.receiver = v93;
      v351.super_class = v92;
      v100 = objc_msgSendSuper2(&v351, sel_init);
      v101 = *(v325 + 48);
      v102 = i;
      *i = v100;
      sub_213D1E9F8(v54, v102 + v101, type metadata accessor for CustomAnnotationViewModel);
      v53 = v83;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_213D70850(0, v83[2] + 1, 1, v83);
      }

      v44 = v335;
      v50 = v82;
      v104 = v53[2];
      v103 = v53[3];
      v52 = v81;
      if (v104 >= v103 >> 1)
      {
        v53 = sub_213D70850(v103 > 1, v104 + 1, 1, v53);
      }

      sub_213D1F330(v54, type metadata accessor for CustomAnnotationViewModel);
      v53[2] = v104 + 1;
      sub_213CED608(i, v53 + ((*(v332 + 80) + 32) & ~*(v332 + 80)) + *(v332 + 72) * v104, &qword_27C8EB288, &unk_213D972E0);
      goto LABEL_5;
    }

    v62 = *(v59[7] + 8 * v60);

    *&v344 = v58;
    v63 = v58;
    swift_getAtKeyPath();

    v64 = v347;
    if (!v347[2] || (v65 = sub_213CE249C(v62), (v66 & 1) == 0))
    {
      v81 = v52;
      v82 = v50;
      v83 = v53;

      v84 = v320;
      (*v321)(v320, 1, 1, v337);
      sub_213CD8330(v84, &qword_27C8EB290, &qword_213D98000);
      goto LABEL_18;
    }

    v313 = v63;
    v67 = v54;
    v68 = v320;
    sub_213D1E9F8(v64[7] + v65 * v326, v320, type metadata accessor for CustomAnnotationViewModel);

    v312 = *v321;
    v312(v68, 0, 1, v337);
    sub_213CD8330(v68, &qword_27C8EB290, &qword_213D98000);
    v348 = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
    v349 = &off_28263B0B0;
    v69 = v308;
    aBlock = v308;
    v70 = v305;
    sub_213D1E9F8(v67, v305, type metadata accessor for CustomAnnotationViewModel);
    sub_213D1E22C(&aBlock, &v344);
    sub_213D1E9F8(v70, v319, type metadata accessor for CustomAnnotationViewModel);
    sub_213D1E22C(&v344, &v341);
    v71 = v301;
    v72 = swift_allocObject();
    *(v72 + 16) = v62;
    sub_213D1E884(v70, v72 + v302, type metadata accessor for CustomAnnotationViewModel);
    sub_213D1E2DC(&v344, v72 + v71);
    v73 = v62;
    v74 = v69;
    v75 = v314;
    v318 = v73;
    if (!v314)
    {
      goto LABEL_14;
    }

    [v73 coordinate];
    if (vabdd_f64(v77, *(v67 + 56)) < 0.00000000999999994 && vabdd_f64(v76, *(v67 + 64)) < 0.00000000999999994)
    {

LABEL_14:
      v78 = v319;
      [v73 setCoordinate_];
      if (v78[2])
      {
        v79 = v78[1];
        v80 = sub_213D9190C();
      }

      else
      {
        v80 = 0;
      }

      v54 = v340;
      [v73 setTitle_];

      if (v78[4])
      {
        v120 = v78[3];
        v121 = sub_213D9190C();
      }

      else
      {
        v121 = 0;
      }

      [v73 setSubtitle_];

      v122 = v73;
      v123 = v342;
      v124 = v343;
      __swift_project_boxed_opaque_existential_1(&v341, v342);
      v125 = (*(v124 + 24))(v122, v123, v124);
      if (v125)
      {
        v126 = v125;
        type metadata accessor for SwiftUIAnnotationView();
        v127 = swift_dynamicCastClass();
        v128 = v319;
        if (v127)
        {
          sub_213D2763C(v127, 0);
          v128 = v319;
        }

        else
        {
        }
      }

      else
      {

        v128 = v319;
      }

      v112 = v318;
      __swift_destroy_boxed_opaque_existential_1(&v341);
      sub_213D1F330(v128, type metadata accessor for CustomAnnotationViewModel);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v311 = 0;
      v317 = 0;
      v309 = 0;
      v107 = 0;
      v109 = v307;
      goto LABEL_42;
    }

    __swift_destroy_boxed_opaque_existential_1(&v341);
    sub_213D1F330(v319, type metadata accessor for CustomAnnotationViewModel);
    v105 = swift_allocObject();
    v105[2] = sub_213D1EAC8;
    v105[3] = v72;
    v105[4] = v75;
    v106 = swift_allocObject();
    *(v106 + 16) = sub_213D1EAC8;
    *(v106 + 24) = v72;
    v317 = v106;
    v107 = v105;

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    v108 = swift_allocObject();
    *(v108 + 16) = sub_213D1E454;
    *(v108 + 24) = v105;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v315 = sub_213D6FE48(0, v315[2] + 1, 1, v315);
    }

    v109 = v307;
    v111 = v315[2];
    v110 = v315[3];
    if (v111 >= v110 >> 1)
    {
      v315 = sub_213D6FE48((v110 > 1), v111 + 1, 1, v315);
    }

    v112 = v318;

    v113 = v315;
    v315[2] = v111 + 1;
    v114 = &v113[2 * v111];
    v114[4] = sub_213D1F608;
    v114[5] = v108;
    v115 = swift_allocObject();
    *(v115 + 16) = sub_213D1E460;
    *(v115 + 24) = v317;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v316 = sub_213D6FE48(0, v316[2] + 1, 1, v316);
    }

    v117 = v316[2];
    v116 = v316[3];
    if (v117 >= v116 >> 1)
    {
      v316 = sub_213D6FE48((v116 > 1), v117 + 1, 1, v316);
    }

    v118 = v316;
    v316[2] = v117 + 1;
    v119 = &v118[2 * v117];
    v119[4] = sub_213D1F608;
    v119[5] = v115;
    v309 = sub_213D1E454;
    v311 = sub_213D1E460;
    v54 = v340;
LABEL_42:
    v129 = v330;
    v130 = sub_213CE249C(v112);
    v310 = v107;
    if (v131)
    {
      v132 = v130;
      v133 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v129;
      if (!v133)
      {
        sub_213D1CC00();
        v129 = aBlock;
      }

      sub_213D1E884(*(v129 + 56) + v132 * v326, v109, type metadata accessor for CustomAnnotationViewModel);
      v330 = v129;
      sub_213D1B698(v132, v129, type metadata accessor for CustomAnnotationViewModel);
      v134 = 0;
    }

    else
    {
      v134 = 1;
    }

    v135 = v337;
    v136 = v312;
    v312(v109, v134, 1, v337);
    sub_213CD8330(v109, &qword_27C8EB290, &qword_213D98000);
    v137 = v306;
    sub_213D1E9F8(v54, v306, type metadata accessor for CustomAnnotationViewModel);
    v136(v137, 0, 1, v135);
    *&v344 = v313;
    v138 = v313;
    v139 = v318;
    v318 = swift_modifyAtReferenceWritableKeyPath();
    v141 = v140;
    if ((*v300)(v137, 1, v135) != 1)
    {
      break;
    }

    sub_213CD8330(v137, &qword_27C8EB290, &qword_213D98000);
    v55 = v299;
    sub_213D18E08(v139, v299);

    sub_213CD8330(v55, &qword_27C8EB290, &qword_213D98000);
LABEL_4:
    v56 = v309;
    (v318)(&aBlock, 0);
    sub_213CCE520(v311);
    sub_213CCE520(v56);

    sub_213D1F330(v54, type metadata accessor for CustomAnnotationViewModel);
    v44 = v335;
LABEL_5:
    v52 += v326;
    if (!--v50)
    {
      goto LABEL_60;
    }
  }

  sub_213D1E884(v137, v304, type metadata accessor for CustomAnnotationViewModel);
  v142 = *(v141 + 16);
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v341 = *(v141 + 16);
  v144 = v341;
  *(v141 + 16) = 0x8000000000000000;
  v145 = sub_213CE249C(v139);
  v147 = *(v144 + 16);
  v148 = (v146 & 1) == 0;
  v149 = __OFADD__(v147, v148);
  v150 = v147 + v148;
  if (v149)
  {
    goto LABEL_143;
  }

  v151 = v146;
  if (*(v144 + 24) >= v150)
  {
    if ((v143 & 1) == 0)
    {
      v157 = v145;
      sub_213D1CC00();
      v145 = v157;
      v54 = v340;
    }
  }

  else
  {
    sub_213D1AB68(v150, v143);
    v145 = sub_213CE249C(v139);
    if ((v151 & 1) != (v152 & 1))
    {
      goto LABEL_147;
    }
  }

  v153 = v341;
  if (v151)
  {
    sub_213D1EA60(v304, v341[7] + v145 * v326, type metadata accessor for CustomAnnotationViewModel);

LABEL_58:
    v156 = *(v141 + 16);
    *(v141 + 16) = v153;

    goto LABEL_4;
  }

  v341[(v145 >> 6) + 8] |= 1 << v145;
  *(v153[6] + 8 * v145) = v139;
  sub_213D1E884(v304, v153[7] + v145 * v326, type metadata accessor for CustomAnnotationViewModel);
  v154 = v153[2];
  v149 = __OFADD__(v154, 1);
  v155 = v154 + 1;
  if (!v149)
  {
    v153[2] = v155;
    goto LABEL_58;
  }

  __break(1u);
LABEL_146:
  sub_213D91F8C();
  __break(1u);
LABEL_147:
  type metadata accessor for MapBridgingCustomAnnotation();
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D09FA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = swift_readAtKeyPath();
  v284 = *(v8 + 16);

  v7(aBlock, 0);
  v294 = v6;

  v9 = *(a2 + 16);
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    v282 = MEMORY[0x277D84F90];
    v283 = MEMORY[0x277D84F90];
LABEL_83:
    v293 = v11;
    if (a4)
    {
      v132 = objc_opt_self();
      v133 = swift_allocObject();
      *(v133 + 16) = v282;
      *&aBlock[32] = sub_213D1F590;
      *&aBlock[40] = v133;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213CFF278;
      *&aBlock[24] = &block_descriptor_293;
      v134 = _Block_copy(aBlock);

      v135 = swift_allocObject();
      *(v135 + 16) = v283;
      *&aBlock[32] = sub_213D1F60C;
      *&aBlock[40] = v135;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213D183BC;
      *&aBlock[24] = &block_descriptor_300;
      v136 = _Block_copy(aBlock);

      [v132 animateWithDuration:v134 animations:v136 completion:0.25];
      _Block_release(v136);
      _Block_release(v134);
    }

    v137 = v284 + 64;
    v138 = 1 << *(v284 + 32);
    v139 = -1;
    if (v138 < 64)
    {
      v139 = ~(-1 << v138);
    }

    v140 = v139 & *(v284 + 64);
    v288 = (v138 + 63) >> 6;

    v141 = 0;
    while (v140)
    {
      v150 = v141;
LABEL_100:
      v153 = __clz(__rbit64(v140)) | (v150 << 6);
      v154 = *(*(v284 + 48) + 8 * v153);
      v140 &= v140 - 1;
      v155 = *(v284 + 56) + 136 * v153;
      v301 = *v155;
      v156 = *(v155 + 64);
      v158 = *(v155 + 16);
      v157 = *(v155 + 32);
      v304 = *(v155 + 48);
      v305 = v156;
      v302 = v158;
      v303 = v157;
      v160 = *(v155 + 96);
      v159 = *(v155 + 112);
      v161 = *(v155 + 80);
      v309 = *(v155 + 128);
      v307 = v160;
      v308 = v159;
      v306 = v161;
      *&v310[80] = *(v155 + 80);
      *&v310[96] = *(v155 + 96);
      *&v310[112] = *(v155 + 112);
      *&v310[128] = *(v155 + 128);
      *&v310[16] = *(v155 + 16);
      *&v310[32] = *(v155 + 32);
      *&v310[48] = *(v155 + 48);
      *&v310[64] = *(v155 + 64);
      *v310 = *v155;
      *aBlock = v154;
      *&aBlock[8] = *v310;
      *&aBlock[72] = *&v310[64];
      *&aBlock[56] = *&v310[48];
      *&aBlock[40] = *&v310[32];
      *&aBlock[24] = *&v310[16];
      v313 = *&v310[128];
      *&aBlock[120] = *&v310[112];
      *&aBlock[104] = *&v310[96];
      *&aBlock[88] = *&v310[80];
      nullsub_2(aBlock);
      v162 = v154;
      sub_213D1E18C(&v301, v311);
      v11 = *aBlock;
      v320 = *&aBlock[104];
      v321 = *&aBlock[120];
      v322 = v313;
      v163 = *&aBlock[24];
      v316 = *&aBlock[40];
      v317 = *&aBlock[56];
      v318 = *&aBlock[72];
      v319 = *&aBlock[88];
      v164 = *&aBlock[8];
LABEL_101:
      v314 = v164;
      v315 = v163;
      *&aBlock[88] = v319;
      *&aBlock[104] = v320;
      *&aBlock[120] = v321;
      *&aBlock[24] = v163;
      *&aBlock[40] = v316;
      *&aBlock[56] = v317;
      *&aBlock[72] = v318;
      v313 = v322;
      *&aBlock[8] = v164;
      *aBlock = v11;
      if (sub_213CCF338(aBlock) == 1)
      {

        *v310 = MEMORY[0x277D84F90];
        v189 = 1 << *(v284 + 32);
        v190 = -1;
        if (v189 < 64)
        {
          v190 = ~(-1 << v189);
        }

        v191 = v190 & *(v284 + 64);
        v192 = (v189 + 63) >> 6;

        v193 = 0;
        v11 = v293;
        while (v191)
        {
LABEL_118:
          v195 = __clz(__rbit64(v191));
          v191 &= v191 - 1;
          v196 = *(*(v284 + 48) + ((v193 << 9) | (8 * v195)));
          type metadata accessor for MapBridgingUserAnnotation();
          if (!swift_dynamicCastClass())
          {
            v197 = v196;
            sub_213D91DEC();
            v198 = *(*v310 + 16);
            sub_213D91E2C();
            sub_213D91E3C();
            sub_213D91DFC();
            v137 = v284 + 64;
          }
        }

        while (1)
        {
          v194 = v193 + 1;
          if (__OFADD__(v193, 1))
          {
            goto LABEL_157;
          }

          if (v194 >= v192)
          {

            v199 = *v310;
            if ((*v310 & 0x8000000000000000) == 0 && (*v310 & 0x4000000000000000) == 0)
            {

              sub_213D91F6C();
              sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
              v200 = v199;
              goto LABEL_123;
            }

            goto LABEL_162;
          }

          v191 = *(v137 + 8 * v194);
          ++v193;
          if (v191)
          {
            v193 = v194;
            goto LABEL_118;
          }
        }
      }

      *&v310[96] = v320;
      *&v310[112] = v321;
      *&v310[128] = v322;
      *v310 = v314;
      *&v310[16] = v315;
      *&v310[32] = v316;
      *&v310[48] = v317;
      *&v310[64] = v318;
      *&v310[80] = v319;
      v165 = v314;
      *&v311[0] = v294;
      v166 = v294;

      v167 = swift_modifyAtReferenceWritableKeyPath();
      v169 = v168;
      v170 = *(v168 + 24);
      v171 = sub_213CE22A8(v165);
      LOBYTE(v170) = v172;

      if (v170)
      {
        v173 = *(v169 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v175 = *(v169 + 24);
        v295[0] = v175;
        *(v169 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB198, &qword_213D97210);
          v175 = v295[0];
        }

        v176 = *(v175[6] + 8 * v171);

        sub_213D1B868(v171, v175);
        v177 = *(v169 + 24);
        *(v169 + 24) = v175;
      }

      v167(&v301, 0);

      v295[0] = v166;
      v178 = v166;
      v179 = swift_modifyAtReferenceWritableKeyPath();
      v181 = v180;
      v182 = *(v180 + 16);
      v183 = sub_213CE2258(v11);
      if (v184)
      {
        v185 = v183;
        v186 = *(v181 + 16);
        v187 = swift_isUniquelyReferenced_nonNull_native();
        v188 = *(v181 + 16);
        v298 = v188;
        *(v181 + 16) = 0x8000000000000000;
        if (!v187)
        {
          sub_213D1C0D4();
          v188 = v298;
        }

        v142 = *(v188 + 56) + 136 * v185;
        v301 = *v142;
        v143 = *(v142 + 48);
        v144 = *(v142 + 64);
        v145 = *(v142 + 32);
        v302 = *(v142 + 16);
        v303 = v145;
        v304 = v143;
        v305 = v144;
        v146 = *(v142 + 80);
        v147 = *(v142 + 96);
        v148 = *(v142 + 112);
        v309 = *(v142 + 128);
        v307 = v147;
        v308 = v148;
        v306 = v146;
        sub_213D1E108(&v301);
        sub_213D1B1E8(v185, v188);
        v149 = *(v181 + 16);
        *(v181 + 16) = v188;
      }

      v179(v311, 0);

      sub_213D1E108(v310);
      v137 = v284 + 64;
    }

    if (v288 <= v141 + 1)
    {
      v151 = v141 + 1;
    }

    else
    {
      v151 = v288;
    }

    v152 = v151 - 1;
    while (1)
    {
      v150 = v141 + 1;
      if (__OFADD__(v141, 1))
      {
        break;
      }

      if (v150 >= v288)
      {
        sub_213D1E1E8(aBlock);
        v140 = 0;
        v322 = v313;
        v11 = *aBlock;
        v320 = *&aBlock[104];
        v321 = *&aBlock[120];
        v163 = *&aBlock[24];
        v316 = *&aBlock[40];
        v317 = *&aBlock[56];
        v318 = *&aBlock[72];
        v319 = *&aBlock[88];
        v164 = *&aBlock[8];
        v141 = v152;
        goto LABEL_101;
      }

      v140 = *(v137 + 8 * v150);
      ++v141;
      if (v140)
      {
        v141 = v150;
        goto LABEL_100;
      }
    }

    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);

    v200 = sub_213D91EAC();

LABEL_123:

    *v310 = a1;
    v201 = sub_213D17C74(v200, &protocolRef_MKOverlay);
    if (v201)
    {
      v202 = v201;

      v203 = off_28263B068;
      v204 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
      v203(v202, v204, &off_28263B040);
    }

    else
    {
      v205 = sub_213D17C74(v200, &protocolRef_MKAnnotation);

      if (!v205)
      {
LABEL_128:
        v208 = v11[2];
        if (!v208)
        {
          return v11;
        }

        v209 = 0;
        v289 = v208 - 1;
        v210 = 32;
        while (1)
        {
          v291 = v210;
          *v310 = *(v11 + v210);
          v211 = *(v11 + v210 + 16);
          v212 = *(v11 + v210 + 32);
          v213 = *(v11 + v210 + 64);
          *&v310[48] = *(v11 + v210 + 48);
          *&v310[64] = v213;
          *&v310[16] = v211;
          *&v310[32] = v212;
          v214 = *(v11 + v210 + 80);
          v215 = *(v11 + v210 + 96);
          v216 = *(v11 + v210 + 128);
          *&v310[112] = *(v11 + v210 + 112);
          *&v310[128] = v216;
          *&v310[80] = v214;
          *&v310[96] = v215;
          v218 = *&v310[8];
          v217 = *v310;
          *&v311[0] = v294;
          v11 = v294;
          sub_213CE2C28(v310, &v301, &qword_27C8ECC50, &unk_213D971F0);

          v219 = v217;
          v220 = swift_modifyAtReferenceWritableKeyPath();
          v222 = v221;
          v223 = *(v221 + 24);
          v224 = swift_isUniquelyReferenced_nonNull_native();
          v295[0] = *(v222 + 24);
          v225 = v295[0];
          *(v222 + 24) = 0x8000000000000000;
          v227 = sub_213CE22A8(v218);
          v228 = v225[2];
          v229 = (v226 & 1) == 0;
          v230 = v228 + v229;
          if (__OFADD__(v228, v229))
          {
            goto LABEL_158;
          }

          v231 = v226;
          if (v225[3] >= v230)
          {
            if (v224)
            {
              v234 = v295[0];
              if (v226)
              {
                goto LABEL_137;
              }
            }

            else
            {
              sub_213D1CE38(&qword_27C8EB198, &qword_213D97210);
              v234 = v295[0];
              if (v231)
              {
                goto LABEL_137;
              }
            }
          }

          else
          {
            sub_213D1AEB0(v230, v224, &qword_27C8EB198, &qword_213D97210);
            v232 = sub_213CE22A8(v218);
            if ((v231 & 1) != (v233 & 1))
            {
              goto LABEL_166;
            }

            v227 = v232;
            v234 = v295[0];
            if (v231)
            {
LABEL_137:
              v235 = v234[7];
              v236 = *(v235 + 8 * v227);
              *(v235 + 8 * v227) = v219;

              goto LABEL_141;
            }
          }

          v234[(v227 >> 6) + 8] |= 1 << v227;
          *(v234[6] + 8 * v227) = v218;
          *(v234[7] + 8 * v227) = v219;
          v237 = v234[2];
          v116 = __OFADD__(v237, 1);
          v238 = v237 + 1;
          if (v116)
          {
            goto LABEL_160;
          }

          v234[2] = v238;
LABEL_141:
          *(v222 + 24) = v234;
          v220(&v301, 0);

          v295[0] = v11;
          v239 = v11;
          v240 = v219;
          v241 = swift_modifyAtReferenceWritableKeyPath();
          v11 = v242;
          v243 = v242[2];
          v244 = swift_isUniquelyReferenced_nonNull_native();
          v298 = v11[2];
          v245 = v298;
          v11[2] = 0x8000000000000000;
          v246 = sub_213CE2258(v240);
          v248 = v245[2];
          v249 = (v247 & 1) == 0;
          v116 = __OFADD__(v248, v249);
          v250 = v248 + v249;
          if (v116)
          {
            goto LABEL_159;
          }

          v251 = v247;
          if (v245[3] < v250)
          {
            sub_213D19760(v250, v244);
            v246 = sub_213CE2258(v240);
            if ((v251 & 1) != (v252 & 1))
            {
              goto LABEL_165;
            }

LABEL_146:
            if ((v251 & 1) == 0)
            {
              goto LABEL_149;
            }

            goto LABEL_147;
          }

          if (v244)
          {
            goto LABEL_146;
          }

          v267 = v246;
          sub_213D1C0D4();
          v246 = v267;
          if ((v251 & 1) == 0)
          {
LABEL_149:
            v253 = v298;
            v298[(v246 >> 6) + 8] |= 1 << v246;
            *(v253[6] + 8 * v246) = v240;
            v268 = v253[7] + 136 * v246;
            *v268 = *&v310[8];
            v269 = *&v310[40];
            v270 = *&v310[72];
            v271 = *&v310[24];
            *(v268 + 48) = *&v310[56];
            *(v268 + 64) = v270;
            *(v268 + 16) = v271;
            *(v268 + 32) = v269;
            v272 = *&v310[88];
            v273 = *&v310[104];
            v274 = *&v310[120];
            *(v268 + 128) = *&v310[136];
            *(v268 + 96) = v273;
            *(v268 + 112) = v274;
            *(v268 + 80) = v272;
            v275 = v253[2];
            v116 = __OFADD__(v275, 1);
            v276 = v275 + 1;
            if (v116)
            {
              goto LABEL_161;
            }

            v253[2] = v276;
            goto LABEL_151;
          }

LABEL_147:
          v253 = v298;
          v254 = v298[7] + 136 * v246;
          v301 = *v254;
          v255 = *(v254 + 64);
          v257 = *(v254 + 16);
          v256 = *(v254 + 32);
          v304 = *(v254 + 48);
          v305 = v255;
          v302 = v257;
          v303 = v256;
          v259 = *(v254 + 96);
          v258 = *(v254 + 112);
          v260 = *(v254 + 80);
          v309 = *(v254 + 128);
          v307 = v259;
          v308 = v258;
          v306 = v260;
          *v254 = *&v310[8];
          v261 = *&v310[24];
          v262 = *&v310[40];
          v263 = *&v310[72];
          *(v254 + 48) = *&v310[56];
          *(v254 + 64) = v263;
          *(v254 + 16) = v261;
          *(v254 + 32) = v262;
          v264 = *&v310[88];
          v265 = *&v310[104];
          v266 = *&v310[120];
          *(v254 + 128) = *&v310[136];
          *(v254 + 96) = v265;
          *(v254 + 112) = v266;
          *(v254 + 80) = v264;
          sub_213D1E108(&v301);

LABEL_151:
          v277 = v11[2];
          v11[2] = v253;

          v241(v311, 0);

          if (v289 == v209)
          {
            goto LABEL_154;
          }

          ++v209;
          v11 = v293;
          v210 = v291 + 144;
          if (v209 >= v293[2])
          {
            __break(1u);
LABEL_154:
            v11 = v293;

            return v11;
          }
        }
      }

      v206 = off_28263B050;
      v207 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
      v206(v205, v207, &off_28263B040);
    }

    goto LABEL_128;
  }

  v10 = (a2 + 32);
  v11 = MEMORY[0x277D84F90];
  v282 = MEMORY[0x277D84F90];
  v283 = MEMORY[0x277D84F90];
  while (1)
  {
    v290 = v9;
    v292 = v11;
    v12 = v10[7];
    v327 = v10[6];
    v328 = v12;
    v329 = *(v10 + 16);
    v13 = v10[3];
    v325 = v10[2];
    *v326 = v13;
    v14 = v10[5];
    *&v326[16] = v10[4];
    *&v326[32] = v14;
    v15 = v10[1];
    v323 = *v10;
    v324 = v15;
    v16 = v15;
    v285 = *&v325;
    v287 = v10;
    v17 = BYTE8(v325);
    v18 = *(&v323 + 1);
    v19 = v323;
    *&v301 = v294;
    v20 = v294;
    sub_213D1E18C(&v323, aBlock);

    swift_getAtKeyPath();

    v21 = *&v310[24];
    if (!*(*&v310[24] + 16))
    {

LABEL_15:

      goto LABEL_18;
    }

    v22 = sub_213CE22A8(v19);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_15;
    }

    v25 = *(*(v21 + 56) + 8 * v22);

    v300 = v20;
    v26 = v20;
    swift_getAtKeyPath();

    v27 = v299;
    if (!*(v299 + 16) || (v28 = sub_213CE2258(v25), (v29 & 1) == 0))
    {

      goto LABEL_17;
    }

    v30 = *(v27 + 56) + 136 * v28;
    *aBlock = *v30;
    v31 = *(v30 + 48);
    v32 = *(v30 + 64);
    v33 = *(v30 + 32);
    *&aBlock[16] = *(v30 + 16);
    *&aBlock[32] = v33;
    *&aBlock[48] = v31;
    *&aBlock[64] = v32;
    v34 = *(v30 + 80);
    v35 = *(v30 + 96);
    v36 = *(v30 + 112);
    *&aBlock[128] = *(v30 + 128);
    *&aBlock[96] = v35;
    *&aBlock[112] = v36;
    *&aBlock[80] = v34;
    sub_213D1E18C(aBlock, v310);

    v37 = v18;
    v38 = *(&v16 + 1);
    v39 = *&v16;
    if (v17)
    {
      v40 = v285;
      if ((aBlock[40] & 1) == 0)
      {
        sub_213D1E108(aBlock);

        v11 = v292;
        v41 = v287;
        goto LABEL_20;
      }

      if (v18 != *&aBlock[8] || *&v16 != *&aBlock[16] || *(&v16 + 1) != *&aBlock[24] || *&aBlock[32] != v285)
      {
LABEL_46:
        sub_213D1E108(aBlock);
LABEL_17:

LABEL_18:
        v37 = v18;
        v38 = *(&v16 + 1);
        v39 = *&v16;
        v41 = v287;
        if (v17)
        {
          v40 = v285;
          v11 = v292;
LABEL_20:
          v42 = [objc_opt_self() circleWithMapRect_];
LABEL_23:
          v43 = v42;
          *&aBlock[96] = v327;
          *&aBlock[112] = v328;
          *&aBlock[128] = v329;
          *&aBlock[32] = v325;
          *&aBlock[48] = *v326;
          *&aBlock[64] = *&v326[16];
          *&aBlock[80] = *&v326[32];
          *aBlock = v323;
          *&aBlock[16] = v324;
          sub_213D1E18C(&v323, v310);
          v44 = v43;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_213D70434(0, v11[2] + 1, 1, v11);
          }

          v46 = v11[2];
          v45 = v11[3];
          if (v46 >= v45 >> 1)
          {
            v11 = sub_213D70434((v45 > 1), v46 + 1, 1, v11);
          }

          sub_213D1E108(&v323);

          v11[2] = v46 + 1;
          v47 = &v11[18 * v46];
          v47[4] = v44;
          *(v47 + 5) = *aBlock;
          v48 = *&aBlock[16];
          v49 = *&aBlock[32];
          v50 = *&aBlock[48];
          *(v47 + 13) = *&aBlock[64];
          *(v47 + 11) = v50;
          *(v47 + 9) = v49;
          *(v47 + 7) = v48;
          v51 = *&aBlock[80];
          v52 = *&aBlock[96];
          v53 = *&aBlock[112];
          v47[21] = *&aBlock[128];
          *(v47 + 19) = v53;
          *(v47 + 17) = v52;
          *(v47 + 15) = v51;
          goto LABEL_28;
        }

        v11 = v292;
LABEL_22:
        v42 = [objc_opt_self() circleWithCenterCoordinate:v37 radius:{v39, v38}];
        goto LABEL_23;
      }
    }

    else
    {
      if ((aBlock[40] & 1) != 0 || v18 != *&aBlock[8] || *&v16 != *&aBlock[16])
      {
        sub_213D1E108(aBlock);

        v11 = v292;
        v41 = v287;
        goto LABEL_22;
      }

      if (*(&v16 + 1) != *&aBlock[24])
      {
        goto LABEL_46;
      }
    }

    if (v329 != *&aBlock[128])
    {
      goto LABEL_46;
    }

    *(&v302 + 1) = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
    *&v303 = &off_28263B040;
    *&v301 = a1;
    sub_213D1E22C(&v301, v311);
    sub_213D1E22C(v311, v295);
    v54 = swift_allocObject();
    sub_213D1E2DC(v311, v54 + 16);
    *(v54 + 56) = v25;
    v55 = v328;
    *(v54 + 160) = v327;
    *(v54 + 176) = v55;
    *(v54 + 192) = v329;
    v56 = *v326;
    *(v54 + 96) = v325;
    *(v54 + 112) = v56;
    v57 = *&v326[32];
    *(v54 + 128) = *&v326[16];
    *(v54 + 144) = v57;
    v58 = v324;
    *(v54 + 64) = v323;
    *(v54 + 80) = v58;
    if (!a4)
    {
      v71 = v296;
      v72 = v297;
      __swift_project_boxed_opaque_existential_1(v295, v296);
      v73 = *(v72 + 48);
      sub_213D1E18C(&v323, v310);
      v74 = v25;
      v75 = a1;
      v76 = v73(v74, v71, v72);
      if (v76)
      {
        v77 = v76;
        objc_opt_self();
        v78 = swift_dynamicCastObjCClass();
        v11 = v292;
        if (v78)
        {
          v79 = v78;
          v330 = *&v326[8];
          v331 = *&v326[24];
          v332 = *&v326[40];
          v80 = *&v326[32];
          v81 = *&v326[8];
          sub_213D1E3A4(&v330, v310);
          [v79 setLineWidth_];
          [v79 setLineCap_];
          [v79 setLineJoin_];
          [v79 setMiterLimit_];
          if (*(v80 + 16))
          {

            sub_213D18410(v82);
            sub_213D1E400(&v330);
            sub_213CE2B34(0, &unk_27C8EB188, 0x277CCABB0);
            v83 = sub_213D919EC();
          }

          else
          {
            v83 = 0;
          }

          v84 = v327;
          v85 = BYTE8(v327);
          [v79 setLineDashPattern_];

          [v79 setLineDashPhase_];
          sub_213D1E400(&v330);
          if (v85)
          {
            if (!*(v84 + 16))
            {
              sub_213D9149C();
LABEL_59:
              v87 = v328;
              v88 = BYTE8(v328);
              sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
              v89 = sub_213D91C3C();
              [v79 setStrokeColor_];

              if (v88)
              {
                if (!*(v87 + 16))
                {
                  sub_213D9149C();
                  goto LABEL_63;
                }

                v90 = *(v87 + 32);
              }

LABEL_63:
              v91 = sub_213D91C3C();
              [v79 setFillColor_];

              [v79 setNeedsDisplay];

              goto LABEL_64;
            }

            v86 = *(v84 + 32);
          }

          goto LABEL_59;
        }
      }

      else
      {

        v11 = v292;
      }

LABEL_64:
      __swift_destroy_boxed_opaque_existential_1(v295);
      __swift_destroy_boxed_opaque_existential_1(&v301);
      v286 = 0;
      v279 = 0;
      goto LABEL_65;
    }

    sub_213D1E18C(&v323, v310);
    v59 = v25;
    v60 = a1;

    __swift_destroy_boxed_opaque_existential_1(v295);
    v61 = swift_allocObject();
    v61[2] = sub_213D1F508;
    v61[3] = v54;
    v61[4] = a4;
    v62 = swift_allocObject();
    *(v62 + 16) = sub_213D1F508;
    *(v62 + 24) = v54;

    __swift_destroy_boxed_opaque_existential_1(&v301);
    v63 = swift_allocObject();
    *(v63 + 16) = sub_213D1F610;
    *(v63 + 24) = v61;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v282 = sub_213D6FE48(0, v282[2] + 1, 1, v282);
    }

    v11 = v292;
    v65 = v282[2];
    v64 = v282[3];
    if (v65 >= v64 >> 1)
    {
      v282 = sub_213D6FE48((v64 > 1), v65 + 1, 1, v282);
    }

    v282[2] = v65 + 1;
    v66 = &v282[2 * v65];
    v66[4] = sub_213D1F608;
    v66[5] = v63;
    v67 = swift_allocObject();
    *(v67 + 16) = sub_213D1F584;
    *(v67 + 24) = v62;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v283 = sub_213D6FE48(0, v283[2] + 1, 1, v283);
    }

    v69 = v283[2];
    v68 = v283[3];
    if (v69 >= v68 >> 1)
    {
      v283 = sub_213D6FE48((v68 > 1), v69 + 1, 1, v283);
    }

    v283[2] = v69 + 1;
    v70 = &v283[2 * v69];
    v70[4] = sub_213D1F608;
    v70[5] = v67;
    v279 = sub_213D1F584;
    v286 = sub_213D1F610;
LABEL_65:
    v92 = v284;
    v93 = sub_213CE2258(v25);
    if (v94)
    {
      v95 = v93;
      v96 = swift_isUniquelyReferenced_nonNull_native();
      *&v301 = v284;
      if (!v96)
      {
        sub_213D1C0D4();
        v92 = v301;
      }

      v97 = *(v92 + 56) + 136 * v95;
      *v310 = *v97;
      v98 = *(v97 + 48);
      v99 = *(v97 + 64);
      v100 = *(v97 + 32);
      *&v310[16] = *(v97 + 16);
      *&v310[32] = v100;
      *&v310[48] = v98;
      *&v310[64] = v99;
      v101 = *(v97 + 80);
      v102 = *(v97 + 96);
      v103 = *(v97 + 112);
      *&v310[128] = *(v97 + 128);
      *&v310[96] = v102;
      *&v310[112] = v103;
      *&v310[80] = v101;
      sub_213D1E108(v310);
      v284 = v92;
      sub_213D1B1E8(v95, v92);
    }

    *&v301 = v26;
    v104 = v26;
    sub_213D1E18C(&v323, v310);
    v105 = v25;
    v106 = swift_modifyAtReferenceWritableKeyPath();
    v108 = v107;
    v109 = *(v107 + 16);
    v110 = swift_isUniquelyReferenced_nonNull_native();
    *&v311[0] = *(v108 + 16);
    v111 = *&v311[0];
    *(v108 + 16) = 0x8000000000000000;
    v112 = sub_213CE2258(v105);
    v114 = *(v111 + 16);
    v115 = (v113 & 1) == 0;
    v116 = __OFADD__(v114, v115);
    v117 = v114 + v115;
    if (v116)
    {
      break;
    }

    v118 = v113;
    if (*(v111 + 24) < v117)
    {
      sub_213D19760(v117, v110);
      v112 = sub_213CE2258(v105);
      if ((v118 & 1) != (v119 & 1))
      {
        goto LABEL_165;
      }

LABEL_74:
      v120 = *&v311[0];
      if ((v118 & 1) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_75;
    }

    if (v110)
    {
      goto LABEL_74;
    }

    v121 = v112;
    sub_213D1C0D4();
    v112 = v121;
    v120 = *&v311[0];
    if ((v118 & 1) == 0)
    {
LABEL_79:
      v120[(v112 >> 6) + 8] |= 1 << v112;
      *(v120[6] + 8 * v112) = v105;
      v122 = v120[7] + 136 * v112;
      *v122 = v323;
      v123 = v324;
      v124 = v325;
      v125 = *&v326[16];
      *(v122 + 48) = *v326;
      *(v122 + 64) = v125;
      *(v122 + 16) = v123;
      *(v122 + 32) = v124;
      v126 = *&v326[32];
      v127 = v327;
      v128 = v328;
      *(v122 + 128) = v329;
      *(v122 + 96) = v127;
      *(v122 + 112) = v128;
      *(v122 + 80) = v126;
      v129 = v120[2];
      v116 = __OFADD__(v129, 1);
      v130 = v129 + 1;
      if (v116)
      {
        goto LABEL_164;
      }

      v120[2] = v130;
      goto LABEL_81;
    }

LABEL_75:
    sub_213D1E348(&v323, v120[7] + 136 * v112);

LABEL_81:
    v131 = *(v108 + 16);
    *(v108 + 16) = v120;

    v106(v310, 0);
    sub_213D1E108(aBlock);
    sub_213CCE520(v279);
    sub_213CCE520(v286);

    sub_213D1E108(&v323);
    v41 = v287;
    v9 = v290;
LABEL_28:
    v10 = (v41 + 136);
    if (!--v9)
    {
      goto LABEL_83;
    }
  }

  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  sub_213CE2B34(0, &qword_27C8EB180, 0x277CD4DA0);
  sub_213D91F8C();
  __break(1u);
LABEL_166:
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D0B88C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = swift_readAtKeyPath();
  v9 = *(v8 + 16);

  v7(aBlock, 0);
  v302 = v6;

  v10 = *(a2 + 16);
  if (!v10)
  {
    v11 = MEMORY[0x277D84F90];
    v288 = MEMORY[0x277D84F90];
    v289 = MEMORY[0x277D84F90];
LABEL_79:
    v295 = v11;
    if (a4)
    {
      v128 = objc_opt_self();
      v129 = swift_allocObject();
      *(v129 + 16) = v288;
      *&aBlock[32] = sub_213D1F590;
      *&aBlock[40] = v129;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213CFF278;
      *&aBlock[24] = &block_descriptor_330;
      v130 = _Block_copy(aBlock);

      v131 = swift_allocObject();
      *(v131 + 16) = v289;
      *&aBlock[32] = sub_213D1F60C;
      *&aBlock[40] = v131;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213D183BC;
      *&aBlock[24] = &block_descriptor_337;
      v132 = _Block_copy(aBlock);

      [v128 animateWithDuration:v130 animations:v132 completion:0.25];
      _Block_release(v132);
      _Block_release(v130);
    }

    v133 = v9 + 64;
    v134 = 1 << *(v9 + 32);
    v135 = -1;
    if (v134 < 64)
    {
      v135 = ~(-1 << v134);
    }

    v136 = v135 & *(v9 + 64);
    v292 = ((v134 + 63) >> 6);

    v137 = 0;
    v297 = v9 + 64;
    v300 = v9;
    while (v136)
    {
      v146 = v137;
LABEL_96:
      v149 = __clz(__rbit64(v136));
      v136 &= v136 - 1;
      v150 = v149 | (v146 << 6);
      v151 = *(*(v9 + 48) + 8 * v150);
      v152 = *(v9 + 56) + 120 * v150;
      v154 = *(v152 + 32);
      v153 = *(v152 + 48);
      v155 = *v152;
      v310 = *(v152 + 16);
      v311 = v154;
      v309 = v155;
      v157 = *(v152 + 80);
      v156 = *(v152 + 96);
      v158 = *(v152 + 64);
      v316 = *(v152 + 112);
      v314 = v157;
      v315 = v156;
      v312 = v153;
      v313 = v158;
      v159 = *v152;
      v160 = *(v152 + 16);
      v161 = *(v152 + 48);
      *&v317[32] = *(v152 + 32);
      *&v317[48] = v161;
      *v317 = v159;
      *&v317[16] = v160;
      v162 = *(v152 + 64);
      v163 = *(v152 + 80);
      v164 = *(v152 + 96);
      *&v317[112] = *(v152 + 112);
      *&v317[80] = v163;
      *&v317[96] = v164;
      *&v317[64] = v162;
      *aBlock = v151;
      *&aBlock[72] = v162;
      *&aBlock[88] = v163;
      *&aBlock[104] = v164;
      v320 = *&v317[112];
      *&aBlock[8] = *v317;
      *&aBlock[24] = *&v317[16];
      *&aBlock[40] = *&v317[32];
      *&aBlock[56] = v161;
      nullsub_2(aBlock);
      v165 = v151;
      sub_213D1E518(&v309, v318);
      v166 = *aBlock;
      v325 = *&aBlock[72];
      v326 = *&aBlock[88];
      v327 = *&aBlock[104];
      v328 = v320;
      v321 = *&aBlock[8];
      v322 = *&aBlock[24];
      v167 = *&aBlock[40];
      v168 = *&aBlock[56];
LABEL_97:
      v323 = v167;
      v324 = v168;
      *&aBlock[72] = v325;
      *&aBlock[88] = v326;
      *&aBlock[104] = v327;
      *&aBlock[8] = v321;
      *&aBlock[24] = v322;
      *&aBlock[40] = v167;
      v320 = v328;
      *&aBlock[56] = v168;
      *aBlock = v166;
      if (sub_213CCF338(aBlock) == 1)
      {

        *v317 = MEMORY[0x277D84F90];
        v193 = 1 << *(v9 + 32);
        v194 = -1;
        if (v193 < 64)
        {
          v194 = ~(-1 << v193);
        }

        v195 = v194 & *(v9 + 64);
        v196 = (v193 + 63) >> 6;

        v197 = 0;
        v136 = v295;
        while (v195)
        {
LABEL_114:
          v199 = __clz(__rbit64(v195));
          v195 &= v195 - 1;
          v200 = *(*(v9 + 48) + ((v197 << 9) | (8 * v199)));
          type metadata accessor for MapBridgingUserAnnotation();
          if (!swift_dynamicCastClass())
          {
            v201 = v200;
            sub_213D91DEC();
            v202 = *(*v317 + 16);
            sub_213D91E2C();
            sub_213D91E3C();
            sub_213D91DFC();
          }
        }

        while (1)
        {
          v198 = v197 + 1;
          if (__OFADD__(v197, 1))
          {
            goto LABEL_153;
          }

          if (v198 >= v196)
          {

            v203 = *v317;
            if ((*v317 & 0x8000000000000000) == 0 && (*v317 & 0x4000000000000000) == 0)
            {

              sub_213D91F6C();
              sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
              v204 = v203;
              goto LABEL_119;
            }

            goto LABEL_158;
          }

          v195 = *(v133 + 8 * v198);
          ++v197;
          if (v195)
          {
            v197 = v198;
            goto LABEL_114;
          }
        }
      }

      *&v317[64] = v325;
      *&v317[80] = v326;
      *&v317[96] = v327;
      *&v317[112] = v328;
      *v317 = v321;
      *&v317[16] = v322;
      *&v317[32] = v323;
      *&v317[48] = v324;
      v169 = v321;
      *&v318[0] = v302;
      v170 = v302;

      v171 = swift_modifyAtReferenceWritableKeyPath();
      v173 = v172;
      v174 = *(v172 + 24);
      v175 = sub_213CE22A8(v169);
      LOBYTE(v174) = v176;

      if (v174)
      {
        v177 = *(v173 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v179 = *(v173 + 24);
        v303[0] = v179;
        *(v173 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB1C8, &qword_213D97230);
          v179 = v303[0];
        }

        v180 = *(v179[6] + 8 * v175);

        sub_213D1B868(v175, v179);
        v181 = *(v173 + 24);
        *(v173 + 24) = v179;
      }

      v171(&v309, 0);

      v303[0] = v170;
      v182 = v170;
      v183 = swift_modifyAtReferenceWritableKeyPath();
      v185 = v184;
      v186 = *(v184 + 16);
      v187 = sub_213CE2354(v166);
      if (v188)
      {
        v189 = v187;
        v190 = *(v185 + 16);
        v191 = swift_isUniquelyReferenced_nonNull_native();
        v192 = *(v185 + 16);
        v306 = v192;
        *(v185 + 16) = 0x8000000000000000;
        if (!v191)
        {
          sub_213D1C2B8();
          v192 = v306;
        }

        v138 = *(v192 + 56) + 120 * v189;
        v140 = *(v138 + 32);
        v139 = *(v138 + 48);
        v141 = *(v138 + 16);
        v309 = *v138;
        v310 = v141;
        v311 = v140;
        v312 = v139;
        v142 = *(v138 + 64);
        v143 = *(v138 + 80);
        v144 = *(v138 + 96);
        v316 = *(v138 + 112);
        v314 = v143;
        v315 = v144;
        v313 = v142;
        sub_213D1E4C4(&v309);
        sub_213D1B378(v189, v192);
        v145 = *(v185 + 16);
        *(v185 + 16) = v192;
      }

      v183(v318, 0);

      sub_213D1E4C4(v317);
      v133 = v297;
      v9 = v300;
    }

    if (v292 <= v137 + 1)
    {
      v147 = (v137 + 1);
    }

    else
    {
      v147 = v292;
    }

    v148 = v147 - 1;
    while (1)
    {
      v146 = v137 + 1;
      if (__OFADD__(v137, 1))
      {
        break;
      }

      if (v146 >= v292)
      {
        sub_213D1E5D0(aBlock);
        v136 = 0;
        v328 = v320;
        v166 = *aBlock;
        v325 = *&aBlock[72];
        v326 = *&aBlock[88];
        v327 = *&aBlock[104];
        v321 = *&aBlock[8];
        v322 = *&aBlock[24];
        v167 = *&aBlock[40];
        v168 = *&aBlock[56];
        v137 = v148;
        goto LABEL_97;
      }

      v136 = *(v133 + 8 * v146);
      ++v137;
      if (v136)
      {
        v137 = v146;
        goto LABEL_96;
      }
    }

    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);

    v204 = sub_213D91EAC();

LABEL_119:

    *v317 = a1;
    v205 = sub_213D17C74(v204, &protocolRef_MKOverlay);
    if (v205)
    {
      v206 = v205;

      v207 = off_28263B068;
      v208 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
      v207(v206, v208, &off_28263B040);
    }

    else
    {
      v209 = sub_213D17C74(v204, &protocolRef_MKAnnotation);

      if (!v209)
      {
LABEL_124:
        v212 = *(v136 + 16);
        if (!v212)
        {
          return v136;
        }

        v213 = 0;
        v298 = v212 - 1;
        v214 = 32;
        while (1)
        {
          v301 = v214;
          v215 = *(v136 + v214 + 48);
          v217 = *(v136 + v214);
          v216 = *(v136 + v214 + 16);
          *&v317[32] = *(v136 + v214 + 32);
          *&v317[48] = v215;
          *v317 = v217;
          *&v317[16] = v216;
          v218 = *(v136 + v214 + 64);
          v219 = *(v136 + v214 + 80);
          v220 = *(v136 + v214 + 112);
          *&v317[96] = *(v136 + v214 + 96);
          *&v317[112] = v220;
          *&v317[64] = v218;
          *&v317[80] = v219;
          v222 = *&v317[8];
          v221 = *v317;
          *&v318[0] = v302;
          v136 = v302;
          sub_213CE2C28(v317, &v309, &qword_27C8EB1B0, &qword_213D97220);

          v223 = v221;
          v224 = swift_modifyAtReferenceWritableKeyPath();
          v226 = v225;
          v227 = *(v225 + 24);
          v228 = swift_isUniquelyReferenced_nonNull_native();
          v303[0] = *(v226 + 24);
          v229 = v303[0];
          *(v226 + 24) = 0x8000000000000000;
          v231 = sub_213CE22A8(v222);
          v232 = v229[2];
          v233 = (v230 & 1) == 0;
          v234 = v232 + v233;
          if (__OFADD__(v232, v233))
          {
            goto LABEL_154;
          }

          v235 = v230;
          if (v229[3] >= v234)
          {
            if (v228)
            {
              v238 = v303[0];
              if (v230)
              {
                goto LABEL_134;
              }
            }

            else
            {
              sub_213D1CE38(&qword_27C8EB1C8, &qword_213D97230);
              v238 = v303[0];
              if (v235)
              {
                goto LABEL_134;
              }
            }
          }

          else
          {
            sub_213D1AEB0(v234, v228, &qword_27C8EB1C8, &qword_213D97230);
            v236 = sub_213CE22A8(v222);
            if ((v235 & 1) != (v237 & 1))
            {
              goto LABEL_162;
            }

            v231 = v236;
            v238 = v303[0];
            if (v235)
            {
LABEL_134:
              v241 = v238[7];
              v242 = *(v241 + 8 * v231);
              *(v241 + 8 * v231) = v223;

              goto LABEL_135;
            }
          }

          v238[(v231 >> 6) + 8] |= 1 << v231;
          *(v238[6] + 8 * v231) = v222;
          *(v238[7] + 8 * v231) = v223;
          v239 = v238[2];
          v112 = __OFADD__(v239, 1);
          v240 = v239 + 1;
          if (v112)
          {
            goto LABEL_156;
          }

          v238[2] = v240;
LABEL_135:
          *(v226 + 24) = v238;
          v224(&v309, 0);

          v303[0] = v136;
          v243 = v136;
          v244 = v223;
          v245 = swift_modifyAtReferenceWritableKeyPath();
          v136 = v246;
          v247 = *(v246 + 16);
          v248 = swift_isUniquelyReferenced_nonNull_native();
          v306 = *(v136 + 16);
          v249 = v306;
          *(v136 + 16) = 0x8000000000000000;
          v250 = sub_213CE2354(v244);
          v252 = v249[2];
          v253 = (v251 & 1) == 0;
          v112 = __OFADD__(v252, v253);
          v254 = v252 + v253;
          if (v112)
          {
            goto LABEL_155;
          }

          v255 = v251;
          if (v249[3] < v254)
          {
            sub_213D19B34(v254, v248);
            v250 = sub_213CE2354(v244);
            if ((v255 & 1) != (v256 & 1))
            {
              goto LABEL_161;
            }

LABEL_140:
            if ((v255 & 1) == 0)
            {
              goto LABEL_145;
            }

            goto LABEL_141;
          }

          if (v248)
          {
            goto LABEL_140;
          }

          v271 = v250;
          sub_213D1C2B8();
          v250 = v271;
          if ((v255 & 1) == 0)
          {
LABEL_145:
            v257 = v306;
            v306[(v250 >> 6) + 8] |= 1 << v250;
            *(v257[6] + 8 * v250) = v244;
            v272 = v257[7] + 120 * v250;
            v273 = *&v317[24];
            v274 = *&v317[56];
            v275 = *&v317[8];
            *(v272 + 32) = *&v317[40];
            *(v272 + 48) = v274;
            *v272 = v275;
            *(v272 + 16) = v273;
            v276 = *&v317[72];
            v277 = *&v317[88];
            v278 = *&v317[104];
            *(v272 + 112) = *&v317[120];
            *(v272 + 80) = v277;
            *(v272 + 96) = v278;
            *(v272 + 64) = v276;
            v279 = v257[2];
            v112 = __OFADD__(v279, 1);
            v280 = v279 + 1;
            if (v112)
            {
              goto LABEL_157;
            }

            v257[2] = v280;
            goto LABEL_147;
          }

LABEL_141:
          v257 = v306;
          v258 = v306[7] + 120 * v250;
          v259 = *(v258 + 48);
          v261 = *v258;
          v260 = *(v258 + 16);
          v311 = *(v258 + 32);
          v312 = v259;
          v309 = v261;
          v310 = v260;
          v263 = *(v258 + 80);
          v262 = *(v258 + 96);
          v264 = *(v258 + 64);
          v316 = *(v258 + 112);
          v314 = v263;
          v315 = v262;
          v313 = v264;
          v265 = *&v317[8];
          v266 = *&v317[24];
          v267 = *&v317[56];
          *(v258 + 32) = *&v317[40];
          *(v258 + 48) = v267;
          *v258 = v265;
          *(v258 + 16) = v266;
          v268 = *&v317[72];
          v269 = *&v317[88];
          v270 = *&v317[104];
          *(v258 + 112) = *&v317[120];
          *(v258 + 80) = v269;
          *(v258 + 96) = v270;
          *(v258 + 64) = v268;
          sub_213D1E4C4(&v309);

LABEL_147:
          v281 = *(v136 + 16);
          *(v136 + 16) = v257;

          v245(v318, 0);

          if (v298 == v213)
          {
            goto LABEL_150;
          }

          ++v213;
          v136 = v295;
          v214 = v301 + 128;
          if (v213 >= v295[2])
          {
            __break(1u);
LABEL_150:
            v136 = v295;

            return v136;
          }
        }
      }

      v210 = off_28263B050;
      v211 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
      v210(v209, v211, &off_28263B040);
    }

    goto LABEL_124;
  }

  v11 = MEMORY[0x277D84F90];
  v12 = &qword_27C8EB1C0;
  v13 = (a2 + 40);
  v288 = MEMORY[0x277D84F90];
  v289 = MEMORY[0x277D84F90];
  while (1)
  {
    v14 = *(v13 + 72);
    *&v331[32] = *(v13 + 56);
    v332 = v14;
    v333 = *(v13 + 88);
    v334 = *(v13 + 13);
    v15 = *(v13 + 8);
    v329 = *(v13 - 8);
    v330 = v15;
    v16 = *(v13 + 40);
    *v331 = *(v13 + 24);
    *&v331[16] = v16;
    v17 = *v13;
    v339 = *(v13 + 2);
    v338 = v17;
    *&v309 = v302;
    v18 = v302;
    sub_213D1E518(&v329, aBlock);
    swift_getAtKeyPath();

    v19 = *&v317[24];
    if (!*(*&v317[24] + 16) || (v20 = sub_213CE22A8(v329), (v21 & 1) == 0))
    {

      v38 = *(&v338 + 1);
      v39 = v338;
      if ((*(&v338 + 1) & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      goto LABEL_15;
    }

    v22 = v12;
    v23 = *(*(v19 + 56) + 8 * v20);

    v308 = v18;
    v24 = v18;
    swift_getAtKeyPath();

    v25 = v307;
    if (!*(v307 + 16) || (v26 = sub_213CE2354(v23), (v27 & 1) == 0))
    {

      goto LABEL_34;
    }

    v28 = *(v25 + 56) + 120 * v26;
    v30 = *(v28 + 32);
    v29 = *(v28 + 48);
    v31 = *(v28 + 16);
    *aBlock = *v28;
    *&aBlock[16] = v31;
    *&aBlock[32] = v30;
    *&aBlock[48] = v29;
    v32 = *(v28 + 64);
    v33 = *(v28 + 80);
    v34 = *(v28 + 96);
    *&aBlock[112] = *(v28 + 112);
    *&aBlock[80] = v33;
    *&aBlock[96] = v34;
    *&aBlock[64] = v32;
    sub_213D1E518(aBlock, v317);

    if (((*(&v338 + 9) | ((*(&v338 + 13) | (SHIBYTE(v338) << 16)) << 32)) & 0x8000000000000000) != 0)
    {
      if ((*&aBlock[16] & 0x8000000000000000) == 0)
      {
        goto LABEL_33;
      }

      sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
      if ((sub_213D91C5C() & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if ((*&aBlock[16] & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      v35 = v339;
      v36 = *&aBlock[24];
      if (!sub_213D6798C(v338, BYTE8(v338) & 1, *&aBlock[8], aBlock[16] & 1))
      {
        goto LABEL_33;
      }

      if (v35)
      {
        if (!v36)
        {
          goto LABEL_21;
        }

        v37 = sub_213D6F248(v35, v36);

        if ((v37 & 1) == 0)
        {
LABEL_33:
          sub_213D1E4C4(aBlock);
LABEL_34:

LABEL_35:
          v12 = v22;
          v38 = *(&v338 + 1);
          v39 = v338;
          if ((*(&v338 + 1) & 0x8000000000000000) != 0)
          {
LABEL_36:
            sub_213D1E574(&v338, aBlock);
            goto LABEL_37;
          }

LABEL_15:
          v40 = v339;
          sub_213D1E574(&v338, aBlock);

          sub_213CE2B34(0, v12, 0x277CD4F18);
          sub_213D1E574(&v338, aBlock);
          v39 = sub_213D67678(v39, v38, v40);
LABEL_37:
          *&aBlock[64] = *&v331[32];
          *&aBlock[80] = v332;
          *&aBlock[96] = v333;
          *&aBlock[112] = v334;
          *aBlock = v329;
          *&aBlock[16] = v330;
          *&aBlock[32] = *v331;
          *&aBlock[48] = *&v331[16];
          sub_213D1E518(&v329, v317);
          v60 = v39;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_213D70584(0, v11[2] + 1, 1, v11);
          }

          v62 = v11[2];
          v61 = v11[3];
          if (v62 >= v61 >> 1)
          {
            v11 = sub_213D70584((v61 > 1), v62 + 1, 1, v11);
          }

          v11[2] = v62 + 1;
          v63 = &v11[16 * v62];
          v63[4] = v60;
          v64 = *aBlock;
          v65 = *&aBlock[16];
          v66 = *&aBlock[32];
          *(v63 + 11) = *&aBlock[48];
          *(v63 + 9) = v66;
          *(v63 + 7) = v65;
          *(v63 + 5) = v64;
          v67 = *&aBlock[64];
          v68 = *&aBlock[80];
          v69 = *&aBlock[96];
          v63[19] = *&aBlock[112];
          *(v63 + 17) = v69;
          *(v63 + 15) = v68;
          *(v63 + 13) = v67;
          sub_213D1E4C4(&v329);
          goto LABEL_42;
        }
      }

      else if (v36)
      {
LABEL_21:

        sub_213D1E4C4(aBlock);
        goto LABEL_35;
      }
    }

    if (v334 != *&aBlock[112])
    {
      goto LABEL_33;
    }

    v299 = v9;
    *(&v310 + 1) = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
    *&v311 = &off_28263B040;
    *&v309 = a1;
    sub_213D1E22C(&v309, v318);
    sub_213D1E22C(v318, v303);
    v41 = swift_allocObject();
    sub_213D1E2DC(v318, v41 + 16);
    *(v41 + 56) = v23;
    v42 = v332;
    *(v41 + 128) = *&v331[32];
    *(v41 + 144) = v42;
    *(v41 + 160) = v333;
    *(v41 + 176) = v334;
    v43 = v330;
    *(v41 + 64) = v329;
    *(v41 + 80) = v43;
    v44 = *&v331[16];
    *(v41 + 96) = *v331;
    *(v41 + 112) = v44;
    if (!a4)
    {
      v294 = v11;
      v70 = v304;
      v71 = v305;
      __swift_project_boxed_opaque_existential_1(v303, v304);
      v290 = *(v71 + 48);
      sub_213D1E518(&v329, v317);
      v72 = v23;
      v73 = a1;
      v74 = v290(v72, v70, v71);
      if (v74)
      {
        v75 = v74;
        objc_opt_self();
        v76 = swift_dynamicCastObjCClass();
        if (v76)
        {
          v77 = v76;
          v335 = *&v331[8];
          v336 = *&v331[24];
          v337 = *&v331[40];
          v78 = *&v331[32];
          v79 = *&v331[8];
          sub_213D1E3A4(&v335, v317);
          [v77 setLineWidth_];
          [v77 setLineCap_];
          [v77 setLineJoin_];
          v291 = v77;
          [v77 setMiterLimit_];
          v11 = v294;
          v285 = v75;
          if (*(v78 + 16))
          {

            sub_213D18410(v80);
            sub_213D1E400(&v335);
            sub_213CE2B34(0, &unk_27C8EB188, 0x277CCABB0);
            v81 = sub_213D919EC();
          }

          else
          {
            v81 = 0;
          }

          v82 = v332;
          v283 = BYTE8(v332);
          [v291 setLineDashPattern_];

          [v291 setLineDashPhase_];
          sub_213D1E400(&v335);
          if (v283)
          {
            if (!*(v82 + 16))
            {
              sub_213D9149C();
LABEL_55:
              v84 = v333;
              v85 = BYTE8(v333);
              sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
              v86 = sub_213D91C3C();
              [v291 setStrokeColor_];

              if (v85)
              {
                if (!*(v84 + 16))
                {
                  sub_213D9149C();
                  goto LABEL_59;
                }

                v87 = *(v84 + 32);
              }

LABEL_59:
              v88 = sub_213D91C3C();
              [v291 setFillColor_];

              [v291 setNeedsDisplay];

              goto LABEL_60;
            }

            v83 = *(v82 + 32);
          }

          goto LABEL_55;
        }
      }

      else
      {
      }

LABEL_60:
      __swift_destroy_boxed_opaque_existential_1(v303);
      __swift_destroy_boxed_opaque_existential_1(&v309);
      v59 = 0;
      v58 = 0;
      v50 = v299;
      goto LABEL_61;
    }

    sub_213D1E518(&v329, v317);
    v45 = v23;
    v46 = a1;

    __swift_destroy_boxed_opaque_existential_1(v303);
    v47 = swift_allocObject();
    v47[2] = sub_213D1F50C;
    v47[3] = v41;
    v47[4] = a4;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_213D1F50C;
    *(v48 + 24) = v41;
    v293 = v48;

    __swift_destroy_boxed_opaque_existential_1(&v309);
    v49 = swift_allocObject();
    *(v49 + 16) = sub_213D1F610;
    *(v49 + 24) = v47;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v288 = sub_213D6FE48(0, v288[2] + 1, 1, v288);
    }

    v50 = v299;
    v52 = v288[2];
    v51 = v288[3];
    if (v52 >= v51 >> 1)
    {
      v288 = sub_213D6FE48((v51 > 1), v52 + 1, 1, v288);
    }

    v288[2] = v52 + 1;
    v53 = &v288[2 * v52];
    v53[4] = sub_213D1F608;
    v53[5] = v49;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_213D1F584;
    *(v54 + 24) = v293;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v289 = sub_213D6FE48(0, v289[2] + 1, 1, v289);
    }

    v56 = v289[2];
    v55 = v289[3];
    if (v56 >= v55 >> 1)
    {
      v289 = sub_213D6FE48((v55 > 1), v56 + 1, 1, v289);
    }

    v289[2] = v56 + 1;
    v57 = &v289[2 * v56];
    v57[4] = sub_213D1F608;
    v57[5] = v54;
    v58 = sub_213D1F584;
    v59 = sub_213D1F610;
LABEL_61:
    v89 = sub_213CE2354(v23);
    v284 = v58;
    v286 = v59;
    if (v90)
    {
      v91 = v89;
      v92 = swift_isUniquelyReferenced_nonNull_native();
      *&v309 = v50;
      if (!v92)
      {
        sub_213D1C2B8();
        v50 = v309;
      }

      v93 = *(v50 + 56) + 120 * v91;
      v95 = *(v93 + 32);
      v94 = *(v93 + 48);
      v96 = *(v93 + 16);
      *v317 = *v93;
      *&v317[16] = v96;
      *&v317[32] = v95;
      *&v317[48] = v94;
      v97 = *(v93 + 64);
      v98 = *(v93 + 80);
      v99 = *(v93 + 96);
      *&v317[112] = *(v93 + 112);
      *&v317[80] = v98;
      *&v317[96] = v99;
      *&v317[64] = v97;
      sub_213D1E4C4(v317);
      v299 = v50;
      sub_213D1B378(v91, v50);
    }

    *&v309 = v24;
    v100 = v24;
    sub_213D1E518(&v329, v317);
    v101 = v23;
    v102 = swift_modifyAtReferenceWritableKeyPath();
    v104 = v103;
    v105 = *(v103 + 16);
    v106 = swift_isUniquelyReferenced_nonNull_native();
    *&v318[0] = *(v104 + 16);
    v107 = *&v318[0];
    *(v104 + 16) = 0x8000000000000000;
    v108 = sub_213CE2354(v101);
    v110 = *(v107 + 16);
    v111 = (v109 & 1) == 0;
    v112 = __OFADD__(v110, v111);
    v113 = v110 + v111;
    if (v112)
    {
      break;
    }

    v114 = v109;
    if (*(v107 + 24) >= v113)
    {
      if ((v106 & 1) == 0)
      {
        v127 = v108;
        sub_213D1C2B8();
        v108 = v127;
      }
    }

    else
    {
      sub_213D19B34(v113, v106);
      v108 = sub_213CE2354(v101);
      if ((v114 & 1) != (v115 & 1))
      {
        goto LABEL_161;
      }
    }

    v116 = *&v318[0];
    if (v114)
    {
      sub_213D1E644(&v329, *(*&v318[0] + 56) + 120 * v108);
    }

    else
    {
      *(*&v318[0] + 8 * (v108 >> 6) + 64) |= 1 << v108;
      *(v116[6] + 8 * v108) = v101;
      v117 = v116[7] + 120 * v108;
      v118 = v329;
      v119 = v330;
      v120 = *&v331[16];
      *(v117 + 32) = *v331;
      *(v117 + 48) = v120;
      *v117 = v118;
      *(v117 + 16) = v119;
      v121 = *&v331[32];
      v122 = v332;
      v123 = v333;
      *(v117 + 112) = v334;
      *(v117 + 80) = v122;
      *(v117 + 96) = v123;
      *(v117 + 64) = v121;
      v124 = v116[2];
      v112 = __OFADD__(v124, 1);
      v125 = v124 + 1;
      if (v112)
      {
        goto LABEL_160;
      }

      v116[2] = v125;
    }

    v126 = *(v104 + 16);
    *(v104 + 16) = v116;

    v102(v317, 0);
    sub_213D1E4C4(aBlock);
    sub_213CCE520(v284);
    sub_213CCE520(v286);

    sub_213D1E4C4(&v329);
    v9 = v299;
    v12 = v22;
LABEL_42:
    v13 = (v13 + 120);
    if (!--v10)
    {
      goto LABEL_79;
    }
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  sub_213CE2B34(0, &qword_27C8EB1C0, 0x277CD4F18);
  sub_213D91F8C();
  __break(1u);
LABEL_162:
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D0D144(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = swift_readAtKeyPath();
  v259 = *(v8 + 16);

  v7(aBlock, 0);
  v261 = v6;

  v9 = *(a2 + 16);
  if (!v9)
  {
    v10 = MEMORY[0x277D84F90];
    v243 = MEMORY[0x277D84F90];
    v244 = MEMORY[0x277D84F90];
LABEL_70:
    if (a4)
    {
      v109 = objc_opt_self();
      v110 = swift_allocObject();
      *(v110 + 16) = v243;
      *&aBlock[32] = sub_213D1F590;
      *&aBlock[40] = v110;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213CFF278;
      *&aBlock[24] = &block_descriptor_367;
      v111 = _Block_copy(aBlock);

      v112 = swift_allocObject();
      *(v112 + 16) = v244;
      *&aBlock[32] = sub_213D1F60C;
      *&aBlock[40] = v112;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_213D183BC;
      *&aBlock[24] = &block_descriptor_374;
      v113 = _Block_copy(aBlock);

      [v109 animateWithDuration:v111 animations:v113 completion:0.25];
      _Block_release(v113);
      _Block_release(v111);
    }

    v114 = v259;
    v115 = v259 + 8;
    v116 = 1 << *(v259 + 32);
    v117 = -1;
    if (v116 < 64)
    {
      v117 = ~(-1 << v116);
    }

    v118 = v117 & v259[8];
    v119 = (v116 + 63) >> 6;

    v120 = 0;
    v258 = v10;
    v245 = v119;
    while (v118)
    {
LABEL_82:
      v128 = __clz(__rbit64(v118)) | (v120 << 6);
      v129 = *(v114[6] + 8 * v128);
      v130 = (v114[7] + 96 * v128);
      v131 = v130[1];
      *aBlock = *v130;
      *&aBlock[16] = v131;
      v132 = v130[4];
      v133 = v130[5];
      v134 = v130[3];
      *&aBlock[32] = v130[2];
      *&aBlock[48] = v134;
      *&aBlock[64] = v132;
      *&aBlock[80] = v133;
      v253 = *&aBlock[16];
      v255 = *aBlock;
      v249 = v133;
      v252 = v134;
      v246 = v132;
      v247 = *&aBlock[32];
      v135 = v129;
      sub_213D1E6AC(aBlock, &v269);
      if (!v135)
      {
LABEL_90:

        *aBlock = MEMORY[0x277D84F90];
        v159 = 1 << *(v114 + 32);
        v160 = -1;
        if (v159 < 64)
        {
          v160 = ~(-1 << v159);
        }

        v161 = v160 & v114[8];
        v162 = (v159 + 63) >> 6;

        v163 = 0;
        while (v161)
        {
LABEL_98:
          v165 = __clz(__rbit64(v161));
          v161 &= v161 - 1;
          v166 = *(v114[6] + ((v163 << 9) | (8 * v165)));
          type metadata accessor for MapBridgingUserAnnotation();
          if (!swift_dynamicCastClass())
          {
            v167 = v166;
            sub_213D91DEC();
            v168 = *(*aBlock + 16);
            sub_213D91E2C();
            sub_213D91E3C();
            sub_213D91DFC();
            v114 = v259;
          }
        }

        while (1)
        {
          v164 = v163 + 1;
          if (__OFADD__(v163, 1))
          {
            __break(1u);
            goto LABEL_137;
          }

          if (v164 >= v162)
          {
            break;
          }

          v161 = v115[v164];
          ++v163;
          if (v161)
          {
            v163 = v164;
            goto LABEL_98;
          }
        }

        v169 = *aBlock;
        if ((*aBlock & 0x8000000000000000) == 0 && (*aBlock & 0x4000000000000000) == 0)
        {

          sub_213D91F6C();
          sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
          v170 = v169;
          goto LABEL_103;
        }

        goto LABEL_142;
      }

      *aBlock = v255;
      *&aBlock[16] = v253;
      *&aBlock[32] = v247;
      *&aBlock[48] = v252;
      *&aBlock[64] = v246;
      *&aBlock[80] = v249;
      v266[0] = v261;
      v136 = v261;

      v137 = swift_modifyAtReferenceWritableKeyPath();
      v139 = v138;
      v140 = *(v138 + 24);
      v141 = sub_213CE22A8(v255);
      LOBYTE(v140) = v142;

      if (v140)
      {
        v143 = *(v139 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v145 = *(v139 + 24);
        *&v265[0] = v145;
        *(v139 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB1F8, &qword_213D97250);
          v145 = *&v265[0];
        }

        v146 = *(*(v145 + 48) + 8 * v141);

        sub_213D1B868(v141, v145);
        v147 = *(v139 + 24);
        *(v139 + 24) = v145;
      }

      v137(&v269, 0);

      *&v265[0] = v136;
      v148 = v136;
      v149 = swift_modifyAtReferenceWritableKeyPath();
      v151 = v150;
      v152 = *(v150 + 16);
      v153 = sub_213CE23A4(v135);
      if (v154)
      {
        v155 = v153;
        v156 = *(v151 + 16);
        v157 = swift_isUniquelyReferenced_nonNull_native();
        v158 = *(v151 + 16);
        v262[0] = v158;
        *(v151 + 16) = 0x8000000000000000;
        if (!v157)
        {
          sub_213D1C5E4();
          v158 = v262[0];
        }

        v121 = (*(v158 + 56) + 96 * v155);
        v122 = v121[1];
        v269 = *v121;
        v270 = v122;
        v123 = v121[5];
        v125 = v121[2];
        v124 = v121[3];
        v273 = v121[4];
        v274 = v123;
        v271 = v125;
        v272 = v124;
        sub_213D1E764(&v269);
        sub_213D1B508(v155, v158);
        v126 = *(v151 + 16);
        *(v151 + 16) = v158;
      }

      v118 &= v118 - 1;
      v149(v266, 0);

      sub_213D1E764(aBlock);
      v10 = v258;
      v114 = v259;
      v119 = v245;
    }

    while (1)
    {
      v127 = v120 + 1;
      if (__OFADD__(v120, 1))
      {
        break;
      }

      if (v127 >= v119)
      {
        goto LABEL_90;
      }

      v118 = v115[v127];
      ++v120;
      if (v118)
      {
        v120 = v127;
        goto LABEL_82;
      }
    }

LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);

    v170 = sub_213D91EAC();

LABEL_103:

    *aBlock = a1;
    v171 = sub_213D17C74(v170, &protocolRef_MKOverlay);
    if (v171)
    {
      v172 = v171;

      v173 = off_28263B068;
      v174 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
      v173(v172, v174, &off_28263B040);
    }

    else
    {
      v175 = sub_213D17C74(v170, &protocolRef_MKAnnotation);

      if (!v175)
      {
LABEL_108:
        v178 = v10[2];
        if (!v178)
        {
          return v10;
        }

        v179 = 0;
        v256 = v178 - 1;
        v180 = 32;
        while (1)
        {
          v260 = v180;
          v181 = *(v10 + v180 + 32);
          v182 = *(v10 + v180);
          *&aBlock[16] = *(v10 + v180 + 16);
          *&aBlock[32] = v181;
          *aBlock = v182;
          v183 = *(v10 + v180 + 48);
          v184 = *(v10 + v180 + 64);
          v185 = *(v10 + v180 + 80);
          *&aBlock[96] = *(v10 + v180 + 96);
          *&aBlock[64] = v184;
          *&aBlock[80] = v185;
          *&aBlock[48] = v183;
          v187 = *&aBlock[8];
          v186 = *aBlock;
          v266[0] = v261;
          v10 = v261;
          sub_213CE2C28(aBlock, &v269, &qword_27C8ECC90, &qword_213D97240);

          v188 = v186;
          v189 = swift_modifyAtReferenceWritableKeyPath();
          v191 = v190;
          v192 = *(v190 + 24);
          v193 = swift_isUniquelyReferenced_nonNull_native();
          *&v265[0] = *(v191 + 24);
          v194 = *&v265[0];
          *(v191 + 24) = 0x8000000000000000;
          v196 = sub_213CE22A8(v187);
          v197 = *(v194 + 16);
          v198 = (v195 & 1) == 0;
          v199 = v197 + v198;
          if (__OFADD__(v197, v198))
          {
            goto LABEL_138;
          }

          v200 = v195;
          if (*(v194 + 24) >= v199)
          {
            if (v193)
            {
              v203 = *&v265[0];
              if (v195)
              {
                goto LABEL_118;
              }
            }

            else
            {
              sub_213D1CE38(&qword_27C8EB1F8, &qword_213D97250);
              v203 = *&v265[0];
              if (v200)
              {
                goto LABEL_118;
              }
            }
          }

          else
          {
            sub_213D1AEB0(v199, v193, &qword_27C8EB1F8, &qword_213D97250);
            v201 = sub_213CE22A8(v187);
            if ((v200 & 1) != (v202 & 1))
            {
              goto LABEL_146;
            }

            v196 = v201;
            v203 = *&v265[0];
            if (v200)
            {
LABEL_118:
              v206 = v203[7];
              v207 = *(v206 + 8 * v196);
              *(v206 + 8 * v196) = v188;

              goto LABEL_119;
            }
          }

          v203[(v196 >> 6) + 8] |= 1 << v196;
          *(v203[6] + 8 * v196) = v187;
          *(v203[7] + 8 * v196) = v188;
          v204 = v203[2];
          v95 = __OFADD__(v204, 1);
          v205 = v204 + 1;
          if (v95)
          {
            goto LABEL_140;
          }

          v203[2] = v205;
LABEL_119:
          *(v191 + 24) = v203;
          v189(&v269, 0);

          *&v265[0] = v10;
          v208 = v10;
          v10 = v188;
          v209 = swift_modifyAtReferenceWritableKeyPath();
          v211 = v210;
          v212 = *(v210 + 16);
          v213 = swift_isUniquelyReferenced_nonNull_native();
          v262[0] = *(v211 + 16);
          v214 = v262[0];
          *(v211 + 16) = 0x8000000000000000;
          v215 = sub_213CE23A4(v10);
          v217 = *(v214 + 16);
          v218 = (v216 & 1) == 0;
          v95 = __OFADD__(v217, v218);
          v219 = v217 + v218;
          if (v95)
          {
            goto LABEL_139;
          }

          v220 = v216;
          if (*(v214 + 24) < v219)
          {
            sub_213D1A16C(v219, v213);
            v215 = sub_213CE23A4(v10);
            if ((v220 & 1) != (v221 & 1))
            {
              goto LABEL_145;
            }

LABEL_124:
            if ((v220 & 1) == 0)
            {
              goto LABEL_129;
            }

            goto LABEL_125;
          }

          if (v213)
          {
            goto LABEL_124;
          }

          v232 = v215;
          sub_213D1C5E4();
          v215 = v232;
          if ((v220 & 1) == 0)
          {
LABEL_129:
            v222 = v262[0];
            *(v262[0] + 8 * (v215 >> 6) + 64) |= 1 << v215;
            *(v222[6] + 8 * v215) = v10;
            v233 = (v222[7] + 96 * v215);
            v234 = *&aBlock[24];
            *v233 = *&aBlock[8];
            v233[1] = v234;
            v235 = *&aBlock[40];
            v236 = *&aBlock[56];
            v237 = *&aBlock[88];
            v233[4] = *&aBlock[72];
            v233[5] = v237;
            v233[2] = v235;
            v233[3] = v236;
            v238 = v222[2];
            v95 = __OFADD__(v238, 1);
            v239 = v238 + 1;
            if (v95)
            {
              goto LABEL_141;
            }

            v222[2] = v239;
            goto LABEL_131;
          }

LABEL_125:
          v222 = v262[0];
          v223 = (*(v262[0] + 56) + 96 * v215);
          v224 = v223[1];
          v269 = *v223;
          v270 = v224;
          v225 = v223[2];
          v226 = v223[3];
          v227 = v223[5];
          v273 = v223[4];
          v274 = v227;
          v271 = v225;
          v272 = v226;
          v228 = *&aBlock[56];
          v229 = *&aBlock[88];
          v230 = *&aBlock[40];
          v223[4] = *&aBlock[72];
          v223[5] = v229;
          v223[2] = v230;
          v223[3] = v228;
          v231 = *&aBlock[24];
          *v223 = *&aBlock[8];
          v223[1] = v231;
          sub_213D1E764(&v269);

LABEL_131:
          v240 = *(v211 + 16);
          *(v211 + 16) = v222;

          v209(v266, 0);

          if (v256 == v179)
          {
            goto LABEL_134;
          }

          ++v179;
          v10 = v258;
          v180 = v260 + 104;
          if (v179 >= v258[2])
          {
            __break(1u);
LABEL_134:
            v10 = v258;

            return v10;
          }
        }
      }

      v176 = off_28263B050;
      v177 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
      v176(v175, v177, &off_28263B040);
    }

    goto LABEL_108;
  }

  v10 = MEMORY[0x277D84F90];
  v11 = a2 + 40;
  v243 = MEMORY[0x277D84F90];
  v244 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = *(v11 + 40);
    v278 = *(v11 + 24);
    v279 = v12;
    v13 = *(v11 + 72);
    v280 = *(v11 + 56);
    v281 = v13;
    v14 = *(v11 + 8);
    v276 = *(v11 - 8);
    v277 = v14;
    v282 = *v11;
    v283 = *(v11 + 8);
    v266[0] = v261;
    v15 = v261;
    sub_213D1E6AC(&v276, aBlock);
    swift_getAtKeyPath();

    v16 = *(&v270 + 1);
    if (!*(*(&v270 + 1) + 16) || (v17 = sub_213CE22A8(v276), (v18 & 1) == 0))
    {

      goto LABEL_32;
    }

    v19 = *(*(v16 + 56) + 8 * v17);

    v268 = v15;
    v20 = v15;
    swift_getAtKeyPath();

    v21 = v267;
    if (!*(v267 + 16) || (v22 = sub_213CE23A4(v19), (v23 & 1) == 0))
    {

LABEL_24:

      goto LABEL_32;
    }

    v257 = v10;
    v24 = (*(v21 + 56) + 96 * v22);
    v25 = v24[1];
    *aBlock = *v24;
    *&aBlock[16] = v25;
    v26 = v24[5];
    v28 = v24[2];
    v27 = v24[3];
    *&aBlock[64] = v24[4];
    *&aBlock[80] = v26;
    *&aBlock[32] = v28;
    *&aBlock[48] = v27;
    sub_213D1E6AC(aBlock, &v269);

    v29 = v282;
    v30 = v283;
    v31 = *&aBlock[8];
    v32 = *&aBlock[16];
    if (v283 < 0)
    {
      if (*&aBlock[16] < 0)
      {
        sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
        sub_213D1E7B8(v31, v32);
        sub_213D1E708(&v282, &v269);
        sub_213D1E7B8(v31, v32);
        sub_213D1E708(&v282, &v269);
        v52 = sub_213D91C5C();
        sub_213D1E6A0(v31, v32);
        sub_213D1E7C4(&v282);
        sub_213D1E6A0(v29, v30);
        sub_213D1E6A0(v31, v32);
        if (v52)
        {
          goto LABEL_11;
        }

LABEL_31:

        sub_213D1E764(aBlock);
        v10 = v257;
      }

      else
      {
        sub_213D1E7B8(*&aBlock[8], *&aBlock[16]);
LABEL_27:
        sub_213D1E708(&v282, &v269);
        sub_213D1E7B8(v31, v32);
        sub_213D1E708(&v282, &v269);

        sub_213D1E764(aBlock);
        sub_213D1E6A0(v31, v32);
        sub_213D1E7C4(&v282);
        sub_213D1E6A0(v29, v30);
        sub_213D1E6A0(v31, v32);
LABEL_29:
        v10 = v257;
      }

LABEL_32:
      v53 = v282;
      if (SHIBYTE(v283) < 0)
      {
        sub_213D1E708(&v282, aBlock);
LABEL_40:
        *&aBlock[32] = v278;
        *&aBlock[48] = v279;
        *&aBlock[64] = v280;
        *&aBlock[80] = v281;
        *aBlock = v276;
        *&aBlock[16] = v277;
        sub_213D1E6AC(&v276, &v269);
        v58 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_213D706B8(0, v10[2] + 1, 1, v10);
        }

        v60 = v10[2];
        v59 = v10[3];
        if (v60 >= v59 >> 1)
        {
          v10 = sub_213D706B8((v59 > 1), v60 + 1, 1, v10);
        }

        sub_213D1E764(&v276);
        v10[2] = v60 + 1;
        v61 = &v10[13 * v60];
        v61[4] = v58;
        v62 = *&aBlock[32];
        v63 = *&aBlock[48];
        v64 = *&aBlock[64];
        *(v61 + 15) = *&aBlock[80];
        *(v61 + 13) = v64;
        *(v61 + 11) = v63;
        *(v61 + 9) = v62;
        v65 = *aBlock;
        *(v61 + 7) = *&aBlock[16];
        *(v61 + 5) = v65;
        goto LABEL_45;
      }

      v54 = v283;
      if ((v283 & 0x100) != 0)
      {
        sub_213CE2B34(0, &qword_27C8EB1F0, 0x277CD4DF0);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v56 = v53[2];
        if (v54)
        {
LABEL_35:
          v57 = [ObjCClassFromMetadata polylineWithCoordinates:v53 + 4 count:v56];
LABEL_39:
          v53 = v57;
          goto LABEL_40;
        }
      }

      else
      {
        ObjCClassFromMetadata = objc_opt_self();
        v56 = v53[2];
        if (v54)
        {
          goto LABEL_35;
        }
      }

      v57 = [ObjCClassFromMetadata polylineWithPoints:v53 + 4 count:v56];
      goto LABEL_39;
    }

    sub_213D1E7B8(*&aBlock[8], *&aBlock[16]);
    if (v32 < 0)
    {
      goto LABEL_27;
    }

    sub_213D1E708(&v282, &v269);
    sub_213D1E7B8(v31, v32);
    sub_213D1E708(&v282, &v269);
    v33 = sub_213D6798C(v29, v30 & 1, v31, v32 & 1);
    sub_213D1E6A0(v31, v32);
    sub_213D1E7C4(&v282);
    sub_213D1E6A0(v29, v30);
    sub_213D1E6A0(v31, v32);
    if (!v33)
    {

      sub_213D1E764(aBlock);
      goto LABEL_29;
    }

    if (((v32 ^ v30) & 0x100) != 0)
    {
      goto LABEL_31;
    }

LABEL_11:
    v10 = v257;
    if (*(&v281 + 1) != *&aBlock[88])
    {
      sub_213D1E764(aBlock);
      goto LABEL_24;
    }

    v266[3] = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
    v266[4] = &off_28263B040;
    v266[0] = a1;
    sub_213D1E22C(v266, v265);
    sub_213D1E22C(v265, v262);
    v34 = swift_allocObject();
    sub_213D1E2DC(v265, v34 + 16);
    *(v34 + 56) = v19;
    v35 = v279;
    *(v34 + 96) = v278;
    *(v34 + 112) = v35;
    v36 = v281;
    *(v34 + 128) = v280;
    *(v34 + 144) = v36;
    v37 = v277;
    *(v34 + 64) = v276;
    *(v34 + 80) = v37;
    if (a4)
    {
      sub_213D1E6AC(&v276, &v269);
      v38 = v19;
      v39 = a1;

      __swift_destroy_boxed_opaque_existential_1(v262);
      v40 = swift_allocObject();
      v40[2] = sub_213D1F510;
      v40[3] = v34;
      v40[4] = a4;
      v41 = swift_allocObject();
      *(v41 + 16) = sub_213D1F510;
      *(v41 + 24) = v34;

      __swift_destroy_boxed_opaque_existential_1(v266);
      v42 = swift_allocObject();
      *(v42 + 16) = sub_213D1F610;
      *(v42 + 24) = v40;
      swift_retain_n();
      v43 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v243 = sub_213D6FE48(0, v243[2] + 1, 1, v243);
      }

      v45 = v243[2];
      v44 = v243[3];
      if (v45 >= v44 >> 1)
      {
        v243 = sub_213D6FE48((v44 > 1), v45 + 1, 1, v243);
      }

      v243[2] = v45 + 1;
      v46 = &v243[2 * v45];
      v46[4] = sub_213D1F608;
      v46[5] = v42;
      v47 = swift_allocObject();
      *(v47 + 16) = sub_213D1F584;
      *(v47 + 24) = v41;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v244 = sub_213D6FE48(0, v244[2] + 1, 1, v244);
      }

      v49 = v244[2];
      v48 = v244[3];
      if (v49 >= v48 >> 1)
      {
        v244 = sub_213D6FE48((v48 > 1), v49 + 1, 1, v244);
      }

      v244[2] = v49 + 1;
      v50 = &v244[2 * v49];
      v50[4] = sub_213D1F608;
      v50[5] = v47;
      v248 = sub_213D1F584;
      v250 = sub_213D1F610;
      v51 = v259;
      v20 = v43;
    }

    else
    {
      v66 = v263;
      v67 = v264;
      __swift_project_boxed_opaque_existential_1(v262, v263);
      v251 = *(v67 + 48);
      sub_213D1E6AC(&v276, &v269);
      v68 = v19;
      v69 = a1;
      v70 = v251(v68, v66, v67);
      if (v70)
      {
        v71 = v70;
        objc_opt_self();
        v72 = swift_dynamicCastObjCClass();
        if (v72)
        {
          v271 = v278;
          v272 = v279;
          v273 = v280;
          v274 = v281;
          v269 = v276;
          v270 = v277;
          v73 = v72;
          sub_213D28034(v72);
          [v73 setNeedsDisplay];
        }

        else
        {
        }
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(v262);
      __swift_destroy_boxed_opaque_existential_1(v266);
      v250 = 0;
      v248 = 0;
      v51 = v259;
    }

    v74 = sub_213CE23A4(v19);
    if (v75)
    {
      v76 = v74;
      v77 = swift_isUniquelyReferenced_nonNull_native();
      v266[0] = v51;
      if (!v77)
      {
        sub_213D1C5E4();
        v51 = v266[0];
      }

      v78 = (v51[7] + 96 * v76);
      v79 = v78[1];
      v269 = *v78;
      v270 = v79;
      v80 = v78[5];
      v82 = v78[2];
      v81 = v78[3];
      v273 = v78[4];
      v274 = v80;
      v271 = v82;
      v272 = v81;
      sub_213D1E764(&v269);
      v259 = v51;
      sub_213D1B508(v76, v51);
    }

    v266[0] = v20;
    v83 = v20;
    sub_213D1E6AC(&v276, &v269);
    v84 = v19;
    v85 = swift_modifyAtReferenceWritableKeyPath();
    v87 = v86;
    v88 = *(v86 + 16);
    v89 = swift_isUniquelyReferenced_nonNull_native();
    *&v265[0] = *(v87 + 16);
    v90 = *&v265[0];
    *(v87 + 16) = 0x8000000000000000;
    v91 = sub_213CE23A4(v84);
    v93 = *(v90 + 16);
    v94 = (v92 & 1) == 0;
    v95 = __OFADD__(v93, v94);
    v96 = v93 + v94;
    if (v95)
    {
      break;
    }

    v97 = v92;
    if (*(v90 + 24) >= v96)
    {
      if ((v89 & 1) == 0)
      {
        v108 = v91;
        sub_213D1C5E4();
        v91 = v108;
      }
    }

    else
    {
      sub_213D1A16C(v96, v89);
      v91 = sub_213CE23A4(v84);
      if ((v97 & 1) != (v98 & 1))
      {
        goto LABEL_145;
      }
    }

    v99 = *&v265[0];
    if (v97)
    {
      sub_213D1E828(&v276, *(*&v265[0] + 56) + 96 * v91);
    }

    else
    {
      *(*&v265[0] + 8 * (v91 >> 6) + 64) |= 1 << v91;
      *(v99[6] + 8 * v91) = v84;
      v100 = (v99[7] + 96 * v91);
      v101 = v277;
      *v100 = v276;
      v100[1] = v101;
      v102 = v278;
      v103 = v279;
      v104 = v281;
      v100[4] = v280;
      v100[5] = v104;
      v100[2] = v102;
      v100[3] = v103;
      v105 = v99[2];
      v95 = __OFADD__(v105, 1);
      v106 = v105 + 1;
      if (v95)
      {
        goto LABEL_144;
      }

      v99[2] = v106;
    }

    v107 = *(v87 + 16);
    *(v87 + 16) = v99;

    v85(&v269, 0);
    sub_213D1E764(aBlock);

    sub_213CCE520(v248);
    sub_213CCE520(v250);

    sub_213D1E764(&v276);
    v10 = v257;
LABEL_45:
    v11 += 96;
    if (!--v9)
    {
      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  sub_213CE2B34(0, &qword_27C8EB6C0, 0x277CD4F28);
  sub_213D91F8C();
  __break(1u);
LABEL_146:
  result = sub_213D91F8C();
  __break(1u);
  return result;
}