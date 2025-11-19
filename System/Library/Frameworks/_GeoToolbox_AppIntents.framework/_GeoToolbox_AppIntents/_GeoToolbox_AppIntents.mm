uint64_t sub_23B6F04CC(void *a1)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23B6F77F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v34[-v8];
  v10 = [a1 postalAddress];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(MEMORY[0x277CBDB80]) init];
    v13 = [v12 stringFromPostalAddress_];

    v14 = sub_23B6F7954();
    v16 = v15;

    *v9 = v14;
    v9[1] = v16;
    (*(v3 + 104))(v9, *MEMORY[0x277CCB110], v2);
    v17 = sub_23B6F50BC(0, 1, 1, MEMORY[0x277D84F90]);
    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      v17 = sub_23B6F50BC(v18 > 1, v19 + 1, 1, v17);
    }

    v17[2] = v19 + 1;
    (*(v3 + 32))(v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19, v9, v2);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v20 = [a1 location];
  if (v20)
  {
    *v7 = v20;
    v21 = v20;
    (*(v3 + 104))(v7, *MEMORY[0x277CCB108], v2);
    v22 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_23B6F50BC(0, v17[2] + 1, 1, v17);
    }

    v24 = v17[2];
    v23 = v17[3];
    if (v24 >= v23 >> 1)
    {
      v17 = sub_23B6F50BC(v23 > 1, v24 + 1, 1, v17);
    }

    v17[2] = v24 + 1;
    (*(v3 + 32))(v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v24, v7, v2);
  }

  v25 = [a1 name];
  if (v25)
  {
    v26 = v25;
    sub_23B6F7954();
  }

  sub_23B6F7834();
  v27 = objc_opt_self();
  v35[0] = 0;
  v28 = [v27 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v35];
  v29 = v35[0];
  if (v28)
  {
    sub_23B6F77B4();

    result = sub_23B6F7824();
  }

  else
  {
    v31 = v29;
    v32 = sub_23B6F7744();

    swift_willThrow();
    result = MEMORY[0x23EEA4E20](v32);
  }

  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static PlaceDescriptor.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E17B460 != -1)
  {
    swift_once();
  }

  v2 = sub_23B6F76B4();
  v3 = __swift_project_value_buffer(v2, qword_27E17B470);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static PlaceDescriptor.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27E17B460 != -1)
  {
    swift_once();
  }

  v2 = sub_23B6F76B4();
  v3 = __swift_project_value_buffer(v2, qword_27E17B470);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static PlaceDescriptor.typeDisplayRepresentation.modify())()
{
  if (qword_27E17B460 != -1)
  {
    swift_once();
  }

  v0 = sub_23B6F76B4();
  __swift_project_value_buffer(v0, qword_27E17B470);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t PlaceDescriptor.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4A0, &qword_23B6F7D80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v4 = &v49 - v3;
  v5 = *(*(sub_23B6F77D4() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v64 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_23B6F7944() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v62 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_23B6F7924() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v57 = sub_23B6F7784();
  v10 = *(v57 - 8);
  v11 = *(v10 + 64);
  v12 = (MEMORY[0x28223BE20])();
  v65 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  v19 = sub_23B6F7764();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v63 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v49 - v24;
  sub_23B6F7864();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v55 = [objc_opt_self() bundleForClass_];
  v27 = [v55 bundleURL];
  sub_23B6F77A4();

  v28 = *MEMORY[0x277CC9118];
  v29 = *(v20 + 104);
  v66 = v25;
  v29(v25, v28, v19);
  sub_23B6F7754();
  sub_23B6F7754();
  v54 = v1;
  sub_23B6F7804();
  v58 = v18;
  v56 = v10;
  v61 = v19;
  if (v30)
  {
    v52 = v16;
    v53 = v4;
    sub_23B6F7914();
    sub_23B6F7904();
    sub_23B6F78F4();

    sub_23B6F7904();
    sub_23B6F7934();
    v51 = v20;
    v50 = *(v20 + 16);
    v50(v63, v66, v19);
    sub_23B6F77C4();
    v31 = v65;
    sub_23B6F7794();
    v32 = v10;
    v33 = *(v10 + 8);
    v34 = v57;
    v60 = v33;
    v33(v18, v57);
    v49 = *(v32 + 32);
    v49(v18, v31, v34);
    sub_23B6F7874();
    if (v35)
    {
      sub_23B6F7914();
      sub_23B6F7904();
      sub_23B6F78F4();

      sub_23B6F7904();
      sub_23B6F7934();
      v50(v63, v66, v61);
      sub_23B6F77C4();
      v36 = v65;
      sub_23B6F7794();
      v37 = v52;
      v60(v52, v34);
      v16 = v37;
      v49(v37, v36, v34);
      v4 = v53;
    }

    else
    {
      v16 = v52;
      v4 = v53;
      v36 = v65;
    }

    v39 = v58;
    v20 = v51;
    v40 = v56;
  }

  else
  {
    sub_23B6F7874();
    if (v38)
    {
      sub_23B6F7914();
      sub_23B6F7904();
      sub_23B6F78F4();

      sub_23B6F7904();
      sub_23B6F7934();
    }

    else
    {
      sub_23B6F78E4();
    }

    (*(v20 + 16))(v63, v66, v19);
    sub_23B6F77C4();
    v36 = v65;
    sub_23B6F7794();
    v40 = v56;
    v34 = v57;
    v39 = v58;
    v60 = *(v56 + 8);
    v60(v58, v57);
    (*(v40 + 32))(v39, v36, v34);
  }

  v41 = *(v40 + 16);
  v41(v36, v39, v34);
  v41(v4, v16, v34);
  (*(v40 + 56))(v4, 0, 1, v34);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4A8, &qword_23B6F7D88);
  v43 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42 - 8);
  v45 = &v49 - v44;
  v46 = sub_23B6F7684();
  (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
  sub_23B6F7694();

  v47 = v60;
  v60(v16, v34);
  v47(v39, v34);
  return (*(v20 + 8))(v66, v61);
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

uint64_t static PlaceDescriptor.defaultResolverSpecification.getter()
{
  v0 = sub_23B6F7884();
  v1 = sub_23B6F14A8();
  MEMORY[0x23EEA48F0](v1, v0, &_s38PlaceDescriptorFromCLPlacemarkResolverVN, v1);
  sub_23B6F6988(&qword_2814F8AB8, MEMORY[0x277CCB120]);
  return sub_23B6F7704();
}

unint64_t sub_23B6F14A8()
{
  result = qword_27E17B4B0;
  if (!qword_27E17B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B4B0);
  }

  return result;
}

uint64_t sub_23B6F14FC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_23B6F1520, 0, 0);
}

uint64_t sub_23B6F1520()
{
  v1 = *(v0 + 16);
  sub_23B6F04CC(*(v0 + 24));
  v2 = sub_23B6F7884();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23B6F1678(uint64_t a1)
{
  v2 = sub_23B6F14A8();
  MEMORY[0x23EEA48F0](v2, a1, &_s38PlaceDescriptorFromCLPlacemarkResolverVN, v2);
  return sub_23B6F7704();
}

uint64_t sub_23B6F16EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA478] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23B6F17B0;

  return MEMORY[0x28210C4A8](a1, a2, a3, a4);
}

uint64_t sub_23B6F17B0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23B6F18A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E17B460 != -1)
  {
    swift_once();
  }

  v2 = sub_23B6F76B4();
  v3 = __swift_project_value_buffer(v2, qword_27E17B470);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t PlaceDescriptor.convertToEntity()@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_23B6F7884();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v1);
  return PlaceDescriptorEntity.init(_:)(v6, a1);
}

uint64_t PlaceDescriptorEntity.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v96 = a2;
  v3 = sub_23B6F77F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v115 = (&v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v94 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v94 - v11;
  v103 = sub_23B6F77E4();
  v106 = *(v103 - 8);
  v13 = *(v106 + 64);
  v14 = MEMORY[0x28223BE20](v103);
  v102 = (&v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v101 = &v94 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4B8, &qword_23B6F7D90);
  sub_23B6F36E4();
  v99 = sub_23B6F7644();
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4C8, &qword_23B6F7D98);
  v17 = sub_23B6F7654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4D0, &qword_23B6F7DA0);
  sub_23B6F3738();
  v98 = sub_23B6F7644();
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4E0, &qword_23B6F7DA8);
  v97 = sub_23B6F7664();
  v122 = sub_23B6F7804();
  v123 = v18;
  v95 = v17;
  sub_23B6F7634();
  v104 = a1;
  v19 = sub_23B6F7844();
  v20 = *(v19 + 16);
  if (v20)
  {
    v121 = MEMORY[0x277D84F90];
    sub_23B6F5A40(0, v20, 0);
    v21 = v121;
    v23 = *(v4 + 16);
    v22 = v4 + 16;
    v112 = v23;
    v24 = (*(v22 + 64) + 32) & ~*(v22 + 64);
    v94 = v19;
    v25 = v19 + v24;
    v26 = *(v22 + 56);
    v110 = (v22 + 72);
    v111 = v26;
    LODWORD(v109) = *MEMORY[0x277CCB110];
    v105 = *MEMORY[0x277CCB100];
    v107 = (v22 + 80);
    v108 = (v22 - 8);
    v100 = *MEMORY[0x277CCB108];
    v113 = v10;
    v114 = v22;
    v118 = v12;
    while (1)
    {
      v27 = v3;
      v28 = v3;
      v29 = v112;
      v112(v12, v25, v27);
      v29(v10, v12, v28);
      v30 = sub_23B6F7654();
      v119 = sub_23B6F7664();
      v120 = sub_23B6F7664();
      v31 = v115;
      v29(v115, v10, v28);
      v3 = v28;
      v32 = (*v110)(v31, v28);
      if (v32 != v109)
      {
        break;
      }

      (*v107)(v31, v28);
      v33 = *(v31 + 1);
      v122 = *v31;
      v123 = v33;
      sub_23B6F7634();
      v34 = *v108;
      (*v108)(v10, v28);
      v34(v12, v28);
      v35 = v119;
LABEL_12:
      v121 = v21;
      v45 = v21[2];
      v44 = v21[3];
      if (v45 >= v44 >> 1)
      {
        sub_23B6F5A40((v44 > 1), v45 + 1, 1);
        v21 = v121;
      }

      v21[2] = v45 + 1;
      v46 = &v21[3 * v45];
      v46[4] = v30;
      v46[5] = v35;
      v46[6] = v120;
      v25 += v111;
      --v20;
      v10 = v113;
      v12 = v118;
      if (!v20)
      {

        goto LABEL_17;
      }
    }

    if (v32 == v105)
    {
      (*v107)(v31, v28);
      v36 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*v31 longitude:v31[1]];
      v37 = v10;
      v38 = [objc_opt_self() placemarkWithLocation:v36 name:0 postalAddress:0];

      v122 = v38;
      v39 = v38;
      v35 = v119;
      sub_23B6F7634();
    }

    else
    {
      v35 = v119;
      if (v32 != v100)
      {
        v43 = v31;
        v41 = *v108;
        (*v108)(v10, v28);
        v41(v118, v28);
        v42 = v43;
        goto LABEL_11;
      }

      (*v107)(v31, v28);
      v40 = *v31;
      v122 = [objc_opt_self() placemarkWithLocation:*v31 name:0 postalAddress:{0, v94}];
      v37 = v10;
      v39 = v122;
      sub_23B6F7634();
    }

    v41 = *v108;
    (*v108)(v37, v28);
    v42 = v118;
LABEL_11:
    v41(v42, v28);
    v3 = v28;
    goto LABEL_12;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_17:
  v122 = v21;
  sub_23B6F7634();
  v47 = v104;
  result = sub_23B6F7854();
  v49 = result;
  v50 = *(result + 16);
  v51 = v103;
  v52 = v102;
  v53 = v101;
  if (!v50)
  {

    v84 = MEMORY[0x277D84F90];
LABEL_46:
    v122 = v84;
    sub_23B6F7634();
    v85 = sub_23B6F7814();
    if (v86 >> 60 != 15)
    {
      v64 = v85;
      v65 = v86;
      sub_23B6F725C(0, &qword_27E17B4E8, 0x277CCAAC8);
      sub_23B6F725C(0, &qword_27E17B4F0, 0x277CBFC40);
      v87 = sub_23B6F7974();
      if (!v87)
      {
LABEL_52:
        v93 = sub_23B6F7884();
        (*(*(v93 - 8) + 8))(v47, v93);
        result = sub_23B6F5A60(v64, v65);
        goto LABEL_50;
      }

      v122 = v87;
      v88 = v87;
      sub_23B6F7634();
      sub_23B6F5A60(v64, v65);
    }

    v89 = sub_23B6F7884();
    result = (*(*(v89 - 8) + 8))(v47, v89);
LABEL_50:
    v90 = v96;
    v91 = v95;
    *v96 = v99;
    v90[1] = v91;
    v92 = v97;
    v90[2] = v98;
    v90[3] = v92;
    return result;
  }

  v54 = 0;
  v116 = result + ((*(v106 + 80) + 32) & ~*(v106 + 80));
  v114 = v106 + 88;
  v115 = (v106 + 16);
  LODWORD(v113) = *MEMORY[0x277CCB0F0];
  v112 = (v106 + 8);
  v110 = result;
  v111 = (v106 + 96);
  v117 = MEMORY[0x277D84F90];
  v109 = v50;
  while (v54 < v49[2])
  {
    v56 = v106;
    v57 = *(v106 + 72);
    v118 = v54;
    v58 = *(v106 + 16);
    v58(v53, v116 + v57 * v54, v51);
    v58(v52, v53, v51);
    v59 = (*(v56 + 88))(v52, v51);
    if (v59 == v113)
    {
      (*v111)(v52, v51);
      v60 = *v52 + 64;
      v61 = 1 << *(*v52 + 32);
      if (v61 < 64)
      {
        v62 = ~(-1 << v61);
      }

      else
      {
        v62 = -1;
      }

      v63 = v62 & *(*v52 + 64);
      v64 = (v61 + 63) >> 6;
      v119 = *v52;

      v65 = 0;
      v66 = MEMORY[0x277D84F90];
      if (!v63)
      {
        goto LABEL_28;
      }

      do
      {
        v120 = v66;
LABEL_32:
        v68 = (v65 << 10) | (16 * __clz(__rbit64(v63)));
        v69 = *(v119 + 48) + v68;
        v70 = *v69;
        v71 = *(v69 + 8);
        v72 = *(v119 + 56) + v68;
        v74 = *v72;
        v73 = *(v72 + 8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4F8, &qword_23B6F7DB0);

        v75 = sub_23B6F7654();
        v76 = sub_23B6F7654();
        v122 = v70;
        v123 = v71;
        v47 = v76;

        sub_23B6F7634();
        v122 = v74;
        v123 = v73;

        sub_23B6F7634();

        v66 = v120;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_23B6F51F0(0, *(v66 + 2) + 1, 1, v66);
        }

        v78 = *(v66 + 2);
        v77 = *(v66 + 3);
        if (v78 >= v77 >> 1)
        {
          v66 = sub_23B6F51F0((v77 > 1), v78 + 1, 1, v66);
        }

        v63 &= v63 - 1;
        *(v66 + 2) = v78 + 1;
        v79 = &v66[16 * v78];
        *(v79 + 4) = v75;
        *(v79 + 5) = v47;
      }

      while (v63);
      while (1)
      {
LABEL_28:
        v67 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          __break(1u);
          goto LABEL_52;
        }

        if (v67 >= v64)
        {
          break;
        }

        v63 = *(v60 + 8 * v67);
        ++v65;
        if (v63)
        {
          v120 = v66;
          v65 = v67;
          goto LABEL_32;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B500, &qword_23B6F7DB8);
      sub_23B6F5AC8();
      v80 = sub_23B6F7644();
      v122 = v66;
      sub_23B6F7634();
      v53 = v101;
      v51 = v103;
      (*v112)(v101, v103);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v47 = v104;
        v52 = v102;
        v49 = v110;
        v81 = v117;
      }

      else
      {
        result = sub_23B6F50E4(0, *(v117 + 2) + 1, 1, v117);
        v81 = result;
        v47 = v104;
        v52 = v102;
        v49 = v110;
      }

      v83 = *(v81 + 2);
      v82 = *(v81 + 3);
      if (v83 >= v82 >> 1)
      {
        result = sub_23B6F50E4((v82 > 1), v83 + 1, 1, v81);
        v81 = result;
      }

      *(v81 + 2) = v83 + 1;
      v117 = v81;
      *&v81[8 * v83 + 32] = v80;
      v50 = v109;
    }

    else
    {
      v55 = *v112;
      (*v112)(v53, v51);
      result = v55(v52, v51);
    }

    v54 = v118 + 1;
    if (v118 + 1 == v50)
    {

      v84 = v117;
      goto LABEL_46;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23B6F26B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  return PlaceDescriptorEntity.init(_:)(v5, a2);
}

void PlaceDescriptorEntity.convertToSystemIntentValue()(uint64_t a1@<X8>)
{
  v76[2] = a1;
  v88 = sub_23B6F77E4();
  v81 = *(v88 - 8);
  v2 = *(v81 + 64);
  v3 = MEMORY[0x28223BE20](v88);
  v80 = (v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v87 = v76 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B510, &qword_23B6F7DC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (v76 - v8);
  v10 = sub_23B6F77F4();
  v86 = *(v10 - 8);
  v11 = *(v86 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v15 = v1[1];
  v17 = v1[2];
  v16 = v1[3];
  sub_23B6F7624();
  v18 = v96;
  if (v96)
  {
    sub_23B6F7624();
    v19 = v96[2];

    if (!v19)
    {
      sub_23B6F04CC(v18);

      return;
    }
  }

  v79 = v15;
  v82 = v17;
  sub_23B6F7624();
  v20 = v96;
  v98 = v96[2];
  if (v98)
  {
    v21 = 0;
    LODWORD(v90) = *MEMORY[0x277CCB110];
    v91 = (v86 + 104);
    v94 = (v86 + 56);
    LODWORD(v84) = *MEMORY[0x277CCB100];
    LODWORD(v83) = *MEMORY[0x277CCB108];
    v92 = (v86 + 32);
    v93 = (v86 + 48);
    v22 = v96 + 6;
    v89 = MEMORY[0x277D84F90];
    v85 = v13;
    v95 = v96;
    while (1)
    {
      if (v21 >= v20[2])
      {
        goto LABEL_60;
      }

      v23 = *(v22 - 2);
      v24 = *(v22 - 1);
      v25 = *v22;

      sub_23B6F7624();
      v26 = v97;
      if (v97)
      {
        break;
      }

      sub_23B6F7624();
      v33 = v96;
      if (!v96 || (v34 = [v96 location], v33, !v34))
      {
        sub_23B6F7624();
        v40 = v96;
        if (v96 && (v41 = [v96 location], v40, v41))
        {
          *v9 = v41;
          v27 = v83;
          v13 = v85;
LABEL_11:
          (*v91)(v9, v27, v10);
          v28 = 0;
        }

        else
        {
          v28 = 1;
          v13 = v85;
        }

        (*v94)(v9, v28, 1, v10);

        if ((*v93)(v9, 1, v10) != 1)
        {
          goto LABEL_13;
        }

        goto LABEL_6;
      }

      [v34 coordinate];
      v36 = v35;
      v38 = v37;

      *v9 = v36;
      v9[1] = v38;
      (*v91)(v9, v84, v10);
      (*v94)(v9, 0, 1, v10);

      v39 = (*v93)(v9, 1, v10);
      v13 = v85;
      if (v39 != 1)
      {
LABEL_13:
        v29 = *v92;
        (*v92)(v13, v9, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_23B6F52FC(0, v89[2] + 1, 1, v89, &qword_27E17B758, &qword_23B6F8BC8, MEMORY[0x277CCB118]);
        }

        v31 = v89[2];
        v30 = v89[3];
        if (v31 >= v30 >> 1)
        {
          v89 = sub_23B6F52FC(v30 > 1, v31 + 1, 1, v89, &qword_27E17B758, &qword_23B6F8BC8, MEMORY[0x277CCB118]);
        }

        v32 = v89;
        v89[2] = v31 + 1;
        v29(&v32[((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v31], v13, v10);
        goto LABEL_7;
      }

LABEL_6:
      sub_23B6F5B1C(v9);
LABEL_7:
      ++v21;
      v22 += 3;
      v20 = v95;
      if (v98 == v21)
      {
        goto LABEL_27;
      }
    }

    *v9 = v96;
    v9[1] = v26;
    v27 = v90;
    goto LABEL_11;
  }

  v89 = MEMORY[0x277D84F90];
LABEL_27:

  sub_23B6F7624();
  v76[1] = v96;
  v76[0] = v97;
  sub_23B6F7624();
  v42 = v96;
  v83 = v96[2];
  if (!v83)
  {
LABEL_55:

    sub_23B6F7834();
    return;
  }

  v43 = 0;
  v82 = (v96 + 4);
  v78 = *MEMORY[0x277CCB0F0];
  v77 = (v81 + 104);
  v44 = MEMORY[0x277D84F90];
  v86 = v81 + 32;
  v79 = v96;
  while (1)
  {
    if (v43 >= v42[2])
    {
      goto LABEL_61;
    }

    v45 = *&v82[8 * v43];

    sub_23B6F7624();
    v46 = v96;
    if (v96)
    {
      break;
    }

LABEL_30:
    if (++v43 == v83)
    {
      goto LABEL_55;
    }
  }

  v84 = v43;
  v85 = v44;
  v92 = v96[2];
  if (!v92)
  {
    v49 = MEMORY[0x277D84F98];
LABEL_50:

    v71 = v80;
    *v80 = v49;
    v72 = v88;
    (*v77)(v71, v78, v88);
    v73 = *v86;
    (*v86)(v87, v71, v72);
    v44 = v85;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_23B6F52FC(0, *(v44 + 2) + 1, 1, v44, &qword_27E17B748, &qword_23B6F8BB8, MEMORY[0x277CCB0F8]);
    }

    v42 = v79;
    v43 = v84;
    v75 = *(v44 + 2);
    v74 = *(v44 + 3);
    if (v75 >= v74 >> 1)
    {
      v44 = sub_23B6F52FC(v74 > 1, v75 + 1, 1, v44, &qword_27E17B748, &qword_23B6F8BB8, MEMORY[0x277CCB0F8]);
    }

    *(v44 + 2) = v75 + 1;
    v73(&v44[((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v75], v87, v88);
    goto LABEL_30;
  }

  v47 = 0;
  v48 = v96 + 5;
  v49 = MEMORY[0x277D84F98];
  v90 = v96;
  v91 = v45;
  while (v47 < v46[2])
  {
    v93 = v48;
    v94 = v47;
    v53 = *(v48 - 1);
    v52 = *v48;

    v98 = v53;
    sub_23B6F7624();
    v55 = v96;
    v54 = v97;
    sub_23B6F7624();
    v56 = v97;
    v95 = v96;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96 = v49;
    v59 = sub_23B6F54D8(v55, v54);
    v60 = v49[2];
    v61 = (v58 & 1) == 0;
    v62 = v60 + v61;
    if (__OFADD__(v60, v61))
    {
      goto LABEL_58;
    }

    v63 = v58;
    if (v49[3] >= v62)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v58)
        {
          goto LABEL_35;
        }
      }

      else
      {
        sub_23B6F58C8();
        if (v63)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      sub_23B6F5550(v62, isUniquelyReferenced_nonNull_native);
      v64 = sub_23B6F54D8(v55, v54);
      if ((v63 & 1) != (v65 & 1))
      {
        goto LABEL_62;
      }

      v59 = v64;
      if (v63)
      {
LABEL_35:

        v49 = v96;
        v50 = (v96[7] + 16 * v59);
        v51 = v50[1];
        *v50 = v95;
        v50[1] = v56;

        goto LABEL_36;
      }
    }

    v49 = v96;
    v96[(v59 >> 6) + 8] |= 1 << v59;
    v66 = (v49[6] + 16 * v59);
    *v66 = v55;
    v66[1] = v54;
    v67 = (v49[7] + 16 * v59);
    *v67 = v95;
    v67[1] = v56;

    v68 = v49[2];
    v69 = __OFADD__(v68, 1);
    v70 = v68 + 1;
    if (v69)
    {
      goto LABEL_59;
    }

    v49[2] = v70;
LABEL_36:
    v47 = v94 + 1;
    v48 = v93 + 2;
    v46 = v90;
    if (v92 == v94 + 1)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  sub_23B6F79B4();
  __break(1u);
}

uint64_t PlaceDescriptorEntity.PlaceRepresentationEntity.placeRepresentation.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = *v1;
  sub_23B6F7624();
  if (v20)
  {
    *a1 = v19;
    a1[1] = v20;
    v6 = MEMORY[0x277CCB110];
LABEL_3:
    v7 = *v6;
    v8 = sub_23B6F77F4();
    v9 = *(v8 - 8);
    (*(v9 + 104))(a1, v7, v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  sub_23B6F7624();
  if (v19)
  {
    v11 = [v19 location];

    if (v11)
    {
      [v11 coordinate];
      v13 = v12;
      v15 = v14;

      *a1 = v13;
      a1[1] = v15;
      v6 = MEMORY[0x277CCB100];
      goto LABEL_3;
    }
  }

  sub_23B6F7624();
  if (v19)
  {
    v16 = [v19 location];

    if (v16)
    {
      *a1 = v16;
      v17 = *MEMORY[0x277CCB108];
      v8 = sub_23B6F77F4();
      v9 = *(v8 - 8);
      (*(v9 + 104))(a1, v17, v8);
      return (*(v9 + 56))(a1, 0, 1, v8);
    }
  }

  v18 = sub_23B6F77F4();
  return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
}

uint64_t PlaceDescriptorEntity.PlaceRepresentationEntity.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_23B6F77F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4C8, &qword_23B6F7D98);
  v9 = sub_23B6F7654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4E0, &qword_23B6F7DA8);
  v10 = sub_23B6F7664();
  v11 = sub_23B6F7664();
  (*(v5 + 16))(v8, a1, v4);
  v12 = (*(v5 + 88))(v8, v4);
  if (v12 == *MEMORY[0x277CCB110])
  {
    (*(v5 + 96))(v8, v4);
    v13 = *(v8 + 1);
    v21[0] = *v8;
    v21[1] = v13;
    sub_23B6F7634();
  }

  else if (v12 == *MEMORY[0x277CCB100])
  {
    (*(v5 + 96))(v8, v4);
    v14 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*v8 longitude:*(v8 + 1)];
    v15 = [objc_opt_self() placemarkWithLocation:v14 name:0 postalAddress:0];

    v21[0] = v15;
    v16 = v15;
    sub_23B6F7634();
  }

  else
  {
    if (v12 != *MEMORY[0x277CCB108])
    {
      v20 = *(v5 + 8);
      v20(a1, v4);
      result = (v20)(v8, v4);
      goto LABEL_8;
    }

    (*(v5 + 96))(v8, v4);
    v17 = *v8;
    v21[0] = [objc_opt_self() placemarkWithLocation:v17 name:0 postalAddress:0];
    v18 = v21[0];
    sub_23B6F7634();
  }

  result = (*(v5 + 8))(a1, v4);
LABEL_8:
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  return result;
}

unint64_t sub_23B6F36E4()
{
  result = qword_27E17B4C0;
  if (!qword_27E17B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B4C0);
  }

  return result;
}

unint64_t sub_23B6F3738()
{
  result = qword_27E17B4D8;
  if (!qword_27E17B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B4D8);
  }

  return result;
}

uint64_t PlaceDescriptorEntity.SupportingPlaceRepresentationEntity.ServiceIdentifier.init(bundleIdentifier:uniqueIdentifier:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4F8, &qword_23B6F7DB0);
  *a1 = sub_23B6F7654();
  a1[1] = sub_23B6F7654();
  sub_23B6F7634();
  return sub_23B6F7634();
}

uint64_t PlaceDescriptorEntity.SupportingPlaceRepresentationEntity.init(_:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B500, &qword_23B6F7DB8);
  sub_23B6F5AC8();
  *a1 = sub_23B6F7644();
  return sub_23B6F7634();
}

uint64_t sub_23B6F38CC@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4C8, &qword_23B6F7D98);
  *a1 = sub_23B6F7654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4E0, &qword_23B6F7DA8);
  a1[1] = sub_23B6F7664();
  result = sub_23B6F7664();
  a1[2] = result;
  return result;
}

uint64_t PlaceDescriptorEntity.PlaceRepresentationEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4C8, &qword_23B6F7D98);
  *a1 = sub_23B6F7654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4E0, &qword_23B6F7DA8);
  a1[1] = sub_23B6F7664();
  result = sub_23B6F7664();
  a1[2] = result;
  return result;
}

uint64_t sub_23B6F3AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA478] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23B6F75C4;

  return MEMORY[0x28210C4A8](a1, a2, a3, a4);
}

uint64_t sub_23B6F3C50@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4F8, &qword_23B6F7DB0);
  *a1 = sub_23B6F7654();
  result = sub_23B6F7654();
  a1[1] = result;
  return result;
}

uint64_t PlaceDescriptorEntity.SupportingPlaceRepresentationEntity.ServiceIdentifier.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4F8, &qword_23B6F7DB0);
  *a1 = sub_23B6F7654();
  result = sub_23B6F7654();
  a1[1] = result;
  return result;
}

uint64_t PlaceDescriptorEntity.SupportingPlaceRepresentationEntity.ServiceIdentifier.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4A0, &qword_23B6F7D80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  v5 = sub_23B6F7784();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_23B6F7924();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = *v0;
  v11 = v0[1];
  sub_23B6F7914();
  sub_23B6F7904();
  sub_23B6F7624();
  sub_23B6F78F4();

  sub_23B6F7904();
  sub_23B6F7624();
  sub_23B6F78F4();

  sub_23B6F7904();
  sub_23B6F7774();
  (*(v6 + 56))(v4, 1, 1, v5);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4A8, &qword_23B6F7D88);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v18 - v14;
  v16 = sub_23B6F7684();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  return sub_23B6F7694();
}

uint64_t sub_23B6F40EC@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B500, &qword_23B6F7DB8);
  sub_23B6F5AC8();
  result = sub_23B6F7644();
  *a1 = result;
  return result;
}

uint64_t PlaceDescriptorEntity.SupportingPlaceRepresentationEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B500, &qword_23B6F7DB8);
  sub_23B6F5AC8();
  result = sub_23B6F7644();
  *a1 = result;
  return result;
}

uint64_t sub_23B6F4314@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4B8, &qword_23B6F7D90);
  sub_23B6F36E4();
  *a1 = sub_23B6F7644();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4C8, &qword_23B6F7D98);
  a1[1] = sub_23B6F7654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4D0, &qword_23B6F7DA0);
  sub_23B6F3738();
  a1[2] = sub_23B6F7644();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4E0, &qword_23B6F7DA8);
  result = sub_23B6F7664();
  a1[3] = result;
  return result;
}

uint64_t PlaceDescriptorEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4B8, &qword_23B6F7D90);
  sub_23B6F36E4();
  *a1 = sub_23B6F7644();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4C8, &qword_23B6F7D98);
  a1[1] = sub_23B6F7654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4D0, &qword_23B6F7DA0);
  sub_23B6F3738();
  a1[2] = sub_23B6F7644();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B4E0, &qword_23B6F7DA8);
  result = sub_23B6F7664();
  a1[3] = result;
  return result;
}

uint64_t sub_23B6F451C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E17B468 != -1)
  {
    swift_once();
  }

  v2 = sub_23B6F76B4();
  v3 = __swift_project_value_buffer(v2, qword_27E17B488);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static PlaceDescriptorEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E17B468 != -1)
  {
    swift_once();
  }

  v2 = sub_23B6F76B4();
  v3 = __swift_project_value_buffer(v2, qword_27E17B488);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_23B6F4738(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23B6F76B4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_23B6F76A4();
}

uint64_t static PlaceDescriptorEntity.transferRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B518, &qword_23B6F7DC8);
  v1 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v25 = &v24 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B520, &qword_23B6F7DD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - v5;
  v7 = sub_23B6F78D4();
  v24 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B528, &qword_23B6F7DD8);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  v18 = *(v8 + 56);
  v18(v6, 1, 1, v7);
  sub_23B6F78C4();
  sub_23B6F5B84();
  sub_23B6F7894();
  v18(v6, 1, 1, v24);
  sub_23B6F78C4();
  sub_23B6F78A4();
  v19 = v25;
  v20 = *(v26 + 48);
  v21 = v11[2];
  v21(v25, v17, v10);
  v21(&v19[v20], v15, v10);
  sub_23B6F78B4();
  v22 = v11[1];
  v22(v15, v10);
  return (v22)(v17, v10);
}

uint64_t sub_23B6F4B0C(_OWORD *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  *(v1 + 48) = *a1;
  *(v1 + 64) = v2;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23B6F4BA0, 0, 0);
}

uint64_t sub_23B6F4BA0()
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = *(v0 + 64);
  v15 = *(v0 + 48);
  v1 = objc_opt_self();
  *(v0 + 16) = v15;
  *(v0 + 32) = v14;
  sub_23B6F5EB8();
  v2 = sub_23B6F7714();
  *(v0 + 16) = 0;
  v3 = [v1 archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v0 + 16];

  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = sub_23B6F77B4();
    v7 = v6;

    v8 = *(v0 + 8);
    v9 = *MEMORY[0x277D85DE8];

    return v8(v5, v7);
  }

  else
  {
    v11 = v4;
    sub_23B6F7744();

    swift_willThrow();
    v12 = *(v0 + 8);
    v13 = *MEMORY[0x277D85DE8];

    return v12();
  }
}

uint64_t sub_23B6F4D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return MEMORY[0x2822009F8](sub_23B6F4D64, 0, 0);
}

uint64_t sub_23B6F4D64()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_23B6F725C(0, &qword_27E17B4E8, 0x277CCAAC8);
  sub_23B6F725C(0, &qword_27E17B738, 0x277D23950);
  v3 = sub_23B6F7974();
  if (v3 && (v4 = v3, sub_23B6F5EB8(), sub_23B6F7734(), v4, (v5 = *(v0 + 16)) != 0))
  {
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = *(v0 + 24);
    *v6 = v5;
    *(v6 + 8) = v8;
    *(v6 + 24) = v7;
    v9 = *(v0 + 8);
  }

  else
  {
    sub_23B6F72A4();
    swift_allocError();
    swift_willThrow();
    v9 = *(v0 + 8);
  }

  return v9();
}

uint64_t sub_23B6F4E9C()
{
  sub_23B6F7A04();
  MEMORY[0x23EEA4C10](0);
  return sub_23B6F7A24();
}

uint64_t sub_23B6F4F08()
{
  sub_23B6F7A04();
  MEMORY[0x23EEA4C10](0);
  return sub_23B6F7A24();
}

uint64_t IntentStandardRepresentation<>.init(exporting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23B6F7884();
  v9 = sub_23B6F6988(&qword_2814F8AB8, MEMORY[0x277CCB120]);
  return MEMORY[0x23EEA48E0](a1, a2, 0, 0, a3, v8, a4, v9);
}

uint64_t IntentStandardRepresentation<>.init(exporting:importing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_23B6F7884();
  v13 = sub_23B6F6988(&qword_2814F8AB8, MEMORY[0x277CCB120]);
  return MEMORY[0x23EEA48E0](a1, a2, a3, a4, a5, v12, a6, v13);
}

char *sub_23B6F50E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B760, &qword_23B6F8BD0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23B6F51F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B768, &qword_23B6F8BD8);
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

size_t sub_23B6F52FC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_23B6F54D8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23B6F7A04();
  sub_23B6F7964();
  v6 = sub_23B6F7A24();

  return sub_23B6F5810(a1, a2, v6);
}

uint64_t sub_23B6F5550(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B750, &qword_23B6F8BC0);
  v40 = a2;
  result = sub_23B6F7994();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_23B6F7A04();
      sub_23B6F7964();
      result = sub_23B6F7A24();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_23B6F5810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23B6F79A4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_23B6F58C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B750, &qword_23B6F8BC0);
  v2 = *v0;
  v3 = sub_23B6F7984();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_23B6F5A40(char *a1, int64_t a2, char a3)
{
  result = sub_23B6F7360(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_23B6F5A60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23B6F5A74(a1, a2);
  }

  return a1;
}

uint64_t sub_23B6F5A74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_23B6F5AC8()
{
  result = qword_27E17B508;
  if (!qword_27E17B508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B508);
  }

  return result;
}

uint64_t sub_23B6F5B1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B510, &qword_23B6F7DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B6F5B84()
{
  result = qword_27E17B530;
  if (!qword_27E17B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B530);
  }

  return result;
}

unint64_t sub_23B6F5BDC()
{
  result = qword_27E17B538;
  if (!qword_27E17B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B538);
  }

  return result;
}

unint64_t sub_23B6F5C34()
{
  result = qword_27E17B540;
  if (!qword_27E17B540)
  {
    sub_23B6F725C(255, &qword_27E17B4F0, 0x277CBFC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B540);
  }

  return result;
}

unint64_t sub_23B6F5C94()
{
  result = qword_27E17B548;
  if (!qword_27E17B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B548);
  }

  return result;
}

unint64_t sub_23B6F5EB8()
{
  result = qword_27E17B558;
  if (!qword_27E17B558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B558);
  }

  return result;
}

unint64_t sub_23B6F5F14()
{
  result = qword_27E17B560;
  if (!qword_27E17B560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B560);
  }

  return result;
}

unint64_t sub_23B6F5F6C()
{
  result = qword_27E17B568;
  if (!qword_27E17B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B568);
  }

  return result;
}

unint64_t sub_23B6F5FC4()
{
  result = qword_27E17B570;
  if (!qword_27E17B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B570);
  }

  return result;
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

unint64_t sub_23B6F60A8()
{
  result = qword_27E17B588;
  if (!qword_27E17B588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B588);
  }

  return result;
}

unint64_t sub_23B6F60FC()
{
  result = qword_27E17B590;
  if (!qword_27E17B590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B590);
  }

  return result;
}

unint64_t sub_23B6F6150()
{
  result = qword_27E17B598;
  if (!qword_27E17B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B598);
  }

  return result;
}

unint64_t sub_23B6F61A8()
{
  result = qword_27E17B5A0;
  if (!qword_27E17B5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B5A0);
  }

  return result;
}

unint64_t sub_23B6F6238()
{
  result = qword_27E17B5C0;
  if (!qword_27E17B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B5C0);
  }

  return result;
}

unint64_t sub_23B6F6294()
{
  result = qword_27E17B5C8;
  if (!qword_27E17B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B5C8);
  }

  return result;
}

unint64_t sub_23B6F62EC()
{
  result = qword_27E17B5D0;
  if (!qword_27E17B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B5D0);
  }

  return result;
}

unint64_t sub_23B6F6344()
{
  result = qword_27E17B5D8;
  if (!qword_27E17B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B5D8);
  }

  return result;
}

unint64_t sub_23B6F63D4()
{
  result = qword_27E17B5F0;
  if (!qword_27E17B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B5F0);
  }

  return result;
}

unint64_t sub_23B6F6428()
{
  result = qword_27E17B5F8;
  if (!qword_27E17B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B5F8);
  }

  return result;
}

unint64_t sub_23B6F647C()
{
  result = qword_27E17B600;
  if (!qword_27E17B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B600);
  }

  return result;
}

unint64_t sub_23B6F64D4()
{
  result = qword_27E17B608;
  if (!qword_27E17B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B608);
  }

  return result;
}

unint64_t sub_23B6F6564()
{
  result = qword_27E17B620;
  if (!qword_27E17B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B620);
  }

  return result;
}

unint64_t sub_23B6F65C0()
{
  result = qword_27E17B628;
  if (!qword_27E17B628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B628);
  }

  return result;
}

unint64_t sub_23B6F6618()
{
  result = qword_27E17B630;
  if (!qword_27E17B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B630);
  }

  return result;
}

unint64_t sub_23B6F6670()
{
  result = qword_27E17B638;
  if (!qword_27E17B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B638);
  }

  return result;
}

unint64_t sub_23B6F6700()
{
  result = qword_27E17B650;
  if (!qword_27E17B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B650);
  }

  return result;
}

unint64_t sub_23B6F6754()
{
  result = qword_27E17B658;
  if (!qword_27E17B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B658);
  }

  return result;
}

unint64_t sub_23B6F67A8()
{
  result = qword_27E17B660;
  if (!qword_27E17B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B660);
  }

  return result;
}

unint64_t sub_23B6F6800()
{
  result = qword_27E17B668;
  if (!qword_27E17B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B668);
  }

  return result;
}

unint64_t sub_23B6F6890()
{
  result = qword_27E17B680;
  if (!qword_27E17B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B680);
  }

  return result;
}

unint64_t sub_23B6F68E8()
{
  result = qword_27E17B688;
  if (!qword_27E17B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B688);
  }

  return result;
}

uint64_t sub_23B6F6988(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23B6F69D4()
{
  result = qword_27E17B698;
  if (!qword_27E17B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B698);
  }

  return result;
}

unint64_t sub_23B6F6A2C()
{
  result = qword_27E17B6A0;
  if (!qword_27E17B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B6A0);
  }

  return result;
}

unint64_t sub_23B6F6A84()
{
  result = qword_27E17B6A8;
  if (!qword_27E17B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B6A8);
  }

  return result;
}

unint64_t sub_23B6F6ADC()
{
  result = qword_27E17B6B0;
  if (!qword_27E17B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B6B0);
  }

  return result;
}

unint64_t sub_23B6F6B6C()
{
  result = qword_27E17B6C8;
  if (!qword_27E17B6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B6C8);
  }

  return result;
}

unint64_t sub_23B6F6BC0()
{
  result = qword_27E17B6D0;
  if (!qword_27E17B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B6D0);
  }

  return result;
}

unint64_t sub_23B6F6C14()
{
  result = qword_27E17B6D8;
  if (!qword_27E17B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B6D8);
  }

  return result;
}

unint64_t sub_23B6F6C6C()
{
  result = qword_27E17B6E0;
  if (!qword_27E17B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B6E0);
  }

  return result;
}

unint64_t sub_23B6F6CFC()
{
  result = qword_27E17B6F8;
  if (!qword_27E17B6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B6F8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23B6F6D78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23B6F6DC0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B6F6E24(uint64_t *a1, int a2)
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

uint64_t sub_23B6F6E6C(uint64_t result, int a2, int a3)
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

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for PlaceDescriptorEntity.SupportingPlaceRepresentationEntity(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for PlaceDescriptorEntity.SupportingPlaceRepresentationEntity(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23B6F7010(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23B6F7058(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_23B6F70A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_23B6F70EC()
{
  result = qword_27E17B710;
  if (!qword_27E17B710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E17B718, &unk_23B6F8B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B710);
  }

  return result;
}

unint64_t sub_23B6F7160()
{
  result = qword_27E17B720;
  if (!qword_27E17B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B720);
  }

  return result;
}

unint64_t sub_23B6F71B4()
{
  result = qword_27E17B728;
  if (!qword_27E17B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B728);
  }

  return result;
}

unint64_t sub_23B6F7208()
{
  result = qword_27E17B730;
  if (!qword_27E17B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B730);
  }

  return result;
}

uint64_t sub_23B6F725C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_23B6F72A4()
{
  result = qword_27E17B740;
  if (!qword_27E17B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B740);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

char *sub_23B6F7360(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17B770, &qword_23B6F8BE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t getEnumTagSinglePayload for PlaceDescriptorEntity.Errors(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PlaceDescriptorEntity.Errors(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_23B6F7570()
{
  result = qword_27E17B778;
  if (!qword_27E17B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17B778);
  }

  return result;
}