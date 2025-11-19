uint64_t View.quickLookPreview<A>(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a5;
  v23 = a6;
  v24 = a3;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v23 - v11;
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for QuickLookPreviewModifier();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v21 = &v23 - v20;
  (*(v13 + 16))(v16, a2, a4);
  sub_23B8202AC(a1, v12, &qword_27E189150, &qword_23B822080);
  sub_23B81B824(v16, v12, a4, v21);
  MEMORY[0x23EEABF20](v21, v24, v17, v25);
  return (*(v18 + 8))(v21, v17);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_23B81B824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for QuickLookPreviewModifier();
  (*(*(a3 - 8) + 32))(a4 + *(v8 + 36), a1, a3);

  return sub_23B81FF40(a2, a4);
}

uint64_t View.quickLookPreview(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v7 = sub_23B8217EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189158, &qword_23B822088);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  MEMORY[0x23EEABF50](v19);
  sub_23B8202AC(v18, v16, &qword_27E189158, &qword_23B822088);
  if ((*(v8 + 48))(v16, 1, v7) == 1)
  {
    v20 = MEMORY[0x277D84F90];
  }

  else
  {
    v22 = *(v8 + 32);
    v21 = v8 + 32;
    v22(v11, v16, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189170, &qword_23B822098);
    v23 = *(v21 + 40);
    v24 = (*(v21 + 48) + 32) & ~*(v21 + 48);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_23B822070;
    v22((v20 + v24), v11, v7);
  }

  sub_23B8206D8(v18, &qword_27E189158, &qword_23B822088);
  v29 = v20;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189160, &qword_23B822090);
  sub_23B81FEF8(&qword_27E189168, &qword_27E189160, &qword_23B822090);
  View.quickLookPreview<A>(_:in:)(a1, &v29, a2, v25, v28, a4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

void sub_23B81BBAC(uint64_t a1)
{
  sub_23B81E348();
  if (v3 <= 0x3F)
  {
    v7 = *(v2 - 8) + 64;
    v4 = *(a1 + 88);
    v5 = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(v5 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_23B81BC88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189158, &qword_23B822088);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23B8202AC(a1, &v6 - v4, &qword_27E189158, &qword_23B822088);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  sub_23B82198C();
  return sub_23B8206D8(a1, &qword_27E189158, &qword_23B822088);
}

uint64_t sub_23B81BD54(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v19 = *(v2 + 16);
  v19(&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23B821A1C();
  v4 = sub_23B821A0C();
  v5 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 2) = v4;
  *(v6 + 3) = v7;
  v8 = *(a1 + 16);
  v17 = *(a1 + 24);
  v9 = v17;
  v18 = v8;
  *(v6 + 4) = v8;
  *(v6 + 5) = v9;
  v10 = *(v2 + 32);
  v10(&v6[v5], &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (v19)(&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20, a1);
  v11 = sub_23B821A0C();
  v12 = swift_allocObject();
  *(v12 + 2) = v11;
  v13 = v17;
  v14 = v18;
  *(v12 + 3) = MEMORY[0x277D85700];
  *(v12 + 4) = v14;
  *(v12 + 5) = v13;
  v10(&v12[v5], &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_23B8219AC();
  return v21;
}

uint64_t sub_23B81BF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  v31 = a5;
  v30 = *(a3 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189158, &qword_23B822088);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v29 = a4;
  v18 = type metadata accessor for QuickLookPreviewModifier();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  MEMORY[0x23EEABF50](v19);
  v20 = sub_23B8217EC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v17, 1, v20) == 1)
  {
    result = sub_23B8206D8(v17, &qword_27E189158, &qword_23B822088);
    v24 = 0;
LABEL_5:
    *v31 = v24 & 1;
    return result;
  }

  sub_23B8206D8(v17, &qword_27E189158, &qword_23B822088);
  v25 = v30;
  (*(v30 + 16))(v10, a2 + *(v18 + 36), a3);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  MEMORY[0x23EEABF50](v26);
  result = (v22)(v15, 1, v20);
  if (result != 1)
  {
    v27 = *(*(*(v29 + 8) + 8) + 8);
    sub_23B820268(&qword_27E1893E8);
    v24 = sub_23B8219FC();
    (*(v25 + 8))(v10, a3);
    result = (*(v21 + 8))(v15, v20);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_23B81C224(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189158, &qword_23B822088);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v8 - v5;
  if ((*a1 & 1) == 0)
  {
    v7 = sub_23B8217EC();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    type metadata accessor for QuickLookPreviewModifier();
    return sub_23B81BC88(v6);
  }

  return result;
}

uint64_t sub_23B81C314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v62 = a1;
  v65 = a3;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189158, &qword_23B822088);
  v5 = *(*(v64 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v64);
  v63 = &v45 - v7;
  v59 = *(a2 - 8);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v6);
  v58 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v9 = sub_23B82183C();
  v10 = *(a2 + 16);
  v55 = *(a2 + 24);
  v56 = v10;
  type metadata accessor for PreviewController();
  v11 = sub_23B82182C();
  WitnessTable = swift_getWitnessTable();
  v73 = MEMORY[0x277CE06C0];
  v61 = MEMORY[0x277CDFAD8];
  v12 = swift_getWitnessTable();
  v13 = MEMORY[0x277CE0F78];
  v68 = v11;
  v69 = MEMORY[0x277CE0F78];
  v14 = MEMORY[0x277CE0F60];
  v70 = v12;
  v71 = MEMORY[0x277CE0F60];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = v9;
  v16 = swift_getWitnessTable();
  v49 = v16;
  v68 = v11;
  v69 = v13;
  v70 = v12;
  v71 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = v9;
  v69 = OpaqueTypeMetadata2;
  v70 = v16;
  v71 = OpaqueTypeConformance2;
  v53 = MEMORY[0x277CDE868];
  v51 = swift_getOpaqueTypeMetadata2();
  v57 = *(v51 - 8);
  v17 = *(v57 + 64);
  MEMORY[0x28223BE20](v51);
  v46 = &v45 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1893D8, &qword_23B8221F8);
  v19 = sub_23B82182C();
  v52 = *(v19 - 8);
  v20 = *(v52 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v50 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v54 = &v45 - v23;
  v45 = v3;
  sub_23B81BD54(a2);
  v24 = v58;
  v25 = v59;
  (*(v59 + 16))(v58, v3, a2);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  v28 = v55;
  *(v27 + 16) = v56;
  *(v27 + 24) = v28;
  (*(v25 + 32))(v27 + v26, v24, a2);
  v29 = swift_checkMetadataState();
  v30 = swift_checkMetadataState();
  v31 = OpaqueTypeConformance2;
  v32 = v49;
  v33 = v46;
  sub_23B82191C();

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  v35 = v63;
  MEMORY[0x23EEABF50](v34);
  v68 = v29;
  v69 = v30;
  v70 = v32;
  v71 = v31;
  v36 = swift_getOpaqueTypeConformance2();
  sub_23B81FE58();
  v37 = v50;
  v38 = v51;
  sub_23B82195C();
  sub_23B8206D8(v35, &qword_27E189158, &qword_23B822088);
  (*(v57 + 8))(v33, v38);
  v39 = sub_23B81FEF8(&qword_27E1893F0, &qword_27E1893D8, &qword_23B8221F8);
  v66 = v36;
  v67 = v39;
  swift_getWitnessTable();
  v40 = v52;
  v41 = *(v52 + 16);
  v42 = v54;
  v41(v54, v37, v19);
  v43 = *(v40 + 8);
  v43(v37, v19);
  v41(v65, v42, v19);
  return (v43)(v42, v19);
}

uint64_t sub_23B81C988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v52 = a3;
  v5 = sub_23B82185C();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = &WitnessTable - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v47 = &WitnessTable - v11;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &WitnessTable - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PreviewController();
  v46 = *(v16 - 8);
  v17 = *(v46 + 64);
  MEMORY[0x28223BE20](v16);
  v45 = &WitnessTable - v18;
  v19 = sub_23B82182C();
  v43 = v19;
  v48 = *(v19 - 8);
  v20 = *(v48 + 64);
  MEMORY[0x28223BE20](v19);
  v44 = &WitnessTable - v21;
  WitnessTable = swift_getWitnessTable();
  v57 = WitnessTable;
  v58 = MEMORY[0x277CE06C0];
  v42 = swift_getWitnessTable();
  v53 = v19;
  v54 = MEMORY[0x277CE0F78];
  v55 = v42;
  v56 = MEMORY[0x277CE0F60];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = *(OpaqueTypeMetadata2 - 8);
  v24 = v23[8];
  v25 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v27 = &WitnessTable - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &WitnessTable - v28;
  v30 = type metadata accessor for QuickLookPreviewModifier();
  v31 = *(v12 + 16);
  v32 = a2;
  v31(v15, a1 + *(v30 + 36), a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  v33 = v47;
  sub_23B82199C();
  v34 = v45;
  sub_23B81CEC0(v15, v33, v32, v45);
  sub_23B8218FC();
  v35 = v44;
  sub_23B82193C();
  (*(v46 + 8))(v34, v16);
  v53 = sub_23B82196C();
  v36 = v49;
  sub_23B82184C();
  v37 = v43;
  sub_23B82192C();
  (*(v50 + 8))(v36, v51);

  (*(v48 + 8))(v35, v37);
  v38 = v23[2];
  v38(v29, v27, OpaqueTypeMetadata2);
  v39 = v23[1];
  v39(v27, OpaqueTypeMetadata2);
  v38(v52, v29, OpaqueTypeMetadata2);
  return (v39)(v29, OpaqueTypeMetadata2);
}

uint64_t sub_23B81CEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = a4 + *(type metadata accessor for PreviewController() + 36);

  return sub_23B81FF40(a2, v6);
}

uint64_t sub_23B81CF78(uint64_t a1)
{
  v1 = *(a1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  return sub_23B82199C();
}

id sub_23B81CFC8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = *(a1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  sub_23B82199C();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  return sub_23B8204A8(v6, v1);
}

uint64_t sub_23B81D088(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v14 - v9;
  swift_getWitnessTable();
  sub_23B8218EC();
  sub_23B8218DC();
  v11 = v14[1];
  v12 = *(a3 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  sub_23B82199C();
  sub_23B81D6E4(a1, v10, v4);

  return sub_23B8206D8(v10, &qword_27E189150, &qword_23B822080);
}

uint64_t sub_23B81D1A4(uint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23B81D1D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  v5 = *((*MEMORY[0x277D85000] & *v0) + 0x78);
  swift_beginAccess();
  sub_23B8202AC(v0 + v5, v4, &qword_27E189150, &qword_23B822080);
  MEMORY[0x23EEABF50](v1);
  return sub_23B8206D8(v4, &qword_27E189150, &qword_23B822080);
}

uint64_t sub_23B81D2DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189158, &qword_23B822088);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  sub_23B8202AC(v1 + v11, v10, &qword_27E189150, &qword_23B822080);
  sub_23B8202AC(a1, v6, &qword_27E189158, &qword_23B822088);
  sub_23B82198C();
  sub_23B8206D8(a1, &qword_27E189158, &qword_23B822088);
  return sub_23B8206D8(v10, &qword_27E189150, &qword_23B822080);
}

uint64_t sub_23B81D464@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x80);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x58) - 8) + 16))(a1, &v1[v5]);
}

uint64_t sub_23B81D518(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x80);
  swift_beginAccess();
  (*(*(*((v4 & v3) + 0x58) - 8) + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t sub_23B81D5D4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_23B82075C(v5);

  return v6;
}

id sub_23B81D620(void *a1, uint64_t a2, void *a3, void (*a4)(char *, uint64_t))
{
  v6 = a3;
  v7 = a1;
  v8 = sub_23B820868(a4);

  return v8;
}

void sub_23B81D684(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_23B820CAC();
}

uint64_t sub_23B81D6E4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v85 = a3;
  v81 = a1;
  v6 = *v3;
  v7 = MEMORY[0x277D85000];
  v8 = *MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & v6) + 0x58);
  v83 = *(v9 - 8);
  v10 = *(v83 + 64);
  MEMORY[0x28223BE20](a1);
  v82 = &v66 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E189408, qword_23B822208);
  v12 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v79 = &v66 - v13;
  v70 = *((v8 & v6) + 0x68);
  v78 = *(*(v70 + 8) + 8);
  v84 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = sub_23B821A8C();
  v68 = *(v69 - 8);
  v15 = *(v68 + 64);
  v16 = MEMORY[0x28223BE20](v69);
  v72 = &v66 - v17;
  v75 = AssociatedTypeWitness;
  v74 = *(AssociatedTypeWitness - 8);
  v18 = *(v74 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v67 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v73 = &v66 - v21;
  v22 = sub_23B8217EC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v71 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v66 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189158, &qword_23B822088);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v76 = &v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v66 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v66 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v66 - v39;
  sub_23B81D1D4();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  v87 = v38;
  MEMORY[0x23EEABF50](v41);
  v42 = *((*v7 & *v4) + 0x78);
  swift_beginAccess();
  sub_23B820668(a2, v4 + v42);
  swift_endAccess();
  v43 = *(v23 + 48);
  v86 = v40;
  if (v43(v40, 1, v22) == 1 && v43(v87, 1, v22) == 1)
  {
    goto LABEL_17;
  }

  sub_23B8202AC(v87, v35, &qword_27E189158, &qword_23B822088);
  v44 = v43(v35, 1, v22);
  v77 = v23;
  if (v44 == 1)
  {
    sub_23B8206D8(v35, &qword_27E189158, &qword_23B822088);
  }

  else
  {
    (*(v23 + 32))(v28, v35, v22);
    sub_23B820268(&qword_27E1893E8);
    v45 = v72;
    v66 = v28;
    sub_23B821A6C();
    v47 = v74;
    v46 = v75;
    if ((*(v74 + 48))(v45, 1, v75) == 1)
    {
      (*(v77 + 8))(v66, v22);
      (*(v68 + 8))(v45, v69);
    }

    else
    {
      (*(v47 + 32))(v73, v45, v46);
      v48 = v67;
      sub_23B821A4C();
      v49 = v73;
      v50 = sub_23B821A3C();
      v51 = *(v47 + 8);
      v51(v48, v46);
      [v81 setCurrentPreviewItemIndex_];
      v51(v49, v46);
      (*(v77 + 8))(v66, v22);
    }
  }

  v52 = v79;
  v53 = *(v80 + 48);
  sub_23B8202AC(v86, v79, &qword_27E189158, &qword_23B822088);
  sub_23B8202AC(v87, v52 + v53, &qword_27E189158, &qword_23B822088);
  if (v43(v52, 1, v22) == 1)
  {
    if (v43((v52 + v53), 1, v22) == 1)
    {
      sub_23B8206D8(v52, &qword_27E189158, &qword_23B822088);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v54 = v76;
  sub_23B8202AC(v52, v76, &qword_27E189158, &qword_23B822088);
  if (v43((v52 + v53), 1, v22) == 1)
  {
    (*(v77 + 8))(v54, v22);
LABEL_13:
    sub_23B8206D8(v52, qword_27E189408, qword_23B822208);
LABEL_16:
    v64 = v82;
    (*(v83 + 16))(v82, v85, v84);
    sub_23B81D518(v64);
    [v81 reloadData];
    goto LABEL_17;
  }

  v55 = v77;
  v56 = v52 + v53;
  v57 = v71;
  (*(v77 + 32))(v71, v56, v22);
  sub_23B820268(&qword_27E1893E8);
  v58 = v54;
  v59 = sub_23B8219DC();
  v60 = *(v55 + 8);
  v60(v57, v22);
  v60(v58, v22);
  sub_23B8206D8(v52, &qword_27E189158, &qword_23B822088);
  if ((v59 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v61 = v82;
  sub_23B81D464(v82);
  v62 = *(v78 + 8);
  sub_23B820268(&qword_27E1893E8);
  v63 = v84;
  LOBYTE(v62) = sub_23B8219EC();
  (*(v83 + 8))(v61, v63);
  if ((v62 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_17:
  sub_23B8206D8(v86, &qword_27E189158, &qword_23B822088);
  return sub_23B8206D8(v87, &qword_27E189158, &qword_23B822088);
}

void sub_23B81E030()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = sub_23B8217AC();

  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
}

void sub_23B81E0DC()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x70));
  if (v1)
  {
    v2 = v1;
    sub_23B82179C();
  }
}

void sub_23B81E160(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x68);
  sub_23B820D60();
}

id sub_23B81E1C8()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PreviewController.PreviewCoordinator();
  return objc_msgSendSuper2(&v4, sel_dealloc, v2, v3);
}

uint64_t sub_23B81E240(uint64_t *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *a1;
  v4 = *MEMORY[0x277D85000];

  sub_23B8206D8(a1 + *((*v2 & *a1) + 0x78), &qword_27E189150, &qword_23B822080);
  v5 = *(*(*((v4 & v3) + 0x58) - 8) + 8);
  v6 = a1 + *((*v2 & *a1) + 0x80);

  return v5(v6);
}

void sub_23B81E348()
{
  if (!qword_27E1892B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E189158, &qword_23B822088);
    v0 = sub_23B8219BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1892B8);
    }
  }
}

id sub_23B81E3AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return sub_23B820500();
}

id sub_23B81E3C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_23B81CFC8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_23B81E42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_23B81E4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_23B81E540()
{
  swift_getWitnessTable();
  sub_23B8218BC();
  __break(1u);
}

id sub_23B81E580()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_23B8217EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_didStartAccessingSecurityScopeResource] == 1)
  {
    (*(v4 + 16))(v7, &v1[OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_url], v3);
    sub_23B8217CC();
    (*(v4 + 8))(v7, v3);
  }

  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

uint64_t type metadata accessor for QLPreviewItemContainer()
{
  result = qword_27E189338;
  if (!qword_27E189338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B81E9E4(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_23B8217EC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E189408, qword_23B822208);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189158, &qword_23B822088);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v47 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  sub_23B8202AC(a1, v49, &qword_27E189400, &qword_23B822200);
  if (!v50)
  {
    v36 = &qword_27E189400;
    v37 = &qword_23B822200;
    v38 = v49;
LABEL_14:
    sub_23B8206D8(v38, v36, v37);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v35 = 0;
    return v35 & 1;
  }

  v43 = v8;
  v45 = v12;
  v22 = v48;
  v23 = OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_didStartAccessingSecurityScopeResource;
  v24 = *(v2 + OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_didStartAccessingSecurityScopeResource);
  v46 = v48;
  if ((v24 & 1) == 0)
  {
    v25 = sub_23B8217DC();
    v22 = v46;
    *(v2 + v23) = v25 & 1;
  }

  v26 = v5[2];
  v26(v21, v2 + OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_url, v4);
  v44 = v5;
  v27 = v5[7];
  v27(v21, 0, 1, v4);
  v28 = OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_didStartAccessingSecurityScopeResource;
  if ((v22[OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_didStartAccessingSecurityScopeResource] & 1) == 0)
  {
    v29 = sub_23B8217DC();
    v22 = v46;
    v46[v28] = v29 & 1;
  }

  v26(v19, &v22[OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_url], v4);
  v27(v19, 0, 1, v4);
  v30 = *(v9 + 48);
  v31 = v22;
  v32 = v45;
  sub_23B8202AC(v21, v45, &qword_27E189158, &qword_23B822088);
  sub_23B8202AC(v19, v32 + v30, &qword_27E189158, &qword_23B822088);
  v33 = v44;
  v34 = v44[6];
  if (v34(v32, 1, v4) != 1)
  {
    v39 = v47;
    sub_23B8202AC(v32, v47, &qword_27E189158, &qword_23B822088);
    if (v34(v32 + v30, 1, v4) != 1)
    {
      v41 = v43;
      (v33[4])(v43, v32 + v30, v4);
      sub_23B820268(&qword_27E1893E8);
      v35 = sub_23B8219DC();

      v42 = v33[1];
      v42(v41, v4);
      sub_23B8206D8(v19, &qword_27E189158, &qword_23B822088);
      sub_23B8206D8(v21, &qword_27E189158, &qword_23B822088);
      v42(v39, v4);
      sub_23B8206D8(v32, &qword_27E189158, &qword_23B822088);
      return v35 & 1;
    }

    sub_23B8206D8(v19, &qword_27E189158, &qword_23B822088);
    sub_23B8206D8(v21, &qword_27E189158, &qword_23B822088);
    (v33[1])(v39, v4);
    goto LABEL_13;
  }

  sub_23B8206D8(v19, &qword_27E189158, &qword_23B822088);
  sub_23B8206D8(v21, &qword_27E189158, &qword_23B822088);
  if (v34(v32 + v30, 1, v4) != 1)
  {
LABEL_13:
    v36 = qword_27E189408;
    v37 = qword_23B822208;
    v38 = v32;
    goto LABEL_14;
  }

  sub_23B8206D8(v32, &qword_27E189158, &qword_23B822088);
  v35 = 1;
  return v35 & 1;
}

uint64_t sub_23B81F020()
{
  v1 = sub_23B8217EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189158, &qword_23B822088);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  sub_23B821ACC();
  v13 = OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_didStartAccessingSecurityScopeResource;
  if ((*(v0 + OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_didStartAccessingSecurityScopeResource) & 1) == 0)
  {
    *(v0 + v13) = sub_23B8217DC() & 1;
  }

  (*(v2 + 16))(v12, v0 + OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_url, v1);
  (*(v2 + 56))(v12, 0, 1, v1);
  sub_23B8202AC(v12, v10, &qword_27E189158, &qword_23B822088);
  if ((*(v2 + 48))(v10, 1, v1) == 1)
  {
    sub_23B821AAC();
  }

  else
  {
    (*(v2 + 32))(v5, v10, v1);
    sub_23B821AAC();
    sub_23B820268(&qword_27E1893F8);
    sub_23B8219CC();
    (*(v2 + 8))(v5, v1);
  }

  sub_23B8206D8(v12, &qword_27E189158, &qword_23B822088);
  return sub_23B821ABC();
}

uint64_t sub_23B81F2E4()
{
  result = sub_23B8217EC();
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

uint64_t sub_23B81F37C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  type metadata accessor for QuickLookPreviewModifier();
  sub_23B82182C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23B81F410(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E189348, &unk_23B822150);
  sub_23B82182C();
  sub_23B81FEF8(qword_27E189350, &qword_27E189348, &unk_23B822150);
  return swift_getWitnessTable();
}

void sub_23B81F4C4(uint64_t a1)
{
  sub_23B81E348();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23B81F54C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23B8217EC() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  v15 = *(v11 + 80);
  if (v12 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v8)
  {
    v17 = v14;
  }

  else
  {
    v17 = v14 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v17 + ((v13 + 16) & ~v13) + v15;
  if (a2 <= v16)
  {
    goto LABEL_37;
  }

  v19 = (v18 & ~v15) + *(v11 + 64);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v16 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 < 2)
    {
LABEL_37:
      if (v10 >= v12)
      {
        v28 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v9 & 0x80000000) != 0)
        {
          v30 = (*(v7 + 48))((v28 + v13 + 8) & ~v13);
          if (v30 >= 2)
          {
            return v30 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v29 = *v28;
          if (v29 >= 0xFFFFFFFF)
          {
            LODWORD(v29) = -1;
          }

          return (v29 + 1);
        }
      }

      else
      {
        v27 = *(v11 + 48);

        return v27((a1 + v18) & ~v15, v12);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_37;
  }

LABEL_24:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = (v18 & ~v15) + *(v11 + 64);
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v16 + (v26 | v24) + 1;
}

void sub_23B81F7D8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_23B8217EC() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v9 + 80);
  v17 = *(v9 + 64);
  v18 = *(v14 + 80);
  if (v15 <= v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = *(v14 + 84);
  }

  v20 = (v16 + 16) & ~v16;
  if (v11)
  {
    v21 = v17;
  }

  else
  {
    v21 = v17 + 1;
  }

  v22 = v20 + v21;
  v23 = v20 + v21 + v18;
  v24 = (v23 & ~v18) + *(v14 + 64);
  if (a3 <= v19)
  {
    goto LABEL_27;
  }

  if (v24 > 3)
  {
    v8 = 1;
    if (v19 >= a2)
    {
      goto LABEL_16;
    }

LABEL_28:
    v27 = ~v19 + a2;
    if (v24 >= 4)
    {
      bzero(a1, v24);
      *a1 = v27;
      v28 = 1;
      if (v8 > 1)
      {
        goto LABEL_30;
      }

LABEL_66:
      if (v8)
      {
        a1[v24] = v28;
      }

      return;
    }

    v28 = (v27 >> (8 * v24)) + 1;
    if (v24)
    {
      v30 = v27 & ~(-1 << (8 * v24));
      bzero(a1, v24);
      if (v24 != 3)
      {
        if (v24 == 2)
        {
          *a1 = v30;
          if (v8 <= 1)
          {
            goto LABEL_66;
          }
        }

        else
        {
          *a1 = v27;
          if (v8 <= 1)
          {
            goto LABEL_66;
          }
        }

LABEL_30:
        if (v8 == 2)
        {
          *&a1[v24] = v28;
        }

        else
        {
          *&a1[v24] = v28;
        }

        return;
      }

      *a1 = v30;
      a1[2] = BYTE2(v30);
    }

    if (v8 <= 1)
    {
      goto LABEL_66;
    }

    goto LABEL_30;
  }

  v25 = ((a3 - v19 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
  if (!HIWORD(v25))
  {
    if (v25 < 0x100)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    if (v25 >= 2)
    {
      v8 = v26;
    }

    else
    {
      v8 = 0;
    }

LABEL_27:
    if (v19 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v8 = 4;
  if (v19 < a2)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      *&a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v24] = 0;
  }

  else if (v8)
  {
    a1[v24] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v13 < v15)
  {
    v29 = *(v14 + 56);

    v29(&a1[v23] & ~v18, a2, v15);
    return;
  }

  if (v13 >= a2)
  {
    v34 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v12 & 0x80000000) != 0)
    {
      v36 = v34 + v16 + 8;
      a1 = (v36 & ~v16);
      if (v12 >= a2)
      {
        v38 = *(v10 + 56);

        v38(v36 & ~v16, (a2 + 1));
      }

      else
      {
        if (v21 <= 3)
        {
          v37 = ~(-1 << (8 * v21));
        }

        else
        {
          v37 = -1;
        }

        if (v21)
        {
          v32 = v37 & (~v12 + a2);
          if (v21 <= 3)
          {
            v33 = v21;
          }

          else
          {
            v33 = 4;
          }

          bzero(a1, v21);
          if (v33 <= 2)
          {
            if (v33 == 1)
            {
              goto LABEL_54;
            }

            goto LABEL_81;
          }

LABEL_82:
          if (v33 == 3)
          {
            *a1 = v32;
            a1[2] = BYTE2(v32);
          }

          else
          {
            *a1 = v32;
          }
        }
      }
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v35 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v35 = (a2 - 1);
      }

      *v34 = v35;
    }
  }

  else
  {
    if (v22 <= 3)
    {
      v31 = ~(-1 << (8 * v22));
    }

    else
    {
      v31 = -1;
    }

    if (v22)
    {
      v32 = v31 & (~v13 + a2);
      if (v22 <= 3)
      {
        v33 = v22;
      }

      else
      {
        v33 = 4;
      }

      bzero(a1, v22);
      if (v33 <= 2)
      {
        if (v33 == 1)
        {
LABEL_54:
          *a1 = v32;
          return;
        }

LABEL_81:
        *a1 = v32;
        return;
      }

      goto LABEL_82;
    }
  }
}

uint64_t sub_23B81FC40()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for QuickLookPreviewModifier();
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v7 = v0 + v5;
  v8 = *(v0 + v5);

  v9 = *(v0 + v5 + 8);

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080) + 32);
  v11 = sub_23B8217EC();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  (*(*(v2 - 8) + 8))(v7 + *(v3 + 36), v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_23B81FDCC@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for QuickLookPreviewModifier() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_23B81C988(v6, v3, a1);
}

unint64_t sub_23B81FE58()
{
  result = qword_27E1893E0;
  if (!qword_27E1893E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E189158, &qword_23B822088);
    sub_23B820268(&qword_27E1893E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1893E0);
  }

  return result;
}

uint64_t sub_23B81FEF8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23B81FF40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B81FFB4@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = *(type metadata accessor for QuickLookPreviewModifier() - 8);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_23B81BF4C(v6, v8, v3, v4, a1);
}

uint64_t objectdestroy_11Tm()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = type metadata accessor for QuickLookPreviewModifier();
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = &v0[v5];
  v9 = *&v0[v5];

  v10 = *&v0[v5 + 8];

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080) + 32);
  v12 = sub_23B8217EC();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(&v0[v5 + v11], 1, v12))
  {
    (*(v13 + 8))(&v8[v11], v12);
  }

  (*(*(v2 - 8) + 8))(&v8[*(v3 + 36)], v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_23B8201D8(_BYTE *a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = *(*(type metadata accessor for QuickLookPreviewModifier() - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];

  return sub_23B81C224(a1);
}

uint64_t sub_23B820268(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23B8217EC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B8202AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id sub_23B820314(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x277D85000];
  v7 = *MEMORY[0x277D85000];
  v8 = *MEMORY[0x277D85000] & *v2;
  *&v2[*((v7 & v5) + 0x70)] = 0;
  sub_23B8202AC(a1, &v2[*((*v6 & *v2) + 0x78)], &qword_27E189150, &qword_23B822080);
  v9 = *((*v6 & *v2) + 0x80);
  v10 = *((v7 & v5) + 0x58);
  (*(*(v10 - 8) + 16))(&v2[v9], a2, v10);
  v13 = *((v7 & v5) + 0x50);
  v14 = *(v8 + 96);
  v15.receiver = v2;
  v15.super_class = type metadata accessor for PreviewController.PreviewCoordinator();
  v11 = objc_msgSendSuper2(&v15, sel_init, v13, v10, v14);
  sub_23B8206D8(a1, &qword_27E189150, &qword_23B822080);
  return v11;
}

id sub_23B820500()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CDAA58]) init];
  [v0 setForceModalPresentation_];
  type metadata accessor for PreviewController();
  swift_getWitnessTable();
  sub_23B8218EC();
  sub_23B8218DC();
  [v0 setDataSource_];

  sub_23B8218DC();
  [v0 setDelegate_];

  sub_23B8218DC();
  sub_23B81E030();

  return v0;
}

id sub_23B820620@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentPreviewItemIndex];
  *a2 = result;
  return result;
}

uint64_t sub_23B820668(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189150, &qword_23B822080);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B8206D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23B82075C(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - v7;
  sub_23B81D464(&v12 - v7);
  v9 = *(*(*((v3 & v2) + 0x68) + 8) + 8);
  v10 = sub_23B821A5C();
  (*(v5 + 8))(v8, v4);
  return v10;
}

id sub_23B820868(void (*a1)(char *, uint64_t))
{
  v42 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v46 = sub_23B8217EC();
  v44 = *(v46 - 8);
  v4 = *(v44 + 64);
  v5 = MEMORY[0x28223BE20](v46);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v43 = &v38 - v8;
  v9 = *((v3 & v2) + 0x58);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v39 = *((v3 & v2) + 0x68);
  v38 = *(*(v39 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = AssociatedTypeWitness;
  v47 = *(AssociatedTypeWitness - 8);
  v18 = *(v47 + 64);
  v19 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v38 - v22;
  sub_23B81D464(v16);
  sub_23B81D464(v14);
  sub_23B821A4C();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v40 = v23;
  sub_23B821A2C();
  v25 = *(v47 + 8);
  v47 += 8;
  v42 = v25;
  v25(v21, AssociatedTypeWitness);
  v24(v16, v9);
  sub_23B81D464(v16);
  v26 = sub_23B821A7C();
  v27 = v43;
  v28 = v44;
  v29 = *(v44 + 16);
  v30 = v46;
  v29(v43);
  v26(v49, 0);
  v24(v16, v9);
  v31 = v45;
  v32 = v27;
  (v29)(v45, v27, v30);
  v33 = type metadata accessor for QLPreviewItemContainer();
  v34 = objc_allocWithZone(v33);
  v34[OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_didStartAccessingSecurityScopeResource] = 0;
  (v29)(&v34[OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_url], v31, v30);
  v48.receiver = v34;
  v48.super_class = v33;
  v35 = objc_msgSendSuper2(&v48, sel_init);
  v36 = *(v28 + 8);
  v36(v31, v30);
  v36(v32, v30);
  v42(v40, v41);
  return v35;
}

uint64_t sub_23B820CAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189158, &qword_23B822088);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - v2;
  v4 = sub_23B8217EC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  return sub_23B81D2DC(v3);
}

void sub_23B820DC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_23B81E348();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23B820E48(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_23B8217EC();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v9 + 80);
  if (v11)
  {
    v16 = *(*(v8 - 8) + 64);
  }

  else
  {
    v16 = *(*(v8 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v15 | 7;
  v18 = (v15 | 7) + *(v6 + 64);
  if (a2 <= v14)
  {
    goto LABEL_37;
  }

  v19 = v16 + ((v15 + 16) & ~v15) + (v18 & ~v17);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v14 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 < 2)
    {
LABEL_37:
      if (v7 >= v13)
      {
        v29 = *(v6 + 48);

        return v29(a1, v7, v5);
      }

      else
      {
        v27 = ((((a1 + v18) & ~v17) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) != 0)
        {
          v30 = (*(v10 + 48))((v27 + v15 + 8) & ~v15);
          if (v30 >= 2)
          {
            return v30 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v28 = *v27;
          if (v28 >= 0xFFFFFFFF)
          {
            LODWORD(v28) = -1;
          }

          return (v28 + 1);
        }
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_37;
  }

LABEL_24:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v14 + (v26 | v24) + 1;
}

void sub_23B8210F4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v37 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(sub_23B8217EC() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = *(v11 + 80);
  if (v13)
  {
    v15 = v13 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = v16;
  }

  v18 = (v14 | 7) + *(v8 + 64);
  if (v13)
  {
    v19 = *(v11 + 64);
  }

  else
  {
    v19 = *(v11 + 64) + 1;
  }

  v20 = ((v14 + 16) & ~v14) + v19;
  v21 = (v18 & ~(v14 | 7)) + v20;
  if (a3 <= v17)
  {
    goto LABEL_27;
  }

  if (v21 > 3)
  {
    v10 = 1;
    if (v17 >= a2)
    {
      goto LABEL_16;
    }

LABEL_28:
    v24 = ~v17 + a2;
    if (v21 >= 4)
    {
      bzero(a1, v21);
      *a1 = v24;
      v25 = 1;
      if (v10 > 1)
      {
        goto LABEL_30;
      }

LABEL_66:
      if (v10)
      {
        a1[v21] = v25;
      }

      return;
    }

    v25 = (v24 >> (8 * v21)) + 1;
    if (v21)
    {
      v30 = v24 & ~(-1 << (8 * v21));
      bzero(a1, v21);
      if (v21 != 3)
      {
        if (v21 == 2)
        {
          *a1 = v30;
          if (v10 <= 1)
          {
            goto LABEL_66;
          }
        }

        else
        {
          *a1 = v24;
          if (v10 <= 1)
          {
            goto LABEL_66;
          }
        }

LABEL_30:
        if (v10 == 2)
        {
          *&a1[v21] = v25;
        }

        else
        {
          *&a1[v21] = v25;
        }

        return;
      }

      *a1 = v30;
      a1[2] = BYTE2(v30);
    }

    if (v10 <= 1)
    {
      goto LABEL_66;
    }

    goto LABEL_30;
  }

  v22 = ((a3 - v17 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
  if (!HIWORD(v22))
  {
    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v10 = v23;
    }

    else
    {
      v10 = 0;
    }

LABEL_27:
    if (v17 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v10 = 4;
  if (v17 < a2)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v21] = 0;
  }

  else if (v10)
  {
    a1[v21] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 >= v16)
  {
    v31 = *(v37 + 56);

    v31(a1, a2, v9, v7);
  }

  else
  {
    v26 = (&a1[v18] & ~(v14 | 7));
    if (v16 >= a2)
    {
      v32 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v15 & 0x80000000) != 0)
      {
        v34 = v32 + v14 + 8;
        v26 = (v34 & ~v14);
        if (v15 >= a2)
        {
          v36 = *(v12 + 56);

          v36(v34 & ~v14, (a2 + 1));
        }

        else
        {
          if (v19 <= 3)
          {
            v35 = ~(-1 << (8 * v19));
          }

          else
          {
            v35 = -1;
          }

          if (v19)
          {
            v28 = v35 & (~v15 + a2);
            if (v19 <= 3)
            {
              v29 = v19;
            }

            else
            {
              v29 = 4;
            }

            bzero(v26, v19);
            if (v29 <= 2)
            {
              if (v29 == 1)
              {
                goto LABEL_46;
              }

              goto LABEL_81;
            }

            goto LABEL_82;
          }
        }
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v33 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v33 = (a2 - 1);
        }

        *v32 = v33;
      }
    }

    else
    {
      if (v20 <= 3)
      {
        v27 = ~(-1 << (8 * v20));
      }

      else
      {
        v27 = -1;
      }

      if (v20)
      {
        v28 = v27 & (~v16 + a2);
        if (v20 <= 3)
        {
          v29 = ((v14 + 16) & ~v14) + v19;
        }

        else
        {
          v29 = 4;
        }

        bzero(v26, v20);
        if (v29 <= 2)
        {
          if (v29 == 1)
          {
LABEL_46:
            *v26 = v28;
            return;
          }

LABEL_81:
          *v26 = v28;
          return;
        }

LABEL_82:
        if (v29 == 3)
        {
          *v26 = v28;
          v26[2] = BYTE2(v28);
        }

        else
        {
          *v26 = v28;
        }
      }
    }
  }
}

uint64_t sub_23B821528(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for QuickLookPreviewModifier();
  swift_getWitnessTable();
  sub_23B82183C();
  type metadata accessor for PreviewController();
  sub_23B82182C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1893D8, &qword_23B8221F8);
  sub_23B82182C();
  swift_getOpaqueTypeConformance2();
  sub_23B81FEF8(&qword_27E1893F0, &qword_27E1893D8, &qword_23B8221F8);
  return swift_getWitnessTable();
}