uint64_t sub_2380F29FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _DDNodeDecoration.Kind(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_2381536AC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2380F2B34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for _DDNodeDecoration.Kind(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_2381536AC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2380F2C58()
{
  result = type metadata accessor for _DDNodeDecoration.Kind(319);
  if (v1 <= 0x3F)
  {
    result = sub_2381536AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2380F2CF4()
{
  sub_2380F2F6C(319, &qword_27DEEC670, sub_238067930);
  if (v0 <= 0x3F)
  {
    sub_2380F2DD0(319);
    if (v1 <= 0x3F)
    {
      sub_2380F2F6C(319, &qword_27DEEC690, type metadata accessor for _DDNodeAskRequestDecorationViewModel);
      if (v2 <= 0x3F)
      {
        sub_2380F2FB8(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_2380F2DD0(uint64_t a1)
{
  if (!qword_27DEEC678)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC680, &qword_23815C5D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC688, &unk_23815C5D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DEED750, &qword_238159750);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27DEEC678);
    }
  }
}

void sub_2380F2F6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2380F2FB8(uint64_t a1)
{
  if (!qword_27DEEC698)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC6A0, &qword_23815C5E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DEED750, &qword_238159750);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27DEEC698);
    }
  }
}

uint64_t sub_2380F3120(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2380F3164(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC6A8, &unk_23815C610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2380F31CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2380F3210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_2380F3278()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = sub_238154C8C();

  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v0 error:v6];

  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_23815266C();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_2380F3350()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEC6B0);
  __swift_project_value_buffer(v0, qword_27DEEC6B0);
  v1 = *MEMORY[0x277D04790];
  sub_238154DEC();
  return sub_23815292C();
}

uint64_t DDDeviceAdvertiserView.init(bundleID:serviceIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2381546FC();
  *a5 = v22;
  *(a5 + 8) = v23;
  sub_2381528EC();
  swift_allocObject();
  *(a5 + 48) = sub_2381528DC();
  sub_2381546FC();
  *(a5 + 56) = v22;
  *(a5 + 64) = v23;
  if (qword_27DEEA030 != -1)
  {
    swift_once();
  }

  v10 = qword_27DEF3190;
  type metadata accessor for DDDeviceAccessController();
  sub_2380F90E8(&qword_27DEED6B0, type metadata accessor for DDDeviceAccessController);
  v11 = v10;
  v12 = sub_2381539BC();
  v14 = v13;
  *(a5 + 72) = v12;
  *(a5 + 80) = v13;
  sub_2380BDAE8();
  *(a5 + 16) = v15;
  *(a5 + 24) = v16;
  *(a5 + 32) = a1;
  *(a5 + 40) = a2;
  v17 = (v14 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID);
  v18 = *(v14 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID + 8);
  *v17 = a1;
  v17[1] = a2;

  *(v14 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_role) = 1;
  v19 = (v14 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_serviceName);
  v20 = *(v14 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_serviceName + 8);
  *v19 = a3;
  v19[1] = a4;
}

uint64_t sub_2380F3588@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC748, &qword_23815C730);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v67 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC750, &qword_23815C738);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v67 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC758, &qword_23815C740);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v67 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC760, &qword_23815C748);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v68 = &v67 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC768, &qword_23815C750);
  v22 = *(v21 - 8);
  v70 = v21 - 8;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v69 = &v67 - v24;
  v25 = v1[3];
  v81 = v1[2];
  v82 = v25;
  v83 = v1[4];
  v84 = *(v1 + 10);
  v26 = v1[1];
  v79 = *v1;
  v80 = v26;
  *v6 = sub_238153DEC();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC770, &qword_23815C758);
  sub_2380F3B6C(&v79, &v6[*(v27 + 44)]);
  v28 = sub_23815410C();
  v29 = sub_238153A4C();
  v30 = &v6[*(v3 + 44)];
  *v30 = v29;
  v30[8] = v28;
  sub_2381548BC();
  sub_238153A8C();
  sub_23807121C(v6, v11, &qword_27DEEC748, &qword_23815C730);
  v31 = &v11[*(v8 + 44)];
  v32 = v75;
  v33 = v77;
  v34 = v78;
  *(v31 + 4) = v76;
  *(v31 + 5) = v33;
  *(v31 + 6) = v34;
  v35 = v73;
  *v31 = *&v72[88];
  *(v31 + 1) = v35;
  *(v31 + 2) = v74;
  *(v31 + 3) = v32;
  v36 = swift_allocObject();
  v37 = v82;
  *(v36 + 48) = v81;
  *(v36 + 64) = v37;
  *(v36 + 80) = v83;
  *(v36 + 96) = v84;
  v38 = v80;
  *(v36 + 16) = v79;
  *(v36 + 32) = v38;
  sub_23807121C(v11, v16, &qword_27DEEC750, &qword_23815C738);
  v39 = &v16[*(v13 + 44)];
  *v39 = sub_2380F9324;
  v39[1] = v36;
  v39[2] = 0;
  v39[3] = 0;
  v40 = swift_allocObject();
  v41 = v82;
  *(v40 + 48) = v81;
  *(v40 + 64) = v41;
  *(v40 + 80) = v83;
  *(v40 + 96) = v84;
  v42 = v80;
  *(v40 + 16) = v79;
  *(v40 + 32) = v42;
  v43 = v68;
  sub_23807121C(v16, v68, &qword_27DEEC758, &qword_23815C740);
  v44 = (v43 + *(v18 + 44));
  *v44 = 0;
  v44[1] = 0;
  v44[2] = sub_2380F9348;
  v44[3] = v40;
  v45 = swift_allocObject();
  v46 = v82;
  *(v45 + 48) = v81;
  *(v45 + 64) = v46;
  *(v45 + 80) = v83;
  *(v45 + 96) = v84;
  v47 = v80;
  *(v45 + 16) = v79;
  *(v45 + 32) = v47;
  v48 = objc_opt_self();
  sub_2380F8DF4(&v79, v72);
  sub_2380F8DF4(&v79, v72);
  sub_2380F8DF4(&v79, v72);
  v49 = [v48 defaultCenter];
  v50 = *MEMORY[0x277D76E80];
  v51 = v69;
  v52 = v70;
  v53 = &v69[*(v70 + 60)];
  sub_2381551DC();

  v54 = swift_allocObject();
  *(v54 + 16) = sub_2380F9D1C;
  *(v54 + 24) = v45;
  sub_23807121C(v43, v51, &qword_27DEEC760, &qword_23815C748);
  v55 = (v51 + *(v52 + 64));
  *v55 = sub_2380F93A4;
  v55[1] = v54;
  v56 = swift_allocObject();
  v57 = v82;
  *(v56 + 48) = v81;
  *(v56 + 64) = v57;
  *(v56 + 80) = v83;
  *(v56 + 96) = v84;
  v58 = v80;
  *(v56 + 16) = v79;
  *(v56 + 32) = v58;
  sub_2380F8DF4(&v79, v72);
  v59 = [v48 defaultCenter];
  v60 = *MEMORY[0x277D76E58];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC6E0, &qword_23815C630);
  v62 = v71;
  v63 = v71 + *(v61 + 52);
  sub_2381551DC();

  v64 = swift_allocObject();
  *(v64 + 16) = sub_2380F9D20;
  *(v64 + 24) = v56;
  result = sub_23807121C(v51, v62, &qword_27DEEC768, &qword_23815C750);
  v66 = (v62 + *(v61 + 56));
  *v66 = sub_2380F93A4;
  v66[1] = v64;
  return result;
}

uint64_t sub_2380F3B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC778, &qword_23815C760);
  v3 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v133 = v120 - v4;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC780, &qword_23815C768);
  v5 = *(*(v132 - 8) + 64);
  MEMORY[0x28223BE20](v132);
  v126 = v120 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC788, &qword_23815C770);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v135 = v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v134 = v120 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC790, &qword_23815C778);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v120 - v15;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC798, &qword_23815C780);
  v17 = *(*(v127 - 1) + 64);
  v18 = MEMORY[0x28223BE20](v127);
  v20 = v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v120 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC7A0, &qword_23815C788);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v131 = v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = v120 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC7A8, &qword_23815C790);
  v30 = v29 - 8;
  v31 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v130 = v120 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = v120 - v34;
  *v35 = sub_238153DEC();
  *(v35 + 1) = 0;
  v35[16] = 1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC7B0, &qword_23815C798);
  sub_2380F5AF0(a1, &v35[*(v36 + 44)]);
  v37 = sub_2381540FC();
  v38 = *(v30 + 44);
  v138 = v35;
  v39 = &v35[v38];
  *v39 = v37;
  __asm { FMOV            V0.2D, #16.0 }

  *(v39 + 8) = _Q0;
  *(v39 + 24) = _Q0;
  v39[40] = 0;
  v45 = *(a1 + 80);
  v46 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_completedPairedDevices;
  v47 = swift_beginAccess();
  v48 = *(*(v45 + v46) + 16);
  v137 = v28;
  v128 = a1;
  if (v48)
  {
    v120[1] = v120;
    MEMORY[0x28223BE20](v47);
    v118 = a1;
    v49 = sub_238153D1C();
    sub_2380F87D0(101, &v159);
    v122 = v16;
    v123 = v13;
    v50 = v159;
    v121 = v20;
    v51 = *(&v159 + 1);
    v120[0] = v22;
    v52 = v160[0];
    v53 = *&v160[8];
    v54 = *&v160[16];
    v124 = v12;
    v55 = v160[24];
    LOBYTE(v151) = 1;
    LOBYTE(v141) = v160[0];
    v140[0] = v160[24];
    v56 = sub_23815415C();
    v125 = v45;
    v57 = v56;
    sub_23815377C();
    v159 = v49;
    v160[0] = 1;
    *&v160[8] = v50;
    *&v160[16] = v51;
    v160[24] = v52;
    *&v161 = v53;
    *(&v161 + 1) = v54;
    LOBYTE(v162) = v55;
    BYTE8(v162) = v57;
    *&v163 = v58;
    *(&v163 + 1) = v59;
    *&v164 = v60;
    *(&v164 + 1) = v61;
    LOBYTE(v165[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC7E8, &qword_23815C800);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC868, &qword_23815C840);
    sub_2380F94D8();
    sub_2380F984C();
    v62 = v120[0];
    sub_23815482C();
    v63 = sub_2381540EC();
    v64 = v62 + *(v127 + 9);
    v65 = v62;
    *v64 = v63;
    *(v64 + 8) = 0u;
    *(v64 + 24) = 0u;
    *(v64 + 40) = 1;
    LOBYTE(v51) = sub_23815412C();
    sub_23815377C();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v74 = sub_2381540FC();
    LOBYTE(v159) = 0;
    LOBYTE(v166) = 1;
    v118 = sub_2381548EC();
    v119 = v75;
    v117 = 1;
    v116 = 0;
    sub_238153A8C();
    *&v139[55] = v174;
    *&v139[71] = v175;
    *&v139[87] = v176;
    *&v139[103] = v177;
    *&v139[7] = v171;
    *&v139[23] = v172;
    *&v139[39] = v173;
    v76 = v121;
    sub_2380712E4(v62, v121, &qword_27DEEC798, &qword_23815C780);
    v77 = v122;
    sub_2380712E4(v76, v122, &qword_27DEEC798, &qword_23815C780);
    v78 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8A8, &qword_23815C860) + 48);
    *v78 = v51;
    *(v78 + 8) = v67;
    *(v78 + 16) = v69;
    *(v78 + 24) = v71;
    *(v78 + 32) = v73;
    *(v78 + 40) = 0;
    *(v78 + 48) = v74;
    *(v78 + 56) = 0u;
    *(v78 + 72) = 0u;
    *(v78 + 88) = 1;
    v79 = *&v139[80];
    *(v78 + 153) = *&v139[64];
    *(v78 + 169) = v79;
    *(v78 + 185) = *&v139[96];
    *(v78 + 200) = *&v139[111];
    v80 = *&v139[16];
    *(v78 + 89) = *v139;
    *(v78 + 105) = v80;
    v81 = *&v139[48];
    *(v78 + 121) = *&v139[32];
    *(v78 + 137) = v81;
    sub_238071284(v65, &qword_27DEEC798, &qword_23815C780);
    v82 = v137;
    sub_238071284(v76, &qword_27DEEC798, &qword_23815C780);
    sub_23807121C(v77, v82, &qword_27DEEC790, &qword_23815C778);
    (*(v123 + 56))(v82, 0, 1, v124);
  }

  else
  {
    (*(v13 + 56))(v28, 1, 1, v12);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v170 = v162;
  v168 = *&v160[16];
  v169 = v161;
  v166 = v159;
  v167 = *v160;
  if (v162 == 1)
  {
    v127 = v120;
    v151 = v166;
    v152 = v167;
    v153 = v168;
    v154 = v169;
    MEMORY[0x28223BE20](v83);
    v125 = &v116;
    v118 = &v151;
    v119 = v128;
    v84 = sub_238153D1C();
    sub_2380F87D0(102, &v159);
    v85 = v159;
    v86 = v160[0];
    v87 = *&v160[8];
    v88 = *&v160[16];
    v89 = v160[24];
    LOBYTE(v141) = 1;
    v140[0] = v160[0];
    v150 = v160[24];
    v90 = sub_23815415C();
    sub_23815377C();
    v159 = v84;
    v160[0] = 1;
    *&v160[8] = v85;
    v160[24] = v86;
    *&v161 = v87;
    *(&v161 + 1) = v88;
    LOBYTE(v162) = v89;
    BYTE8(v162) = v90;
    *&v163 = v91;
    *(&v163 + 1) = v92;
    *&v164 = v93;
    *(&v164 + 1) = v94;
    LOBYTE(v165[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC7E8, &qword_23815C800);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC808, &qword_23815C810);
    sub_2380F94D8();
    sub_2380F9590();
    v95 = v126;
    sub_23815482C();
    v96 = sub_2381540EC();
    v97 = v133;
    v98 = v95 + *(v132 + 36);
    *v98 = v96;
    *(v98 + 8) = 0u;
    *(v98 + 24) = 0u;
    *(v98 + 40) = 1;
    sub_2380712E4(v95, v97, &qword_27DEEC780, &qword_23815C768);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC7C0, &qword_23815C7F0);
    sub_2380F93B4();
    sub_2380711D4(&qword_27DEEC858, &qword_27DEEC7C0, &qword_23815C7F0);
    v99 = v134;
    sub_238153ECC();
    sub_23808E828(&v166);
    sub_238071284(v95, &qword_27DEEC780, &qword_23815C768);
  }

  else
  {
    sub_23808E828(&v166);
    v100 = sub_238153DEC();
    v150 = 1;
    sub_2380F48B8(v128, &v141);
    v157 = v147;
    v158[0] = v148[0];
    *(v158 + 9) = *(v148 + 9);
    v153 = v143;
    v154 = v144;
    v155 = v145;
    v156 = v146;
    v151 = v141;
    v152 = v142;
    v164 = v147;
    v165[0] = v148[0];
    *(v165 + 9) = *(v148 + 9);
    *&v160[16] = v143;
    v161 = v144;
    v162 = v145;
    v163 = v146;
    v159 = v141;
    *v160 = v142;
    sub_2380712E4(&v151, v140, &qword_27DEEC7B8, &qword_23815C7E8);
    sub_238071284(&v159, &qword_27DEEC7B8, &qword_23815C7E8);
    *(&v149[6] + 7) = v157;
    *(&v149[5] + 7) = v156;
    *(&v149[2] + 7) = v153;
    *(&v149[1] + 7) = v152;
    *(&v149[7] + 7) = v158[0];
    v149[8] = *(v158 + 9);
    *(&v149[3] + 7) = v154;
    *(&v149[4] + 7) = v155;
    *(v149 + 7) = v151;
    v101 = v149[4];
    v102 = v133;
    *(v133 + 97) = v149[5];
    v103 = v149[7];
    *(v102 + 113) = v149[6];
    *(v102 + 129) = v103;
    *(v102 + 145) = v149[8];
    v104 = v149[0];
    *(v102 + 33) = v149[1];
    v105 = v149[3];
    *(v102 + 49) = v149[2];
    *(v102 + 65) = v105;
    *(v102 + 81) = v101;
    v106 = v150;
    *v102 = v100;
    *(v102 + 1) = 0;
    v102[16] = v106;
    *(v102 + 17) = v104;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC7C0, &qword_23815C7F0);
    sub_2380F93B4();
    sub_2380711D4(&qword_27DEEC858, &qword_27DEEC7C0, &qword_23815C7F0);
    v99 = v134;
    sub_238153ECC();
  }

  v107 = v130;
  sub_2380712E4(v138, v130, &qword_27DEEC7A8, &qword_23815C790);
  v108 = v137;
  v109 = v131;
  sub_2380712E4(v137, v131, &qword_27DEEC7A0, &qword_23815C788);
  v110 = v135;
  sub_2380712E4(v99, v135, &qword_27DEEC788, &qword_23815C770);
  v111 = v99;
  v112 = v136;
  sub_2380712E4(v107, v136, &qword_27DEEC7A8, &qword_23815C790);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC860, &qword_23815C838);
  sub_2380712E4(v109, v112 + v113[12], &qword_27DEEC7A0, &qword_23815C788);
  sub_2380712E4(v110, v112 + v113[16], &qword_27DEEC788, &qword_23815C770);
  v114 = v112 + v113[20];
  *v114 = 0;
  *(v114 + 8) = 1;
  sub_238071284(v111, &qword_27DEEC788, &qword_23815C770);
  sub_238071284(v108, &qword_27DEEC7A0, &qword_23815C788);
  sub_238071284(v138, &qword_27DEEC7A8, &qword_23815C790);
  sub_238071284(v110, &qword_27DEEC788, &qword_23815C770);
  sub_238071284(v109, &qword_27DEEC7A0, &qword_23815C788);
  return sub_238071284(v107, &qword_27DEEC7A8, &qword_23815C790);
}

uint64_t sub_2380F48B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  v4 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_completedPairedDevices;
  swift_beginAccess();
  if (*(*(v3 + v4) + 16))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    KeyPath = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v44 = sub_23807CB28(99);
    v45 = v18;
    sub_2380704A0();
    v19 = sub_23815438C();
    v21 = v20;
    v23 = v22;
    sub_23815419C();
    v5 = sub_23815435C();
    v6 = v24;
    v34 = v25;
    v7 = v26;

    sub_238070490(v19, v21, v23 & 1);

    KeyPath = swift_getKeyPath();
    v10 = sub_23815463C();
    v9 = swift_getKeyPath();
    LOBYTE(v44) = v34 & 1;
    v13 = v34 & 1;
    v27 = sub_2381540EC();
    sub_23815377C();
    v11 = v27;
    v12 = 1;
  }

  v37 = 1;
  *&v38 = v5;
  *(&v38 + 1) = v6;
  *&v39 = v13;
  *(&v39 + 1) = v7;
  *&v40 = KeyPath;
  *(&v40 + 1) = v12;
  *&v41 = v9;
  *(&v41 + 1) = v10;
  *&v42 = v11;
  *(&v42 + 1) = v14;
  *v43 = v15;
  *&v43[8] = v16;
  *&v43[16] = v17;
  v43[24] = 0;
  *(&v36[2] + 7) = v40;
  *(&v36[1] + 7) = v39;
  *(v36 + 7) = v38;
  v36[6] = *&v43[9];
  *(&v36[5] + 7) = *v43;
  *(&v36[4] + 7) = v42;
  *(&v36[3] + 7) = v41;
  v35[112] = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  v28 = v36[0];
  v29 = v36[1];
  v30 = v36[3];
  *(a2 + 41) = v36[2];
  *(a2 + 25) = v29;
  *(a2 + 9) = v28;
  v31 = v36[4];
  v32 = v36[5];
  *(a2 + 105) = v36[6];
  *(a2 + 89) = v32;
  *(a2 + 73) = v31;
  *(a2 + 57) = v30;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  v44 = v5;
  v45 = v6;
  v46 = v13;
  v47 = v7;
  v48 = KeyPath;
  v49 = v12;
  v50 = v9;
  v51 = v10;
  v52 = v11;
  v53 = v14;
  v54 = v15;
  v55 = v16;
  v56 = v17;
  v57 = 0;
  sub_2380712E4(&v38, v35, &qword_27DEEC968, &qword_23815C9C8);
  return sub_238071284(&v44, &qword_27DEEC968, &qword_23815C9C8);
}

uint64_t DDDeviceAdvertiserView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC6D0, &qword_23815C620);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC6D8, &qword_23815C628);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC6E0, &qword_23815C630);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - v15;
  v17 = v1[3];
  v62 = v1[2];
  v63 = v17;
  *v64 = v1[4];
  *&v64[16] = *(v1 + 10);
  v18 = v1[1];
  v60 = *v1;
  v61 = v18;
  v53 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC6E8, &qword_23815C638);
  sub_23815470C();
  if (v51[0])
  {
    v47 = v9;
    v48 = v8;
    v49 = v13;
    v19 = v2;
    v65[0] = *&v64[8];
    if (*(*&v64[16] + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID + 8))
    {
      v20 = *(*&v64[16] + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID);
      sub_2380F9130();
      sub_2380712E4(v65, &v53, &qword_27DEEC730, &qword_23815C660);

      v21 = sub_2380F3278();
      v22 = v12;
      if (v21)
      {
        v24 = v21;
        v25 = [v21 localizedName];
        v26 = sub_238154CCC();
        v45 = v27;
        v46 = v26;

        sub_238071284(v65, &qword_27DEEC730, &qword_23815C660);
      }

      else
      {
        sub_238071284(v65, &qword_27DEEC730, &qword_23815C660);
        v45 = 0xE000000000000000;
        v46 = 0;
      }
    }

    else
    {
      v45 = 0xE000000000000000;
      v46 = 0;
      v22 = v12;
    }

    v28 = *(&v61 + 1);
    v44 = v61;
    v29 = swift_allocObject();
    v30 = v63;
    *(v29 + 48) = v62;
    *(v29 + 64) = v30;
    *(v29 + 80) = *v64;
    *(v29 + 96) = *&v64[16];
    v31 = v61;
    *(v29 + 16) = v60;
    *(v29 + 32) = v31;

    sub_2380F8DF4(&v60, &v53);
    v43 = sub_23815410C();
    v42 = sub_238153A4C();
    sub_2381548BC();
    sub_238153A8C();
    *&v52[55] = v56;
    *&v52[71] = v57;
    *&v52[87] = v58;
    *&v52[103] = v59;
    *&v52[7] = v53;
    *&v52[23] = v54;
    *&v52[39] = v55;
    v32 = swift_allocObject();
    v33 = v63;
    *(v32 + 48) = v62;
    *(v32 + 64) = v33;
    *(v32 + 80) = *v64;
    *(v32 + 96) = *&v64[16];
    v34 = v61;
    *(v32 + 16) = v60;
    *(v32 + 32) = v34;
    v35 = &v6[*(v19 + 36)];
    v36 = *(sub_23815396C() + 20);
    sub_2380F8DF4(&v60, v51);
    sub_238154F9C();
    *v35 = &unk_23815C648;
    *(v35 + 1) = v32;
    v37 = v45;
    *v6 = v46;
    *(v6 + 1) = v37;
    *(v6 + 2) = v44;
    *(v6 + 3) = v28;
    v38 = *&v52[80];
    *(v6 + 121) = *&v52[64];
    *(v6 + 137) = v38;
    *(v6 + 153) = *&v52[96];
    v39 = *&v52[16];
    *(v6 + 57) = *v52;
    *(v6 + 73) = v39;
    v40 = *&v52[48];
    *(v6 + 89) = *&v52[32];
    *(v6 + 4) = sub_2380F8DEC;
    *(v6 + 5) = v29;
    *(v6 + 6) = v42;
    v6[56] = v43;
    *(v6 + 21) = *&v52[111];
    *(v6 + 105) = v40;
    v41 = v48;
    sub_23807121C(v6, v48, &qword_27DEEC6D0, &qword_23815C620);
    sub_2380712E4(v41, v22, &qword_27DEEC6D0, &qword_23815C620);
    swift_storeEnumTagMultiPayload();
    sub_2380711D4(&qword_27DEEC6F0, &qword_27DEEC6E0, &qword_23815C630);
    sub_2380F8EC0();
    sub_238153ECC();
    return sub_238071284(v41, &qword_27DEEC6D0, &qword_23815C620);
  }

  else
  {
    v55 = v62;
    v56 = v63;
    v57 = *v64;
    *&v58 = *&v64[16];
    v53 = v60;
    v54 = v61;
    sub_2380F3588(v16);
    sub_2380712E4(v16, v12, &qword_27DEEC6E0, &qword_23815C630);
    swift_storeEnumTagMultiPayload();
    sub_2380711D4(&qword_27DEEC6F0, &qword_27DEEC6E0, &qword_23815C630);
    sub_2380F8EC0();
    sub_238153ECC();
    return sub_238071284(v16, &qword_27DEEC6E0, &qword_23815C630);
  }
}

uint64_t sub_2380F5154(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14[-v4 - 8];
  v6 = sub_238154FBC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_238154F8C();
  sub_2380F8DF4(a1, v14);
  v7 = sub_238154F7C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = *(a1 + 48);
  *(v8 + 64) = *(a1 + 32);
  *(v8 + 80) = v10;
  *(v8 + 96) = *(a1 + 64);
  *(v8 + 112) = *(a1 + 80);
  v11 = *(a1 + 16);
  *(v8 + 32) = *a1;
  *(v8 + 48) = v11;
  sub_2380D2A4C(0, 0, v5, &unk_23815CA28, v8);
}

uint64_t sub_2380F529C(uint64_t a1)
{
  *(v1 + 104) = sub_238154F8C();
  *(v1 + 112) = sub_238154F7C();
  v3 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v3;
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = *(a1 + 80);
  v4 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = swift_task_alloc();
  *(v1 + 120) = v5;
  *v5 = v1;
  v5[1] = sub_2380F5368;

  return sub_2380F5504();
}

uint64_t sub_2380F5368()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v7 = *v0;

  v5 = sub_238154F3C();

  return MEMORY[0x2822009F8](sub_2380F54A4, v5, v4);
}

uint64_t sub_2380F54A4()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2380F5504()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 8);
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = *(v0 + 40);
  *(v1 + 137) = *(v0 + 56);
  v4 = *(v0 + 80);
  *(v1 + 72) = *(v0 + 64);
  *(v1 + 80) = v4;
  sub_238154F8C();
  *(v1 + 88) = sub_238154F7C();
  v6 = sub_238154F3C();
  *(v1 + 96) = v6;
  *(v1 + 104) = v5;

  return MEMORY[0x2822009F8](sub_2380F55C4, v6, v5);
}

uint64_t sub_2380F55C4()
{
  v20 = v0;
  if (qword_27DEEA0B8 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[4];
  v5 = v0[5];
  v7 = sub_23815293C();
  v0[14] = __swift_project_value_buffer(v7, qword_27DEEC6B0);

  v8 = v1;

  v9 = sub_23815291C();
  v10 = sub_2381550FC();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = v0[6];
    v11 = v0[7];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;

    v15 = sub_238085EAC(v12, v11, &v19);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_238060000, v9, v10, "Loading setting for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x2383EA8A0](v14, -1, -1);
    MEMORY[0x2383EA8A0](v13, -1, -1);
  }

  v16 = v0[8];
  v17 = (*v16 + 152) & 0xFFFFFFFFFFFFLL | 0x517C000000000000;
  v0[15] = *(*v16 + 152);
  v0[16] = v17;

  return MEMORY[0x2822009F8](sub_2380F57E0, v16, 0);
}

uint64_t sub_2380F57E0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 64);
  *(v0 + 138) = (*(v0 + 120))(*(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);

  return MEMORY[0x2822009F8](sub_2380F5850, v3, v4);
}

uint64_t sub_2380F5850()
{
  v26 = v0;
  v1 = *(v0 + 138);
  v24 = *(v0 + 112);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 137);
  v7 = *(v0 + 56);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);

  *(v0 + 16) = v6;
  *(v0 + 136) = (v1 == 2) | v1 & 1;
  *(v0 + 24) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC6E8, &qword_23815C638);
  sub_23815471C();

  v10 = v3;
  v11 = sub_23815291C();
  LOBYTE(v5) = sub_2381550FC();

  v12 = v5;

  if (os_log_type_enabled(v11, v5))
  {
    v13 = *(v0 + 72);
    v14 = v11;
    v15 = *(v0 + 48);
    v16 = *(v0 + 56);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_238085EAC(v15, v16, &v25);
    *(v17 + 12) = 2080;
    *(v0 + 16) = v6;
    *(v0 + 24) = v13;
    sub_23815470C();
    if (*(v0 + 136))
    {
      v19 = 0x64656C6261736964;
    }

    else
    {
      v19 = 0x64656C62616E65;
    }

    if (*(v0 + 136))
    {
      v20 = 0xE800000000000000;
    }

    else
    {
      v20 = 0xE700000000000000;
    }

    v21 = sub_238085EAC(v19, v20, &v25);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_238060000, v14, v12, "Loaded setting for %s: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383EA8A0](v18, -1, -1);
    MEMORY[0x2383EA8A0](v17, -1, -1);
  }

  else
  {
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2380F5AF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v24 = a2;
  v23 = sub_2381547FC();
  v20 = *(v23 - 8);
  v3 = v20;
  v4 = *(v20 + 64);
  v5 = MEMORY[0x28223BE20](v23);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v22 = sub_238153D1C();
  v30 = 1;
  sub_2380F6044(a1, &v26);
  v44 = *&v27[176];
  v45 = *&v27[192];
  v46[0] = *&v27[208];
  *(v46 + 9) = *&v27[217];
  v40 = *&v27[112];
  v41 = *&v27[128];
  v42 = *&v27[144];
  v43 = *&v27[160];
  v36 = *&v27[48];
  v37 = *&v27[64];
  v38 = *&v27[80];
  v39 = *&v27[96];
  v32 = v26;
  v33 = *v27;
  v34 = *&v27[16];
  v35 = *&v27[32];
  v47[12] = *&v27[176];
  v47[13] = *&v27[192];
  v48[0] = *&v27[208];
  *(v48 + 9) = *&v27[217];
  v47[8] = *&v27[112];
  v47[9] = *&v27[128];
  v47[10] = *&v27[144];
  v47[11] = *&v27[160];
  v47[4] = *&v27[48];
  v47[5] = *&v27[64];
  v47[6] = *&v27[80];
  v47[7] = *&v27[96];
  v47[0] = v26;
  v47[1] = *v27;
  v47[2] = *&v27[16];
  v47[3] = *&v27[32];
  sub_2380712E4(&v32, v25, &qword_27DEEC970, &qword_23815C9D0);
  sub_238071284(v47, &qword_27DEEC970, &qword_23815C9D0);
  *(&v29[12] + 7) = v44;
  *(&v29[13] + 7) = v45;
  *(&v29[14] + 7) = v46[0];
  v29[15] = *(v46 + 9);
  *(&v29[8] + 7) = v40;
  *(&v29[9] + 7) = v41;
  *(&v29[10] + 7) = v42;
  *(&v29[11] + 7) = v43;
  *(&v29[4] + 7) = v36;
  *(&v29[5] + 7) = v37;
  *(&v29[6] + 7) = v38;
  *(&v29[7] + 7) = v39;
  *(v29 + 7) = v32;
  *(&v29[1] + 7) = v33;
  *(&v29[2] + 7) = v34;
  *(&v29[3] + 7) = v35;
  v10 = v30;
  v21 = v30;
  sub_2381548EC();
  sub_238153A8C();
  *(&v31[6] + 7) = *&v31[21];
  *(&v31[8] + 7) = *&v31[23];
  *(&v31[10] + 7) = *&v31[25];
  *(&v31[12] + 7) = *&v31[27];
  *(v31 + 7) = *&v31[15];
  *(&v31[2] + 7) = *&v31[17];
  *(&v31[4] + 7) = *&v31[19];
  sub_2381547EC();
  v11 = *(v3 + 16);
  v12 = v7;
  v13 = v23;
  v11(v7, v9, v23);
  *(&v25[32] + 1) = v29[15];
  *(&v25[26] + 1) = v29[12];
  v14 = v22;
  v25[0] = v22;
  v25[1] = 0;
  LOBYTE(v25[2]) = v10;
  *(&v25[28] + 1) = v29[13];
  *(&v25[30] + 1) = v29[14];
  *(&v25[18] + 1) = v29[8];
  *(&v25[20] + 1) = v29[9];
  *(&v25[22] + 1) = v29[10];
  *(&v25[24] + 1) = v29[11];
  *(&v25[10] + 1) = v29[4];
  *(&v25[12] + 1) = v29[5];
  *(&v25[14] + 1) = v29[6];
  *(&v25[16] + 1) = v29[7];
  *(&v25[2] + 1) = v29[0];
  *(&v25[4] + 1) = v29[1];
  *(&v25[6] + 1) = v29[2];
  *(&v25[8] + 1) = v29[3];
  *(&v25[42] + 1) = *&v31[8];
  *(&v25[44] + 1) = *&v31[10];
  *(&v25[46] + 1) = *&v31[12];
  *(&v25[34] + 1) = *v31;
  *(&v25[36] + 1) = *&v31[2];
  *(&v25[38] + 1) = *&v31[4];
  *(&v25[40] + 1) = *&v31[6];
  v25[48] = *(&v31[13] + 7);
  v15 = v24;
  memcpy(v24, v25, 0x188uLL);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC978, &qword_23815C9D8);
  v11(&v15[*(v16 + 48)], v12, v13);
  sub_2380712E4(v25, &v26, &qword_27DEEC980, &unk_23815C9E0);
  v17 = *(v20 + 8);
  v17(v9, v13);
  v17(v12, v13);
  *&v27[241] = v29[15];
  *&v27[193] = v29[12];
  v26 = v14;
  v27[0] = v21;
  *&v27[209] = v29[13];
  *&v27[225] = v29[14];
  *&v27[129] = v29[8];
  *&v27[145] = v29[9];
  *&v27[161] = v29[10];
  *&v27[177] = v29[11];
  *&v27[65] = v29[4];
  *&v27[81] = v29[5];
  *&v27[97] = v29[6];
  *&v27[113] = v29[7];
  *&v27[1] = v29[0];
  *&v27[17] = v29[1];
  *&v27[33] = v29[2];
  *&v27[49] = v29[3];
  *&v27[321] = *&v31[8];
  *&v27[337] = *&v31[10];
  *v28 = *&v31[12];
  *&v27[257] = *v31;
  *&v27[273] = *&v31[2];
  *&v27[289] = *&v31[4];
  *&v27[305] = *&v31[6];
  *&v28[15] = *(&v31[13] + 7);
  return sub_238071284(&v26, &qword_27DEEC980, &unk_23815C9E0);
}

uint64_t sub_2380F6044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2381548DC();
  v6 = v5;
  sub_2380F63F4(&v44);
  v26 = v49;
  v27 = v50;
  v28 = v51;
  v22 = v45;
  v23 = v46;
  v24 = v47;
  v25 = v48;
  v21 = v44;
  v30[6] = v50;
  v30[7] = v51;
  v30[2] = v46;
  v30[3] = v47;
  v30[4] = v48;
  v30[5] = v49;
  v29 = v52;
  v31 = v52;
  v30[0] = v44;
  v30[1] = v45;
  sub_2380712E4(&v21, v34, &qword_27DEEC988, &unk_23815F7F0);
  sub_238071284(v30, &qword_27DEEC988, &unk_23815F7F0);
  v17 = v27;
  v18 = v28;
  v19 = v29;
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v16 = v26;
  v11 = v21;
  v12 = v22;
  v7 = sub_238153DFC();
  LOBYTE(v44) = 1;
  sub_2380F6768(a1, v32);
  *&v20[7] = v32[0];
  *&v20[23] = v32[1];
  *&v20[39] = v32[2];
  *&v20[55] = v33;
  v34[3] = v13;
  v34[4] = v14;
  *&v37[1] = *v20;
  *&v37[17] = *&v20[16];
  *&v37[33] = *&v20[32];
  *&v37[49] = *&v20[48];
  *&v37[64] = *(&v33 + 1);
  *&v10[88] = *(&v33 + 1);
  *&v10[72] = *&v37[48];
  v34[1] = v11;
  v34[2] = v12;
  v34[7] = v17;
  v34[8] = v18;
  v8 = v44;
  *&v34[0] = v4;
  *(&v34[0] + 1) = v6;
  v35 = v19;
  v34[5] = v15;
  v34[6] = v16;
  *v10 = v19;
  v36[0] = v7;
  v36[1] = 0;
  v37[0] = v44;
  *&v10[8] = v7;
  *&v10[24] = *v37;
  *&v10[56] = *&v37[32];
  *&v10[40] = *&v37[16];
  *a2 = v34[0];
  *(a2 + 16) = v11;
  *(a2 + 64) = v14;
  *(a2 + 80) = v15;
  *(a2 + 32) = v12;
  *(a2 + 48) = v13;
  *(a2 + 128) = v18;
  *(a2 + 144) = *v10;
  *(a2 + 96) = v16;
  *(a2 + 112) = v17;
  *(a2 + 208) = *&v10[64];
  *(a2 + 224) = *&v10[80];
  *(a2 + 160) = *&v10[16];
  *(a2 + 176) = *&v10[32];
  *(a2 + 192) = *&v10[48];
  *(a2 + 240) = 0;
  *(a2 + 248) = 1;
  v38[0] = v7;
  v38[1] = 0;
  v39 = v8;
  v41 = *&v20[16];
  v42 = *&v20[32];
  *v43 = *&v20[48];
  *&v43[15] = *&v20[63];
  v40 = *v20;
  sub_2380712E4(v34, &v44, &qword_27DEEC990, &unk_23815C9F0);
  sub_2380712E4(v36, &v44, &qword_27DEEC998, &qword_23815DAA0);
  sub_238071284(v38, &qword_27DEEC998, &qword_23815DAA0);
  *&v44 = v4;
  *(&v44 + 1) = v6;
  v51 = v17;
  v52 = v18;
  v53 = v19;
  v47 = v13;
  v48 = v14;
  v50 = v16;
  v49 = v15;
  v46 = v12;
  v45 = v11;
  return sub_238071284(&v44, &qword_27DEEC990, &unk_23815C9F0);
}

uint64_t sub_2380F63F4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23815468C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2381545CC();
  v7 = sub_23815460C();

  sub_2381548DC();
  sub_2381538EC();
  *&v29[3] = *&v29[27];
  *&v29[11] = *&v29[35];
  *&v29[19] = *&v29[43];
  if (qword_27DEEA0C0 != -1)
  {
    swift_once();
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);

  v8 = sub_2381546CC();

  (*(v3 + 8))(v6, v2);
  sub_2381548DC();
  sub_2381538EC();
  *&v28[6] = *&v29[51];
  *&v28[22] = *&v29[59];
  *&v28[38] = v30;
  *&v31[0] = v7;
  WORD4(v31[0]) = 256;
  *(v31 + 10) = *v29;
  *(&v31[1] + 10) = *&v29[8];
  *(&v31[2] + 10) = *&v29[16];
  *(&v31[3] + 1) = *&v29[23];
  *&v22[31] = v31[2];
  *&v22[39] = v31[3];
  *&v22[15] = v31[0];
  *&v22[23] = v31[1];
  v32[0] = v8;
  v32[1] = 0;
  *v33 = 1;
  *&v33[48] = *(&v30 + 1);
  *&v33[34] = *&v28[32];
  *&v33[18] = *&v28[16];
  *&v33[2] = *v28;
  v27 = *&v33[48];
  v25 = *&v33[16];
  v26 = *&v33[32];
  v23 = v8;
  v24 = *v33;
  v9 = v31[0];
  v10 = v31[1];
  v11 = v31[3];
  *(a1 + 32) = v31[2];
  *(a1 + 48) = v11;
  *a1 = v9;
  *(a1 + 16) = v10;
  v12 = v23;
  v13 = v24;
  v14 = v25;
  v15 = v26;
  *(a1 + 128) = v27;
  *(a1 + 96) = v14;
  *(a1 + 112) = v15;
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  v34[0] = v8;
  v34[1] = 0;
  v35 = 1;
  v36 = *v28;
  v37 = *&v28[16];
  *v38 = *&v28[32];
  *&v38[14] = *&v28[46];
  sub_2380712E4(v31, &v18, &unk_27DEEC9A0, &unk_23815CA00);
  sub_2380712E4(v32, &v18, &qword_27DEEB760, &qword_23815F800);
  sub_238071284(v34, &qword_27DEEB760, &qword_23815F800);
  v18 = v7;
  v19 = 256;
  v20 = *v29;
  v21 = *&v29[8];
  *v22 = *&v29[16];
  *&v22[7] = *&v29[23];
  return sub_238071284(&v18, &unk_27DEEC9A0, &unk_23815CA00);
}

uint64_t sub_2380F6768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = sub_238153D7C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_238153D8C();
  v4 = sub_23815436C();
  v6 = v5;
  v8 = v7;
  sub_2381542BC();
  v9 = sub_23815435C();
  v11 = v10;
  v13 = v12;

  sub_238070490(v4, v6, v8 & 1);

  sub_238153F0C();
  v14 = sub_23815432C();
  v40 = v15;
  v41 = v14;
  v17 = v16;
  v39 = v18;
  sub_238070490(v9, v11, v13 & 1);

  sub_238153D6C();
  sub_238153D5C();
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  sub_238153D4C();
  sub_238153D5C();
  sub_238153D9C();
  v21 = sub_23815436C();
  v23 = v22;
  v25 = v24;
  sub_23815424C();
  v26 = sub_23815435C();
  v28 = v27;
  LOBYTE(v4) = v29;

  sub_238070490(v21, v23, v25 & 1);

  sub_2381541DC();
  v30 = sub_2381542FC();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_238070490(v26, v28, v4 & 1);

  *a2 = v41;
  *(a2 + 8) = v17;
  *(a2 + 16) = v39 & 1;
  *(a2 + 24) = v40;
  *(a2 + 32) = v30;
  *(a2 + 40) = v32;
  *(a2 + 48) = v34 & 1;
  *(a2 + 56) = v36;
  sub_238070430(v41, v17, v39 & 1);

  sub_238070430(v30, v32, v34 & 1);

  sub_238070490(v30, v32, v34 & 1);

  sub_238070490(v41, v17, v39 & 1);
}

void sub_2380F6A90()
{
  v0 = [objc_opt_self() avatarImageRender];
  v1 = [v0 placeholderImageForSize:40.0 scale:{40.0, 5.0}];
  v2 = sub_23815466C();

  qword_27DEEC6C8 = v2;
}

uint64_t sub_2380F6B08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v4 = a1[7];
  v47 = a1[6];
  v48 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC848, &qword_23815C830);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC838, &qword_23815C828);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC828, &qword_23815C820);
  v13 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC818, &qword_23815C818);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v23 = &v46 - v22;
  v24 = a1[1];
  if (v24 && v4)
  {
    v25 = *a1;
    v46 = v21;
    *v8 = sub_238153DEC();
    *(v8 + 1) = 0;
    v8[16] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC900, &qword_23815C8D0);
    sub_2380F6F84(v25, v24, v47, v4, v48, &v8[*(v26 + 44)]);
    sub_2381548EC();
    sub_238153A8C();
    sub_23807121C(v8, v12, &qword_27DEEC848, &qword_23815C830);
    v27 = &v12[*(v9 + 36)];
    v28 = v56;
    *(v27 + 4) = v55;
    *(v27 + 5) = v28;
    *(v27 + 6) = v57;
    v29 = v52;
    *v27 = v51;
    *(v27 + 1) = v29;
    v30 = v54;
    *(v27 + 2) = v53;
    *(v27 + 3) = v30;
    sub_2381545CC();
    v31 = sub_23815460C();

    LOBYTE(v25) = sub_2381540FC();
    sub_23807121C(v12, v15, &qword_27DEEC838, &qword_23815C828);
    v32 = &v15[*(v49 + 36)];
    *v32 = v31;
    v32[8] = v25;
    v33 = &v20[*(v16 + 36)];
    v34 = *(sub_238153A7C() + 20);
    v35 = *MEMORY[0x277CE0118];
    v36 = sub_238153DDC();
    (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
    __asm { FMOV            V0.2D, #20.0 }

    *v33 = _Q0;
    *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC338, &qword_23815BC80) + 36)] = 256;
    sub_23807121C(v15, v20, &qword_27DEEC828, &qword_23815C820);
    sub_23807121C(v20, v23, &qword_27DEEC818, &qword_23815C818);
    v42 = v50;
    sub_23807121C(v23, v50, &qword_27DEEC818, &qword_23815C818);
    return (*(v46 + 56))(v42, 0, 1, v16);
  }

  else
  {
    v44 = *(v21 + 56);
    v45 = v50;

    return v44(v45, 1, 1, v16);
  }
}

uint64_t sub_2380F6F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v67 = a4;
  v68 = a5;
  v63[1] = a3;
  v66 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC908, &qword_23815C8D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v63 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC910, &qword_23815C8E0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v65 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v63 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v63 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8E0, &unk_23815C8B0);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = v63 - v27;
  v29 = objc_opt_self();

  v30 = [v29 avatarImageRender];
  v31 = [v30 placeholderImageForSize:40.0 scale:{40.0, 5.0}];
  v64 = sub_23815466C();

  sub_2381547EC();
  LOBYTE(v30) = sub_23815412C();
  sub_23815377C();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8F0, &qword_23815C8C0) + 36)];
  *v40 = v30;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  v41 = sub_23815414C();
  v42 = &v28[*(v22 + 44)];
  *v42 = v41;
  *(v42 + 8) = 0u;
  *(v42 + 24) = 0u;
  v42[40] = 1;
  *v11 = sub_238153DEC();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v43 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC918, &qword_23815C8E8) + 44)];
  v44 = v68;
  v67 = a1;
  v68 = a2;
  sub_2380F7494(v44, a1, a2, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE8, &qword_23815C8F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238158810;
  LOBYTE(v30) = sub_23815412C();
  *(inited + 32) = v30;
  v46 = sub_23815414C();
  *(inited + 33) = v46;
  v47 = sub_23815413C();
  sub_23815413C();
  if (sub_23815413C() != v30)
  {
    v47 = sub_23815413C();
  }

  sub_23815413C();
  if (sub_23815413C() != v46)
  {
    v47 = sub_23815413C();
  }

  sub_23815377C();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_23807121C(v11, v18, &qword_27DEEC908, &qword_23815C8D8);
  v56 = &v18[*(v12 + 36)];
  *v56 = v47;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  sub_23807121C(v18, v20, &qword_27DEEC910, &qword_23815C8E0);
  sub_2380712E4(v28, v26, &qword_27DEEC8E0, &unk_23815C8B0);
  v57 = v65;
  sub_2380712E4(v20, v65, &qword_27DEEC910, &qword_23815C8E0);
  v58 = v28;
  v59 = v66;
  v60 = v68;
  *v66 = v67;
  v59[1] = v60;
  v59[2] = v64;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC920, &qword_23815C8F8);
  sub_2380712E4(v26, v59 + *(v61 + 48), &qword_27DEEC8E0, &unk_23815C8B0);
  sub_2380712E4(v57, v59 + *(v61 + 64), &qword_27DEEC910, &qword_23815C8E0);

  sub_238071284(v20, &qword_27DEEC910, &qword_23815C8E0);
  sub_238071284(v58, &qword_27DEEC8E0, &unk_23815C8B0);
  sub_238071284(v57, &qword_27DEEC910, &qword_23815C8E0);
  sub_238071284(v26, &qword_27DEEC8E0, &unk_23815C8B0);
}

uint64_t sub_2380F7494@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v110 = a2;
  v111 = a3;
  v108 = a1;
  v109 = a4;
  v4 = sub_238153D7C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC928, &qword_23815C900);
  v116 = *(v118 - 8);
  v6 = *(v116 + 64);
  MEMORY[0x28223BE20](v118);
  v114 = &v102 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC930, &qword_23815C908);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v115 = &v102 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC938, &qword_23815C910);
  v13 = *(v12 - 8);
  v117 = v12 - 8;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8);
  v119 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v102 - v18;
  MEMORY[0x28223BE20](v17);
  v120 = &v102 - v20;
  sub_238153D6C();
  sub_238153D5C();
  sub_238153D4C();
  sub_238153D5C();
  sub_238153D9C();
  v21 = sub_23815436C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  KeyPath = swift_getKeyPath();
  v29 = sub_23815416C();
  v30 = swift_getKeyPath();
  LOBYTE(v132) = v25 & 1;
  *&v138 = v21;
  *(&v138 + 1) = v23;
  LOBYTE(v139) = v25 & 1;
  *(&v139 + 1) = v27;
  *&v140 = KeyPath;
  BYTE8(v140) = 0;
  *&v141 = v30;
  *(&v141 + 1) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC940, &qword_23815C978);
  sub_2380F9B10();
  v31 = v114;
  sub_23815457C();
  v202[0] = v138;
  v202[1] = v139;
  v202[2] = v140;
  v202[3] = v141;
  sub_238071284(v202, &qword_27DEEC940, &qword_23815C978);
  sub_2381548EC();
  sub_238153A8C();
  v32 = v115;
  (*(v116 + 32))(v115, v31, v118);
  v33 = (v32 + *(v9 + 44));
  v34 = v193;
  v33[4] = v192;
  v33[5] = v34;
  v33[6] = v194;
  v35 = v189;
  *v33 = v188;
  v33[1] = v35;
  v36 = v191;
  v33[2] = v190;
  v33[3] = v36;
  LOBYTE(v21) = sub_23815410C();
  sub_23815377C();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_23807121C(v32, v19, &qword_27DEEC930, &qword_23815C908);
  v45 = &v19[*(v117 + 44)];
  *v45 = v21;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  sub_23807121C(v19, v120, &qword_27DEEC938, &qword_23815C910);
  *&v138 = sub_23807CB28(103);
  *(&v138 + 1) = v46;
  sub_2380704A0();
  v47 = MEMORY[0x277D837D0];
  v48 = sub_23815438C();
  v116 = v49;
  v117 = v48;
  LOBYTE(v21) = v50;
  v118 = v51;
  v114 = swift_getKeyPath();
  v115 = sub_2381542CC();
  v113 = swift_getKeyPath();
  v112 = v21 & 1;
  v187 = v21 & 1;
  sub_2381548EC();
  sub_238153A8C();
  v52 = sub_238154C8C();
  v53 = sub_238154C8C();
  v54 = DDUILocalizedString();

  sub_238154CCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED8F0, &qword_23815C2E0);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_238158810;
  v56 = (*(v108 + 80) + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID);
  v57 = v56[1];
  if (v57)
  {
    v58 = *v56;
    sub_2380F9130();

    v59 = sub_2380F3278();
    if (v59)
    {
      v61 = v59;
      v62 = [v59 localizedName];
      v57 = sub_238154CCC();
      v60 = v63;
    }

    else
    {
      v57 = 0;
      v60 = 0xE000000000000000;
    }

    v47 = MEMORY[0x277D837D0];
  }

  else
  {
    v60 = 0xE000000000000000;
  }

  *(v55 + 56) = v47;
  v64 = sub_2380F1440();
  *(v55 + 32) = v57;
  *(v55 + 40) = v60;
  *(v55 + 96) = v47;
  *(v55 + 104) = v64;
  v65 = v110;
  *(v55 + 64) = v64;
  *(v55 + 72) = v65;
  *(v55 + 80) = v111;

  v66 = sub_238154C9C();
  v68 = v67;

  *&v138 = v66;
  *(&v138 + 1) = v68;
  v69 = sub_23815438C();
  v104 = v70;
  v105 = v69;
  v71 = v70;
  LOBYTE(v66) = v72;
  v111 = v73;
  v108 = swift_getKeyPath();
  v110 = sub_23815419C();
  v107 = swift_getKeyPath();
  v74 = v66 & 1;
  v174 = v66 & 1;
  v75 = sub_23815463C();
  v76 = swift_getKeyPath();
  v103 = v76;
  v106 = sub_23815411C();
  v175 = 1;
  sub_2381548EC();
  sub_238153A8C();
  *&v177[55] = v198;
  *&v177[71] = v199;
  *&v177[87] = v200;
  *&v177[103] = v201;
  *&v177[7] = v195;
  *&v177[23] = v196;
  *&v177[39] = v197;
  v77 = v119;
  sub_2380712E4(v120, v119, &qword_27DEEC938, &qword_23815C910);
  v78 = v77;
  v79 = v109;
  sub_2380712E4(v78, v109, &qword_27DEEC938, &qword_23815C910);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC950, &qword_23815C9B0);
  v81 = (v79 + *(v80 + 48));
  *&v121 = v117;
  *(&v121 + 1) = v116;
  LOBYTE(v122) = v112;
  *(&v122 + 1) = *v186;
  DWORD1(v122) = *&v186[3];
  *(&v122 + 1) = v118;
  *&v123 = v114;
  BYTE8(v123) = 0;
  *(&v123 + 9) = *v185;
  HIDWORD(v123) = *&v185[3];
  *&v124 = v113;
  *(&v124 + 1) = v115;
  v125 = v178;
  v126 = v179;
  v130 = v183;
  v131 = v184;
  v129 = v182;
  v127 = v180;
  v128 = v181;
  v82 = v122;
  *v81 = v121;
  v81[1] = v82;
  v83 = v123;
  v84 = v124;
  v85 = v126;
  v81[4] = v125;
  v81[5] = v85;
  v81[2] = v83;
  v81[3] = v84;
  v86 = v127;
  v87 = v128;
  v88 = v131;
  v81[9] = v130;
  v81[10] = v88;
  v89 = v129;
  v81[7] = v87;
  v81[8] = v89;
  v81[6] = v86;
  v90 = (v79 + *(v80 + 64));
  *&v132 = v69;
  *(&v132 + 1) = v71;
  LOBYTE(v133) = v74;
  *(&v133 + 1) = *v173;
  DWORD1(v133) = *&v173[3];
  v92 = v107;
  v91 = v108;
  *(&v133 + 1) = v111;
  *&v134 = v108;
  BYTE8(v134) = 0;
  *(&v134 + 9) = *v172;
  HIDWORD(v134) = *&v172[3];
  *&v135 = v107;
  *(&v135 + 1) = v110;
  *&v136 = v76;
  *(&v136 + 1) = v75;
  v93 = v106;
  LOBYTE(v137[0]) = v106;
  *(v137 + 1) = *v176;
  DWORD1(v137[0]) = *&v176[3];
  *(&v137[1] + 8) = 0u;
  *(v137 + 8) = 0u;
  BYTE8(v137[2]) = 1;
  *(&v137[6] + 9) = *&v177[64];
  *(&v137[7] + 9) = *&v177[80];
  *(&v137[8] + 9) = *&v177[96];
  *(&v137[9] + 1) = *&v177[111];
  *(&v137[2] + 9) = *v177;
  *(&v137[3] + 9) = *&v177[16];
  *(&v137[4] + 9) = *&v177[32];
  *(&v137[5] + 9) = *&v177[48];
  v94 = v133;
  *v90 = v132;
  v90[1] = v94;
  v95 = v135;
  v90[2] = v134;
  v90[3] = v95;
  v96 = v137[0];
  v90[4] = v136;
  v90[5] = v96;
  v97 = v137[4];
  v90[8] = v137[3];
  v90[9] = v97;
  v98 = v137[2];
  v90[6] = v137[1];
  v90[7] = v98;
  v99 = v137[9];
  v90[13] = v137[8];
  v90[14] = v99;
  v100 = v137[7];
  v90[11] = v137[6];
  v90[12] = v100;
  v90[10] = v137[5];
  sub_2380712E4(&v121, &v138, &qword_27DEEC958, &qword_23815C9B8);
  sub_2380712E4(&v132, &v138, &qword_27DEEC960, &qword_23815C9C0);
  sub_238071284(v120, &qword_27DEEC938, &qword_23815C910);
  v146 = 0u;
  v147 = 0u;
  v153 = *&v177[64];
  v154 = *&v177[80];
  *v155 = *&v177[96];
  v149 = *v177;
  v150 = *&v177[16];
  v151 = *&v177[32];
  *&v138 = v105;
  *(&v138 + 1) = v104;
  LOBYTE(v139) = v74;
  *(&v139 + 1) = *v173;
  DWORD1(v139) = *&v173[3];
  *(&v139 + 1) = v111;
  *&v140 = v91;
  BYTE8(v140) = 0;
  *(&v140 + 9) = *v172;
  HIDWORD(v140) = *&v172[3];
  *&v141 = v92;
  *(&v141 + 1) = v110;
  v142 = v103;
  v143 = v75;
  v144 = v93;
  *v145 = *v176;
  *&v145[3] = *&v176[3];
  v148 = 1;
  *&v155[15] = *&v177[111];
  v152 = *&v177[48];
  sub_238071284(&v138, &qword_27DEEC960, &qword_23815C9C0);
  v156[0] = v117;
  v156[1] = v116;
  v157 = v112;
  *v158 = *v186;
  *&v158[3] = *&v186[3];
  v159 = v118;
  v160 = v114;
  v161 = 0;
  *v162 = *v185;
  *&v162[3] = *&v185[3];
  v163 = v113;
  v164 = v115;
  v169 = v182;
  v170 = v183;
  v171 = v184;
  v165 = v178;
  v166 = v179;
  v167 = v180;
  v168 = v181;
  sub_238071284(v156, &qword_27DEEC958, &qword_23815C9B8);
  return sub_238071284(v119, &qword_27DEEC938, &qword_23815C910);
}

uint64_t sub_2380F804C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8B0, &qword_23815C868);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8B8, &qword_23815C870);
  v9 = *(v8 - 8);
  v34 = v8;
  v35 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v32 - v11;
  *a2 = sub_238153DEC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v32[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8C0, &unk_23815C878) + 44);
  v13 = *(a1 + 80);
  v14 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_completedPairedDevices;
  swift_beginAccess();
  v15 = *(*(v13 + v14) + 16);
  v36[11] = 0;
  v36[12] = v15;
  v32[0] = swift_getKeyPath();
  v16 = swift_allocObject();
  v17 = *(a1 + 48);
  *(v16 + 48) = *(a1 + 32);
  *(v16 + 64) = v17;
  *(v16 + 80) = *(a1 + 64);
  *(v16 + 96) = *(a1 + 80);
  v18 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v18;
  sub_2380F8DF4(a1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF00, &qword_238158FE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8C8, &qword_23815C8A8);
  sub_238087E84();
  sub_2380711D4(&qword_27DEEC8D0, &qword_27DEEC8C8, &qword_23815C8A8);
  sub_23815480C();
  v19 = sub_2380F9A50();
  sub_2381544BC();
  (*(v33 + 8))(v7, v4);
  v36[0] = v4;
  v36[1] = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v34;
  sub_23815443C();
  (*(v35 + 8))(v12, v20);
  LODWORD(v7) = sub_238153EFC();
  LOBYTE(v20) = sub_2381540FC();
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC880, &qword_23815C848) + 36);
  *v21 = v7;
  *(v21 + 4) = v20;
  v22 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC868, &qword_23815C840) + 36));
  v23 = *(sub_238153A7C() + 20);
  v24 = *MEMORY[0x277CE0118];
  v25 = sub_238153DDC();
  (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
  __asm { FMOV            V0.2D, #20.0 }

  *v22 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC338, &qword_23815BC80);
  *&v22[*(result + 36)] = 256;
  return result;
}

uint64_t sub_2380F8450@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8E0, &unk_23815C8B0);
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v46);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8E8, &qword_23815FDD0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  v17 = *a1;
  v18 = *(a2 + 80);
  v19 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_completedPairedDevices;
  result = swift_beginAccess();
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v21 = *(v18 + v19);
  if (v17 >= *(v21 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v22 = v21 + 48 * v17;
  v23 = *(v22 + 40);
  v44 = *(v22 + 32);
  v45 = v6;
  v24 = objc_opt_self();

  v25 = [v24 avatarImageRender];
  v26 = [v25 placeholderImageForSize:40.0 scale:{40.0, 5.0}];
  v27 = sub_23815466C();

  v28 = *(*(v18 + v19) + 16) - 1;
  v29 = 1;
  v30 = v46;
  if (v17 != v28)
  {
    sub_2381547EC();
    v31 = sub_23815412C();
    sub_23815377C();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8F0, &qword_23815C8C0) + 36)];
    *v40 = v31;
    *(v40 + 1) = v33;
    *(v40 + 2) = v35;
    *(v40 + 3) = v37;
    *(v40 + 4) = v39;
    v40[40] = 0;
    v41 = sub_23815414C();
    v42 = &v9[*(v30 + 36)];
    *v42 = v41;
    *(v42 + 8) = 0u;
    *(v42 + 24) = 0u;
    v42[40] = 1;
    sub_23807121C(v9, v16, &qword_27DEEC8E0, &unk_23815C8B0);
    v29 = 0;
  }

  (*(v45 + 56))(v16, v29, 1, v30);
  sub_2380712E4(v16, v14, &qword_27DEEC8E8, &qword_23815FDD0);
  *a3 = v44;
  a3[1] = v23;
  a3[2] = v27;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8F8, &qword_23815C8C8);
  sub_2380712E4(v14, a3 + *(v43 + 48), &qword_27DEEC8E8, &qword_23815FDD0);

  sub_238071284(v16, &qword_27DEEC8E8, &qword_23815FDD0);
  sub_238071284(v14, &qword_27DEEC8E8, &qword_23815FDD0);
}

uint64_t sub_2380F87D0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_23807CB28(a1);
  sub_2380704A0();
  v3 = sub_23815438C();
  v5 = v4;
  v7 = v6;
  sub_23815419C();
  sub_2381541AC();

  v8 = sub_23815435C();
  v10 = v9;
  v12 = v11;

  sub_238070490(v3, v5, v7 & 1);

  sub_23815463C();
  v13 = sub_23815431C();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_238070490(v8, v10, v12 & 1);

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_238070430(v13, v15, v17 & 1);

  sub_238070490(v13, v15, v17 & 1);
}

uint64_t sub_2380F8944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a4;
  sub_238154F8C();
  v4[25] = sub_238154F7C();
  v6 = sub_238154F3C();
  v4[26] = v6;
  v4[27] = v5;

  return MEMORY[0x2822009F8](sub_2380F89DC, v6, v5);
}

uint64_t sub_2380F89DC()
{
  v13 = v0;
  if (qword_27DEEA0B8 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEEC6B0);
  sub_2380F8DF4(v1, (v0 + 2));
  v3 = sub_23815291C();
  v4 = sub_2381550FC();
  sub_2380F9CE8(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[24];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_238085EAC(*(v5 + 32), *(v5 + 40), &v12);
    _os_log_impl(&dword_238060000, v3, v4, "Attempting to set app setting to enabled for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2383EA8A0](v7, -1, -1);
    MEMORY[0x2383EA8A0](v6, -1, -1);
  }

  v8 = v0[24];
  v9 = v8[6];
  v0[28] = v9;
  v0[29] = v8[4];
  v0[30] = v8[5];
  v10 = (*v9 + 160) & 0xFFFFFFFFFFFFLL | 0x25F0000000000000;
  v0[31] = *(*v9 + 160);
  v0[32] = v10;

  return MEMORY[0x2822009F8](sub_2380F8B94, v9, 0);
}

uint64_t sub_2380F8B94()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 224);
  v3 = *(v0 + 192);
  (*(v0 + 248))(0, *(v0 + 232), *(v0 + 240));
  v4 = *v3;
  *(v0 + 120) = v3[1];
  *(v0 + 104) = v4;
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  *(v0 + 184) = *(v3 + 10);
  *(v0 + 168) = v7;
  *(v0 + 152) = v6;
  *(v0 + 136) = v5;
  v8 = swift_task_alloc();
  *(v0 + 264) = v8;
  *v8 = v0;
  v8[1] = sub_2380F8C64;

  return sub_2380F5504();
}

uint64_t sub_2380F8C64()
{
  v1 = *v0;
  v2 = *(*v0 + 264);
  v6 = *v0;

  v3 = *(v1 + 216);
  v4 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_2380F8D84, v4, v3);
}

uint64_t sub_2380F8D84()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2380F8E2C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_238088780;

  return sub_2380F529C(v0 + 16);
}

unint64_t sub_2380F8EC0()
{
  result = qword_27DEEC6F8;
  if (!qword_27DEEC6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC6D0, &qword_23815C620);
    sub_2380F8F7C();
    sub_2380F90E8(&qword_27DEED860, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC6F8);
  }

  return result;
}

unint64_t sub_2380F8F7C()
{
  result = qword_27DEEC700;
  if (!qword_27DEEC700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC708, &qword_23815C650);
    sub_2380F9008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC700);
  }

  return result;
}

unint64_t sub_2380F9008()
{
  result = qword_27DEEC710;
  if (!qword_27DEEC710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC718, &qword_23815C658);
    sub_2380F9094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC710);
  }

  return result;
}

unint64_t sub_2380F9094()
{
  result = qword_27DEEC720;
  if (!qword_27DEEC720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC720);
  }

  return result;
}

uint64_t sub_2380F90E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2380F9130()
{
  result = qword_27DEEC728;
  if (!qword_27DEEC728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEEC728);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2380F91BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2380F9204(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2380F926C()
{
  result = qword_27DEEC738;
  if (!qword_27DEEC738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC740, &qword_23815C728);
    sub_2380711D4(&qword_27DEEC6F0, &qword_27DEEC6E0, &qword_23815C630);
    sub_2380F8EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC738);
  }

  return result;
}

uint64_t sub_2380F936C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2380F93B4()
{
  result = qword_27DEEC7C8;
  if (!qword_27DEEC7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC780, &qword_23815C768);
    sub_2380F9440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC7C8);
  }

  return result;
}

unint64_t sub_2380F9440()
{
  result = qword_27DEEC7D0;
  if (!qword_27DEEC7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC7D8, &qword_23815C7F8);
    sub_2380F94D8();
    sub_2380F9590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC7D0);
  }

  return result;
}

unint64_t sub_2380F94D8()
{
  result = qword_27DEEC7E0;
  if (!qword_27DEEC7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC7E8, &qword_23815C800);
    sub_2380711D4(&qword_27DEEC7F0, &qword_27DEEC7F8, &qword_23815C808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC7E0);
  }

  return result;
}

unint64_t sub_2380F9590()
{
  result = qword_27DEEC800;
  if (!qword_27DEEC800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC808, &qword_23815C810);
    sub_2380F9614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC800);
  }

  return result;
}

unint64_t sub_2380F9614()
{
  result = qword_27DEEC810;
  if (!qword_27DEEC810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC818, &qword_23815C818);
    sub_2380F96CC();
    sub_2380711D4(&qword_27DEEC850, &qword_27DEEC338, &qword_23815BC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC810);
  }

  return result;
}

unint64_t sub_2380F96CC()
{
  result = qword_27DEEC820;
  if (!qword_27DEEC820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC828, &qword_23815C820);
    sub_2380F9784();
    sub_2380711D4(&qword_27DEEB230, &qword_27DEEB238, &qword_2381596B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC820);
  }

  return result;
}

unint64_t sub_2380F9784()
{
  result = qword_27DEEC830;
  if (!qword_27DEEC830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC838, &qword_23815C828);
    sub_2380711D4(&qword_27DEEC840, &qword_27DEEC848, &qword_23815C830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC830);
  }

  return result;
}

unint64_t sub_2380F984C()
{
  result = qword_27DEEC870;
  if (!qword_27DEEC870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC868, &qword_23815C840);
    sub_2380F9904();
    sub_2380711D4(&qword_27DEEC850, &qword_27DEEC338, &qword_23815BC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC870);
  }

  return result;
}

unint64_t sub_2380F9904()
{
  result = qword_27DEEC878;
  if (!qword_27DEEC878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC880, &qword_23815C848);
    sub_2380711D4(&qword_27DEEC888, &qword_27DEEC890, &unk_23815C850);
    sub_2380711D4(&qword_27DEEC898, &qword_27DEEC8A0, &unk_23815FBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC878);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

unint64_t sub_2380F9A50()
{
  result = qword_27DEEC8D8;
  if (!qword_27DEEC8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC8B0, &qword_23815C868);
    sub_2380711D4(&qword_27DEEC8D0, &qword_27DEEC8C8, &qword_23815C8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC8D8);
  }

  return result;
}

unint64_t sub_2380F9B10()
{
  result = qword_27DEEC948;
  if (!qword_27DEEC948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC940, &qword_23815C978);
    sub_23807B920();
    sub_2380711D4(&unk_27DEEA9D0, &qword_27DEEA578, &unk_238157C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC948);
  }

  return result;
}

uint64_t sub_2380F9BD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2380F9C38(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238087150;

  return sub_2380F8944(a1, v4, v5, v1 + 32);
}

uint64_t sub_2380F9D3C()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEC9B0);
  __swift_project_value_buffer(v0, qword_27DEEC9B0);
  v1 = *MEMORY[0x277D04790];
  sub_238154DEC();
  return sub_23815292C();
}

uint64_t sub_2380F9DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_2381534FC();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = sub_23815351C();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2380F9ED4, 0, 0);
}

uint64_t sub_2380F9ED4()
{
  if (qword_27DEEA0C8 != -1)
  {
    swift_once();
  }

  v1 = sub_23815293C();
  v0[9] = __swift_project_value_buffer(v1, qword_27DEEC9B0);
  v2 = sub_23815291C();
  v3 = sub_2381550FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238060000, v2, v3, "start boop browser", v4, 2u);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }

  v5 = v0[8];
  v7 = v0[4];
  v6 = v0[5];
  v9 = v0[2];
  v8 = v0[3];

  v10 = *(v9 + 32);
  v11 = DDUINearFieldPublicKeyFromIdentity();
  v12 = sub_23815275C();
  v14 = v13;

  v0[10] = v12;
  v0[11] = v14;
  (*(v7 + 104))(v6, *MEMORY[0x277D54B38], v8);
  sub_238085D80(v12, v14);
  sub_23815350C();
  v15 = *(v9 + 40);
  v16 = *(MEMORY[0x277D54958] + 4);
  v17 = swift_task_alloc();
  v0[12] = v17;
  *v17 = v0;
  v17[1] = sub_2380FA0D0;
  v18 = v0[8];

  return MEMORY[0x2821B5F28](v18);
}

uint64_t sub_2380FA0D0()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2380FA298;
  }

  else
  {
    v3 = sub_2380FA1E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2380FA1E4()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v0[2];
  sub_2380FA854();
  sub_238085CA0(v2, v1);
  (*(v4 + 8))(v3, v5);
  v7 = v0[8];
  v8 = v0[5];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2380FA298()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  sub_238085CA0(v0[10], v0[11]);
  (*(v5 + 8))(v3, v4);
  v6 = v1;
  v7 = sub_23815291C();
  v8 = sub_2381550DC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[13];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_238060000, v7, v8, "start boop browser failed: %@", v11, 0xCu);
    sub_238071284(v12, &unk_27DEECA10, &qword_2381588F0);
    MEMORY[0x2383EA8A0](v12, -1, -1);
    MEMORY[0x2383EA8A0](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[8];
  v16 = v0[5];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2380FA450()
{
  if (qword_27DEEA0C8 != -1)
  {
    swift_once();
  }

  v1 = sub_23815293C();
  v0[3] = __swift_project_value_buffer(v1, qword_27DEEC9B0);
  v2 = sub_23815291C();
  v3 = sub_2381550FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238060000, v2, v3, "stop boop browser", v4, 2u);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = *(v5 + 40);
  v7 = *(MEMORY[0x277D54948] + 4);
  v8 = swift_task_alloc();
  v0[4] = v8;
  *v8 = v0;
  v8[1] = sub_2380FA5C0;

  return MEMORY[0x2821B5F18](0xD000000000000015, 0x80000002381629C0);
}

uint64_t sub_2380FA5C0()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2380FA6F4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2380FA6F4()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v1;
  v4 = sub_23815291C();
  v5 = sub_2381550DC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_238060000, v4, v5, "stop boop browser failed: %@", v8, 0xCu);
    sub_238071284(v9, &unk_27DEECA10, &qword_2381588F0);
    MEMORY[0x2383EA8A0](v9, -1, -1);
    MEMORY[0x2383EA8A0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_2380FA854()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_238154FBC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *(v0 + 40);
  v8 = swift_allocObject();
  swift_weakInit();
  sub_238154F8C();

  v9 = sub_238154F7C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;
  v10[5] = v8;

  v12 = sub_2380D2A4C(0, 0, v5, &unk_23815CAD8, v10);
  v13 = *(v1 + 48);
  *(v1 + 48) = v12;
}

uint64_t sub_2380FA9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECA20, &unk_23815CAE0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v5[12] = v9;
  v5[13] = sub_238154F8C();
  v5[14] = sub_238154F7C();
  v10 = *(MEMORY[0x277D54968] + 4);
  v11 = swift_task_alloc();
  v5[15] = v11;
  *v11 = v5;
  v11[1] = sub_2380FAAF8;

  return MEMORY[0x2821B5F38](v9);
}

uint64_t sub_2380FAAF8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v11 = *v1;
  v3[16] = v2;

  v8 = sub_238154F3C();
  v3[17] = v8;
  v3[18] = v7;
  if (v2)
  {
    v9 = sub_2380FB374;
  }

  else
  {
    v9 = sub_2380FAC58;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2380FAC58()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v0[6] = sub_2381533BC();
  swift_beginAccess();
  v4 = v0[13];
  v0[19] = sub_238154F7C();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECA30, &qword_23815CAF0);
  v6 = sub_2380FC4B4();
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_2380FAD58;

  return MEMORY[0x282200308](v0 + 7, v5, v6);
}

uint64_t sub_2380FAD58()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 152);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_238154F3C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_2380FB0D4;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_238154F3C();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_2380FAEF0;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_2380FAEF0()
{
  v1 = v0[19];

  v0[22] = v0[7];
  v2 = v0[17];
  v3 = v0[18];

  return MEMORY[0x2822009F8](sub_2380FAF5C, v2, v3);
}

uint64_t sub_2380FAF5C()
{
  v1 = v0[22];
  if (v1)
  {
    v2 = v0[9];
    if (swift_weakLoadStrong())
    {
      sub_2380FB550(v1);
    }

    v3 = v0[13];
    v0[19] = sub_238154F7C();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECA30, &qword_23815CAF0);
    v5 = sub_2380FC4B4();
    v6 = *(MEMORY[0x277D856D0] + 4);
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_2380FAD58;

    return MEMORY[0x282200308](v0 + 7, v4, v5);
  }

  else
  {
    v8 = v0[14];
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];

    v12 = v0[6];

    (*(v10 + 8))(v9, v11);
    v13 = v0[12];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_2380FB0D4()
{
  v1 = v0[19];
  v0[8] = v0[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
  swift_willThrowTypedImpl();

  v2 = v0[17];
  v3 = v0[18];

  return MEMORY[0x2822009F8](sub_2380FB170, v2, v3);
}

uint64_t sub_2380FB170()
{
  v21 = v0;
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  v5 = v0[6];

  (*(v3 + 8))(v2, v4);
  v6 = v0[21];
  if (qword_27DEEA0C8 != -1)
  {
    swift_once();
  }

  v7 = sub_23815293C();
  __swift_project_value_buffer(v7, qword_27DEEC9B0);
  v8 = v6;
  v9 = sub_23815291C();
  v10 = sub_2381550DC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v0[5] = v6;
    v13 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
    v14 = sub_238154D2C();
    v16 = sub_238085EAC(v14, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_238060000, v9, v10, "error registering for updates to nearby sharing interactions: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2383EA8A0](v12, -1, -1);
    MEMORY[0x2383EA8A0](v11, -1, -1);
  }

  else
  {
  }

  v17 = v0[12];

  v18 = v0[1];

  return v18();
}

uint64_t sub_2380FB374()
{
  v17 = v0;
  v1 = v0[14];

  v2 = v0[16];
  if (qword_27DEEA0C8 != -1)
  {
    swift_once();
  }

  v3 = sub_23815293C();
  __swift_project_value_buffer(v3, qword_27DEEC9B0);
  v4 = v2;
  v5 = sub_23815291C();
  v6 = sub_2381550DC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v0[5] = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
    v10 = sub_238154D2C();
    v12 = sub_238085EAC(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_238060000, v5, v6, "error registering for updates to nearby sharing interactions: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2383EA8A0](v8, -1, -1);
    MEMORY[0x2383EA8A0](v7, -1, -1);
  }

  else
  {
  }

  v13 = v0[12];

  v14 = v0[1];

  return v14();
}

void sub_2380FB550(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v95 = &v91 - v4;
  v5 = sub_2381527EC();
  v99 = *(v5 - 8);
  v6 = *(v99 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v92 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v91 - v9;
  v11 = sub_23815347C();
  v97 = *(v11 - 8);
  v98 = v11;
  v12 = *(v97 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v104 = (&v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v105 = (&v91 - v15);
  v16 = sub_2381534CC();
  v102 = *(v16 - 8);
  v103 = v16;
  v17 = *(v102 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2381534BC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F8, &unk_23815CAC0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v91 - v27;
  if (qword_27DEEA0C8 != -1)
  {
    swift_once();
  }

  v29 = sub_23815293C();
  v30 = __swift_project_value_buffer(v29, qword_27DEEC9B0);

  v94 = v30;
  v31 = sub_23815291C();
  v32 = sub_2381550FC();

  v33 = os_log_type_enabled(v31, v32);
  v100 = v24;
  v101 = v5;
  v96 = v10;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v93 = v20;
    v35 = v34;
    v36 = swift_slowAlloc();
    v109[0] = v36;
    *v35 = 136315138;
    v37 = sub_2381534EC();
    v38 = MEMORY[0x2383E9520](a1, v37);
    v40 = v21;
    v41 = sub_238085EAC(v38, v39, v109);

    *(v35 + 4) = v41;
    v21 = v40;
    _os_log_impl(&dword_238060000, v31, v32, "nearby sharing interactions changed: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x2383EA8A0](v36, -1, -1);
    v42 = v35;
    v20 = v93;
    MEMORY[0x2383EA8A0](v42, -1, -1);
  }

  if (*(a1 + 16))
  {
    v43 = sub_2381534EC();
    v44 = *(v43 - 8);
    (*(v44 + 16))(v28, a1 + ((*(v44 + 80) + 32) & ~*(v44 + 80)), v43);
    (*(v44 + 56))(v28, 0, 1, v43);
    v45 = OBJC_IVAR____TtC17DeviceDiscoveryUI11BoopBrowser_currentNearbySharingInteraction;
    v46 = v106;
    swift_beginAccess();
    sub_2380FC2AC(v28, v46 + v45);
    swift_endAccess();
    sub_2381534DC();
    v48 = v102;
    v47 = v103;
    if ((*(v102 + 88))(v19, v103) != *MEMORY[0x277D54B28])
    {
      (*(v48 + 8))(v19, v47);
      return;
    }

    (*(v48 + 96))(v19, v47);
    v49 = v100;
    (*(v21 + 32))(v100, v19, v20);
    sub_23815349C();
    v51 = v97;
    v50 = v98;
    (*(v97 + 104))(v104, *MEMORY[0x277D54B18], v98);
    sub_2380FC31C();
    sub_238154EAC();
    sub_238154EAC();
    if (v109[0] == v107 && v109[1] == v108)
    {
      v52 = *(v51 + 8);
      v52(v104, v50);
      v52(v105, v50);

      v53 = v101;
      v54 = v99;
    }

    else
    {
      v55 = sub_2381555CC();
      v56 = *(v51 + 8);
      v56(v104, v50);
      v56(v105, v50);

      v53 = v101;
      v54 = v99;
      if ((v55 & 1) == 0)
      {
LABEL_20:
        (*(v21 + 8))(v49, v20);
        return;
      }
    }

    v57 = v95;
    sub_23815348C();
    if ((*(v54 + 48))(v57, 1, v53) == 1)
    {
      sub_238071284(v57, &qword_27DEEC9F0, &qword_23815A090);
      v58 = sub_23815291C();
      v59 = sub_2381550DC();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_238060000, v58, v59, "bonjourListenerUUID is nil", v60, 2u);
        MEMORY[0x2383EA8A0](v60, -1, -1);
      }

      goto LABEL_20;
    }

    v61 = v96;
    (*(v54 + 32))(v96, v57, v53);
    v62 = sub_2381534AC();
    if (v63 >> 60 == 15)
    {
      v64 = sub_23815291C();
      v65 = sub_2381550DC();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_238060000, v64, v65, "publicKey is missing", v66, 2u);
        MEMORY[0x2383EA8A0](v66, -1, -1);
      }

      (*(v54 + 8))(v96, v53);
      goto LABEL_20;
    }

    v67 = v62;
    v68 = v63;
    sub_23815279C();
    v69 = sub_238154D3C();

    bonjour_service = nw_endpoint_create_bonjour_service((v69 + 32), "_asquic._udp", "local");

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBE40, &qword_23815AF60);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_238157F20;
    *(v71 + 32) = v67;
    *(v71 + 40) = v68;
    sub_238085D80(v67, v68);
    v72 = sub_238154ECC();

    v105 = bonjour_service;
    nw_endpoint_set_public_keys();

    v73 = v92;
    (*(v54 + 16))(v92, v61, v53);
    sub_238085D80(v67, v68);
    v74 = sub_23815291C();
    v75 = v54;
    v76 = sub_2381550FC();
    sub_238087244(v67, v68);
    if (os_log_type_enabled(v74, v76))
    {
      v77 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v93 = v20;
      v104 = v78;
      v109[0] = v78;
      *v77 = 136315394;
      v79 = sub_23815279C();
      v80 = v21;
      v82 = v81;
      v83 = v73;
      v84 = *(v75 + 8);
      v84(v83, v101);
      v85 = sub_238085EAC(v79, v82, v109);
      v21 = v80;

      *(v77 + 4) = v85;
      *(v77 + 12) = 2112;
      v86 = sub_23815274C();
      *(v77 + 14) = v86;
      v87 = v103;
      *v103 = v86;
      _os_log_impl(&dword_238060000, v74, v76, "creating bonjour endpoint with UUID:%s, publicKey:%@", v77, 0x16u);
      sub_238071284(v87, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v87, -1, -1);
      v88 = v104;
      __swift_destroy_boxed_opaque_existential_1(v104);
      v20 = v93;
      MEMORY[0x2383EA8A0](v88, -1, -1);
      v89 = v77;
      v53 = v101;
      MEMORY[0x2383EA8A0](v89, -1, -1);
    }

    else
    {

      v90 = v73;
      v84 = *(v75 + 8);
      v84(v90, v53);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2380AEB18(v105);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    sub_238087244(v67, v68);
    v84(v96, v53);
    (*(v21 + 8))(v100, v20);
  }
}

uint64_t sub_2380FC0B0()
{
  sub_2380FC518((v0 + 2));
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  sub_238071284(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI11BoopBrowser_currentNearbySharingInteraction, &qword_27DEEC9F8, &unk_23815CAC0);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BoopBrowser()
{
  result = qword_27DEEC9D8;
  if (!qword_27DEEC9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2380FC198()
{
  sub_2380FC254();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2380FC254()
{
  if (!qword_27DEEC9E8)
  {
    sub_2381534EC();
    v0 = sub_23815530C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEC9E8);
    }
  }
}

uint64_t sub_2380FC2AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F8, &unk_23815CAC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2380FC31C()
{
  result = qword_27DEECA00;
  if (!qword_27DEECA00)
  {
    sub_23815347C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECA00);
  }

  return result;
}

uint64_t sub_2380FC374()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2380FC3AC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2380FC3F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238087150;

  return sub_2380FA9C8(a1, v4, v5, v7, v6);
}

unint64_t sub_2380FC4B4()
{
  result = qword_27DEECA38;
  if (!qword_27DEECA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECA30, &qword_23815CAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECA38);
  }

  return result;
}

uint64_t sub_2380FC540(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[32])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2380FC584(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ButtonLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_2380FC6C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECAC0, &qword_23815CE30);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v33 = &v31 - v6;
  v7 = sub_238153FBC();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECAC8, &qword_23815CE38);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECAD0, &qword_23815CE40);
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  sub_23815388C();
  sub_238153FAC();
  sub_2380711D4(&qword_27DEECAD8, &qword_27DEECAC8, &qword_23815CE38);
  sub_2380FEE44(&qword_27DEECAE0, MEMORY[0x277CDE330]);
  sub_2381543BC();
  (*(v32 + 8))(v10, v7);
  (*(v12 + 8))(v15, v11);
  v24 = v33;
  sub_2381540BC();
  v25 = v17[2];
  v25(v21, v23, v16);
  v26 = v34;
  sub_2380FE79C(v24, v34);
  v27 = v36;
  v25(v36, v21, v16);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECAE8, &qword_23815CE48);
  sub_2380FE79C(v26, &v27[*(v28 + 48)]);
  sub_238071284(v24, &qword_27DEECAC0, &qword_23815CE30);
  v29 = v17[1];
  v29(v23, v16);
  sub_238071284(v26, &qword_27DEECAC0, &qword_23815CE30);
  return (v29)(v21, v16);
}

uint64_t sub_2380FCAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_238153D1C();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECAB8, &qword_23815CE28);
  return sub_2380FC6C4(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_2380FCB38@<X0>(int a1@<W1>, uint64_t a2@<X8>, double a3@<D1>)
{
  v101 = a1;
  v103 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC1A0, &qword_23815B930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v102 = &v86 - v6;
  v88 = sub_238153F6C();
  v7 = *(v88 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v88);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECA50, &qword_23815CD28);
  v11 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v13 = &v86 - v12;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECA58, &qword_23815CD30);
  v14 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v16 = &v86 - v15;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECA60, &qword_23815CD38);
  v17 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v19 = &v86 - v18;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECA68, &qword_23815CD40);
  v20 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v93 = &v86 - v21;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECA70, &qword_23815CD48);
  v22 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v97 = &v86 - v23;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECA78, &qword_23815CD50);
  v24 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v96 = &v86 - v25;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECA80, &qword_23815CD58);
  v26 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v99 = &v86 - v27;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECA88, &unk_23815CD60);
  v28 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v100 = &v86 - v29;
  sub_238153F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE8, &qword_23815C8F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238158810;
  v31 = sub_23815412C();
  *(inited + 32) = v31;
  v32 = sub_23815414C();
  *(inited + 33) = v32;
  v33 = sub_23815413C();
  sub_23815413C();
  if (sub_23815413C() != v31)
  {
    v33 = sub_23815413C();
  }

  sub_23815413C();
  if (sub_23815413C() != v32)
  {
    v33 = sub_23815413C();
  }

  v34 = v97;
  sub_23815377C();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  (*(v7 + 32))(v13, v10, v88);
  v43 = &v13[*(v87 + 36)];
  *v43 = v33;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  sub_2381548DC();
  sub_238153A8C();
  sub_23807121C(v13, v16, &qword_27DEECA50, &qword_23815CD28);
  v44 = &v16[*(v89 + 36)];
  v45 = v109;
  *(v44 + 4) = v108;
  *(v44 + 5) = v45;
  *(v44 + 6) = v110;
  v46 = v105;
  *v44 = v104;
  *(v44 + 1) = v46;
  v47 = v107;
  *(v44 + 2) = v106;
  *(v44 + 3) = v47;
  v48 = sub_2381545FC();
  v49 = sub_2381540FC();
  sub_23807121C(v16, v19, &qword_27DEECA58, &qword_23815CD30);
  v50 = &v19[*(v90 + 36)];
  *v50 = v48;
  v50[8] = v49;
  v51 = v101;
  if (v101 && v101 == 1)
  {
    v52 = sub_2381545AC();
  }

  else
  {
    v52 = sub_2381545DC();
  }

  v53 = v52;
  KeyPath = swift_getKeyPath();
  v55 = v93;
  sub_23807121C(v19, v93, &qword_27DEECA60, &qword_23815CD38);
  v56 = (v55 + *(v92 + 36));
  *v56 = KeyPath;
  v56[1] = v53;
  v57 = (v34 + *(v91 + 36));
  v58 = *(sub_238153A7C() + 20);
  v59 = *MEMORY[0x277CE0118];
  v60 = sub_238153DDC();
  (*(*(v60 - 8) + 104))(v57 + v58, v59, v60);
  *v57 = a3;
  v57[1] = a3;
  *(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC338, &qword_23815BC80) + 36)) = 256;
  sub_23807121C(v55, v34, &qword_27DEECA68, &qword_23815CD40);
  if (v51 > 1u)
  {
    sub_23815421C();
  }

  else
  {
    sub_23815420C();
  }

  v61 = *MEMORY[0x277CE0990];
  v62 = sub_2381541CC();
  v63 = *(v62 - 8);
  v64 = v102;
  (*(v63 + 104))(v102, v61, v62);
  (*(v63 + 56))(v64, 0, 1, v62);
  v65 = sub_23815422C();
  sub_238071284(v64, &qword_27DEEC1A0, &qword_23815B930);
  v66 = swift_getKeyPath();
  v67 = v96;
  sub_23807121C(v34, v96, &qword_27DEECA70, &qword_23815CD48);
  v68 = (v67 + *(v95 + 36));
  *v68 = v66;
  v68[1] = v65;
  v69 = swift_getKeyPath();
  v70 = v99;
  sub_23807121C(v67, v99, &qword_27DEECA78, &qword_23815CD50);
  v71 = v70 + *(v94 + 36);
  *v71 = v69;
  *(v71 + 8) = 1;
  if (sub_238153F8C())
  {
    v72 = 0.9;
  }

  else
  {
    v72 = 1.0;
  }

  sub_2381549DC();
  v74 = v73;
  v76 = v75;
  v77 = v70;
  v78 = v100;
  sub_23807121C(v77, v100, &qword_27DEECA80, &qword_23815CD58);
  v79 = v78 + *(v98 + 36);
  *v79 = v72;
  *(v79 + 8) = v72;
  *(v79 + 16) = v74;
  *(v79 + 24) = v76;
  v80 = sub_23815495C();
  v81 = sub_238153F8C();
  v82 = v78;
  v83 = v103;
  sub_23807121C(v82, v103, &qword_27DEECA88, &unk_23815CD60);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECA90, &qword_23815CE08);
  v85 = v83 + *(result + 36);
  *v85 = v80;
  *(v85 + 8) = v81 & 1;
  return result;
}

uint64_t sub_2380FD51C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 3);
  return sub_2380FCB38(*v1, a1, *(v1 + 2));
}

void (*sub_2380FD618(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_23815375C();
  return sub_2380FD6A0;
}

void sub_2380FD6A0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_2380FD6EC@<X0>(char *a1@<X8>)
{
  v31 = a1;
  v1 = sub_238153F2C();
  v2 = *(v1 - 8);
  v3 = v2;
  v28 = v1;
  v29 = v2;
  v4 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = sub_238153F4C();
  v30 = *(v10 - 8);
  v11 = v30;
  v12 = *(v30 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  sub_238153F5C();
  sub_238153F3C();
  v18 = *(v11 + 16);
  v18(v15, v17, v10);
  v19 = *(v3 + 16);
  v19(v7, v9, v1);
  v20 = v31;
  v18(v31, v15, v10);
  v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECAB0, &qword_23815CE20) + 48)];
  v22 = v28;
  v19(v21, v7, v28);
  v23 = *(v29 + 8);
  v24 = v9;
  v25 = v22;
  v23(v24, v22);
  v26 = *(v30 + 8);
  v26(v17, v10);
  v23(v7, v25);
  return (v26)(v15, v10);
}

uint64_t sub_2380FD97C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_238153D1C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECAA8, &qword_23815CE18);
  return sub_2380FD6EC((a1 + *(v2 + 44)));
}

unint64_t sub_2380FD9D8()
{
  result = qword_27DEECA40;
  if (!qword_27DEECA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECA40);
  }

  return result;
}

unint64_t sub_2380FDA30()
{
  result = qword_27DEECA48;
  if (!qword_27DEECA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECA48);
  }

  return result;
}

char *sub_2380FDAB8(char *a1, int64_t a2, char a3)
{
  result = sub_2380FDC8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2380FDAD8(char *a1, int64_t a2, char a3)
{
  result = sub_2380FDD98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2380FDAF8(char *a1, int64_t a2, char a3)
{
  result = sub_2380FDEA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2380FDB18(size_t a1, int64_t a2, char a3)
{
  result = sub_2380FDFB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2380FDB38(char *a1, int64_t a2, char a3)
{
  result = sub_2380FE18C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2380FDB58(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA8C0, &qword_238158110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA8B0, &unk_238158100);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2380FDC8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECB70, &unk_23815CEE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2380FDD98(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECAF0, &qword_23815CE50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2380FDEA8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEACC8, &qword_238158830);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2380FDFB4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBE48, &qword_23815AF68);
  v10 = *(sub_2381526CC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2381526CC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2380FE18C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECAA0, &qword_23815CE10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_2380FE290(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v30 = a3;
  v31 = a1;
  v32 = a2;
  v29 = sub_23815395C();
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v29);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23815399C();
  sub_2380FEE44(&qword_27DEECA98, MEMORY[0x277CDF7F8]);
  v9 = sub_23815506C();
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = v9;
    v35 = MEMORY[0x277D84F90];
    sub_2380FDB38(0, v9 & ~(v9 >> 63), 0);
    v10 = v35;
    result = sub_23815505C();
    if (v11 < 0)
    {
      __break(1u);
      return result;
    }

    v28 = (v5 + 16);
    v13 = (v5 + 8);
    v27 = a4 & 1;
    do
    {
      v14 = sub_2381550AC();
      v15 = v29;
      (*v28)(v8);
      v14(v34, 0);
      v34[0] = v32 & 1;
      v33 = v27;
      sub_23815393C();
      v17 = v16;
      (*v13)(v8, v15);
      v35 = v10;
      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2380FDB38((v18 > 1), v19 + 1, 1);
        v10 = v35;
      }

      *(v10 + 16) = v19 + 1;
      *(v10 + 8 * v19 + 32) = v17;
      sub_23815509C();
      --v11;
    }

    while (v11);
  }

  v20 = *(v10 + 16);
  if (v20)
  {
    v21 = *(v10 + 32);
    v22 = v20 - 1;
    if (v22)
    {
      v23 = (v10 + 40);
      do
      {
        v24 = *v23++;
        v25 = v24;
        if (v21 < v24)
        {
          v21 = v25;
        }

        --v22;
      }

      while (v22);
    }
  }
}

uint64_t sub_2380FE558(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, char a7)
{
  v12 = sub_23815395C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23815399C();
  sub_2380FEE44(&qword_27DEECA98, MEMORY[0x277CDF7F8]);
  sub_23815505C();
  sub_23815508C();
  result = sub_23815507C();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v18 = result;
    if (result)
    {
      v19 = 0;
      v20 = (v13 + 8);
      do
      {
        sub_2381539AC();
        if (a7)
        {
          v22.origin.x = a1;
          v22.origin.y = a2;
          v22.size.width = a3;
          v22.size.height = a4;
          CGRectGetMidX(v22);
        }

        ++v19;
        sub_2381549CC();
        v21[8] = 0;
        v21[0] = 0;
        sub_23815394C();
        result = (*v20)(v16, v12);
      }

      while (v18 != v19);
    }
  }

  return result;
}

uint64_t sub_2380FE79C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECAC0, &qword_23815CE30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2380FE820()
{
  result = qword_27DEECAF8;
  if (!qword_27DEECAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECA90, &qword_23815CE08);
    sub_2380FE8D8();
    sub_2380711D4(&unk_27DEEAB50, &qword_27DEEA450, &qword_238157AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECAF8);
  }

  return result;
}

unint64_t sub_2380FE8D8()
{
  result = qword_27DEECB00;
  if (!qword_27DEECB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECA88, &unk_23815CD60);
    sub_2380FE964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECB00);
  }

  return result;
}

unint64_t sub_2380FE964()
{
  result = qword_27DEECB08;
  if (!qword_27DEECB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECA80, &qword_23815CD58);
    sub_2380FEA1C();
    sub_2380711D4(&unk_27DEEAB30, &unk_27DEED150, &qword_238158400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECB08);
  }

  return result;
}

unint64_t sub_2380FEA1C()
{
  result = qword_27DEECB10;
  if (!qword_27DEECB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECA78, &qword_23815CD50);
    sub_2380FEAD4();
    sub_2380711D4(&unk_27DEEA9D0, &qword_27DEEA578, &unk_238157C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECB10);
  }

  return result;
}

unint64_t sub_2380FEAD4()
{
  result = qword_27DEECB18;
  if (!qword_27DEECB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECA70, &qword_23815CD48);
    sub_2380FEB8C();
    sub_2380711D4(&qword_27DEEC850, &qword_27DEEC338, &qword_23815BC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECB18);
  }

  return result;
}

unint64_t sub_2380FEB8C()
{
  result = qword_27DEECB20;
  if (!qword_27DEECB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECA68, &qword_23815CD40);
    sub_2380FEC44();
    sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECB20);
  }

  return result;
}

unint64_t sub_2380FEC44()
{
  result = qword_27DEECB28;
  if (!qword_27DEECB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECA60, &qword_23815CD38);
    sub_2380FECFC();
    sub_2380711D4(&qword_27DEEB230, &qword_27DEEB238, &qword_2381596B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECB28);
  }

  return result;
}

unint64_t sub_2380FECFC()
{
  result = qword_27DEECB30;
  if (!qword_27DEECB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECA58, &qword_23815CD30);
    sub_2380FED88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECB30);
  }

  return result;
}

unint64_t sub_2380FED88()
{
  result = qword_27DEECB38;
  if (!qword_27DEECB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECA50, &qword_23815CD28);
    sub_2380FEE44(&qword_27DEECB40, MEMORY[0x277CDE278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECB38);
  }

  return result;
}

uint64_t sub_2380FEE44(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2380FEF18()
{
  result = qword_27DEECB68;
  if (!qword_27DEECB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECB68);
  }

  return result;
}

id sub_2380FEF6C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = sub_238154C8C();
  if (qword_27DEEA0D8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC00, &unk_23815B5A0);
  v7 = sub_238154ECC();
  v23[0] = 0;
  v8 = [v3 unifiedContactWithIdentifier:v6 keysToFetch:v7 error:v23];

  v9 = v23[0];
  if (!v8)
  {
    v10 = v9;
    v11 = sub_23815266C();

    swift_willThrow();
    if (qword_27DEEA0D0 != -1)
    {
      swift_once();
    }

    v12 = sub_23815293C();
    __swift_project_value_buffer(v12, qword_27DEECB80);

    v13 = v11;
    v14 = sub_23815291C();
    v15 = sub_2381550DC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v16 = 136315394;
      *(v16 + 4) = sub_238085EAC(a1, a2, v23);
      *(v16 + 12) = 2112;
      v19 = v11;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v20;
      *v17 = v20;
      _os_log_impl(&dword_238060000, v14, v15, "Unable to fetch contact with identifier: %s with error: %@", v16, 0x16u);
      sub_2380FF408(v17);
      MEMORY[0x2383EA8A0](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x2383EA8A0](v18, -1, -1);
      MEMORY[0x2383EA8A0](v16, -1, -1);
    }

    else
    {
    }

    v8 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_2380FF220()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEECB80);
  v1 = __swift_project_value_buffer(v0, qword_27DEECB80);
  if (qword_27DEEA038 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DEF3198);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_2380FF2E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC040, &unk_23815AF90);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23815CEF0;
  v1 = *MEMORY[0x277CBD000];
  v2 = *MEMORY[0x277CBCFF8];
  *(v0 + 32) = *MEMORY[0x277CBD000];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CBCFC0];
  v4 = *MEMORY[0x277CBD098];
  *(v0 + 48) = *MEMORY[0x277CBCFC0];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277CBD028];
  v6 = *MEMORY[0x277CBD158];
  *(v0 + 64) = *MEMORY[0x277CBD028];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277CBD170];
  *(v0 + 80) = *MEMORY[0x277CBD170];
  v8 = objc_opt_self();
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  result = [v8 descriptorForRequiredKeys];
  *(v0 + 88) = result;
  qword_27DEECB98 = v0;
  return result;
}

uint64_t sub_2380FF408(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECA10, &qword_2381588F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2380FF470()
{
  v0 = sub_238154C8C();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (v1)
  {
    qword_27DEF3270 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2380FF528()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECDE0, &unk_23815D000);
  swift_getOpaqueTypeConformance2();
  sub_2380FFAAC();
  sub_2380FFB00(&qword_27DEECC18);
  sub_2380FFB00(&qword_27DEECC20);
  sub_2380FFB00(&unk_27DEECE10);
  return sub_23815298C();
}

uint64_t DDDeviceAdvertiserViewConfiguration.serviceIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

DeviceDiscoveryUI::DDDeviceAdvertiserViewConfiguration_optional __swiftcall DDDeviceAdvertiserViewConfiguration.init(scene:)(UIScene *scene)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECC50, &qword_23815CF00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC08, qword_23815D020);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  sub_23815521C();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_238071284(v7, &unk_27DEECC50, &qword_23815CF00);
    if (qword_27DEEA048 != -1)
    {
      swift_once();
    }

    v13 = sub_23815293C();
    __swift_project_value_buffer(v13, qword_27DEF31C8);
    v14 = sub_23815291C();
    v15 = sub_2381550DC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_238060000, v14, v15, "Unable to get hostStorage", v16, 2u);
      MEMORY[0x2383EA8A0](v16, -1, -1);
    }

LABEL_14:
    *v3 = 0;
    v3[1] = 0;
    goto LABEL_15;
  }

  (*(v9 + 32))(v12, v7, v8);
  swift_getOpaqueTypeConformance2();
  sub_2380FFAAC();
  sub_2380FFB00(&qword_27DEECC18);
  sub_2380FFB00(&qword_27DEECC20);
  sub_2380FFB00(&unk_27DEECE10);
  sub_23815296C();
  v20 = v27;
  if (!v27)
  {
    if (qword_27DEEA048 != -1)
    {
      swift_once();
    }

    v22 = sub_23815293C();
    __swift_project_value_buffer(v22, qword_27DEF31C8);
    v23 = sub_23815291C();
    v24 = sub_2381550DC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_238060000, v23, v24, "Unable to get browseDescriptor from hostStorage", v25, 2u);
      MEMORY[0x2383EA8A0](v25, -1, -1);
    }

    v17 = (*(v9 + 8))(v12, v8);
    goto LABEL_14;
  }

  v21 = v26;
  (*(v9 + 8))(v12, v8);

  *v3 = v21;
  v3[1] = v20;
LABEL_15:
  result.value.serviceIdentifier._object = v18;
  result.value.serviceIdentifier._countAndFlagsBits = v17;
  result.is_nil = v19;
  return result;
}

unint64_t sub_2380FFAAC()
{
  result = qword_27DEECC10;
  if (!qword_27DEECC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECC10);
  }

  return result;
}

uint64_t sub_2380FFB00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DEECE00, &qword_23815AD70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2380FFB90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2380FFBD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2380FFC44(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC28, &qword_23815CFF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECDE0, &unk_23815D000);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  sub_2381551EC();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_238071284(v8, &qword_27DEECC28, &qword_23815CFF8);
  }

  v15 = (*(v10 + 32))(v13, v8, v9);
  MEMORY[0x28223BE20](v15);
  *(&v23 - 4) = v13;
  *(&v23 - 3) = a2;
  *(&v23 - 2) = a3;
  swift_getOpaqueTypeConformance2();
  sub_23815297C();
  if (qword_27DEEA048 != -1)
  {
    swift_once();
  }

  v16 = sub_23815293C();
  __swift_project_value_buffer(v16, qword_27DEF31C8);

  v17 = sub_23815291C();
  v18 = sub_2381550FC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24 = v20;
    *v19 = 136315138;
    if (a3)
    {
      v21 = a3;
    }

    else
    {
      a2 = 0x676E697373696D3CLL;
      v21 = 0xE90000000000003ELL;
    }

    v22 = sub_238085EAC(a2, v21, &v24);

    *(v19 + 4) = v22;
    _os_log_impl(&dword_238060000, v17, v18, "updated service identifier to %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x2383EA8A0](v20, -1, -1);
    MEMORY[0x2383EA8A0](v19, -1, -1);
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_2380FFF9C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_2380FF528();
}

uint64_t sub_2380FFFA8()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEECC30);
  v1 = __swift_project_value_buffer(v0, qword_27DEECC30);
  if (qword_27DEEA048 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DEF31C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2381000B0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v22 = a6;
  v23 = a7;
  v20 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC48, &unk_23815D010);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v19 - v12;
  v24 = a2;
  v25 = a3;

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECDE0, &unk_23815D000);
  swift_getOpaqueTypeConformance2();
  sub_2381033B0();
  sub_2380FFB00(&qword_27DEECC18);
  sub_2380FFB00(&qword_27DEECC20);
  sub_2380FFB00(&unk_27DEECE10);
  v21 = v14;
  sub_23815298C();
  if (a4)
  {
    v15 = sub_23815275C();
  }

  else
  {
    v15 = 0;
    v16 = 0xF000000000000000;
  }

  v24 = v15;
  v25 = v16;
  sub_238102250();
  v19[1] = sub_238102128(&unk_27DEECCA0, sub_238102080);
  sub_238102128(&qword_27DEECCB8, sub_2381020D4);
  sub_238102128(&qword_27DEECCC8, sub_2381021A0);
  sub_23815298C();
  sub_238103404(v20, v13);
  v17 = type metadata accessor for HashableDescriptor(0);
  (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
  sub_238101EF4();
  sub_238101F90(&qword_27DEECC68, &qword_27DEECC70);
  sub_238101F90(&qword_27DEECC78, &qword_27DEECC80);
  sub_238101F90(&qword_27DEECC88, &qword_27DEECC90);
  sub_23815298C();
  v24 = v22;
  v25 = v23;
  sub_238085D80(v22, v23);
  sub_23810202C();
  return sub_23815298C();
}

id DDDeviceDiscoveryViewSettingsSwift.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DDDeviceDiscoveryViewSettingsSwift();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DDDeviceDiscoveryViewConfiguration.serviceString.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DDDeviceDiscoveryViewConfiguration.publicKey.getter()
{
  v1 = *(v0 + 16);
  sub_2380E6764(v1, *(v0 + 24));
  return v1;
}

uint64_t DDDeviceDiscoveryViewConfiguration.browseDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DDDeviceDiscoveryViewConfiguration(0) + 24);
  v4 = sub_238152E1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DDDeviceDiscoveryViewConfiguration.browseParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for DDDeviceDiscoveryViewConfiguration(0) + 28));
}

uint64_t DDDeviceDiscoveryViewConfiguration.init(scene:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_238152E1C();
  v5 = *(v4 - 8);
  v87 = v4;
  v88 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v84 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v86 = v78 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC48, &unk_23815D010);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v78 - v12;
  v14 = type metadata accessor for HashableDescriptor(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v85 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECC50, &qword_23815CF00);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v78 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC08, qword_23815D020);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v78 - v25;
  v27 = type metadata accessor for DDDeviceDiscoveryViewConfiguration(0);
  v89 = *(v27 - 8);
  v28 = *(v89 + 64);
  MEMORY[0x28223BE20](v27);
  v83 = v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = a1;
  sub_23815521C();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_238071284(v21, &unk_27DEECC50, &qword_23815CF00);
    if (qword_27DEEA048 != -1)
    {
      swift_once();
    }

    v30 = sub_23815293C();
    __swift_project_value_buffer(v30, qword_27DEF31C8);
    v31 = sub_23815291C();
    v32 = sub_2381550DC();
    v33 = v27;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_238060000, v31, v32, "Unable to get hostStorage", v34, 2u);
      MEMORY[0x2383EA8A0](v34, -1, -1);
    }

    v35 = 1;
    return (*(v89 + 56))(a2, v35, 1, v33);
  }

  v82 = v27;
  v79 = v23;
  v80 = a2;
  (*(v23 + 32))(v26, v21, v22);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_238101EF4();
  sub_238101F90(&qword_27DEECC68, &qword_27DEECC70);
  sub_238101F90(&qword_27DEECC78, &qword_27DEECC80);
  sub_238101F90(&qword_27DEECC88, &qword_27DEECC90);
  v81 = v26;
  v78[2] = OpaqueTypeConformance2;
  sub_23815296C();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_238071284(v13, &qword_27DEECC48, &unk_23815D010);
    if (qword_27DEEA048 != -1)
    {
      swift_once();
    }

    v37 = sub_23815293C();
    __swift_project_value_buffer(v37, qword_27DEF31C8);
    v38 = sub_23815291C();
    v39 = sub_2381550DC();
    v40 = os_log_type_enabled(v38, v39);
    a2 = v80;
    v41 = v81;
    v33 = v82;
    if (v40)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_238060000, v38, v39, "Unable to get browseDescriptor from hostStorage", v42, 2u);
      MEMORY[0x2383EA8A0](v42, -1, -1);
    }

    (*(v79 + 8))(v41, v22);
    v35 = 1;
    return (*(v89 + 56))(a2, v35, 1, v33);
  }

  v43 = v85;
  sub_2381022A4(v13, v85, type metadata accessor for HashableDescriptor);
  v44 = v87;
  v45 = *(v88 + 16);
  v46 = v86;
  v45(v86, v43, v87);
  if (qword_27DEEA048 != -1)
  {
    swift_once();
  }

  v47 = sub_23815293C();
  v48 = __swift_project_value_buffer(v47, qword_27DEF31C8);
  v49 = v84;
  v45(v84, v46, v44);
  v78[1] = v48;
  v50 = sub_23815291C();
  v51 = sub_2381550FC();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v78[0] = v47;
    v54 = v53;
    v91 = v53;
    *v52 = 136315138;
    v55 = [sub_238152D6C() description];
    swift_unknownObjectRelease();
    v56 = sub_238154CCC();
    v58 = v57;

    v59 = *(v88 + 8);
    v59(v49, v44);
    v60 = sub_238085EAC(v56, v58, &v91);

    *(v52 + 4) = v60;
    _os_log_impl(&dword_238060000, v50, v51, "Got browseDescriptor: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    v61 = v54;
    v47 = v78[0];
    MEMORY[0x2383EA8A0](v61, -1, -1);
    MEMORY[0x2383EA8A0](v52, -1, -1);
  }

  else
  {

    v59 = *(v88 + 8);
    v59(v49, v44);
  }

  v33 = v82;
  sub_23810202C();
  sub_238102128(&unk_27DEECCA0, sub_238102080);
  sub_238102128(&qword_27DEECCB8, sub_2381020D4);
  sub_238102128(&qword_27DEECCC8, sub_2381021A0);
  v62 = v81;
  sub_23815296C();
  v84 = v92;
  if (v92 >> 60 == 15)
  {
    v63 = sub_23815291C();
    v64 = sub_2381550DC();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_238060000, v63, v64, "Unable to get parametersData from hostStorage", v65, 2u);
      MEMORY[0x2383EA8A0](v65, -1, -1);
    }

    v59(v86, v87);
    sub_2381021F4(v85);
    (*(v79 + 8))(v62, v22);
    v35 = 1;
    a2 = v80;
    return (*(v89 + 56))(a2, v35, 1, v33);
  }

  v82 = v91;
  sub_238102250();
  sub_23815296C();
  v66 = v92;
  if (v92 >> 60 == 15)
  {
    if (qword_27DEEA0E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v47, qword_27DEECC30);
    v67 = sub_23815291C();
    v68 = sub_2381550DC();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_238060000, v67, v68, "Did not get publicKey from hostStorage, boop will fail", v69, 2u);
      v70 = 0;
      v66 = 0xF000000000000000;
LABEL_31:
      v72 = v82;
      MEMORY[0x2383EA8A0](v69, -1, -1);
      v73 = v84;
      goto LABEL_34;
    }

    v70 = 0;
    v66 = 0xF000000000000000;
  }

  else
  {
    v70 = v91;
    if (qword_27DEEA0E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v47, qword_27DEECC30);
    v67 = sub_23815291C();
    v71 = sub_2381550FC();
    if (os_log_type_enabled(v67, v71))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_238060000, v67, v71, "Successfully got publicKey from hostStorage", v69, 2u);
      goto LABEL_31;
    }
  }

  v73 = v84;
  v72 = v82;
LABEL_34:

  MEMORY[0x28223BE20](v74);
  v78[-2] = v72;
  v78[-1] = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECD40, &qword_23815B938);
  sub_23815273C();
  result = nw_parameters_create_from_dictionary();
  if (result)
  {
    sub_238152CEC();
    v76 = sub_238152CFC();
    sub_238087244(v72, v73);
    swift_unknownObjectRelease();

    sub_2381021F4(v85);
    (*(v79 + 8))(v62, v22);
    v77 = v83;
    *v83 = 0;
    *(v77 + 1) = 0;
    *(v77 + 2) = v70;
    *(v77 + 3) = v66;
    (*(v88 + 32))(&v77[*(v33 + 24)], v86, v87);
    *&v77[*(v33 + 28)] = v76;
    a2 = v80;
    sub_2381022A4(v77, v80, type metadata accessor for DDDeviceDiscoveryViewConfiguration);
    v35 = 0;
    return (*(v89 + 56))(a2, v35, 1, v33);
  }

  __break(1u);
  return result;
}

uint64_t sub_238101488()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC48, &unk_23815D010);
  __swift_allocate_value_buffer(v0, qword_27DEF3278);
  v1 = __swift_project_value_buffer(v0, qword_27DEF3278);
  v2 = type metadata accessor for HashableDescriptor(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_238101528@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DEEA0F0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC48, &unk_23815D010);
  v3 = __swift_project_value_buffer(v2, qword_27DEF3278);

  return sub_2381029FC(v3, a1);
}

double sub_2381015AC@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_23815BDB0;
  return result;
}

uint64_t HashableDescriptor.descriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238152E1C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HashableDescriptor.hashValue.getter()
{
  sub_23815568C();
  v0 = [sub_238152D6C() hash];
  swift_unknownObjectRelease();
  MEMORY[0x2383E9CD0](v0);
  return sub_2381556BC();
}

uint64_t HashableDescriptor.hash(into:)()
{
  v0 = [sub_238152D6C() hash];
  swift_unknownObjectRelease();
  return MEMORY[0x2383E9CD0](v0);
}

uint64_t sub_238101704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2381555CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2381017AC(uint64_t a1)
{
  v2 = sub_2381023CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2381017E8(uint64_t a1)
{
  v2 = sub_2381023CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HashableDescriptor.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECD48, &qword_23815D040);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2381023CC();
  sub_2381556DC();
  sub_238152E1C();
  sub_238101F48(&qword_27DEECD58, MEMORY[0x277CD90E0]);
  sub_23815557C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t HashableDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_238152E1C();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECD60, &qword_23815D048);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for HashableDescriptor(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2381023CC();
  sub_2381556CC();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_238101F48(&qword_27DEECD68, MEMORY[0x277CD90E0]);
    sub_23815556C();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_2381022A4(v14, v17, type metadata accessor for HashableDescriptor);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238101C38()
{
  sub_23815568C();
  v0 = [sub_238152D6C() hash];
  swift_unknownObjectRelease();
  MEMORY[0x2383E9CD0](v0);
  return sub_2381556BC();
}

uint64_t sub_238101CA4()
{
  v0 = [sub_238152D6C() hash];
  swift_unknownObjectRelease();
  return MEMORY[0x2383E9CD0](v0);
}

uint64_t sub_238101CF8()
{
  sub_23815568C();
  v0 = [sub_238152D6C() hash];
  swift_unknownObjectRelease();
  MEMORY[0x2383E9CD0](v0);
  return sub_2381556BC();
}

uint64_t sub_238101D7C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECD48, &qword_23815D040);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2381023CC();
  sub_2381556DC();
  sub_238152E1C();
  sub_238101F48(&qword_27DEECD58, MEMORY[0x277CD90E0]);
  sub_23815557C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_238101EF4()
{
  result = qword_27DEECC60;
  if (!qword_27DEECC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECC60);
  }

  return result;
}

uint64_t sub_238101F48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238101F90(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECC48, &unk_23815D010);
    sub_238101F48(a2, type metadata accessor for HashableDescriptor);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23810202C()
{
  result = qword_27DEECC98;
  if (!qword_27DEECC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECC98);
  }

  return result;
}

unint64_t sub_238102080()
{
  result = qword_27DEECCB0;
  if (!qword_27DEECCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECCB0);
  }

  return result;
}

unint64_t sub_2381020D4()
{
  result = qword_27DEECCC0;
  if (!qword_27DEECCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECCC0);
  }

  return result;
}

uint64_t sub_238102128(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEADE8, &qword_238158E00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2381021A0()
{
  result = qword_27DEECCD0;
  if (!qword_27DEECCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECCD0);
  }

  return result;
}

uint64_t sub_2381021F4(uint64_t a1)
{
  v2 = type metadata accessor for HashableDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_238102250()
{
  result = qword_27DEECCD8;
  if (!qword_27DEECCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECCD8);
  }

  return result;
}

uint64_t sub_2381022A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL _s17DeviceDiscoveryUI18HashableDescriptorV2eeoiySbAC_ACtFZ_0()
{
  sub_23815568C();
  v0 = [sub_238152D6C() hash];
  swift_unknownObjectRelease();
  MEMORY[0x2383E9CD0](v0);
  v1 = sub_2381556BC();
  sub_23815568C();
  v2 = [sub_238152D6C() hash];
  swift_unknownObjectRelease();
  MEMORY[0x2383E9CD0](v2);
  return v1 == sub_2381556BC();
}

unint64_t sub_2381023CC()
{
  result = qword_27DEECD50;
  if (!qword_27DEECD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECD50);
  }

  return result;
}

uint64_t sub_238102494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238152E1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_238102568(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238152E1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_238102624()
{
  sub_2381026F8(319, &qword_27DEED710);
  if (v0 <= 0x3F)
  {
    sub_2381026F8(319, &unk_27DEECD90);
    if (v1 <= 0x3F)
    {
      sub_238152E1C();
      if (v2 <= 0x3F)
      {
        sub_238152CEC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2381026F8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23815530C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_238102758(uint64_t a1, uint64_t a2)
{
  v4 = sub_238152E1C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2381027D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_238152E1C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_238102848()
{
  result = sub_238152E1C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2381028F8()
{
  result = qword_27DEECDB8;
  if (!qword_27DEECDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECDB8);
  }

  return result;
}

unint64_t sub_238102950()
{
  result = qword_27DEECDC0;
  if (!qword_27DEECDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECDC0);
  }

  return result;
}

unint64_t sub_2381029A8()
{
  result = qword_27DEECDC8;
  if (!qword_27DEECDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECDC8);
  }

  return result;
}

uint64_t sub_2381029FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC48, &unk_23815D010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_DWORD *sub_238102A6C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5, unint64_t a6)
{
  v87 = a3;
  v88 = a6;
  v91 = a4;
  v89 = a2;
  v7 = type metadata accessor for HashableDescriptor(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECDD0, &unk_23815D3D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v82 - v13;
  v15 = sub_238152E1C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v90 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC28, &qword_23815CFF8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v82 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECDE0, &unk_23815D000);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v82 - v26;
  sub_2381551EC();
  v28 = *(v24 + 48);
  v92 = v23;
  if (v28(v22, 1, v23) == 1)
  {
    return sub_238071284(v22, &qword_27DEECC28, &qword_23815CFF8);
  }

  (*(v24 + 32))(v27, v22, v92);
  swift_unknownObjectRetain();
  sub_238152E2C();
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v82 = v24;
    v34 = v90;
    (*(v16 + 32))(v90, v14, v15);
    v35 = *(v16 + 16);
    v86 = v15;
    v35(v10, v34, v15);
    result = nw_parameters_copy_dictionary();
    if (result)
    {
      v36 = getDataFromXPC(_:)(result);
      v38 = v37;
      v39 = swift_unknownObjectRelease();
      MEMORY[0x28223BE20](v39);
      v40 = v89;
      *(&v82 - 8) = v27;
      *(&v82 - 7) = v40;
      v41 = v87;
      v42 = v91;
      *(&v82 - 6) = v87;
      *(&v82 - 5) = v42;
      *(&v82 - 4) = v10;
      *(&v82 - 3) = v36;
      v83 = v36;
      v88 = v38;
      *(&v82 - 2) = v38;
      swift_getOpaqueTypeConformance2();
      sub_23815297C();
      if (qword_27DEEA048 != -1)
      {
        swift_once();
      }

      v43 = sub_23815293C();
      __swift_project_value_buffer(v43, qword_27DEF31C8);

      v44 = sub_23815291C();
      v45 = sub_2381550FC();

      v46 = os_log_type_enabled(v44, v45);
      v84 = v10;
      v85 = v27;
      if (v46)
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v93 = v48;
        *v47 = 136315138;
        if (v41)
        {
          v49 = v89;
        }

        else
        {
          v49 = 0x676E697373696D3CLL;
        }

        if (v41)
        {
          v50 = v41;
        }

        else
        {
          v50 = 0xE90000000000003ELL;
        }

        v51 = sub_238085EAC(v49, v50, &v93);

        *(v47 + 4) = v51;
        _os_log_impl(&dword_238060000, v44, v45, "Updated service identifier to %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v48);
        MEMORY[0x2383EA8A0](v48, -1, -1);
        MEMORY[0x2383EA8A0](v47, -1, -1);
      }

      v52 = v91;
      v53 = v91;
      v54 = sub_23815291C();
      v55 = sub_2381550FC();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = 138412290;
        *(v56 + 4) = v53;
        *v57 = v52;
        v58 = v53;
        _os_log_impl(&dword_238060000, v54, v55, "Updated public key to %@", v56, 0xCu);
        sub_238071284(v57, &unk_27DEECA10, &qword_2381588F0);
        MEMORY[0x2383EA8A0](v57, -1, -1);
        MEMORY[0x2383EA8A0](v56, -1, -1);
      }

      v59 = a5;
      swift_unknownObjectRetain();
      v60 = sub_23815291C();
      v61 = sub_2381550FC();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v93 = v63;
        *v62 = 136315138;
        v64 = [v59 description];
        v65 = sub_238154CCC();
        v67 = v66;

        v68 = sub_238085EAC(v65, v67, &v93);

        *(v62 + 4) = v68;
        _os_log_impl(&dword_238060000, v60, v61, "Updated browse descriptor to %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x2383EA8A0](v63, -1, -1);
        MEMORY[0x2383EA8A0](v62, -1, -1);
      }

      v70 = v84;
      v69 = v85;
      v71 = v86;
      v72 = v83;
      v73 = v88;
      sub_238085D80(v83, v88);
      v74 = sub_23815291C();
      v75 = sub_2381550FC();
      if (!os_log_type_enabled(v74, v75))
      {
        sub_238085CA0(v72, v73);
        sub_238085CA0(v72, v73);

LABEL_37:
        (*(v16 + 8))(v90, v71);
        sub_2381021F4(v70);
        return (*(v82 + 8))(v69, v92);
      }

      result = swift_slowAlloc();
      *result = 134217984;
      v76 = v73 >> 62;
      if ((v73 >> 62) > 1)
      {
        if (v76 != 2)
        {
          v77 = 0;
          goto LABEL_36;
        }

        v79 = *(v72 + 16);
        v78 = *(v72 + 24);
        v80 = __OFSUB__(v78, v79);
        v77 = v78 - v79;
        if (!v80)
        {
          goto LABEL_36;
        }

        __break(1u);
      }

      else if (!v76)
      {
        v77 = BYTE6(v73);
LABEL_36:
        *(result + 1) = v77;
        v81 = result;
        sub_238085CA0(v72, v73);
        _os_log_impl(&dword_238060000, v74, v75, "Updated browse params with data of length %ld", v81, 0xCu);
        MEMORY[0x2383EA8A0](v81, -1, -1);

        sub_238085CA0(v72, v73);
        v71 = v86;
        goto LABEL_37;
      }

      LODWORD(v77) = HIDWORD(v72) - v72;
      if (!__OFSUB__(HIDWORD(v72), v72))
      {
        v77 = v77;
        goto LABEL_36;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_238071284(v14, &unk_27DEECDD0, &unk_23815D3D0);
  if (qword_27DEEA0E8 != -1)
  {
    swift_once();
  }

  v30 = sub_23815293C();
  __swift_project_value_buffer(v30, qword_27DEECC30);
  v31 = sub_23815291C();
  v32 = sub_2381550DC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_238060000, v31, v32, "Unable to create nwDescriptor", v33, 2u);
    MEMORY[0x2383EA8A0](v33, -1, -1);
  }

  return (*(v24 + 8))(v27, v92);
}

unint64_t sub_2381033B0()
{
  result = qword_27DEECDF0;
  if (!qword_27DEECDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECDF0);
  }

  return result;
}

uint64_t sub_238103404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HashableDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238103484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_23815538C();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_238105DD8(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = sub_238152EBC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t sub_238103568()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_238152A9C();
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_238152A9C();
  v3 = sub_2381043B4();
  v4 = OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_browser;
  v5 = *&v2[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_browser];
  *&v2[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_browser] = v3;

  if (*&v2[v4])
  {
    v7 = *&v2[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_queue];

    sub_238152E7C();
  }

  return result;
}

uint64_t sub_238103664()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_238152A9C();
  if (*&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_browser])
  {
    v2 = *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_browser];

    sub_238152ECC();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  sub_238152A9C();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_238152A9C();
}

void sub_238103770(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v47 = a2;
  v3 = sub_238154D0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA10, &qword_23815D910);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v44 - v10;
  v12 = sub_238152BAC();
  v13 = *(v12 - 8);
  v48 = v12;
  v49 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  v45 = v2;
  v23 = *&v2[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_currentResults];

  sub_238103484(v24, v11);

  v25 = sub_238152EBC();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v11, 1, v25) == 1)
  {
    sub_238105BC0(v11);
    if (qword_27DEEA0F8 != -1)
    {
      swift_once();
    }

    v27 = sub_23815293C();
    __swift_project_value_buffer(v27, qword_27DEECE20);
    v28 = sub_23815291C();
    v29 = sub_2381550DC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_238060000, v28, v29, "Pairing attempt with no found endpoints", v30, 2u);
      MEMORY[0x2383EA8A0](v30, -1, -1);
    }
  }

  else
  {
    sub_238152EAC();
    (*(v26 + 8))(v11, v25);
    v31 = v48;
    (*(v49 + 32))(v22, v20, v48);
    sub_238154CFC();
    v32 = sub_238154CDC();
    v34 = v33;
    (*(v4 + 8))(v7, v3);
    if (v34 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      sub_238085D80(v32, v34);
      sub_238152B2C();
      sub_238152CEC();
      sub_238152CAC();
      v35 = v49;
      (*(v49 + 16))(v17, v22, v31);
      v36 = sub_238152C6C();
      v37 = *(v36 + 48);
      v38 = *(v36 + 52);
      swift_allocObject();

      v39 = sub_238152C2C();
      v40 = swift_allocObject();
      v41 = v45;
      *(v40 + 16) = v45;
      *(v40 + 24) = v39;
      v42 = v41;

      sub_238086B74(sub_238105C68);
      sub_238152C1C();

      v43 = *&v42[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_queue];
      sub_238152C4C();

      sub_238087244(v32, v34);
      (*(v35 + 8))(v22, v31);
    }
  }
}

uint64_t sub_238103C2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v1;
}

uint64_t sub_238103CA0()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEECE20);
  __swift_project_value_buffer(v0, qword_27DEECE20);
  v1 = _DDUICoreLog();
  return sub_23815294C();
}

id sub_238103CFC()
{
  result = [objc_allocWithZone(type metadata accessor for _DDPinPairingManager()) init];
  qword_27DEF3290 = result;
  return result;
}

uint64_t sub_238103D30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v5;
  return result;
}

uint64_t sub_238103DB0(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_238152A9C();
}

uint64_t sub_238103E20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v5;
  return result;
}

uint64_t sub_238103EA0(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_238152A9C();
}

id sub_238103F10()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_23815516C();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_23815513C();
  v5 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238154A2C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECE88, &qword_23815D600);
  v10 = *(v28 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v28);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9E0, &unk_23815D810);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v19 = OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_browser;
  *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_browser] = 0;
  v20 = OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager__isSearching;
  LOBYTE(v37) = 0;
  sub_238152A5C();
  v21 = *(v15 + 32);
  v21(&v1[v20], v18, v14);
  v22 = OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager__pairingAvailable;
  LOBYTE(v37) = 0;
  sub_238152A5C();
  v21(&v1[v22], v18, v14);
  v23 = OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager__pairingState;
  LOBYTE(v37) = 0;
  sub_238152A5C();
  (*(v10 + 32))(&v1[v23], v13, v28);
  v24 = *&v1[v19];
  *&v1[v19] = 0;

  *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_currentResults] = MEMORY[0x277D84FA0];
  v25 = &v1[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_serviceIdentifier];
  *v25 = 0;
  *(v25 + 1) = 0xE000000000000000;
  sub_2380D0AA8();
  sub_238154A1C();
  v37 = MEMORY[0x277D84F90];
  sub_238105B24(&unk_27DEECFA0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEBA60, &qword_23815A710);
  sub_238105B6C(&unk_27DEECFB0, &unk_27DEEBA60, &qword_23815A710);
  sub_23815537C();
  (*(v33 + 104))(v32, *MEMORY[0x277D85260], v34);
  *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_queue] = sub_23815519C();
  v36.receiver = v1;
  v36.super_class = ObjectType;
  return objc_msgSendSuper2(&v36, sel_init);
}

uint64_t sub_2381043B4()
{
  v0 = sub_238152E1C();
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - v5;
  v7 = sub_238152D5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECE90, &qword_23815D608);
  v15 = sub_238152D0C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_238157F20;
  (*(v16 + 104))(v19 + v18, *MEMORY[0x277CD8E60], v15);
  sub_238152D4C();
  v20 = v32;
  v21 = *&v32[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_serviceIdentifier];
  v22 = *&v32[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_serviceIdentifier + 8];
  (*(v8 + 16))(v12, v14, v7);

  sub_238152D7C();
  sub_238152CEC();
  sub_238152CAC();
  sub_238152C8C();
  v24 = v33;
  v23 = v34;
  (*(v33 + 16))(v4, v6, v34);
  v25 = sub_238152EDC();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = sub_238152E5C();
  sub_238086B74(sub_2381050A8);
  sub_238152E3C();
  *(swift_allocObject() + 16) = v20;
  v29 = v20;
  sub_238086B74(sub_238105A84);
  sub_238152E4C();

  (*(v24 + 8))(v6, v23);
  (*(v8 + 8))(v14, v7);

  return v28;
}

uint64_t sub_238104778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v4 = sub_2381549FC();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238154A2C();
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_238152C3C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2380D0AA8();
  v25 = sub_23815517C();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v13 + 16))(v15, a1, v12);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  (*(v13 + 32))(v19 + v17, v15, v12);
  *(v19 + v18) = v24;
  aBlock[4] = sub_238105D48;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238106D10;
  aBlock[3] = &block_descriptor_36;
  v20 = _Block_copy(aBlock);

  sub_238154A0C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_238105B24(&qword_27DEEBC88, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECFC0, &qword_23815ABE0);
  sub_238105B6C(&qword_27DEEBC90, &qword_27DEECFC0, &qword_23815ABE0);
  sub_23815537C();
  v21 = v25;
  MEMORY[0x2383E97C0](0, v11, v7, v20);
  _Block_release(v20);

  (*(v28 + 8))(v7, v4);
  return (*(v26 + 8))(v11, v27);
}

void sub_238104B4C(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = sub_238152C3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v45 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v51 = v10;
    if (qword_27DEEA0F8 != -1)
    {
      swift_once();
    }

    v18 = sub_23815293C();
    v19 = __swift_project_value_buffer(v18, qword_27DEECE20);
    v20 = *(v6 + 16);
    v50 = a2;
    v52 = v20;
    v20(v15, a2, v5);
    v49 = v19;
    v21 = sub_23815291C();
    v22 = sub_2381550FC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v48 = v6;
      v24 = v23;
      v25 = swift_slowAlloc();
      v47 = a3;
      v26 = v25;
      v53 = v25;
      *v24 = 136315138;
      v52(v13, v15, v5);
      v27 = sub_238154D2C();
      v46 = v17;
      v29 = v28;
      v30 = *(v48 + 8);
      v30(v15, v5);
      v31 = sub_238085EAC(v27, v29, &v53);
      v17 = v46;

      *(v24 + 4) = v31;
      _os_log_impl(&dword_238060000, v21, v22, "Pairing connection state changed to %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x2383EA8A0](v26, -1, -1);
      v32 = v24;
      v6 = v48;
      MEMORY[0x2383EA8A0](v32, -1, -1);
    }

    else
    {

      v30 = *(v6 + 8);
      v30(v15, v5);
    }

    v33 = v51;
    v52(v51, v50, v5);
    v34 = (*(v6 + 88))(v33, v5);
    if (v34 == *MEMORY[0x277CD8DE8])
    {
      v35 = sub_23815291C();
      v36 = sub_2381550FC();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_238060000, v35, v36, "Pairing failed", v37, 2u);
        MEMORY[0x2383EA8A0](v37, -1, -1);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v53) = 2;
      v38 = v17;
      sub_238152A9C();
      sub_238152C5C();

      goto LABEL_13;
    }

    if (v34 == *MEMORY[0x277CD8DE0])
    {

LABEL_13:
      v30(v33, v5);
      return;
    }

    if (v34 == *MEMORY[0x277CD8DD8] || v34 == *MEMORY[0x277CD8DF8])
    {

      return;
    }

    if (v34 != *MEMORY[0x277CD8DD0])
    {
      v43 = *MEMORY[0x277CD8DF0];
      v44 = v34;

      if (v44 == v43)
      {
        return;
      }

      goto LABEL_13;
    }

    v39 = sub_23815291C();
    v40 = sub_2381550FC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_238060000, v39, v40, "Pairing succeeded", v41, 2u);
      MEMORY[0x2383EA8A0](v41, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v53) = 1;
    v42 = v17;
    sub_238152A9C();
    sub_238152C5C();
  }
}

void sub_2381050A8(uint64_t a1)
{
  v2 = sub_238152E6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  if (qword_27DEEA0F8 != -1)
  {
    swift_once();
  }

  v10 = sub_23815293C();
  __swift_project_value_buffer(v10, qword_27DEECE20);
  v11 = *(v3 + 16);
  v11(v9, a1, v2);
  v12 = sub_23815291C();
  v13 = sub_2381550FC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    v11(v7, v9, v2);
    v16 = sub_238154D2C();
    v18 = v17;
    (*(v3 + 8))(v9, v2);
    v19 = sub_238085EAC(v16, v18, &v21);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_238060000, v12, v13, "Pairing manager browser state changed to %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x2383EA8A0](v15, -1, -1);
    MEMORY[0x2383EA8A0](v14, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v9, v2);
  }
}

uint64_t sub_238105318(uint64_t a1)
{
  v2 = sub_2381549FC();
  v16 = *(v2 - 8);
  v3 = *(v16 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_238154A2C();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v15);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2380D0AA8();
  v10 = sub_23815517C();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_238105B04;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238106D10;
  aBlock[3] = &block_descriptor_4;
  v13 = _Block_copy(aBlock);

  sub_238154A0C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_238105B24(&qword_27DEEBC88, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECFC0, &qword_23815ABE0);
  sub_238105B6C(&qword_27DEEBC90, &qword_27DEECFC0, &qword_23815ABE0);
  sub_23815537C();
  MEMORY[0x2383E97C0](0, v9, v5, v13);
  _Block_release(v13);

  (*(v16 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v15);
}

uint64_t sub_238105614(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    if (qword_27DEEA0F8 != -1)
    {
      swift_once();
    }

    v5 = sub_23815293C();
    __swift_project_value_buffer(v5, qword_27DEECE20);

    v6 = sub_23815291C();
    v7 = sub_2381550FC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = *(a2 + 16);

      _os_log_impl(&dword_238060000, v6, v7, "Pairing manager browser found %ld devices", v8, 0xCu);
      MEMORY[0x2383EA8A0](v8, -1, -1);
    }

    else
    {
    }

    v9 = *&v4[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_currentResults];
    *&v4[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_currentResults] = a2;
  }

  return result;
}

uint64_t type metadata accessor for _DDPinPairingManager()
{
  result = qword_27DEECE70;
  if (!qword_27DEECE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238105908()
{
  sub_2380CAE70(319, &qword_27DEEB898);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2380CAE70(319, &qword_27DEECE80);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_238105A4C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238105A8C()
{
  MEMORY[0x2383EA980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238105AC4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238105B24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238105B6C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_238105BC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA10, &qword_23815D910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238105C28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238105C70()
{
  v1 = sub_238152C3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_238105D48()
{
  v1 = *(sub_238152C3C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_238104B4C(v3, (v0 + v2), v4);
}

uint64_t sub_238105DD8@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_238152EBC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_238105EA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_238105EE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_238105F60@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECE98, &qword_23815D6A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v12 - v5;
  *v6 = sub_238153DEC();
  *(v6 + 1) = 0x4024000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECEA0, &qword_23815D6B0);
  sub_2381060A8(v1, &v6[*(v7 + 44)]);
  sub_2381548DC();
  sub_238153A8C();
  sub_2381069F0(v6, a1);
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECEA8, &unk_23815D6B8) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_2381060A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v86 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA10, &qword_238158270);
  v87 = *(v3 - 8);
  v88 = v3;
  v4 = *(v87 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v85 = &v81[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v99 = &v81[-v7];
  v8 = sub_238153D7C();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v91 = &v81[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  sub_238153D6C();
  sub_238153D5C();
  v12 = a1[1];
  v92 = a1;
  if (v12)
  {
    v13 = *a1;
  }

  sub_238153D4C();

  sub_238153D5C();
  sub_238153D9C();
  v14 = sub_23815436C();
  v16 = v15;
  v18 = v17;
  sub_2381542CC();
  v19 = sub_23815435C();
  v21 = v20;
  v23 = v22;

  sub_238070490(v14, v16, v18 & 1);

  sub_23815421C();
  v24 = sub_2381542FC();
  v96 = v25;
  v97 = v24;
  LOBYTE(v14) = v26;
  v98 = v27;
  sub_238070490(v19, v21, v23 & 1);

  KeyPath = swift_getKeyPath();
  v95 = sub_2381540EC();
  sub_23815377C();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v93 = v14 & 1;
  v145 = v14 & 1;
  v141 = 0;
  sub_238153D6C();
  sub_238153D5C();
  v36 = v92[2];
  v37 = v92[3];
  sub_238153D4C();
  sub_238153D5C();
  sub_238153D9C();
  v38 = sub_23815436C();
  v40 = v39;
  v42 = v41;
  sub_23815417C();
  v43 = sub_23815435C();
  v45 = v44;
  v47 = v46;

  sub_238070490(v38, v40, v42 & 1);

  sub_2381545CC();
  v48 = sub_23815431C();
  v83 = v48;
  v84 = v49;
  v91 = v50;
  LOBYTE(v21) = v51;

  sub_238070490(v43, v45, v47 & 1);

  v89 = swift_getKeyPath();
  v90 = sub_2381540EC();
  sub_23815377C();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  LOBYTE(v127[0]) = v21 & 1;
  v60 = v21 & 1;
  v82 = v21 & 1;
  LOBYTE(v113[0]) = 0;
  v61 = v92[4];
  v62 = v92[5];

  v63 = v99;
  sub_23815474C();
  v65 = v87;
  v64 = v88;
  v92 = *(v87 + 16);
  v66 = v85;
  (v92)(v85, v63, v88);
  v67 = v86;
  *v86 = 0;
  *(v67 + 8) = 1;
  *&v103 = v97;
  *(&v103 + 1) = v96;
  LOBYTE(v104) = v93;
  *(&v104 + 1) = *v144;
  DWORD1(v104) = *&v144[3];
  *(&v104 + 1) = v98;
  *&v105 = KeyPath;
  BYTE8(v105) = 1;
  *(&v105 + 9) = *v143;
  HIDWORD(v105) = *&v143[3];
  LOBYTE(v106) = v95;
  DWORD1(v106) = *&v142[3];
  *(&v106 + 1) = *v142;
  *(&v106 + 1) = v29;
  *&v107[0] = v31;
  *(&v107[0] + 1) = v33;
  *&v107[1] = v35;
  BYTE8(v107[1]) = 0;
  v68 = v104;
  *(v67 + 1) = v103;
  *(v67 + 2) = v68;
  v69 = v105;
  v70 = v106;
  v71 = v107[0];
  *(v67 + 89) = *(v107 + 9);
  *(v67 + 4) = v70;
  *(v67 + 5) = v71;
  *(v67 + 3) = v69;
  *&v108 = v48;
  *(&v108 + 1) = v91;
  LOBYTE(v109) = v60;
  DWORD1(v109) = *(v102 + 3);
  *(&v109 + 1) = v102[0];
  v72 = v84;
  *(&v109 + 1) = v84;
  *&v110 = v89;
  BYTE8(v110) = 1;
  HIDWORD(v110) = *&v101[3];
  *(&v110 + 9) = *v101;
  LOBYTE(v111) = v90;
  DWORD1(v111) = *&v100[3];
  *(&v111 + 1) = *v100;
  *(&v111 + 1) = v53;
  *&v112[0] = v55;
  *(&v112[0] + 1) = v57;
  *&v112[1] = v59;
  BYTE8(v112[1]) = 0;
  v73 = v109;
  *(v67 + 7) = v108;
  *(v67 + 8) = v73;
  v74 = v110;
  v75 = v111;
  v76 = v112[0];
  *(v67 + 185) = *(v112 + 9);
  *(v67 + 10) = v75;
  *(v67 + 11) = v76;
  *(v67 + 9) = v74;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECEB0, qword_23815D6F8);
  (v92)(v67 + *(v77 + 80), v66, v64);
  v78 = v67 + *(v77 + 96);
  *v78 = 0;
  v78[8] = 1;
  sub_238106B08(&v103, v127);
  sub_238106B08(&v108, v127);
  v79 = *(v65 + 8);
  v79(v99, v64);
  v79(v66, v64);
  v113[0] = v83;
  v113[1] = v91;
  v114 = v82;
  *v115 = v102[0];
  *&v115[3] = *(v102 + 3);
  v116 = v72;
  v117 = v89;
  v118 = 1;
  *v119 = *v101;
  *&v119[3] = *&v101[3];
  v120 = v90;
  *&v121[3] = *&v100[3];
  *v121 = *v100;
  v122 = v53;
  v123 = v55;
  v124 = v57;
  v125 = v59;
  v126 = 0;
  sub_238106B78(v113);
  v127[0] = v97;
  v127[1] = v96;
  v128 = v93;
  *v129 = *v144;
  *&v129[3] = *&v144[3];
  v130 = v98;
  v131 = KeyPath;
  v132 = 1;
  *v133 = *v143;
  *&v133[3] = *&v143[3];
  v134 = v95;
  *v135 = *v142;
  *&v135[3] = *&v142[3];
  v136 = v29;
  v137 = v31;
  v138 = v33;
  v139 = v35;
  v140 = 0;
  return sub_238106B78(v127);
}

uint64_t sub_238106870@<X0>(uint64_t a1@<X8>)
{
  sub_238153D8C();
  v2 = sub_23815436C();
  v4 = v3;
  v6 = v5;
  sub_23815419C();
  v7 = sub_23815435C();
  v9 = v8;
  v11 = v10;

  sub_238070490(v2, v4, v6 & 1);

  sub_2381545BC();
  v12 = sub_23815431C();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_238070490(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

double sub_2381069B4@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  *&result = sub_238105F60(a1).n128_u64[0];
  return result;
}

uint64_t sub_2381069F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECE98, &qword_23815D6A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238106A60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_238153C0C();
  *a1 = result;
  return result;
}

uint64_t sub_238106A8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_238153C0C();
  *a1 = result;
  return result;
}

uint64_t sub_238106B08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB768, &qword_238159FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238106B78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB768, &qword_238159FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_238106BE4()
{
  result = qword_27DEECEB8;
  if (!qword_27DEECEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECEA8, &unk_23815D6B8);
    sub_238106C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECEB8);
  }

  return result;
}

unint64_t sub_238106C70()
{
  result = qword_27DEECEC0;
  if (!qword_27DEECEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECE98, &qword_23815D6A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECEC0);
  }

  return result;
}

uint64_t sub_238106D10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_238106D54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v5;
  return result;
}

uint64_t sub_238106DD4(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_238152A9C();
}

uint64_t sub_238106E44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v1;
}

uint64_t sub_238106ECC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v1;
}

uint64_t sub_238106F38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_238106FB8(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return sub_238152A9C();
}

char *sub_238107038()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_23815516C();
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  MEMORY[0x28223BE20](v2);
  v53 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_23815513C();
  v5 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238154A2C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECF90, &unk_23815D800);
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - v12;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC190, &qword_23815B890);
  v14 = *(v47 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v47);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9E0, &unk_23815D810);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v47 - v21;
  v23 = OBJC_IVAR____TtC17DeviceDiscoveryUI22_DDAskToAirDropManager__isSearching;
  LOBYTE(v58) = 0;
  sub_238152A5C();
  v24 = *(v19 + 32);
  v24(&v1[v23], v22, v18);
  v25 = OBJC_IVAR____TtC17DeviceDiscoveryUI22_DDAskToAirDropManager__isNFCEnabled;
  LOBYTE(v58) = 0;
  sub_238152A5C();
  v24(&v1[v25], v22, v18);
  v26 = OBJC_IVAR____TtC17DeviceDiscoveryUI22_DDAskToAirDropManager__nearbyDeviceCount;
  v58 = 0;
  sub_238152A5C();
  (*(v14 + 32))(&v1[v26], v17, v47);
  v27 = OBJC_IVAR____TtC17DeviceDiscoveryUI22_DDAskToAirDropManager__sharingName;
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_238152A5C();
  v28 = v49;
  v29 = *(v48 + 32);
  v29(&v1[v27], v13, v49);
  v30 = OBJC_IVAR____TtC17DeviceDiscoveryUI22_DDAskToAirDropManager__pinString;
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_238152A5C();
  v29(&v1[v30], v13, v28);
  sub_2380D0AA8();
  sub_238154A1C();
  v58 = MEMORY[0x277D84F90];
  sub_238105B24(&unk_27DEECFA0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEBA60, &qword_23815A710);
  sub_238105B6C(&unk_27DEECFB0, &unk_27DEEBA60, &qword_23815A710);
  sub_23815537C();
  (*(v54 + 104))(v53, *MEMORY[0x277D85260], v55);
  sub_23815519C();
  v31 = objc_allocWithZone(sub_23815341C());
  *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI22_DDAskToAirDropManager_airDropController] = sub_23815340C();
  v57.receiver = v1;
  v57.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v57, sel_init);
  v33 = OBJC_IVAR____TtC17DeviceDiscoveryUI22_DDAskToAirDropManager_airDropController;
  v34 = *&v32[OBJC_IVAR____TtC17DeviceDiscoveryUI22_DDAskToAirDropManager_airDropController];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = v32;
  v36 = v34;

  sub_2381533DC();

  v37 = *&v32[v33];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = v37;

  sub_2381533FC();

  v39 = [objc_opt_self() currentDevice];
  v40 = [v39 userInterfaceIdiom];

  if (!v40)
  {
    v41 = [objc_opt_self() sharedHardwareManagerWithNoUI];
    [v41 registerEventListener_];

    sub_23810784C();
  }

  v42 = sub_238108470();
  v44 = v43;
  swift_getKeyPath();
  swift_getKeyPath();
  v58 = v42;
  v59 = v44;
  v45 = v35;
  sub_238152A9C();
  return v45;
}

uint64_t sub_238107730()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_238152A9C();
  }

  return result;
}

uint64_t sub_2381077B0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC17DeviceDiscoveryUI22_DDAskToAirDropManager_airDropController);
    sub_2381533EC();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_238152A9C();
  }

  return result;
}

uint64_t sub_23810784C()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [objc_opt_self() sharedHardwareManagerWithNoUI];

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v0;
  result = sub_238152A9C();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_238107958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_2381549FC();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_238154A2C();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238107A74, 0, 0);
}

uint64_t sub_238107A74()
{
  v1 = *(*(v0 + 72) + OBJC_IVAR____TtC17DeviceDiscoveryUI22_DDAskToAirDropManager_airDropController);
  v2 = *(MEMORY[0x277D54AF8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_238107B14;

  return MEMORY[0x2821B6110]();
}

uint64_t sub_238107B14(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 128);
  v8 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v9 = sub_238107EC0;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v9 = sub_238107C48;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_238107C48()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[15];
  v17 = v0[14];
  v18 = v0[13];
  v4 = v0[10];
  v15 = v0[12];
  v16 = v0[11];
  v5 = v0[9];
  sub_2380D0AA8();
  v14 = sub_23815517C();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v1;
  v7[4] = v2;
  v0[6] = sub_238108528;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_238106D10;
  v0[5] = &block_descriptor_5;
  v8 = _Block_copy(v0 + 2);

  sub_238154A0C();
  v0[8] = MEMORY[0x277D84F90];
  sub_238105B24(&qword_27DEEBC88, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECFC0, &qword_23815ABE0);
  sub_238105B6C(&qword_27DEEBC90, &qword_27DEECFC0, &qword_23815ABE0);
  sub_23815537C();
  MEMORY[0x2383E97C0](0, v3, v15, v8);
  _Block_release(v8);

  (*(v16 + 8))(v15, v4);
  (*(v17 + 8))(v3, v18);
  v9 = v0[7];

  v10 = v0[15];
  v11 = v0[12];

  v12 = v0[1];

  return v12();
}

uint64_t sub_238107EC0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_238107F34()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_238152A9C();
  }

  return result;
}

uint64_t type metadata accessor for _DDAskToAirDropManager()
{
  result = qword_27DEECF08;
  if (!qword_27DEECF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23810819C()
{
  sub_2380CAE70(319, &qword_27DEEB898);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2380CAE70(319, &qword_27DEECF20);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_2380CAE70(319, &qword_27DEECF28);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_238108328@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v5;
  return result;
}

uint64_t sub_2381083A8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_238152A9C();
}

uint64_t sub_238108428()
{
  MEMORY[0x2383EA980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238108470()
{
  result = arc4random_uniform(0xDBBA1u);
  if (result < 0xFFFE7961)
  {
    return sub_23815559C();
  }

  __break(1u);
  return result;
}

uint64_t sub_2381084E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238108528()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_238107F34();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static DDDevicePickerViewController.isSupported(_:using:)()
{
  v0 = sub_238154B2C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_238130894())
  {
    v5 = sub_238154B1C();
    (*(v1 + 104))(v4, *MEMORY[0x277CE3920], v0);
    v6 = sub_2380BC6D8(v4, v5);

    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t DDDevicePickerViewController.init(browseDescriptor:parameters:)(uint64_t a1, uint64_t a2)
{
  if ((sub_238130894() & 1) != 0 && (sub_2380BDBF0() & 1) == 0)
  {
    result = sub_2381554EC();
    __break(1u);
  }

  else
  {
    v4 = sub_238152D6C();
    if (a2)
    {

      v5 = sub_238152CCC();
    }

    else
    {
      v5 = MEMORY[0x2383EA0E0]();
    }

    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBrowseDescriptor:v4 parameters:v5];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v7 = sub_238152E1C();
    (*(*(v7 - 8) + 8))(a1, v7);
    return v6;
  }

  return result;
}

id DDDevicePickerViewController.init(browseDescriptor:parameters:access:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_238152D6C();
  if (a2)
  {

    v5 = sub_238152CCC();
  }

  else
  {
    v5 = MEMORY[0x2383EA0E0]();
  }

  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBrowseDescriptor:v4 parameters:v5];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v7 = sub_238152E1C();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

uint64_t DDDevicePickerViewController.endpoint.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_238154F8C();
  v2[4] = sub_238154F7C();
  v4 = sub_238154F3C();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_238108944, v4, v3);
}

uint64_t sub_238108944()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D54B08] + 4);
  v4 = v1;
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_238152BAC();
  *v5 = v0;
  v5[1] = sub_238108A48;
  v7 = v0[2];

  return MEMORY[0x2821B6160](v7, 0x746E696F70646E65, 0xE800000000000000, sub_238109B80, v2, v6);
}

uint64_t sub_238108A48()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_238109CC4;
  }

  else
  {
    v7 = v2[7];

    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_238109CC8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

void sub_238108B64(uint64_t a1, void *a2)
{
  v10 = sub_238109C94;
  v11 = a1;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_238108FE4;
  v9 = &block_descriptor_23_0;
  v4 = _Block_copy(&v6);

  [a2 setDevicePickerCompletionHandler_];
  _Block_release(v4);
  v10 = sub_238109CB0;
  v11 = a1;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_238106D10;
  v9 = &block_descriptor_26;
  v5 = _Block_copy(&v6);

  [a2 setDevicePickerCanceledHandler_];
  _Block_release(v5);
}

void sub_238108CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_238152BAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v21 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  if (a2)
  {
    sub_238152D2C();
    sub_238109C4C(&qword_27DEECFD0, MEMORY[0x277CD8FC0]);
    v15 = swift_allocError();
    swift_unknownObjectRetain();
    sub_238152D3C();
LABEL_3:
    sub_23815342C();

    return;
  }

  if (!a1)
  {
    v18 = sub_238152D2C();
    sub_238109C4C(&qword_27DEECFD0, MEMORY[0x277CD8FC0]);
    v15 = swift_allocError();
    *v19 = 22;
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277CD8FB0], v18);
    goto LABEL_3;
  }

  *v9 = a1;
  (*(v5 + 104))(v9, *MEMORY[0x277CD8AF8], v4);
  swift_unknownObjectRetain_n();
  v16 = nw_endpoint_copy_public_keys();
  if (v16)
  {
    v17 = v16;
    sub_238154EDC();
  }

  sub_238152B1C();
  v20 = *(v5 + 32);
  v20(v12, v9, v4);
  v20(v14, v12, v4);
  sub_23815343C();
  swift_unknownObjectRelease();
  (*(v5 + 8))(v14, v4);
}

uint64_t sub_238108FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6(a2, a3);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t DDDevicePickerViewController.browserResult.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_238154F8C();
  v2[4] = sub_238154F7C();
  v4 = sub_238154F3C();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_2381090F8, v4, v3);
}

uint64_t sub_2381090F8()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D54B08] + 4);
  v4 = v1;
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA10, &qword_23815D910);
  *v5 = v0;
  v5[1] = sub_238109214;
  v7 = v0[2];

  return MEMORY[0x2821B6160](v7, 0x52726573776F7262, 0xED0000746C757365, sub_238109B88, v2, v6);
}

uint64_t sub_238109214()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_238109394;
  }

  else
  {
    v7 = v2[7];

    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_238109330;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_238109330()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238109394()
{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

void sub_238109404(uint64_t a1, void *a2)
{
  v10 = sub_238109C10;
  v11 = a1;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_2381099AC;
  v9 = &block_descriptor_6;
  v4 = _Block_copy(&v6);

  [a2 setDevicePickerDataCompletionHandler_];
  _Block_release(v4);
  v10 = sub_238109C30;
  v11 = a1;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_238106D10;
  v9 = &block_descriptor_20_0;
  v5 = _Block_copy(&v6);

  [a2 setDevicePickerCanceledHandler_];
  _Block_release(v5);
}

void sub_238109560(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA10, &qword_23815D910);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23[-v8];
  v10 = sub_238152EBC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    sub_238152D2C();
    sub_238109C4C(&qword_27DEECFD0, MEMORY[0x277CD8FC0]);
    v16 = swift_allocError();
    swift_unknownObjectRetain();
    sub_238152D3C();
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      v19 = v13;
      v20 = sub_23815253C();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      sub_238085D80(a1, a2);
      sub_23815252C();
      sub_238109C4C(&qword_27DEECFD8, MEMORY[0x277CD9168]);
      sub_23815251C();

      (*(v11 + 16))(v9, v15, v19);
      (*(v11 + 56))(v9, 0, 1, v19);
      sub_23815343C();
      sub_238087244(a1, a2);
      sub_238105BC0(v9);
      (*(v11 + 8))(v15, v19);
      return;
    }

    v17 = sub_238152D2C();
    sub_238109C4C(&qword_27DEECFD0, MEMORY[0x277CD8FC0]);
    v16 = swift_allocError();
    *v18 = 22;
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277CD8FB0], v17);
  }

  sub_23815342C();
}

uint64_t sub_2381099AC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_23815275C();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  swift_unknownObjectRetain();
  v6(v4, v9, a3);
  swift_unknownObjectRelease();
  sub_238087244(v4, v9);
}

void sub_238109A5C()
{
  v0 = sub_238152D2C();
  sub_238109C4C(&qword_27DEECFD0, MEMORY[0x277CD8FC0]);
  v1 = swift_allocError();
  *v2 = 89;
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277CD8FB0], v0);
  sub_23815342C();
}

uint64_t sub_238109B48()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_238109BBC()
{
  result = qword_27DEECFC8;
  if (!qword_27DEECFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEECFC8);
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238109C4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238109CF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_238153D1C();
  v62 = 1;
  sub_23810A0D0(v2, &v49);
  v71 = v57;
  v72 = v58;
  v73 = v59;
  v67 = v53;
  v68 = v54;
  v69 = v55;
  v70 = v56;
  v63 = v49;
  v64 = v50;
  v65 = v51;
  v66 = v52;
  v75[8] = v57;
  v75[9] = v58;
  v75[10] = v59;
  v75[4] = v53;
  v75[5] = v54;
  v75[6] = v55;
  v75[7] = v56;
  v75[0] = v49;
  v75[1] = v50;
  v74 = v60;
  v76 = v60;
  v75[2] = v51;
  v75[3] = v52;
  sub_2380712E4(&v63, v48, &qword_27DEECFE0, &qword_23815DA68);
  sub_238071284(v75, &qword_27DEECFE0, &qword_23815DA68);
  *(&v61[8] + 7) = v71;
  *(&v61[9] + 7) = v72;
  *(&v61[10] + 7) = v73;
  *(&v61[4] + 7) = v67;
  *(&v61[5] + 7) = v68;
  *(&v61[6] + 7) = v69;
  *(&v61[7] + 7) = v70;
  *(v61 + 7) = v63;
  *(&v61[1] + 7) = v64;
  *(&v61[2] + 7) = v65;
  *(&v61[11] + 7) = v74;
  *(&v61[3] + 7) = v66;
  v5 = v62;
  LOBYTE(v2) = sub_2381540FC();
  sub_23815377C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v48[0] = 0;
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECFE8, &unk_23815DA70) + 36));
  v15 = *(sub_238153A7C() + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_238153DDC();
  (*(*(v17 - 8) + 104))(&v14->i8[v15], v16, v17);
  *v14 = vdupq_n_s64(0x4049000000000000uLL);
  sub_2381545CC();
  v18 = sub_23815460C();

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA488, &qword_238157B08);
  *(v14->i64 + *(v19 + 52)) = v18;
  *(v14->i16 + *(v19 + 56)) = 256;
  v20 = sub_2381548DC();
  v22 = v21;
  v23 = (v14->i64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECFF0, &qword_23815DA80) + 36));
  *v23 = v20;
  v23[1] = v22;
  v24 = v61[2];
  *(a1 + 65) = v61[3];
  *(a1 + 49) = v24;
  v25 = v61[0];
  *(a1 + 33) = v61[1];
  *(a1 + 17) = v25;
  v26 = v61[6];
  *(a1 + 129) = v61[7];
  *(a1 + 113) = v26;
  v27 = v61[4];
  *(a1 + 97) = v61[5];
  *(a1 + 81) = v27;
  *(a1 + 192) = *(&v61[10] + 15);
  *(a1 + 177) = v61[10];
  v28 = v61[8];
  *(a1 + 161) = v61[9];
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 145) = v28;
  *(a1 + 208) = v2;
  *(a1 + 209) = v49;
  *(a1 + 212) = *(&v49 + 3);
  *(a1 + 216) = v7;
  *(a1 + 224) = v9;
  *(a1 + 232) = v11;
  *(a1 + 240) = v13;
  *(a1 + 248) = 0;
  LOBYTE(v4) = sub_2381540EC();
  sub_23815377C();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECFF8, &qword_23815DA88) + 36);
  *v37 = v4;
  *(v37 + 8) = v30;
  *(v37 + 16) = v32;
  *(v37 + 24) = v34;
  *(v37 + 32) = v36;
  *(v37 + 40) = 0;
  LOBYTE(v4) = sub_23815411C();
  sub_23815377C();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED000, &qword_23815DA90);
  v47 = a1 + *(result + 36);
  *v47 = v4;
  *(v47 + 8) = v39;
  *(v47 + 16) = v41;
  *(v47 + 24) = v43;
  *(v47 + 32) = v45;
  *(v47 + 40) = 0;
  return result;
}

uint64_t sub_23810A0D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23815468C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2381548DC();
  v26 = v10;
  v27 = v9;
  v11 = a1[4];
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v12 = sub_2381546CC();
  (*(v5 + 8))(v8, v4);
  sub_2381548DC();
  sub_2381538EC();
  LOBYTE(v55[0]) = 1;
  *&v40[3] = *&v40[27];
  *&v40[11] = *&v40[35];
  *&v40[19] = *&v40[43];
  LOBYTE(v8) = sub_2381540FC();
  v13 = sub_238153DFC();
  LOBYTE(v55[0]) = 1;
  sub_23810A44C(a1, v41);
  *&v39[7] = v41[0];
  *&v39[23] = v41[1];
  *&v39[39] = v41[2];
  *&v39[55] = v42;
  v14 = v55[0];
  *&v43 = v9;
  v15 = v26;
  *(&v43 + 1) = v26;
  v44 = v12;
  v45 = 0;
  LOWORD(v46[0]) = 1;
  *&v46[3] = *&v40[23];
  *(&v46[2] + 2) = *&v40[16];
  *(&v46[1] + 2) = *&v40[8];
  *(v46 + 2) = *v40;
  BYTE8(v46[3]) = v8;
  *(&v46[3] + 9) = 256;
  v28 = v43;
  v29 = v12;
  *(v32 + 11) = *(&v46[2] + 11);
  v30 = v46[0];
  v31 = v46[1];
  v47[0] = v13;
  v47[1] = 0;
  v48[0] = v55[0];
  v16 = *&v39[16];
  *&v48[1] = *v39;
  *&v48[64] = *(&v42 + 1);
  *&v48[49] = *&v39[48];
  v18 = *&v39[32];
  v17 = *&v39[48];
  *&v48[33] = *&v39[32];
  v19 = *v39;
  *&v48[17] = *&v39[16];
  v32[0] = v46[2];
  v33 = v13;
  v34 = *v48;
  v36 = *&v48[32];
  v37 = *&v48[48];
  v35 = *&v48[16];
  v20 = v46[1];
  *(a2 + 32) = v46[0];
  *(a2 + 48) = v20;
  v21 = v29;
  *a2 = v28;
  *(a2 + 16) = v21;
  v22 = v34;
  *(a2 + 96) = v33;
  *(a2 + 112) = v22;
  v23 = v32[1];
  *(a2 + 64) = v32[0];
  *(a2 + 80) = v23;
  v24 = v37;
  *(a2 + 144) = v36;
  *(a2 + 160) = v24;
  *(a2 + 128) = v35;
  v38 = *&v48[64];
  *(a2 + 176) = *&v48[64];
  v49[0] = v13;
  v49[1] = 0;
  v50 = v14;
  v52 = v16;
  v53 = v18;
  *v54 = v17;
  *&v54[15] = *&v39[63];
  v51 = v19;
  sub_2380712E4(&v43, v55, &qword_27DEED008, &qword_23815DA98);
  sub_2380712E4(v47, v55, &qword_27DEEC998, &qword_23815DAA0);
  sub_238071284(v49, &qword_27DEEC998, &qword_23815DAA0);
  v55[0] = v27;
  v55[1] = v15;
  v55[2] = v12;
  v55[3] = 0;
  v56 = 1;
  v57 = *v40;
  v58 = *&v40[8];
  *v59 = *&v40[16];
  *&v59[14] = *&v40[23];
  v60 = v8;
  v61 = 256;
  return sub_238071284(v55, &qword_27DEED008, &qword_23815DA98);
}

uint64_t sub_23810A44C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = *a1;
  v40 = a1[1];
  sub_2380704A0();

  v4 = sub_23815438C();
  v6 = v5;
  v8 = v7;
  sub_2381542CC();
  v9 = sub_23815435C();
  v11 = v10;
  v13 = v12;

  sub_238070490(v4, v6, v8 & 1);

  sub_23815461C();
  v14 = sub_23815431C();
  v35 = v15;
  v36 = v14;
  v34 = v16;
  v37 = v17;

  sub_238070490(v9, v11, v13 & 1);

  v39 = a1[2];
  v41 = a1[3];

  v18 = sub_23815438C();
  v20 = v19;
  LOBYTE(v11) = v21;
  sub_2381542BC();
  v22 = sub_23815435C();
  v24 = v23;
  LOBYTE(v6) = v25;

  sub_238070490(v18, v20, v11 & 1);

  sub_23815463C();
  v26 = sub_23815431C();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_238070490(v22, v24, v6 & 1);

  *a2 = v36;
  *(a2 + 8) = v35;
  *(a2 + 16) = v34 & 1;
  *(a2 + 24) = v37;
  *(a2 + 32) = v26;
  *(a2 + 40) = v28;
  *(a2 + 48) = v30 & 1;
  *(a2 + 56) = v32;
  sub_238070430(v36, v35, v34 & 1);

  sub_238070430(v26, v28, v30 & 1);

  sub_238070490(v26, v28, v30 & 1);

  sub_238070490(v36, v35, v34 & 1);
}

uint64_t sub_23810A6CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_238109CF8(a1);
}

uint64_t sub_23810A77C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23810A800()
{
  result = qword_27DEED020;
  if (!qword_27DEED020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECFE8, &unk_23815DA70);
    sub_23810A8B8();
    sub_2380711D4(&qword_27DEED048, &qword_27DEECFF0, &qword_23815DA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED020);
  }

  return result;
}

unint64_t sub_23810A8B8()
{
  result = qword_27DEED028;
  if (!qword_27DEED028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED030, &qword_23815DAA8);
    sub_2380711D4(&qword_27DEED038, &qword_27DEED040, &unk_23815DAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED028);
  }

  return result;
}

uint64_t sub_23810A970@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v93 = a3;
  v73 = a2;
  v75 = a4;
  v92 = a1;
  v4 = a1;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED100, &qword_23815DCA8);
  v81 = *(v82 - 8);
  v5 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v74 = &v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED108, &qword_23815DCB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v84 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v91 = &v72 - v11;
  v12 = sub_23815426C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v80 = v4;
  if (v4 == 7)
  {
    sub_23815467C();
  }

  v83 = v17;
  v98 = sub_23810BE90(v92, v93);
  v99 = v18;
  sub_2380704A0();
  v19 = sub_23815438C();
  v21 = v20;
  v23 = v22;
  sub_23815423C();
  sub_2381541DC();
  sub_23815425C();

  (*(v13 + 104))(v16, *MEMORY[0x277CE0A10], v12);
  sub_23815429C();

  (*(v13 + 8))(v16, v12);
  v24 = sub_23815435C();
  v26 = v25;
  v28 = v27;

  sub_238070490(v19, v21, v23 & 1);

  LODWORD(v98) = sub_238153EEC();
  v89 = sub_23815432C();
  v88 = v29;
  LOBYTE(v21) = v30;
  v90 = v31;
  sub_238070490(v24, v26, v28 & 1);

  KeyPath = swift_getKeyPath();
  v86 = swift_getKeyPath();
  v85 = v21 & 1;
  v98 = sub_23810BF58(v92, v93);
  v99 = v32;
  v33 = sub_23815438C();
  v35 = v34;
  LOBYTE(v21) = v36;
  sub_23815417C();
  v37 = sub_23815435C();
  v39 = v38;
  LOBYTE(v26) = v40;

  sub_238070490(v33, v35, v21 & 1);

  LODWORD(v98) = sub_238153F0C();
  v78 = sub_23815432C();
  v77 = v41;
  v43 = v42;
  v79 = v44;
  sub_238070490(v37, v39, v26 & 1);

  v76 = swift_getKeyPath();
  v45 = 1;
  if (v80 > 3)
  {
    if (v80 > 5)
    {
      v46 = v91;
      v47 = v82;
      if (v80 != 6)
      {
        goto LABEL_15;
      }

      v48 = v43;
      v49 = 31;
      goto LABEL_14;
    }

    v48 = v43;
    v50 = v80 == 4;
    v51 = 21;
    v52 = 25;
    goto LABEL_10;
  }

  if (v80 > 1)
  {
    v48 = v43;
    v50 = v80 == 2;
    v51 = 17;
    v52 = 13;
LABEL_10:
    if (v50)
    {
      v49 = v51;
    }

    else
    {
      v49 = v52;
    }

    v46 = v91;
    v47 = v82;
    goto LABEL_14;
  }

  v46 = v91;
  v47 = v82;
  if (v80)
  {
    v48 = v43;
    v49 = 9;
LABEL_14:
    v53 = sub_23807CB28(v49);
    v55 = v54;
    v56 = swift_allocObject();
    *(v56 + 16) = v92;
    *(v56 + 24) = v73;
    *(v56 + 32) = v93;
    MEMORY[0x28223BE20](v56);
    *(&v72 - 2) = v53;
    *(&v72 - 1) = v55;
    v58 = v57;
    v59 = v74;
    sub_23815474C();

    v60 = sub_23815410C();
    v61 = v59 + *(v47 + 36);
    *v61 = v60;
    *(v61 + 8) = 0u;
    *(v61 + 24) = 0u;
    *(v61 + 40) = 1;
    sub_23810C028(v59, v46);
    v45 = 0;
    v43 = v48;
  }

LABEL_15:
  (*(v81 + 56))(v46, v45, 1, v47);
  v62 = v84;
  sub_2380712E4(v46, v84, &unk_27DEED108, &qword_23815DCB0);
  v63 = v75;
  *v75 = v83;
  *&v94 = v89;
  *(&v94 + 1) = v88;
  LOBYTE(v95) = v85;
  *(&v95 + 1) = *v109;
  DWORD1(v95) = *&v109[3];
  *(&v95 + 1) = v90;
  *&v96 = KeyPath;
  BYTE8(v96) = 1;
  *(&v96 + 9) = *v108;
  HIDWORD(v96) = *&v108[3];
  *&v97 = v86;
  *(&v97 + 1) = 0x3FE3333333333333;
  v64 = v94;
  v65 = v95;
  v66 = v96;
  *(v63 + 7) = v97;
  *(v63 + 5) = v66;
  *(v63 + 3) = v65;
  *(v63 + 1) = v64;
  v67 = v78;
  v68 = v77;
  v63[9] = v78;
  v63[10] = v68;
  *(v63 + 88) = v43 & 1;
  v69 = v76;
  v63[12] = v79;
  v63[13] = v69;
  *(v63 + 112) = 1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED118, &qword_23815DCE8);
  sub_2380712E4(v62, v63 + *(v70 + 80), &unk_27DEED108, &qword_23815DCB0);

  sub_2380712E4(&v94, &v98, &qword_27DEED120, &qword_23815DCF0);
  sub_238070430(v67, v68, v43 & 1);

  sub_238071284(v91, &unk_27DEED108, &qword_23815DCB0);
  sub_238071284(v62, &unk_27DEED108, &qword_23815DCB0);
  sub_238070490(v67, v68, v43 & 1);

  v98 = v89;
  v99 = v88;
  v100 = v85;
  *v101 = *v109;
  *&v101[3] = *&v109[3];
  v102 = v90;
  v103 = KeyPath;
  v104 = 1;
  *v105 = *v108;
  *&v105[3] = *&v108[3];
  v106 = v86;
  v107 = 0x3FE3333333333333;
  sub_238071284(&v98, &qword_27DEED120, &qword_23815DCF0);
}

uint64_t sub_23810B268()
{
  sub_23815494C();
  sub_23815398C();
}

uint64_t sub_23810B2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23815426C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[2] = a1;
  v24[3] = a2;
  sub_2380704A0();

  v11 = sub_23815438C();
  v13 = v12;
  v15 = v14;
  sub_23815419C();
  (*(v7 + 104))(v10, *MEMORY[0x277CE0A10], v6);
  sub_23815429C();

  (*(v7 + 8))(v10, v6);
  v16 = sub_23815435C();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_238070490(v11, v13, v15 & 1);

  *a3 = v16;
  *(a3 + 8) = v18;
  *(a3 + 16) = v20 & 1;
  *(a3 + 24) = v22;
  return result;
}

uint64_t sub_23810B48C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v1;
}

uint64_t sub_23810B500@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1);
  v4 = v1[16];
  v5 = *v1;
  *a1 = sub_238153DEC();
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED0F0, &qword_23815DC68);
  sub_23810A970(v5, v3, v4, (a1 + *(v6 + 44)));
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED0F8, &qword_23815DCA0);
  v9 = a1 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = 1;
  return result;
}

char *sub_23810B5A8()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED128, &qword_23815DCF8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC17DeviceDiscoveryUI29_DDWirelessSettingsController__viewType;
  v13 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED0E0, &qword_23815DAE0);
  sub_238152A5C();
  (*(v3 + 32))(&v0[v7], v6, v2);
  v8 = [objc_allocWithZone(MEMORY[0x277D54D00]) init];
  *&v0[OBJC_IVAR____TtC17DeviceDiscoveryUI29_DDWirelessSettingsController_controller] = v8;
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  [*&v9[OBJC_IVAR____TtC17DeviceDiscoveryUI29_DDWirelessSettingsController_controller] setDelegate_];
  return v9;
}

void *sub_23810B730(void *result)
{
  if (result)
  {
    v2 = result;
    [result isWifiEnabled];
    [v2 isBluetoothEnabled];
    [v2 isWirelessAccessPointEnabled];
    [v2 deviceSupportsWAPI];
    if ([v2 isAirDropMDMRestricted])
    {
      SFIsClassroomEnabled();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v1;
    return sub_238152A9C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23810B944(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC17DeviceDiscoveryUI29_DDWirelessSettingsController_controller];
  [v2 setWifiEnabled_];
  [v2 setBluetoothEnabled_];
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;
  return sub_238152A9C();
}

uint64_t type metadata accessor for _DDWirelessSettingsController()
{
  result = qword_27DEED0C8;
  if (!qword_27DEED0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23810BACC()
{
  sub_23810BB6C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23810BB6C()
{
  if (!qword_27DEED0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED0E0, &qword_23815DAE0);
    v0 = sub_238152AAC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEED0D8);
    }
  }
}

uint64_t sub_23810BBD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_23810BC18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _DDNoContentView.ViewType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for _DDNoContentView.ViewType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23810BDBC()
{
  result = qword_27DEED0E8;
  if (!qword_27DEED0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED0E8);
  }

  return result;
}

uint64_t sub_23810BE3C@<X0>(void *a1@<X8>)
{
  result = sub_238153BDC();
  *a1 = v3;
  return result;
}

uint64_t sub_23810BE90(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a2)
  {
    v2 = 34;
  }

  else
  {
    v2 = 33;
  }

  if (a1 == 6)
  {
    v3 = 29;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 4)
  {
    v4 = 18;
  }

  else
  {
    v4 = 22;
  }

  if (a1 <= 5u)
  {
    v3 = v4;
  }

  if (a1 == 2)
  {
    v5 = 14;
  }

  else
  {
    v5 = 10;
  }

  if (a2 < 2u)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

  if (a1)
  {
    v7 = 6;
  }

  else
  {
    v7 = v6;
  }

  if (a1 > 1u)
  {
    v7 = v5;
  }

  if (a1 <= 3u)
  {
    return sub_23807CB28(v7);
  }

  else
  {
    return sub_23807CB28(v3);
  }
}

uint64_t sub_23810BF04@<X0>(void *a1@<X8>)
{
  result = sub_238153BDC();
  *a1 = v3;
  return result;
}

uint64_t sub_23810BF58(unsigned __int8 a1, char a2)
{
  if (a1 == 6)
  {
    v2 = 30;
  }

  else
  {
    v2 = 35;
  }

  if (a2)
  {
    v3 = 20;
  }

  else
  {
    v3 = 19;
  }

  if (a2)
  {
    v4 = 24;
  }

  else
  {
    v4 = 23;
  }

  if (a1 != 4)
  {
    v3 = v4;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  if (a2)
  {
    v5 = 16;
  }

  else
  {
    v5 = 15;
  }

  if (a2)
  {
    v6 = 12;
  }

  else
  {
    v6 = 11;
  }

  if (a1 != 2)
  {
    v5 = v6;
  }

  if (a2)
  {
    v7 = 8;
  }

  else
  {
    v7 = 7;
  }

  if (a1)
  {
    v8 = v7;
  }

  else
  {
    v8 = 5;
  }

  if (a1 > 1u)
  {
    v8 = v5;
  }

  if (a1 <= 3u)
  {
    return sub_23807CB28(v8);
  }

  else
  {
    return sub_23807CB28(v2);
  }
}

uint64_t sub_23810BFD8()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_23810C010()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  return sub_23810B268();
}

uint64_t sub_23810C028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED100, &qword_23815DCA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23810C0B8()
{
  result = qword_27DEED130;
  if (!qword_27DEED130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED0F8, &qword_23815DCA0);
    sub_2380711D4(&qword_27DEED138, &unk_27DEED140, &qword_23815DD00);
    sub_2380711D4(&unk_27DEEAB30, &unk_27DEED150, &qword_238158400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED130);
  }

  return result;
}