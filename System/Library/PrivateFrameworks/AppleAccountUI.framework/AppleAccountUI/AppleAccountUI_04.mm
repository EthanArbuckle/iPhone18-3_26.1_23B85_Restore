uint64_t sub_1C546D2EC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  v4();
}

uint64_t sub_1C546D390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a1;
  v120 = sub_1C546DD24();
  v121 = v2;
  sub_1C54141E8();
  v116 = sub_1C5595A04();
  v117 = v3;
  v118 = v4;
  v119 = v5;
  v24 = v3;
  v23 = v4;
  v25 = v5;
  sub_1C5595854();
  v112 = v116;
  v113 = v24;
  v114 = v23 & 1;
  v115 = v25;
  v108 = sub_1C5595974();
  v109 = v6;
  v110 = v7;
  v111 = v8;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  sub_1C5412EA0(v116, v24, v23 & 1);

  sub_1C5595834();
  v104 = v108;
  v105 = v26;
  v106 = v27 & 1;
  v107 = v28;
  v100 = sub_1C55959C4();
  v101 = v9;
  v102 = v10;
  v103 = v11;
  v29 = v9;
  v30 = v10;
  v31 = v11;

  sub_1C5412EA0(v108, v26, v27 & 1);

  v97[0] = v100;
  v97[1] = v29;
  v98 = v30 & 1;
  v99 = v31;
  sub_1C5595C54();
  sub_1C5414260(v97);
  v92[0] = v122;
  v92[1] = v123;
  v93 = v124 & 1;
  v94 = v125;
  v95 = v126;
  v96 = v127;
  sub_1C55957D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC18);
  sub_1C546FF30();
  sub_1C5595D84();
  sub_1C546FFD4(v92);
  memcpy(__dst, v128, sizeof(__dst));
  memcpy(v91, __dst, 0x59uLL);
  sub_1C55957A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC28);
  sub_1C5470028();
  sub_1C5595D84();
  sub_1C546FFD4(v91);
  memcpy(v134, v129, sizeof(v134));
  memcpy(v90, v134, 0x89uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC38);
  sub_1C54700CC();
  sub_1C5595E14();
  sub_1C546FFD4(v90);
  memcpy(v135, v130, sizeof(v135));
  memcpy(v89, v135, 0x8BuLL);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC48);
  sub_1C5470170();
  sub_1C540EFD8(v89, v41, v131);
  sub_1C546FFD4(v89);
  v78 = sub_1C546DDF8();
  v79 = v12;
  v74 = sub_1C5595A04();
  v75 = v13;
  v76 = v14;
  v77 = v15;
  v33 = v13;
  v32 = v14;
  v34 = v15;
  sub_1C5595874();
  v70 = v74;
  v71 = v33;
  v72 = v32 & 1;
  v73 = v34;
  v66 = sub_1C5595974();
  v67 = v16;
  v68 = v17;
  v69 = v18;
  v35 = v16;
  v36 = v17;
  v37 = v18;
  sub_1C5412EA0(v74, v33, v32 & 1);

  sub_1C55958E4();
  v62 = v66;
  v63 = v35;
  v64 = v36 & 1;
  v65 = v37;
  v58 = sub_1C55959C4();
  v59 = v19;
  v60 = v20;
  v61 = v21;
  v38 = v19;
  v39 = v20;
  v40 = v21;

  sub_1C5412EA0(v66, v35, v36 & 1);

  v55[0] = v58;
  v55[1] = v38;
  v56 = v39 & 1;
  v57 = v40;
  sub_1C5595C54();
  sub_1C5414260(v55);
  v50[0] = v80;
  v50[1] = v81;
  v51 = v82 & 1;
  v52 = v83;
  v53 = v84;
  v54 = v85;
  sub_1C55957A4();
  sub_1C5595D84();
  sub_1C546FFD4(v50);
  memcpy(v136, v86, sizeof(v136));
  memcpy(v49, v136, 0x59uLL);
  sub_1C5595E14();
  sub_1C546FFD4(v49);
  memcpy(v137, v87, sizeof(v137));
  memcpy(v48, v137, 0x5BuLL);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC58);
  sub_1C5470214();
  sub_1C540EFD8(v48, v42, v88);
  sub_1C546FFD4(v48);
  sub_1C54702B8(v131, v46);
  v47[0] = v46;
  sub_1C54703B0(v88, v45);
  v47[1] = v45;
  v44[0] = v41;
  v44[1] = v42;
  sub_1C540F5A0(v47, 2uLL, v44, a2);
  sub_1C546FFD4(v45);
  sub_1C546FFD4(v46);
  sub_1C546FFD4(v88);
  return sub_1C546FFD4(v131);
}

unint64_t sub_1C546DB90()
{
  v2 = qword_1EC15CB40;
  if (!qword_1EC15CB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CB38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CB40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C546DC18()
{
  v2 = qword_1EC15CB50;
  if (!qword_1EC15CB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CB48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CB50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C546DCA0(uint64_t a1)
{
  sub_1C5412EA0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  sub_1C5412EA0(*(a1 + 168), *(a1 + 176), *(a1 + 184) & 1);

  return a1;
}

uint64_t sub_1C546DD24()
{
  if (sub_1C546DECC())
  {
    sub_1C55965F4();
    v2 = sub_1C54637B4();

    return v2;
  }

  else
  {
    sub_1C55965F4();
    v1 = sub_1C54637B4();

    return v1;
  }
}

uint64_t sub_1C546DDF8()
{
  if (sub_1C546DECC())
  {
    sub_1C55965F4();
    v2 = sub_1C54637B4();

    return v2;
  }

  else
  {
    sub_1C55965F4();
    v1 = sub_1C54637B4();

    return v1;
  }
}

BOOL sub_1C546DECC()
{
  v3 = *(v0 + *(type metadata accessor for ReviewCustodianListView() + 24) + 8);

  (*(*v3 + 112))(v1);

  type metadata accessor for CustodianListItem();
  v4 = sub_1C5596744();

  return v4 > 1;
}

uint64_t sub_1C546DF88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  v18 = a1;
  v21 = 0;
  v20 = 0;
  v15 = type metadata accessor for ReviewCustodianListView();
  v14[0] = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = (v14 - v14[0]);
  v21 = v14 - v14[0];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v2 = sub_1C55965F4();
  v3 = v19;
  v4 = v2;
  v5 = v15;
  *v19 = v4;
  v3[1] = v6;
  v14[2] = *(v5 + 20);
  swift_getKeyPath();
  sub_1C5595024();

  v16 = *(v15 + 24);
  v7 = sub_1C54682E0();
  v8 = v19;
  v10 = v9;
  v11 = v17;
  v12 = (v19 + v16);
  *v12 = v7;
  v12[1] = v10;
  sub_1C542B834(v8, v11);

  return sub_1C542B9AC(v19);
}

uint64_t sub_1C546E0E4()
{
  type metadata accessor for CustodianListItem();
  sub_1C546EFC0();
  return sub_1C5595184();
}

void sub_1C546E158(_BYTE *a1)
{
  v2 = type metadata accessor for ReviewCustodianListView();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  sub_1C546CB58(a1, v3);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1C546E234()
{
  v2 = qword_1EC15CB58;
  if (!qword_1EC15CB58)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15CB58);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C546E2FC()
{
  v2 = qword_1EC15CB68;
  if (!qword_1EC15CB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CB60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CB68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C546E384(uint64_t a1, uint64_t a2)
{

  return a2;
}

uint64_t sub_1C546E3E0(uint64_t a1)
{

  *(v1 + 8) = a1;
}

uint64_t sub_1C546E464()
{

  type metadata accessor for CustodianListItem();
  sub_1C546EFC0();
  v1 = sub_1C5595194();

  return v1;
}

uint64_t sub_1C546E51C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1C546E580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v20 = a1;
  v21 = a2;
  v22 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB88);
  sub_1C546F050();
  sub_1C5412C88();
  sub_1C5596024();

  memcpy(__dst, v15, sizeof(__dst));
  memcpy(v14, __dst, sizeof(v14));
  sub_1C5596244();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB98);
  sub_1C546F0D8();
  sub_1C543F8AC();
  sub_1C543AE1C();
  sub_1C5595B24();
  sub_1C546F160(v14);
  memcpy(v24, v16, sizeof(v24));
  memcpy(v13, v24, 0x79uLL);
  v4 = [objc_opt_self() secondarySystemBackgroundColor];
  v12 = sub_1C5595E44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CBA8);
  sub_1C546F1B0();
  sub_1C5595BF4();
  sub_1C5410D10();
  sub_1C546F160(v13);
  memcpy(v25, v17, sizeof(v25));
  memcpy(v11, v25, sizeof(v11));
  sub_1C5596214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CBB8);
  sub_1C546F258();
  sub_1C5595D24();
  sub_1C546F300(v11);
  memcpy(v26, v18, sizeof(v26));
  memcpy(v10, v26, sizeof(v10));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CBC8);
  sub_1C546F35C();
  sub_1C540EFD8(v10, v7, v19);
  sub_1C546F300(v10);
  memcpy(v27, v19, sizeof(v27));
  sub_1C546F400(v27, v9);
  memcpy(v8, v27, sizeof(v8));
  sub_1C540EFD8(v8, v7, a3);
  sub_1C546F300(v8);
  return sub_1C546F300(v19);
}

uint64_t *sub_1C546E96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v62 = a3;
  v42 = a1;
  v40 = a2;
  v41 = a4;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v66 = v90;
  memset(v90, 0, sizeof(v90));
  v24 = sub_1C5595F04();
  v22 = *(v24 - 8);
  v23 = v24 - 8;
  v16 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = &v16 - v16;
  v108 = MEMORY[0x1EEE9AC00](v42);
  v109 = v4;
  v110 = v5;
  v17 = sub_1C546E384(v108, v4);
  v26 = *(v17 + 48);

  v18 = sub_1C54127B4();
  v19 = v6;
  v20 = v7;
  v21 = v8;
  sub_1C54127C8(v25);
  v27 = sub_1C5595F44();
  (*(v22 + 8))(v25, v24);

  v30 = v100;
  v100[0] = v27;
  v28 = MEMORY[0x1E6981748];
  v29 = MEMORY[0x1E6981710];
  sub_1C5410F68();
  sub_1C5595D14();
  sub_1C5410D10();
  v35 = v94;
  v94[0] = v100[1];
  v94[1] = v100[2];
  v55 = 1;
  v95 = v101 & 1;
  v96 = v102;
  v97 = v103 & 1;
  v98 = v104;
  v99 = v105;
  sub_1C5596014();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CBF0);
  v33 = sub_1C546FB60();
  v34 = sub_1C546FC00();
  v32 = MEMORY[0x1E69817E8];
  v93 = sub_1C546EEB4();
  v92 = v93;
  v36 = &v106;
  sub_1C5595E04();
  sub_1C5410D10();
  v37 = __dst;
  v38 = 58;
  memcpy(__dst, v36, 0x3AuLL);
  v39 = v91;
  memcpy(v91, __dst, 0x3AuLL);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC00);
  v60 = sub_1C546FC78();
  v67 = v107;
  sub_1C540EFD8(v39, v58, v107);
  sub_1C5410D10();
  v43 = sub_1C546E384(v42, v40);
  v44 = *(v43 + 16);
  v45 = *(v43 + 24);
  sub_1C5594CF4();

  v46 = v89;
  v89[0] = v44;
  v89[1] = v45;
  sub_1C54141E8();
  v85 = sub_1C5595A04();
  v86 = v9;
  v87 = v10;
  v88 = v11;
  v48 = v85;
  v49 = v9;
  v50 = v10;
  v51 = v11;
  v47 = sub_1C55958E4();
  v81 = v48;
  v82 = v49;
  v83 = v50 & 1 & v55;
  v84 = v51;
  v77 = sub_1C55959C4();
  v78 = v12;
  v79 = v13;
  v80 = v14;
  v52 = v77;
  v53 = v12;
  v54 = v13;
  v56 = v14;

  sub_1C5412EA0(v48, v49, v50 & 1);

  v57 = v74;
  v74[0] = v52;
  v74[1] = v53;
  v75 = v54 & 1 & v55;
  v76 = v56;
  v59 = MEMORY[0x1E6981148];
  v61 = MEMORY[0x1E6981138];
  sub_1C540EFD8(v74, MEMORY[0x1E6981148], v66);
  sub_1C5414260(v57);
  v65 = v72;
  sub_1C546FDA8(v67, v72);
  v63 = v73;
  v73[0] = v65;
  v64 = v71;
  sub_1C54142A8(v66, v71);
  v73[1] = v64;
  v70[0] = v58;
  v70[1] = v59;
  v68 = v60;
  v69 = v61;
  sub_1C540F5A0(v63, 2uLL, v70, v62);
  sub_1C5414260(v64);
  sub_1C5410D10();
  sub_1C5414260(v66);
  result = v67;
  sub_1C5410D10();
  return result;
}

uint64_t sub_1C546EF30()
{
  sub_1C55965F4();
  sub_1C5594CF4();
  v1 = sub_1C5596554();
  MEMORY[0x1E69E5928](v1);

  MEMORY[0x1E69E5920](v1);
  result = v1;
  qword_1EC16B458 = v1;
  return result;
}

unint64_t sub_1C546EFC0()
{
  v2 = qword_1EC15CB80;
  if (!qword_1EC15CB80)
  {
    type metadata accessor for CustodianListItem();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CB80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C546F050()
{
  v2 = qword_1EC15CB90;
  if (!qword_1EC15CB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CB88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CB90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C546F0D8()
{
  v2 = qword_1EC15CBA0;
  if (!qword_1EC15CBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CB98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CBA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C546F160(uint64_t a1)
{

  sub_1C5412EA0(*(a1 + 88), *(a1 + 96), *(a1 + 104) & 1);

  return a1;
}

unint64_t sub_1C546F1B0()
{
  v2 = qword_1EC15CBB0;
  if (!qword_1EC15CBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CBA8);
    sub_1C546F0D8();
    sub_1C543093C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CBB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C546F258()
{
  v2 = qword_1EC15CBC0;
  if (!qword_1EC15CBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CBB8);
    sub_1C546F1B0();
    sub_1C54145A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CBC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C546F300(uint64_t a1)
{

  sub_1C5412EA0(*(a1 + 88), *(a1 + 96), *(a1 + 104) & 1);

  return a1;
}

unint64_t sub_1C546F35C()
{
  v2 = qword_1EC15CBD0;
  if (!qword_1EC15CBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CBC8);
    sub_1C546F258();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CBD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C546F400(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);

  *(a2 + 24) = v3;
  memcpy((a2 + 32), (a1 + 32), 0x32uLL);
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  v6 = *(a1 + 104);
  sub_1C54130AC(v4, v5, v6 & 1);
  *(a2 + 88) = v4;
  *(a2 + 96) = v5;
  *(a2 + 104) = v6 & 1;
  v7 = *(a1 + 112);
  sub_1C5594CF4();
  *(a2 + 112) = v7;
  *(a2 + 120) = *(a1 + 120);
  v9 = *(a1 + 128);

  *(a2 + 128) = v9;
  memcpy((a2 + 136), (a1 + 136), 0x70uLL);
  return a2;
}

uint64_t sub_1C546F514()
{
  v0 = sub_1C546C3F4();
  v2 = *v0;
  MEMORY[0x1E69E5928](*v0);
  return v2;
}

uint64_t sub_1C546F604()
{
  v3 = sub_1C543D8C0();
  if (v0 <= 0x3F)
  {
    v3 = sub_1C546F6E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1C546F6E0()
{
  v4 = qword_1EC15CBD8;
  if (!qword_1EC15CBD8)
  {
    type metadata accessor for ReviewCustodianListViewModel();
    sub_1C5468328();
    v3 = sub_1C55951B4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC15CBD8);
      return v1;
    }
  }

  return v4;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_1C546F79C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
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

uint64_t sub_1C546F8B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1C546FABC()
{
  v2 = qword_1EC15CBE0;
  if (!qword_1EC15CBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CBE8);
    sub_1C546DC18();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CBE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C546FB60()
{
  v2 = qword_1EC15CBF8;
  if (!qword_1EC15CBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CBF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CBF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C546FC00()
{
  v2 = qword_1EC159FD0;
  if (!qword_1EC159FD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159FD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C546FC78()
{
  v2 = qword_1EC15CC08;
  if (!qword_1EC15CC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC00);
    sub_1C546FB60();
    sub_1C546FD20();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CC08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C546FD20()
{
  v2 = qword_1EC15A030;
  if (!qword_1EC15A030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15A030);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C546FDA8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *a2 = v3;
  memcpy((a2 + 8), a1 + 1, 0x30uLL);
  result = a2;
  *(a2 + 56) = *(a1 + 28);
  return result;
}

uint64_t sub_1C546FE0C(uint64_t (*a1)(void))
{
  v3 = a1();
  if (v3)
  {
    v1 = v3;
    v4 = v3;
    sub_1C546FEC4(&v4, &v5);
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t sub_1C546FEC4@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v5 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x1E69E5928](v5);
  *a2 = v5;
  return swift_unknownObjectRelease();
}

unint64_t sub_1C546FF30()
{
  v2 = qword_1EC15CC20;
  if (!qword_1EC15CC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC18);
    sub_1C543DC9C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CC20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C546FFD4(uint64_t a1)
{
  sub_1C5412EA0(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

unint64_t sub_1C5470028()
{
  v2 = qword_1EC15CC30;
  if (!qword_1EC15CC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC28);
    sub_1C546FF30();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CC30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54700CC()
{
  v2 = qword_1EC15CC40;
  if (!qword_1EC15CC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC38);
    sub_1C5470028();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CC40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5470170()
{
  v2 = qword_1EC15CC50;
  if (!qword_1EC15CC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC48);
    sub_1C54700CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CC50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5470214()
{
  v2 = qword_1EC15CC60;
  if (!qword_1EC15CC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC58);
    sub_1C5470028();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CC60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54702B8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_1C54130AC(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);
  sub_1C5594CF4();
  *(a2 + 24) = v6;
  v7 = *(a1 + 32);

  *(a2 + 32) = v7;
  *(a2 + 40) = *(a1 + 40);
  memcpy((a2 + 48), (a1 + 48), 0x29uLL);
  memcpy((a2 + 96), (a1 + 96), 0x29uLL);
  result = a2;
  *(a2 + 137) = *(a1 + 137);
  return result;
}

uint64_t sub_1C54703B0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_1C54130AC(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);
  sub_1C5594CF4();
  *(a2 + 24) = v6;
  v7 = *(a1 + 32);

  *(a2 + 32) = v7;
  *(a2 + 40) = *(a1 + 40);
  memcpy((a2 + 48), (a1 + 48), 0x29uLL);
  result = a2;
  *(a2 + 89) = *(a1 + 89);
  return result;
}

unint64_t sub_1C5470494()
{
  v2 = qword_1EC15CC80;
  if (!qword_1EC15CC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CC80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C547051C()
{
  v2 = qword_1EC15CC90;
  if (!qword_1EC15CC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CC90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54705A4()
{
  type metadata accessor for ReviewCustodianListView();

  return sub_1C546BDA0();
}

uint64_t sub_1C5470608()
{
  type metadata accessor for ReviewCustodianListView();

  return sub_1C546BF04();
}

unint64_t sub_1C5470674()
{
  v2 = qword_1EC15CCA0;
  if (!qword_1EC15CCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CCA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C547070C()
{
  v2 = qword_1EC159FD8;
  if (!qword_1EC159FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CCC8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159FD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5470794()
{
  v1 = *(type metadata accessor for ReviewCustodianListView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1C546BCD0(v2);
}

unint64_t sub_1C5470800()
{
  v2 = qword_1EC15CCE8;
  if (!qword_1EC15CCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CCE0);
    sub_1C5470898();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CCE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5470898()
{
  v2 = qword_1EC15CCF0;
  if (!qword_1EC15CCF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CCF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5470914()
{
  v2 = qword_1EC15CCF8;
  if (!qword_1EC15CCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CCD8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CCF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54709A4()
{
  v2 = qword_1EC15CD08;
  if (!qword_1EC15CD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CD00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5470A2C()
{
  v2 = qword_1EC15CD10;
  if (!qword_1EC15CD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CCC0);
    sub_1C54709A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5470AD8()
{
  v2 = qword_1EC15CD18;
  if (!qword_1EC15CD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CCD0);
    sub_1C5470A2C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5470B7C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC0);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1C5470BE4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1C54130AC(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v6 = *(a1 + 48);
  sub_1C5594CF4();
  *(a2 + 48) = v6;
  v7 = *(a1 + 56);

  *(a2 + 56) = v7;
  *(a2 + 64) = *(a1 + 64);
  memcpy((a2 + 72), (a1 + 72), 0x29uLL);
  memcpy((a2 + 120), (a1 + 120), 0x2BuLL);
  v8 = *(a1 + 168);
  v9 = *(a1 + 176);
  v10 = *(a1 + 184);
  sub_1C54130AC(v8, v9, v10 & 1);
  *(a2 + 168) = v8;
  *(a2 + 176) = v9;
  *(a2 + 184) = v10 & 1;
  v11 = *(a1 + 192);
  sub_1C5594CF4();
  *(a2 + 192) = v11;
  v12 = *(a1 + 200);

  *(a2 + 200) = v12;
  *(a2 + 208) = *(a1 + 208);
  memcpy((a2 + 216), (a1 + 216), 0x2BuLL);
  memcpy((a2 + 264), (a1 + 264), 0x29uLL);
  return a2;
}

uint64_t sub_1C5470DBC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCD0);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_1C5470E68()
{
  v4 = *(type metadata accessor for ReviewCustodianListView() - 8);
  v1 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v2 = *(v0 + ((v1 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C546AF38(v0 + v1, v2);
}

unint64_t sub_1C5470F04()
{
  v2 = qword_1EC15CD20;
  if (!qword_1EC15CD20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5470FB4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);
  sub_1C5594CF4();
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);

  result = a2;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

unint64_t sub_1C547102C()
{
  v2 = qword_1EC15CD28;
  if (!qword_1EC15CD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CB60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54710B4()
{
  v2 = qword_1EC15CD30;
  if (!qword_1EC15CD30)
  {
    type metadata accessor for CustodianListItem();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5471180()
{
  v3 = &unk_1F4478658;
  v4 = sub_1C54711E0();
  v1 = sub_1C5594B34();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

unint64_t sub_1C54711E0()
{
  v2 = qword_1EC15CD38;
  if (!qword_1EC15CD38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5471294()
{
  v2 = qword_1EC15CD40;
  if (!qword_1EC15CD40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54713DC()
{
  v2 = qword_1EC15CD48;
  if (!qword_1EC15CD48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54714B8()
{
  v2 = qword_1EC15CD50;
  if (!qword_1EC15CD50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C547154C()
{
  v2 = qword_1EC15CD58;
  if (!qword_1EC15CD58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD58);
    return WitnessTable;
  }

  return v2;
}

double static CustomComponentFactory.registerRemoteUISwiftViews()()
{
  sub_1C5596334();
  v6 = sub_1C5596324();
  type metadata accessor for LockDownModeRowElement();
  sub_1C5471A24();
  sub_1C55965F4();
  sub_1C5596314();

  MEMORY[0x1E69E5920](v6);
  v7 = sub_1C5596324();
  type metadata accessor for AnalyticsDataSharingRowElement();
  sub_1C5471AA4();
  sub_1C55965F4();
  sub_1C5596314();

  MEMORY[0x1E69E5920](v7);
  v8 = sub_1C5596324();
  type metadata accessor for SoftwareUpdateRowElement();
  sub_1C5471B24();
  sub_1C55965F4();
  sub_1C5596314();

  MEMORY[0x1E69E5920](v8);
  v9 = sub_1C5596324();
  type metadata accessor for AgeAttestationRowElement();
  sub_1C5471BA4();
  sub_1C55965F4();
  sub_1C5596314();

  MEMORY[0x1E69E5920](v9);
  if (sub_1C5471180())
  {
    v3 = sub_1C5596324();
    sub_1C5471D1C();
    sub_1C55965F4();
    sub_1C5596314();

    MEMORY[0x1E69E5920](v3);
    v4 = sub_1C5596324();
    type metadata accessor for SharedNameRowView();
    sub_1C5471D94();
    sub_1C55965F4();
    sub_1C5596314();

    MEMORY[0x1E69E5920](v4);
    v5 = sub_1C5596324();
    sub_1C5471E14();
    sub_1C55965F4();
    sub_1C5596314();

    MEMORY[0x1E69E5920](v5);
  }

  v1 = sub_1C5596324();
  type metadata accessor for AppleAccountBirthdayPickerRow();
  sub_1C5471C24();
  sub_1C55965F4();
  sub_1C5596314();

  MEMORY[0x1E69E5920](v1);
  v2 = sub_1C5596324();
  sub_1C5471CA4();
  sub_1C55965F4();
  sub_1C5596314();

  *&result = MEMORY[0x1E69E5920](v2).n128_u64[0];
  return result;
}

unint64_t sub_1C5471A24()
{
  v2 = qword_1EC15CD60;
  if (!qword_1EC15CD60)
  {
    type metadata accessor for LockDownModeRowElement();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5471AA4()
{
  v2 = qword_1EC15CD68;
  if (!qword_1EC15CD68)
  {
    type metadata accessor for AnalyticsDataSharingRowElement();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5471B24()
{
  v2 = qword_1EC15CD70;
  if (!qword_1EC15CD70)
  {
    type metadata accessor for SoftwareUpdateRowElement();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5471BA4()
{
  v2 = qword_1EC15CD78;
  if (!qword_1EC15CD78)
  {
    type metadata accessor for AgeAttestationRowElement();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5471C24()
{
  v2 = qword_1EC15CD80;
  if (!qword_1EC15CD80)
  {
    type metadata accessor for AppleAccountBirthdayPickerRow();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5471CA4()
{
  v2 = qword_1EC15CD88;
  if (!qword_1EC15CD88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5471D1C()
{
  v2 = qword_1EC15CD90;
  if (!qword_1EC15CD90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5471D94()
{
  v2 = qword_1EC15CD98;
  if (!qword_1EC15CD98)
  {
    type metadata accessor for SharedNameRowView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CD98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5471E14()
{
  v2 = qword_1EC15CDA0;
  if (!qword_1EC15CDA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CDA0);
    return WitnessTable;
  }

  return v2;
}

id CustomComponentFactory.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for CustomComponentFactory();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x1E69E5928](v1);
  v3 = v1;
  MEMORY[0x1E69E5920](v1);
  return v1;
}

id CustomComponentFactory.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomComponentFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C5472008(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 32))();
  v3 = *MEMORY[0x1E698C218];
  MEMORY[0x1E69E5928](*MEMORY[0x1E698C218]);
  v5 = [v4 aidaAccountForService_];
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v4);
  return v5;
}

id sub_1C54720B4(uint64_t a1, uint64_t a2)
{
  v12 = sub_1C5472008(a1, a2);
  if (!v12)
  {
    return 0;
  }

  v10 = [objc_opt_self() sharedInstance];
  v2 = [v12 aa_altDSID];
  v11 = v2;
  if (v2)
  {
    sub_1C5596574();
    v8 = v3;
    MEMORY[0x1E69E5920](v11);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    sub_1C5596C94();
    __break(1u);
  }

  v6 = sub_1C5596554();

  v7 = [v10 authKitAccountWithAltDSID_];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v10);
  if (!v7)
  {
    MEMORY[0x1E69E5920](v12);
    return 0;
  }

  MEMORY[0x1E69E5920](v12);
  return v7;
}

BOOL sub_1C547232C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 80))();
  sub_1C5403328();
  v7 = sub_1C5596744();

  swift_unknownObjectRetain();
  if (v7)
  {
    v4 = 0;
  }

  else
  {
    (*(a2 + 88))(a1);
    v3 = sub_1C5596744();

    v4 = v3 == 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1C5472438(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v18 = a1;
  sub_1C5404B78();
  v8 = sub_1C5404B48();
  v16 = v8;
  v6 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();

  v2 = swift_allocObject();
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = v6;
  v14 = sub_1C5472CD4;
  v15 = v2;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = 0;
  v12 = sub_1C546D2EC;
  v13 = &block_descriptor_7;
  v7 = _Block_copy(&aBlock);

  [v8 pullTrustedContactsFromCloudKitWithCompletion_];
  _Block_release(v7);
  return MEMORY[0x1E69E5920](v8);
}

uint64_t sub_1C54725CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a1;
  v35 = a2;
  v32 = a3;
  v33 = a4;
  v43 = sub_1C5467F9C;
  v47 = sub_1C546FF24;
  v49 = sub_1C545C6D4;
  v51 = sub_1C545C6D4;
  v54 = sub_1C545C6E8;
  v68 = 0;
  v67 = 0;
  v65 = 0;
  v34 = 0;
  v69 = a3;
  v40 = sub_1C5594C74();
  v38 = *(v40 - 8);
  v39 = v40 - 8;
  v36 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = v21 - v36;
  v37 = v21 - v36;
  v68 = MEMORY[0x1EEE9AC00](v41);
  v67 = v5 + 16;
  v6 = sub_1C54B05F8();
  (*(v38 + 16))(v4, v6, v40);
  v7 = v41;
  v45 = 7;
  v46 = swift_allocObject();
  *(v46 + 16) = v41;
  sub_1C54398B0();

  v58 = sub_1C5594C54();
  v59 = sub_1C5596954();
  v42 = 17;
  v50 = swift_allocObject();
  *(v50 + 16) = 64;
  v52 = swift_allocObject();
  *(v52 + 16) = 8;
  v44 = 32;
  v8 = swift_allocObject();
  v9 = v46;
  v48 = v8;
  *(v8 + 16) = v43;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v48;
  v55 = v10;
  *(v10 + 16) = v47;
  *(v10 + 24) = v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v53 = sub_1C5596E04();
  v56 = v12;

  v13 = v50;
  v14 = v56;
  *v56 = v49;
  v14[1] = v13;

  v15 = v52;
  v16 = v56;
  v56[2] = v51;
  v16[3] = v15;

  v17 = v55;
  v18 = v56;
  v56[4] = v54;
  v18[5] = v17;
  sub_1C540FCD8();

  if (os_log_type_enabled(v58, v59))
  {
    v19 = v34;
    v25 = sub_1C5596A74();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v26 = sub_1C5419DC0(1);
    v27 = sub_1C5419DC0(0);
    v28 = &v64;
    v64 = v25;
    v29 = &v63;
    v63 = v26;
    v30 = &v62;
    v62 = v27;
    sub_1C5419E14(2, &v64);
    sub_1C5419E14(1, v28);
    v60 = v49;
    v61 = v50;
    sub_1C5419E28(&v60, v28, v29, v30);
    v31 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v60 = v51;
      v61 = v52;
      sub_1C5419E28(&v60, &v64, &v63, &v62);
      v23 = 0;
      v60 = v54;
      v61 = v55;
      sub_1C5419E28(&v60, &v64, &v63, &v62);
      _os_log_impl(&dword_1C5355000, v58, v59, "Completed sync of trusted contacts from CloudKit with error: %@", v25, 0xCu);
      sub_1C5419E74(v26);
      sub_1C5419E74(v27);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v58);
  (*(v38 + 8))(v37, v40);
  v21[3] = v35 + 16;
  v21[4] = &v66;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    v21[2] = Strong;
    v21[1] = Strong;
    v65 = Strong;
    (*(v33 + 224))(v32);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1C5472D54(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v36 = a2;
  v39 = sub_1C54733B0;
  v43 = sub_1C5473EFC;
  v45 = sub_1C545C6D4;
  v47 = sub_1C545C6D4;
  v50 = sub_1C5473FA4;
  v61 = 0;
  v29 = 0;
  v62 = a1;
  v34 = sub_1C5594C74();
  v32 = *(v34 - 8);
  v33 = v34 - 8;
  v30 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v2 = v21 - v30;
  v31 = v21 - v30;
  v61 = v3;
  v4 = sub_1C54B05F8();
  (*(v32 + 16))(v2, v4, v34);
  swift_unknownObjectRetain();
  v41 = 7;
  v5 = swift_allocObject();
  v6 = v36;
  v7 = v37;
  v42 = v5;
  v5[2] = v35;
  v5[3] = v6;
  v5[4] = v7;
  v54 = sub_1C5594C54();
  v55 = sub_1C5596944();
  v38 = 17;
  v46 = swift_allocObject();
  *(v46 + 16) = 32;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v40 = 32;
  v8 = swift_allocObject();
  v9 = v42;
  v44 = v8;
  *(v8 + 16) = v39;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v44;
  v51 = v10;
  *(v10 + 16) = v43;
  *(v10 + 24) = v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v49 = sub_1C5596E04();
  v52 = v12;

  v13 = v46;
  v14 = v52;
  *v52 = v45;
  v14[1] = v13;

  v15 = v48;
  v16 = v52;
  v52[2] = v47;
  v16[3] = v15;

  v17 = v51;
  v18 = v52;
  v52[4] = v50;
  v18[5] = v17;
  sub_1C540FCD8();

  if (os_log_type_enabled(v54, v55))
  {
    v19 = v29;
    v22 = sub_1C5596A74();
    v21[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v23 = sub_1C5419DC0(0);
    v24 = sub_1C5419DC0(1);
    v25 = &v60;
    v60 = v22;
    v26 = &v59;
    v59 = v23;
    v27 = &v58;
    v58 = v24;
    sub_1C5419E14(2, &v60);
    sub_1C5419E14(1, v25);
    v56 = v45;
    v57 = v46;
    sub_1C5419E28(&v56, v25, v26, v27);
    v28 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v56 = v47;
      v57 = v48;
      sub_1C5419E28(&v56, &v60, &v59, &v58);
      v21[0] = 0;
      v56 = v50;
      v57 = v51;
      sub_1C5419E28(&v56, &v60, &v59, &v58);
      _os_log_impl(&dword_1C5355000, v54, v55, "%s contacts changed. Fetching latest...", v22, 0xCu);
      sub_1C5419E74(v23);
      sub_1C5419E74(v24);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v54);
  (*(v32 + 8))(v31, v34);
  return (*(v36 + 224))(v35);
}

uint64_t sub_1C54733CC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ReviewCustodianListViewModel();
  v7 = (*(a2 + 32))(a1);
  sub_1C5404BDC();
  v8 = sub_1C5404B48();
  v2 = (*(a2 + 72))(a1);
  return sub_1C55823FC(v7, v8, v2, v3);
}

uint64_t sub_1C54735DC(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 64))())
  {
    sub_1C55965F4();
    v3 = sub_1C54637B4();

    return v3;
  }

  else
  {
    sub_1C55965F4();
    v4 = sub_1C54637B4();

    return v4;
  }
}

uint64_t sub_1C547376C(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 64))())
  {
    sub_1C55965F4();
    v3 = sub_1C54637B4();

    return v3;
  }

  else
  {
    sub_1C55965F4();
    v4 = sub_1C54637B4();

    return v4;
  }
}

uint64_t sub_1C5473994(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 64))())
  {
    sub_1C55965F4();
    v3 = sub_1C54637B4();

    return v3;
  }

  else
  {
    sub_1C55965F4();
    v4 = sub_1C54637B4();

    return v4;
  }
}

uint64_t sub_1C5473B24(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 64))())
  {
    sub_1C55965F4();
    v3 = sub_1C54637B4();

    return v3;
  }

  else
  {
    sub_1C55965F4();
    v4 = sub_1C54637B4();

    return v4;
  }
}

uint64_t sub_1C5473CB4(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 64))())
  {
    sub_1C55965F4();
    v3 = sub_1C54637B4();

    return v3;
  }

  else
  {
    sub_1C55965F4();
    v4 = sub_1C54637B4();

    return v4;
  }
}

uint64_t sub_1C5473DA0(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 64))())
  {
    sub_1C55965F4();
    v3 = sub_1C54637B4();

    return v3;
  }

  else
  {
    sub_1C55965F4();
    v4 = sub_1C54637B4();

    return v4;
  }
}

uint64_t sub_1C5473E8C@<X0>(uint64_t *a1@<X8>)
{
  sub_1C5403328();
  result = sub_1C5596BB4();
  *a1 = result;
  return result;
}

void *sub_1C5473F08(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  sub_1C5474440(v4, v5, a3);
  v8 = *a1;

  sub_1C5596AA4();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_1C5474440(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1C5594CF4();
  v14 = sub_1C54745E4(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_1C5409260(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = MEMORY[0x1E69E6A18];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_1C5409260(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

uint64_t sub_1C54745E4(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_1C5596C94();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_1C547499C(v22, v17, v16);
        sub_1C5596AB4();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_1C5474B18(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_1C5596BE4();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_1C5596C94();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_1C547499C(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_1C5596CC4();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_1C5596CC4();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C5474B18(uint64_t a1, uint64_t a2)
{
  v7 = sub_1C5474BD4(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E3D0);
  inited = swift_initStackObject();
  v3 = sub_1C54753E4(inited, 1);
  *v4 = 0;
  sub_1C5475430();
  sub_1C5475464(v3);

  v8 = sub_1C547580C(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5474BD4(uint64_t a1, uint64_t a2)
{
  v16[15] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_1C5596624();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_1C5475D2C();
  }

  v10 = sub_1C5475824(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_1C5596CC4();
    __break(1u);
    return sub_1C5475D2C();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_1C5475968(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_1C5596BE4();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_1C5475968(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_1C5596BA4();
  if (v2)
  {
LABEL_29:
    sub_1C5596C94();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;
  sub_1C5594CF4();
  v16[13] = 0;
  v16[14] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_1C5596C94();
    __break(1u);
  }

  sub_1C5401ECC();
  return v10;
}

uint64_t sub_1C54753E4(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_1C5475464(uint64_t a1)
{
  v18 = sub_1C547580C(a1);
  v2 = sub_1C547580C(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;
    sub_1C5594CF4();
    *v17 = sub_1C5475D5C(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    sub_1C5596CC4();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_1C5475EC8(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    sub_1C5596C94();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    sub_1C5596C94();
    __break(1u);
    goto LABEL_21;
  }

  sub_1C5475968((a1 + 32), v18, v10);
  sub_1C5594CF4();

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    sub_1C5418EAC();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_1C5475824(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E3D0);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];

    return v3;
  }
}

void *sub_1C5475968(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_1C5596CC4();
    __break(1u);
  }

  result = sub_1C5596CC4();
  __break(1u);
  return result;
}

uint64_t sub_1C5475AB8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x1C69471E0](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_1C5596C94();
    __break(1u);
  }

  v5 = sub_1C5596664();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t sub_1C5475D2C()
{
  v1 = MEMORY[0x1E69E7CC0];

  return v1;
}

char *sub_1C5475D5C(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_1C5475824(v4, v6);
  if (v7)
  {
    sub_1C5475ED0((a4 + 32), v4, v5 + 32);
    sub_1C5594CF4();

    *(a4 + 16) = 0;
  }

  else
  {
    sub_1C5594CF4();

    sub_1C5475968((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_1C5475ED0(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_1C5596CC4();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

uint64_t sub_1C5476020()
{
  result = sub_1C55965F4();
  qword_1EC16B460 = result;
  qword_1EC16B468 = v1;
  return result;
}

uint64_t *sub_1C5476064()
{
  if (qword_1EC1628E0 != -1)
  {
    swift_once();
  }

  return &qword_1EC16B460;
}

uint64_t sub_1C547611C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C547619C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F94();
  sub_1C5373718();
}

uint64_t sub_1C5476238()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C54762D0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C5476350()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F94();
  sub_1C5373718();
}

uint64_t sub_1C54763EC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C5476484()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C5476504()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F94();
  sub_1C5373718();
}

uint64_t sub_1C54765A0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C5476638()
{
  v2 = *(v0 + 32);

  return v2 & 1;
}

uint64_t sub_1C5476674(char a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1C54766F8()
{
  v2 = *(v0 + 56);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1C5476738(uint64_t a1)
{
  swift_unknownObjectRetain();
  *(v1 + 56) = a1;
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C54767CC()
{
  swift_unknownObjectRetain();
  v1 = sub_1C5595194();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1C5476848()
{
  v2 = *(v0 + 48);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1C5476880(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C54768EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memset(__b, 0, 0x68uLL);
  __b[13] = a3;
  v13[6] = a1;
  v13[5] = a2;
  LOBYTE(__b[0]) = sub_1C54760C4() & 1;
  __b[1] = v4;
  LOBYTE(__b[2]) = sub_1C54760C4() & 1;
  __b[3] = v5;
  LOBYTE(__b[4]) = sub_1C54760C4() & 1;
  __b[5] = v6;
  sub_1C5444FC0(a2, v13);
  memcpy(&__b[8], v13, 0x28uLL);
  swift_unknownObjectRetain();
  __b[6] = sub_1C54766C0();
  __b[7] = v7;
  sub_1C5476A54(__b, a4);
  sub_1C544435C(a2);
  swift_unknownObjectRelease();
  return sub_1C5476B88(__b);
}

uint64_t sub_1C5476A54(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);

  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(a1 + 24);

  *(a2 + 24) = v5;
  *(a2 + 32) = *(a1 + 32);
  v6 = *(a1 + 40);

  *(a2 + 40) = v6;
  *(a2 + 48) = *(a1 + 48);
  v9 = *(a1 + 56);
  swift_unknownObjectRetain();
  *(a2 + 56) = v9;
  if (*(a1 + 88))
  {
    v2 = *(a1 + 88);
    *(a2 + 88) = v2;
    *(a2 + 96) = *(a1 + 96);
    (**(v2 - 8))(a2 + 64, a1 + 64);
  }

  else
  {
    memcpy((a2 + 64), (a1 + 64), 0x28uLL);
  }

  return a2;
}

uint64_t sub_1C5476B88(uint64_t a1)
{

  swift_unknownObjectRelease();
  if (*(a1 + 88))
  {
    __swift_destroy_boxed_opaque_existential_0(a1 + 64);
  }

  return a1;
}

uint64_t sub_1C5476BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v86 = a1;
  v31 = 0;
  v38 = MEMORY[0x1E697D510];
  v33 = MEMORY[0x1E6981F48];
  v35 = MEMORY[0x1E697CCF0];
  v40 = MEMORY[0x1E697E858];
  v46 = sub_1C5477D8C;
  v54 = sub_1C5478FE8;
  v70 = sub_1C547923C;
  v81 = sub_1C54792A0;
  v99 = sub_1C5479904;
  v108 = MEMORY[0x1E697C278];
  v130 = 0;
  v129 = 0;
  v89 = 0;
  v106 = sub_1C5596A04();
  v103 = *(v106 - 8);
  v104 = v106 - 8;
  v24 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v23 - v24;
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDA8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB8);
  v96 = *(v86 + 24);
  v95 = *(v86 + 16);
  v157 = v95;
  v32 = 255;
  v25 = &unk_1C55C9F3C;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = sub_1C5477800();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v153 = v26;
  v154 = AssociatedTypeWitness;
  v155 = v27;
  v156 = AssociatedConformanceWitness;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C5596264();
  sub_1C5596184();
  v30 = sub_1C5596A94();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDD0);
  swift_getTupleTypeMetadata3();
  v44 = sub_1C5596264();
  WitnessTable = swift_getWitnessTable();
  v61 = sub_1C5595954();
  v58 = *(v61 - 8);
  v59 = v61 - 8;
  v34 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v23 - v34;
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDD8);
  v51 = swift_getWitnessTable();
  v52 = sub_1C5477928();
  v149 = v61;
  v150 = v50;
  v151 = v51;
  v152 = v52;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = *(OpaqueTypeMetadata2 - 8);
  v75 = OpaqueTypeMetadata2 - 8;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v76 = &v23 - v3;
  v145 = v61;
  v146 = v50;
  v147 = v51;
  v148 = v4;
  v39 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v141 = OpaqueTypeMetadata2;
  v142 = AssociatedTypeWitness;
  v143 = OpaqueTypeConformance2;
  v144 = AssociatedConformanceWitness;
  v112 = swift_getOpaqueTypeMetadata2();
  v83 = *(v112 - 8);
  v84 = v112 - 8;
  v36 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v89);
  v85 = &v23 - v36;
  v113 = sub_1C5595214();
  v37 = (*(*(v113 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v113);
  v107 = &v23 - v37;
  v101 = sub_1C5443C8C();
  v137 = OpaqueTypeMetadata2;
  v138 = AssociatedTypeWitness;
  v139 = OpaqueTypeConformance2;
  v140 = AssociatedConformanceWitness;
  v80 = swift_getOpaqueTypeConformance2();
  v135 = v80;
  v136 = MEMORY[0x1E69805D0];
  v100 = swift_getWitnessTable();
  v131 = v106;
  v132 = v113;
  v133 = v101;
  v134 = v100;
  v114 = sub_1C5595254();
  v43 = *(*(v114 - 8) + 64);
  v42 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v89);
  v111 = &v23 - v42;
  v66 = swift_checkMetadataState();
  MEMORY[0x1EEE9AC00](v46);
  v115 = &v23 - v5;
  v130 = &v23 - v5;
  v129 = v2;
  v116 = v95;
  v117 = v96;
  v118 = v2;
  sub_1C5595944();
  v47 = *(v2 + 32);
  v48 = *(v2 + 40);

  v127 = v47;
  v128 = v48;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595FA4();
  v56 = v125[13];
  v57 = v125[14];
  v53 = v126;

  v49 = v125;
  sub_1C5476A54(v92, v125);
  v93 = 136;
  v94 = 7;
  v6 = swift_allocObject();
  v7 = v49;
  v8 = v96;
  v55 = v6;
  v6[2] = v95;
  v6[3] = v8;
  v98 = 104;
  memcpy(v6 + 4, v7, 0x68uLL);
  sub_1C5595D34();
  v9 = v92;

  (*(v58 + 8))(v60, v61);
  v63 = *v9;
  v64 = *(v9 + 1);

  v123 = v63;
  v124 = v64;
  sub_1C5595FA4();
  v72 = v121[13];
  v73 = v121[14];
  v69 = v122;

  v65 = v121;
  sub_1C5476A54(v92, v121);
  v10 = swift_allocObject();
  v11 = v65;
  v12 = v96;
  v13 = v98;
  v71 = v10;
  v10[2] = v95;
  v10[3] = v12;
  memcpy(v10 + 4, v11, v13);
  sub_1C5595D34();

  (*(v74 + 8))(v76, OpaqueTypeMetadata2);
  v78 = v120;
  sub_1C5476A54(v92, v120);
  v14 = swift_allocObject();
  v15 = v78;
  v16 = v96;
  v17 = v98;
  v79 = v14;
  v14[2] = v95;
  v14[3] = v16;
  memcpy(v14 + 4, v15, v17);
  v82 = v79;
  sub_1C5595DC4();
  sub_1C5411348(v81);
  (*(v83 + 8))(v85, v112);
  sub_1C5406B78();
  v91 = [swift_getObjCClassFromMetadata() defaultCenter];
  v87 = sub_1C54766F8();
  v88 = (*(v96 + 64))(v95);
  swift_unknownObjectRelease();
  v90 = sub_1C5527698(v88 & 1);
  sub_1C5596A14();
  MEMORY[0x1E69E5920](v90);
  MEMORY[0x1E69E5920](v91);
  v97 = v119;
  sub_1C5476A54(v92, v119);
  v18 = swift_allocObject();
  v19 = v96;
  v20 = v97;
  v21 = v98;
  v102 = v18;
  v18[2] = v95;
  v18[3] = v19;
  memcpy(v18 + 4, v20, v21);
  sub_1C5595E34();

  (*(v103 + 8))(v105, v106);
  sub_1C53602B4(v107, v112, v113);
  v110 = swift_getWitnessTable();
  sub_1C540EFD8(v111, v114, v115);
  sub_1C5360368(v111, v112, v113, v114);
  sub_1C5360474(v115, v111, v112, v113, v114);
  sub_1C540EFD8(v111, v114, v109);
  sub_1C5360368(v111, v112, v113, v114);
  return sub_1C5360368(v115, v112, v113, v114);
}

unint64_t sub_1C5477800()
{
  v2 = qword_1EC15CDC0;
  if (!qword_1EC15CDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB8);
    sub_1C547070C();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CDC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54778A8()
{
  v2 = qword_1EC15CDC8;
  if (!qword_1EC15CDC8)
  {
    sub_1C5595754();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CDC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5477928()
{
  v2 = qword_1EC15CDE0;
  if (!qword_1EC15CDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDD8);
    sub_1C54779C0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CDE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54779C0()
{
  v2 = qword_1EC15CDE8;
  if (!qword_1EC15CDE8)
  {
    type metadata accessor for ReviewCustodianListView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CDE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5477A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v19 = a2;
  v18 = a3;
  v13 = 0;
  v10 = MEMORY[0x1E697D510];
  v22 = MEMORY[0x1E6981F48];
  v32 = 0;
  v31 = 0;
  v37 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDA8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB8);
  v14 = 255;
  v7 = &unk_1C55C9F3C;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1C5477800();
  v33 = v8;
  v34 = AssociatedTypeWitness;
  v35 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = 0;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C5596264();
  v26 = sub_1C5596184();
  v27 = sub_1C5596A94();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDD0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v29 = sub_1C5596264();
  v17 = *(*(v29 - 8) + 64);
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v25 = &v7 - v16;
  swift_checkMetadataState();
  v21 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v30 = &v7 - v21;
  v32 = &v7 - v21;
  v31 = a1;
  v5 = type metadata accessor for TrustedContactsView();
  sub_1C5477DA8(v5, v25);
  WitnessTable = swift_getWitnessTable();
  sub_1C540EFD8(v25, v29, v30);
  sub_1C5361400(v25, v26, v27, TupleTypeMetadata3);
  sub_1C53617F4(v30, v25, v26, v27, TupleTypeMetadata3);
  sub_1C540EFD8(v25, v29, v23);
  sub_1C5361400(v25, v26, v27, TupleTypeMetadata3);
  return sub_1C5361400(v30, v26, v27, TupleTypeMetadata3);
}

uint64_t sub_1C5477DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v102 = a1;
  v89 = 0;
  v59 = MEMORY[0x1E697D510];
  v85 = sub_1C547A5E4;
  v37 = MEMORY[0x1E6981F48];
  v38 = MEMORY[0x1E697D6F0];
  v39 = MEMORY[0x1E6982090];
  v131 = 0;
  v130 = 0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v112 = 0;
  v108 = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDF0);
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  v43 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v17 - v43;
  v45 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v17 - v43);
  v46 = &v17 - v45;
  v47 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v17 - v45);
  v48 = &v17 - v47;
  v131 = &v17 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDD0);
  v50 = (*(*(v49 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v17 - v50;
  v52 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v17 - v50);
  v53 = &v17 - v52;
  v54 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v17 - v52);
  v55 = &v17 - v54;
  v130 = &v17 - v54;
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB8);
  v103 = *(v102 + 24);
  v104 = *(v102 + 16);
  v129 = v104;
  v61 = 255;
  v56 = &unk_1C55C9F3C;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = sub_1C5477800();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v125 = v57;
  v126 = AssociatedTypeWitness;
  v127 = v58;
  v128 = AssociatedConformanceWitness;
  v84 = 0;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v62 = sub_1C5596264();
  v71 = sub_1C5596184();
  v64 = *(v71 - 8);
  v65 = v71 - 8;
  v70 = *(v64 + 64);
  v66 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v84);
  v67 = &v17 - v66;
  v68 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v17 - v68;
  swift_checkMetadataState();
  v72 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v84);
  v73 = &v17 - v72;
  v124 = &v17 - v72;
  v74 = sub_1C5596A94();
  v75 = (*(*(v74 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v17 - v75;
  v77 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v17 - v75);
  v78 = &v17 - v77;
  v79 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v17 - v77);
  v80 = &v17 - v79;
  v123 = &v17 - v79;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDF8);
  v81 = (*(*(v96 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v17 - v81;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDA8);
  v83 = *(*(v99 - 8) + 64);
  v82 = (v83 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v17 - v82;
  MEMORY[0x1EEE9AC00](&v17 - v82);
  v98 = &v17 - v11;
  v122 = &v17 - v11;
  v121 = v12;
  v86 = v107;
  v107[2] = v104;
  v107[3] = v103;
  v107[4] = v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE00);
  v88 = sub_1C547A600();
  sub_1C544B78C();
  sub_1C5596064();
  v90 = sub_1C547A688();
  v91 = &v120;
  swift_beginAccess();
  v92 = *v90;
  v93 = v90[1];
  v94 = v90[2];
  v95 = v90[3];
  swift_endAccess();
  sub_1C547A6E8();
  sub_1C5595D74();
  sub_1C547A770(v97);
  v100 = sub_1C547AA20();
  sub_1C540EFD8(v101, v99, v98);
  sub_1C547A770(v101);
  v105 = sub_1C54766F8();
  v106 = (*(v103 + 48))(v104);
  swift_unknownObjectRelease();
  if (v106)
  {
    sub_1C547B640(v102, v69);
    WitnessTable = swift_getWitnessTable();
    v13 = sub_1C547AAC4();
    v109 = MEMORY[0x1E6981E60];
    v110 = WitnessTable;
    v111 = v13;
    v33 = swift_getWitnessTable();
    sub_1C540EFD8(v69, v71, v73);
    v34 = *(v64 + 8);
    v35 = v64 + 8;
    v34(v69, v71);
    v108 = v69;
    v31 = *(v64 + 16);
    v30 = v64 + 16;
    v31(v67, v73, v71);
    sub_1C540EFD8(v67, v71, v69);
    v34(v67, v71);
    v31(v76, v69, v71);
    (*(v64 + 56))(v76, 0, 1, v71);
    sub_1C540F554(v76, v71, v78);
    sub_1C536066C(v76, v71);
    sub_1C5360708(v78, v80, v71, v74);
    v34(v69, v71);
    v34(v73, v71);
  }

  else
  {
    (*(v64 + 56))(v76, 1, 1, v71);
    v29 = swift_getWitnessTable();
    v14 = sub_1C547AAC4();
    v119[3] = MEMORY[0x1E6981E60];
    v119[4] = v29;
    v119[5] = v14;
    swift_getWitnessTable();
    sub_1C540F554(v76, v71, v78);
    sub_1C536066C(v76, v71);
    sub_1C5360708(v78, v80, v71, v74);
  }

  v27 = sub_1C54766F8();
  v28 = (*(v103 + 40))(v104);
  swift_unknownObjectRelease();
  if (v28)
  {
    sub_1C547BB1C(v102, v46);
    v24 = sub_1C547AB3C();
    sub_1C540EFD8(v46, v40, v48);
    v25 = *(v41 + 8);
    v26 = v41 + 8;
    v25(v46, v40);
    v112 = v46;
    v23 = *(v41 + 16);
    v22 = v41 + 16;
    v23(v44, v48, v40);
    sub_1C540EFD8(v44, v40, v46);
    v25(v44, v40);
    v23(v51, v46, v40);
    (*(v41 + 56))(v51, 0, 1, v40);
    sub_1C540F554(v51, v40, v53);
    sub_1C547ADB4(v51);
    sub_1C547AE68(v53, v55);
    v25(v46, v40);
    v25(v48, v40);
  }

  else
  {
    (*(v41 + 56))(v51, 1, 1, v40);
    sub_1C547AB3C();
    sub_1C540F554(v51, v40, v53);
    sub_1C547ADB4(v51);
    sub_1C547AE68(v53, v55);
  }

  sub_1C547AF9C(v98, v101);
  v21 = v119;
  v119[0] = v101;
  sub_1C5360810(v80, v78, v71, v74);
  v119[1] = v78;
  sub_1C547B474(v55, v53);
  v119[2] = v53;
  v19 = v118;
  v118[0] = v99;
  v118[1] = v74;
  v118[2] = v49;
  v20 = v117;
  v117[0] = v100;
  v18 = swift_getWitnessTable();
  v15 = sub_1C547AAC4();
  v114 = MEMORY[0x1E6981E60];
  v115 = v18;
  v116 = v15;
  v113 = swift_getWitnessTable();
  v117[1] = swift_getWitnessTable();
  v117[2] = sub_1C547B5A8();
  sub_1C540F5A0(v21, 3uLL, v19, v36);
  sub_1C547ADB4(v53);
  sub_1C536066C(v78, v71);
  sub_1C547A770(v101);
  sub_1C547ADB4(v55);
  sub_1C536066C(v80, v71);
  return sub_1C547A770(v98);
}

uint64_t sub_1C5478B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15 = a4;
  v16 = a1;
  v36 = a2;
  v35 = a3;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v41 = 0;
  v47 = a2;
  v26 = 0;
  v17 = type metadata accessor for ReviewCustodianListView();
  v18 = *(v17 - 8);
  v19 = v17 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v21 = (v12 - v20);
  v22 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12 - v20);
  v23 = (v12 - v22);
  v24 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12 - v22);
  v25 = (v12 - v24);
  v46 = v12 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDD8);
  v28 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v26);
  v29 = (v12 - v28);
  v30 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v31 = (v12 - v30);
  v32 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v33 = (v12 - v32);
  v45 = v12 - v32;
  v44 = a1;
  v34 = type metadata accessor for TrustedContactsView();
  v37 = sub_1C54766F8();
  v38 = (*(v35 + 64))(v36);
  swift_unknownObjectRelease();
  v40 = &v43;
  v43 = v38 & 1;
  v39 = &v42;
  v42 = 1;
  sub_1C547FC10();
  if (sub_1C5596E24())
  {
    v12[1] = sub_1C54766F8();
    v13 = (*(v35 + 248))(v36);
    swift_unknownObjectRelease();
    sub_1C546DF88(v13, v23);
    v14 = sub_1C54779C0();
    sub_1C540EFD8(v23, v17, v25);
    sub_1C542B9AC(v23);
    v41 = v23;
    sub_1C542B834(v25, v21);
    sub_1C540EFD8(v21, v17, v23);
    sub_1C542B9AC(v21);
    sub_1C542B834(v23, v29);
    (*(v18 + 56))(v29, 0, 1, v17);
    sub_1C540F554(v29, v17, v31);
    sub_1C547FC88(v29);
    sub_1C547FDA8(v31, v33);
    sub_1C542B9AC(v23);
    sub_1C542B9AC(v25);
  }

  else
  {
    (*(v18 + 56))(v29, 1, 1, v17);
    sub_1C54779C0();
    sub_1C540F554(v29, v17, v31);
    sub_1C547FC88(v29);
    sub_1C547FDA8(v31, v33);
  }

  sub_1C547FF88(v33, v31);
  sub_1C5477928();
  sub_1C540EFD8(v31, v27, v15);
  sub_1C547FC88(v31);
  return sub_1C547FC88(v33);
}

uint64_t sub_1C5479004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a4;
  v13 = a2;
  v12 = a3;
  v25 = 0;
  v24 = 0;
  v26 = a2;
  v8[1] = 0;
  v14 = &unk_1C55C9F3C;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = AssociatedTypeWitness - 8;
  v9 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](0);
  v19 = v8 - v9;
  v10 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v20 = v8 - v10;
  v25 = v8 - v10;
  v24 = a1;
  type metadata accessor for TrustedContactsView();
  v11 = sub_1C54766F8();
  (*(v12 + 216))(v13);
  swift_unknownObjectRelease();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C540EFD8(v19, AssociatedTypeWitness, v20);
  v23 = *(v15 + 8);
  v22 = v15 + 8;
  v23(v19, AssociatedTypeWitness);
  (*(v15 + 16))(v19, v20, AssociatedTypeWitness);
  sub_1C540EFD8(v19, AssociatedTypeWitness, v17);
  v23(v19, AssociatedTypeWitness);
  return (v23)(v20, AssociatedTypeWitness);
}

uint64_t sub_1C54792BC(uint64_t a1)
{
  v37 = 0;
  v36 = *(a1 + 16);
  v26 = v36;
  sub_1C546E234();
  v23 = sub_1C5404B48();
  sub_1C55965F4();
  sub_1C5594CF4();
  v22 = sub_1C5596554();
  MEMORY[0x1E69E5928](v22);

  MEMORY[0x1E69E5920](v22);
  sub_1C5476A54(v19, v35);
  v20 = swift_allocObject();
  v20[2] = v26;
  v25 = *(a1 + 24);
  v20[3] = v25;
  memcpy(v20 + 4, v35, 0x68uLL);
  v33 = sub_1C547DB58;
  v34 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = 0;
  v31 = sub_1C547DB74;
  v32 = &block_descriptor_8;
  v21 = _Block_copy(&aBlock);

  [v23 pendingFollowUpItemUserInfosWithIdentifier:v22 completion:v21];
  _Block_release(v21);
  MEMORY[0x1E69E5920](v22);
  MEMORY[0x1E69E5920](v23);
  sub_1C54766F8();
  v27 = (*(v25 + 96))(v26);
  swift_unknownObjectRelease();
  if (v27)
  {
    sub_1C54766F8();
    (*(v25 + 48))(v26);
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F94();
  sub_1C5373718();

  sub_1C5595F94();
  sub_1C5373718();

  v1 = sub_1C5476064();
  v16 = *v1;
  v17 = v1[1];
  sub_1C5594CF4();
  sub_1C547DCBC();
  sub_1C5594CF4();
  sub_1C54766F8();
  v18 = sub_1C54720B4(v26, v25);
  swift_unknownObjectRelease();
  if (v18)
  {
    v15 = [v18 aa_altDSID];
    if (v15)
    {
      v11 = sub_1C5596574();
      v12 = v2;
      MEMORY[0x1E69E5920](v15);
      v13 = v11;
      v14 = v12;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    MEMORY[0x1E69E5920](v18);
    v9 = v13;
    v10 = v14;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  sub_1C54766F8();
  v6 = (*(v25 + 72))(v26);
  v7 = v3;
  swift_unknownObjectRelease();
  v8 = sub_1C547DD20(v16, v17, v9, v10, v6, v7);
  if (v8)
  {
    v5 = [objc_opt_self() reporter];
    swift_getObjectType();
    [v5 sendEvent_];
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v8);
  }
}

uint64_t sub_1C5479878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TrustedContactsView();
  sub_1C54766F8();
  (*(a4 + 232))(a3);
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5479920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v115 = a4;
  v97 = a1;
  v102 = a2;
  v101 = a3;
  v189 = 0;
  v188 = 0;
  v187 = 0;
  v186 = 0;
  v191 = a2;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE48);
  v30 = (*(*(v111 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v111);
  v117 = &v29 - v30;
  v31 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v29 - v30);
  v120 = &v29 - v31;
  v189 = &v29 - v31;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE40);
  v32 = (*(*(v110 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v110);
  v118 = &v29 - v32;
  v33 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v29 - v32);
  v121 = &v29 - v33;
  v188 = &v29 - v33;
  v94 = 0;
  v53 = sub_1C55951E4();
  v50 = *(v53 - 8);
  v51 = v53 - 8;
  v34 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v94);
  v52 = &v29 - v34;
  v47 = sub_1C5595F34();
  v44 = *(v47 - 8);
  v45 = v47 - 8;
  v35 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v29 - v35;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE20);
  v36 = (*(*(v49 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49);
  v54 = &v29 - v36;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE28);
  v37 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v29 - v37;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE90);
  v38 = (*(*(v59 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v29 - v38;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE30);
  v39 = (*(*(v109 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v94);
  v119 = &v29 - v39;
  v40 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v122 = &v29 - v40;
  v187 = &v29 - v40;
  v186 = a1;
  v100 = type metadata accessor for TrustedContactsView();
  v41 = sub_1C54766F8();
  v43 = v101[13](v102);
  v42 = v9;
  swift_unknownObjectRelease();
  sub_1C5439370();
  sub_1C5576C44();
  v10 = sub_1C5595F54();
  v48 = &v185;
  v185 = v10;
  (*(v44 + 104))(v46, *MEMORY[0x1E69816C0], v47);
  sub_1C5595AA4();
  (*(v44 + 8))(v46, v47);
  sub_1C5410D10();
  sub_1C5454F40();
  sub_1C547EEF0();
  sub_1C5595BA4();
  (*(v50 + 8))(v52, v53);
  sub_1C547EF94(v54);
  v56 = sub_1C55957D4();
  sub_1C547F04C();
  v99 = 1;
  sub_1C5595D84();
  sub_1C547F0F4(v57);
  v58 = sub_1C54766F8();
  v60 = v101[14](v102);
  v61 = v11;
  swift_unknownObjectRelease();
  sub_1C547F210();
  sub_1C5595C84();

  sub_1C547F0F4(v62);
  v112 = sub_1C547F2B4();
  sub_1C540EFD8(v119, v109, v122);
  sub_1C547F35C(v119);
  v63 = sub_1C54766F8();
  v64 = v101[15](v102);
  v65 = v12;
  swift_unknownObjectRelease();
  v66 = v179;
  v179[0] = v64;
  v179[1] = v65;
  sub_1C54141E8();
  v175 = sub_1C5595A04();
  v176 = v13;
  v177 = v14;
  v178 = v15;
  v68 = v175;
  v69 = v13;
  v70 = v14;
  v71 = v15;
  v67 = sub_1C55958B4();
  v171 = v68;
  v172 = v69;
  v173 = v70 & 1;
  v174 = v71;
  v167 = sub_1C55959C4();
  v168 = v16;
  v169 = v17;
  v170 = v18;
  v73 = v167;
  v74 = v16;
  v72 = v17;
  v75 = v18;

  sub_1C5412EA0(v68, v69, v70 & 1);

  sub_1C5595854();
  v163 = v73;
  v164 = v74;
  v165 = v72 & 1 & v99;
  v166 = v75;
  v159 = sub_1C5595974();
  v160 = v19;
  v161 = v20;
  v162 = v21;
  v76 = v159;
  v77 = v19;
  v78 = v20;
  v79 = v21;
  sub_1C5412EA0(v73, v74, v72 & 1);

  v80 = v156;
  v156[0] = v76;
  v156[1] = v77;
  v157 = v78 & 1 & v99;
  v158 = v79;
  v95 = MEMORY[0x1E6981148];
  v96 = MEMORY[0x1E6981138];
  sub_1C5595C54();
  sub_1C5414260(v80);
  v82 = v151;
  v151[0] = v179[2];
  v151[1] = v179[3];
  v152 = v180 & 1 & v99;
  v153 = v181;
  v154 = v182;
  v155 = v183;
  v81 = sub_1C55957D4();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC18);
  v106 = sub_1C546FF30();
  v83 = &v184;
  sub_1C5595D84();
  sub_1C546FFD4(v82);
  v84 = __dst;
  v85 = 89;
  memcpy(__dst, v83, 0x59uLL);
  v90 = v150;
  memcpy(v150, __dst, 0x59uLL);
  v86 = sub_1C54766F8();
  v88 = v101[16](v102);
  v89 = v22;
  swift_unknownObjectRelease();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC28);
  sub_1C5470028();
  sub_1C5595C84();

  sub_1C546FFD4(v90);
  v113 = sub_1C547F4D8();
  sub_1C540EFD8(v118, v110, v121);
  sub_1C547F580(v118);
  v91 = sub_1C54766F8();
  v92 = v101[17](v102);
  v93 = v23;
  swift_unknownObjectRelease();
  sub_1C55953C4();
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v143 = v99 & 1;
  v136 = sub_1C55959E4();
  v137 = v24;
  v138 = v25;
  v139 = v26;
  v98 = v133;
  v133[0] = v136;
  v133[1] = v24;
  v134 = v25 & 1 & v99;
  v135 = v26;
  sub_1C5595C54();
  sub_1C5414260(v98);
  v108 = v128;
  v128[0] = v144;
  v128[1] = v145;
  v129 = v146 & 1 & v99;
  v130 = v147;
  v131 = v148;
  v132 = v149;
  v103 = sub_1C54766F8();
  v104 = v101[18](v102);
  v107 = v27;
  swift_unknownObjectRelease();
  sub_1C5595C84();

  sub_1C546FFD4(v108);
  v114 = sub_1C547F630();
  sub_1C540EFD8(v117, v111, v120);
  sub_1C547F6D8(v117);
  sub_1C547F788(v122, v119);
  v116 = v127;
  v127[0] = v119;
  sub_1C547F9B4(v121, v118);
  v127[1] = v118;
  sub_1C547FAEC(v120, v117);
  v127[2] = v117;
  v126[0] = v109;
  v126[1] = v110;
  v126[2] = v111;
  v123 = v112;
  v124 = v113;
  v125 = v114;
  sub_1C540F5A0(v116, 3uLL, v126, v115);
  sub_1C547F6D8(v117);
  sub_1C547F580(v118);
  sub_1C547F35C(v119);
  sub_1C547F6D8(v120);
  sub_1C547F580(v121);
  return sub_1C547F35C(v122);
}

unint64_t sub_1C547A600()
{
  v2 = qword_1EC15CE08;
  if (!qword_1EC15CE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CE00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CE08);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1C547A688()
{
  if (qword_1EC1628E8 != -1)
  {
    swift_once();
  }

  return &qword_1EC1628F0;
}

unint64_t sub_1C547A6E8()
{
  v2 = qword_1EC15CE10;
  if (!qword_1EC15CE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CE10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C547A770(uint64_t a1)
{
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE18) + 44);

  v6 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE20) + 36);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360) + 28);
  v1 = sub_1C5595F34();
  (*(*(v1 - 8) + 8))(v6 + v7);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE28) + 36);
  v2 = sub_1C55951E4();
  (*(*(v2 - 8) + 8))(v12 + v8);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE30) + 36);
  v14 = sub_1C5595754();
  v15 = *(*(v14 - 8) + 8);
  v15(v12 + v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE38);
  v10 = v12 + *(v11 + 48);
  sub_1C5412EA0(*v10, *(v10 + 8), *(v10 + 16) & 1);

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE40);
  (v15)(v10 + *(v3 + 36), v14);
  v13 = v12 + *(v11 + 64);
  sub_1C5412EA0(*v13, *(v13 + 8), *(v13 + 16) & 1);

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE48);
  (v15)(v13 + *(v4 + 36), v14);
  return a1;
}

unint64_t sub_1C547AA20()
{
  v2 = qword_1EC15CE50;
  if (!qword_1EC15CE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDA8);
    sub_1C547A6E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CE50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C547AAC4()
{
  v2 = qword_1EC15CE58;
  if (!qword_1EC15CE58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CE58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C547AB3C()
{
  v2 = qword_1EC15CE60;
  if (!qword_1EC15CE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDF0);
    sub_1C547ABF0();
    sub_1C547AD2C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CE60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C547ABF0()
{
  v2 = qword_1EC15CE68;
  if (!qword_1EC15CE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CE70);
    sub_1C547AC88();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CE68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C547AC88()
{
  v2 = qword_1EC15CE78;
  if (!qword_1EC15CE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CE80);
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CE78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C547AD2C()
{
  v2 = qword_1EC15CE88;
  if (!qword_1EC15CE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CE88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C547ADB4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDF0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_1C547AE68(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDF0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDD0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1C547AF9C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE18) + 44);
  v10 = *(a1 + v9);

  *(a2 + v9) = v10;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE20) + 36);
  v14 = (a1 + v9 + v11);
  v12 = *v14;

  *(a2 + v9 + v11) = v12;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360) + 28);
  v2 = sub_1C5595F34();
  (*(*(v2 - 8) + 16))(a2 + v9 + v11 + v13, &v14[v13]);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE28) + 36);
  v3 = sub_1C55951E4();
  (*(*(v3 - 8) + 16))(a2 + v9 + v15, a1 + v9 + v15);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE90);
  memcpy((a2 + v9 + *(v4 + 36)), (a1 + v9 + *(v4 + 36)), 0x29uLL);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE30) + 36);
  v34 = sub_1C5595754();
  v35 = *(*(v34 - 8) + 16);
  v35(a2 + v9 + v16, a1 + v9 + v16);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE38);
  v17 = *(v25 + 48);
  v24 = a1 + v9 + v17;
  v18 = *v24;
  v19 = *(v24 + 8);
  v20 = *(v24 + 16);
  sub_1C54130AC(*v24, v19, v20 & 1);
  v23 = a2 + v9 + v17;
  *v23 = v18;
  *(v23 + 8) = v19;
  *(v23 + 16) = v20 & 1;
  v21 = *(v24 + 24);
  sub_1C5594CF4();
  *(v23 + 24) = v21;
  v22 = *(v24 + 32);

  *(v23 + 32) = v22;
  *(v23 + 40) = *(v24 + 40);
  memcpy((v23 + 48), (v24 + 48), 0x29uLL);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE40);
  (v35)(v23 + *(v5 + 36), v24 + *(v5 + 36), v34);
  v26 = *(v25 + 64);
  v33 = a1 + v9 + v26;
  v27 = *v33;
  v28 = *(v33 + 8);
  v29 = *(v33 + 16);
  sub_1C54130AC(*v33, v28, v29 & 1);
  v32 = a2 + v9 + v26;
  *v32 = v27;
  *(v32 + 8) = v28;
  *(v32 + 16) = v29 & 1;
  v30 = *(v33 + 24);
  sub_1C5594CF4();
  *(v32 + 24) = v30;
  v31 = *(v33 + 32);

  *(v32 + 32) = v31;
  *(v32 + 40) = *(v33 + 40);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE48);
  (v35)(v32 + *(v6 + 36), v33 + *(v6 + 36), v34);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDA8);
  memcpy((a2 + *(v7 + 36)), (a1 + *(v7 + 36)), 0x29uLL);
  return a2;
}

void *sub_1C547B474(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDF0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDD0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1C547B5A8()
{
  v2 = qword_1EC15CE98;
  if (!qword_1EC15CE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDD0);
    sub_1C547AB3C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CE98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C547B640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v6 = a1;
  v11 = 0;
  v10 = MEMORY[0x1E697D510];
  v19 = MEMORY[0x1E6981F48];
  v27 = sub_1C547DEE4;
  v23 = sub_1C547DF00;
  v30 = MEMORY[0x1E697D6F0];
  v52 = 0;
  v51 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB8);
  v18 = *(v6 + 24);
  v21 = *(v6 + 16);
  v57 = v21;
  v13 = 255;
  v7 = &unk_1C55C9F3C;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1C5477800();
  v53 = v8;
  v54 = AssociatedTypeWitness;
  v55 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = 0;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v25 = sub_1C5596264();
  v26 = &type metadata for InformationLabelView;
  v37 = sub_1C5596184();
  v31 = *(v37 - 8);
  v32 = v37 - 8;
  v17 = *(v31 + 64);
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v35 = &v5 - v16;
  swift_checkMetadataState();
  v20 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v36 = &v5 - v20;
  v52 = &v5 - v20;
  v51 = v2;
  v22 = &v44;
  v45 = v21;
  v46 = v3;
  v47 = v2;
  v24 = &v40;
  v41 = v21;
  v42 = v3;
  v43 = v2;
  WitnessTable = swift_getWitnessTable();
  v29 = sub_1C547AAC4();
  sub_1C543B364(v27, v22, v25, v26, WitnessTable, v29, v35);
  v48 = MEMORY[0x1E6981E60];
  v49 = WitnessTable;
  v50 = v29;
  v34 = swift_getWitnessTable();
  sub_1C540EFD8(v35, v37, v36);
  v39 = *(v31 + 8);
  v38 = v31 + 8;
  v39(v35, v37);
  (*(v31 + 16))(v35, v36, v37);
  sub_1C540EFD8(v35, v37, v33);
  v39(v35, v37);
  return (v39)(v36, v37);
}

uint64_t sub_1C547BB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v9 = a1;
  v18 = sub_1C547DF1C;
  v13 = sub_1C547DF38;
  v38 = 0;
  v37 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDF0);
  v19 = *(v25 - 8);
  v20 = v25 - 8;
  v10 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v9);
  v23 = &v8 - v10;
  v11 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v24 = &v8 - v11;
  v38 = &v8 - v11;
  v37 = v2;
  v36 = *(v5 + 16);
  v12 = &v32;
  v33 = v36;
  v34 = *(v5 + 24);
  v35 = v2;
  v14 = &v28;
  v29 = v36;
  v30 = v34;
  v31 = v2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE70);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDB0);
  v17 = sub_1C547ABF0();
  v6 = sub_1C547AD2C();
  sub_1C547D540(v18, v12, v15, v16, v17, v6, v23);
  v22 = sub_1C547AB3C();
  sub_1C540EFD8(v23, v25, v24);
  v27 = *(v19 + 8);
  v26 = v19 + 8;
  v27(v23, v25);
  (*(v19 + 16))(v23, v24, v25);
  sub_1C540EFD8(v23, v25, v21);
  v27(v23, v25);
  return (v27)(v24, v25);
}

uint64_t sub_1C547BDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v40 = a4;
  v26 = a1;
  v19 = a2;
  v18 = a3;
  v34 = MEMORY[0x1E697D510];
  v62 = 0;
  v61 = 0;
  v57 = 0;
  v48 = v56;
  v56[0] = 0;
  v56[1] = 0;
  v67 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB8);
  v9[1] = &unk_1C55C9F3C;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = sub_1C5477800();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v63 = v30;
  v64 = AssociatedTypeWitness;
  v65 = v32;
  v66 = AssociatedConformanceWitness;
  v14 = 0;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = *(OpaqueTypeMetadata2 - 8);
  v36 = OpaqueTypeMetadata2 - 8;
  v12 = *(v35 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v42 = v9 - v11;
  v31 = swift_checkMetadataState();
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v47 = v9 - v13;
  v62 = v9 - v13;
  v61 = a1;
  v27 = type metadata accessor for TrustedContactListViewModel();
  v29 = type metadata accessor for TrustedContactsView();
  v15 = sub_1C54766F8();
  v21 = v18[4](v19);
  swift_unknownObjectRelease();
  v16 = sub_1C54766F8();
  v22 = v18[10](v19);
  swift_unknownObjectRelease();
  v17 = sub_1C54766F8();
  v23 = v18[22](v19);
  swift_unknownObjectRelease();
  v20 = sub_1C54766F8();
  v24 = v18[9](v19);
  v25 = v5;
  swift_unknownObjectRelease();
  memset(v60, 0, sizeof(v60));
  memset(v58, 0, sizeof(v58));
  v59 = 0;
  v49 = sub_1C54ED2A4(v21, v22, v23, v24, v25, v60, v58);
  v57 = v49;

  sub_1C547EE30();
  v6 = sub_1C54F0494();
  v28 = v55;
  v55[0] = v6;
  v55[1] = v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDB0);
  v38 = sub_1C547AD2C();
  sub_1C540EFD8(v28, v37, v48);
  sub_1C5373718();
  sub_1C547C2E8(v29, v42);
  v54[2] = v30;
  v54[3] = v31;
  v54[4] = v32;
  v54[5] = AssociatedConformanceWitness;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v42, OpaqueTypeMetadata2, v47);
  v46 = *(v35 + 8);
  v45 = v35 + 8;
  v46(v42, OpaqueTypeMetadata2);
  v43 = v53;
  sub_1C547EEB0(v48, v53);
  v41 = v54;
  v54[0] = v43;
  (*(v35 + 16))(v42, v47, OpaqueTypeMetadata2);
  v54[1] = v42;
  v52[0] = v37;
  v52[1] = OpaqueTypeMetadata2;
  v50 = v38;
  v51 = OpaqueTypeConformance2;
  sub_1C540F5A0(v41, 2uLL, v52, v40);
  v46(v42, OpaqueTypeMetadata2);
  sub_1C5373718();
  v46(v47, OpaqueTypeMetadata2);
  sub_1C5373718();
}

uint64_t sub_1C547C2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v31 = a1;
  v59 = MEMORY[0x1E697D510];
  v28 = sub_1C547DF54;
  v50 = sub_1C547923C;
  v80 = 0;
  v79 = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8);
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v17 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v17 - v17;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDB8);
  v18 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v31);
  v54 = &v17 - v18;
  v45 = *(v3 + 24);
  v44 = *(v3 + 16);
  v85 = v44;
  v19 = &unk_1C55C9F3C;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = sub_1C5477800();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v81 = v55;
  v82 = AssociatedTypeWitness;
  v83 = v57;
  v84 = AssociatedConformanceWitness;
  v49 = 0;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v60 = *(OpaqueTypeMetadata2 - 8);
  v61 = OpaqueTypeMetadata2 - 8;
  v22 = *(v60 + 64);
  v21 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49);
  v64 = &v17 - v21;
  v56 = swift_checkMetadataState();
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v65 = &v17 - v23;
  v80 = &v17 - v23;
  v79 = v2;
  v24 = sub_1C54766F8();
  v4 = (*(v45 + 184))(v44);
  v5 = v41;
  v25 = v4;
  v26 = v6;
  swift_unknownObjectRelease();
  v30 = v78;
  v78[0] = v25;
  v78[1] = v26;
  v27 = v77;
  sub_1C5476A54(v5, v77);
  v42 = 136;
  v43 = 7;
  v7 = swift_allocObject();
  v8 = v27;
  v9 = v45;
  v29 = v7;
  v7[2] = v44;
  v7[3] = v9;
  v47 = 104;
  memcpy(v7 + 4, v8, 0x68uLL);
  sub_1C54141E8();
  sub_1C5596004();
  v32 = sub_1C54766F8();
  v33 = (*(v45 + 192))(v44);
  v34 = v10;
  swift_unknownObjectRelease();
  sub_1C547070C();
  sub_1C5595C84();
  v11 = v41;

  (*(v35 + 8))(v37, v38);
  v39 = *(v11 + 16);
  v40 = *(v11 + 24);

  v75 = v39;
  v76 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595FA4();
  v52 = v73[13];
  v53 = v73[14];
  v48 = v74;

  v46 = v73;
  sub_1C5476A54(v41, v73);
  v12 = swift_allocObject();
  v13 = v45;
  v14 = v46;
  v15 = v47;
  v51 = v12;
  v12[2] = v44;
  v12[3] = v13;
  memcpy(v12 + 4, v14, v15);
  sub_1C5595D34();

  sub_1C547DF70(v54);
  v69 = v55;
  v70 = v56;
  v71 = v57;
  v72 = AssociatedConformanceWitness;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v64, OpaqueTypeMetadata2, v65);
  v68 = *(v60 + 8);
  v67 = v60 + 8;
  v68(v64, OpaqueTypeMetadata2);
  (*(v60 + 16))(v64, v65, OpaqueTypeMetadata2);
  sub_1C540EFD8(v64, OpaqueTypeMetadata2, v62);
  v68(v64, OpaqueTypeMetadata2);
  return (v68)(v65, OpaqueTypeMetadata2);
}

uint64_t sub_1C547C938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(__b, 0, 0x32uLL);
  v16 = a2;
  v13 = a1;
  v4 = type metadata accessor for TrustedContactsView();
  sub_1C547CA64(v4, v11);
  memcpy(__dst, v11, sizeof(__dst));
  memcpy(v10, __dst, 0x32uLL);
  sub_1C547AAC4();
  sub_1C540EFD8(v10, &type metadata for InformationLabelView, __b);
  sub_1C547E034(v10);
  memcpy(v15, __b, 0x32uLL);
  sub_1C547E08C(v15, v9);
  memcpy(v8, v15, 0x32uLL);
  sub_1C540EFD8(v8, &type metadata for InformationLabelView, a3);
  sub_1C547E034(v8);
  return sub_1C547E034(__b);
}

uint64_t sub_1C547CA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x32uLL);
  v22 = v2;
  v21 = *(a1 + 16);
  v9 = v21;
  sub_1C54766F8();
  v8 = *(a1 + 24);
  v12 = (*(v8 + 200))(v9);
  v13 = v3;
  swift_unknownObjectRelease();
  sub_1C55965F4();
  text._countAndFlagsBits = sub_1C54637B4();
  text._object = v4;

  sub_1C54766F8();
  url.value._countAndFlagsBits = (*(v8 + 208))(v9);
  url.value._object = v5;
  swift_unknownObjectRelease();
  InformationLabelView.Link.init(text:url:)(text, url);
  v18[0] = v18[4];
  v18[1] = v18[5];
  v18[2] = v18[6];
  v18[3] = v18[7];
  InformationLabelView.init(text:link:isLinkOnNewLine:textAlignment:)(v12, v13, v18, 1, 0, v19);
  memcpy(__dst, v19, sizeof(__dst));
  memcpy(v17, __dst, 0x32uLL);
  sub_1C547AAC4();
  sub_1C540EFD8(v17, &type metadata for InformationLabelView, __b);
  sub_1C547E034(v17);
  memcpy(v24, __b, 0x32uLL);
  sub_1C547E08C(v24, v16);
  memcpy(v15, v24, 0x32uLL);
  sub_1C540EFD8(v15, &type metadata for InformationLabelView, a2);
  sub_1C547E034(v15);
  return sub_1C547E034(__b);
}

uint64_t sub_1C547CC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v22 = 0;
  v20 = 0;
  v21 = 0;
  v25[6] = a2;
  v25[5] = a1;
  type metadata accessor for TrustedContactListViewModel();
  type metadata accessor for TrustedContactsView();
  sub_1C54766F8();
  v9 = a3[4](a2);
  swift_unknownObjectRelease();
  sub_1C54766F8();
  v10 = a3[11](a2);
  swift_unknownObjectRelease();
  sub_1C54766F8();
  v11 = a3[21](a2);
  swift_unknownObjectRelease();
  sub_1C54766F8();
  v12 = a3[9](a2);
  v13 = v4;
  swift_unknownObjectRelease();
  memset(v25, 0, 40);
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22 = sub_1C54ED2A4(v9, v10, v11, v12, v13, v25, v23);

  sub_1C547EE30();
  v19[0] = sub_1C54F0494();
  v19[1] = v5;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDB0);
  sub_1C547AD2C();
  sub_1C540EFD8(v19, v17, &v20);
  sub_1C5373718();
  v14 = v20;
  v15 = v21;

  v18[0] = v14;
  v18[1] = v15;
  sub_1C540EFD8(v18, v17, a4);
  sub_1C5373718();
  sub_1C5373718();
}

uint64_t sub_1C547CF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v25 = a1;
  v44 = a2;
  v43 = a3;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v49 = 0;
  v61 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE80);
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v30 = v15 - v29;
  v31 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15 - v29);
  v32 = v15 - v31;
  v33 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15 - v31);
  v34 = v15 - v33;
  v60 = v15 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE70);
  v36 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v15 - v36;
  v38 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15 - v36);
  v39 = (v15 - v38);
  v40 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15 - v38);
  v41 = (v15 - v40);
  v59 = v15 - v40;
  v58 = a1;
  v48 = 0;
  v42 = type metadata accessor for TrustedContactsView();
  v45 = sub_1C54766F8();
  v46 = v43[11](v44);
  swift_unknownObjectRelease();
  sub_1C5403328();
  v47 = sub_1C5596744();

  if (v48 < v47)
  {
    v15[1] = sub_1C54766F8();
    v16 = v43[19](v44);
    v17 = v9;
    swift_unknownObjectRelease();
    v18 = v57;
    v57[0] = v16;
    v57[1] = v17;
    sub_1C54141E8();
    v53 = sub_1C5595A04();
    v54 = v10;
    v55 = v11;
    v56 = v12;
    v22 = v50;
    v50[0] = v53;
    v50[1] = v10;
    v51 = v11 & 1;
    v52 = v12;
    v19 = sub_1C54766F8();
    v20 = v43[20](v44);
    v21 = v13;
    swift_unknownObjectRelease();
    sub_1C5595C84();

    sub_1C5414260(v22);
    v23 = sub_1C547AC88();
    sub_1C540EFD8(v32, v26, v34);
    sub_1C547EC90(v32);
    v49 = v32;
    sub_1C547ED34(v34, v30);
    sub_1C540EFD8(v30, v26, v32);
    sub_1C547EC90(v30);
    sub_1C547ED34(v32, v37);
    (*(v27 + 56))(v37, 0, 1, v26);
    sub_1C540F554(v37, v26, v39);
    sub_1C547E868(v37);
    sub_1C547E954(v39, v41);
    sub_1C547EC90(v32);
    sub_1C547EC90(v34);
  }

  else
  {
    (*(v27 + 56))(v37, 1, 1, v26);
    sub_1C547AC88();
    sub_1C540F554(v37, v26, v39);
    sub_1C547E868(v37);
    sub_1C547E954(v39, v41);
  }

  sub_1C547EAC4(v41, v39);
  sub_1C547ABF0();
  sub_1C540EFD8(v39, v35, v24);
  sub_1C547E868(v39);
  return sub_1C547E868(v41);
}

uint64_t sub_1C547D540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v12 = a7;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v21 = a3;
  v20 = a4;
  v11 = (*(*(a3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v10 - v11;
  v8(v7);
  return sub_1C5596154();
}

uint64_t sub_1C547D608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v14 = a2;
  v15 = a3;
  v13 = MEMORY[0x1E69E85E0];
  v19 = &unk_1C55B11A0;
  v22 = 0;
  v23 = a2;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v10 - v10;
  v22 = MEMORY[0x1EEE9AC00](v11);
  v17 = 0;
  v3 = sub_1C5596814();
  (*(*(v3 - 8) + 56))(v18, 1);
  v16 = v21;
  sub_1C5476A54(v11, v21);
  sub_1C55967E4();
  v12 = sub_1C55967D4();
  v4 = swift_allocObject();
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v20 = v4;
  v4[2] = v12;
  v4[3] = v5;
  v4[4] = v6;
  v4[5] = v7;
  memcpy(v4 + 6, v8, 0x68uLL);
  sub_1C54061EC(v17, v17, v18, v19, v20, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1C547D7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[6] = v4;
  v4[7] = 0;
  v4[7] = a4;
  sub_1C55967E4();
  v4[9] = sub_1C55967D4();
  v7 = sub_1C55967A4();

  return MEMORY[0x1EEE6DFA0](sub_1C547D86C, v7, v5);
}

uint64_t sub_1C547D86C()
{
  v1 = *(v0 + 64);
  *(v0 + 48) = v0;
  v4 = *(v1 + 16);
  v6 = *(v1 + 24);

  *(v0 + 16) = v4;
  *(v0 + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();
  sub_1C5596794();
  v5 = *(v0 + 80);

  *(v0 + 32) = v4;
  *(v0 + 40) = v6;
  *(v0 + 81) = v5;
  sub_1C5595F94();
  sub_1C5373718();

  v2 = *(*(v0 + 48) + 8);

  return v2();
}

uint64_t sub_1C547D9A4(uint64_t a1)
{
  sub_1C5594CF4();
  if (a1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
    sub_1C5595F94();
    sub_1C5373718();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  }

  sub_1C5595F94();
  sub_1C5373718();
}

uint64_t sub_1C547DB74(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEB0);
    sub_1C5596714();
    v2 = MEMORY[0x1E69E5920](a2);
  }

  v4(v2);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1C547DCBC()
{
  v2 = qword_1EC15CEA0;
  if (!qword_1EC15CEA0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15CEA0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1C547DD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = sub_1C5596554();
  if (a4)
  {
    v10 = sub_1C5596554();

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (a6)
  {
    v8 = sub_1C5596554();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() analyticsEventWithName:v14 altDSID:v11 flowID:v9];
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v11);
  MEMORY[0x1E69E5920](v14);

  return v7;
}

uint64_t sub_1C547DEA0()
{
  result = sub_1C5594F54();
  qword_1EC1628F0 = v1;
  qword_1EC1628F8 = v2;
  qword_1EC162900 = v3;
  qword_1EC162908 = v4;
  return result;
}

uint64_t sub_1C547DF70(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDB8) + 36);
  v2 = sub_1C5595754();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_1C547E034(uint64_t a1)
{

  if (*(a1 + 24))
  {
  }

  return a1;
}

uint64_t sub_1C547E08C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v7 = *(a1 + 8);
  sub_1C5594CF4();
  *(a2 + 8) = v7;
  if (*(a1 + 24))
  {
    *(a2 + 16) = *(a1 + 16);
    v3 = *(a1 + 24);
    sub_1C5594CF4();
    *(a2 + 24) = v3;
    *(a2 + 32) = *(a1 + 32);
    v4 = *(a1 + 40);
    sub_1C5594CF4();
    *(a2 + 40) = v4;
  }

  else
  {
    *(a2 + 16) = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
  }

  result = a2;
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 49) = *(a1 + 49);
  return result;
}

double sub_1C547E164()
{
  v1 = sub_1C547A688();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2;
}

uint64_t sub_1C547E1DC(double a1, double a2, double a3, double a4)
{
  v8 = sub_1C547A688();
  swift_beginAccess();
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  return swift_endAccess();
}

uint64_t sub_1C547E2AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_14AppleAccountUI38TrustedContactDetailsViewAOSUIProtocol_pSg(uint64_t a1)
{
  v2 = -1;
  if (!HIDWORD(*(a1 + 24)))
  {
    v2 = *(a1 + 24);
  }

  return (v2 + 1);
}

uint64_t sub_1C547E448(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 56)))
      {
        v3 = *(a1 + 56);
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

uint64_t sub_1C547E560(uint64_t result, unsigned int a2, unsigned int a3)
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
    *(result + 96) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1C547E780(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C547D7B4(a1, v6, v7, v1 + 48);
}

uint64_t sub_1C547E868(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE80);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {
    sub_1C5412EA0(*a1, *(a1 + 8), *(a1 + 16) & 1);

    v3 = a1 + *(v5 + 36);
    v1 = sub_1C5595754();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

_OWORD *sub_1C547E954(_OWORD *a1, _OWORD *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE80);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE70);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[1] = a1[1];
    v6 = a2 + *(v9 + 36);
    v5 = a1 + *(v9 + 36);
    v2 = sub_1C5595754();
    (*(*(v2 - 8) + 32))(v6, v5);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

void *sub_1C547EAC4(uint64_t *a1, void *a2)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE80);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE70);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v5 = *a1;
    v6 = a1[1];
    v7 = *(a1 + 16);
    sub_1C54130AC(*a1, v6, v7 & 1);
    *a2 = v5;
    a2[1] = v6;
    *(a2 + 16) = v7 & 1;
    v8 = a1[3];
    sub_1C5594CF4();
    a2[3] = v8;
    v10 = a2 + *(v13 + 36);
    v9 = a1 + *(v13 + 36);
    v2 = sub_1C5595754();
    (*(*(v2 - 8) + 16))(v10, v9);
    (*(v14 + 56))(a2, 0, 1, v13);
  }

  return a2;
}

uint64_t sub_1C547EC90(uint64_t a1)
{
  sub_1C5412EA0(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE80) + 36);
  v1 = sub_1C5595754();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_1C547ED34(uint64_t a1, uint64_t a2)
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
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE80) + 36);
  v2 = sub_1C5595754();
  (*(*(v2 - 8) + 16))(a2 + v8, a1 + v8);
  return a2;
}

unint64_t sub_1C547EE30()
{
  v2 = qword_1EC15CEA8;
  if (!qword_1EC15CEA8)
  {
    type metadata accessor for TrustedContactListViewModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CEA8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C547EEB0(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

unint64_t sub_1C547EEF0()
{
  v2 = qword_1EC15CEB8;
  if (!qword_1EC15CEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CE20);
    sub_1C5452168();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CEB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C547EF94(uint64_t a1)
{

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE20) + 36);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360) + 28);
  v1 = sub_1C5595F34();
  (*(*(v1 - 8) + 8))(v3 + v4);
  return a1;
}

unint64_t sub_1C547F04C()
{
  v2 = qword_1EC15CEC0;
  if (!qword_1EC15CEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CE28);
    sub_1C547EEF0();
    sub_1C5457498();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CEC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C547F0F4(uint64_t a1)
{

  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE20) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360) + 28);
  v1 = sub_1C5595F34();
  (*(*(v1 - 8) + 8))(v4 + v5);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE28) + 36);
  v2 = sub_1C55951E4();
  (*(*(v2 - 8) + 8))(a1 + v6);
  return a1;
}

unint64_t sub_1C547F210()
{
  v2 = qword_1EC15CEC8;
  if (!qword_1EC15CEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CE90);
    sub_1C547F04C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CEC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C547F2B4()
{
  v2 = qword_1EC15CED0;
  if (!qword_1EC15CED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CE30);
    sub_1C547F210();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CED0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C547F35C(uint64_t a1)
{

  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE20) + 36);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360) + 28);
  v1 = sub_1C5595F34();
  (*(*(v1 - 8) + 8))(v5 + v6);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE28) + 36);
  v2 = sub_1C55951E4();
  (*(*(v2 - 8) + 8))(a1 + v7);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE30) + 36);
  v3 = sub_1C5595754();
  (*(*(v3 - 8) + 8))(a1 + v8);
  return a1;
}

unint64_t sub_1C547F4D8()
{
  v2 = qword_1EC15CED8;
  if (!qword_1EC15CED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CE40);
    sub_1C5470028();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CED8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C547F580(uint64_t a1)
{
  sub_1C5412EA0(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE40) + 36);
  v1 = sub_1C5595754();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

unint64_t sub_1C547F630()
{
  v2 = qword_1EC15CEE0;
  if (!qword_1EC15CEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CE48);
    sub_1C546FF30();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CEE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C547F6D8(uint64_t a1)
{
  sub_1C5412EA0(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE48) + 36);
  v1 = sub_1C5595754();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

char *sub_1C547F788(char *a1, char *a2)
{
  v7 = *a1;

  *a2 = v7;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE20) + 36);
  v9 = *&a1[v8];

  *&a2[v8] = v9;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360) + 28);
  v2 = sub_1C5595F34();
  (*(*(v2 - 8) + 16))(&a2[v8 + v10], &a1[v8 + v10]);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE28) + 36);
  v3 = sub_1C55951E4();
  (*(*(v3 - 8) + 16))(&a2[v11], &a1[v11]);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE90);
  memcpy(&a2[*(v4 + 36)], &a1[*(v4 + 36)], 0x29uLL);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE30) + 36);
  v5 = sub_1C5595754();
  (*(*(v5 - 8) + 16))(&a2[v12], &a1[v12]);
  return a2;
}

uint64_t sub_1C547F9B4(uint64_t a1, uint64_t a2)
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
  memcpy((a2 + 48), (a1 + 48), 0x29uLL);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE40) + 36);
  v2 = sub_1C5595754();
  (*(*(v2 - 8) + 16))(a2 + v9, a1 + v9);
  return a2;
}

uint64_t sub_1C547FAEC(uint64_t a1, uint64_t a2)
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
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE48) + 36);
  v2 = sub_1C5595754();
  (*(*(v2 - 8) + 16))(a2 + v9, a1 + v9);
  return a2;
}

unint64_t sub_1C547FC10()
{
  v2 = qword_1EC15CEE8;
  if (!qword_1EC15CEE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CEE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C547FC88(uint64_t a1)
{
  v5 = type metadata accessor for ReviewCustodianListView();
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {

    v3 = a1 + *(v5 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v1 = sub_1C5595104();
      (*(*(v1 - 8) + 8))(v3);
    }

    else
    {
    }
  }

  return a1;
}

_OWORD *sub_1C547FDA8(_OWORD *a1, _OWORD *a2)
{
  v10 = type metadata accessor for ReviewCustodianListView();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDD8);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    __dst = a2 + *(v10 + 20);
    __src = a1 + *(v10 + 20);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_1C5595104();
      (*(*(v2 - 8) + 32))(__dst, __src);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(__dst, __src, *(*(v7 - 8) + 64));
    }

    *(a2 + *(v10 + 24)) = *(a1 + *(v10 + 24));
    (*(v11 + 56))();
  }

  return a2;
}

void *sub_1C547FF88(void *a1, void *a2)
{
  v14 = type metadata accessor for ReviewCustodianListView();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDD8);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v9 = a1[1];
    sub_1C5594CF4();
    a2[1] = v9;
    v10 = (a2 + *(v14 + 20));
    v11 = (a1 + *(v14 + 20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_1C5595104();
      (*(*(v2 - 8) + 16))(v10, v11);
    }

    else
    {
      v8 = *v11;

      *v10 = v8;
    }

    swift_storeEnumTagMultiPayload();
    v3 = *(v14 + 24);
    v6 = a2 + v3;
    *(a2 + v3) = *(a1 + v3);
    v7 = *(a1 + v3 + 8);

    *(v6 + 1) = v7;
    (*(v15 + 56))(a2, 0, 1, v14);
  }

  return a2;
}

uint64_t sub_1C54801EC@<X0>(uint64_t a1@<X8>)
{
  v5[2] = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF0);
  v5[0] = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v1 = (v5 - v5[0]);
  v7 = v5 - v5[0];
  v8 = v2;
  v3 = type metadata accessor for AgeAttestationRowElement();
  sub_1C548032C((v5[1] + *(v3 + 20)), v1);
  sub_1C5595004();
  return sub_1C5480400(v7);
}

uint64_t type metadata accessor for AgeAttestationRowElement()
{
  v1 = qword_1EC162E20;
  if (!qword_1EC162E20)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_1C548032C(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5594BE4();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1C5480400(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5594BE4();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1C54804D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v3[1] = 0;
  v11 = sub_1C5594BE4();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v10 = v3 - v4;
  v14 = sub_1C5595324();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v6 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v15 = v3 - v6;
  (*(v12 + 16))(v3 - v6);
  sub_1C5595304();
  (*(v7 + 32))(v9, v10, v11);
  return (*(v12 + 8))(v15, v14);
}

uint64_t sub_1C5480698(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1C548032C(v2, (&v5 - v6));
  v3 = type metadata accessor for AgeAttestationRowElement();
  sub_1C5480748(v7, (v1 + *(v3 + 20)));
  return sub_1C5480400(v8);
}

void *sub_1C5480748(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_1C5480400(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_1C5594BE4();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_1C5480834()
{

  type metadata accessor for AgeRangeRowViewModel();
  sub_1C5595F74();

  return v1;
}

uint64_t sub_1C54808AC()
{
  type metadata accessor for AgeAttestationRowElement();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF00);
  sub_1C5595F84();

  return v1;
}

uint64_t sub_1C5480950()
{
  type metadata accessor for AgeAttestationRowElement();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF00);
  sub_1C5595F94();
  sub_1C5436F54();
}

void (*sub_1C5480A34(void *a1))(void **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for AgeAttestationRowElement() + 24));
  v5 = *v2;
  v1[9] = *v2;
  v6 = v2[1];
  v1[10] = v6;

  *v1 = v5;
  v1[1] = v6;
  v1[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF00);
  sub_1C5595F84();
  return sub_1C5437078;
}

uint64_t sub_1C5480B20()
{
  type metadata accessor for AgeAttestationRowElement();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF00);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C5480BDC()
{
  v2 = *(v0 + *(type metadata accessor for AgeAttestationRowElement() + 24));

  return v2;
}

uint64_t sub_1C5480C2C(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for AgeAttestationRowElement() + 24));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1C5480CA4()
{
  type metadata accessor for AgeAttestationRowElement();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C5480D34()
{
  type metadata accessor for AgeAttestationRowElement();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F94();
  sub_1C5373718();
}

uint64_t sub_1C5480DE0()
{
  type metadata accessor for AgeAttestationRowElement();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C5480E88()
{
  v2 = *(v0 + *(type metadata accessor for AgeAttestationRowElement() + 28));

  return v2 & 1;
}

uint64_t sub_1C5480ED4(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for AgeAttestationRowElement() + 28);
  *v3 = a1;
  *(v3 + 8) = a2;
}

id sub_1C5480F30()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

uint64_t sub_1C5480F70()
{
  v2 = *(v0 + *(type metadata accessor for AgeAttestationRowElement() + 32));
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1C5480FB0@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF08);
  v25 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v8 - v25;
  v27 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v8 - v25);
  v28 = &v8 - v27;
  v29 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v8 - v27);
  v30 = &v8 - v29;
  v50 = &v8 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF10);
  v32 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v8 - v32;
  v34 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v8 - v32);
  v35 = &v8 - v34;
  v49 = &v8 - v34;
  v48 = v1;
  if (sub_1C54813CC())
  {
    v11 = &v42;
    sub_1C5481550();
    v12 = v44;
    v17 = 145;
    memcpy(v44, v11, 0x91uLL);
    v13 = v41;
    memcpy(v41, v44, 0x91uLL);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF40);
    v19 = sub_1C5481CCC();
    v22 = v43;
    sub_1C540EFD8(v13, v18, v43);
    sub_1C5481EA0(v13);
    v14 = v45;
    memcpy(v45, v22, v17);
    sub_1C5481F0C(v14, &v39);
    v15 = v38;
    memcpy(v38, v14, v17);
    v21 = v40;
    sub_1C540EFD8(v15, v18, v40);
    sub_1C5481EA0(v15);
    v16 = __dst;
    memcpy(__dst, v21, v17);
    sub_1C5481F0C(v16, &v37);
    v20 = v36;
    memcpy(v36, v16, v17);
    v5 = sub_1C5481AB4();
    sub_1C540FD1C(v20, v18, v24, v19, v5, v33);
    sub_1C5481EA0(v20);
    sub_1C5362194(v33, v35);
    sub_1C5481EA0(v21);
    sub_1C5481EA0(v22);
  }

  else
  {
    sub_1C5481670(v28);
    v10 = sub_1C5481AB4();
    sub_1C540EFD8(v28, v24, v30);
    sub_1C5361F28(v28);
    v47 = v28;
    sub_1C5362008(v30, v26);
    sub_1C540EFD8(v26, v24, v28);
    sub_1C5361F28(v26);
    sub_1C5362008(v28, v26);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF40);
    v6 = sub_1C5481CCC();
    sub_1C54108A0(v26, v9, v24, v6, v10, v33);
    sub_1C5361F28(v26);
    sub_1C5362194(v33, v35);
    sub_1C5361F28(v28);
    sub_1C5361F28(v30);
  }

  sub_1C53622B0(v35, v33);
  sub_1C5481DF8();
  sub_1C540EFD8(v33, v31, v23);
  sub_1C5362560(v33);
  return sub_1C5362560(v35);
}

uint64_t sub_1C54813CC()
{
  v8 = type metadata accessor for AgeAttestationRowElement();
  v9 = *(v0 + *(v8 + 32));
  MEMORY[0x1E69E5928](v9);
  v10 = [v9 shieldSignInOrCreateFlows];
  MEMORY[0x1E69E5920](v9);
  if (v10)
  {
    v6 = 1;
  }

  else
  {
    v4 = *(v7 + *(v8 + 32));
    MEMORY[0x1E69E5928](v4);
    v5 = [v4 primaryAuthKitAccount];
    MEMORY[0x1E69E5920](v4);
    if (v5)
    {
      v2 = *(v7 + *(v8 + 32));
      MEMORY[0x1E69E5928](v2);
      v3 = [v2 isManagedAppleIDForAccount_];
      MEMORY[0x1E69E5920](v2);
      MEMORY[0x1E69E5920](v5);
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t sub_1C5481550()
{
  v3 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF70);
  sub_1C5482408();
  sub_1C5412C88();
  sub_1C5596024();
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(v1, __dst, sizeof(v1));
  sub_1C55957A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF58);
  sub_1C5481D70();
  sub_1C5595D84();
  return sub_1C5481EA0(v1);
}

uint64_t sub_1C5481670@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v17 = sub_1C54829B8;
  v14 = sub_1C5482D54;
  v31 = MEMORY[0x1E697CDC0];
  v33 = sub_1C548367C;
  v45 = 0;
  v1 = type metadata accessor for AgeAttestationRowElement();
  v7 = *(v1 - 8);
  v11 = v7;
  v23 = *(v7 + 64);
  v8 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v26 = (&v6 - v8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF20);
  v18 = *(v27 - 8);
  v19 = v27 - 8;
  v9 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v20 = &v6 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF38);
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v10 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v21);
  v37 = &v6 - v10;
  v45 = v2;
  sub_1C5482658(v2, v3);
  v22 = *(v11 + 80);
  v12 = (v22 + 16) & ~v22;
  v24 = 7;
  v13 = swift_allocObject();
  sub_1C548285C(v26, (v13 + v12));
  v15 = &v39;
  v40 = v21;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF80);
  sub_1C5482D5C();
  v4 = sub_1C5595FD4();
  nullsub_1(v4);
  v29 = sub_1C5481BC8();
  v30 = sub_1C5481C50();
  v28 = &unk_1F4478B98;
  sub_1C5595AD4();
  (*(v18 + 8))(v20, v27);
  sub_1C5482658(v21, v26);
  v25 = (v22 + 16) & ~v22;
  v34 = swift_allocObject();
  sub_1C548285C(v26, (v34 + v25));
  v41 = v27;
  v42 = v28;
  v43 = v29;
  v44 = v30;
  swift_getOpaqueTypeConformance2();
  sub_1C5595DC4();
  sub_1C5411348(v33);
  return (*(v35 + 8))(v37, v38);
}

unint64_t sub_1C5481AB4()
{
  v2 = qword_1EC15CF18;
  if (!qword_1EC15CF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CF08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CF20);
    sub_1C5481BC8();
    sub_1C5481C50();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CF18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5481BC8()
{
  v2 = qword_1EC15CF28;
  if (!qword_1EC15CF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CF20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CF28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5481C50()
{
  v2 = qword_1EC15CF30;
  if (!qword_1EC15CF30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CF30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5481CCC()
{
  v2 = qword_1EC15CF48;
  if (!qword_1EC15CF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CF40);
    sub_1C5481D70();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CF48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5481D70()
{
  v2 = qword_1EC15CF50;
  if (!qword_1EC15CF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CF58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CF50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5481DF8()
{
  v2 = qword_1EC15CF68;
  if (!qword_1EC15CF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CF10);
    sub_1C5481CCC();
    sub_1C5481AB4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CF68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5481EA0(uint64_t a1)
{
  sub_1C5412EA0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  sub_1C5412EA0(*(a1 + 72), *(a1 + 80), *(a1 + 88) & 1);

  return a1;
}

uint64_t sub_1C5481F0C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1C54130AC(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v6 = *(a1 + 48);
  sub_1C5594CF4();
  *(a2 + 48) = v6;
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  sub_1C54130AC(v7, v8, v9 & 1);
  *(a2 + 72) = v7;
  *(a2 + 80) = v8;
  *(a2 + 88) = v9 & 1;
  v11 = *(a1 + 96);
  sub_1C5594CF4();
  *(a2 + 96) = v11;
  memcpy((a2 + 104), (a1 + 104), 0x29uLL);
  return a2;
}

uint64_t sub_1C5482040@<X0>(uint64_t a1@<X8>)
{
  memset(v65, 0, sizeof(v65));
  v54 = 0;
  v55 = 0;
  memset(v51, 0, sizeof(v51));
  sub_1C55965F4();
  v14 = sub_1C54637B4();
  v15 = v1;

  v63 = v14;
  v64 = v15;
  sub_1C54141E8();
  v59 = sub_1C5595A04();
  v60 = v2;
  v61 = v3;
  v62 = v4;
  v56[0] = v59;
  v56[1] = v2;
  v57 = v3 & 1;
  v58 = v4;
  v25 = MEMORY[0x1E6981148];
  sub_1C540EFD8(v56, MEMORY[0x1E6981148], v65);
  sub_1C5414260(v56);
  v52 = sub_1C5596044();
  v53 = v5 & 1;
  v24 = MEMORY[0x1E6981840];
  sub_1C540EFD8(&v52, MEMORY[0x1E6981840], &v54);
  sub_1C55965F4();
  v16 = sub_1C54637B4();
  v17 = v6;

  v49 = v16;
  v50 = v17;
  v45 = sub_1C5595A04();
  v46 = v7;
  v47 = v8;
  v48 = v9;
  v19 = v7;
  v18 = v8;
  v20 = v9;
  v44 = sub_1C5430454();
  v40 = v45;
  v41 = v19;
  v42 = v18 & 1;
  v43 = v20;
  v36 = sub_1C5595994();
  v37 = v10;
  v38 = v11;
  v39 = v12;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  sub_1C5412EA0(v45, v19, v18 & 1);

  v33[0] = v36;
  v33[1] = v21;
  v34 = v22 & 1;
  v35 = v23;
  sub_1C540EFD8(v33, v25, v51);
  sub_1C5414260(v33);
  sub_1C54142A8(v65, v31);
  v32[0] = v31;
  v29 = v54;
  v30 = v55;
  v32[1] = &v29;
  sub_1C54142A8(v51, v28);
  v32[2] = v28;
  v27[0] = v25;
  v27[1] = v24;
  v27[2] = v25;
  sub_1C540F5A0(v32, 3uLL, v27, a1);
  sub_1C5414260(v28);
  sub_1C5414260(v31);
  sub_1C5414260(v51);
  return sub_1C5414260(v65);
}

unint64_t sub_1C5482408()
{
  v2 = qword_1EC15CF78;
  if (!qword_1EC15CF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CF70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CF78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5482490(uint64_t a1)
{
  v6 = 0;
  v8 = sub_1C5482A1C;
  v17 = 0;
  v3[1] = 0;
  v12 = sub_1C5594BB4();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = v3 - v4;
  v16 = sub_1C5594BE4();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v5 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v15 = v3 - v5;
  v17 = a1;
  sub_1C54801EC(v3 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D178);
  sub_1C5489A40();
  sub_1C5594BA4();
  sub_1C5489AE4();
  sub_1C5594BD4();
  (*(v9 + 8))(v11, v12);
  return (*(v13 + 8))(v15, v16);
}

void *sub_1C5482658(void *a1, void *a2)
{
  *a2 = *a1;
  v15 = a1[1];
  sub_1C5594CF4();
  a2[1] = v15;
  v16 = type metadata accessor for AgeAttestationRowElement();
  v17 = v16[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5594BE4();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v13 = *(a1 + v17);

    *(a2 + v17) = v13;
  }

  swift_storeEnumTagMultiPayload();
  v7 = (a2 + v16[6]);
  v6 = (a1 + v16[6]);
  v5 = *v6;

  *v7 = v5;
  v8 = v6[1];

  v7[1] = v8;
  v3 = v16[7];
  v9 = a2 + v3;
  *(a2 + v3) = *(a1 + v3);
  v10 = *(a1 + v3 + 8);

  *(v9 + 1) = v10;
  v11 = v16[8];
  v12 = *(a1 + v11);
  MEMORY[0x1E69E5928](v12);
  result = a2;
  *(a2 + v11) = v12;
  return result;
}

__n128 sub_1C548285C(_OWORD *a1, _OWORD *a2)
{
  *a2 = *a1;
  v5 = type metadata accessor for AgeAttestationRowElement();
  v6 = v5[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5594BE4();
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2 + v6, a1 + v6, *(*(v8 - 8) + 64));
  }

  *(a2 + v5[6]) = *(a1 + v5[6]);
  result = *(a1 + v5[7]);
  *(a2 + v5[7]) = result;
  *(a2 + v5[8]) = *(a1 + v5[8]);
  return result;
}

uint64_t sub_1C54829B8()
{
  v1 = *(type metadata accessor for AgeAttestationRowElement() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1C5482490(v2);
}

void *sub_1C5482A1C@<X0>(uint64_t a1@<X8>)
{
  v11[0] = sub_1C5482B6C();
  sub_1C5488BB0();
  sub_1C5411080();
  sub_1C5411148();
  sub_1C5595BB4();
  sub_1C5401EF8(v11);
  v9[0] = v11[1];
  v9[1] = v11[2];
  v10 = v12;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D178);
  sub_1C5489A40();
  sub_1C540EFD8(v9, v6, v13);
  sub_1C5401EF8(v9);
  v2 = v13[0];
  v3 = v13[1];
  v4 = v14;
  MEMORY[0x1E69E5928](v13[0]);
  v7[0] = v2;
  v7[1] = v3;
  v8 = v4;
  sub_1C540EFD8(v7, v6, a1);
  sub_1C5401EF8(v7);
  result = v13;
  sub_1C5401EF8(v13);
  return result;
}

id sub_1C5482B6C()
{
  v2 = 0;
  sub_1C54836E0();
  v1 = sub_1C5404B48();
  MEMORY[0x1E69E5928](v1);
  v2 = v1;
  sub_1C5401EF8(&v2);
  return v1;
}

uint64_t sub_1C5482BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D140);
  sub_1C54896F8();
  sub_1C5412C88();
  sub_1C5596024();
  memcpy(__dst, v9, sizeof(__dst));
  memcpy(v8, __dst, sizeof(v8));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF80);
  sub_1C5482D5C();
  sub_1C540EFD8(v8, v5, __b);
  sub_1C5489780(v8);
  memcpy(v13, __b, sizeof(v13));
  sub_1C54897C8(v13, v7);
  memcpy(v6, v13, sizeof(v6));
  sub_1C540EFD8(v6, v5, a2);
  sub_1C5489780(v6);
  return sub_1C5489780(__b);
}

unint64_t sub_1C5482D5C()
{
  v2 = qword_1EC15CF88;
  if (!qword_1EC15CF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CF80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CF88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5482DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(v86, 0, sizeof(v86));
  v75 = 0;
  v76 = 0;
  v55 = 0;
  v87 = a1;
  sub_1C55965F4();
  v20 = sub_1C54637B4();
  v21 = v2;

  v84 = v20;
  v85 = v21;
  sub_1C54141E8();
  v80 = sub_1C5595A04();
  v81 = v3;
  v82 = v4;
  v83 = v5;
  v77[0] = v80;
  v77[1] = v3;
  v78 = v4 & 1;
  v79 = v5;
  sub_1C540EFD8(v77, MEMORY[0x1E6981148], v86);
  sub_1C5414260(v77);
  v73 = sub_1C5596044();
  v74 = v6 & 1;
  sub_1C540EFD8(&v73, MEMORY[0x1E6981840], &v75);
  v22 = sub_1C54808AC();
  v70 = (*(*v22 + 192))(v22);
  v23 = v70;
  if ((v70 & 0x100000000) != 0)
  {

    v66 = 0x200000000;
    v67 = 0;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D150);
    sub_1C5489884();
    sub_1C540F554(&v66, v15, &v68);
    v9 = v68;
    v10 = v69;
    v71 = v68;
  }

  else
  {
    v55 = v70;

    v7 = (a1 + *(type metadata accessor for AgeAttestationRowElement() + 28));
    v12 = *v7;
    v13 = *(v7 + 1);

    v45 = v12;
    v46 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
    sub_1C5595F84();

    v8 = sub_1C5483304();
    v43 = sub_1C5483434(v23, v44 & 1, v8 & 1);
    v41 = v43;
    v42 = WORD2(v43);
    v40 = sub_1C5430454();
    sub_1C548992C();
    sub_1C5595BA4();
    v36 = v47;
    v37 = v48;
    v38 = v49;
    v39 = v50;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D150);
    sub_1C5489884();
    sub_1C540EFD8(&v36, v14, &v51);
    v28 = v51;
    v29 = v52;
    v30 = v53;
    v31 = v54;
    sub_1C540EFD8(&v28, v14, &v32);
    v24 = v32 | ((v33 & 1) << 32) | ((v34 & 1) << 40);
    v25 = v35;
    sub_1C540F554(&v24, v14, &v26);
    v9 = v26;
    v10 = v27;
    v71 = v26;
  }

  v72 = v10;
  v16 = v9;
  v17 = v10;
  sub_1C54142A8(v86, v64);
  v65[0] = v64;
  v62 = v75;
  v63 = v76;
  v65[1] = &v62;
  v60 = v16;
  v61 = v17;
  v65[2] = &v60;
  v59[0] = MEMORY[0x1E6981148];
  v59[1] = MEMORY[0x1E6981840];
  v59[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D168);
  v56 = MEMORY[0x1E6981138];
  v57 = MEMORY[0x1E6981838];
  v58 = sub_1C54899A8();
  sub_1C540F5A0(v65, 3uLL, v59, a2);
  sub_1C5414260(v64);
  return sub_1C5414260(v86);
}

uint64_t sub_1C5483304()
{
  v6 = type metadata accessor for AgeAttestationRowElement();
  v7 = *(v0 + *(v6 + 32));
  MEMORY[0x1E69E5928](v7);
  v8 = [v7 primaryAuthKitAccount];
  MEMORY[0x1E69E5920](v7);
  if (v8)
  {
    v2 = *(v5 + *(v6 + 32));
    MEMORY[0x1E69E5928](v2);
    v3 = [v2 userUnderAgeForAccount_];
    MEMORY[0x1E69E5920](v2);
    MEMORY[0x1E69E5920](v8);
    v4 = v3 ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1C5483434(int a1, char a2, char a3)
{
  LODWORD(v4) = a1;
  BYTE4(v4) = a2;
  BYTE5(v4) = a3;
  return v4;
}

uint64_t sub_1C5483450(void *a1)
{
  v14 = a1;
  v18 = MEMORY[0x1E69E85E0];
  v23 = &unk_1C55B1840;
  v25 = 0;
  v21 = 0;
  v1 = type metadata accessor for AgeAttestationRowElement();
  v11 = *(v1 - 8);
  v15 = v11;
  v16 = *(v11 + 64);
  v12 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v20 = (&v10 - v12);
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v22 = &v10 - v13;
  v25 = v2;
  v3 = sub_1C5596814();
  (*(*(v3 - 8) + 56))(v22, 1);
  sub_1C5482658(v14, v20);
  sub_1C55967E4();
  v17 = sub_1C55967D4();
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v4 = swift_allocObject();
  v5 = v18;
  v6 = v19;
  v7 = v4;
  v8 = v20;
  v24 = v7;
  *(v7 + 16) = v17;
  *(v7 + 24) = v5;
  sub_1C548285C(v8, (v7 + v6));
  sub_1C54061EC(v21, v21, v22, v23, v24, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1C548367C()
{
  v1 = *(type metadata accessor for AgeAttestationRowElement() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1C5483450(v2);
}

unint64_t sub_1C54836E0()
{
  v2 = qword_1EC15CF90;
  if (!qword_1EC15CF90)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15CF90);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C5483744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[4] = v4;
  v4[5] = 0;
  v4[5] = a4;
  sub_1C55967E4();
  v4[7] = sub_1C55967D4();
  v7 = sub_1C55967A4();
  v4[8] = v7;
  v4[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C5483800, v7, v5);
}

uint64_t sub_1C5483800()
{
  *(v0 + 32) = v0;
  v1 = sub_1C54808AC();
  *(v0 + 80) = v1;
  v5 = (*(*v1 + 272) + **(*v1 + 272));
  v2 = swift_task_alloc();
  *(v4 + 88) = v2;
  *v2 = *(v4 + 32);
  v2[1] = sub_1C548394C;

  return v5();
}

uint64_t sub_1C548394C()
{
  v3 = *v0;
  *(v3 + 32) = *v0;

  v1 = swift_task_alloc();
  *(v3 + 96) = v1;
  *v1 = *(v3 + 32);
  v1[1] = sub_1C5483AD0;

  return sub_1C5483D40();
}

uint64_t sub_1C5483AD0(char a1)
{
  v6 = *v1;
  v5 = *v1;
  *(v5 + 32) = *v1;
  *(v5 + 105) = a1;

  v2 = *(v6 + 72);
  v3 = *(v6 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1C5483C14, v3, v2);
}

uint64_t sub_1C5483C14()
{
  v6 = *(v0 + 105);
  v4 = *(v0 + 48);
  *(v0 + 32) = v0;
  v1 = (v4 + *(type metadata accessor for AgeAttestationRowElement() + 28));
  v5 = *v1;
  v7 = *(v1 + 1);

  *(v0 + 16) = v5;
  *(v0 + 24) = v7;
  *(v0 + 104) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F94();
  sub_1C5373718();

  v2 = *(*(v0 + 32) + 8);

  return v2();
}

uint64_t sub_1C5483D40()
{
  v1[44] = v0;
  v1[34] = v1;
  v1[35] = 0;
  v1[36] = 0;
  v1[22] = 0;
  v1[23] = 0;
  v1[37] = 0;
  v1[39] = 0;
  v1[40] = 0;
  v1[24] = 0;
  v1[25] = 0;
  v1[43] = 0;
  v1[35] = v0;
  sub_1C55967E4();
  v1[45] = sub_1C55967D4();
  v4 = sub_1C55967A4();
  v1[46] = v4;
  v1[47] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C5483E20, v4, v2);
}

uint64_t sub_1C5483E20()
{
  v14 = v0[44];
  v0[34] = v0;
  v15 = type metadata accessor for AgeAttestationRowElement();
  v16 = *(v14 + *(v15 + 32));
  MEMORY[0x1E69E5928](v16);
  v17 = [v16 primaryAuthKitAccount];
  v0[48] = v17;
  MEMORY[0x1E69E5920](v16);
  if (v17)
  {
    v1 = *(v13 + 352);
    *(v13 + 288) = v17;
    v11 = *(v1 + *(v15 + 32));
    MEMORY[0x1E69E5928](v11);
    v12 = [v11 altDSIDForAccount_];
    MEMORY[0x1E69E5920](v11);
    if (v12)
    {
      v7 = sub_1C5596574();
      v8 = v2;
      MEMORY[0x1E69E5920](v12);
      v9 = v7;
      v10 = v8;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    *(v13 + 400) = v10;
    *(v13 + 392) = v9;
    *(v13 + 176) = v9;
    *(v13 + 184) = v10;
    sub_1C5487548();
    v6 = sub_1C5404B48();
    *(v13 + 408) = v6;
    *(v13 + 296) = v6;
    *(v13 + 16) = *(v13 + 272);
    *(v13 + 56) = v13 + 304;
    *(v13 + 24) = sub_1C5484180;
    v5 = swift_continuation_init();
    *(v13 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CFA0);
    *(v13 + 112) = v5;
    *(v13 + 80) = MEMORY[0x1E69E9820];
    *(v13 + 88) = 1107296256;
    *(v13 + 92) = 0;
    *(v13 + 96) = sub_1C5484A88;
    *(v13 + 104) = &block_descriptor_9;
    [v6 startRequestWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v13 + 16);
  }

  else
  {

    v3 = *(*(v13 + 272) + 8);

    return v3(0);
  }
}

uint64_t sub_1C5484180()
{
  v7 = *v0;
  v8 = *v0;
  v6 = *v0 + 16;
  *(v8 + 272) = *v0;
  v1 = *(v7 + 48);
  *(v8 + 416) = v1;
  if (v1)
  {
    v2 = *(v6 + 360);
    v3 = *(v6 + 352);
    v4 = sub_1C5484964;
  }

  else
  {
    v2 = *(v6 + 360);
    v3 = *(v6 + 352);
    v4 = sub_1C54842F8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1C54842F8()
{
  v0[34] = v0;
  v19 = v0[38];
  v0[40] = v19;
  v20 = [v19 members];
  sub_1C54875EC();
  v0[41] = sub_1C5596714();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CFB0);
  sub_1C5487650();
  sub_1C5596914();
  MEMORY[0x1E69E5920](v20);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CFC0);
    sub_1C5596C74();
    v17 = *(v18 + 336);
    if (!v17)
    {
      break;
    }

    *(v18 + 344) = v17;
    v16 = [v17 altDSID];
    if (v16)
    {
      v12 = sub_1C5596574();
      v13 = v1;
      MEMORY[0x1E69E5920](v16);
      v14 = v12;
      v15 = v13;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    v11 = *(v18 + 400);
    v10 = *(v18 + 392);
    sub_1C5594CF4();
    *(v18 + 208) = v10;
    *(v18 + 216) = v11;
    *(v18 + 144) = v14;
    *(v18 + 152) = v15;
    sub_1C5402BDC((v18 + 208), (v18 + 160));
    if (!*(v18 + 152))
    {
      if (!*(v18 + 168))
      {
        sub_1C5401ECC();

LABEL_17:
        v6 = *(v18 + 408);
        v7 = *(v18 + 384);
        MEMORY[0x1E69E5920](v17);
        sub_1C541439C();
        MEMORY[0x1E69E5920](v19);
        MEMORY[0x1E69E5920](v6);

        MEMORY[0x1E69E5920](v7);
        v8 = 1;
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    sub_1C5402BDC((v18 + 144), (v18 + 224));
    if (!*(v18 + 168))
    {
      sub_1C5401ECC();
LABEL_14:
      sub_1C54876D8();

      goto LABEL_16;
    }

    *(v18 + 240) = *(v18 + 224);
    *(v18 + 256) = *(v18 + 160);
    v9 = MEMORY[0x1C69471A0](*(v18 + 240), *(v18 + 248), *(v18 + 256), *(v18 + 264));
    sub_1C5401ECC();
    sub_1C5401ECC();
    sub_1C5401ECC();

    if (v9)
    {
      goto LABEL_17;
    }

LABEL_16:
    MEMORY[0x1E69E5920](v17);
  }

  v4 = *(v18 + 408);
  v5 = *(v18 + 384);
  sub_1C541439C();
  MEMORY[0x1E69E5920](v19);
  MEMORY[0x1E69E5920](v4);

  MEMORY[0x1E69E5920](v5);
  v8 = 0;
LABEL_19:

  v2 = *(*(v18 + 272) + 8);

  return v2(v8 & 1);
}

uint64_t sub_1C5484964()
{
  v5 = v0[52];
  v4 = v0[51];
  v6 = v0[48];
  v0[34] = v0;
  swift_willThrow();
  MEMORY[0x1E69E5920](v4);
  v1 = v5;
  v0[39] = v5;

  MEMORY[0x1E69E5920](v6);

  v2 = *(v0[34] + 8);

  return v2(0);
}

double sub_1C5484A88(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a3);
  v11 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    v6 = sub_1C5489578();
    sub_1C542501C(v11, a3, v6);
  }

  else
  {
    MEMORY[0x1E69E5928](a2);
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      sub_1C5596E44();
      __break(1u);
    }

    v12 = v7;
    v3 = sub_1C5489578();
    sub_1C5425080(v11, &v12, v3);
  }

  MEMORY[0x1E69E5920](a3);
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

double sub_1C5484BC0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v33 = a2;
  v48 = a1;
  v34 = &unk_1C55B1298;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v35 = 0;
  v36 = sub_1C55962E4();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  v39 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v40 = &v22 - v39;
  v45 = type metadata accessor for AgeAttestationRowElement();
  v41 = (*(*(v45 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v45);
  v47 = (&v22 - v41);
  v59 = &v22 - v41;
  v58 = v3;
  v42 = *(v2 + 20);
  swift_getKeyPath();
  sub_1C5595024();
  v44 = v45[7];
  v43 = 1;
  v4 = sub_1C5409594();
  v5 = v45;
  v6 = v47 + v44;
  *v6 = v4 & v43;
  *(v6 + 1) = v7;
  v46 = v5[8];
  v8 = [objc_opt_self() sharedInstance];
  v9 = v48;
  *(v47 + v46) = v8;
  v51 = v9[3];
  v49 = v9[4];
  __swift_project_boxed_opaque_existential_0(v9, v51);
  v10 = v50;
  v11 = sub_1C5596F04();
  v52 = v10;
  v53 = v11;
  v54 = v12;
  v55 = v10;
  if (v10)
  {
    v22 = v55;
    __swift_destroy_boxed_opaque_existential_0(v48);
    sub_1C5480400(v47 + v45[5]);
    sub_1C5373718();
    *&result = MEMORY[0x1E69E5920](*(v47 + v45[8])).n128_u64[0];
  }

  else
  {
    v29 = v54;
    v28 = v53;
    sub_1C5594CF4();
    v13 = v29;
    v14 = v47;
    *v47 = v28;
    v14[1] = v13;
    type metadata accessor for AgeRangeRowViewModel();
    v23 = sub_1C54BF6D8();
    v24 = sub_1C54BF704();
    v32 = sub_1C54BF854(v23, v24, v15);
    v57 = v32;

    v25 = (v47 + v45[6]);
    v16 = sub_1C5480834();
    v17 = v25;
    v18 = v16;
    v19 = v48;
    *v25 = v18;
    v17[1] = v20;
    v27 = v19[3];
    v26 = v19[4];
    __swift_project_boxed_opaque_existential_0(v19, v27);
    sub_1C5596F14();
    v31 = sub_1C55962C4();
    (*(v37 + 8))(v40, v36);
    v30 = v56;
    v56[0] = v28;
    v56[1] = v29;

    sub_1C55962B4();

    sub_1C5401ECC();

    sub_1C5482658(v47, v33);
    __swift_destroy_boxed_opaque_existential_0(v48);
    sub_1C5487D54(v47);
  }

  return result;
}

uint64_t sub_1C5485018(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 24) = a2;
  v6 = (*(*a2 + 272) + **(*a2 + 272));
  v3 = swift_task_alloc();
  *(v5 + 32) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5485164;

  return v6();
}

uint64_t sub_1C5485164()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1C5485308@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C545D014();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1C5485338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v9 = a1;
  v12 = sub_1C5487E7C;
  v34 = 0;
  v33 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CFC8);
  v7 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v6 - v7;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CFD0);
  v8 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v6 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CFD8);
  v10 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v29 = &v6 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v30 = &v6 - v11;
  v34 = &v6 - v11;
  v33 = v4;
  v13 = &v31;
  v32 = v4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CFE0);
  v15 = sub_1C5487E84();
  sub_1C5412C88();
  v16 = 0;
  v17 = 1;
  sub_1C5596024();
  v19 = sub_1C55957A4();
  sub_1C5487F0C();
  sub_1C5595D84();
  sub_1C5362A34(v20);
  sub_1C5596244();
  v23 = sub_1C5487F94();
  v24 = sub_1C543F8AC();
  v22 = MEMORY[0x1E6981EF8];
  sub_1C543AE1C();
  sub_1C5595B24();
  sub_1C5362A34(v25);
  v28 = sub_1C5488038();
  sub_1C540EFD8(v29, v27, v30);
  sub_1C5362A34(v29);
  sub_1C5362B20(v30, v29);
  sub_1C540EFD8(v29, v27, v26);
  sub_1C5362A34(v29);
  return sub_1C5362A34(v30);
}

uint64_t sub_1C5485640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v31 = MEMORY[0x1E6981198];
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v20 = &v64;
  v64 = 0;
  v65 = 0;
  v19 = 0;
  v25 = sub_1C5595F34();
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v11 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v11 - v11;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE20);
  v12 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v11 - v12;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D008);
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v13 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v11 - v13;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D020);
  v14 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v19);
  v46 = &v11 - v14;
  v15 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v11 - v15;
  v68 = &v11 - v15;
  v49 = sub_1C5595654();
  v37 = *(v49 - 8);
  v38 = v49 - 8;
  v17 = *(v37 + 64);
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v49);
  v47 = &v11 - v16;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v11 - v18;
  v67 = &v11 - v18;
  v66 = a1;
  sub_1C5595664();
  v41 = sub_1C5489378();
  sub_1C540EFD8(v47, v49, v52);
  v51 = *(v37 + 8);
  v50 = v37 + 8;
  v51(v47, v49);
  v21 = 1;
  v62 = sub_1C5596044();
  v63 = v6 & 1;
  v39 = MEMORY[0x1E6981840];
  v42 = MEMORY[0x1E6981838];
  sub_1C540EFD8(&v62, MEMORY[0x1E6981840], v20);
  sub_1C55965F4();
  v7 = sub_1C5595EF4();
  v26 = &v61;
  v61 = v7;
  (*(v22 + 104))(v24, *MEMORY[0x1E69816C8], v25);
  sub_1C5595AA4();
  (*(v22 + 8))(v24, v25);
  sub_1C5410D10();
  sub_1C5595864();
  v27 = v8;
  v30 = sub_1C547EEF0();
  sub_1C5595A94();
  sub_1C547EF94(v28);
  v9 = sub_1C5485DB0();
  v32 = &v60;
  v60 = v9;
  v59[3] = v29;
  v59[4] = v30;
  swift_getOpaqueTypeConformance2();
  sub_1C5595BA4();
  (*(v33 + 8))(v35, v36);
  v43 = sub_1C54893F8();
  sub_1C540EFD8(v46, v40, v48);
  sub_1C5362FB4(v46);
  (*(v37 + 16))(v47, v52, v49);
  v45 = v59;
  v59[0] = v47;
  v57 = v64;
  v58 = v65;
  v59[1] = &v57;
  sub_1C536301C(v48, v46);
  v59[2] = v46;
  v56[0] = v49;
  v56[1] = v39;
  v56[2] = v40;
  v53 = v41;
  v54 = v42;
  v55 = v43;
  sub_1C540F5A0(v45, 3uLL, v56, v44);
  sub_1C5362FB4(v46);
  v51(v47, v49);
  sub_1C5362FB4(v48);
  return (v51)(v52, v49);
}

uint64_t sub_1C5485E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x24uLL);
  memset(v344, 0, 0x21uLL);
  v342 = 0u;
  v343 = 0u;
  v331 = 0u;
  v332 = 0u;
  memset(v319, 0, 0x21uLL);
  v294 = 0u;
  v295 = 0u;
  v283 = 0u;
  v284 = 0u;
  v270 = 0u;
  v271 = 0u;
  v259 = 0u;
  v260 = 0u;
  v232 = 0u;
  v233 = 0u;
  v221 = 0u;
  v222 = 0u;
  v196 = 0u;
  v197 = 0u;
  v185 = 0u;
  v186 = 0u;
  v359 = a1;
  v357 = a1;
  v358 = WORD2(a1);
  if (a1)
  {
    switch(a1)
    {
      case 1:
        sub_1C55965F4();
        v114 = sub_1C54637B4();
        v115 = v8;

        v230 = v114;
        v231 = v115;
        sub_1C54141E8();
        v226 = sub_1C5595A04();
        v227 = v9;
        v228 = v10;
        v229 = v11;
        v223[0] = v226;
        v223[1] = v9;
        v224 = v10 & 1;
        v225 = v11;
        v122 = MEMORY[0x1E6981148];
        v123 = MEMORY[0x1E6981138];
        sub_1C540EFD8(v223, MEMORY[0x1E6981148], &v232);
        sub_1C5414260(v223);
        v116 = v232;
        v117 = v233;
        v118 = *(&v233 + 1);
        sub_1C54130AC(v232, *(&v232 + 1), v233 & 1);
        sub_1C5594CF4();
        v218 = v116;
        v219 = v117 & 1;
        v220 = v118;
        sub_1C540EFD8(&v218, v122, &v221);
        sub_1C5414260(&v218);
        v119 = v221;
        v120 = v222;
        v121 = *(&v222 + 1);
        sub_1C54130AC(v221, *(&v221 + 1), v222 & 1);
        sub_1C5594CF4();
        v203 = v119;
        v204 = v120 & 1;
        v205 = v121;
        sub_1C54108A0(&v203, v122, v122, v123, v123, v206);
        sub_1C5414260(&v203);
        v201[0] = v206[0];
        v201[1] = v206[1];
        v201[2] = v206[2];
        v201[3] = v206[3];
        v202 = v207 & 1;
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D040);
        v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D050);
        v126 = sub_1C5488188();
        v12 = sub_1C5488224();
        sub_1C540FD1C(v201, v124, v125, v126, v12, v208);
        sub_1C5488758(v201);
        v198[0] = v208[0];
        v198[1] = v208[1];
        v198[2] = v208[2];
        v198[3] = v208[3];
        v199 = v209;
        v200 = v210 & 1;
        v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D028);
        v13 = sub_1C54880E0();
        sub_1C540FD1C(v198, v127, MEMORY[0x1E6981E70], v13, MEMORY[0x1E6981E60], &v211);
        sub_1C54887E4(v198);
        v129 = v211;
        v130 = v212;
        v131 = v213;
        v132 = v214;
        v133 = v215 | (v216 << 16);
        v128 = v217;
        sub_1C54882C8(v211, v212, v213, v214, v133, v217 & 1);
        __b[0] = v129;
        __b[1] = v130;
        __b[2] = v131;
        __b[3] = v132;
        LOWORD(__b[4]) = v133;
        BYTE2(__b[4]) = BYTE2(v133);
        BYTE3(__b[4]) = v128 & 1;
        sub_1C5414260(&v221);
        sub_1C5414260(&v232);
        v154 = v129;
        v155 = v130;
        v156 = v131;
        v157 = v132;
        v158 = v133;
        v159 = v128;
        break;
      case 2:
        sub_1C55965F4();
        v134 = sub_1C54637B4();
        v135 = v2;

        v194 = v134;
        v195 = v135;
        sub_1C54141E8();
        v190 = sub_1C5595A04();
        v191 = v3;
        v192 = v4;
        v193 = v5;
        v187[0] = v190;
        v187[1] = v3;
        v188 = v4 & 1;
        v189 = v5;
        v142 = MEMORY[0x1E6981148];
        v143 = MEMORY[0x1E6981138];
        sub_1C540EFD8(v187, MEMORY[0x1E6981148], &v196);
        sub_1C5414260(v187);
        v136 = v196;
        v137 = v197;
        v138 = *(&v197 + 1);
        sub_1C54130AC(v196, *(&v196 + 1), v197 & 1);
        sub_1C5594CF4();
        v182 = v136;
        v183 = v137 & 1;
        v184 = v138;
        sub_1C540EFD8(&v182, v142, &v185);
        sub_1C5414260(&v182);
        v139 = v185;
        v140 = v186;
        v141 = *(&v186 + 1);
        sub_1C54130AC(v185, *(&v185 + 1), v186 & 1);
        sub_1C5594CF4();
        v167 = v139;
        v168 = v140 & 1;
        v169 = v141;
        sub_1C540FD1C(&v167, v142, v142, v143, v143, v170);
        sub_1C5414260(&v167);
        v165[0] = v170[0];
        v165[1] = v170[1];
        v165[2] = v170[2];
        v165[3] = v170[3];
        v166 = v171 & 1;
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D040);
        v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D050);
        v146 = sub_1C5488188();
        v6 = sub_1C5488224();
        sub_1C540FD1C(v165, v144, v145, v146, v6, v172);
        sub_1C5488758(v165);
        v162[0] = v172[0];
        v162[1] = v172[1];
        v162[2] = v172[2];
        v162[3] = v172[3];
        v163 = v173;
        v164 = v174 & 1;
        v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D028);
        v7 = sub_1C54880E0();
        sub_1C540FD1C(v162, v147, MEMORY[0x1E6981E70], v7, MEMORY[0x1E6981E60], &v175);
        sub_1C54887E4(v162);
        v149 = v175;
        v150 = v176;
        v151 = v177;
        v152 = v178;
        v153 = v179 | (v180 << 16);
        v148 = v181;
        sub_1C54882C8(v175, v176, v177, v178, v153, v181 & 1);
        __b[0] = v149;
        __b[1] = v150;
        __b[2] = v151;
        __b[3] = v152;
        LOWORD(__b[4]) = v153;
        BYTE2(__b[4]) = BYTE2(v153);
        BYTE3(__b[4]) = v148 & 1;
        sub_1C5414260(&v185);
        sub_1C5414260(&v196);
        v154 = v149;
        v155 = v150;
        v156 = v151;
        v157 = v152;
        v158 = v153;
        v159 = v148;
        break;
      case 3:
        sub_1C55965F4();
        v94 = sub_1C54637B4();
        v95 = v14;

        v268 = v94;
        v269 = v95;
        sub_1C54141E8();
        v264 = sub_1C5595A04();
        v265 = v15;
        v266 = v16;
        v267 = v17;
        v261[0] = v264;
        v261[1] = v15;
        v262 = v16 & 1;
        v263 = v17;
        v102 = MEMORY[0x1E6981148];
        v103 = MEMORY[0x1E6981138];
        sub_1C540EFD8(v261, MEMORY[0x1E6981148], &v270);
        sub_1C5414260(v261);
        v96 = v270;
        v97 = v271;
        v98 = *(&v271 + 1);
        sub_1C54130AC(v270, *(&v270 + 1), v271 & 1);
        sub_1C5594CF4();
        v256 = v96;
        v257 = v97 & 1;
        v258 = v98;
        sub_1C540EFD8(&v256, v102, &v259);
        sub_1C5414260(&v256);
        v99 = v259;
        v100 = v260;
        v101 = *(&v260 + 1);
        sub_1C54130AC(v259, *(&v259 + 1), v260 & 1);
        sub_1C5594CF4();
        v240 = v99;
        v241 = v100 & 1;
        v242 = v101;
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D040);
        v106 = sub_1C5488188();
        sub_1C540FD1C(&v240, v102, v104, v103, v106, v243);
        sub_1C5414260(&v240);
        v237[0] = v243[0];
        v237[1] = v243[1];
        v237[2] = v243[2];
        v237[3] = v243[3];
        v238 = v244;
        v239 = v245 & 1;
        v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D050);
        v18 = sub_1C5488224();
        sub_1C54108A0(v237, v104, v105, v106, v18, v246);
        sub_1C548879C(v237);
        v234[0] = v246[0];
        v234[1] = v246[1];
        v234[2] = v246[2];
        v234[3] = v246[3];
        v235 = v247;
        v236 = v248 & 1;
        v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D028);
        v19 = sub_1C54880E0();
        sub_1C540FD1C(v234, v107, MEMORY[0x1E6981E70], v19, MEMORY[0x1E6981E60], &v249);
        sub_1C54887E4(v234);
        v109 = v249;
        v110 = v250;
        v111 = v251;
        v112 = v252;
        v113 = v253 | (v254 << 16);
        v108 = v255;
        sub_1C54882C8(v249, v250, v251, v252, v113, v255 & 1);
        __b[0] = v109;
        __b[1] = v110;
        __b[2] = v111;
        __b[3] = v112;
        LOWORD(__b[4]) = v113;
        BYTE2(__b[4]) = BYTE2(v113);
        BYTE3(__b[4]) = v108 & 1;
        sub_1C5414260(&v259);
        sub_1C5414260(&v270);
        v154 = v109;
        v155 = v110;
        v156 = v111;
        v157 = v112;
        v158 = v113;
        v159 = v108;
        break;
      default:
        sub_1C5596234();
        v34 = MEMORY[0x1E6981E70];
        v35 = MEMORY[0x1E6981E60];
        sub_1C540EFD8(v36, MEMORY[0x1E6981E70], v36);
        sub_1C540EFD8(v36, v34, v36);
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D028);
        v30 = sub_1C54880E0();
        sub_1C54108A0(v36, v33, v34, v30, v35, &v349);
        v38 = v349;
        v39 = v350;
        v40 = v351;
        v41 = v352;
        v42 = v353 | (v354 << 16);
        v37 = v355;
        sub_1C54882C8(v349, v350, v351, v352, v42, v355 & 1);
        __b[0] = v38;
        __b[1] = v39;
        __b[2] = v40;
        __b[3] = v41;
        LOWORD(__b[4]) = v42;
        BYTE2(__b[4]) = BYTE2(v42);
        BYTE3(__b[4]) = v37 & 1;
        v154 = v38;
        v155 = v39;
        v156 = v40;
        v157 = v41;
        v158 = v42;
        v159 = v37;
        break;
    }
  }

  else
  {
    if ((a1 & 0x10000000000) != 0)
    {
      v93 = BYTE4(a1) ^ 1;
    }

    else
    {
      v93 = 0;
    }

    if (v93)
    {
      sub_1C55965F4();
      v73 = sub_1C54637B4();
      v74 = v20;

      v292 = v73;
      v293 = v74;
      sub_1C54141E8();
      v288 = sub_1C5595A04();
      v289 = v21;
      v290 = v22;
      v291 = v23;
      v285[0] = v288;
      v285[1] = v21;
      v286 = v22 & 1;
      v287 = v23;
      v81 = MEMORY[0x1E6981148];
      v82 = MEMORY[0x1E6981138];
      sub_1C540EFD8(v285, MEMORY[0x1E6981148], &v294);
      sub_1C5414260(v285);
      v75 = v294;
      v76 = v295;
      v77 = *(&v295 + 1);
      sub_1C54130AC(v294, *(&v294 + 1), v295 & 1);
      sub_1C5594CF4();
      v280 = v75;
      v281 = v76 & 1;
      v282 = v77;
      sub_1C540EFD8(&v280, v81, &v283);
      sub_1C5414260(&v280);
      v78 = v283;
      v79 = v284;
      v80 = *(&v284 + 1);
      sub_1C54130AC(v283, *(&v283 + 1), v284 & 1);
      sub_1C5594CF4();
      v272 = v78;
      v273 = v79 & 1;
      v274 = v80;
      sub_1C540FD1C(&v272, v81, v81, v82, v82, &v275);
      sub_1C5414260(&v272);
      v84 = v275;
      v85 = v276;
      v86 = v277;
      v87 = v278;
      v83 = v279;
      sub_1C54883A8(v275, v276, v277);
      v344[0] = v84;
      v344[1] = v85;
      v344[2] = v86;
      v344[3] = v87;
      LOBYTE(v344[4]) = v83 & 1;
      sub_1C5414260(&v283);
      sub_1C5414260(&v294);
      v88 = v84;
      v89 = v85;
      v90 = v86;
      v91 = v87;
      v92 = v83;
    }

    else
    {
      sub_1C55965F4();
      v58 = sub_1C54637B4();
      v59 = v24;

      v340 = v58;
      v341 = v59;
      sub_1C54141E8();
      v336 = sub_1C5595A04();
      v337 = v25;
      v338 = v26;
      v339 = v27;
      v333[0] = v336;
      v333[1] = v25;
      v334 = v26 & 1;
      v335 = v27;
      v66 = MEMORY[0x1E6981148];
      v67 = MEMORY[0x1E6981138];
      sub_1C540EFD8(v333, MEMORY[0x1E6981148], &v342);
      sub_1C5414260(v333);
      v60 = v342;
      v61 = v343;
      v62 = *(&v343 + 1);
      sub_1C54130AC(v342, *(&v342 + 1), v343 & 1);
      sub_1C5594CF4();
      v328 = v60;
      v329 = v61 & 1;
      v330 = v62;
      sub_1C540EFD8(&v328, v66, &v331);
      sub_1C5414260(&v328);
      v63 = v331;
      v64 = v332;
      v65 = *(&v332 + 1);
      sub_1C54130AC(v331, *(&v331 + 1), v332 & 1);
      sub_1C5594CF4();
      v320 = v63;
      v321 = v64 & 1;
      v322 = v65;
      sub_1C54108A0(&v320, v66, v66, v67, v67, &v323);
      sub_1C5414260(&v320);
      v69 = v323;
      v70 = v324;
      v71 = v325;
      v72 = v326;
      v68 = v327;
      sub_1C54883A8(v323, v324, v325);
      v344[0] = v69;
      v344[1] = v70;
      v344[2] = v71;
      v344[3] = v72;
      LOBYTE(v344[4]) = v68 & 1;
      sub_1C5414260(&v331);
      sub_1C5414260(&v342);
      v88 = v69;
      v89 = v70;
      v90 = v71;
      v91 = v72;
      v92 = v68;
    }

    v317[0] = v88;
    v317[1] = v89;
    v317[2] = v90;
    v317[3] = v91;
    v318 = v92 & 1;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D040);
    v50 = sub_1C5488188();
    sub_1C540EFD8(v317, v48, v319);
    sub_1C5488758(v317);
    v43 = v319[0];
    v44 = v319[1];
    v45 = v319[2];
    v46 = v319[3];
    v47 = v319[4];
    sub_1C54883A8(v319[0], v319[1], v319[2]);
    v302[0] = v43;
    v302[1] = v44;
    v302[2] = v45;
    v302[3] = v46;
    v303 = v47 & 1;
    sub_1C54108A0(v302, MEMORY[0x1E6981148], v48, MEMORY[0x1E6981138], v50, v304);
    sub_1C5488758(v302);
    v299[0] = v304[0];
    v299[1] = v304[1];
    v299[2] = v304[2];
    v299[3] = v304[3];
    v300 = v305;
    v301 = v306 & 1;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D050);
    v28 = sub_1C5488224();
    sub_1C54108A0(v299, v48, v49, v50, v28, v307);
    sub_1C548879C(v299);
    v296[0] = v307[0];
    v296[1] = v307[1];
    v296[2] = v307[2];
    v296[3] = v307[3];
    v297 = v308;
    v298 = v309 & 1;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D028);
    v29 = sub_1C54880E0();
    sub_1C540FD1C(v296, v51, MEMORY[0x1E6981E70], v29, MEMORY[0x1E6981E60], &v310);
    sub_1C54887E4(v296);
    v53 = v310;
    v54 = v311;
    v55 = v312;
    v56 = v313;
    v57 = v314 | (v315 << 16);
    v52 = v316;
    sub_1C54882C8(v310, v311, v312, v313, v57, v316 & 1);
    __b[0] = v53;
    __b[1] = v54;
    __b[2] = v55;
    __b[3] = v56;
    LOWORD(__b[4]) = v57;
    BYTE2(__b[4]) = BYTE2(v57);
    BYTE3(__b[4]) = v52 & 1;
    sub_1C5488758(v319);
    sub_1C5488758(v344);
    v154 = v53;
    v155 = v54;
    v156 = v55;
    v157 = v56;
    v158 = v57;
    v159 = v52;
  }

  v345[0] = v154;
  v345[1] = v155;
  v345[2] = v156;
  v345[3] = v157;
  v346 = v158;
  v347 = BYTE2(v158);
  v348 = v159 & 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D058);
  sub_1C5488494();
  sub_1C540EFD8(v345, v32, a2);
  sub_1C5488538(v345);
  return sub_1C5488538(__b);
}

uint64_t sub_1C548750C@<X0>(uint64_t a1@<X8>)
{
  LODWORD(v3) = *v1;
  BYTE4(v3) = *(v1 + 4);
  BYTE5(v3) = *(v1 + 5);
  return sub_1C5485E24(v3, a1);
}

unint64_t sub_1C5487548()
{
  v2 = qword_1EC15CF98;
  if (!qword_1EC15CF98)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15CF98);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C54875EC()
{
  v2 = qword_1EC15CFA8;
  if (!qword_1EC15CFA8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15CFA8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C5487650()
{
  v2 = qword_1EC15CFB8;
  if (!qword_1EC15CFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CFB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CFB8);
    return WitnessTable;
  }

  return v2;
}

id sub_1C5487710(uint64_t a1, void *a2)
{
  MEMORY[0x1E69E5928](a2);
  type metadata accessor for AgeRangeAccount();
  sub_1C548783C();
  v5 = [a2 ageRangeViewControllerForAccount_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a2);
  if (v5)
  {
    return v5;
  }

  sub_1C5596C94();
  __break(1u);
  return v3;
}

void sub_1C5487964()
{
  sub_1C5488854();
  sub_1C5595724();
  __break(1u);
}

uint64_t sub_1C5487A2C()
{
  sub_1C54888D0();
  v10 = sub_1C5404B48();
  v11 = [v10 aa_primaryAppleAccount];
  *&v0 = MEMORY[0x1E69E5920](v10).n128_u64[0];
  if (v11)
  {
    v9 = [v11 aa_altDSID];
    if (v9)
    {
      v5 = sub_1C5596574();
      v6 = v1;
      MEMORY[0x1E69E5920](v9);
      v7 = v5;
      v8 = v6;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    MEMORY[0x1E69E5920](v11);
    v3 = v7;
    v4 = v8;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return sub_1C55965F4();
  }
}

uint64_t sub_1C5487C98(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1C5405B1C;

  return sub_1C5485018(a1, v5);
}

uint64_t sub_1C5487D54(uint64_t a1)
{

  v3 = type metadata accessor for AgeAttestationRowElement();
  v4 = *(v3 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5594BE4();
    (*(*(v1 - 8) + 8))(a1 + v4);
  }

  else
  {
  }

  MEMORY[0x1E69E5920](*(a1 + *(v3 + 32)));
  return a1;
}

unint64_t sub_1C5487E84()
{
  v2 = qword_1EC15CFE8;
  if (!qword_1EC15CFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CFE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CFE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5487F0C()
{
  v2 = qword_1EC15CFF0;
  if (!qword_1EC15CFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CFC8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CFF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5487F94()
{
  v2 = qword_1EC15D010;
  if (!qword_1EC15D010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CFD0);
    sub_1C5487F0C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D010);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5488038()
{
  v2 = qword_1EC15D018;
  if (!qword_1EC15D018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CFD8);
    sub_1C5487F94();
    sub_1C543093C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D018);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54880E0()
{
  v2 = qword_1EC15D030;
  if (!qword_1EC15D030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D028);
    sub_1C5488188();
    sub_1C5488224();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D030);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5488188()
{
  v2 = qword_1EC15D038;
  if (!qword_1EC15D038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D040);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D038);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5488224()
{
  v2 = qword_1EC15D048;
  if (!qword_1EC15D048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D050);
    sub_1C5488188();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D048);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54882C8(uint64_t result, uint64_t a2, char a3, uint64_t a4, unsigned int a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_1C5488328(result, a2, a3, a4, a5, ((a5 & 0xFFFFFF) >> 16) & 1);
  }

  return result;
}

uint64_t sub_1C5488328(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned int a5, char a6)
{
  if (a6)
  {
    return sub_1C548841C(a1, a2, a3, a4, a5, BYTE1(a5) & 1);
  }

  else
  {
    return sub_1C54883A8(a1, a2, a3);
  }
}

uint64_t sub_1C548841C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_1C54883A8(a1, a2, a3);
  }

  sub_1C54130AC(a1, a2, a3 & 1);
  return sub_1C5594CF4();
}

unint64_t sub_1C5488494()
{
  v2 = qword_1EC15D060;
  if (!qword_1EC15D060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D058);
    sub_1C54880E0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D060);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C548858C(uint64_t result, uint64_t a2, char a3, uint64_t a4, unsigned int a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_1C54885EC(result, a2, a3, a4, a5, ((a5 & 0xFFFFFF) >> 16) & 1);
  }

  return result;
}

uint64_t sub_1C54885EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned int a5, char a6)
{
  if (a6)
  {
    return sub_1C54886E0(a1, a2, a3, a4, a5, BYTE1(a5) & 1);
  }

  else
  {
    return sub_1C548866C(a1, a2, a3);
  }
}

uint64_t sub_1C54886E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_1C548866C(a1, a2, a3);
  }

  sub_1C5412EA0(a1, a2, a3 & 1);
}

unint64_t sub_1C5488854()
{
  v2 = qword_1EC15D068;
  if (!qword_1EC15D068)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D068);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54888D0()
{
  v2 = qword_1EC15D070;
  if (!qword_1EC15D070)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D070);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C548894C()
{
  v2 = qword_1EC15D078;
  if (!qword_1EC15D078)
  {
    type metadata accessor for AgeAttestationRowElement();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D078);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54889E4()
{
  v2 = qword_1EC15D080;
  if (!qword_1EC15D080)
  {
    type metadata accessor for AgeAttestationRowElement();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D080);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5488A7C()
{
  v2 = qword_1EC15D088;
  if (!qword_1EC15D088)
  {
    type metadata accessor for AgeAttestationRowElement();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D088);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5488BB0()
{
  v2 = qword_1EC15D090;
  if (!qword_1EC15D090)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D090);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5488C7C()
{
  v5 = sub_1C5488DC4();
  if (v0 <= 0x3F)
  {
    v5 = sub_1C5488E60();
    if (v1 <= 0x3F)
    {
      v5 = sub_1C5433F94();
      if (v2 <= 0x3F)
      {
        v5 = sub_1C5488EFC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_1C5488DC4()
{
  v4 = qword_1EC15D098;
  if (!qword_1EC15D098)
  {
    sub_1C5594BE4();
    v3 = sub_1C5595014();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC15D098);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1C5488E60()
{
  v4 = qword_1EC15D0A0;
  if (!qword_1EC15D0A0)
  {
    type metadata accessor for AgeRangeRowViewModel();
    v3 = sub_1C5595FB4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC15D0A0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1C5488EFC()
{
  v2 = qword_1EC15D0A8;
  if (!qword_1EC15D0A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D0A8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t __swift_memcpy6_4(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 4) = *(a2 + 4);
  return result;
}

uint64_t sub_1C5488F88(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 6))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 4);
      v4 = -1;
      if ((v3 & 0xFFFFFFFE) != 0)
      {
        v4 = v3 & 1 | ((v3 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v5 = v4;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C54890DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 4) = 0;
    if (a3 > 0xFE)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 4) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for AgeRangeGlobalState()
{
  v4 = qword_1EC15D110;
  if (!qword_1EC15D110)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15D110);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1C5489378()
{
  v2 = qword_1EC15D118;
  if (!qword_1EC15D118)
  {
    sub_1C5595654();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D118);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54893F8()
{
  v2 = qword_1EC15D120;
  if (!qword_1EC15D120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D020);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CE20);
    sub_1C547EEF0();
    swift_getOpaqueTypeConformance2();
    sub_1C54894F0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D120);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54894F0()
{
  v2 = qword_1EC15D128;
  if (!qword_1EC15D128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D130);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D128);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5489578()
{
  v2 = qword_1EC15D138;
  if (!qword_1EC15D138)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D138);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C54895DC(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for AgeAttestationRowElement() - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1C5405B1C;

  return sub_1C5483744(a1, v7, v8, v1 + v9);
}

unint64_t sub_1C54896F8()
{
  v2 = qword_1EC15D148;
  if (!qword_1EC15D148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D140);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D148);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5489780(uint64_t a1)
{
  sub_1C5412EA0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  return a1;
}

uint64_t sub_1C54897C8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1C54130AC(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v7 = *(a1 + 48);
  sub_1C5594CF4();
  result = a2;
  *(a2 + 48) = v7;
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 68) = *(a1 + 68);
  *(a2 + 76) = *(a1 + 76);
  return result;
}

unint64_t sub_1C5489884()
{
  v2 = qword_1EC15D158;
  if (!qword_1EC15D158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D150);
    sub_1C548992C();
    sub_1C54894F0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D158);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C548992C()
{
  v2 = qword_1EC15D160;
  if (!qword_1EC15D160)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D160);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54899A8()
{
  v2 = qword_1EC15D170;
  if (!qword_1EC15D170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D168);
    sub_1C5489884();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D170);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5489A40()
{
  v2 = qword_1EC15D180;
  if (!qword_1EC15D180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D178);
    sub_1C5488BB0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D180);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5489AE4()
{
  v2 = qword_1EC15D188;
  if (!qword_1EC15D188)
  {
    sub_1C5594BB4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D188);
    return WitnessTable;
  }

  return v2;
}

double sub_1C5489B64@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  v7 = v4;
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x60))(v2);
  sub_1C5458604(v6, a2);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

double sub_1C5489C0C(uint64_t a1, void *a2)
{
  sub_1C5432498(a1, v5);
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x68))(v5);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

uint64_t sub_1C5489CB4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___AAUISignInDataclassActionInvokingOBWelcomeController_flowDirector;
  swift_beginAccess();
  sub_1C5432498(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1C5489D18(uint64_t a1)
{
  v6 = 0;
  v7 = a1;
  sub_1C5432498(a1, v5);
  __dst = (v1 + OBJC_IVAR___AAUISignInDataclassActionInvokingOBWelcomeController_flowDirector);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(__dst);
  sub_1C5458604(v5, __dst);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t SignInDataclassActionInvokingOBWelcomeController.stage.getter()
{
  v2 = *(v0 + OBJC_IVAR___AAUISignInDataclassActionInvokingOBWelcomeController_stage);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

char *SignInDataclassActionInvokingOBWelcomeController.init(model:flowDirector:)(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v12 = a1;
  v11 = a2;
  sub_1C5432498(a2, v10);
  sub_1C5458604(v10, OBJC_IVAR___AAUISignInDataclassActionInvokingOBWelcomeController_flowDirector);
  v4 = v13;
  v9 = 0;
  AAUISignInDataclassActionFlowStage.rawValue.getter();
  sub_1C5594CF4();
  v3 = sub_1C5596554();
  MEMORY[0x1E69E5928](v3);

  MEMORY[0x1E69E5920](v3);
  *&v4[OBJC_IVAR___AAUISignInDataclassActionInvokingOBWelcomeController_stage] = v3;
  v8.receiver = v13;
  v8.super_class = type metadata accessor for SignInDataclassActionInvokingOBWelcomeController();
  v7 = objc_msgSendSuper2(&v8, sel_initWithViewModel_, a1);
  MEMORY[0x1E69E5928](v7);
  v13 = v7;
  SignInDataclassActionInvokingOBWelcomeController.setupInvokingActions()();
  SignInDataclassActionInvokingOBWelcomeController.setupNavigationBarButton()();
  __swift_destroy_boxed_opaque_existential_0(a2);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v13);
  return v7;
}

Swift::Void __swiftcall SignInDataclassActionInvokingOBWelcomeController.setupInvokingActions()()
{
  v61 = sub_1C548C82C;
  v62 = sub_1C548C838;
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

Swift::Void __swiftcall SignInDataclassActionInvokingOBWelcomeController.setupNavigationBarButton()()
{
  v7[4] = 0;
  if ([objc_opt_self() isSolariumEnabled])
  {
    v2 = [v5 0x1FBB6308ALL];
    [v2 setHidesBackButton_];
    MEMORY[0x1E69E5920](v2);
    v4 = [v5 0x1FBB6308ALL];
    (MEMORY[0x1E69E5920])();
    sub_1C548C840();
    (MEMORY[0x1E69E5928])();
    v6[3] = type metadata accessor for SignInDataclassActionInvokingOBWelcomeController();
    v6[0] = v5;
    v3 = sub_1C548BF04(24, v6, sel_cancelFlow);
    [v4 setRightBarButtonItem_];
    MEMORY[0x1E69E5920](v3);
    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v1 = [v5 navigationItem];
    (MEMORY[0x1E69E5920])();
    sub_1C548C840();
    (MEMORY[0x1E69E5928])();
    v7[3] = type metadata accessor for SignInDataclassActionInvokingOBWelcomeController();
    v7[0] = v5;
    v0 = sub_1C548BF04(1, v7, sel_cancelFlow);
    [v1 setLeftBarButtonItem_];
    MEMORY[0x1E69E5920](v0);
    MEMORY[0x1E69E5920](v1);
  }
}

id SignInDataclassActionInvokingOBWelcomeController.__allocating_init(viewModel:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) initWithViewModel_];
  swift_unknownObjectRelease();
  return v3;
}

id SignInDataclassActionInvokingOBWelcomeController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

id SignInDataclassActionInvokingOBWelcomeController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

id SignInDataclassActionInvokingOBWelcomeController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignInDataclassActionInvokingOBWelcomeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1C548B5C8(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((**v1 & *MEMORY[0x1E69E7D40]) + 0x70))();
  return sub_1C545A074;
}

Swift::Void __swiftcall SignInDataclassActionInvokingOBWelcomeController.viewWillAppear(_:)(Swift::Bool a1)
{
  v8 = a1;
  v7 = v1;
  (MEMORY[0x1E69E5928])();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SignInDataclassActionInvokingOBWelcomeController();
  objc_msgSendSuper2(&v6, sel_viewWillAppear_, a1);
  (MEMORY[0x1E69E5920])();
  (MEMORY[0x1E69E5928])();
  v5 = [v4 primaryButton];
  if (v5)
  {
    v2 = v5;
    MEMORY[0x1E69E5928](v5);
    sub_1C5401EF8(&v5);
    [v2 hidesBusyIndicator];
    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    sub_1C5401EF8(&v5);
    (MEMORY[0x1E69E5920])();
  }
}

uint64_t sub_1C548B834(uint64_t a1, id a2, void *a3)
{
  v13[8] = a1;
  v13[7] = a2;
  v13[6] = a3;
  [a2 showsBusyIndicator];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C998);
  sub_1C5596E04();
  v6 = v3;
  *v3 = sub_1C55965F4();
  v6[1] = v4;
  sub_1C545CF40();
  v6[2] = sub_1C545B838(1);
  sub_1C540FCD8();
  v13[5] = sub_1C5596454();
  (*((*a3 & *MEMORY[0x1E69E7D40]) + 0x60))();
  v10 = v13[4];
  __swift_project_boxed_opaque_existential_0(v13, v13[3]);
  sub_1C5594CF4();
  v8 = sub_1C5596CB4();
  v9 = *(a3 + OBJC_IVAR___AAUISignInDataclassActionInvokingOBWelcomeController_stage);
  MEMORY[0x1E69E5928](v9);
  v11[0] = v8;
  v11[1] = v9;
  v12 = 0;
  (*(v10 + 32))();
  sub_1C545CDC0(v11);

  __swift_destroy_boxed_opaque_existential_0(v13);
}

double sub_1C548BA50(uint64_t a1, void *a2)
{
  v17 = a1;
  v24 = a2;
  v21 = sub_1C548C9DC;
  v13 = "Fatal error";
  v14 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v15 = "AppleAccountUI/SignInDataclassActionInvokingOBWelcomeController.swift";
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830);
  v16 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v20 = &v7 - v16;
  v18 = (*(*(type metadata accessor for SignInDataclassActionConfirmationAlert() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v17);
  v22 = (&v7 - v18);
  v28 = v3;
  v27 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D1A8);
  MEMORY[0x1E69E5928](v24);
  v19 = swift_allocObject();
  *(v19 + 16) = v24;
  sub_1C5554BF4();
  _swift_stdlib_has_malloc_size();
  sub_1C55578BC(v21, v19, v20, v22);
  v23 = sub_1C5595484();
  v26 = v23;
  [v24 addChildViewController_];
  MEMORY[0x1E69E5928](v24);
  v25 = [v24 view];
  MEMORY[0x1E69E5920](v24);
  if (v25)
  {
    v12 = v25;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v10 = v12;
  MEMORY[0x1E69E5928](v23);
  v11 = [v23 view];
  *&v5 = MEMORY[0x1E69E5920](v23).n128_u64[0];
  if (v11)
  {
    v9 = v11;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v8 = v9;
  [v10 addSubview_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5928](v24);
  [v23 didMoveToParentViewController_];
  MEMORY[0x1E69E5920](v24);
  *&result = MEMORY[0x1E69E5920](v23).n128_u64[0];
  return result;
}

uint64_t sub_1C548BE08(void *a1)
{
  v7[5] = a1;
  (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x60))();
  v4 = v7[4];
  __swift_project_boxed_opaque_existential_0(v7, v7[3]);
  v3 = *(a1 + OBJC_IVAR___AAUISignInDataclassActionInvokingOBWelcomeController_stage);
  MEMORY[0x1E69E5928](v3);
  v5[0] = 0;
  v5[1] = v3;
  v6 = 1;
  (*(v4 + 32))();
  sub_1C545CDC0(v5);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_1C548BF54()
{
  v41 = sub_1C545AE98;
  v45 = sub_1C545C6DC;
  v47 = sub_1C545C6D4;
  v49 = sub_1C545C6D4;
  v52 = sub_1C545C6E8;
  v68 = 0;
  v33 = 0;
  v38 = sub_1C5594C74();
  v36 = *(v38 - 8);
  v37 = v38 - 8;
  v34 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v0 = v20 - v34;
  v35 = v20 - v34;
  v68 = v1;
  v2 = sub_1C54B0910();
  (*(v36 + 16))(v0, v2, v38);
  MEMORY[0x1E69E5928](v39);
  v43 = 7;
  v44 = swift_allocObject();
  *(v44 + 16) = v39;
  v56 = sub_1C5594C54();
  v57 = sub_1C5596974();
  v40 = 17;
  v48 = swift_allocObject();
  *(v48 + 16) = 64;
  v50 = swift_allocObject();
  *(v50 + 16) = 8;
  v42 = 32;
  v3 = swift_allocObject();
  v4 = v44;
  v46 = v3;
  *(v3 + 16) = v41;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v46;
  v53 = v5;
  *(v5 + 16) = v45;
  *(v5 + 24) = v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v51 = sub_1C5596E04();
  v54 = v7;

  v8 = v48;
  v9 = v54;
  *v54 = v47;
  v9[1] = v8;

  v10 = v50;
  v11 = v54;
  v54[2] = v49;
  v11[3] = v10;

  v12 = v53;
  v13 = v54;
  v54[4] = v52;
  v13[5] = v12;
  sub_1C540FCD8();

  if (os_log_type_enabled(v56, v57))
  {
    v14 = v33;
    v26 = sub_1C5596A74();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v27 = sub_1C5419DC0(1);
    v28 = sub_1C5419DC0(0);
    v29 = &v62;
    v62 = v26;
    v30 = &v61;
    v61 = v27;
    v31 = &v60;
    v60 = v28;
    sub_1C5419E14(2, &v62);
    sub_1C5419E14(1, v29);
    v58 = v47;
    v59 = v48;
    sub_1C5419E28(&v58, v29, v30, v31);
    v32 = v14;
    if (v14)
    {

      __break(1u);
    }

    else
    {
      v58 = v49;
      v59 = v50;
      sub_1C5419E28(&v58, &v62, &v61, &v60);
      v24 = 0;
      v58 = v52;
      v59 = v53;
      sub_1C5419E28(&v58, &v62, &v61, &v60);
      _os_log_impl(&dword_1C5355000, v56, v57, "%@: Deferring action.", v26, 0xCu);
      sub_1C5419E74(v27);
      sub_1C5419E74(v28);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v15 = v39;
  v16 = MEMORY[0x1E69E5920](v56);
  v17 = (*(v36 + 8))(v35, v38, v16);
  v18 = *((*v15 & *MEMORY[0x1E69E7D40]) + 0x60);
  v23 = &v65;
  v18(v17);
  v20[1] = v66;
  v21 = v67;
  __swift_project_boxed_opaque_existential_0(v23, v66);
  v20[0] = *(v39 + OBJC_IVAR___AAUISignInDataclassActionInvokingOBWelcomeController_stage);
  MEMORY[0x1E69E5928](v20[0]);
  v22 = v63;
  v63[0] = 0;
  v63[1] = v20[0];
  v64 = 2;
  (*(v21 + 32))();
  sub_1C545CDC0(v22);
  return __swift_destroy_boxed_opaque_existential_0(v23);
}

id sub_1C548C6C0(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a3;
  v16 = a2;
  v17 = a1;
  if (a2[3])
  {
    v9 = v16[3];
    __swift_project_boxed_opaque_existential_0(v16, v9);
    v7 = *(v9 - 8);
    v8 = v7;
    v11 = v5;
    MEMORY[0x1EEE9AC00](v5);
    v10 = v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))();
    v12 = sub_1C5596E14();
    (*(v8 + 8))(v10, v9);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v5[1] = v13;
  v6 = [v14 initWithBarButtonSystemItem:v17 target:? action:?];
  swift_unknownObjectRelease();
  return v6;
}

unint64_t sub_1C548C840()
{
  v2 = qword_1EC15D1A0;
  if (!qword_1EC15D1A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D1A0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C548C9E4()
{
  v2 = *(v0 + 16);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1C548CA1C()
{
  v2 = *(v0 + 24);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1C548CA5C()
{
  v2 = *(v0 + 32);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1C548CA9C()
{
  v2 = *(v0 + 40);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1C548CADC()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1C548CB38(char a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
  return swift_endAccess();
}

uint64_t sub_1C548CC04()
{
  swift_getKeyPath();
  (*(*v0 + 648))();

  return sub_1C548CADC() & 1;
}

uint64_t sub_1C548CC8C(int a1)
{
  v14 = a1;
  v11 = a1;
  v17 = 0;
  v12 = 0;
  v18 = a1;
  v16 = sub_1C548CADC() & 1;
  v15 = v14;
  if (sub_1C542908C())
  {
    v1 = v13;
    v2 = v12;
    KeyPath = swift_getKeyPath();
    v7 = KeyPath;

    v9 = &v5;
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 656))(v3, sub_1C5498AB0);
    v10 = v2;

    return v10;
  }

  else
  {
    sub_1C548CB38(v11 & 1);
    return v12;
  }
}

void (*sub_1C548CE98(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 648))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C548CBA0();
  return sub_1C548D078;
}

void sub_1C548D078(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548D134(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548D134(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C548D134(uint64_t a1)
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
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C548D270()
{
  swift_beginAccess();
  v2 = *(v0 + 56);
  swift_endAccess();
  return v2;
}

uint64_t sub_1C548D2C8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
  return swift_endAccess();
}

uint64_t sub_1C548D3A4()
{
  swift_getKeyPath();
  (*(*v0 + 648))();

  return sub_1C548D270();
}

uint64_t sub_1C548D428@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 248))(v2);
}

uint64_t sub_1C548D4A8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 256))(v3);
}

uint64_t sub_1C548D52C(uint64_t a1)
{
  v13 = a1;
  v14 = 0;
  v18 = 0;
  v11 = 0;
  v19 = a1;
  v17 = sub_1C548D270();
  v16 = v13;
  v15 = type metadata accessor for CNMeCardSharingAudience();
  sub_1C5498C6C();
  if (sub_1C542908C())
  {
    v1 = v12;
    v2 = v11;
    KeyPath = swift_getKeyPath();
    v7 = KeyPath;

    v9 = &v5;
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 656))(v3, sub_1C5498CEC);
    v10 = v2;

    return v10;
  }

  else
  {
    sub_1C548D2C8(v13);
    return v11;
  }
}

void (*sub_1C548D724(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 648))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C548D328();
  return sub_1C548D904;
}

void sub_1C548D904(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548D9C0(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548D9C0(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C548D9C0(uint64_t a1)
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
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C548DAFC()
{
  swift_beginAccess();
  v2 = *(v0 + 64);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

uint64_t sub_1C548DB60(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1C548DC50()
{
  swift_getKeyPath();
  (*(*v0 + 648))();

  return sub_1C548DAFC();
}

uint64_t sub_1C548DCD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 296))(v2);
}

uint64_t sub_1C548DD5C(uint64_t *a1, uint64_t *a2)
{
  sub_1C5402C1C(a1, &v6);
  v4 = v6;
  v5 = *a2;

  (*(*v5 + 304))(v4);
}

void sub_1C548DDF0(void *a1)
{
  v12 = a1;
  v17[1] = 0;
  v10 = 0;
  v17[2] = a1;
  v17[0] = sub_1C548DAFC();
  v16 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D1C0);
  sub_1C5498D18();
  v14 = v17;
  v15 = sub_1C542908C();
  sub_1C5401EF8(v17);
  if (v15)
  {
    v1 = v11;
    v2 = v10;
    KeyPath = swift_getKeyPath();
    v6[1] = KeyPath;

    v3 = v12;
    v8 = v6;
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 656))(v4, sub_1C5498E94);
    v9 = v2;

    v6[0] = v9;
  }

  else
  {
    v5 = v12;
    sub_1C548DB60(v12);
    v6[0] = v10;
  }
}

void (*sub_1C548E044(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 648))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C548DBEC();
  return sub_1C548E224;
}

void sub_1C548E224(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548E2E0(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548E2E0(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C548E2E0(uint64_t a1)
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
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C548E41C()
{
  swift_beginAccess();
  v2 = *(v0 + 72);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1C548E478(char a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1 & 1;
  return swift_endAccess();
}

uint64_t sub_1C548E580()
{
  swift_getKeyPath();
  (*(*v0 + 648))();

  return sub_1C548E41C() & 1;
}

uint64_t sub_1C548E608@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 344))(v2) & 1;
}

uint64_t sub_1C548E694(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 352))(v4 & 1);
}

uint64_t sub_1C548E71C(int a1)
{
  v17 = 0;
  v11 = 0;
  v12 = a1;
  v14 = a1 & 1;
  v18 = a1 & 1;
  v16 = sub_1C548E41C() & 1;
  v15 = v14;
  sub_1C5498EC0();
  if (sub_1C542908C())
  {
    v1 = v13;
    v2 = v11;
    KeyPath = swift_getKeyPath();
    v7 = KeyPath;

    v9 = &v5;
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 656))(v3, sub_1C5498F38);
    v10 = v2;

    return v10;
  }

  else
  {
    sub_1C548E478(v12 & 1);
    return v11;
  }
}

void (*sub_1C548E928(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 648))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C548E4F0();
  return sub_1C548EB08;
}

void sub_1C548EB08(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548EBC4(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548EBC4(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C548EBC4(uint64_t a1)
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
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}