id sub_1C54FFA14(double a1, double a2, double a3, double a4)
{
  v4 = [swift_getObjCClassFromMetadata() valueWithRect_];

  return v4;
}

id sub_1C54FFB24()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactVisualIdentityPicker.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C54FFBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContactVisualIdentityPicker.Coordinator();

  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  return sub_1C54FBAA8(a1, a2, a3, a4);
}

id sub_1C54FFC6C@<X0>(void *a1@<X8>)
{
  result = sub_1C54FFBA4(*v1, v1[1], v1[2], v1[3]);
  *a1 = result;
  return result;
}

void sub_1C54FFD38()
{
  sub_1C550004C();
  sub_1C5595724();
  __break(1u);
}

id sub_1C54FFD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = sub_1C5596554();

    v4 = [v11 initWithAccountStore:a1 grandSlamAccount:a2 appTokenID:v8];
  }

  else
  {
    v4 = [v11 initWithAccountStore:a1 grandSlamAccount:a2 appTokenID:0];
  }

  v7 = v4;
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v7;
}

id sub_1C54FFE40(uint64_t a1)
{
  v4 = [v1 initWithGrandSlamSigner_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1C54FFE98(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C54FD27C(a1, v6, v7, v8, v9, v10);
}

unint64_t sub_1C54FFF88()
{
  v2 = qword_1EC15DE88;
  if (!qword_1EC15DE88)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15DE88);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C54FFFEC(uint64_t a1)
{

  MEMORY[0x1E69E5920](*(a1 + 16));
  MEMORY[0x1E69E5920](*(a1 + 24));
  return a1;
}

unint64_t sub_1C550004C()
{
  v2 = qword_1EC15DE90;
  if (!qword_1EC15DE90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DE90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55000E0()
{
  v2 = qword_1EC15A038;
  if (!qword_1EC15A038)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15A038);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C550015C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C550029C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1C5500480()
{
  v2 = qword_1EC15DEF8;
  if (!qword_1EC15DEF8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15DEF8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t static AccountRecoveryContactUpsellContactSection.create(viewModel:delegate:)(void *a1, uint64_t a2)
{
  v32 = v63;
  v35 = a2;
  v34 = a1;
  v45 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v53 = 0;
  v33 = 0;
  v42 = sub_1C5594C74();
  v36 = v42;
  v37 = *(v42 - 8);
  v41 = v37;
  v38 = v37;
  v39 = *(v37 + 64);
  v2 = &v14 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v2;
  v62 = MEMORY[0x1EEE9AC00](v34);
  v61 = v3;
  v60 = v4;
  v5 = sub_1C54B05F8();
  (*(v41 + 16))(v2, v5, v42);
  v47 = sub_1C5594C54();
  v43 = v47;
  v46 = sub_1C5596944();
  v44 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v48 = sub_1C5596E04();
  if (os_log_type_enabled(v47, v46))
  {
    v6 = v33;
    v23 = sub_1C5596A74();
    v19 = v23;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v21 = 0;
    v24 = sub_1C5419DC0(0);
    v22 = v24;
    v25 = sub_1C5419DC0(v21);
    v52 = v23;
    v51 = v24;
    v50 = v25;
    v26 = 0;
    v27 = &v52;
    sub_1C5419E14(0, &v52);
    sub_1C5419E14(v26, v27);
    v49 = v48;
    v28 = &v14;
    MEMORY[0x1EEE9AC00](&v14);
    v29 = &v14 - 6;
    *(&v14 - 4) = v7;
    *(&v14 - 3) = &v51;
    *(&v14 - 2) = &v50;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v31 = v6;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v43, v44, "AccountRecoveryContactUpsellContactSection Contact List initiated", v19, 2u);
      v17 = 0;
      sub_1C5419E74(v22);
      sub_1C5419E74(v25);
      sub_1C5596A54();

      v18 = v31;
    }
  }

  else
  {

    v18 = v33;
  }

  (*(v38 + 8))(v40, v36);
  v8 = v34;
  swift_unknownObjectRetain();
  v9 = sub_1C5505E94();
  v15 = v63;
  sub_1C5500924(v34, v35, v9, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF08);
  sub_1C5505EF8(v15, v59);
  v54 = *v32;
  v10 = v32[1];
  v11 = v32[2];
  v12 = v32[3];
  v58 = v64;
  v57 = v12;
  v56 = v11;
  v55 = v10;
  v16 = sub_1C5595484();
  v53 = v16;
  sub_1C5505FD8(v15);
  return v16;
}

void *sub_1C5500924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  memset(__b, 0, sizeof(__b));
  __dst[9] = a3;
  v13 = a1;
  v12 = a2;
  __b[2] = sub_1C5500CD8(0);
  __b[3] = v4;
  LOBYTE(__b[4]) = sub_1C54760C4() & 1;
  __b[5] = v5;
  __b[6] = 6.0;
  __b[7] = 24.0;
  __b[8] = 0x4041800000000000;
  MEMORY[0x1E69E5928](a1);
  __b[0] = a1;
  swift_unknownObjectRetain();
  __b[1] = a2;
  memcpy(__dst, __b, 0x48uLL);
  sub_1C5505EF8(__dst, v11);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a1);
  sub_1C5505FD8(__b);
  return memcpy(a4, __dst, 0x48uLL);
}

id AccountRecoveryContactUpsellContactSection.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for AccountRecoveryContactUpsellContactSection();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x1E69E5928](v1);
  v3 = v1;
  MEMORY[0x1E69E5920](v1);
  return v1;
}

id AccountRecoveryContactUpsellContactSection.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountRecoveryContactUpsellContactSection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5500C24()
{
  v2 = *v0;
  MEMORY[0x1E69E5928](*v0);
  return v2;
}

uint64_t sub_1C5500C58(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v2 = *v1;
  *v1 = a1;
  MEMORY[0x1E69E5920](v2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1C5500CAC()
{
  v2 = *(v0 + 8);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1C5500CD8(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF10);
  sub_1C5595F74();
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1C5500D8C(uint64_t a1)
{
  v5 = v1;
  v4[2] = *(a1 + 16);
  v6 = *(v1 + 16);
  sub_1C550606C(&v6, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF18);
  sub_1C5595F84();
  sub_1C55060CC(&v6);
  return v3;
}

double sub_1C5500E18(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v8 = v2;
  v7[2] = *(a2 + 16);
  v10 = *(v2 + 16);
  sub_1C550606C(&v10, v7);
  sub_1C550606C(&v10, &v6);
  v5 = v10;
  MEMORY[0x1E69E5928](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF18);
  sub_1C5595F94();
  sub_1C55060CC(&v5);
  sub_1C55060CC(&v10);
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

void (*sub_1C5500EF0(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x90uLL);
  *a1 = v3;
  *v3 = *(v1 + 16);
  sub_1C550606C(v3, v3 + 2);
  *(v3 + 2) = *v3;
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF18);
  sub_1C5595F84();
  return sub_1C5500FCC;
}

void sub_1C5500FCC(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4[14];
    MEMORY[0x1E69E5928](v2);
    sub_1C550606C(v4, v4 + 6);
    *(v4 + 4) = *v4;
    v4[15] = v2;
    sub_1C5595F94();
    sub_1C55060CC(v4 + 8);
    sub_1C5401EF8(v4 + 14);
  }

  else
  {
    v3 = v4[14];
    sub_1C550606C(v4, v4 + 10);
    *(v4 + 6) = *v4;
    v4[16] = v3;
    sub_1C5595F94();
    sub_1C55060CC(v4 + 12);
  }

  sub_1C55060CC(v4);
  free(v4);
}

uint64_t sub_1C55010E0(uint64_t a1)
{
  v5 = v1;
  v4[2] = *(a1 + 16);
  v6 = *(v1 + 16);
  sub_1C550606C(&v6, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF18);
  sub_1C5595FA4();
  sub_1C55060CC(&v6);
  return v3;
}

uint64_t sub_1C5501184()
{
  v2 = *(v0 + 16);
  MEMORY[0x1E69E5928](v2);

  return v2;
}

uint64_t sub_1C55011CC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1);

  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  MEMORY[0x1E69E5920](v3);

  MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1C550124C(uint64_t a1)
{
  v6 = v1;
  v5 = *(a1 + 16);
  v7 = *(v1 + 32);
  sub_1C5409664(&v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();
  sub_1C5373718();
  return v3 & 1;
}

__int128 *sub_1C55012DC(char a1, uint64_t a2)
{
  v8 = a1 & 1;
  v7 = v2;
  v6 = *(a2 + 16);
  v9 = *(v2 + 32);
  sub_1C5409664(&v9, v5);
  sub_1C5409664(&v9, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F94();
  sub_1C5373718();
  result = &v9;
  sub_1C5373718();
  return result;
}

void (*sub_1C550139C(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x80uLL);
  *a1 = v3;
  *v3 = *(v1 + 32);
  sub_1C5409664(v3, (v3 + 1));
  v3[2] = *v3;
  *(v3 + 14) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();
  return sub_1C5501478;
}

void sub_1C5501478(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4[120];
    sub_1C5409664(v4, (v4 + 48));
    *(v4 + 4) = *v4;
    v4[121] = v2;
  }

  else
  {
    v3 = v4[120];
    sub_1C5409664(v4, (v4 + 80));
    *(v4 + 6) = *v4;
    v4[122] = v3;
  }

  sub_1C5595F94();
  sub_1C5373718();
  sub_1C5373718();
  free(v4);
}

uint64_t sub_1C550156C(uint64_t a1)
{
  v6 = v1;
  v5 = *(a1 + 16);
  v7 = *(v1 + 32);
  sub_1C5409664(&v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595FA4();
  sub_1C5373718();
  return v3;
}

uint64_t sub_1C550162C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v25 = a1;
  v28 = v2;
  v17 = sub_1C550610C;
  v30 = sub_1C5506408;
  v38 = MEMORY[0x1E6981440];
  v52 = 0;
  __src = __dst;
  __n = 72;
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(v55, __dst, sizeof(v55));
  v27 = *(v25 + 16);
  v53 = v27;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF20);
  v13 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &__src - v13;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF28);
  v14 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v33 = &__src - v14;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF30);
  v39 = *(v45 - 8);
  v40 = v45 - 8;
  v15 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v28);
  v43 = &__src - v15;
  v16 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v44 = &__src - v16;
  v52 = &__src - v16;
  sub_1C5505EF8(v5, &v51);
  v18 = v48;
  v48[2] = v27;
  v48[3] = v28;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF38);
  v20 = sub_1C5506124();
  sub_1C544B78C();
  v26 = 1;
  sub_1C5596064();
  sub_1C5505FD8(v28);
  v22 = sub_1C55965F4();
  v23 = v6;
  sub_1C55061AC();
  sub_1C5595C84();

  sub_1C5506234(v24);
  v7 = sub_1C550124C(v25);
  v31 = &v50;
  v50 = v7 & v26;
  sub_1C5505EF8(v28, &v49);
  v8 = swift_allocObject();
  v9 = v28;
  v10 = __n;
  v32 = v8;
  *(v8 + 16) = v27;
  memcpy((v8 + 24), v9, v10);
  v36 = sub_1C5506420();
  v35 = MEMORY[0x1E69E6370];
  v37 = MEMORY[0x1E69E6388];
  sub_1C543AE1C();
  sub_1C5595DD4();

  sub_1C55064C8(v33);
  v48[5] = v34;
  v48[6] = v35;
  v48[7] = v36;
  v48[8] = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v43, v45, v44);
  v47 = *(v39 + 8);
  v46 = v39 + 8;
  v47(v43, v45);
  (*(v39 + 16))(v43, v44, v45);
  sub_1C540EFD8(v43, v45, v41);
  v47(v43, v45);
  return (v47)(v44, v45);
}

uint64_t sub_1C5501AFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v99 = v196;
  v100 = v187;
  v101 = v148;
  v102 = a2;
  v120 = a1;
  v103 = a3;
  v208 = 0;
  v207 = 0;
  v206 = 0;
  v131 = 0;
  v129 = 0;
  v219 = a2;
  v209 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v213 = a1[8];
  v212 = v5;
  v211 = v4;
  v210 = v3;
  v214 = v209;
  v218 = v213;
  v217 = v5;
  v216 = v4;
  v215 = v3;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF78);
  v105 = *(*(v104 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v104 - 8);
  v107 = (v105 + 15) & 0xFFFFFFFFFFFFFFF0;
  v106 = v44 - v107;
  MEMORY[0x1EEE9AC00](v6);
  v108 = v44 - v107;
  v208 = v44 - v107;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF60);
  v110 = *(v109 - 8);
  v111 = v110;
  v112 = (*(v110 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v109 - 8);
  v113 = v44 - v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF68);
  v116 = *(*(v114 - 8) + 64);
  MEMORY[0x1EEE9AC00](v114 - 8);
  v118 = (v116 + 15) & 0xFFFFFFFFFFFFFFF0;
  v115 = v44 - v118;
  v7 = MEMORY[0x1EEE9AC00](v44 - v118);
  v117 = v44 - v118;
  MEMORY[0x1EEE9AC00](v7);
  v119 = v44 - v118;
  v207 = v44 - v118;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E000);
  v122 = *(*(v121 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v120);
  v124 = (v122 + 15) & 0xFFFFFFFFFFFFFFF0;
  v123 = v44 - v124;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v125 = v44 - v124;
  v206 = v44 - v124;
  v127 = *v9;
  v126 = v127;
  v10 = v127;
  v128 = [v127 suggestedContacts];
  if (v128)
  {
    v98 = v128;
    v95 = v128;
    v94 = sub_1C5403328();
    v96 = sub_1C5596714();

    v97 = v96;
  }

  else
  {
    v97 = 0;
  }

  v93 = v97;
  if (!v97)
  {

LABEL_10:
    v15 = sub_1C5596234();
    v81 = MEMORY[0x1E6981E70];
    v82 = MEMORY[0x1E6981E60];
    v17 = sub_1C540EFD8(v15, MEMORY[0x1E6981E70], v16);
    sub_1C540EFD8(v17, v81, v18);
    v19 = sub_1C5507730();
    sub_1C54108A0(v19, v114, v81, v19, v82, v123);
    sub_1C5507860(v123, v125);
    goto LABEL_11;
  }

  v92 = v93;
  v90 = v93;
  v131 = v93;

  v130[9] = v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCD0);
  sub_1C54F25C4();
  v11 = sub_1C55968F4();
  if (v11)
  {

    goto LABEL_10;
  }

  v85 = sub_1C5595794();
  sub_1C5594CF4();
  sub_1C5505EF8(v120, v130);
  v86 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v12 = v90;
  v83 = &v44[-6];
  v44[-4] = v102;
  v44[-3] = v12;
  v44[-2] = v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E048);
  sub_1C5508090();
  sub_1C5503774();

  sub_1C5505FD8(v120);
  v87 = sub_1C55965F4();
  v88 = v14;
  sub_1C55077D8();
  sub_1C5595C84();

  (*(v111 + 8))(v113, v109);
  v89 = sub_1C5507730();
  sub_1C540EFD8(v117, v114, v119);
  sub_1C55082E4(v117);
  v129 = v117;
  sub_1C55083A8(v119, v115);
  sub_1C540EFD8(v115, v114, v117);
  sub_1C55082E4(v115);
  sub_1C55083A8(v117, v115);
  sub_1C540FD1C(v115, v114, MEMORY[0x1E6981E70], v89, MEMORY[0x1E6981E60], v123);
  sub_1C55082E4(v115);
  sub_1C5507860(v123, v125);
  sub_1C55082E4(v117);
  sub_1C55082E4(v119);

LABEL_11:
  v76 = 0;
  v77 = 1;
  v189 = sub_1C5596044();
  v190 = v20 & 1;
  v44[0] = v120[7];
  v74 = MEMORY[0x1E6981840];
  v75 = MEMORY[0x1E6981838];
  sub_1C5410F68();
  v73 = 0;
  sub_1C5595D14();
  v195[7] = v194;
  v195[6] = v193;
  v195[5] = v192;
  v195[4] = v191;
  v188[3] = v194;
  v188[2] = v193;
  v188[1] = v192;
  v188[0] = v191;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DFB8);
  v80 = sub_1C55071EC();
  sub_1C540EFD8(v188, v78, v195);
  sub_1C55965F4();
  v44[1] = v21;
  v45 = sub_1C54637B4();
  v46 = v22;

  v179 = v45;
  v180 = v46;
  sub_1C54141E8();
  v175 = sub_1C5595A04();
  v176 = v23;
  v177 = v24;
  v178 = v25;
  v48 = v175;
  v49 = v23;
  v50 = v24;
  v51 = v25;
  v47 = sub_1C5595914();
  v171 = v48;
  v172 = v49;
  v173 = v50;
  v174 = v51;
  v167 = sub_1C55959C4();
  v168 = v26;
  v169 = v27;
  v170 = v28;
  v55 = v167;
  v53 = v26;
  v54 = v27;
  v56 = v28;

  sub_1C5412EA0(v48, v49, v50);

  v166 = sub_1C5595EB4();
  v162 = v55;
  v163 = v53;
  v164 = v54;
  v165 = v56;
  v52 = &v166;
  v158 = sub_1C5595994();
  v159 = v29;
  v160 = v30;
  v161 = v31;
  v57 = v158;
  v58 = v29;
  v59 = v30;
  v60 = v31;
  sub_1C5410D10();
  sub_1C5412EA0(v55, v53, v54);

  v155[0] = v57;
  v155[1] = v58;
  v156 = v59;
  v157 = v60;
  v61 = v155;
  sub_1C5595C54();
  sub_1C5414260(v61);
  v150[0] = v181;
  v150[1] = v182;
  v151 = v183;
  v152 = v184;
  v153 = v185;
  v154 = v186;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC18);
  sub_1C546FF30();
  v63 = v150;
  sub_1C5595E14();
  sub_1C546FFD4(v63);
  v32 = v99;
  v33 = v101;
  v34 = v187[0];
  v35 = v187[1];
  *(v99 + 27) = *(v100 + 27);
  v196[1] = v35;
  v196[0] = v34;
  *(v33 + 123) = *(v32 + 27);
  v149[1] = v35;
  v149[0] = v34;
  v66 = sub_1C55957A4();
  v64 = v120[8];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E018);
  sub_1C55079AC();
  v67 = v149;
  sub_1C5595D84();
  sub_1C546FFD4(v67);
  v36 = v99;
  v37 = v101;
  v198 = v187[4];
  v197 = v187[3];
  v38 = v187[5];
  v39 = v187[6];
  v40 = v187[7];
  *(v99 + 121) = *(v100 + 121);
  v201 = v40;
  v200 = v39;
  v199 = v38;
  v148[1] = v198;
  v148[0] = v197;
  *(v37 + 73) = *(v36 + 121);
  v148[4] = v40;
  v148[3] = v39;
  v148[2] = v38;
  v69 = sub_1C55965F4();
  v70 = v41;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E028);
  sub_1C5507A50();
  v71 = v148;
  sub_1C5595C84();

  sub_1C546FFD4(v71);
  v79 = sub_1C5507AF4();
  sub_1C540EFD8(v106, v104, v108);
  sub_1C5507B9C(v106);
  v141 = sub_1C5596044();
  v142 = v42 & 1;
  v72 = v120[7];
  sub_1C5410F68();
  sub_1C5595D14();
  v205 = v146;
  v204 = v145;
  v203 = v144;
  v202 = v143;
  v140[3] = v146;
  v140[2] = v145;
  v140[1] = v144;
  v140[0] = v143;
  sub_1C540EFD8(v140, v78, v147);
  sub_1C5507C4C(v125, v123);
  v139[0] = v123;
  v138[3] = v195[3];
  v138[2] = v195[2];
  v138[1] = v195[1];
  v138[0] = v195[0];
  v139[1] = v138;
  sub_1C5507D98(v108, v106);
  v139[2] = v106;
  v137[3] = v147[3];
  v137[2] = v147[2];
  v137[1] = v147[1];
  v137[0] = v147[0];
  v139[3] = v137;
  v136[0] = v121;
  v136[1] = v78;
  v136[2] = v104;
  v136[3] = v78;
  v132 = sub_1C5507EE0();
  v133 = v80;
  v134 = v79;
  v135 = v80;
  sub_1C540F5A0(v139, 4uLL, v136, v103);
  sub_1C5507B9C(v106);
  sub_1C5507F84(v123);
  sub_1C5507B9C(v108);
  return sub_1C5507F84(v125);
}

uint64_t sub_1C5502828@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v25 = a1;
  v26 = a2;
  v18 = a3;
  v21 = sub_1C5508488;
  v45 = 0;
  v44 = 0;
  v48 = a3;
  __src = __dst;
  __n = 72;
  memcpy(__dst, a2, sizeof(__dst));
  memcpy(v47, __dst, sizeof(v47));
  v32 = 0;
  v4 = sub_1C5595594();
  v13 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v10 - v13;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E070);
  v28 = *(v31 - 8);
  v29 = v31 - 8;
  v14 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v10 - v14;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E060);
  v15 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v10 - v15;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E048);
  v16 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v25);
  v40 = &v10 - v16;
  v17 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v41 = &v10 - v17;
  v45 = &v10 - v17;
  v44 = v7;
  sub_1C5594CF4();
  sub_1C5505EF8(v26, &v43);
  v22 = v42;
  v42[2] = v18;
  v42[3] = v25;
  v42[4] = v26;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E080);
  v24 = sub_1C55084A4();
  v19 = sub_1C5412C88();
  sub_1C5503570();
  sub_1C5594F84();

  sub_1C5505FD8(v26);
  v27 = sub_1C55081DC();
  sub_1C5411148();
  v33 = 1;
  sub_1C5595D84();
  (*(v28 + 8))(v30, v31);
  v35 = sub_1C55957A4();
  v8 = sub_1C5508138();
  sub_1C55035D0(v35, v32, v33, v34, v8, v40);
  sub_1C5508704(v36);
  v39 = sub_1C5508090();
  sub_1C540EFD8(v40, v38, v41);
  sub_1C550876C(v40);
  sub_1C5508830(v41, v40);
  sub_1C540EFD8(v40, v38, v37);
  sub_1C550876C(v40);
  return sub_1C550876C(v41);
}

uint64_t sub_1C5502C18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v14 = a1;
  v16 = a2;
  v15 = a3;
  v18 = sub_1C55089CC;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v39 = a3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E080);
  v25 = *(v31 - 8);
  v26 = v31 - 8;
  v12 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v14);
  v29 = &v11 - v12;
  v13 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v30 = &v11 - v13;
  v38 = &v11 - v13;
  v37 = v6;
  v36 = v7;
  sub_1C5594CF4();
  v24 = &v35;
  v35 = v14;
  KeyPath = swift_getKeyPath();
  sub_1C5505EF8(v16, v34);
  v8 = swift_allocObject();
  v9 = v16;
  v19 = v8;
  *(v8 + 16) = v15;
  memcpy((v8 + 24), v9, 0x48uLL);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCD0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E098);
  v22 = sub_1C54EE5A8();
  v23 = sub_1C55089E4();
  sub_1C550853C();
  sub_1C5596104();
  v28 = sub_1C55084A4();
  sub_1C540EFD8(v29, v31, v30);
  v33 = *(v25 + 8);
  v32 = v25 + 8;
  v33(v29, v31);
  (*(v25 + 16))(v29, v30, v31);
  sub_1C540EFD8(v29, v31, v27);
  v33(v29, v31);
  return (v33)(v30, v31);
}

char *sub_1C5502F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  v16 = a1;
  v26 = a2;
  v19 = a3;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v51 = a3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E098);
  v17 = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v16);
  v41 = &v15 - v17;
  v18 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v42 = (&v15 - v18);
  v48 = &v15 - v18;
  v22 = *v7;
  v47 = v22;
  v46 = a2;
  MEMORY[0x1E69E5928](v22);
  v20 = type metadata accessor for AccountRecoveryContactUpsellContactSelection();
  v23 = sub_1C55010E0(v20);
  v24 = v8;
  v21 = v9;
  v10 = sub_1C550156C(v20);
  v25 = v49;
  v33 = 1;
  sub_1C550320C(v22, v23, v24, v21, v10, v12, v11 & 1, v49);
  v29 = v44;
  memcpy(v44, v25, sizeof(v44));
  v28 = sub_1C55957A4();
  v27 = *(v26 + 48);
  sub_1C5508688();
  v30 = &v45;
  sub_1C5595D84();
  sub_1C5506810(v29);
  v31 = __dst;
  v32 = 137;
  memcpy(__dst, v30, 0x89uLL);
  v37 = v43;
  memcpy(v43, __dst, 0x89uLL);
  v35 = sub_1C55965F4();
  v36 = v13;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0A8);
  sub_1C55085E4();
  sub_1C5595C84();

  sub_1C5506810(v37);
  v40 = sub_1C550853C();
  sub_1C540EFD8(v41, v39, v42);
  sub_1C5508A64(v41);
  sub_1C5508B50(v42, v41);
  sub_1C540EFD8(v41, v39, v38);
  sub_1C5508A64(v41);
  return sub_1C5508A64(v42);
}

void *sub_1C550320C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, void *a8@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v33 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  __dst[12] = a5;
  __dst[13] = a6;
  v29 = a7;
  __b[7] = 0x4056000000000000;
  __b[8] = 4.0;
  MEMORY[0x1E69E5928](a1);
  __b[0] = a1;

  MEMORY[0x1E69E5928](a4);
  __b[1] = a2;
  __b[2] = a3;
  __b[3] = a4;

  __b[4] = a5;
  __b[5] = a6;
  LOBYTE(__b[6]) = a7;
  v24 = [a1 firstNameOrHandleForDisplay];
  __b[9] = sub_1C5596574();
  __b[10] = v8;
  v26 = [a1 imageData];
  if (v26)
  {
    v13 = sub_1C55948D4();
    v14 = v9;
    MEMORY[0x1E69E5920](v26);
    v15 = v13;
    v16 = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0xF000000000000000;
  }

  if ((v16 & 0xF000000000000000) == 0xF000000000000000)
  {
    goto LABEL_10;
  }

  sub_1C544DE30(v15, v16);
  v10 = sub_1C55781A4(v15, v16);
  v12 = v10;
  if (!v10)
  {
    sub_1C544DEAC(v15, v16);
LABEL_10:
    sub_1C55965F4();
    __b[11] = sub_1C5595EF4();
    goto LABEL_11;
  }

  __b[11] = v12;

  sub_1C544DEAC(v15, v16);
LABEL_11:
  memcpy(__dst, __b, 0x60uLL);
  sub_1C55066E0(__dst, v27);

  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a1);
  sub_1C5506810(__b);
  return memcpy(a8, __dst, 0x60uLL);
}

uint64_t sub_1C5503570()
{
  sub_1C5595594();
  sub_1C550894C();
  return sub_1C5596F64();
}

uint64_t sub_1C55035D0@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18 = a6;
  v19 = a1;
  v20 = a2;
  v23 = a3;
  v21 = a4;
  v22 = a5;
  v34 = a4;
  v24 = sub_1C5595644();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v12 - v27;
  if (v6)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 1;
  }

  else
  {
    sub_1C5594F64();
    v13 = v7;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    v17 = 0;
  }

  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v17 & 1;
  sub_1C5595634();
  MEMORY[0x1C6946950](v28, v21, v24, v22);
  return (*(v25 + 8))(v28, v24);
}

double sub_1C55037C8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a1;
  v56 = a2;
  v49 = a3;
  v57 = a4;
  v50 = sub_1C545AE98;
  v51 = sub_1C545C6DC;
  v52 = sub_1C545C6D4;
  v53 = sub_1C545C6D4;
  v54 = sub_1C545C6E8;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v55 = 0;
  v75 = a4;
  v58 = 0;
  v59 = sub_1C5594C74();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v64 = &v23 - v62;
  v74 = *v63 & 1;
  v73 = *v5 & 1;
  v72 = a3;
  v6 = type metadata accessor for AccountRecoveryContactUpsellContactSelection();
  v65 = sub_1C5500D8C(v6);
  if (v65)
  {
    v48 = v65;
    v8 = v64;
    v34 = v65;
    v71 = v65;
    v9 = sub_1C54B05F8();
    (*(v60 + 16))(v8, v9, v59);
    MEMORY[0x1E69E5928](v34);
    v37 = 7;
    v38 = swift_allocObject();
    *(v38 + 16) = v34;
    v46 = sub_1C5594C54();
    v47 = sub_1C5596944();
    v35 = 17;
    v40 = swift_allocObject();
    *(v40 + 16) = 64;
    v41 = swift_allocObject();
    *(v41 + 16) = 8;
    v36 = 32;
    v10 = swift_allocObject();
    v11 = v38;
    v39 = v10;
    *(v10 + 16) = v50;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v39;
    v43 = v12;
    *(v12 + 16) = v51;
    *(v12 + 24) = v13;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v42 = sub_1C5596E04();
    v44 = v14;

    v15 = v40;
    v16 = v44;
    *v44 = v52;
    v16[1] = v15;

    v17 = v41;
    v18 = v44;
    v44[2] = v53;
    v18[3] = v17;

    v19 = v43;
    v20 = v44;
    v44[4] = v54;
    v20[5] = v19;
    sub_1C540FCD8();

    if (os_log_type_enabled(v46, v47))
    {
      v21 = v55;
      v27 = sub_1C5596A74();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v28 = sub_1C5419DC0(1);
      v29 = sub_1C5419DC0(0);
      v30 = &v70;
      v70 = v27;
      v31 = &v69;
      v69 = v28;
      v32 = &v68;
      v68 = v29;
      sub_1C5419E14(2, &v70);
      sub_1C5419E14(1, v30);
      v66 = v52;
      v67 = v40;
      sub_1C5419E28(&v66, v30, v31, v32);
      v33 = v21;
      if (v21)
      {

        __break(1u);
      }

      else
      {
        v66 = v53;
        v67 = v41;
        sub_1C5419E28(&v66, &v70, &v69, &v68);
        v25 = 0;
        v66 = v54;
        v67 = v43;
        sub_1C5419E28(&v66, &v70, &v69, &v68);
        _os_log_impl(&dword_1C5355000, v46, v47, "selection Changed %@", v27, 0xCu);
        sub_1C5419E74(v28);
        sub_1C5419E74(v29);
        sub_1C5596A54();
      }
    }

    else
    {
    }

    v22 = MEMORY[0x1E69E5920](v46);
    (*(v60 + 8))(v64, v59, v22);
    v24 = *(v49 + 8);
    swift_unknownObjectRetain();
    swift_getObjectType();
    [v24 didSelectLocalContactFor_];
    swift_unknownObjectRelease();
    *&result = MEMORY[0x1E69E5920](v34).n128_u64[0];
  }

  return result;
}

uint64_t sub_1C5503F80()
{
  v8 = v0;
  v9 = *(v0 + 8);
  v10 = *(v0 + 24);
  sub_1C55068A0(&v9, v7);
  v5 = v9;
  v6 = v10;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF88);
  MEMORY[0x1C6946C30](&v4, v1);
  v3 = v4;
  sub_1C54FB16C(&v9);
  return v3;
}

double sub_1C5504014(uint64_t a1)
{
  v9 = a1;
  v8 = v1;
  v10 = *(v1 + 8);
  v11 = *(v1 + 24);
  sub_1C55068A0(&v10, v7);
  sub_1C55068A0(&v10, v6);
  v4 = v10;
  v5 = v11;
  MEMORY[0x1E69E5928](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF88);
  sub_1C55960A4();
  sub_1C54FB16C(&v4);
  sub_1C54FB16C(&v10);
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

void (*sub_1C55040F4(uint64_t **a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0xC8uLL);
  *a1 = v3;
  *v3 = *(v1 + 8);
  v3[2] = *(v1 + 24);
  sub_1C55068A0(v3, v3 + 3);
  *(v3 + 3) = *v3;
  v3[8] = v3[2];
  v3[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF88);
  MEMORY[0x1C6946C30]();
  return sub_1C55041D0;
}

void sub_1C55041D0(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 168);
    MEMORY[0x1E69E5928](v2);
    sub_1C55068A0(v4, (v4 + 72));
    *(v4 + 96) = *v4;
    *(v4 + 112) = *(v4 + 16);
    *(v4 + 176) = v2;
    sub_1C55960A4();
    sub_1C54FB16C(v4 + 96);
    sub_1C5401EF8((v4 + 168));
  }

  else
  {
    v3 = *(v4 + 168);
    sub_1C55068A0(v4, (v4 + 120));
    *(v4 + 144) = *v4;
    *(v4 + 160) = *(v4 + 16);
    *(v4 + 184) = v3;
    sub_1C55960A4();
    sub_1C54FB16C(v4 + 144);
  }

  sub_1C54FB16C(v4);
  free(v4);
}

uint64_t sub_1C55042F4()
{
  v4 = v0;
  v5 = *(v0 + 8);
  v6 = *(v0 + 24);
  sub_1C55068A0(&v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF88);
  sub_1C55960C4();
  sub_1C54FB16C(&v5);
  return v2;
}

uint64_t sub_1C55043A0()
{
  v3 = *(v0 + 8);
  v2 = *(v0 + 24);

  MEMORY[0x1E69E5928](v2);
  return v3;
}

double sub_1C55043FC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  MEMORY[0x1E69E5928](a3);
  v5 = v3[3];
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = a3;

  MEMORY[0x1E69E5920](v5);

  *&result = MEMORY[0x1E69E5920](a3).n128_u64[0];
  return result;
}

uint64_t sub_1C55044A8()
{
  v8 = v0;
  v9 = *(v0 + 32);
  v10 = *(v0 + 48);
  sub_1C54AFE90(&v9, v7);
  v5 = v9;
  v6 = v10;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E8A0);
  MEMORY[0x1C6946C30](&v4, v1);
  v3 = v4;
  sub_1C5436F54();
  return v3 & 1;
}

__int128 *sub_1C5504540(char a1)
{
  v6 = a1 & 1;
  v5 = v1;
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  sub_1C54AFE90(&v7, v4);
  sub_1C54AFE90(&v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E8A0);
  sub_1C55960A4();
  sub_1C5436F54();
  result = &v7;
  sub_1C5436F54();
  return result;
}

void (*sub_1C5504608(uint64_t **a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0xB0uLL);
  *a1 = v3;
  *v3 = *(v1 + 32);
  *(v3 + 16) = *(v1 + 48);
  sub_1C54AFE90(v3, (v3 + 3));
  *(v3 + 3) = *v3;
  *(v3 + 64) = *(v3 + 16);
  v3[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E8A0);
  MEMORY[0x1C6946C30]();
  return sub_1C55046E4;
}

void sub_1C55046E4(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 17);
    sub_1C54AFE90(v4, v4 + 72);
    *(v4 + 96) = *v4;
    *(v4 + 112) = *(v4 + 16);
    *(v4 + 18) = v2;
  }

  else
  {
    v3 = *(v4 + 17);
    sub_1C54AFE90(v4, v4 + 120);
    *(v4 + 144) = *v4;
    *(v4 + 160) = *(v4 + 16);
    *(v4 + 19) = v3;
  }

  sub_1C55960A4();
  sub_1C5436F54();
  sub_1C5436F54();
  free(v4);
}

uint64_t sub_1C55047E8()
{
  v4 = v0;
  v5 = *(v0 + 32);
  v6 = *(v0 + 48);
  sub_1C54AFE90(&v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E8A0);
  sub_1C55960C4();
  sub_1C5436F54();
  return v2;
}

uint64_t sub_1C5504898()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_1C55048E8(uint64_t a1, uint64_t a2, char a3)
{

  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
}

uint64_t sub_1C5504968()
{
  v2 = *(v0 + 72);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C55049A0()
{
  v2 = *(v0 + 88);

  return v2;
}

uint64_t sub_1C55049CC@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v8 = sub_1C550691C;
  v17 = sub_1C55069AC;
  v22 = MEMORY[0x1E6981218];
  v40 = 0;
  __src = v41;
  __n = 96;
  memcpy(v41, v1, sizeof(v41));
  memcpy(v42, v41, sizeof(v42));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF90);
  v23 = *(v29 - 8);
  v24 = v29 - 8;
  v6 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v27 = &v4 - v6;
  v7 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v6);
  v28 = &v4 - v7;
  v40 = &v4 - v7;
  sub_1C55066E0(v1, &v38);
  v9 = &v32;
  v33 = v1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF98);
  v11 = sub_1C5506924();
  sub_1C544B78C();
  v12 = &v39;
  sub_1C5596064();
  sub_1C5506810(v15);
  v13 = v43;
  v14 = 288;
  memcpy(v43, v12, sizeof(v43));
  v19 = v37;
  memcpy(v37, v43, sizeof(v37));
  sub_1C55066E0(v15, &v36);
  v18 = swift_allocObject();
  memcpy((v18 + 16), v15, __n);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DFA8);
  v21 = sub_1C55069B4();
  sub_1C543AECC();
  sub_1C5595B44();

  sub_1C5506A3C(v19);
  v34 = v20;
  v35 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v27, v29, v28);
  v31 = *(v23 + 8);
  v30 = v23 + 8;
  v31(v27, v29);
  (*(v23 + 16))(v27, v28, v29);
  sub_1C540EFD8(v27, v29, v25);
  v31(v27, v29);
  return (v31)(v28, v29);
}

uint64_t *sub_1C5504D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = v110;
  v51 = a2;
  v88 = a1;
  v140 = 0;
  memset(v112, 0, sizeof(v112));
  v56 = 0;
  v69 = sub_1C5595F04();
  v67 = *(v69 - 8);
  v68 = v69 - 8;
  v52 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v70 = &v14 - v52;
  v140 = v2;
  v74 = 1;
  v136 = sub_1C5596044();
  v137 = v3 & 1;
  v53 = *(v88 + 64);
  v54 = MEMORY[0x1E6981840];
  v55 = MEMORY[0x1E6981838];
  sub_1C5410F68();
  v57 = &v138;
  v77 = 0;
  sub_1C5595D14();
  v58 = __dst;
  v59 = 64;
  memcpy(__dst, v57, sizeof(__dst));
  v61 = v135;
  memcpy(v135, __dst, sizeof(v135));
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DFB8);
  v62 = sub_1C55071EC();
  sub_1C540EFD8(v61, v60, v139);
  v71 = *(v88 + 88);

  v63 = sub_1C54127B4();
  v64 = v4;
  v65 = v5;
  v66 = v6;
  sub_1C54127C8(v70);
  v72 = sub_1C5595F44();
  (*(v67 + 8))(v70, v69);

  v73 = v128;
  v128[0] = v72;
  sub_1C5595B54();
  sub_1C5410D10();
  v80 = v125;
  v125[0] = v128[1];
  v125[1] = v128[2];
  v126 = v129 & 1 & v74;
  v127 = v130;
  v75 = *(v88 + 56);
  v76 = *(v88 + 56);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BED8);
  v79 = sub_1C5413D10();
  sub_1C5410F68();
  v81 = &v131;
  sub_1C5595D14();
  sub_1C5410D10();
  v82 = v143;
  v83 = 72;
  memcpy(v143, v81, sizeof(v143));
  v89 = v124;
  memcpy(v124, v143, sizeof(v124));
  sub_1C5596014();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15BEC8);
  v86 = sub_1C5413C6C();
  v87 = sub_1C546FC00();
  v85 = MEMORY[0x1E69817E8];
  v123 = sub_1C546EEB4();
  v122 = v123;
  v90 = &v132;
  sub_1C5595E04();
  v7 = v88;
  sub_1C5410D10();
  v91 = v144;
  v92 = 74;
  memcpy(v144, v90, 0x4AuLL);
  memcpy(v121, v144, 0x4AuLL);
  sub_1C5596014();
  v93 = *v7;
  MEMORY[0x1E69E5928](v93);
  MEMORY[0x1E69E5928](v93);
  v94 = sub_1C5503F80();
  MEMORY[0x1E69E5928](v94);
  v118 = v93;
  v119 = v94;
  if (v93)
  {
    sub_1C5402C1C(&v118, v97);
    if (v119)
    {
      v96 = v97[0];
      v47 = &v118;
      v95 = v119;
      sub_1C5403328();
      v48 = sub_1C5596A34();
      MEMORY[0x1E69E5920](v95);
      MEMORY[0x1E69E5920](v96);
      sub_1C5401EF8(v47);
      v49 = v48;
      goto LABEL_7;
    }

    MEMORY[0x1E69E5920](v97[0]);
    goto LABEL_9;
  }

  if (v119)
  {
LABEL_9:
    sub_1C550728C(&v118);
    v49 = 0;
    goto LABEL_7;
  }

  sub_1C5401EF8(&v118);
  v49 = 1;
LABEL_7:
  v46 = v49;
  MEMORY[0x1E69E5920](v94);
  MEMORY[0x1E69E5920](v93);
  if (v46)
  {
    v45 = sub_1C5595E54();
  }

  else
  {
    v45 = sub_1C5595E74();
  }

  v18 = &v115;
  v115 = v45;
  v14 = *(v88 + 64);
  v15 = MEMORY[0x1E69817E8];
  v16 = MEMORY[0x1E69815C0];
  v17 = MEMORY[0x1E6981568];
  v8 = sub_1C55055EC();
  v19 = v120;
  sub_1C5505608(v18, v8 & 1, v15, v16, v87, v17, v120);
  sub_1C5410D10();
  v20 = v116;
  v21 = 72;
  memcpy(v116, v19, sizeof(v116));
  v27 = v114;
  memcpy(v114, v116, sizeof(v114));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DFC8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DFD0);
  v24 = sub_1C55072D4();
  v25 = sub_1C550737C();
  v26 = sub_1C55056A4();
  v29 = &v133;
  v28 = v121;
  sub_1C5595D64();
  sub_1C5507404();
  sub_1C5410D10();
  v30 = v117;
  v31 = 168;
  memcpy(v117, v29, sizeof(v117));
  v32 = v113;
  memcpy(v113, v117, sizeof(v113));
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DFE0);
  v38 = sub_1C550743C();
  v44 = v134;
  sub_1C540EFD8(v32, v36, v134);
  sub_1C550756C();
  v50[97] = *(v88 + 72);
  sub_1C5402BDC(v141, &v111);
  v9 = v50[97];
  v33 = v110;
  *v50 = v9;
  sub_1C54141E8();
  v106 = sub_1C5595A04();
  v107 = v10;
  v108 = v11;
  v109 = v12;
  v34 = v103;
  v103[0] = v106;
  v103[1] = v10;
  v104 = v11 & 1;
  v105 = v12;
  v43 = v112;
  v37 = MEMORY[0x1E6981148];
  v39 = MEMORY[0x1E6981138];
  sub_1C540EFD8(v103, MEMORY[0x1E6981148], v112);
  sub_1C5414260(v34);
  v35 = v101;
  memcpy(v101, v139, sizeof(v101));
  v40 = v102;
  v102[0] = v101;
  v42 = v100;
  sub_1C55075B0(v44, v100);
  v102[1] = v42;
  v41 = v99;
  sub_1C54142A8(v43, v99);
  v102[2] = v41;
  v98[0] = v60;
  v98[1] = v36;
  v98[2] = v37;
  v97[1] = v62;
  v97[2] = v38;
  v97[3] = v39;
  sub_1C540F5A0(v40, 3uLL, v98, v51);
  sub_1C5414260(v41);
  sub_1C550756C();
  sub_1C5414260(v43);
  result = v44;
  sub_1C550756C();
  return result;
}

_BYTE *sub_1C5505608@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v17 = a3;
  v16 = a4;
  sub_1C5475D2C();
  sub_1C5595084();
  sub_1C55057A4(a1, v15, a2 & 1, a3, a4, a5, a6, a7);
  result = v15;
  sub_1C550769C();
  return result;
}

uint64_t sub_1C55056CC(uint64_t *a1)
{
  v4[4] = a1;
  v2 = *a1;
  MEMORY[0x1E69E5928](*a1);
  sub_1C5504014(v2);
  v3 = sub_1C5504608(v4);
  sub_1C5596794();
  return v3();
}

uint64_t sub_1C55057A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v19 = a8;
  v16 = a1;
  v21 = a2;
  v22 = a3;
  v24 = a4;
  v25 = a5;
  v17 = a6;
  v18 = a7;
  v29 = a4;
  v28 = a5;
  v14 = *(a5 - 8);
  v15 = a5 - 8;
  v11 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v20 = &v10 - v11;
  v13 = *(v8 - 8);
  v12 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v11);
  v26 = &v10 - v12;
  (*(v13 + 16))();
  (*(v14 + 16))(v20, v16, v25);
  sub_1C55076C8(v21, v27);
  return sub_1C5505958(v26, v20, v21, v22 & 1, v23, v24, v25, MEMORY[0x1E6981E70], v19, v17, v18, MEMORY[0x1E6981E60]);
}

uint64_t sub_1C5505958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v53 = a9;
  v46 = a1;
  v42 = a2;
  v28 = a3;
  v31 = a4;
  v39 = a5;
  v47 = a6;
  v43 = a7;
  v51 = a8;
  v29 = a10;
  v35 = a11;
  v52 = a12;
  v24 = MEMORY[0x1E697E298];
  v66 = a6;
  v65 = a7;
  v64 = a8;
  v37 = *(a8 - 8);
  v38 = a8 - 8;
  v20 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v19 - v20;
  v26 = 0;
  v57 = sub_1C55954A4();
  v21 = (*(*(v57 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v26);
  v55 = &v19 - v21;
  v40 = *(v13 - 8);
  v41 = v13 - 8;
  v22 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v32 = &v19 - v22;
  v44 = *(v15 - 8);
  v45 = v15 - 8;
  v23 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v30 = &v19 - v23;
  v33 = sub_1C5595124();
  v25 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v36 = &v19 - v25;
  WitnessTable = swift_getWitnessTable();
  v60 = v33;
  v61 = v43;
  v62 = WitnessTable;
  v63 = v35;
  v56 = sub_1C5594FB4();
  v27 = (*(*(v56 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v30);
  v54 = &v19 - v27;
  (*(v44 + 16))(v16);
  sub_1C5595114();
  (*(v40 + 16))(v32, v42, v43);
  v58 = 0;
  v59 = v31;
  sub_1C5594FA4();
  (*(v37 + 16))(v48, v39, v51);
  v49 = sub_1C5410F68();
  v50 = v17;
  (*(v37 + 8))(v39, v51);
  (*(v40 + 8))(v42, v43);
  (*(v44 + 8))(v46, v47);
  sub_1C5595494();
  return sub_1C5595204();
}

unint64_t sub_1C5505E94()
{
  v2 = qword_1EC15DF00;
  if (!qword_1EC15DF00)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15DF00);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C5505EF8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = v3;
  v4 = a1[1];
  swift_unknownObjectRetain();
  *(a2 + 8) = v4;
  v5 = a1[2];
  MEMORY[0x1E69E5928](v5);
  *(a2 + 16) = v5;
  v6 = a1[3];

  *(a2 + 24) = v6;
  *(a2 + 32) = *(a1 + 32);
  v8 = a1[5];

  result = a2;
  *(a2 + 40) = v8;
  *(a2 + 48) = a1[6];
  *(a2 + 56) = a1[7];
  *(a2 + 64) = a1[8];
  return result;
}

void *sub_1C5505FD8(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a1[2]);

  return a1;
}

void *sub_1C550606C(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = v3;
  v6 = a1[1];

  result = a2;
  a2[1] = v6;
  return result;
}

unint64_t sub_1C5506124()
{
  v2 = qword_1EC15DF40;
  if (!qword_1EC15DF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DF38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DF40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55061AC()
{
  v2 = qword_1EC15DF48;
  if (!qword_1EC15DF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DF20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DF48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5506234(uint64_t a1)
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF50) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF58);
  if (!swift_getEnumCaseMultiPayload())
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF60);
    (*(*(v1 - 8) + 8))();
    v7 = a1 + v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF68) + 36);
    v2 = sub_1C5595754();
    (*(*(v2 - 8) + 8))(v7);
  }

  v5 = a1 + v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF70) + 64);
  sub_1C5412EA0(*v5, *(v5 + 8), *(v5 + 16) & 1);

  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF78) + 36);
  v3 = sub_1C5595754();
  (*(*(v3 - 8) + 8))(v6);
  return a1;
}

unint64_t sub_1C5506420()
{
  v2 = qword_1EC15DF80;
  if (!qword_1EC15DF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DF28);
    sub_1C55061AC();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DF80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C55064C8(uint64_t a1)
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF50) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF58);
  if (!swift_getEnumCaseMultiPayload())
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF60);
    (*(*(v1 - 8) + 8))();
    v9 = a1 + v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF68) + 36);
    v2 = sub_1C5595754();
    (*(*(v2 - 8) + 8))(v9);
  }

  v5 = a1 + v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF70) + 64);
  sub_1C5412EA0(*v5, *(v5 + 8), *(v5 + 16) & 1);

  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF78) + 36);
  v7 = sub_1C5595754();
  v8 = *(*(v7 - 8) + 8);
  v8(v6);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF28);
  (v8)(a1 + *(v3 + 36), v7);
  return a1;
}

uint64_t sub_1C55066E0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = v3;
  v4 = a1[1];

  *(a2 + 8) = v4;
  v5 = a1[2];

  *(a2 + 16) = v5;
  v6 = a1[3];
  MEMORY[0x1E69E5928](v6);
  *(a2 + 24) = v6;
  v7 = a1[4];

  *(a2 + 32) = v7;
  v8 = a1[5];

  *(a2 + 40) = v8;
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = a1[7];
  *(a2 + 64) = a1[8];
  *(a2 + 72) = a1[9];
  v10 = a1[10];
  sub_1C5594CF4();
  *(a2 + 80) = v10;
  v12 = a1[11];

  result = a2;
  *(a2 + 88) = v12;
  return result;
}

void *sub_1C5506810(void *a1)
{
  MEMORY[0x1E69E5920](*a1);

  MEMORY[0x1E69E5920](a1[3]);

  return a1;
}

void *sub_1C55068A0(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v5 = a1[1];

  a2[1] = v5;
  v6 = a1[2];
  MEMORY[0x1E69E5928](v6);
  result = a2;
  a2[2] = v6;
  return result;
}

unint64_t sub_1C5506924()
{
  v2 = qword_1EC15DFA0;
  if (!qword_1EC15DFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DF98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DFA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55069B4()
{
  v2 = qword_1EC15DFB0;
  if (!qword_1EC15DFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DFA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DFB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5506A3C(uint64_t a1)
{

  sub_1C5412EA0(*(a1 + 256), *(a1 + 264), *(a1 + 272) & 1);

  return a1;
}

uint64_t sub_1C5506B2C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5506B74(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5506C8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1C5506ED0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5506FE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1C55071EC()
{
  v2 = qword_1EC15DFC0;
  if (!qword_1EC15DFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DFB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DFC0);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C550728C(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  MEMORY[0x1E69E5920](a1[1]);
  return a1;
}

unint64_t sub_1C55072D4()
{
  v2 = qword_1EC15A000;
  if (!qword_1EC15A000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DFC8);
    sub_1C5413C6C();
    sub_1C546FD20();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15A000);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C550737C()
{
  v2 = qword_1EC15DFD8;
  if (!qword_1EC15DFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DFD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DFD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C550743C()
{
  v2 = qword_1EC15DFE8;
  if (!qword_1EC15DFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DFE0);
    sub_1C55072D4();
    sub_1C55074E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DFE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55074E4()
{
  v2 = qword_1EC15DFF0;
  if (!qword_1EC15DFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DFF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DFF0);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1C550756C()
{
}

__n128 sub_1C55075B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *a2 = v3;
  *(a2 + 8) = a1[1];
  *(a2 + 16) = *(a1 + 8);
  memcpy((a2 + 24), a1 + 3, 0x32uLL);
  *(a2 + 80) = a1[10];
  *(a2 + 88) = *(a1 + 22);
  *(a2 + 92) = *(a1 + 23);
  *(a2 + 96) = a1[12];
  v4 = a1[13];
  sub_1C5594CF4();
  *(a2 + 104) = v4;
  *(a2 + 112) = a1[14];
  v6 = a1[15];

  *(a2 + 120) = v6;
  *(a2 + 128) = *(a1 + 64);
  *(a2 + 136) = *(a1 + 17);
  result = *(a1 + 19);
  *(a2 + 152) = result;
  return result;
}

uint64_t sub_1C55076C8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_1C5594CF4();
  result = a2;
  *(a2 + 24) = v4;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

unint64_t sub_1C5507730()
{
  v2 = qword_1EC15E008;
  if (!qword_1EC15E008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DF68);
    sub_1C55077D8();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E008);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55077D8()
{
  v2 = qword_1EC15E010;
  if (!qword_1EC15E010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DF60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E010);
    return WitnessTable;
  }

  return v2;
}

char *sub_1C5507860(char *a1, char *a2)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF58);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF60);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF68);
    v7 = &a2[*(v3 + 36)];
    v6 = &a1[*(v3 + 36)];
    v4 = sub_1C5595754();
    (*(*(v4 - 8) + 32))(v7, v6);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_1C55079AC()
{
  v2 = qword_1EC15E020;
  if (!qword_1EC15E020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E018);
    sub_1C546FF30();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E020);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5507A50()
{
  v2 = qword_1EC15E030;
  if (!qword_1EC15E030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E028);
    sub_1C55079AC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E030);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5507AF4()
{
  v2 = qword_1EC15E038;
  if (!qword_1EC15E038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DF78);
    sub_1C5507A50();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E038);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5507B9C(uint64_t a1)
{
  sub_1C5412EA0(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF78) + 36);
  v1 = sub_1C5595754();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

char *sub_1C5507C4C(char *a1, char *a2)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF58);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF60);
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF68);
    v7 = &a2[*(v3 + 36)];
    v6 = &a1[*(v3 + 36)];
    v4 = sub_1C5595754();
    (*(*(v4 - 8) + 16))(v7, v6);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_1C5507D98(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_1C54130AC(*a1, v5, v6 & 1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  v7 = *(a1 + 24);
  sub_1C5594CF4();
  *(a2 + 24) = v7;
  v8 = *(a1 + 32);

  *(a2 + 32) = v8;
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 41) = *(a1 + 41);
  memcpy((a2 + 48), (a1 + 48), 0x29uLL);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF78) + 36);
  v2 = sub_1C5595754();
  (*(*(v2 - 8) + 16))(a2 + v9, a1 + v9);
  return a2;
}

unint64_t sub_1C5507EE0()
{
  v2 = qword_1EC15E040;
  if (!qword_1EC15E040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E000);
    sub_1C5507730();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E040);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5507F84(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF58);
  if (!swift_getEnumCaseMultiPayload())
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF60);
    (*(*(v1 - 8) + 8))(a1);
    v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF68) + 36);
    v2 = sub_1C5595754();
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

unint64_t sub_1C5508090()
{
  v2 = qword_1EC15E050;
  if (!qword_1EC15E050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E048);
    sub_1C5508138();
    sub_1C5508264();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E050);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5508138()
{
  v2 = qword_1EC15E058;
  if (!qword_1EC15E058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E060);
    sub_1C55081DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E058);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55081DC()
{
  v2 = qword_1EC15E068;
  if (!qword_1EC15E068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E070);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E068);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5508264()
{
  v2 = qword_1EC15E078;
  if (!qword_1EC15E078)
  {
    sub_1C5595644();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E078);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C55082E4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF60);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF68) + 36);
  v2 = sub_1C5595754();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_1C55083A8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF60);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF68) + 36);
  v3 = sub_1C5595754();
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  return a2;
}

unint64_t sub_1C55084A4()
{
  v2 = qword_1EC15E088;
  if (!qword_1EC15E088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E080);
    sub_1C550853C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E088);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C550853C()
{
  v2 = qword_1EC15E090;
  if (!qword_1EC15E090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E098);
    sub_1C55085E4();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E090);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55085E4()
{
  v2 = qword_1EC15E0A0;
  if (!qword_1EC15E0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E0A8);
    sub_1C5508688();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E0A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5508688()
{
  v2 = qword_1EC15E0B0;
  if (!qword_1EC15E0B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E0B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5508704(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E070);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1C550876C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E070);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E048) + 36);
  v2 = sub_1C5595644();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_1C5508830(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E070);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E060);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E048) + 36);
  v4 = sub_1C5595644();
  (*(*(v4 - 8) + 16))(a2 + v6, a1 + v6);
  return a2;
}

unint64_t sub_1C550894C()
{
  v2 = qword_1EC15E0B8;
  if (!qword_1EC15E0B8)
  {
    sub_1C5595594();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E0B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55089E4()
{
  v2 = qword_1EC15E0C0;
  if (!qword_1EC15E0C0)
  {
    sub_1C5403328();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E0C0);
    return WitnessTable;
  }

  return v2;
}

char *sub_1C5508A64(char *a1)
{
  MEMORY[0x1E69E5920](*a1);

  MEMORY[0x1E69E5920](*(a1 + 3));

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E098) + 36);
  v1 = sub_1C5595754();
  (*(*(v1 - 8) + 8))(&a1[v3]);
  return a1;
}

uint64_t sub_1C5508B50(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = v4;
  v5 = a1[1];

  *(a2 + 8) = v5;
  v6 = a1[2];

  *(a2 + 16) = v6;
  v7 = a1[3];
  MEMORY[0x1E69E5928](v7);
  *(a2 + 24) = v7;
  v8 = a1[4];

  *(a2 + 32) = v8;
  v9 = a1[5];

  *(a2 + 40) = v9;
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = a1[7];
  *(a2 + 64) = a1[8];
  *(a2 + 72) = a1[9];
  v10 = a1[10];
  sub_1C5594CF4();
  *(a2 + 80) = v10;
  v11 = a1[11];

  *(a2 + 88) = v11;
  memcpy((a2 + 96), a1 + 12, 0x29uLL);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E098) + 36);
  v2 = sub_1C5595754();
  (*(*(v2 - 8) + 16))(a2 + v12, a1 + v12);
  return a2;
}

uint64_t sub_1C5508D0C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0);
  sub_1C5595F84();

  return v1;
}

uint64_t sub_1C5508DA0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0);
  sub_1C5595F94();
  sub_1C5436F54();
}

void (*sub_1C5508E74(void *a1))(void **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v1;
  v4 = *v3;
  v1[9] = *v3;
  v5 = v3[1];
  v1[10] = v5;

  *v1 = v4;
  v1[1] = v5;
  v1[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0);
  sub_1C5595F84();
  return sub_1C5437078;
}

uint64_t sub_1C5508F4C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C5508FF8()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_1C5509040(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1C55090C8()
{
  v2 = *(v0 + 16);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1C5509104()
{
  v2 = *(v0 + 24);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t ShareAutomaticallyPickerRowView.id.getter()
{
  v2 = *(v0 + 32);
  sub_1C5594CF4();
  return v2;
}

uint64_t ShareAutomaticallyPickerRowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v15 = sub_1C550A170;
  v27 = sub_1C550B03C;
  v32 = sub_1C550B198;
  v47 = MEMORY[0x1E6981440];
  v48 = sub_1C550B6BC;
  v72 = 0;
  v36 = 0;
  v54 = sub_1C5596A04();
  v51 = *(v54 - 8);
  v52 = v54 - 8;
  v8 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v7 - v8;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D8);
  v9 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v7 - v9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0E0);
  v10 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v7 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0E8);
  v11 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v35 = &v7 - v11;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0F0);
  v55 = *(v58 - 8);
  v56 = v58 - 8;
  v12 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v7 - v12;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0F8);
  v13 = (*(*(v60 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v7 - v13;
  v14 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v7 - v13);
  v63 = &v7 - v14;
  v72 = &v7 - v14;
  v41 = __dst;
  v42 = 48;
  memcpy(__dst, v2, sizeof(__dst));
  sub_1C550A0B4(__dst, v71);
  v16 = v64;
  v64[2] = v41;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E100);
  v18 = sub_1C550AE3C();
  sub_1C5412C88();
  v22 = 1;
  sub_1C5596024();
  sub_1C550AEC4(v41);
  v20 = sub_1C5596E04();
  v19 = v3;
  *v3 = sub_1C55957E4();
  v4 = sub_1C55957F4();
  v5 = v20;
  v19[1] = v4;
  sub_1C540FCD8();
  v21 = v5;
  sub_1C54DA7DC();
  sub_1C5596B04();
  v24 = v70;
  sub_1C550AF28();
  sub_1C5595D84();
  sub_1C536B738(v25);
  sub_1C550A0B4(v41, v69);
  v39 = 64;
  v40 = 7;
  v28 = swift_allocObject();
  memcpy((v28 + 16), v41, v42);
  sub_1C550B044();
  sub_1C5595DC4();
  sub_1C5411348(v27);
  sub_1C536B738(v29);
  memcpy(v68, v41, v42);
  v30 = sub_1C5508D0C();
  v31 = (*(*v30 + 248))(v30);

  v33 = &v67;
  v67 = v31;
  sub_1C550A0B4(v41, v66);
  v34 = swift_allocObject();
  memcpy((v34 + 16), v41, v42);
  v44 = type metadata accessor for CNMeCardSharingAudience();
  v45 = sub_1C550B1A0();
  v46 = sub_1C5498C6C();
  sub_1C543AE1C();
  sub_1C5595DD4();

  sub_1C536B894(v35);
  v38 = [objc_opt_self() defaultCenter];
  v37 = *sub_1C55415F0();
  MEMORY[0x1E69E5928](v37);
  sub_1C5596A14();
  MEMORY[0x1E69E5920](v37);
  MEMORY[0x1E69E5920](v38);
  sub_1C550A0B4(v41, v65);
  v50 = swift_allocObject();
  memcpy((v50 + 16), v41, v42);
  v64[3] = v43;
  v64[4] = v44;
  v64[5] = v45;
  v64[6] = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C5443C8C();
  sub_1C5595E34();

  (*(v51 + 8))(v53, v54);
  (*(v55 + 8))(v57, v58);
  v61 = sub_1C550B6C4();
  sub_1C540EFD8(v62, v60, v63);
  sub_1C536BA00(v62);
  sub_1C536BAE0(v63, v62);
  sub_1C540EFD8(v62, v60, v59);
  sub_1C536BA00(v62);
  return sub_1C536BA00(v63);
}

uint64_t sub_1C5509AA8@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v24 = a1;
  v35 = 0;
  v34 = sub_1C550A178;
  v54 = 0;
  v53 = 0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E100);
  v41 = *(v47 - 8);
  v42 = v47 - 8;
  v13 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v24);
  v45 = &v12 - v13;
  v14 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v46 = &v12 - v14;
  v54 = &v12 - v14;
  v53 = v4;
  v15 = 1;
  v17 = sub_1C55965F4();
  v21 = v5;
  v31 = 0;
  sub_1C5439370();
  v20 = sub_1C5576C44();
  v16 = sub_1C55965F4();
  v19 = v6;
  sub_1C54398B0();
  v18 = v7;
  v22 = sub_1C55947B4();
  v23 = v8;

  MEMORY[0x1E69E5920](v20);

  v39 = v52;
  v52[0] = v22;
  v52[1] = v23;
  memcpy(__dst, v24, sizeof(__dst));
  v25 = sub_1C5508F4C();
  v26 = v9;
  v27 = v10;
  KeyPath = swift_getKeyPath();
  v50[6] = v25;
  v50[7] = v26;
  v50[8] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C578);
  sub_1C55960B4();
  v28 = v50[3];
  v29 = v50[4];
  v30 = v50[5];

  v33 = v50;
  v50[0] = v28;
  v50[1] = v29;
  v50[2] = v30;
  v36 = type metadata accessor for CNMeCardSharingAudience();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E210);
  v38 = sub_1C550C930();
  v32 = sub_1C550C9B0();
  sub_1C54141E8();
  sub_1C5596034();

  v44 = sub_1C550AE3C();
  sub_1C540EFD8(v45, v47, v46);
  v49 = *(v41 + 8);
  v48 = v41 + 8;
  v49(v45, v47);
  (*(v41 + 16))(v45, v46, v47);
  sub_1C540EFD8(v45, v47, v43);
  v49(v45, v47);
  return (v49)(v46, v47);
}

unint64_t sub_1C5509FBC()
{
  v2 = qword_1EC166D60;
  if (!qword_1EC166D60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC166D60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C550A038()
{
  v2 = qword_1EC166D68[0];
  if (!qword_1EC166D68[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC166D68);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C550A0B4(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];
  MEMORY[0x1E69E5928](v5);
  a2[2] = v5;
  v7 = a1[3];
  swift_unknownObjectRetain();
  a2[3] = v7;
  a2[4] = a1[4];
  v9 = a1[5];
  sub_1C5594CF4();
  result = a2;
  a2[5] = v9;
  return result;
}

uint64_t sub_1C550A178@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v52 = &unk_1C55CB688;
  v93 = 0;
  v77 = 0;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E230);
  v56 = *(v58 - 8);
  v57 = v58 - 8;
  v33 = (v56[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58);
  v34 = v19 - v33;
  v35 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19 - v33);
  v36 = v19 - v35;
  v37 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19 - v35);
  v61 = v19 - v37;
  v38 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19 - v37);
  v54 = v19 - v38;
  v93 = v19 - v38;
  *&v44[1] = 1;
  sub_1C55965F4();
  v43 = sub_1C55953C4();
  v40 = v4;
  v41 = v5;
  v42 = v6;
  v45 = 0;
  v39 = sub_1C5439370();
  sub_1C5576C44();
  v90 = 0;
  v91 = 0;
  v92 = *v44 & 0x100;
  v86 = sub_1C55959E4();
  v87 = v7;
  v88 = v8;
  v89 = v9;
  v47 = v83;
  v83[0] = v86;
  v83[1] = v7;
  v84 = v8 & 1 & v44[1];
  v85 = v9;
  v46 = &v82;
  v53 = 1;
  v82 = 1;
  v49 = type metadata accessor for CNMeCardSharingAudience();
  v51 = sub_1C550C930();
  v48 = MEMORY[0x1E6981148];
  v50 = MEMORY[0x1E6981138];
  v10 = sub_1C55055EC();
  sub_1C550A764(v46, v10 & 1, v48, v49, v50, v51, v61);
  sub_1C5414260(v47);
  v78 = v48;
  v79 = v49;
  v80 = v50;
  v81 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v61, v58, v54);
  v59 = v56[1];
  v60 = v56 + 1;
  v59(v61, v58);
  v77 = v61;
  *&v23[1] = 1;
  sub_1C55965F4();
  v22 = sub_1C55953C4();
  v19[1] = v11;
  v20 = v12;
  v21 = v13;
  sub_1C5576C44();
  v74 = 0;
  v75 = 0;
  v76 = *v23 & 0x100;
  v70 = sub_1C55959E4();
  v71 = v14;
  v72 = v15;
  v73 = v16;
  v27 = v67;
  v67[0] = v70;
  v67[1] = v14;
  v68 = v15 & 1 & v23[1];
  v69 = v16;
  v26 = &v66;
  v30 = 2;
  v66 = 2;
  v24 = MEMORY[0x1E6981148];
  v25 = MEMORY[0x1E6981138];
  v17 = sub_1C55055EC();
  sub_1C550A764(v26, v17 & 1, v24, v49, v25, v51, v36);
  sub_1C5414260(v27);
  sub_1C540EFD8(v36, v58, v61);
  v59(v36, v58);
  v29 = v56[2];
  v28 = v56 + 2;
  v29(v36, v54, v58);
  v31 = v65;
  v65[0] = v36;
  v29(v34, v61, v58);
  v65[1] = v34;
  v64[0] = v58;
  v64[1] = v58;
  v62 = OpaqueTypeConformance2;
  v63 = OpaqueTypeConformance2;
  sub_1C540F5A0(v31, v30, v64, v32);
  v59(v34, v58);
  v59(v36, v58);
  v59(v61, v58);
  return (v59)(v54, v58);
}

void *sub_1C550A764@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v56 = a6;
  v57 = a5;
  v58 = a4;
  v59 = a3;
  v60 = a1;
  v61 = a7;
  v62 = a2;
  v67 = a3;
  v66 = a4;
  if (sub_1C550BE94(26, 0, 0))
  {
    v54 = sub_1C5595694();
    v7 = *(*(v54 - 8) + 64);
    v55 = v17;
    v48 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v17);
    v53 = v17 - v48;
    v49 = *(v8 - 8);
    v50 = v49;
    v52 = v17;
    MEMORY[0x1EEE9AC00](v17);
    v51 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v50 + 16))();
    sub_1C550C13C(v51, v62 & 1, v58, v53);
    MEMORY[0x1C6946950](v53, v59, v54, v57);
    sub_1C550C1D0(v53, v58);
    return v55;
  }

  else
  {
    v38 = 255;
    v33 = sub_1C5595274();
    WitnessTable = swift_getWitnessTable();
    v20 = sub_1C55955B4();
    v41 = 0;
    v21 = sub_1C5595214();
    v11 = *(*(v21 - 8) + 64);
    v22 = v17;
    v23 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](0);
    v32 = v17 - v23;
    v24 = v17 - v23;
    v36 = sub_1C5595264();
    v25 = v36;
    v12 = *(*(v36 - 8) + 64);
    v37 = v17;
    v26 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v17);
    v35 = v17 - v26;
    v29 = *(v13 - 8);
    v27 = *(v29 + 16);
    v28 = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v27();
    v30 = *(v29 + 56);
    v31 = (v29 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    (v30)(v35, 0, 1, v58);
    sub_1C5595D44();
    sub_1C550BECC(v35, v58);
    v42 = sub_1C5596A94();
    v39 = v42;
    v65 = v56;
    v40 = swift_getWitnessTable();
    v43 = sub_1C5595274();
    v44 = sub_1C5595264();
    v14 = *(*(v44 - 8) + 64);
    v45 = v17;
    v46 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v17);
    v47 = v17 - v46;
    if (v15)
    {
      (v27)(v47, v60, v58);
      v18 = 0;
      v19 = 1;
      v30(v47);
      (*(*(v39 - 8) + 56))(v47, v18, v19);
    }

    else
    {
      (*(*(v39 - 8) + 56))(v47, 1);
    }

    v16 = swift_getWitnessTable();
    v63 = v57;
    v64 = v16;
    v17[1] = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1C5595D44();
    sub_1C550BF70(v47, v58, v39);
    sub_1C550C04C(v24, v59, v58, v25, v20, v21);
    return v22;
  }
}

unint64_t sub_1C550AE3C()
{
  v2 = qword_1EC15E108;
  if (!qword_1EC15E108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E100);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E108);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C550AEC4(uint64_t a1)
{

  MEMORY[0x1E69E5920](*(a1 + 16));
  swift_unknownObjectRelease();

  return a1;
}

unint64_t sub_1C550AF28()
{
  v2 = qword_1EC15E118;
  if (!qword_1EC15E118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E0D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E118);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C550AFB0(void *__src)
{
  v4 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_1C5508D0C();
  (*(*v2 + 544))(v2);
}

unint64_t sub_1C550B044()
{
  v2 = qword_1EC15E128;
  if (!qword_1EC15E128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E0E0);
    sub_1C550AF28();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E128);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C550B0E8(uint64_t *a1, uint64_t *a2, void *__src)
{
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v9 = *a1;
  v8 = *a2;
  v4 = v8;
  v7 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v5 = sub_1C5508D0C();
  (*(*v5 + 552))(v4);
}

unint64_t sub_1C550B1A0()
{
  v2 = qword_1EC15E130;
  if (!qword_1EC15E130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E0E8);
    sub_1C550B044();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E130);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C550B244(uint64_t a1, __int128 *a2)
{
  v29 = a2;
  v28 = a1;
  v38 = 0;
  v50 = 0;
  v49 = 0;
  v27 = 0;
  v35 = sub_1C5594C74();
  v30 = v35;
  v31 = *(v35 - 8);
  v34 = v31;
  v32 = v31;
  v2 = MEMORY[0x1EEE9AC00](v28);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v4;
  v50 = v2;
  v49 = v5;
  v6 = sub_1C54B05F8();
  (*(v34 + 16))(v4, v6, v35);
  v40 = sub_1C5594C54();
  v36 = v40;
  v39 = sub_1C5596944();
  v37 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v41 = sub_1C5596E04();
  if (os_log_type_enabled(v40, v39))
  {
    v7 = v27;
    v18 = sub_1C5596A74();
    v14 = v18;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v16 = 0;
    v19 = sub_1C5419DC0(0);
    v17 = v19;
    v20 = sub_1C5419DC0(v16);
    v45 = v18;
    v44 = v19;
    v43 = v20;
    v21 = 0;
    v22 = &v45;
    sub_1C5419E14(0, &v45);
    sub_1C5419E14(v21, v22);
    v42 = v41;
    v23 = v12;
    MEMORY[0x1EEE9AC00](v12);
    v24 = &v12[-6];
    v12[-4] = v8;
    v12[-3] = &v44;
    v12[-2] = &v43;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v26 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v36, v37, "Updating Sharing Audience.", v14, 2u);
      v12[1] = 0;
      sub_1C5419E74(v17);
      sub_1C5419E74(v20);
      sub_1C5596A54();

      v13 = v26;
    }
  }

  else
  {

    v13 = v27;
  }

  (*(v32 + 8))(v33, v30);
  v9 = *v29;
  v10 = v29[1];
  v48 = v29[2];
  v47 = v10;
  v46 = v9;
  v12[0] = sub_1C5508D0C();
  (*(*v12[0] + 544))(v12[0]);
}

unint64_t sub_1C550B6C4()
{
  v2 = qword_1EC15E148;
  if (!qword_1EC15E148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E0F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E148);
    return WitnessTable;
  }

  return v2;
}

uint64_t ShareAutomaticallyPickerRowView.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v23 = a2;
  v41 = a1;
  v54 = 0;
  memset(__b, 0, sizeof(__b));
  v52 = 0;
  v24 = 0;
  v25 = sub_1C55962E4();
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v29 = v10 - v28;
  v30 = sub_1C5594994();
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  v33 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v34 = v10 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E150);
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v41);
  v42 = v10 - v38;
  v54 = v10 - v38;
  v52 = v2;
  v39 = [objc_opt_self() currentEnvironment];
  v40 = [v39 nicknameProvider];
  MEMORY[0x1E69E5920](v39);
  __b[3] = v40;
  v44 = v41[3];
  v45 = v41[4];
  __swift_project_boxed_opaque_existential_0(v41, v44);
  sub_1C550A038();
  v3 = v43;
  sub_1C5596F24();
  v46 = v3;
  v47 = v3;
  if (v3)
  {
    v10[2] = v47;
    v10[0] = v47;
    __swift_destroy_boxed_opaque_existential_0(v41);
    return swift_unknownObjectRelease();
  }

  else
  {
    v4 = sub_1C5596D74();
    v19 = 0;
    v20 = v4;
    v21 = v5;
    v22 = 0;
    v48 = v4;
    v49 = v5;
    if (v5)
    {
      v50 = v48;
      v51 = v49;
    }

    else
    {
      sub_1C5594984();
      v50 = sub_1C5594944();
      v51 = v6;
      (*(v31 + 8))(v34, v30);
      if (v49)
      {
        sub_1C5401ECC();
      }
    }

    v18 = __b;
    __b[4] = v50;
    __b[5] = v51;
    v11 = v41[3];
    v10[3] = v41[4];
    __swift_project_boxed_opaque_existential_0(v41, v11);
    sub_1C5596F14();
    v12 = sub_1C55962D4();
    v16 = *(v26 + 8);
    v15 = v26 + 8;
    v16(v29, v25);
    __b[2] = RUIDecodingUserInfo.account.getter();
    MEMORY[0x1E69E5920](v12);
    v14 = v41[3];
    v13 = v41[4];
    __swift_project_boxed_opaque_existential_0(v41, v14);
    sub_1C5596F14();
    v17 = sub_1C55962D4();
    v16(v29, v25);
    RUIDecodingUserInfo.nameAndPhotoSharingViewModel.getter();
    __b[0] = sub_1C5436D54();
    __b[1] = v7;
    v8 = MEMORY[0x1E69E5920](v17);
    (*(v36 + 8))(v42, v35, v8);
    sub_1C550A0B4(v18, v23);
    __swift_destroy_boxed_opaque_existential_0(v41);
    return sub_1C550AEC4(v18);
  }
}

uint64_t sub_1C550BD94@<X0>(uint64_t *a1@<X8>)
{
  result = ShareAutomaticallyPickerRowView.id.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1C550BECC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t sub_1C550BF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(*(*(a3 - 8) + 48))(a1, 1))
  {
    v4 = *(a2 - 8);
    if (!(*(v4 + 48))(a1, 1))
    {
      (*(v4 + 8))(a1, a2);
    }
  }

  return a1;
}

uint64_t sub_1C550C04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(*(a2 - 8) + 8))();
  v10 = *(a6 + 36);
  v11 = *(a3 - 8);
  if (!(*(v11 + 48))(a1 + v10, 1))
  {
    (*(v11 + 8))(a1 + v10, a3);
  }

  return a1;
}

uint64_t sub_1C550C13C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = sub_1C5595694();
  *(a4 + *(result + 36)) = a2;
  return result;
}

unint64_t sub_1C550C23C()
{
  v2 = qword_1EC15E158;
  if (!qword_1EC15E158)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E158);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C550C2D0()
{
  v2 = qword_1EC15E160;
  if (!qword_1EC15E160)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E160);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C550C364()
{
  v2 = qword_1EC15E168;
  if (!qword_1EC15E168)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E168);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C550C444(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C550C55C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1C550C78C()
{
  v2 = qword_1EC167170[0];
  if (!qword_1EC167170[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC167170);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C550C820()
{
  v2 = qword_1EC167300;
  if (!qword_1EC167300)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC167300);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C550C8B4()
{
  v2 = qword_1EC167308[0];
  if (!qword_1EC167308[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC167308);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C550C930()
{
  v2 = qword_1EC15E218;
  if (!qword_1EC15E218)
  {
    type metadata accessor for CNMeCardSharingAudience();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E218);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C550C9B0()
{
  v2 = qword_1EC15E220;
  if (!qword_1EC15E220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E210);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E220);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C550CA84(uint64_t a1)
{
  sub_1C5594B14();
  MEMORY[0x1E69E5928](a1);
  *(v1 + 16) = a1;
  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1C550CAFC()
{
  v41 = 0;
  v49 = 0;
  v28 = 0;
  v29 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v30 = &v11 - v29;
  v38 = sub_1C5594C74();
  v32 = v38;
  v33 = *(v38 - 8);
  v37 = v33;
  v34 = v33;
  v35 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v0 = &v11 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v0;
  v49 = v1;
  v2 = sub_1C54B05F8();
  (*(v37 + 16))(v0, v2, v38);
  v43 = sub_1C5594C54();
  v39 = v43;
  v42 = sub_1C5596974();
  v40 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v44 = sub_1C5596E04();
  if (os_log_type_enabled(v43, v42))
  {
    v3 = v28;
    v19 = sub_1C5596A74();
    v15 = v19;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v17 = 0;
    v20 = sub_1C5419DC0(0);
    v18 = v20;
    v21 = sub_1C5419DC0(v17);
    v48 = v19;
    v47 = v20;
    v46 = v21;
    v22 = 0;
    v23 = &v48;
    sub_1C5419E14(0, &v48);
    sub_1C5419E14(v22, v23);
    v45 = v44;
    v24 = &v11;
    MEMORY[0x1EEE9AC00](&v11);
    v25 = &v11 - 6;
    *(&v11 - 4) = v4;
    *(&v11 - 3) = &v47;
    *(&v11 - 2) = &v46;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v27 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v39, v40, "Syncing me card profile picture to Apple Account server...", v15, 2u);
      v13 = 0;
      sub_1C5419E74(v18);
      sub_1C5419E74(v21);
      sub_1C5596A54();

      v14 = v27;
    }
  }

  else
  {

    v14 = v28;
  }

  (*(v34 + 8))(v36, v32);
  sub_1C55967F4();
  v12 = 0;
  v5 = sub_1C5596814();
  (*(*(v5 - 8) + 56))(v30, 0, 1);

  v6 = swift_allocObject();
  v7 = v31;
  v8 = v12;
  v9 = v30;
  v6[2] = v12;
  v6[3] = v8;
  v6[4] = v7;
  sub_1C54061EC(v8, v8, v9, &unk_1C55B5548, v6, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1C550CFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[46] = a4;
  v4[20] = v4;
  v4[21] = 0;
  v4[26] = 0;
  v4[27] = 0;
  v4[28] = 0;
  v4[33] = 0;
  v4[39] = 0;
  v4[18] = 0;
  v4[19] = 0;
  v4[40] = 0;
  v5 = sub_1C5594C74();
  v4[47] = v5;
  v4[48] = *(v5 - 8);
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[21] = a4;

  return MEMORY[0x1EEE6DFA0](sub_1C550D134, 0, 0);
}

uint64_t sub_1C550D134()
{
  *(v0 + 160) = v0;
  v44 = [objc_opt_self() defaultStore];
  *(v0 + 424) = v44;
  if (!v44)
  {
    goto LABEL_14;
  }

  v1 = *(v43 + 368);
  *(v43 + 208) = v44;
  v41 = *(v1 + 16);
  MEMORY[0x1E69E5928](v41);
  v42 = [v44 aida:v41 accountForiCloudAccount:?];
  *(v43 + 432) = v42;
  MEMORY[0x1E69E5920](v41);
  if (!v42)
  {
    MEMORY[0x1E69E5920](v44);
LABEL_14:
    v8 = *(v43 + 392);
    v21 = *(v43 + 376);
    v20 = *(v43 + 384);
    v9 = sub_1C54B05F8();
    (*(v20 + 16))(v8, v9, v21);
    log = sub_1C5594C54();
    v22 = sub_1C5596954();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v24 = sub_1C5596E04();
    if (os_log_type_enabled(log, v22))
    {
      v16 = sub_1C5596A74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v17 = sub_1C5419DC0(0);
      v18 = sub_1C5419DC0(0);
      *(v43 + 176) = v16;
      *(v43 + 184) = v17;
      *(v43 + 192) = v18;
      sub_1C5419E14(0, (v43 + 176));
      sub_1C5419E14(0, (v43 + 176));
      *(v43 + 200) = v24;
      v19 = swift_task_alloc();
      v19[2] = v43 + 176;
      v19[3] = v43 + 184;
      v19[4] = v43 + 192;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();

      _os_log_impl(&dword_1C5355000, log, v22, "ACAccountStore or appleAccount is nil. Unable to update profile photo with setup service...", v16, 2u);
      sub_1C5419E74(v17);
      sub_1C5419E74(v18);
      sub_1C5596A54();
    }

    v14 = *(v43 + 392);
    v15 = *(v43 + 376);
    v13 = *(v43 + 384);
    v10 = MEMORY[0x1E69E5920](log);
    (*(v13 + 8))(v14, v15, v10);
    goto LABEL_17;
  }

  *(v43 + 216) = v42;
  sub_1C5500480();
  MEMORY[0x1E69E5928](v44);
  MEMORY[0x1E69E5928](v42);
  v38 = *MEMORY[0x1E698B7C0];
  MEMORY[0x1E69E5928](*MEMORY[0x1E698B7C0]);
  v2 = sub_1C5596574();
  v39 = sub_1C54FEA68(v44, v42, v2, v3);
  *(v43 + 440) = v39;
  MEMORY[0x1E69E5920](v38);
  *(v43 + 224) = v39;
  sub_1C54118E0();
  MEMORY[0x1E69E5928](v39);
  v4 = sub_1C54FEAC0(v39);
  v40 = v4;
  *(v43 + 448) = v4;
  if (v4)
  {
    *(v43 + 264) = v4;
    *(v43 + 16) = *(v43 + 160);
    *(v43 + 56) = v43 + 272;
    *(v43 + 24) = sub_1C550DB50;
    v37 = swift_continuation_init();
    *(v43 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E248);
    *(v43 + 112) = v37;
    *(v43 + 80) = MEMORY[0x1E69E9820];
    *(v43 + 88) = 1107296256;
    *(v43 + 92) = 0;
    *(v43 + 96) = sub_1C550EA20;
    *(v43 + 104) = &block_descriptor_15;
    [v40 meCardWithVisualIdentity_];

    return MEMORY[0x1EEE6DEC8](v43 + 16);
  }

  v5 = *(v43 + 416);
  v33 = *(v43 + 376);
  v32 = *(v43 + 384);
  v6 = sub_1C54B05F8();
  (*(v32 + 16))(v5, v6, v33);
  oslog = sub_1C5594C54();
  v34 = sub_1C5596954();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v36 = sub_1C5596E04();
  if (os_log_type_enabled(oslog, v34))
  {
    buf = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v29 = sub_1C5419DC0(0);
    v30 = sub_1C5419DC0(0);
    *(v43 + 232) = buf;
    *(v43 + 240) = v29;
    *(v43 + 248) = v30;
    sub_1C5419E14(0, (v43 + 232));
    sub_1C5419E14(0, (v43 + 232));
    *(v43 + 256) = v36;
    v31 = swift_task_alloc();
    v31[2] = v43 + 232;
    v31[3] = v43 + 240;
    v31[4] = v43 + 248;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();

    _os_log_impl(&dword_1C5355000, oslog, v34, "Creating AAUIProfilePictureStore failed. Unable to update profile photo with setup service...", buf, 2u);
    sub_1C5419E74(v29);
    sub_1C5419E74(v30);
    sub_1C5596A54();
  }

  v26 = *(v43 + 416);
  v27 = *(v43 + 376);
  v25 = *(v43 + 384);
  v7 = MEMORY[0x1E69E5920](oslog);
  (*(v25 + 8))(v26, v27, v7);
  MEMORY[0x1E69E5920](v39);
  MEMORY[0x1E69E5920](v42);
  MEMORY[0x1E69E5920](v44);
LABEL_17:

  v11 = *(*(v43 + 160) + 8);

  return v11();
}

uint64_t sub_1C550DB50()
{
  *(*v0 + 160) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C550DC4C, 0, 0);
}

uint64_t sub_1C550DC4C()
{
  *(v0 + 160) = v0;
  v68 = *(v0 + 272);
  if (!v68)
  {
    goto LABEL_17;
  }

  *(v67 + 312) = v68;
  v66 = [v68 imageData];
  if (v66)
  {
    v62 = sub_1C55948D4();
    v63 = v1;
    MEMORY[0x1E69E5920](v66);
    v64 = v62;
    v65 = v63;
  }

  else
  {
    v64 = 0;
    v65 = 0xF000000000000000;
  }

  if ((v65 & 0xF000000000000000) == 0xF000000000000000)
  {
    MEMORY[0x1E69E5920](v68);
LABEL_17:
    v20 = *(v67 + 400);
    v37 = *(v67 + 376);
    v36 = *(v67 + 384);
    v21 = sub_1C54B05F8();
    (*(v36 + 16))(v20, v21, v37);
    log = sub_1C5594C54();
    v38 = sub_1C5596944();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v40 = sub_1C5596E04();
    if (os_log_type_enabled(log, v38))
    {
      v32 = sub_1C5596A74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v33 = sub_1C5419DC0(0);
      v34 = sub_1C5419DC0(0);
      *(v67 + 280) = v32;
      *(v67 + 288) = v33;
      *(v67 + 296) = v34;
      sub_1C5419E14(0, (v67 + 280));
      sub_1C5419E14(0, (v67 + 280));
      *(v67 + 304) = v40;
      v35 = swift_task_alloc();
      v35[2] = v67 + 280;
      v35[3] = v67 + 288;
      v35[4] = v67 + 296;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();

      _os_log_impl(&dword_1C5355000, log, v38, "No profile image in me card, clearing server image...", v32, 2u);
      sub_1C5419E74(v33);
      sub_1C5419E74(v34);
      sub_1C5596A54();
    }

    v29 = *(v67 + 440);
    v26 = *(v67 + 400);
    v27 = *(v67 + 376);
    v28 = *(v67 + 448);
    v30 = *(v67 + 432);
    v31 = *(v67 + 424);
    v25 = *(v67 + 384);
    v22 = MEMORY[0x1E69E5920](log);
    (*(v25 + 8))(v26, v27, v22);
    [v28 setProfilePictureForAccountOwner:0 cropRect:?];
    MEMORY[0x1E69E5920](v28);
    MEMORY[0x1E69E5920](v29);
    MEMORY[0x1E69E5920](v30);
    MEMORY[0x1E69E5920](v31);
    goto LABEL_20;
  }

  *(v67 + 144) = v64;
  *(v67 + 152) = v65;
  sub_1C5418C84();
  sub_1C544DE30(v64, v65);
  v2 = sub_1C54493D0(v64, v65);
  v61 = v2;
  if (!v2)
  {
    sub_1C544DEAC(v64, v65);
    MEMORY[0x1E69E5920](v68);
    goto LABEL_17;
  }

  *(v67 + 320) = v2;
  *(v67 + 328) = 0;
  [v68 cropRect];
  v60 = sub_1C54FF9D4(v3, v4, v5, v6);
  MEMORY[0x1E69E5928](v68);
  if (v60)
  {
    MEMORY[0x1E69E5920](v68);
  }

  else
  {
    [v68 cropRect];
    v59 = sub_1C5449B2C(v7, v8, v9, v10);
    MEMORY[0x1E69E5920](v68);
    if (!v59)
    {
      sub_1C54FFF88();
      [v68 cropRect];
      v15 = sub_1C54FFA14(v11, v12, v13, v14);
      v16 = *(v67 + 328);
      *(v67 + 328) = v15;
      MEMORY[0x1E69E5920](v16);
    }
  }

  v17 = *(v67 + 408);
  v55 = *(v67 + 376);
  v52 = *(v67 + 448);
  v54 = *(v67 + 384);
  MEMORY[0x1E69E5928](v61);
  v53 = *(v67 + 328);
  MEMORY[0x1E69E5928](v53);
  [v52 setProfilePictureForAccountOwner:v61 cropRect:v53];
  MEMORY[0x1E69E5920](v53);
  MEMORY[0x1E69E5920](v61);
  v18 = sub_1C54B05F8();
  (*(v54 + 16))(v17, v18, v55);
  oslog = sub_1C5594C54();
  v56 = sub_1C5596944();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v58 = sub_1C5596E04();
  if (os_log_type_enabled(oslog, v56))
  {
    buf = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v49 = sub_1C5419DC0(0);
    v50 = sub_1C5419DC0(0);
    *(v67 + 336) = buf;
    *(v67 + 344) = v49;
    *(v67 + 352) = v50;
    sub_1C5419E14(0, (v67 + 336));
    sub_1C5419E14(0, (v67 + 336));
    *(v67 + 360) = v58;
    v51 = swift_task_alloc();
    v51[2] = v67 + 336;
    v51[3] = v67 + 344;
    v51[4] = v67 + 352;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();

    _os_log_impl(&dword_1C5355000, oslog, v56, "Successfully synced me card to Apple Account server", buf, 2u);
    sub_1C5419E74(v49);
    sub_1C5419E74(v50);
    sub_1C5596A54();
  }

  v45 = *(v67 + 440);
  v42 = *(v67 + 408);
  v43 = *(v67 + 376);
  v44 = *(v67 + 448);
  v46 = *(v67 + 432);
  v47 = *(v67 + 424);
  v41 = *(v67 + 384);
  v19 = MEMORY[0x1E69E5920](oslog);
  (*(v41 + 8))(v42, v43, v19);
  sub_1C5401EF8((v67 + 328));
  MEMORY[0x1E69E5920](v61);
  sub_1C544DEAC(v64, v65);
  MEMORY[0x1E69E5920](v68);
  MEMORY[0x1E69E5920](v44);
  MEMORY[0x1E69E5920](v45);
  MEMORY[0x1E69E5920](v46);
  MEMORY[0x1E69E5920](v47);
LABEL_20:

  v23 = *(*(v67 + 160) + 8);

  return v23();
}

double sub_1C550EA20(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a2);
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  MEMORY[0x1E69E5928](a2);
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E250);
  sub_1C5405D08(v5, &v7, v2);
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

uint64_t sub_1C550EAC4@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC14AppleAccountUI27AppleAccountHeaderViewModel___observationRegistrar;
  v2 = sub_1C5594B24();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C550EB30(void *a1)
{
  v6 = a1;
  v15 = 0;
  v13 = 0;
  v4 = *a1;
  v11 = sub_1C5594B24();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v1 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v4 - v2;
  v15 = v1;
  v14 = *(v4 + *MEMORY[0x1E69E77B0] + 8);
  v13 = v5;
  (*(v8 + 16))(&v4 - v2, v5 + OBJC_IVAR____TtC14AppleAccountUI27AppleAccountHeaderViewModel___observationRegistrar);
  v7 = &v12;
  v12 = v5;
  sub_1C550F07C();
  sub_1C5594AE4();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_1C550ECA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a5;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v32 = a4;
  v13 = *a1;
  v11 = sub_1C5594B24();
  v14 = *(v11 - 8);
  v12 = v11 - 8;
  v5 = MEMORY[0x1EEE9AC00](v18);
  v15 = v10 - v6;
  v31 = v5;
  v30 = *(v13 + *MEMORY[0x1E69E77B0] + 8);
  v28 = v7;
  v29 = v20;
  v27 = v16;
  (*(v14 + 16))(v10 - v6, v16 + OBJC_IVAR____TtC14AppleAccountUI27AppleAccountHeaderViewModel___observationRegistrar);
  v23 = &v26;
  v26 = v16;
  sub_1C550F07C();
  v8 = v22;
  sub_1C5594AD4();
  v24 = v8;
  v25 = v8;
  if (v8)
  {
    v10[1] = v25;
  }

  return (*(v14 + 8))(v15, v11);
}

uint64_t sub_1C550EEB8()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  v3 = OBJC_IVAR____TtC14AppleAccountUI27AppleAccountHeaderViewModel___observationRegistrar;
  v1 = sub_1C5594B24();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_1C550EFA4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C550CFDC(a1, v6, v7, v8);
}

unint64_t sub_1C550F07C()
{
  v2 = qword_1EC15E240;
  if (!qword_1EC15E240)
  {
    type metadata accessor for AppleAccountHeaderViewModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E240);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for AppleAccountHeaderViewModel()
{
  v1 = qword_1EC1674B0;
  if (!qword_1EC1674B0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1C550F18C()
{
  updated = sub_1C5594B24();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1C550F30C()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_outcome);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1C550F3C8(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_outcome);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1C550F434@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x70))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C550F4D4(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x78))(v4);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1C550F648()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_stage);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C550F720(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_stage);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C550F7BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x88))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C550F85C(uint64_t *a1, void *a2)
{
  sub_1C5402C1C(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x90))(v5);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

uint64_t sub_1C550FA48()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_info);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C550FB88(uint64_t a1)
{
  sub_1C5594CF4();
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_info);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1C550FC08@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xA0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C550FCA8(uint64_t *a1, void *a2)
{
  sub_1C540955C(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xA8))(v5);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

id sub_1C550FE78()
{
  v3 = (v0 + OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_error);
  swift_beginAccess();
  v4 = *v3;
  v1 = *v3;
  swift_endAccess();
  return v4;
}

void sub_1C550FF78(void *a1)
{
  v2 = a1;
  v4 = (v1 + OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_error);
  swift_beginAccess();
  v3 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_1C550FFF8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xB8))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C5510098(id *a1, void *a2)
{
  sub_1C5511298(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xC0))(v5);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

char *WelcomeFlowResult.init(outcome:stage:info:error:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = 0;
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  *OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_info = 0;
  *&v19[OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_error] = 0;
  *&v19[OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_outcome] = a1;
  MEMORY[0x1E69E5928](a2);
  *&v19[OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_stage] = a2;
  sub_1C5594CF4();
  v7 = &v19[OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_info];
  swift_beginAccess();
  *v7 = a3;

  swift_endAccess();
  v8 = v19;
  v4 = a4;
  v9 = &v8[OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_error];
  swift_beginAccess();
  v5 = *v9;
  *v9 = a4;

  swift_endAccess();
  v14.receiver = v19;
  v14.super_class = type metadata accessor for WelcomeFlowResult();
  v13 = objc_msgSendSuper2(&v14, sel_init);
  MEMORY[0x1E69E5928](v13);
  v19 = v13;

  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](v19);
  return v13;
}

id WelcomeFlowResult.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WelcomeFlowResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WelcomeFlowAction.description.getter()
{
  v12 = *(v0 + 8);
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      MEMORY[0x1E69E5928](v12);
      sub_1C5596DF4();
      v3 = sub_1C55965F4();
      MEMORY[0x1C6947980](v3);

      type metadata accessor for AAUIWelcomeFlowStage();
      sub_1C5596DB4();
      v4 = sub_1C55965F4();
      MEMORY[0x1C6947980](v4);

      sub_1C5594CF4();
      sub_1C5401ECC();
      v9 = sub_1C55965D4();
      MEMORY[0x1E69E5920](v12);
      return v9;
    }

    else
    {
      MEMORY[0x1E69E5928](v12);
      sub_1C5596DF4();
      v5 = sub_1C55965F4();
      MEMORY[0x1C6947980](v5);

      type metadata accessor for AAUIWelcomeFlowStage();
      sub_1C5596DB4();
      v6 = sub_1C55965F4();
      MEMORY[0x1C6947980](v6);

      sub_1C5594CF4();
      sub_1C5401ECC();
      v8 = sub_1C55965D4();
      MEMORY[0x1E69E5920](v12);
      return v8;
    }
  }

  else
  {
    MEMORY[0x1E69E5928](v12);
    sub_1C5596DF4();
    v1 = sub_1C55965F4();
    MEMORY[0x1C6947980](v1);

    type metadata accessor for AAUIWelcomeFlowStage();
    sub_1C5596DB4();
    v2 = sub_1C55965F4();
    MEMORY[0x1C6947980](v2);

    sub_1C5594CF4();
    sub_1C5401ECC();
    v10 = sub_1C55965D4();
    MEMORY[0x1E69E5920](v12);
    return v10;
  }
}

uint64_t sub_1C5510E6C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v4 = *a1 + 253;
    }

    else
    {
      v2 = *(a1 + 16) ^ 0xFF;
      if (v2 >= 0xFD)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5510F64(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 17);
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    *(result + 16) = 0;
    if (a3 >= 0xFE)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for WelcomeFlowOutcome()
{
  v4 = qword_1EC15E2E8;
  if (!qword_1EC15E2E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15E2E8);
      return v1;
    }
  }

  return v4;
}

void *sub_1C5511298(id *a1, void *a2)
{
  v4 = *a1;
  v2 = *a1;
  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_1C55112FC@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_1C5596404();
  a1[4] = &off_1F447CD58;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1C55969B4();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

uint64_t sub_1C55114C8(uint64_t a1)
{
  v22 = a1;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v31 = 0;
  v23 = sub_1C5594BC4();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v7 - v26;
  v28 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v29 = &v7 - v28;
  v42 = &v7 - v28;
  v41 = v4;
  v40 = v1;
  sub_1C5444FC0(v4, v35);
  MEMORY[0x1E69E5928](v30);
  if (v36)
  {
    sub_1C5458604(v35, &__dst);
  }

  else
  {
    v21 = [v30 traitCollection];
    v38 = sub_1C5511888();
    v39 = &off_1F447CD40;
    __dst = v21;
    if (v36)
    {
      sub_1C544435C(v35);
    }
  }

  MEMORY[0x1E69E5920](v30);
  p_dst = &__dst;
  v10 = v38;
  v9 = v39;
  __swift_project_boxed_opaque_existential_0(&__dst, v38);
  (v9[1])(v10);
  v13 = v38;
  v12 = v39;
  __swift_project_boxed_opaque_existential_0(p_dst, v38);
  v5 = v12[2];
  v16 = &v32;
  v5(v13);
  v15 = v33;
  v14 = v34;
  __swift_project_boxed_opaque_existential_0(v16, v33);
  v17 = (*(v14 + 8))(v15);
  v31 = v17 & 1;
  __swift_destroy_boxed_opaque_existential_0(v16);
  (*(v24 + 104))(v27, *MEMORY[0x1E69C59D0], v23);
  sub_1C55118EC();
  v20 = sub_1C5596E24();
  v18 = *(v24 + 8);
  v19 = v24 + 8;
  v18(v27, v23);
  if (v20)
  {
    v8 = v17;
  }

  else
  {
    v8 = 0;
  }

  v7 = v8;
  v18(v29, v23);
  __swift_destroy_boxed_opaque_existential_0(&__dst);
  return v7 & 1;
}

unint64_t sub_1C5511888()
{
  v2 = qword_1EC15E2F0;
  if (!qword_1EC15E2F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E2F0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C55118EC()
{
  v2 = qword_1EC15E2F8;
  if (!qword_1EC15E2F8)
  {
    sub_1C5594BC4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E2F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C551196C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v107 = a1;
  v112 = a2;
  v108 = a3;
  v109 = a4;
  v110 = a5;
  v111 = a6;
  v113 = a7;
  v96 = sub_1C5499100;
  v97 = sub_1C5473EFC;
  v98 = sub_1C545C6D4;
  v99 = sub_1C545C6D4;
  v100 = sub_1C5473FA4;
  v101 = sub_1C5499100;
  v102 = sub_1C5473EFC;
  v103 = sub_1C545C6D4;
  v104 = sub_1C545C6D4;
  v105 = sub_1C5473FA4;
  v138 = 0;
  v139 = 0;
  v136 = 0;
  v137 = 0;
  v134 = 0;
  v135 = 0;
  v133 = 0;
  v132 = 0;
  v106 = 0;
  v114 = sub_1C5594C74();
  v115 = *(v114 - 8);
  v116 = v114 - 8;
  v118 = *(v115 + 64);
  v117 = (v118 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v113);
  v119 = v53 - v117;
  v120 = v117;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v121 = v53 - v120;
  v138 = v10;
  v139 = v11;
  v136 = v12;
  v137 = v13;
  v134 = v14;
  v135 = v15;
  v133 = v9;
  v132 = v7;
  if (sub_1C55114C8(v9))
  {
    v16 = v121;
    v17 = sub_1C54B05F8();
    (*(v115 + 16))(v16, v17, v114);
    sub_1C5594CF4();
    v84 = 32;
    v85 = 7;
    v18 = swift_allocObject();
    v19 = v111;
    v86 = v18;
    *(v18 + 16) = v110;
    *(v18 + 24) = v19;
    v94 = sub_1C5594C54();
    v95 = sub_1C5596944();
    v83 = 17;
    v88 = swift_allocObject();
    *(v88 + 16) = 32;
    v89 = swift_allocObject();
    *(v89 + 16) = 8;
    v20 = swift_allocObject();
    v21 = v86;
    v87 = v20;
    *(v20 + 16) = v101;
    *(v20 + 24) = v21;
    v22 = swift_allocObject();
    v23 = v87;
    v91 = v22;
    *(v22 + 16) = v102;
    *(v22 + 24) = v23;
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v90 = sub_1C5596E04();
    v92 = v24;

    v25 = v88;
    v26 = v92;
    *v92 = v103;
    v26[1] = v25;

    v27 = v89;
    v28 = v92;
    v92[2] = v104;
    v28[3] = v27;

    v29 = v91;
    v30 = v92;
    v92[4] = v105;
    v30[5] = v29;
    sub_1C540FCD8();

    if (os_log_type_enabled(v94, v95))
    {
      v31 = v106;
      v76 = sub_1C5596A74();
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v77 = sub_1C5419DC0(0);
      v78 = sub_1C5419DC0(1);
      v79 = &v126;
      v126 = v76;
      v80 = &v125;
      v125 = v77;
      v81 = &v124;
      v124 = v78;
      sub_1C5419E14(2, &v126);
      sub_1C5419E14(1, v79);
      v122 = v103;
      v123 = v88;
      sub_1C5419E28(&v122, v79, v80, v81);
      v82 = v31;
      if (v31)
      {

        __break(1u);
      }

      else
      {
        v122 = v104;
        v123 = v89;
        sub_1C5419E28(&v122, &v126, &v125, &v124);
        v74 = 0;
        v122 = v105;
        v123 = v91;
        sub_1C5419E28(&v122, &v126, &v125, &v124);
        _os_log_impl(&dword_1C5355000, v94, v95, "SettingsNavigationProxy available for %s. Using state-driven navigation.", v76, 0xCu);
        sub_1C5419E74(v77);
        sub_1C5419E74(v78);
        sub_1C5596A54();
      }
    }

    else
    {
    }

    v32 = MEMORY[0x1E69E5920](v94);
    v33 = (*(v115 + 8))(v121, v114, v32);
    return v107(v33);
  }

  else
  {
    v35 = v119;
    v36 = sub_1C54B05F8();
    (*(v115 + 16))(v35, v36, v114);
    sub_1C5594CF4();
    v62 = 32;
    v63 = 7;
    v37 = swift_allocObject();
    v38 = v111;
    v64 = v37;
    *(v37 + 16) = v110;
    *(v37 + 24) = v38;
    v72 = sub_1C5594C54();
    v73 = sub_1C5596944();
    v61 = 17;
    v66 = swift_allocObject();
    *(v66 + 16) = 32;
    v67 = swift_allocObject();
    *(v67 + 16) = 8;
    v39 = swift_allocObject();
    v40 = v64;
    v65 = v39;
    *(v39 + 16) = v96;
    *(v39 + 24) = v40;
    v41 = swift_allocObject();
    v42 = v65;
    v69 = v41;
    *(v41 + 16) = v97;
    *(v41 + 24) = v42;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v68 = sub_1C5596E04();
    v70 = v43;

    v44 = v66;
    v45 = v70;
    *v70 = v98;
    v45[1] = v44;

    v46 = v67;
    v47 = v70;
    v70[2] = v99;
    v47[3] = v46;

    v48 = v69;
    v49 = v70;
    v70[4] = v100;
    v49[5] = v48;
    sub_1C540FCD8();

    if (os_log_type_enabled(v72, v73))
    {
      v50 = v106;
      v54 = sub_1C5596A74();
      v53[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v55 = sub_1C5419DC0(0);
      v56 = sub_1C5419DC0(1);
      v57 = &v131;
      v131 = v54;
      v58 = &v130;
      v130 = v55;
      v59 = &v129;
      v129 = v56;
      sub_1C5419E14(2, &v131);
      sub_1C5419E14(1, v57);
      v127 = v98;
      v128 = v66;
      sub_1C5419E28(&v127, v57, v58, v59);
      v60 = v50;
      if (v50)
      {

        __break(1u);
      }

      else
      {
        v127 = v99;
        v128 = v67;
        sub_1C5419E28(&v127, &v131, &v130, &v129);
        v53[1] = 0;
        v127 = v100;
        v128 = v69;
        sub_1C5419E28(&v127, &v131, &v130, &v129);
        _os_log_impl(&dword_1C5355000, v72, v73, "SettingsNavigationProxy not available for %s. Falling back to UIKit navigation.", v54, 0xCu);
        sub_1C5419E74(v55);
        sub_1C5419E74(v56);
        sub_1C5596A54();
      }
    }

    else
    {
    }

    v51 = MEMORY[0x1E69E5920](v72);
    v52 = (*(v115 + 8))(v119, v114, v51);
    return v108(v52);
  }
}

uint64_t UIViewController.aaui_showViewController(_:sender:)(void *a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  v5 = v2;
  memset(v4, 0, sizeof(v4));
  sub_1C55127B4(a1, a2, v4);
  return sub_1C544435C(v4);
}

uint64_t sub_1C55127B4(void *a1, uint64_t a2, void *a3)
{
  v26 = a3;
  v25 = a2;
  v27 = a1;
  __dst[5] = 0;
  __dst[8] = a1;
  __dst[7] = a2;
  __dst[6] = a3;
  sub_1C5444FC0(a3, v29);
  v4 = v3;
  if (v30)
  {
    sub_1C5458604(v29, __dst);
  }

  else
  {
    v23 = [v24 traitCollection];
    __dst[3] = sub_1C5511888();
    __dst[4] = &off_1F447CD40;
    __dst[0] = v23;
    if (v30)
    {
      sub_1C544435C(v29);
    }
  }

  v5 = v24;

  v6 = v27;
  v21 = &v15;
  MEMORY[0x1EEE9AC00](&v15);
  v15 = v14;
  v14[2] = v7;
  v22 = __dst;
  v14[3] = __dst;
  v8 = v5;
  v9 = v27;
  v20 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v13;
  v13[2] = v5;
  v13[3] = v27;
  v13[4] = v10;
  v17 = sub_1C55965F4();
  v19 = v11;
  v18 = v28;
  sub_1C5432498(v22, v28);
  sub_1C551196C(sub_1C5514320, v15, sub_1C551432C, v16, v17, v19, v18);
  sub_1C544435C(v18);

  return __swift_destroy_boxed_opaque_existential_0(v22);
}

double sub_1C5512A00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](a1);
  if (a4)
  {
    sub_1C5596AF4();
    sub_1C551433C(v8, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  UIViewController.aaui_showViewController(_:sender:)(a3, v9);
  sub_1C544435C(v9);
  MEMORY[0x1E69E5920](a1);
  *&result = MEMORY[0x1E69E5920](a3).n128_u64[0];
  return result;
}

uint64_t sub_1C5512AF0(uint64_t a1, void *a2)
{
  v7 = a1;
  v8 = a2;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v19 = sub_1C5594BF4();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v6 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v6 - v6;
  v25 = &v6 - v6;
  v24 = MEMORY[0x1EEE9AC00](v7);
  v23 = v2;
  MEMORY[0x1E69E5928](v24);
  sub_1C5594C04();
  v10 = v8[3];
  v9 = v8[4];
  __swift_project_boxed_opaque_existential_0(v8, v10);
  v3 = *(v9 + 16);
  v15 = &v20;
  v3(v10);
  v11 = v21;
  v12 = v22;
  __swift_project_boxed_opaque_existential_0(v15, v21);
  v14 = *(v12 + 16);
  v13 = v12 + 16;
  v4 = sub_1C5514540();
  v14(v18, v19, v4, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return (*(v16 + 8))(v18, v19);
}

uint64_t sub_1C5512CE8(void *a1, uint64_t a2)
{
  v113 = a2;
  v112 = a1;
  ObjectType = swift_getObjectType();
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v111 = 0;
  v122 = 0;
  v114 = sub_1C5594C74();
  v115 = *(v114 - 8);
  v116 = v115;
  v3 = MEMORY[0x1EEE9AC00](v112);
  v117 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = v3;
  v129 = v5;
  v128 = v2;
  v6 = v2;
  objc_opt_self();
  v119 = swift_dynamicCastObjCClass();
  if (v119)
  {

    v109 = 1;
  }

  else
  {

    v109 = 0;
  }

  if (v109)
  {
    v7 = v118;
    v108 = v118;
  }

  else
  {
    v107 = [v118 navigationController];
    if (v107)
    {
      v106 = v107;
      v105 = v107;
    }

    else
    {
      v105 = 0;
    }

    v108 = v105;
  }

  v104 = v108;
  if (v108)
  {
    v103 = v104;
    v102 = v104;
    v122 = v104;
    sub_1C5514368(v113, &v120);
    if (v121)
    {
      v96 = v121;
      v99 = &v120;
      __swift_project_boxed_opaque_existential_0(&v120, v121);
      v94 = *(v96 - 8);
      v95 = v94;
      v98 = &v40;
      MEMORY[0x1EEE9AC00](&v40);
      v97 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v95 + 16))();
      v100 = sub_1C5596E14();
      (*(v95 + 8))(v97, v96);
      __swift_destroy_boxed_opaque_existential_0(v99);
      v101 = v100;
    }

    else
    {
      v101 = 0;
    }

    v92 = v101;
    [v102 showViewController:v112 sender:?];
    swift_unknownObjectRelease();

    return v111;
  }

  else
  {
    v9 = v117;
    v10 = sub_1C54B05F8();
    (*(v116 + 16))(v9, v10, v114);
    v63 = 24;
    v77 = 7;
    v11 = swift_allocObject();
    v12 = v112;
    v68 = v11;
    *(v11 + 16) = ObjectType;
    v13 = v12;
    v78 = swift_allocObject();
    *(v78 + 16) = v112;
    v91 = sub_1C5594C54();
    v64 = v91;
    v90 = sub_1C5596954();
    v65 = v90;
    v72 = 17;
    v81 = swift_allocObject();
    v66 = v81;
    v71 = 32;
    *(v81 + 16) = 32;
    v14 = swift_allocObject();
    v15 = v71;
    v82 = v14;
    v67 = v14;
    v74 = 8;
    *(v14 + 16) = 8;
    v76 = v15;
    v16 = swift_allocObject();
    v17 = v68;
    v69 = v16;
    *(v16 + 16) = sub_1C5514358;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v69;
    v83 = v18;
    v70 = v18;
    *(v18 + 16) = sub_1C5473EFC;
    *(v18 + 24) = v19;
    v84 = swift_allocObject();
    v73 = v84;
    *(v84 + 16) = v71;
    v85 = swift_allocObject();
    v75 = v85;
    *(v85 + 16) = v74;
    v20 = swift_allocObject();
    v21 = v78;
    v79 = v20;
    *(v20 + 16) = sub_1C5514360;
    *(v20 + 24) = v21;
    v22 = swift_allocObject();
    v23 = v79;
    v88 = v22;
    v80 = v22;
    *(v22 + 16) = sub_1C5473EFC;
    *(v22 + 24) = v23;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v86 = sub_1C5596E04();
    v87 = v24;

    v25 = v81;
    v26 = v87;
    *v87 = sub_1C545C6D4;
    v26[1] = v25;

    v27 = v82;
    v28 = v87;
    v87[2] = sub_1C545C6D4;
    v28[3] = v27;

    v29 = v83;
    v30 = v87;
    v87[4] = sub_1C5473FA4;
    v30[5] = v29;

    v31 = v84;
    v32 = v87;
    v87[6] = sub_1C545C6D4;
    v32[7] = v31;

    v33 = v85;
    v34 = v87;
    v87[8] = sub_1C545C6D4;
    v34[9] = v33;

    v35 = v87;
    v36 = v88;
    v87[10] = sub_1C5473FA4;
    v35[11] = v36;
    sub_1C540FCD8();

    if (os_log_type_enabled(v91, v90))
    {
      v37 = v111;
      v56 = sub_1C5596A74();
      v53 = v56;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v57 = sub_1C5419DC0(0);
      v55 = v57;
      v59 = 2;
      v58 = sub_1C5419DC0(2);
      v127 = v56;
      v126 = v57;
      v125 = v58;
      v60 = &v127;
      sub_1C5419E14(v59, &v127);
      sub_1C5419E14(v59, v60);
      v123 = sub_1C545C6D4;
      v124 = v66;
      sub_1C5419E28(&v123, v60, &v126, &v125);
      v61 = v37;
      v62 = v37;
      if (v37)
      {
        v51 = 0;

        __break(1u);
      }

      else
      {
        v123 = sub_1C545C6D4;
        v124 = v67;
        sub_1C5419E28(&v123, &v127, &v126, &v125);
        v49 = 0;
        v50 = 0;
        v123 = sub_1C5473FA4;
        v124 = v70;
        sub_1C5419E28(&v123, &v127, &v126, &v125);
        v47 = 0;
        v48 = 0;
        v123 = sub_1C545C6D4;
        v124 = v73;
        sub_1C5419E28(&v123, &v127, &v126, &v125);
        v45 = 0;
        v46 = 0;
        v123 = sub_1C545C6D4;
        v124 = v75;
        sub_1C5419E28(&v123, &v127, &v126, &v125);
        v43 = 0;
        v44 = 0;
        v123 = sub_1C5473FA4;
        v124 = v80;
        sub_1C5419E28(&v123, &v127, &v126, &v125);
        v41 = 0;
        v42 = 0;
        _os_log_impl(&dword_1C5355000, v64, v65, "%s: navigation controller was nil, unable to show view controller %s", v53, 0x16u);
        sub_1C5419E74(v55);
        sub_1C5419E74(v58);
        sub_1C5596A54();

        v52 = v41;
      }
    }

    else
    {
      v38 = v111;

      v52 = v38;
    }

    v40 = v52;

    (*(v116 + 8))(v117, v114);
    return v40;
  }
}

uint64_t sub_1C5513AF8(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  sub_1C54F02F8();
  sub_1C55145C0();
  return sub_1C55965B4();
}

Swift::Void __swiftcall UINavigationController.aaui_pushViewController(_:animated:)(UIViewController *_, Swift::Bool animated)
{
  v6 = _;
  v5 = animated;
  v4 = v2;
  memset(v3, 0, sizeof(v3));
  sub_1C5513BC4(_, animated, v3);
  sub_1C544435C(v3);
}

uint64_t sub_1C5513BC4(void *a1, int a2, void *a3)
{
  v27 = a3;
  v28 = a1;
  v29 = a2;
  __dst[5] = 0;
  v35 = a1;
  v34 = a2;
  __dst[6] = a3;
  sub_1C5444FC0(a3, v31);
  v4 = v3;
  if (v32)
  {
    sub_1C5458604(v31, __dst);
  }

  else
  {
    v5 = v26;
    v25 = [v26 traitCollection];
    __dst[3] = sub_1C5511888();
    __dst[4] = &off_1F447CD40;
    __dst[0] = v25;

    if (v32)
    {
      sub_1C544435C(v31);
    }
  }

  v6 = v26;

  v7 = v28;
  v23 = &v17;
  MEMORY[0x1EEE9AC00](&v17);
  v17 = v16;
  v16[2] = v8;
  v24 = __dst;
  v16[3] = __dst;
  v9 = v6;
  v10 = v28;
  v22 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v14;
  v14[2] = v6;
  v14[3] = v28;
  v15 = v11 & 1;
  v19 = sub_1C55965F4();
  v21 = v12;
  v20 = v30;
  sub_1C5432498(v24, v30);
  sub_1C551196C(sub_1C5514320, v17, sub_1C55143F8, v18, v19, v21, v20);
  sub_1C544435C(v20);

  return __swift_destroy_boxed_opaque_existential_0(v24);
}

double sub_1C5513E2C(uint64_t a1, uint64_t a2, UIViewController *a3)
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a1);
  v4 = sub_1C5594AC4();
  UINavigationController.aaui_pushViewController(_:animated:)(a3, v4 & 1);
  MEMORY[0x1E69E5920](a1);
  *&result = MEMORY[0x1E69E5920](a3).n128_u64[0];
  return result;
}

Swift::Void __swiftcall UINavigationController.removeLastViewControllerAnimated(_:)(Swift::Bool a1)
{
  v4 = a1;
  v3 = v1;
  memset(v2, 0, sizeof(v2));
  sub_1C5513F84(a1, v2);
  sub_1C544435C(v2);
}

uint64_t sub_1C5513F84(int a1, void *a2)
{
  v23 = a2;
  v24 = a1;
  __dst[5] = 0;
  v29 = a1;
  __dst[6] = a2;
  sub_1C5444FC0(a2, v26);
  v3 = v2;
  if (v27)
  {
    sub_1C5458604(v26, __dst);
  }

  else
  {
    v4 = v22;
    v21 = [v22 traitCollection];
    __dst[3] = sub_1C5511888();
    __dst[4] = &off_1F447CD40;
    __dst[0] = v21;

    if (v27)
    {
      sub_1C544435C(v26);
    }
  }

  v5 = v22;

  v19 = &v13;
  MEMORY[0x1EEE9AC00](&v13);
  v13 = v12;
  v20 = __dst;
  v12[2] = __dst;
  v6 = v5;
  v18 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v10;
  v10[2] = v5;
  v11 = v7 & 1;
  v15 = sub_1C55965F4();
  v17 = v8;
  v16 = v25;
  sub_1C5432498(v20, v25);
  sub_1C551196C(sub_1C551440C, v13, sub_1C5514414, v14, v15, v17, v16);
  sub_1C544435C(v16);

  return __swift_destroy_boxed_opaque_existential_0(v20);
}

double sub_1C55141A4(uint64_t a1)
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a1);
  v2 = sub_1C5594AC4();
  UINavigationController.removeLastViewControllerAnimated(_:)(v2 & 1);
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C551420C(void *a1)
{
  v9 = a1;
  v3 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  (*(v2 + 16))(v3);
  v4 = v7;
  v5 = v8;
  __swift_project_boxed_opaque_existential_0(v6, v7);
  (*(v5 + 24))(1, v4);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

double sub_1C55142C0(void *a1, char a2)
{
  LOBYTE(v4) = a2 & 1;
  v2 = [a1 popViewControllerAnimated_];
  *&result = MEMORY[0x1E69E5920](v2).n128_u64[0];
  return result;
}

__n128 sub_1C551433C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1C5514368(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

unint64_t sub_1C5514540()
{
  v2 = qword_1EC15E300;
  if (!qword_1EC15E300)
  {
    sub_1C5594BF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E300);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55145C0()
{
  v2 = qword_1EC15E308;
  if (!qword_1EC15E308)
  {
    sub_1C54F02F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E308);
    return WitnessTable;
  }

  return v2;
}

id static RecoveryContactUpsellFactory.createRecoveryContactUpsellTipView()()
{
  v14 = "Fatal error";
  v15 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v16 = "AppleAccountUI/RecoveryContactUpsellFactory.swift";
  v29 = 0;
  v25 = 0uLL;
  v26 = 0;
  v22 = 0;
  v0 = sub_1C5595774();
  v17 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v18 = &v4 - v17;
  v29 = v1;
  v19 = sub_1C54C3530();
  sub_1C5594E04();
  v20 = 0;
  v21 = 0;

  v13 = v20;
  v2 = v20;
  sub_1C5594D34();
  v12 = v2;
  if (v2)
  {
  }

  sub_1C54B93F0(&v27);
  v8 = v27;
  v9 = v28;
  v25 = v27;
  v26 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E310);
  MEMORY[0x1E69E5928](v8.n128_u64[0]);
  sub_1C5594CF4();
  v23 = v8;
  v24 = v9;
  v10 = sub_1C5595484();
  v22 = v10;
  MEMORY[0x1E69E5928](v10);
  v11 = [v10 view];
  MEMORY[0x1E69E5920](v10);
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v6 = v7;
  v5 = [objc_opt_self() clearColor];
  [v6 setBackgroundColor_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v6);
  sub_1C5595764();
  sub_1C5595474();
  MEMORY[0x1E69E5920](v8.n128_u64[0]);

  return v10;
}

id RecoveryContactUpsellFactory.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for RecoveryContactUpsellFactory();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x1E69E5928](v1);
  v3 = v1;
  MEMORY[0x1E69E5920](v1);
  return v1;
}

id RecoveryContactUpsellFactory.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecoveryContactUpsellFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C5514B0C@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  v7 = v4;
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x68))(v2);
  sub_1C5458604(v6, a2);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

double sub_1C5514BB4(uint64_t a1, void *a2)
{
  sub_1C5432498(a1, v5);
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x70))(v5);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

uint64_t sub_1C5514C5C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___AAUISignOutRemovedInformationActionInvokingOBWelcomeController_flowDirector;
  swift_beginAccess();
  sub_1C5432498(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1C5514CC0(uint64_t a1)
{
  v6 = 0;
  v7 = a1;
  sub_1C5432498(a1, v5);
  __dst = (v1 + OBJC_IVAR___AAUISignOutRemovedInformationActionInvokingOBWelcomeController_flowDirector);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(__dst);
  sub_1C5458604(v5, __dst);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1C5514DB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x80))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C5514E58(uint64_t *a1, void *a2)
{
  sub_1C5402C1C(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x88))(v5);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

uint64_t sub_1C5514F04()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemovedInformationActionInvokingOBWelcomeController_stage);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C5514F74(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUISignOutRemovedInformationActionInvokingOBWelcomeController_stage);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C551507C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x98))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C551511C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  v5 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xA0))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C55151D4()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemovedInformationActionInvokingOBWelcomeController_model);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C551523C(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR___AAUISignOutRemovedInformationActionInvokingOBWelcomeController_model);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

char *SignOutRemovedInformationActionInvokingOBWelcomeController.init(model:stage:flowDirector:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v14 = a1;
  v13 = a2;
  v12 = a3;
  MEMORY[0x1E69E5928](a2);
  *OBJC_IVAR___AAUISignOutRemovedInformationActionInvokingOBWelcomeController_stage = a2;
  v4 = v15;
  sub_1C5432498(a3, v11);
  sub_1C5458604(v11, &v4[OBJC_IVAR___AAUISignOutRemovedInformationActionInvokingOBWelcomeController_flowDirector]);
  v5 = v15;
  swift_unknownObjectRetain();
  *&v5[OBJC_IVAR___AAUISignOutRemovedInformationActionInvokingOBWelcomeController_model] = a1;
  v10.receiver = v15;
  v10.super_class = type metadata accessor for SignOutRemovedInformationActionInvokingOBWelcomeController();
  v9 = objc_msgSendSuper2(&v10, sel_initWithViewModel_, a1);
  MEMORY[0x1E69E5928](v9);
  v15 = v9;
  SignOutRemovedInformationActionInvokingOBWelcomeController.setupInvokingActions()();
  __swift_destroy_boxed_opaque_existential_0(a3);
  MEMORY[0x1E69E5920](a2);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v15);
  return v9;
}

Swift::Void __swiftcall SignOutRemovedInformationActionInvokingOBWelcomeController.setupInvokingActions()()
{
  v61 = sub_1C55185B0;
  v62 = sub_1C55185BC;
  v63 = sub_1C545AE98;
  v64 = sub_1C545C6DC;
  v65 = sub_1C545C6D4;
  v66 = sub_1C545C6D4;
  v67 = sub_1C545C6E8;
  v85 = 0;
  v68 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v69 = sub_1C5594C74();
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v73 = v20 - v72;
  v85 = MEMORY[0x1EEE9AC00](v74);
  MEMORY[0x1E69E5928](v85);
  v75 = [v74 primaryButton];
  if (v75)
  {
    v60 = v75;
    v58 = v75;
    v79 = v75;
    MEMORY[0x1E69E5920](v74);
    MEMORY[0x1E69E5928](v74);
    v0 = [v74 secondaryButton];
    v59 = v0;
    if (v0)
    {
      v57 = v59;
      v56 = v59;
      v78 = v59;
      MEMORY[0x1E69E5920](v74);
      v50 = 0;
      v45 = sub_1C545C6F4();
      MEMORY[0x1E69E5928](v58);
      MEMORY[0x1E69E5928](v74);
      v46 = 7;
      v1 = swift_allocObject();
      v2 = v74;
      v42 = v1;
      *(v1 + 16) = v58;
      *(v1 + 24) = v2;
      v44 = sub_1C54398B0();
      v43 = v3;
      v41 = sub_1C545B878();
      sub_1C53FE664();
      v55 = sub_1C5596A44();
      v77 = v55;
      MEMORY[0x1E69E5928](v74);
      v48 = swift_allocObject();
      *(v48 + 16) = v74;
      v51 = sub_1C54398B0();
      v49 = v4;
      v47 = sub_1C545B878();
      sub_1C53FE664();
      v54 = sub_1C5596A44();
      v76 = v54;
      v52 = 0x1FB0D4000uLL;
      v53 = 64;
      [v58 0x1FB0D4EF8];
      [v56 (v52 + 3832)];
      MEMORY[0x1E69E5920](v54);
      MEMORY[0x1E69E5920](v55);
      MEMORY[0x1E69E5920](v56);
      MEMORY[0x1E69E5920](v58);
      return;
    }

    MEMORY[0x1E69E5920](v74);
    MEMORY[0x1E69E5920](v58);
  }

  else
  {
    MEMORY[0x1E69E5920](v74);
  }

  v5 = v73;
  v6 = sub_1C54B0910();
  (*(v70 + 16))(v5, v6, v69);
  MEMORY[0x1E69E5928](v74);
  v30 = 7;
  v31 = swift_allocObject();
  *(v31 + 16) = v74;
  v39 = sub_1C5594C54();
  v40 = sub_1C5596954();
  v28 = 17;
  v33 = swift_allocObject();
  *(v33 + 16) = 64;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v29 = 32;
  v7 = swift_allocObject();
  v8 = v31;
  v32 = v7;
  *(v7 + 16) = v63;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v32;
  v36 = v9;
  *(v9 + 16) = v64;
  *(v9 + 24) = v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v35 = sub_1C5596E04();
  v37 = v11;

  v12 = v33;
  v13 = v37;
  *v37 = v65;
  v13[1] = v12;

  v14 = v34;
  v15 = v37;
  v37[2] = v66;
  v15[3] = v14;

  v16 = v36;
  v17 = v37;
  v37[4] = v67;
  v17[5] = v16;
  sub_1C540FCD8();

  if (os_log_type_enabled(v39, v40))
  {
    v18 = v68;
    v21 = sub_1C5596A74();
    v20[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v22 = sub_1C5419DC0(1);
    v23 = sub_1C5419DC0(0);
    v24 = &v84;
    v84 = v21;
    v25 = &v83;
    v83 = v22;
    v26 = &v82;
    v82 = v23;
    sub_1C5419E14(2, &v84);
    sub_1C5419E14(1, v24);
    v80 = v65;
    v81 = v33;
    sub_1C5419E28(&v80, v24, v25, v26);
    v27 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v80 = v66;
      v81 = v34;
      sub_1C5419E28(&v80, &v84, &v83, &v82);
      v20[0] = 0;
      v80 = v67;
      v81 = v36;
      sub_1C5419E28(&v80, &v84, &v83, &v82);
      _os_log_impl(&dword_1C5355000, v39, v40, "%@: Failed to create buttons.", v21, 0xCu);
      sub_1C5419E74(v22);
      sub_1C5419E74(v23);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v19 = MEMORY[0x1E69E5920](v39);
  (*(v70 + 8))(v73, v69, v19);
}

id SignOutRemovedInformationActionInvokingOBWelcomeController.__allocating_init(viewModel:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) initWithViewModel_];
  swift_unknownObjectRelease();
  return v3;
}

id SignOutRemovedInformationActionInvokingOBWelcomeController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = objc_allocWithZone(v6);
  v17 = sub_1C5596554();
  if (a4)
  {
    v12 = sub_1C5596554();

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a6)
  {
    v11 = sub_1C5596554();

    v7 = [v15 initWithTitle:v17 detailText:v13 symbolName:v11 contentLayout:?];
  }

  else
  {
    v7 = [v15 initWithTitle:v17 detailText:v13 symbolName:0 contentLayout:?];
  }

  v10 = v7;
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v17);

  return v10;
}

id SignOutRemovedInformationActionInvokingOBWelcomeController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v13 = sub_1C5596554();
  if (a4)
  {
    v8 = sub_1C5596554();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v7 = [v11 initWithTitle:v13 detailText:? icon:? contentLayout:?];
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v13);

  return v7;
}

id SignOutRemovedInformationActionInvokingOBWelcomeController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignOutRemovedInformationActionInvokingOBWelcomeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1C5516888(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((**v1 & *MEMORY[0x1E69E7D40]) + 0x78))();
  return sub_1C545A074;
}

Swift::Void __swiftcall SignOutRemovedInformationActionInvokingOBWelcomeController.viewWillAppear(_:)(Swift::Bool a1)
{
  v7 = a1;
  v6 = v1;
  (MEMORY[0x1E69E5928])();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SignOutRemovedInformationActionInvokingOBWelcomeController();
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, 1);
  (MEMORY[0x1E69E5920])();
  (MEMORY[0x1E69E5928])();
  v4 = [v3 primaryButton];
  if (v4)
  {
    v2 = v4;
    MEMORY[0x1E69E5928](v4);
    sub_1C5401EF8(&v4);
    [v2 hidesBusyIndicator];
    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    sub_1C5401EF8(&v4);
    (MEMORY[0x1E69E5920])();
  }
}

Swift::Void __swiftcall SignOutRemovedInformationActionInvokingOBWelcomeController.viewDidLoad()()
{
  v7 = v0;
  (MEMORY[0x1E69E5928])();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SignOutRemovedInformationActionInvokingOBWelcomeController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = (MEMORY[0x1E69E5920])();
  (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x98))(v1);
  type metadata accessor for SignOutRemovedInformationModel();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v4 = v5;
  }

  else
  {
    swift_unknownObjectRelease();
    v4 = 0;
  }

  if (v4)
  {
    v2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xB0))();
    MEMORY[0x1E69E5920](v4);
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    sub_1C5516CD4(v3);
    MEMORY[0x1E69E5920](v3);
  }
}

double sub_1C5516CD4(void *a1)
{
  [v1 addChildViewController_];
  MEMORY[0x1E69E5928](a1);
  v60 = [a1 view];
  *&v2 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v60)
  {
    v58 = v60;
  }

  else
  {
    LOBYTE(v10) = 2;
    v16 = 45;
    LODWORD(v22) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  [v58 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v58);
  MEMORY[0x1E69E5928](v1);
  v56 = [v1 contentView];
  MEMORY[0x1E69E5920](v1);
  MEMORY[0x1E69E5928](a1);
  v57 = [a1 view];
  *&v3 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v57)
  {
    v55 = v57;
  }

  else
  {
    LOBYTE(v11) = 2;
    v17 = 46;
    LODWORD(v23) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  [v56 addSubview_];
  MEMORY[0x1E69E5920](v55);
  MEMORY[0x1E69E5920](v56);
  v52 = objc_opt_self();
  sub_1C545C768();
  sub_1C5596E04();
  v53 = v4;
  MEMORY[0x1E69E5928](a1);
  v54 = [a1 view];
  *&v5 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v54)
  {
    v51 = v54;
  }

  else
  {
    LOBYTE(v12) = 2;
    v18 = 48;
    LODWORD(v24) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v48 = [v51 0x1FBB23FD2];
  MEMORY[0x1E69E5920](v51);
  MEMORY[0x1E69E5928](v1);
  v46 = [v1 contentView];
  v47 = [v46 0x1FBB23FD2];
  v49 = [v48 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v47);
  MEMORY[0x1E69E5920](v48);
  *v53 = v49;
  MEMORY[0x1E69E5928](a1);
  v50 = [a1 view];
  *&v6 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v50)
  {
    v45 = v50;
  }

  else
  {
    LOBYTE(v13) = 2;
    v19 = 49;
    LODWORD(v25) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v42 = [v45 0x1FBBB4950];
  MEMORY[0x1E69E5920](v45);
  MEMORY[0x1E69E5928](v1);
  v40 = [v1 contentView];
  v41 = [v40 0x1FBBB4950];
  MEMORY[0x1E69E5920](v40);
  v43 = [v42 constraintEqualToAnchor:v41 constant:-1.0];
  MEMORY[0x1E69E5920](v41);
  MEMORY[0x1E69E5920](v42);
  v53[1] = v43;
  MEMORY[0x1E69E5928](a1);
  v44 = [a1 view];
  *&v7 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v44)
  {
    v39 = v44;
  }

  else
  {
    LOBYTE(v14) = 2;
    v20 = 50;
    LODWORD(v26) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v36 = [v39 0x1FBB20D25];
  MEMORY[0x1E69E5920](v39);
  MEMORY[0x1E69E5928](v1);
  v34 = [v1 contentView];
  v35 = [v34 0x1FBB20D25];
  v37 = [v36 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v35);
  MEMORY[0x1E69E5920](v36);
  v53[2] = v37;
  MEMORY[0x1E69E5928](a1);
  v38 = [a1 view];
  *&v8 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v38)
  {
    v33 = v38;
  }

  else
  {
    LOBYTE(v15) = 2;
    v21 = 51;
    LODWORD(v27) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v30 = [v33 0x1FBBC2576];
  MEMORY[0x1E69E5920](v33);
  MEMORY[0x1E69E5928](v1);
  v28 = [v1 headerView];
  v29 = [v28 0x1FBBC2576];
  v31 = [v30 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v29);
  MEMORY[0x1E69E5920](v30);
  v53[3] = v31;
  sub_1C540FCD8();
  v32 = sub_1C5596704();

  [v52 activateConstraints_];
  MEMORY[0x1E69E5920](v32);
  MEMORY[0x1E69E5928](v1);
  [v1 didMoveToParentViewController_];
  *&result = MEMORY[0x1E69E5920](v1).n128_u64[0];
  return result;
}

uint64_t sub_1C55176B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v45 = a1;
  v46 = a2;
  v52 = a3;
  v54 = sub_1C545AE98;
  v58 = sub_1C545C6DC;
  v60 = sub_1C545C6D4;
  v62 = sub_1C545C6D4;
  v65 = sub_1C545C6E8;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v44 = 0;
  v51 = sub_1C5594C74();
  v49 = *(v51 - 8);
  v50 = v51 - 8;
  v47 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v46);
  v4 = &v28 - v47;
  v48 = &v28 - v47;
  v83 = v5;
  v82 = v3;
  v81 = v6;
  [v3 showsBusyIndicator];
  v7 = sub_1C54B0910();
  (*(v49 + 16))(v4, v7, v51);
  MEMORY[0x1E69E5928](v52);
  v56 = 7;
  v57 = swift_allocObject();
  *(v57 + 16) = v52;
  v69 = sub_1C5594C54();
  v70 = sub_1C5596974();
  v53 = 17;
  v61 = swift_allocObject();
  *(v61 + 16) = 64;
  v63 = swift_allocObject();
  *(v63 + 16) = 8;
  v55 = 32;
  v8 = swift_allocObject();
  v9 = v57;
  v59 = v8;
  *(v8 + 16) = v54;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v59;
  v66 = v10;
  *(v10 + 16) = v58;
  *(v10 + 24) = v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v64 = sub_1C5596E04();
  v67 = v12;

  v13 = v61;
  v14 = v67;
  *v67 = v60;
  v14[1] = v13;

  v15 = v63;
  v16 = v67;
  v67[2] = v62;
  v16[3] = v15;

  v17 = v66;
  v18 = v67;
  v67[4] = v65;
  v18[5] = v17;
  sub_1C540FCD8();

  if (os_log_type_enabled(v69, v70))
  {
    v19 = v44;
    v37 = sub_1C5596A74();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v38 = sub_1C5419DC0(1);
    v39 = sub_1C5419DC0(0);
    v40 = &v75;
    v75 = v37;
    v41 = &v74;
    v74 = v38;
    v42 = &v73;
    v73 = v39;
    sub_1C5419E14(2, &v75);
    sub_1C5419E14(1, v40);
    v71 = v60;
    v72 = v61;
    sub_1C5419E28(&v71, v40, v41, v42);
    v43 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v71 = v62;
      v72 = v63;
      sub_1C5419E28(&v71, &v75, &v74, &v73);
      v35 = 0;
      v71 = v65;
      v72 = v66;
      sub_1C5419E28(&v71, &v75, &v74, &v73);
      _os_log_impl(&dword_1C5355000, v69, v70, "%@: Advancing action.", v37, 0xCu);
      sub_1C5419E74(v38);
      sub_1C5419E74(v39);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v20 = v52;
  v21 = MEMORY[0x1E69E5920](v69);
  v22 = (*(v49 + 8))(v48, v51, v21);
  v23 = *v20;
  v29 = MEMORY[0x1E69E7D40];
  v24 = *((v23 & *MEMORY[0x1E69E7D40]) + 0x68);
  v34 = &v78;
  v24(v22);
  v25 = v52;
  v31 = v79;
  v32 = v80;
  v30 = __swift_project_boxed_opaque_existential_0(v34, v79);
  v26 = (*((*v25 & *v29) + 0x80))();
  v33 = v76;
  v76[0] = 0;
  v76[1] = v26;
  v77 = 0;
  (*(v32 + 32))();
  sub_1C545CDC0(v33);
  return __swift_destroy_boxed_opaque_existential_0(v34);
}

uint64_t sub_1C5517E48(uint64_t a1, uint64_t *a2)
{
  v42 = a1;
  v48 = a2;
  v50 = sub_1C545AE98;
  v54 = sub_1C545C6DC;
  v56 = sub_1C545C6D4;
  v58 = sub_1C545C6D4;
  v61 = sub_1C545C6E8;
  v78 = 0;
  v77 = 0;
  v41 = 0;
  v47 = sub_1C5594C74();
  v45 = *(v47 - 8);
  v46 = v47 - 8;
  v43 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = &v25 - v43;
  v44 = &v25 - v43;
  v78 = MEMORY[0x1EEE9AC00](v42);
  v77 = v3;
  v4 = sub_1C54B0910();
  (*(v45 + 16))(v2, v4, v47);
  MEMORY[0x1E69E5928](v48);
  v52 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v48;
  v65 = sub_1C5594C54();
  v66 = sub_1C5596974();
  v49 = 17;
  v57 = swift_allocObject();
  *(v57 + 16) = 64;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v51 = 32;
  v5 = swift_allocObject();
  v6 = v53;
  v55 = v5;
  *(v5 + 16) = v50;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v55;
  v62 = v7;
  *(v7 + 16) = v54;
  *(v7 + 24) = v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v60 = sub_1C5596E04();
  v63 = v9;

  v10 = v57;
  v11 = v63;
  *v63 = v56;
  v11[1] = v10;

  v12 = v59;
  v13 = v63;
  v63[2] = v58;
  v13[3] = v12;

  v14 = v62;
  v15 = v63;
  v63[4] = v61;
  v15[5] = v14;
  sub_1C540FCD8();

  if (os_log_type_enabled(v65, v66))
  {
    v16 = v41;
    v34 = sub_1C5596A74();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v35 = sub_1C5419DC0(1);
    v36 = sub_1C5419DC0(0);
    v37 = &v71;
    v71 = v34;
    v38 = &v70;
    v70 = v35;
    v39 = &v69;
    v69 = v36;
    sub_1C5419E14(2, &v71);
    sub_1C5419E14(1, v37);
    v67 = v56;
    v68 = v57;
    sub_1C5419E28(&v67, v37, v38, v39);
    v40 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v67 = v58;
      v68 = v59;
      sub_1C5419E28(&v67, &v71, &v70, &v69);
      v32 = 0;
      v67 = v61;
      v68 = v62;
      sub_1C5419E28(&v67, &v71, &v70, &v69);
      _os_log_impl(&dword_1C5355000, v65, v66, "%@: Declining action.", v34, 0xCu);
      sub_1C5419E74(v35);
      sub_1C5419E74(v36);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v17 = v48;
  v18 = MEMORY[0x1E69E5920](v65);
  v19 = (*(v45 + 8))(v44, v47, v18);
  v20 = *v17;
  v26 = MEMORY[0x1E69E7D40];
  v21 = *((v20 & *MEMORY[0x1E69E7D40]) + 0x68);
  v31 = &v74;
  v21(v19);
  v22 = v48;
  v28 = v75;
  v29 = v76;
  v27 = __swift_project_boxed_opaque_existential_0(v31, v75);
  v23 = (*((*v22 & *v26) + 0x80))();
  v30 = v72;
  v72[0] = 0;
  v72[1] = v23;
  v73 = 1;
  (*(v29 + 32))();
  sub_1C545CDC0(v30);
  return __swift_destroy_boxed_opaque_existential_0(v31);
}

uint64_t sub_1C55188C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a1;
  v17 = a2;
  sub_1C544B78C();
  sub_1C5596064();
  v8 = v11;
  v9 = v12;
  v10 = v13 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E340);
  sub_1C5518AB8();
  sub_1C5410F68();
  sub_1C5595D24();
  memcpy(__dst, v14, sizeof(__dst));
  memcpy(v7, __dst, sizeof(v7));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E350);
  sub_1C5518B40();
  sub_1C540EFD8(v7, v5, v15);
  memcpy(v19, v15, sizeof(v19));
  memcpy(v6, v19, sizeof(v6));
  return sub_1C540EFD8(v6, v5, a3);
}

unint64_t sub_1C5518AB8()
{
  v2 = qword_1EC15E348;
  if (!qword_1EC15E348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E340);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E348);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5518B40()
{
  v2 = qword_1EC15E358;
  if (!qword_1EC15E358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E350);
    sub_1C5518AB8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E358);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5518D60()
{
  v7 = &v10;
  v10 = 0;
  v11 = 0;
  v6 = sub_1C5594994();
  v3 = *(v6 - 8);
  v4 = v6 - 8;
  v2 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v5 = &v2 - v2;
  sub_1C5594984();
  v9 = sub_1C5594944();
  v8 = v0;
  (*(v3 + 8))(v5, v6);
  sub_1C5594CF4();
  v10 = v9;
  v11 = v8;
  sub_1C5401ECC();
  return v9;
}

uint64_t sub_1C5518E68(uint64_t a1)
{
  v19 = a1;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v14 = sub_1C5594994();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v7 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E360);
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v19);
  v24 = v7 - v23;
  v37 = v7 - v23;
  v34 = v1;
  v26 = v1[3];
  v27 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v26);
  sub_1C5519348();
  v2 = v25;
  sub_1C5596F24();
  v28 = v2;
  v29 = v2;
  if (v2)
  {
    v7[3] = v29;
    v7[0] = v29;
    __swift_destroy_boxed_opaque_existential_0(v19);
    return v7[1];
  }

  else
  {
    v3 = sub_1C5596D74();
    v10 = 0;
    v11 = v3;
    v12 = v4;
    v13 = 0;
    v30 = v3;
    v31 = v4;
    if (v4)
    {
      v32 = v30;
      v33 = v31;
    }

    else
    {
      sub_1C5594984();
      v32 = sub_1C5594944();
      v33 = v5;
      (*(v15 + 8))(v18, v14);
      if (v31)
      {
        sub_1C5401ECC();
      }
    }

    v9 = v32;
    v8 = v33;
    sub_1C5594CF4();
    v7[4] = &v35;
    v35 = v9;
    v36 = v8;
    (*(v21 + 8))(v24, v20);
    __swift_destroy_boxed_opaque_existential_0(v19);
    sub_1C5401ECC();
    return v9;
  }
}

uint64_t sub_1C55191F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C5518E68(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_1C5519264@<X0>(void *a1@<X8>)
{
  result = *v1;
  sub_1C5492D20();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C55192CC()
{
  v2 = qword_1EC167B48;
  if (!qword_1EC167B48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC167B48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5519348()
{
  v2 = qword_1EC167B50[0];
  if (!qword_1EC167B50[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC167B50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C55193C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E368);
  __swift_allocate_value_buffer(v1, qword_1EC16B4C8);
  __swift_project_value_buffer(v1, qword_1EC16B4C8);
  sub_1C55965F4();
  sub_1C5594D44();
  sub_1C5596E04();
  return sub_1C5594DF4();
}

uint64_t sub_1C55194A8()
{
  if (qword_1EC167B40 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E368);
  return __swift_project_value_buffer(v0, qword_1EC16B4C8);
}

uint64_t sub_1C5519520@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C55194A8();
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E368);
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t sub_1C55195B0(uint64_t a1)
{
  v9 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E368);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v5 = &v2 - v3;
  v4 = sub_1C55194A8();
  (*(v7 + 16))(v5, v9, v10);
  v6 = &v11;
  swift_beginAccess();
  (*(v7 + 40))(v4, v5, v10);
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t (*sub_1C5519704())()
{
  sub_1C55194A8();
  swift_beginAccess();
  return sub_1C541ACB0;
}

uint64_t sub_1C5519760()
{
  sub_1C55194A8();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E368);
  sub_1C5594DD4();
  swift_endAccess();
  return v1 & 1;
}

uint64_t sub_1C55197DC()
{
  sub_1C55194A8();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E368);
  sub_1C5594DE4();
  return swift_endAccess();
}

uint64_t sub_1C551990C()
{
  v8 = 0;
  v5 = (*(*(sub_1C55949C4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v10 = &v4 - v5;
  v0 = sub_1C5596544();
  v6 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v7 = &v4 - v6;
  v12 = 1;
  sub_1C55965F4();
  sub_1C55964E4();
  sub_1C5439370();
  v9 = sub_1C5576C44();
  sub_1C54982B4();
  v13[2] = 0;
  v13[3] = 0;
  v14 = 0;
  v15 = v12 & 1;
  v1 = sub_1C5596594();
  v11 = v13;
  v13[0] = v1;
  v13[1] = v2;
  sub_1C54141E8();
  return sub_1C5595A04();
}

uint64_t sub_1C5519AD8()
{
  v9 = 0;
  v5 = (*(*(sub_1C55949C4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = &v4 - v5;
  v0 = sub_1C5596544();
  v6 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v8 = &v4 - v6;
  v7 = 1;
  sub_1C55965F4();
  sub_1C55964E4();
  sub_1C5439370();
  v10 = sub_1C5576C44();
  sub_1C54982B4();
  v13[2] = 0;
  v13[3] = 0;
  v14 = 0;
  v15 = v7 & 1;
  v1 = sub_1C5596594();
  v12 = v13;
  v13[0] = v1;
  v13[1] = v2;
  sub_1C54141E8();
  return sub_1C5595A04();
}

uint64_t sub_1C5519C7C()
{
  v17 = 0;
  v16 = sub_1C5519EB8;
  v23 = 0;
  v24 = 0;
  v14 = 0;
  v6 = (*(*(sub_1C55949C4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = &v5 - v6;
  v0 = sub_1C5596544();
  v7 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v9 = &v5 - v7;
  v8 = 1;
  sub_1C55965F4();
  sub_1C55964E4();
  sub_1C5439370();
  v10 = sub_1C5576C44();
  sub_1C54982B4();
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = v8 & 1;
  v12 = sub_1C5596594();
  v20 = v1;
  v23 = v12;
  v24 = v1;
  v19 = sub_1C5594DA4();
  v18 = sub_1C5596E04();
  v13 = v2;
  sub_1C5594CF4();
  v15 = v22;
  v22[0] = v12;
  v22[1] = v20;
  sub_1C54141E8();
  sub_1C5594D94();
  v3 = v18;
  sub_1C540FCD8();
  v21 = v3;

  return v21;
}

uint64_t sub_1C5519EBC()
{
  v85 = 0;
  v112 = 0;
  v80 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v81 = sub_1C5594C74();
  v82 = *(v81 - 8);
  v83 = v82;
  MEMORY[0x1EEE9AC00](v81 - 8);
  v84 = v17 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v85);
  v87 = v17 - v86;
  v88 = sub_1C5594924();
  v89 = *(v88 - 8);
  v90 = v89;
  v91 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88 - 8);
  v93 = (v91 + 15) & 0xFFFFFFFFFFFFFFF0;
  v92 = v17 - v93;
  MEMORY[0x1EEE9AC00](v17 - v93);
  v94 = v17 - v93;
  v112 = v17 - v93;
  v95 = [objc_opt_self() defaultStore];
  if (!v95)
  {
LABEL_30:
    v12 = v84;
    v13 = sub_1C54B05F8();
    (*(v83 + 16))(v12, v13, v81);
    v35 = sub_1C5594C54();
    v32 = v35;
    v34 = sub_1C5596954();
    v33 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v36 = sub_1C5596E04();
    if (os_log_type_enabled(v35, v34))
    {
      v14 = v80;
      v23 = sub_1C5596A74();
      v19 = v23;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v21 = 0;
      v24 = sub_1C5419DC0(0);
      v22 = v24;
      v25 = sub_1C5419DC0(v21);
      v111 = v23;
      v110 = v24;
      v109 = v25;
      v26 = 0;
      v27 = &v111;
      sub_1C5419E14(0, &v111);
      sub_1C5419E14(v26, v27);
      v108 = v36;
      v28 = v17;
      MEMORY[0x1EEE9AC00](v17);
      v29 = &v17[-6];
      v17[-4] = v15;
      v17[-3] = &v110;
      v17[-2] = &v109;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v31 = v14;
      if (v14)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v32, v33, "ACAccountStore, appleAccount, pendingDOB is nil. Unable to display Birthday update pending view.", v19, 2u);
        v17[1] = 0;
        sub_1C5419E74(v22);
        sub_1C5419E74(v25);
        sub_1C5596A54();

        v18 = v31;
      }
    }

    else
    {

      v18 = v80;
    }

    v17[0] = v18;

    (*(v83 + 8))(v84, v81);
    return v17[0];
  }

  v79 = v95;
  v77 = v95;
  v107 = v95;
  v1 = [v95 aa_primaryAppleAccount];
  v78 = v1;
  if (!v1)
  {

    goto LABEL_30;
  }

  v76 = v78;
  v74 = v78;
  v106 = v78;
  v2 = [v78 aa_pendingDOB];
  v75 = v2;
  if (v2)
  {
    v73 = v75;
    v72 = v75;
    sub_1C5594904();
    (*(v90 + 32))(v87, v92, v88);
    (*(v90 + 56))(v87, 0, 1, v88);
  }

  else
  {
    (*(v90 + 56))(v87, 1, 1, v88);
  }

  if ((*(v90 + 48))(v87, 1, v88) == 1)
  {
    sub_1C541A9D8(v87);

    goto LABEL_30;
  }

  (*(v90 + 32))(v94, v87, v88);
  v68 = 0;
  sub_1C551BC44();
  (*(v90 + 16))(v92, v94, v88);
  v69 = sub_1C551AE6C(v92);
  v105 = v69;
  sub_1C551BCA8();
  v70 = sub_1C5404B48();
  v104 = v70;
  v3 = v70;
  v71 = [objc_opt_self() defaultStore];
  if (v71 && (v67 = v71, v64 = v71, v66 = [v71 aa_primaryAppleAccount], v65 = v66, v64, v66))
  {
    v63 = v65;
    v61 = v65;
    v4 = [v65 aa_altDSID];
    v62 = v4;
    if (v4)
    {
      v60 = v62;
      v55 = v62;
      v56 = sub_1C5596574();
      v57 = v5;

      v58 = v56;
      v59 = v57;
    }

    else
    {
      v58 = 0;
      v59 = 0;
    }

    v52 = v59;
    v51 = v58;

    v53 = v51;
    v54 = v52;
  }

  else
  {
    v53 = 0;
    v54 = 0;
  }

  v49 = v54;
  v50 = v53;
  if (v54)
  {
    v47 = v50;
    v48 = v49;
    v44 = v49;
    v45 = sub_1C5596554();

    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  v41 = v46;
  [v70 setAltDSID_];

  v6 = v70;
  [v70 setIsUsernameEditable_];

  v7 = v70;
  [v70 setAuthenticationType_];

  v8 = v70;
  v9 = v69;
  [v70 setAccountMigrationContext_];

  sub_1C551BD0C();
  v43 = sub_1C5404B48();
  v42 = v43;
  v103 = v43;
  v10 = v43;
  if (v43)
  {
    v40 = v42;
    v39 = v42;
    v11 = v70;
    v101 = sub_1C551AEAC;
    v102 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v97 = 1107296256;
    v98 = 0;
    v99 = sub_1C551B944;
    v100 = &block_descriptor_16;
    v38 = _Block_copy(&aBlock);
    [v39 authenticateWithContext:v70 completion:?];
    _Block_release(v38);
  }

  (*(v90 + 8))(v94, v88);
  return v80;
}

uint64_t sub_1C551ABC0()
{
  v11 = 0;
  v10 = sub_1C551ADF0;
  v18 = &v22;
  v22 = 0;
  v17 = &v20;
  v20 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E368);
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v2 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v1 - v2;
  v14 = sub_1C5594D74();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v3 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v15 = &v1 - v3;
  v6 = sub_1C55194A8();
  v8 = &v21;
  swift_beginAccess();
  (*(v4 + 16))(v9, v6, v7);
  swift_endAccess();
  sub_1C5594D84();
  v16 = sub_1C5594CE4();
  (*(v12 + 8))(v15, v14);
  sub_1C5594CF4();
  v22 = v16;
  v19 = sub_1C5594CF4();

  sub_1C5594CF4();
  v20 = v19;
  sub_1C541439C();
  sub_1C541439C();
  return v19;
}

uint64_t sub_1C551ADF0@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E3B0);
  a1[4] = sub_1C551C250();
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_1C551C2D8();
  return sub_1C5594844();
}

uint64_t sub_1C551AEAC(uint64_t a1, void *a2)
{
  v47 = a1;
  v49 = a2;
  v50 = sub_1C551C360;
  v52 = sub_1C5473EFC;
  v57 = sub_1C551C368;
  v61 = sub_1C5473EFC;
  v63 = sub_1C545C6D4;
  v65 = sub_1C545C6D4;
  v67 = sub_1C5473FA4;
  v69 = sub_1C545C6D4;
  v71 = sub_1C545C6D4;
  v74 = sub_1C5473FA4;
  v86 = 0;
  v85 = 0;
  v41 = 0;
  v46 = sub_1C5594C74();
  v44 = *(v46 - 8);
  v45 = v46 - 8;
  v42 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = v32 - v42;
  v43 = v32 - v42;
  v86 = MEMORY[0x1EEE9AC00](v47);
  v85 = v3;
  v4 = sub_1C54B05F8();
  (*(v44 + 16))(v2, v4, v46);
  sub_1C5594CF4();
  v48 = 24;
  v59 = 7;
  v5 = swift_allocObject();
  v6 = v49;
  v51 = v5;
  *(v5 + 16) = v47;
  v7 = v6;
  v60 = swift_allocObject();
  *(v60 + 16) = v49;
  v78 = sub_1C5594C54();
  v79 = sub_1C5596974();
  v55 = 17;
  v64 = swift_allocObject();
  v54 = 32;
  *(v64 + 16) = 32;
  v66 = swift_allocObject();
  v56 = 8;
  *(v66 + 16) = 8;
  v58 = 32;
  v8 = swift_allocObject();
  v9 = v51;
  v53 = v8;
  *(v8 + 16) = v50;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v53;
  v68 = v10;
  *(v10 + 16) = v52;
  *(v10 + 24) = v11;
  v70 = swift_allocObject();
  *(v70 + 16) = v54;
  v72 = swift_allocObject();
  *(v72 + 16) = v56;
  v12 = swift_allocObject();
  v13 = v60;
  v62 = v12;
  *(v12 + 16) = v57;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v62;
  v75 = v14;
  *(v14 + 16) = v61;
  *(v14 + 24) = v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v73 = sub_1C5596E04();
  v76 = v16;

  v17 = v64;
  v18 = v76;
  *v76 = v63;
  v18[1] = v17;

  v19 = v66;
  v20 = v76;
  v76[2] = v65;
  v20[3] = v19;

  v21 = v68;
  v22 = v76;
  v76[4] = v67;
  v22[5] = v21;

  v23 = v70;
  v24 = v76;
  v76[6] = v69;
  v24[7] = v23;

  v25 = v72;
  v26 = v76;
  v76[8] = v71;
  v26[9] = v25;

  v27 = v75;
  v28 = v76;
  v76[10] = v74;
  v28[11] = v27;
  sub_1C540FCD8();

  if (os_log_type_enabled(v78, v79))
  {
    v29 = v41;
    v33 = sub_1C5596A74();
    v32[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v34 = sub_1C5419DC0(0);
    v35 = sub_1C5419DC0(2);
    v37 = &v84;
    v84 = v33;
    v38 = &v83;
    v83 = v34;
    v39 = &v82;
    v82 = v35;
    v36 = 2;
    sub_1C5419E14(2, &v84);
    sub_1C5419E14(v36, v37);
    v80 = v63;
    v81 = v64;
    sub_1C5419E28(&v80, v37, v38, v39);
    v40 = v29;
    if (v29)
    {

      __break(1u);
    }

    else
    {
      v80 = v65;
      v81 = v66;
      sub_1C5419E28(&v80, &v84, &v83, &v82);
      v32[3] = 0;
      v80 = v67;
      v81 = v68;
      sub_1C5419E28(&v80, &v84, &v83, &v82);
      v32[2] = 0;
      v80 = v69;
      v81 = v70;
      sub_1C5419E28(&v80, &v84, &v83, &v82);
      v32[1] = 0;
      v80 = v71;
      v81 = v72;
      sub_1C5419E28(&v80, &v84, &v83, &v82);
      v32[0] = 0;
      v80 = v74;
      v81 = v75;
      sub_1C5419E28(&v80, &v84, &v83, &v82);
      _os_log_impl(&dword_1C5355000, v78, v79, "finished with results %s, error %s.", v33, 0x16u);
      sub_1C5419E74(v34);
      sub_1C5419E74(v35);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v30 = MEMORY[0x1E69E5920](v78);
  return (*(v44 + 8))(v43, v46, v30);
}

uint64_t sub_1C551B828(void *a1)
{
  v1 = a1;
  if (a1)
  {
    swift_getErrorValue();
    v4 = sub_1C5596E94();
    v5 = v2;

    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7)
  {
    return v6;
  }

  else
  {
    return sub_1C55965F4();
  }
}

uint64_t sub_1C551B944(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E3C8);
    v5 = sub_1C5596444();
    MEMORY[0x1E69E5920](a2);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x1E69E5928](a3);
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  v8(v6);
}

uint64_t sub_1C551BB70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C551929C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

id sub_1C551BBA0(uint64_t a1)
{
  v4 = sub_1C55948E4();
  v6 = [v1 initWithPendingDOB_];
  MEMORY[0x1E69E5920](v4);
  v2 = sub_1C5594924();
  (*(*(v2 - 8) + 8))(a1);
  return v6;
}

unint64_t sub_1C551BC44()
{
  v2 = qword_1EC15E378;
  if (!qword_1EC15E378)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E378);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C551BCA8()
{
  v2 = qword_1EC15E380;
  if (!qword_1EC15E380)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E380);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C551BD0C()
{
  v2 = qword_1EC15E388;
  if (!qword_1EC15E388)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E388);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1C551BE20()
{
  v2 = qword_1EC15E390;
  if (!qword_1EC15E390)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E390);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C551BEB4()
{
  v2 = qword_1EC15E398;
  if (!qword_1EC15E398)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E398);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C551BF48()
{
  v2 = qword_1EC15E3A0;
  if (!qword_1EC15E3A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E3A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C551BFDC()
{
  v2 = qword_1EC15E3A8;
  if (!qword_1EC15E3A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E3A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C551C0AC()
{
  v2 = qword_1EC167F60[0];
  if (!qword_1EC167F60[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC167F60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C551C140()
{
  v2 = qword_1EC168070;
  if (!qword_1EC168070)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC168070);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C551C1D4()
{
  v2 = qword_1EC168078[0];
  if (!qword_1EC168078[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC168078);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C551C250()
{
  v2 = qword_1EC15E3B8;
  if (!qword_1EC15E3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E3B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E3B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C551C2D8()
{
  v2 = qword_1EC15E3C0;
  if (!qword_1EC15E3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E3B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E3C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C551C370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2;
  v7 = a1;
  v8 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370);
  v3 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v3 - v3;
  v8 = MEMORY[0x1EEE9AC00](v7);
  sub_1C5429288(v8, &v3 - v3);
  sub_1C5402CCC(v6, v5, v4);
  return sub_1C541A9D8(v7);
}

double sub_1C551C428()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594E84();

  *&result = MEMORY[0x1E69E5920](v0).n128_u64[0];
  return result;
}

double sub_1C551C4CC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v4 - v6;
  v7 = *MEMORY[0x1EEE9AC00](v5);
  v2 = MEMORY[0x1E69E5928](v7);
  v11 = v7;
  v10 = v7;
  (*((*v7 & *MEMORY[0x1E69E7D40]) + 0x68))(v2);
  sub_1C54295D8(v8, v9);
  *&result = MEMORY[0x1E69E5920](v10).n128_u64[0];
  return result;
}

double sub_1C551C5DC(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1C5429288(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x70))(v9);
  *&result = MEMORY[0x1E69E5920](v10).n128_u64[0];
  return result;
}

uint64_t sub_1C551C6E8(const void *a1)
{
  v10 = a1;
  v12 = 0;
  v11 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v4 - v5;
  v12 = v2;
  v11 = v1;
  MEMORY[0x1E69E5928](v1);
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  sub_1C5429288(v10, v9);
  sub_1C5594E94();
  return sub_1C541A9D8(v10);
}

void (*sub_1C551C7F4(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_1C5594E74();
  return sub_1C54031B4;
}

uint64_t sub_1C551C8DC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E448);
  sub_1C5594E54();
  return swift_endAccess();
}

uint64_t sub_1C551C958(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E450);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E448);
  sub_1C5594E64();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*sub_1C551CAAC(void *a1))(void **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E450);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  sub_1C551C8DC();
  return sub_1C551CBD0;
}

void sub_1C551CBD0(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1C551C958(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1C551C958(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1C551CCCC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel__pendingDOB;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E448);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C551CD6C(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E448);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel__pendingDOB;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1C551CECC()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel_account);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C551CF3C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel_account);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C551D044()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel_accountStore);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C551D0B4(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel_accountStore);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

char *sub_1C551D1F4(void *a1)
{
  v60 = a1;
  v38 = sub_1C551DB04;
  v74 = 0;
  v73 = 0;
  v58 = 0;
  v43 = sub_1C5594924();
  v48 = *(v43 - 8);
  v42 = v43 - 8;
  v39 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v14 - v39;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E448);
  v52 = *(v57 - 8);
  v53 = v57 - 8;
  v41 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v14 - v41;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370);
  v45 = *(*(v2 - 8) + 64);
  v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v14 - v44;
  v47 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v14 - v44);
  v51 = &v14 - v47;
  v73 = v60;
  v74 = v1;
  v55 = v1;
  v54 = OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel__pendingDOB;
  v49 = *(v48 + 56);
  v50 = v48 + 56;
  v49();
  sub_1C551C370(v51, v56);
  (*(v52 + 32))(&v55[v54], v56, v57);
  v3 = v60;
  *&v74[OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel_accountStore] = v58;
  [v3 reload];
  v59 = v74;
  MEMORY[0x1E69E5928](v60);
  v4 = v60;
  *&v59[OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel_account] = v60;
  v61 = v74;
  v62 = [v4 aa_pendingDOB];
  if (v62)
  {
    v37 = v62;
    v36 = v62;
    sub_1C5594904();
    (*(v48 + 32))(v46, v40, v43);
    (v49)(v46, 0, 1, v43);
    MEMORY[0x1E69E5920](v36);
  }

  else
  {
    (v49)(v46, 1, 1, v43);
  }

  v17 = &v61[OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel__pendingDOB];
  v18 = &v72;
  v29 = 33;
  v34 = 0;
  swift_beginAccess();
  (*(v52 + 8))(v17, v57);
  sub_1C551C370(v46, v17);
  swift_endAccess();
  v19 = v74;
  v20 = 0;
  v5 = type metadata accessor for PendingBirthdayModel();
  v71.receiver = v19;
  v71.super_class = v5;
  v26 = objc_msgSendSuper2(&v71, sel_init);
  MEMORY[0x1E69E5928](v26);
  v74 = v26;
  v28 = v26;
  sub_1C551DA58();
  v25 = MEMORY[0x1E69E6158];
  v22 = sub_1C5596E04();
  v21 = v6;
  v23 = *MEMORY[0x1E69597F8];
  MEMORY[0x1E69E5928](v23);
  v7 = sub_1C5596574();
  v8 = v21;
  v9 = v7;
  v10 = v22;
  *v21 = v9;
  v8[1] = v11;
  sub_1C540FCD8();
  v24 = v10;
  MEMORY[0x1E69E5920](v23);
  v27 = sub_1C5596874();
  MEMORY[0x1E69E5928](v26);
  v31 = sub_1C551DABC();
  v33 = &unk_1EC168000;
  v30 = &v28[OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel_accountStore];
  v32 = &v70;
  swift_beginAccess();
  v12 = *v30;
  *v30 = v31;
  MEMORY[0x1E69E5920](v12);
  swift_endAccess();
  v35 = &v74[v33[52]];
  swift_beginAccess();
  if (*v35)
  {
    v16 = *v35;
    MEMORY[0x1E69E5928](v16);
    swift_endAccess();
    v68 = v38;
    v69 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v64 = 1107296256;
    v65 = 0;
    v66 = sub_1C551E1DC;
    v67 = &block_descriptor_17;
    v15 = _Block_copy(&aBlock);
    [v16 registerWithCompletion_];
    _Block_release(v15);
    MEMORY[0x1E69E5920](v16);
  }

  else
  {
    swift_endAccess();
  }

  MEMORY[0x1E69E5920](v60);
  MEMORY[0x1E69E5920](v74);
  return v26;
}

uint64_t type metadata accessor for PendingBirthdayModel()
{
  v1 = qword_1EC168230;
  if (!qword_1EC168230)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1C551DA58()
{
  v2 = qword_1EC15E458;
  if (!qword_1EC15E458)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E458);
    return ObjCClassMetadata;
  }

  return v2;
}

void sub_1C551DB04(uint64_t a1, void *a2)
{
  v54 = a1;
  v60 = a2;
  v47 = sub_1C5467F9C;
  v48 = sub_1C5467FA4;
  v49 = sub_1C545C6DC;
  v50 = sub_1C545C6D4;
  v51 = sub_1C545C6D4;
  v52 = sub_1C545C6E8;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v53 = 0;
  v55 = sub_1C5594C74();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v60);
  v59 = v23 - v58;
  v68 = v3;
  v67 = v2;
  v4 = v2;
  if (v60)
  {
    v46 = v60;
    v5 = v59;
    v31 = v60;
    v66 = v60;
    v6 = sub_1C54B05F8();
    (*(v56 + 16))(v5, v6, v55);
    v7 = v31;
    v35 = 7;
    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    sub_1C54398B0();

    v44 = sub_1C5594C54();
    v45 = sub_1C5596954();
    v32 = 17;
    v38 = swift_allocObject();
    *(v38 + 16) = 64;
    v39 = swift_allocObject();
    *(v39 + 16) = 8;
    v34 = 32;
    v8 = swift_allocObject();
    v9 = v33;
    v36 = v8;
    *(v8 + 16) = v47;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v36;
    v37 = v10;
    *(v10 + 16) = v48;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v37;
    v41 = v12;
    *(v12 + 16) = v49;
    *(v12 + 24) = v13;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v40 = sub_1C5596E04();
    v42 = v14;

    v15 = v38;
    v16 = v42;
    *v42 = v50;
    v16[1] = v15;

    v17 = v39;
    v18 = v42;
    v42[2] = v51;
    v18[3] = v17;

    v19 = v41;
    v20 = v42;
    v42[4] = v52;
    v20[5] = v19;
    sub_1C540FCD8();

    if (os_log_type_enabled(v44, v45))
    {
      v21 = v53;
      v24 = sub_1C5596A74();
      v23[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v25 = sub_1C5419DC0(1);
      v26 = sub_1C5419DC0(0);
      v27 = &v65;
      v65 = v24;
      v28 = &v64;
      v64 = v25;
      v29 = &v63;
      v63 = v26;
      sub_1C5419E14(2, &v65);
      sub_1C5419E14(1, v27);
      v61 = v50;
      v62 = v38;
      sub_1C5419E28(&v61, v27, v28, v29);
      v30 = v21;
      if (v21)
      {

        __break(1u);
      }

      else
      {
        v61 = v51;
        v62 = v39;
        sub_1C5419E28(&v61, &v65, &v64, &v63);
        v23[0] = 0;
        v61 = v52;
        v62 = v41;
        sub_1C5419E28(&v61, &v65, &v64, &v63);
        _os_log_impl(&dword_1C5355000, v44, v45, "PendingBirthdayModel - Monitored account store registration encountered error: %@", v24, 0xCu);
        sub_1C5419E74(v25);
        sub_1C5419E74(v26);
        sub_1C5596A54();
      }
    }

    else
    {
    }

    v22 = MEMORY[0x1E69E5920](v44);
    (*(v56 + 8))(v59, v55, v22);
  }
}

uint64_t sub_1C551E1DC(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  if (a2)
  {
    sub_1C543D95C();
    v5 = sub_1C5596714();
    MEMORY[0x1E69E5920](a2);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x1E69E5928](a3);
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  v8(v6);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id sub_1C551E370()
{
  v7 = v0;
  v4 = OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel_accountStore;
  v5 = (v0 + OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel_accountStore);
  swift_beginAccess();
  if (*v5)
  {
    v2 = *&v3[v4];
    MEMORY[0x1E69E5928](v2);
    swift_endAccess();
    (MEMORY[0x1E69E5928])();
    [v2 removeDelegate_];
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    swift_endAccess();
  }

  v6.receiver = v3;
  v6.super_class = type metadata accessor for PendingBirthdayModel();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

void sub_1C551E550(void *a1)
{
  v49 = a1;
  v58 = 0;
  v57 = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E460);
  v32 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v11 - v32;
  v34 = sub_1C5594924();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v11 - v37;
  v39 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v49);
  v40 = &v11 - v39;
  v41 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v42 = &v11 - v41;
  v43 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v44 = &v11 - v43;
  v45 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v46 = &v11 - v45;
  v58 = v8;
  v57 = v1;
  v47 = sub_1C551CECC();
  v48 = 0x1FB55D000uLL;
  v50 = [v47 0x1FB55D678];
  MEMORY[0x1E69E5920](v47);
  MEMORY[0x1E69E5928](v50);
  v51 = [v49 (v48 + 1656)];
  MEMORY[0x1E69E5928](v51);
  v55 = v50;
  v56 = v51;
  if (v50)
  {
    sub_1C5402C1C(&v55, &v54);
    if (v56)
    {
      v53 = v54;
      v27 = &v55;
      v52 = v56;
      sub_1C551EF4C();
      v28 = sub_1C5596A34();
      MEMORY[0x1E69E5920](v52);
      MEMORY[0x1E69E5920](v53);
      sub_1C5401EF8(v27);
      v29 = v28;
      goto LABEL_7;
    }

    MEMORY[0x1E69E5920](v54);
    goto LABEL_9;
  }

  if (v56)
  {
LABEL_9:
    sub_1C550728C(&v55);
    v29 = 0;
    goto LABEL_7;
  }

  sub_1C5401EF8(&v55);
  v29 = 1;
LABEL_7:
  v26 = v29;
  MEMORY[0x1E69E5920](v51);
  v9 = MEMORY[0x1E69E5920](v50);
  if ((v26 & 1) == 0)
  {
    return;
  }

  (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x68))(v9);
  v25 = [v49 aa_pendingDOB];
  if (v25)
  {
    v24 = v25;
    v23 = v25;
    sub_1C5594904();
    (*(v35 + 32))(v44, v38, v34);
    (*(v35 + 56))(v44, 0, 1, v34);
    MEMORY[0x1E69E5920](v23);
  }

  else
  {
    (*(v35 + 56))(v44, 1, 1, v34);
  }

  v20 = &v33[*(v31 + 48)];
  sub_1C5429288(v46, v33);
  sub_1C5429288(v44, v20);
  v21 = *(v35 + 48);
  v22 = v35 + 48;
  if (v21(v33, 1, v34) == 1)
  {
    if (v21(v20, 1, v34) == 1)
    {
      sub_1C541A9D8(v33);
      v19 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    sub_1C5429288(v33, v42);
    if (v21(v20, 1, v34) != 1)
    {
      (*(v35 + 32))(v38, v20, v34);
      sub_1C54290E8();
      v18 = sub_1C55964D4();
      v17 = *(v35 + 8);
      v16 = v35 + 8;
      v17(v38, v34);
      v17(v42, v34);
      sub_1C541A9D8(v33);
      v19 = v18;
      goto LABEL_20;
    }

    (*(v35 + 8))(v42, v34);
  }

  sub_1C551EE20(v33);
  v19 = 0;
LABEL_20:
  v15 = v19;
  sub_1C541A9D8(v44);
  sub_1C541A9D8(v46);
  if ((v15 & 1) == 0)
  {
    v14 = [v49 aa_pendingDOB];
    if (v14)
    {
      v13 = v14;
      v12 = v14;
      sub_1C5594904();
      (*(v35 + 32))(v40, v38, v34);
      (*(v35 + 56))(v40, 0, 1, v34);
      v10 = MEMORY[0x1E69E5920](v12);
    }

    else
    {
      (*(v35 + 56))(v40, 1, 1, v34);
    }

    (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x70))(v40, v10);
  }
}

uint64_t sub_1C551EE20(uint64_t a1)
{
  v4 = sub_1C5594924();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E460) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

unint64_t sub_1C551EF4C()
{
  v2 = qword_1EC15E470;
  if (!qword_1EC15E470)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E470);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C551EFB0()
{
  *(v1 + 200) = v0;
  *(v1 + 144) = v1;
  *(v1 + 152) = 0;
  *(v1 + 192) = 0;
  *(v1 + 288) = 0;
  v2 = sub_1C5594C74();
  *(v1 + 208) = v2;
  *(v1 + 216) = *(v2 - 8);
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = swift_task_alloc();
  *(v1 + 240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370);
  *(v1 + 248) = swift_task_alloc();
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 152) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1C551F12C, 0, 0);
}

uint64_t sub_1C551F12C()
{
  v29 = v0[32];
  v1 = v0[25];
  v0[18] = v0;
  (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x68))();
  v30 = sub_1C5594924();
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  if ((v32)(v29, 1) == 1)
  {
    sub_1C541A9D8(*(v28 + 256));
    v2 = *(v28 + 232);
    v21 = *(v28 + 208);
    v20 = *(v28 + 216);
    v3 = sub_1C54B05F8();
    (*(v20 + 16))(v2, v3, v21);
    oslog = sub_1C5594C54();
    v22 = sub_1C5596934();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v24 = sub_1C5596E04();
    if (os_log_type_enabled(oslog, v22))
    {
      buf = sub_1C5596A74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v11 = sub_1C5419DC0(0);
      v12 = sub_1C5419DC0(0);
      *(v28 + 160) = buf;
      *(v28 + 168) = v11;
      *(v28 + 176) = v12;
      sub_1C5419E14(0, (v28 + 160));
      sub_1C5419E14(0, (v28 + 160));
      *(v28 + 184) = v24;
      v13 = swift_task_alloc();
      v13[2] = v28 + 160;
      v13[3] = v28 + 168;
      v13[4] = v28 + 176;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();

      _os_log_impl(&dword_1C5355000, oslog, v22, "PendingBirthdayModel - Pending DOB is nil. Nothing to clear", buf, 2u);
      sub_1C5419E74(v11);
      sub_1C5419E74(v12);
      sub_1C5596A54();
    }

    v8 = *(v28 + 232);
    v9 = *(v28 + 208);
    v7 = *(v28 + 216);
    v4 = MEMORY[0x1E69E5920](oslog);
    (*(v7 + 8))(v8, v9, v4);

    v5 = *(*(v28 + 144) + 8);

    return v5();
  }

  else
  {
    sub_1C541A9D8(*(v28 + 256));
    v27 = *(v28 + 248);
    v25 = sub_1C551CECC();
    [v25 reload];
    MEMORY[0x1E69E5920](v25);
    v26 = sub_1C551CECC();
    (*(v31 + 56))(v27, 1, 1, v30);
    if (v32(v27, 1, v30) == 1)
    {
      v19 = 0;
    }

    else
    {
      v17 = *(v28 + 248);
      v18 = sub_1C55948E4();
      (*(v31 + 8))(v17, v30);
      v19 = v18;
    }

    [v26 aa_setPendingDOB_];
    MEMORY[0x1E69E5920](v19);
    MEMORY[0x1E69E5920](v26);
    v16 = [objc_opt_self() defaultStore];
    *(v28 + 264) = v16;
    if (v16)
    {
      v15 = sub_1C551CECC();
      *(v28 + 272) = v15;
      *(v28 + 16) = *(v28 + 144);
      *(v28 + 56) = v28 + 289;
      *(v28 + 24) = sub_1C551F908;
      v14 = swift_continuation_init();
      *(v28 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E478);
      *(v28 + 112) = v14;
      *(v28 + 80) = MEMORY[0x1E69E9820];
      *(v28 + 88) = 1107296256;
      *(v28 + 92) = 0;
      *(v28 + 96) = sub_1C552082C;
      *(v28 + 104) = &block_descriptor_5;
      [v16 saveVerifiedAccount:v15 withCompletionHandler:?];

      return MEMORY[0x1EEE6DEC8](v28 + 16);
    }

    else
    {
      return sub_1C5596C94();
    }
  }
}

uint64_t sub_1C551F908()
{
  v4 = *v0;
  v4[18] = *v0;
  v1 = v4[6];
  v4[35] = v1;
  if (v1)
  {
    v2 = sub_1C5520148;
  }

  else
  {
    v2 = sub_1C551FA60;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C551FA60()
{
  v34 = v0;
  v15 = *(v0 + 272);
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v16 = *(v0 + 216);
  v17 = *(v0 + 208);
  *(v0 + 144) = v0;
  v18 = *(v0 + 289);
  *(v0 + 288) = v18 & 1;
  MEMORY[0x1E69E5920](v1);
  MEMORY[0x1E69E5920](v15);
  v3 = sub_1C54B05F8();
  (*(v16 + 16))(v2, v3, v17);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v27 = sub_1C5594C54();
  v28 = sub_1C5596934();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = 4;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1C54E7408;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1C54D66AC;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1C54D66E0;
  *(v22 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1C54D6728;
  *(v25 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  sub_1C5596E04();
  v26 = v4;

  *v26 = sub_1C545C6D4;
  v26[1] = v23;

  v26[2] = sub_1C545C6D4;
  v26[3] = v24;

  v26[4] = sub_1C54D6734;
  v26[5] = v25;
  sub_1C540FCD8();

  if (os_log_type_enabled(v27, v28))
  {
    buf = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v12 = sub_1C5419DC0(0);
    v13 = sub_1C5419DC0(0);
    v29 = buf;
    v30 = v12;
    v31 = v13;
    sub_1C5419E14(0, &v29);
    sub_1C5419E14(1, &v29);
    v32 = sub_1C545C6D4;
    v33 = v23;
    sub_1C5419E28(&v32, &v29, &v30, &v31);
    v32 = sub_1C545C6D4;
    v33 = v24;
    sub_1C5419E28(&v32, &v29, &v30, &v31);
    v32 = sub_1C54D6734;
    v33 = v25;
    sub_1C5419E28(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_1C5355000, v27, v28, "PendingBirthdayModel - Cleared pending DOB %{BOOL}d", buf, 8u);
    sub_1C5419E74(v12);
    sub_1C5419E74(v13);
    sub_1C5596A54();
  }

  else
  {
  }

  v9 = v14[30];
  v10 = v14[26];
  v8 = v14[27];
  v5 = MEMORY[0x1E69E5920](v27);
  (*(v8 + 8))(v9, v10, v5);

  v6 = *(v14[18] + 8);

  return v6();
}

uint64_t sub_1C5520148()
{
  v36 = v0;
  v21 = v0[35];
  v18 = v0[34];
  v17 = v0[33];
  v16 = v0[28];
  v19 = v0[27];
  v20 = v0[26];
  v0[18] = v0;
  swift_willThrow();
  MEMORY[0x1E69E5920](v17);
  MEMORY[0x1E69E5920](v18);
  v1 = v21;
  v0[24] = v21;
  v2 = sub_1C54B05F8();
  (*(v19 + 16))(v16, v2, v20);
  v3 = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  sub_1C54398B0();

  v29 = sub_1C5594C54();
  v30 = sub_1C5596954();
  v25 = swift_allocObject();
  *(v25 + 16) = 64;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1C5467F9C;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1C5467FA4;
  *(v24 + 24) = v23;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1C545C6DC;
  *(v27 + 24) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  sub_1C5596E04();
  v28 = v4;

  *v28 = sub_1C545C6D4;
  v28[1] = v25;

  v28[2] = sub_1C545C6D4;
  v28[3] = v26;

  v28[4] = sub_1C545C6E8;
  v28[5] = v27;
  sub_1C540FCD8();

  if (os_log_type_enabled(v29, v30))
  {
    buf = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v13 = sub_1C5419DC0(1);
    v14 = sub_1C5419DC0(0);
    v31 = buf;
    v32 = v13;
    v33 = v14;
    sub_1C5419E14(2, &v31);
    sub_1C5419E14(1, &v31);
    v34 = sub_1C545C6D4;
    v35 = v25;
    sub_1C5419E28(&v34, &v31, &v32, &v33);
    v34 = sub_1C545C6D4;
    v35 = v26;
    sub_1C5419E28(&v34, &v31, &v32, &v33);
    v34 = sub_1C545C6E8;
    v35 = v27;
    sub_1C5419E28(&v34, &v31, &v32, &v33);
    _os_log_impl(&dword_1C5355000, v29, v30, "PendingBirthdayModel - Error clearing pendingDOB: %@", buf, 0xCu);
    sub_1C5419E74(v13);
    sub_1C5419E74(v14);
    sub_1C5596A54();
  }

  else
  {
  }

  v11 = v15[35];
  v9 = v15[28];
  v10 = v15[26];
  v8 = v15[27];
  v5 = MEMORY[0x1E69E5920](v29);
  (*(v8 + 8))(v9, v10, v5);

  v6 = *(v15[18] + 8);

  return v6();
}

double sub_1C552082C(uint64_t a1, char a2, void *a3)
{
  MEMORY[0x1E69E5928](a3);
  v8 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_1C542501C(v8, a3, MEMORY[0x1E69E6370]);
  }

  else
  {
    v9 = a2;
    sub_1C5425080(v8, &v9, MEMORY[0x1E69E6370]);
  }

  *&result = MEMORY[0x1E69E5920](a3).n128_u64[0];
  return result;
}

uint64_t sub_1C5520974@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PendingBirthdayModel();
  result = sub_1C5594E34();
  *a1 = result;
  return result;
}

uint64_t sub_1C55209B0(uint64_t a1)
{
  v20 = a1;
  v16 = MEMORY[0x1E69E85E0];
  v19 = &unk_1C55B5E80;
  v22 = 0;
  v21 = 0;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v13 - v13;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v21 = v1;
  v17 = 0;
  v2 = sub_1C5596814();
  (*(*(v2 - 8) + 56))(v18, 1);
  MEMORY[0x1E69E5928](v14);
  MEMORY[0x1E69E5928](v20);
  sub_1C55967E4();
  v3 = sub_1C55967D4();
  v4 = v14;
  v15 = v3;
  v5 = swift_allocObject();
  v6 = v16;
  v7 = v17;
  v8 = v18;
  v9 = v19;
  v10 = v5;
  v11 = v20;
  v10[2] = v15;
  v10[3] = v6;
  v10[4] = v4;
  v10[5] = v11;
  sub_1C54061EC(v7, v7, v8, v9, v10, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1C5520B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  sub_1C55967E4();
  v5[7] = sub_1C55967D4();
  v8 = sub_1C55967A4();

  return MEMORY[0x1EEE6DFA0](sub_1C5520C1C, v8, v6);
}

uint64_t sub_1C5520C1C()
{
  v1 = v0[6];
  v2 = v0[5];
  v0[2] = v0;
  (*((*v2 & *MEMORY[0x1E69E7D40]) + 0xD0))(v1);

  v3 = *(v0[2] + 8);

  return v3();
}

id sub_1C5520D6C()
{
  v2 = sub_1C5596864();
  v3 = [v1 initWithAccountTypes_delegate_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v2);

  return v3;
}

uint64_t sub_1C5520E30(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C5520B54(a1, v6, v7, v8, v9);
}

uint64_t sub_1C5520F30()
{
  updated = sub_1C5521020();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1C5521020()
{
  v4 = qword_1EC15E488;
  if (!qword_1EC15E488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E370);
    v3 = sub_1C5594EA4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC15E488);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1C55210C4()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1C5521114(char a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_endAccess();
}

uint64_t sub_1C55211BC()
{
  swift_getKeyPath();
  (*(*v0 + 240))();

  swift_beginAccess();
  v3 = *(v2 + 16);
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1C5521268(int a1)
{
  v17 = a1;
  v13 = a1;
  v20 = 0;
  v14 = 0;
  v21 = a1;
  v15 = &v19;
  swift_beginAccess();
  v16 = *(v1 + 16);
  swift_endAccess();
  v18[31] = v16;
  v18[30] = v17;
  if (sub_1C542908C())
  {
    v2 = v12;
    v3 = v14;
    KeyPath = swift_getKeyPath();
    v8 = KeyPath;

    v10 = v6;
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 248))(v4, sub_1C55227EC);
    v11 = v3;

    return v11;
  }

  else
  {
    v6[1] = v18;
    swift_beginAccess();
    *(v12 + 16) = v13 & 1;
    swift_endAccess();
    return v14;
  }
}

uint64_t sub_1C5521454(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  return swift_endAccess();
}

void (*sub_1C55214CC(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 240))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI33BirthdayUpdatePendingTipViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C552281C();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C5521160();
  return sub_1C55216A4;
}

void sub_1C55216A4(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5521760(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5521760(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C5521760(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_1C5594B24();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI33BirthdayUpdatePendingTipViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C552281C();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

double sub_1C55218EC()
{
  swift_beginAccess();

  swift_endAccess();
  sub_1C5594ED4();

  return v1;
}

uint64_t sub_1C5521960()
{
  swift_beginAccess();

  swift_endAccess();
  sub_1C5594EE4();
}

void (*sub_1C55219D4(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  swift_beginAccess();
  v3[6] = *(v1 + 24);

  swift_endAccess();
  sub_1C5594ED4();
  return sub_1C5521A88;
}

void sub_1C5521A88(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4] = v2[3];
  }

  else
  {
    v2[5] = v2[3];
  }

  sub_1C5594EE4();

  free(v2);
}

double sub_1C5521B24()
{
  swift_beginAccess();

  swift_endAccess();
  sub_1C5594EF4();

  return v1;
}

uint64_t sub_1C5521BB0()
{
  swift_beginAccess();
  v2 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

uint64_t sub_1C5521C00(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 24) = a1;

  swift_endAccess();
}

BOOL sub_1C5521C78()
{
  v30 = 0;
  v29 = 0.0;
  v26 = 0.0;
  v11 = sub_1C5594924();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v10 = &v4 - v7;
  v30 = v0;
  sub_1C5594914();
  sub_1C55948F4();
  v1 = v22;
  v15 = v2;
  v29 = v2;
  (*(v8 + 8))(v10, v11);
  v12 = &v28;
  v16 = 32;
  v17 = 0;
  swift_beginAccess();
  v13 = *(v1 + 24);

  swift_endAccess();
  v20 = MEMORY[0x1E69E63B0];
  sub_1C5594ED4();
  v14 = v27;

  v18 = v15 - v14;
  v26 = v15 - v14;
  v19 = &v25;
  swift_beginAccess();
  v21 = *(v1 + 24);

  swift_endAccess();
  sub_1C5594ED4();
  v23 = v24;

  v6 = v23 == 0.0 || *(v22 + 32) < v18;
  v5 = v6;

  return v5;
}

double sub_1C5521E74()
{
  v14 = 0;
  v8 = sub_1C5594924();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = v4 - v4[0];
  v14 = v0;
  sub_1C5594914();
  sub_1C55948F4();
  v1 = v4[1];
  v10 = v2;
  (*(v5 + 8))(v7, v8);
  v9 = &v13;
  swift_beginAccess();
  v11 = *(v1 + 24);

  swift_endAccess();
  v12 = v10;
  sub_1C5594EE4();

  return sub_1C5522074();
}

double sub_1C5522074()
{
  v2 = [objc_opt_self() standardUserDefaults];
  swift_beginAccess();

  swift_endAccess();
  sub_1C5594ED4();

  sub_1C55965F4();
  v1 = sub_1C5596554();

  [v2 setDouble:v1 forKey:v3];
  MEMORY[0x1E69E5920](v1);
  *&result = MEMORY[0x1E69E5920](v2).n128_u64[0];
  return result;
}

uint64_t sub_1C5522180()
{
  v9 = &unk_1C55B5F58;
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860);
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v8 = &v6 - v6;
  v11 = v0;
  v7 = 0;
  v2 = sub_1C5596814();
  (*(*(v2 - 8) + 56))(v8, 1);
  v3 = swift_allocObject();
  v10 = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E500);
  sub_1C54061EC(v7, v7, v8, v9, v10, v4);
}

uint64_t sub_1C55222BC(uint64_t a1)
{
  *(v1 + 24) = a1;
  *(v1 + 16) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C55222E8, 0, 0);
}

uint64_t sub_1C55222E8()
{
  *(v0 + 16) = v0;
  sub_1C54C3530();
  sub_1C5594E04();
  v3 = *(v0 + 24);

  *v3 = 0;
  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_1C55223F8@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC14AppleAccountUI33BirthdayUpdatePendingTipViewModel___observationRegistrar;
  v2 = sub_1C5594B24();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C5522464(void *a1)
{
  v6 = a1;
  v15 = 0;
  v13 = 0;
  v4 = *a1;
  v11 = sub_1C5594B24();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v1 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v4 - v2;
  v15 = v1;
  v14 = *(v4 + *MEMORY[0x1E69E77B0] + 8);
  v13 = v5;
  (*(v8 + 16))(&v4 - v2, v5 + OBJC_IVAR____TtC14AppleAccountUI33BirthdayUpdatePendingTipViewModel___observationRegistrar);
  v7 = &v12;
  v12 = v5;
  sub_1C552281C();
  sub_1C5594AE4();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_1C55225D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a5;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v32 = a4;
  v13 = *a1;
  v11 = sub_1C5594B24();
  v14 = *(v11 - 8);
  v12 = v11 - 8;
  v5 = MEMORY[0x1EEE9AC00](v18);
  v15 = v10 - v6;
  v31 = v5;
  v30 = *(v13 + *MEMORY[0x1E69E77B0] + 8);
  v28 = v7;
  v29 = v20;
  v27 = v16;
  (*(v14 + 16))(v10 - v6, v16 + OBJC_IVAR____TtC14AppleAccountUI33BirthdayUpdatePendingTipViewModel___observationRegistrar);
  v23 = &v26;
  v26 = v16;
  sub_1C552281C();
  v8 = v22;
  sub_1C5594AD4();
  v24 = v8;
  v25 = v8;
  if (v8)
  {
    v10[1] = v25;
  }

  return (*(v14 + 8))(v15, v11);
}

unint64_t sub_1C552281C()
{
  v2 = qword_1EC15E4F8;
  if (!qword_1EC15E4F8)
  {
    type metadata accessor for BirthdayUpdatePendingTipViewModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E4F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for BirthdayUpdatePendingTipViewModel()
{
  v1 = qword_1EC1682D0;
  if (!qword_1EC1682D0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1C5522910(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1C5405B1C;

  return sub_1C55222BC(a1);
}

uint64_t sub_1C55229DC()
{
  sub_1C5410D10();
  v3 = OBJC_IVAR____TtC14AppleAccountUI33BirthdayUpdatePendingTipViewModel___observationRegistrar;
  v1 = sub_1C5594B24();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_1C5522AFC()
{
  sub_1C541E120(0, (v0 + 16));
  *(v0 + 24) = sub_1C552189C();
  *(v0 + 32) = 0x408C200000000000;
  sub_1C5594B14();
  return v2;
}

uint64_t sub_1C5522BAC()
{
  updated = sub_1C5594B24();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_1C5522CD8()
{
  v2 = qword_1EC159F38;
  if (!qword_1EC159F38)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC159F38);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C5522D3C()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

double sub_1C5522D94(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5522E0C()
{
  swift_getKeyPath();
  (*(*v0 + 192))();

  swift_beginAccess();
  v3 = *(v2 + 16);
  MEMORY[0x1E69E5928](v3);
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5522EC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 144))(v2);
}

uint64_t sub_1C5522F40(void *a1, uint64_t *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;

  (*(*v5 + 152))(v3);
}

void sub_1C5522FE0(void *a1)
{
  v20 = a1;
  v19 = 0;
  v26 = 0;
  v17 = 0;
  v27 = a1;
  v18 = &v25;
  swift_beginAccess();
  v22 = *(v1 + 16);
  v2 = v22;
  swift_endAccess();
  v21 = sub_1C5522CD8();
  sub_1C5526888();
  v23 = sub_1C5429BE8();

  if (v23)
  {
    v3 = v16;
    v4 = v17;
    KeyPath = swift_getKeyPath();
    v12 = KeyPath;

    v5 = v20;
    v14 = v10;
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v3 + 200))(v6, sub_1C5526908);
    v15 = v4;

    v11 = v15;
  }

  else
  {
    v7 = v20;
    v8 = v20;
    v10[1] = &v24;
    swift_beginAccess();
    v9 = *(v16 + 16);
    *(v16 + 16) = v20;

    swift_endAccess();
    v11 = v17;
  }
}

double sub_1C5523208(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a2);
  swift_beginAccess();
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}