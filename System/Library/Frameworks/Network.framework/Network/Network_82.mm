uint64_t NWBrowser.Invitation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839010);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F9AD58();
  sub_182AD45E8();
  if (!v2)
  {
    sub_181F9AE00();
    sub_182AD3FF8();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t NWBrowser.Descriptor.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839020);
  v75 = *(v2 - 8);
  v76 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v74 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839028);
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839030);
  v70 = *(v6 - 8);
  v71 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v58 - v7;
  v58 = type metadata accessor for NWBrowser.Descriptor.Options(0);
  MEMORY[0x1EEE9AC00](v58);
  v77 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839038);
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839040);
  v65 = *(v13 - 8);
  v66 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v58 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839048);
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v16 = &v58 - v15;
  v17 = type metadata accessor for NWBrowser.Descriptor(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839050);
  v79 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F9AE54();
  v23 = v22;
  sub_182AD4638();
  sub_181F9A8DC(v80, v19, type metadata accessor for NWBrowser.Descriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F40);
      v41 = v67;
      sub_181F9A800(&v19[*(v40 + 48)], v67, type metadata accessor for NWBrowser.Descriptor.Options);
      LOBYTE(v81) = 3;
      sub_181F9AFA4();
      v42 = v68;
      v43 = v22;
      sub_182AD4098();
      LOBYTE(v81) = 0;
      v44 = v71;
      v45 = v78;
      sub_182AD40E8();

      if (!v45)
      {
        LOBYTE(v81) = 1;
        sub_181F9B0F4(&qword_1EA839068, type metadata accessor for NWBrowser.Descriptor.Options);
        sub_182AD4118();
      }

      (*(v70 + 8))(v42, v44);
      sub_181F9A9B8(v41, type metadata accessor for NWBrowser.Descriptor.Options);
      return (*(v79 + 8))(v43, v20);
    }

    else
    {
      v30 = v20;
      if (EnumCaseMultiPayload == 4)
      {
        v31 = v19[16];
        LOBYTE(v81) = 4;
        sub_181F9AEFC();
        v32 = v69;
        sub_182AD4098();
        LOBYTE(v81) = 0;
        v33 = v73;
        v34 = v78;
        sub_182AD40E8();

        if (!v34)
        {
          LOBYTE(v81) = v31;
          v83 = 1;
          sub_181F9AF50();
          sub_182AD4118();
        }

        (*(v72 + 8))(v32, v33);
        return (*(v79 + 8))(v23, v20);
      }

      else
      {
        v48 = *(v19 + 2);
        v80 = *(v19 + 3);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F48);
        v50 = v77;
        sub_181F9A800(&v19[*(v49 + 64)], v77, type metadata accessor for NWBrowser.Descriptor.Options);
        LOBYTE(v81) = 5;
        sub_181F9AEA8();
        v51 = v74;
        sub_182AD4098();
        LOBYTE(v81) = 0;
        v52 = v76;
        v53 = v78;
        sub_182AD40E8();

        if (v53)
        {
          v54 = v48;
          v55 = v80;
        }

        else
        {
          v56 = v48;
          v81 = v48;
          v57 = v80;
          v82 = v80;
          v83 = 1;
          sub_181C675F8();
          sub_182AD4118();
          LOBYTE(v81) = 2;
          sub_181F9B0F4(&qword_1EA839068, type metadata accessor for NWBrowser.Descriptor.Options);
          v50 = v77;
          sub_182AD4118();
          v54 = v56;
          v55 = v57;
        }

        sub_181C1F2E4(v54, v55);
        (*(v75 + 8))(v51, v52);
        sub_181F9A9B8(v50, type metadata accessor for NWBrowser.Descriptor.Options);
        return (*(v79 + 8))(v22, v30);
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v25 = v20;
    if (EnumCaseMultiPayload == 1)
    {
      LOBYTE(v81) = 1;
      sub_181F9B04C();
      v26 = v64;
      v27 = v22;
      sub_182AD4098();
      LOBYTE(v81) = 0;
      v28 = v66;
      v29 = v78;
      sub_182AD40E8();

      if (!v29)
      {
        LOBYTE(v81) = 1;
        sub_182AD40B8();
      }

      (*(v65 + 8))(v26, v28);
    }

    else
    {
      LOBYTE(v81) = 2;
      sub_181F9AFF8();
      v46 = v61;
      v27 = v22;
      sub_182AD4098();
      v47 = v63;
      sub_182AD40E8();

      (*(v62 + 8))(v46, v47);
    }

    return (*(v79 + 8))(v27, v25);
  }

  else
  {
    LOBYTE(v81) = 0;
    sub_181F9B0A0();
    v35 = v20;
    v36 = v22;
    sub_182AD4098();
    LOBYTE(v81) = 0;
    v37 = v60;
    v38 = v78;
    sub_182AD40E8();

    if (!v38)
    {
      LOBYTE(v81) = 1;
      sub_182AD40B8();
    }

    (*(v59 + 8))(v16, v37);
    return (*(v79 + 8))(v36, v35);
  }
}

uint64_t NWBrowser.Descriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8390A0);
  v130 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v133 = &v110 - v3;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8390A8);
  v129 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v138 = &v110 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8390B0);
  v6 = *(v5 - 8);
  v126 = v5;
  v127 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v137 = &v110 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8390B8);
  v123 = *(v8 - 8);
  v124 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v132 = &v110 - v9;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8390C0);
  v122 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v131 = &v110 - v10;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8390C8);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v136 = &v110 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8390D0);
  v139 = *(v12 - 8);
  v140 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v110 - v13;
  v135 = type metadata accessor for NWBrowser.Descriptor(0);
  MEMORY[0x1EEE9AC00](v135);
  v118 = (&v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v117 = (&v110 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v110 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v110 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v110 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v110 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v110 - v31;
  v33 = a1[3];
  v142 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_181F9AE54();
  v34 = v141;
  sub_182AD45E8();
  if (!v34)
  {
    v113 = v23;
    v111 = v29;
    v112 = v26;
    v114 = v20;
    v36 = v136;
    v35 = v137;
    v37 = v138;
    v116 = 0;
    v115 = v32;
    v141 = v14;
    v38 = sub_182AD4078();
    v39 = v38;
    if (*(v38 + 16) != 1 || (v40 = *(v38 + 32), v40 == 6))
    {
      v48 = sub_182AD3C98();
      swift_allocError();
      v50 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A40);
      *v50 = v135;
      v52 = v140;
      v51 = v141;
      sub_182AD3F78();
      sub_182AD3C88();
      (*(*(v48 - 8) + 104))(v50, *MEMORY[0x1E69E6AF8], v48);
      swift_willThrow();
      (*(v139 + 8))(v51, v52);
      goto LABEL_10;
    }

    if (*(v38 + 32) <= 2u)
    {
      if (!*(v38 + 32))
      {
        v145 = 0;
        sub_181F9B0A0();
        v57 = v140;
        v58 = v141;
        v59 = v116;
        sub_182AD3F58();
        if (v59)
        {
          (*(v139 + 8))(v58, v57);
          goto LABEL_10;
        }

        v145 = 0;
        v68 = v121;
        v69 = sub_182AD3FC8();
        v81 = v80;
        v138 = v69;
        v145 = 1;
        v82 = sub_182AD3F88();
        v83 = (v139 + 8);
        v98 = v82;
        v100 = v99;
        (*(v120 + 8))(v36, v68);
        (*v83)(v141, v140);
        swift_unknownObjectRelease();
        v101 = v111;
        *v111 = v138;
        v101[1] = v81;
        v101[2] = v98;
        v101[3] = v100;
LABEL_30:
        swift_storeEnumTagMultiPayload();
        v108 = v115;
        sub_181F9A800(v101, v115, type metadata accessor for NWBrowser.Descriptor);
        v41 = v134;
        goto LABEL_32;
      }

      v41 = v134;
      v42 = v141;
      v43 = v116;
      if (v40 == 1)
      {
        v145 = 1;
        sub_181F9B04C();
        v44 = v131;
        v45 = v140;
        v46 = v43;
        sub_182AD3F58();
        v47 = v139;
        if (v46)
        {
          (*(v139 + 8))(v42, v45);
LABEL_10:
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v142);
        }

        v138 = v39;
        v145 = 0;
        v71 = v119;
        v72 = sub_182AD3FC8();
        v89 = v88;
        v137 = v72;
        v145 = 1;
        v103 = sub_182AD3F88();
        v105 = v104;
        (*(v122 + 8))(v44, v71);
        (*(v47 + 8))(v141, v140);
        swift_unknownObjectRelease();
        v101 = v112;
        *v112 = v137;
        v101[1] = v89;
        v101[2] = v103;
        v101[3] = v105;
        goto LABEL_30;
      }

      v145 = 2;
      sub_181F9AFF8();
      v63 = v132;
      v64 = v140;
      sub_182AD3F58();
      v65 = v139;
      if (v43)
      {
        (*(v139 + 8))(v42, v64);
        goto LABEL_10;
      }

      v75 = v124;
      v76 = sub_182AD3FC8();
      v94 = v93;
      (*(v123 + 8))(v63, v75);
      (*(v65 + 8))(v42, v64);
      swift_unknownObjectRelease();
      v95 = v113;
      *v113 = v76;
      *(v95 + 8) = v94;
      swift_storeEnumTagMultiPayload();
      v108 = v115;
      sub_181F9A800(v95, v115, type metadata accessor for NWBrowser.Descriptor);
LABEL_32:
      sub_181F9A800(v108, v41, type metadata accessor for NWBrowser.Descriptor);
      return __swift_destroy_boxed_opaque_existential_1(v142);
    }

    if (v40 == 3)
    {
      v145 = 3;
      sub_181F9AFA4();
      v61 = v140;
      v60 = v141;
      v62 = v116;
      sub_182AD3F58();
      if (v62)
      {
        (*(v139 + 8))(v60, v61);
        goto LABEL_10;
      }

      v138 = v39;
      v145 = 0;
      v70 = v126;
      v84 = sub_182AD3FC8();
      v86 = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F40);
      v87 = v114;
      *v114 = v84;
      v87[1] = v86;
      type metadata accessor for NWBrowser.Descriptor.Options(0);
      v144 = 1;
      sub_181F9B0F4(&qword_1EA8390E0, type metadata accessor for NWBrowser.Descriptor.Options);
      sub_182AD3FF8();
      (*(v127 + 8))(v35, v70);
      (*(v139 + 8))(v60, v61);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v102 = v87;
    }

    else
    {
      v54 = v140;
      if (v40 == 4)
      {
        v145 = 4;
        sub_181F9AEFC();
        v55 = v141;
        v56 = v116;
        sub_182AD3F58();
        if (v56)
        {
          (*(v139 + 8))(v55, v54);
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v142);
        }

        v145 = 0;
        v73 = v125;
        v74 = sub_182AD3FC8();
        v91 = v90;
        v92 = v74;
        v144 = 1;
        sub_181F9B13C();
        sub_182AD3FF8();
        (*(v129 + 8))(v37, v73);
        (*(v139 + 8))(v141, v54);
        swift_unknownObjectRelease();
        v106 = v145;
        v107 = v117;
        *v117 = v92;
        *(v107 + 8) = v91;
        *(v107 + 16) = v106;
        swift_storeEnumTagMultiPayload();
        v108 = v115;
        sub_181F9A800(v107, v115, type metadata accessor for NWBrowser.Descriptor);
        v41 = v134;
        goto LABEL_32;
      }

      v145 = 5;
      sub_181F9AEA8();
      v66 = v141;
      v67 = v116;
      sub_182AD3F58();
      if (v67)
      {
        (*(v139 + 8))(v66, v54);
        goto LABEL_10;
      }

      v145 = 0;
      v77 = v128;
      v78 = sub_182AD3FC8();
      v79 = v139;
      v138 = v39;
      v96 = v118;
      *v118 = v78;
      v96[1] = v97;
      v144 = 1;
      sub_181C67934();
      sub_182AD3FF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F48);
      type metadata accessor for NWBrowser.Descriptor.Options(0);
      v143 = 2;
      sub_181F9B0F4(&qword_1EA8390E0, type metadata accessor for NWBrowser.Descriptor.Options);
      v109 = v133;
      sub_182AD3FF8();
      (*(v130 + 8))(v109, v77);
      (*(v79 + 8))(v66, v54);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v102 = v96;
    }

    v108 = v115;
    sub_181F9A800(v102, v115, type metadata accessor for NWBrowser.Descriptor);
    v41 = v134;
    goto LABEL_32;
  }

  return __swift_destroy_boxed_opaque_existential_1(v142);
}

uint64_t sub_181F95208()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_181F9523C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t NWBrowser.Result.Metadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8390F0);
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8390F8);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839100);
  v9 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v17 - v10;
  v12 = *v1;
  v19 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F9B190();
  sub_182AD4638();
  if (v12)
  {
    LOBYTE(v23) = 1;
    sub_181F9B1E4();
    v13 = v22;
    sub_182AD4098();
    v23 = v12;
    v24 = v19;
    sub_181F9B238();
    v14 = v21;
    sub_182AD4118();
    (*(v20 + 8))(v5, v14);
    return (*(v9 + 8))(v11, v13);
  }

  else
  {
    LOBYTE(v23) = 0;
    sub_181F9B28C();
    v16 = v22;
    sub_182AD4098();
    (*(v17 + 8))(v8, v18);
    return (*(v9 + 8))(v11, v16);
  }
}

uint64_t NWBrowser.Result.Metadata.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v26 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839128);
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839130);
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839138);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_181F9B190();
  v13 = v27;
  sub_182AD45E8();
  if (!v13)
  {
    v27 = v5;
    v14 = v9;
    v15 = v26;
    v16 = sub_182AD4078();
    if (*(v16 + 16) == 1)
    {
      if (*(v16 + 32))
      {
        LOBYTE(v28) = 1;
        sub_181F9B1E4();
        sub_182AD3F58();
        sub_181F9B2E0();
        v21 = v23;
        sub_182AD3FF8();
        (*(v25 + 8))(v4, v21);
        (*(v14 + 8))(v11, v8);
        swift_unknownObjectRelease();
        *v15 = v28;
      }

      else
      {
        LOBYTE(v28) = 0;
        sub_181F9B28C();
        sub_182AD3F58();
        (*(v24 + 8))(v7, v27);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
        *v15 = 0u;
      }
    }

    else
    {
      v17 = sub_182AD3C98();
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A40);
      *v19 = &type metadata for NWBrowser.Result.Metadata;
      sub_182AD3F78();
      sub_182AD3C88();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
      swift_willThrow();
      (*(v14 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t NWBrowser.Result.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838F60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v37 - v4;
  v6 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839148);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v37 - v11;
  v13 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_181F9B334();
  v14 = v46;
  sub_182AD45E8();
  if (v14)
  {
    goto LABEL_2;
  }

  v46 = v5;
  LOBYTE(v49) = 0;
  sub_181F9B0F4(&qword_1EA839158, type metadata accessor for NWEndpoint);
  sub_182AD3FF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839160);
  v51 = 1;
  sub_181F9B388();
  sub_182AD3FF8();
  v17 = v49;
  v51 = 2;
  sub_181F9B2E0();
  sub_182AD3FF8();
  v44 = 0;
  v42 = v12;
  v43 = v9;
  v19 = v49;
  v18 = v50;
  v20 = NWEndpoint.nw.getter();
  if (!v20)
  {

    v46 = sub_182AD3C98();
    v44 = swift_allocError();
    v35 = v34;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A40) + 48);
    *v35 = v6;
    v36 = v47;
    __swift_project_boxed_opaque_existential_1(v47, v47[3]);
    sub_182AD45A8();
    sub_182AD3C88();
    (*(*(v46 - 8) + 104))(v35, *MEMORY[0x1E69E6B08]);
    swift_willThrow();
    swift_unknownObjectRelease();

    sub_181F9A9B8(v8, type metadata accessor for NWEndpoint);
    (*(v10 + 8))(v42, v43);
    v15 = v36;
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  v39 = v10;
  v40 = v18;
  v37[1] = v19;
  v38 = v8;
  v37[0] = v20;
  v21 = nw_browse_result_create(v20);
  v41 = v17;
  v22 = *(v17 + 16);
  v23 = v46;
  if (v22)
  {
    v24 = (v41 + 32);
    v25 = type metadata accessor for __NWInterface();
    do
    {
      v26 = *v24;
      v27 = objc_allocWithZone(v25);
      v28 = OBJC_IVAR____TtC7Network13__NWInterface_lock;
      swift_retain_n();
      v29 = swift_slowAlloc();
      *&v27[v28] = v29;
      *&v27[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
      *&v27[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v26;
      *v29 = 0;
      v48.receiver = v27;
      v48.super_class = v25;
      v30 = objc_msgSendSuper2(&v48, sel_init);
      v31 = nw_interface_bridge(v30);
      if (v31)
      {
        nw_browse_result_insert_interface(v21, v31);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      ++v24;
      --v22;
    }

    while (v22);
  }

  nw_browse_result_set_txt_record_object(v21, v40);
  v32 = swift_unknownObjectRetain();
  sub_181F8F51C(v32, v23);
  v33 = type metadata accessor for NWBrowser.Result(0);
  result = (*(*(v33 - 8) + 48))(v23, 1, v33);
  if (result != 1)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    sub_181F9A9B8(v38, type metadata accessor for NWEndpoint);
    (*(v39 + 8))(v42, v43);
    sub_181F9A800(v23, v45, type metadata accessor for NWBrowser.Result);
LABEL_2:
    v15 = v47;
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  __break(1u);
  return result;
}

uint64_t NWBrowser.Result.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839178);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F9B334();
  sub_182AD4638();
  v9 = type metadata accessor for NWBrowser.Result(0);
  LOBYTE(v15) = 0;
  type metadata accessor for NWEndpoint();
  sub_181F9B0F4(&qword_1EA839180, type metadata accessor for NWEndpoint);
  sub_182AD4118();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v15 = *(v3 + *(v9 + 24));
  v17 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839160);
  sub_181F9B460();
  sub_182AD4118();
  v11 = (v3 + *(v9 + 28));
  v12 = *v11;
  if (!*v11)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v13 = v11[1];
  v15 = *v11;
  v16 = v13;
  v17 = 2;
  sub_181F9B238();

  swift_unknownObjectRetain();
  sub_182AD4118();
  (*(v6 + 8))(v8, v5);
  return sub_181AB612C(v12);
}

uint64_t sub_181F96388()
{
  v1 = 0x6361667265746E69;
  if (*v0 != 1)
  {
    v1 = 0x726F636552747874;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E696F70646E65;
  }
}

uint64_t sub_181F963EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_181F9DA00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_181F96414(uint64_t a1)
{
  v2 = sub_181F9B334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F96450(uint64_t a1)
{
  v2 = sub_181F9B334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181F964BC(uint64_t a1, unint64_t a2, void *a3)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v11, 0, 14);
      v7 = a3;
      v6 = 0;
      goto LABEL_9;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  else
  {
    if (!v5)
    {
      v11[0] = a1;
      LOWORD(v11[1]) = a2;
      BYTE2(v11[1]) = BYTE2(a2);
      BYTE3(v11[1]) = BYTE3(a2);
      BYTE4(v11[1]) = BYTE4(a2);
      v6 = BYTE6(a2);
      BYTE5(v11[1]) = BYTE5(a2);
      v7 = a3;
LABEL_9:
      nw_browse_descriptor_set_custom_service(v7, v11, v6);
      return swift_unknownObjectRelease();
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  swift_unknownObjectRetain();
  sub_181F96624(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  return swift_unknownObjectRelease();
}

uint64_t sub_181F96624(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_182AD1D58();
  v8 = result;
  if (result)
  {
    result = sub_182AD1D88();
    if (__OFSUB__(a1, result))
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = sub_182AD1D78();
  if (v8)
  {
    if (v11 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    nw_browse_descriptor_set_custom_service(a4, v8, v12);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_181F966B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for NWBrowser.Result.Change(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_182AD44E8();
  NWBrowser.Result.Change.hash(into:)();
  v10 = sub_182AD4558();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_181F9A8DC(*(v9 + 48) + v14 * v12, v8, type metadata accessor for NWBrowser.Result.Change);
      v15 = _s7Network9NWBrowserC6ResultV6ChangeO2eeoiySbAG_AGtFZ_0(v8, a2);
      sub_181F9A9B8(v8, type metadata accessor for NWBrowser.Result.Change);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_181F9A9B8(a2, type metadata accessor for NWBrowser.Result.Change);
    sub_181F9A8DC(*(v9 + 48) + v14 * v12, v19, type metadata accessor for NWBrowser.Result.Change);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_181F9A8DC(a2, v8, type metadata accessor for NWBrowser.Result.Change);
    v20 = *v3;
    sub_181F98D8C(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20;
    sub_181F9A800(a2, v17, type metadata accessor for NWBrowser.Result.Change);
    return 1;
  }
}

uint64_t sub_181F968F8(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v4 = type metadata accessor for NWBrowser.Result(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v43 - v9;
  v45 = v2;
  v10 = *v2;
  sub_182AD44E8();
  v50 = v4[5];
  NWEndpoint.hash(into:)();
  v11 = sub_182AD4558();
  v51 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  v49 = v10 + 56;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v47 = ~v12;
    v48 = *(v5 + 72);
    do
    {
      v14 = v48 * v13;
      sub_181F9A8DC(*(v51 + 48) + v48 * v13, v7, type metadata accessor for NWBrowser.Result);
      result = _s7Network10NWEndpointO2eeoiySbAC_ACtFZ_0(&v7[v4[5]], a2 + v50);
      if (result)
      {
        v16 = v4[6];
        v17 = *&v7[v16];
        v18 = *(a2 + v16);
        v19 = *(v17 + 16);
        if (v19 == *(v18 + 16))
        {
          if (v19)
          {
            v20 = v17 == v18;
          }

          else
          {
            v20 = 1;
          }

          if (!v20)
          {
            v28 = (v17 + 32);
            v29 = (v18 + 32);
            do
            {
              if (!v19)
              {
                __break(1u);
                return result;
              }

              v32 = *v28;
              v33 = *v29;
              result = *(*v28 + 40);
              if (result != *(*v29 + 40) || *(*v28 + 48) != *(*v29 + 48))
              {
                result = sub_182AD4268();
                if ((result & 1) == 0)
                {
                  goto LABEL_52;
                }
              }

              if (*(v32 + 16) != *(v33 + 16))
              {
                goto LABEL_52;
              }

              v35 = *(v33 + 184);
              if (v35 <= 1)
              {
                if (!*(v33 + 184))
                {
                  goto LABEL_41;
                }

                v36 = 2;
              }

              else if (v35 == 2)
              {
                v36 = 3;
              }

              else if (v35 == 3)
              {
                v36 = 4;
              }

              else
              {
                v36 = 1;
              }

              if (*(v32 + 184))
              {
                v37 = qword_182AEB498[*(v32 + 184)] == v36;
              }

              else
              {
                v37 = 1;
              }

              if (!v37)
              {
                goto LABEL_52;
              }

LABEL_41:
              v38 = *(v33 + 185);
              if (v38 <= 1)
              {
                if (!*(v33 + 185))
                {
                  goto LABEL_20;
                }

                v30 = 3;
              }

              else if (v38 == 2)
              {
                v30 = 4;
              }

              else if (v38 == 3)
              {
                v30 = 6;
              }

              else
              {
                v30 = 7;
              }

              if (*(v32 + 185))
              {
                v31 = qword_182AEB4C0[*(v32 + 185)] == v30;
              }

              else
              {
                v31 = 1;
              }

              if (!v31)
              {
                goto LABEL_52;
              }

LABEL_20:
              ++v28;
              ++v29;
              --v19;
            }

            while (v19);
          }

          v21 = v4[7];
          v23 = *&v7[v21];
          v22 = *&v7[v21 + 8];
          v24 = (a2 + v21);
          v25 = *v24;
          v26 = v24[1];
          if (v23)
          {
            if (v25)
            {
              sub_181E6550C(*v24);
              sub_181E6550C(v23);
              sub_181E6550C(v25);
              sub_181E6550C(v23);
              is_equal = nw_txt_record_is_equal(v22, v26);
              sub_181AB612C(v23);
              sub_181AB612C(v25);
              sub_181AB612C(v25);
              sub_181AB612C(v23);
              sub_181F9A9B8(v7, type metadata accessor for NWBrowser.Result);
              if (is_equal)
              {
                goto LABEL_57;
              }

              goto LABEL_53;
            }

            v39 = v23;
          }

          else
          {
            if (!v25)
            {
              sub_181AB612C(0);
              sub_181AB612C(0);
              sub_181F9A9B8(v7, type metadata accessor for NWBrowser.Result);
LABEL_57:
              sub_181F9A9B8(a2, type metadata accessor for NWBrowser.Result);
              sub_181F9A8DC(*(v51 + 48) + v14, v46, type metadata accessor for NWBrowser.Result);
              return 0;
            }

            v39 = 0;
          }

          swift_unknownObjectRetain();
          sub_181AB612C(v39);
          sub_181AB612C(v25);
        }
      }

LABEL_52:
      sub_181F9A9B8(v7, type metadata accessor for NWBrowser.Result);
LABEL_53:
      v13 = (v13 + 1) & v47;
    }

    while (((*(v49 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  v40 = v45;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = v44;
  sub_181F9A8DC(a2, v44, type metadata accessor for NWBrowser.Result);
  v52 = *v40;
  sub_181F98FD0(v42, v13, isUniquelyReferenced_nonNull_native);
  *v40 = v52;
  sub_181F9A800(a2, v46, type metadata accessor for NWBrowser.Result);
  return 1;
}

uint64_t sub_181F96E00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = type metadata accessor for NWBrowser.Result(0);
  v43 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v2;
  v7 = *v2;
  sub_182AD44E8();
  v47 = v4[5];
  NWEndpoint.hash(into:)();
  v8 = sub_182AD4558();
  v48 = v7;
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  v46 = v7 + 56;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return (*(v43 + 56))(v42, 1, 1, v4);
  }

  v44 = ~v9;
  v45 = *(v43 + 72);
  while (1)
  {
    v11 = v45 * v10;
    sub_181F9A8DC(*(v48 + 48) + v45 * v10, v6, type metadata accessor for NWBrowser.Result);
    if ((_s7Network10NWEndpointO2eeoiySbAC_ACtFZ_0(&v6[v4[5]], a1 + v47) & 1) == 0)
    {
      goto LABEL_52;
    }

    v12 = v4[6];
    v13 = *&v6[v12];
    v14 = *(a1 + v12);
    v15 = *(v13 + 16);
    if (v15 != *(v14 + 16))
    {
      goto LABEL_52;
    }

    if (v15 && v13 != v14)
    {
      break;
    }

LABEL_10:
    v17 = v4[7];
    v19 = *&v6[v17];
    v18 = *&v6[v17 + 8];
    v20 = (a1 + v17);
    v22 = *v20;
    v21 = v20[1];
    if (v19)
    {
      if (v22)
      {
        sub_181E6550C(*v20);
        sub_181E6550C(v19);
        sub_181E6550C(v22);
        sub_181E6550C(v19);
        is_equal = nw_txt_record_is_equal(v18, v21);
        sub_181AB612C(v19);
        sub_181AB612C(v22);
        sub_181AB612C(v22);
        sub_181AB612C(v19);
        sub_181F9A9B8(v6, type metadata accessor for NWBrowser.Result);
        if (is_equal)
        {
          goto LABEL_57;
        }

        goto LABEL_53;
      }

      v35 = v19;
    }

    else
    {
      if (!v22)
      {
        sub_181AB612C(0);
        sub_181AB612C(0);
        sub_181F9A9B8(v6, type metadata accessor for NWBrowser.Result);
LABEL_57:
        a1 = v41;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = *a1;
        v49 = *a1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_58;
      }

      v35 = 0;
    }

    swift_unknownObjectRetain();
    sub_181AB612C(v35);
    sub_181AB612C(v22);
LABEL_52:
    sub_181F9A9B8(v6, type metadata accessor for NWBrowser.Result);
LABEL_53:
    v10 = (v10 + 1) & v44;
    if (((*(v46 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return (*(v43 + 56))(v42, 1, 1, v4);
    }
  }

  v24 = (v13 + 32);
  v25 = (v14 + 32);
  while (v15)
  {
    v28 = *v24;
    v29 = *v25;
    v30 = *(*v24 + 40) == *(*v25 + 40) && *(*v24 + 48) == *(*v25 + 48);
    if (!v30 && (sub_182AD4268() & 1) == 0 || *(v28 + 16) != *(v29 + 16))
    {
      goto LABEL_52;
    }

    v31 = *(v29 + 184);
    if (v31 <= 1)
    {
      if (!*(v29 + 184))
      {
        goto LABEL_41;
      }

      v32 = 2;
    }

    else if (v31 == 2)
    {
      v32 = 3;
    }

    else if (v31 == 3)
    {
      v32 = 4;
    }

    else
    {
      v32 = 1;
    }

    if (*(v28 + 184))
    {
      v33 = qword_182AEB498[*(v28 + 184)] == v32;
    }

    else
    {
      v33 = 1;
    }

    if (!v33)
    {
      goto LABEL_52;
    }

LABEL_41:
    v34 = *(v29 + 185);
    if (v34 <= 1)
    {
      if (!*(v29 + 185))
      {
        goto LABEL_20;
      }

      v26 = 3;
    }

    else if (v34 == 2)
    {
      v26 = 4;
    }

    else if (v34 == 3)
    {
      v26 = 6;
    }

    else
    {
      v26 = 7;
    }

    if (*(v28 + 185))
    {
      v27 = qword_182AEB4C0[*(v28 + 185)] == v26;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      goto LABEL_52;
    }

LABEL_20:
    ++v24;
    ++v25;
    if (!--v15)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_60:
  sub_181F974C8();
  v38 = v49;
LABEL_58:
  v39 = v42;
  sub_181F9A800(*(v38 + 48) + v11, v42, type metadata accessor for NWBrowser.Result);
  sub_181F98734(v10);
  *a1 = v49;
  return (*(v43 + 56))(v39, 0, 1, v4);
}

void *sub_181F972BC()
{
  v1 = v0;
  v2 = type metadata accessor for NWBrowser.Result.Change(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839370);
  v6 = *v0;
  v7 = sub_182AD3B38();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_181F9A8DC(*(v6 + 48) + v21, v5, type metadata accessor for NWBrowser.Result.Change);
        result = sub_181F9A800(v5, *(v8 + 48) + v21, type metadata accessor for NWBrowser.Result.Change);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_181F974C8()
{
  v1 = v0;
  v2 = type metadata accessor for NWBrowser.Result(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839378);
  v6 = *v0;
  v7 = sub_182AD3B38();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_181F9A8DC(*(v6 + 48) + v21, v5, type metadata accessor for NWBrowser.Result);
        result = sub_181F9A800(v5, *(v8 + 48) + v21, type metadata accessor for NWBrowser.Result);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

uint64_t sub_181F976D4()
{
  v1 = v0;
  v2 = type metadata accessor for NWBrowser.Result(0);
  MEMORY[0x1EEE9AC00](v2);
  v44 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v42 - v5;
  v7 = type metadata accessor for NWBrowser.Result.Change(0);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v49 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = v42 - v10;
  v11 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839370);
  result = sub_182AD3B48();
  v13 = result;
  if (!*(v11 + 16))
  {

LABEL_35:
    *v1 = v13;
    return result;
  }

  v42[0] = v0;
  v42[1] = v2;
  v14 = 0;
  v15 = v11 + 56;
  v16 = 1 << *(v11 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v11 + 56);
  v19 = (v16 + 63) >> 6;
  v20 = result + 56;
  v45 = v11;
  while (v18)
  {
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_15:
    v25 = *(v11 + 48);
    v48 = *(v46 + 72);
    v26 = v50;
    sub_181F9A8DC(v25 + v48 * (v22 | (v14 << 6)), v50, type metadata accessor for NWBrowser.Result.Change);
    sub_182AD44E8();
    sub_181F9A8DC(v26, v49, type metadata accessor for NWBrowser.Result.Change);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_181F9A800(v49, v6, type metadata accessor for NWBrowser.Result);
        v28 = 2;
      }

      else
      {
        sub_181F9A800(v49, v6, type metadata accessor for NWBrowser.Result);
        v28 = 1;
      }

      MEMORY[0x1865DB070](v28);
      NWEndpoint.hash(into:)();
      v34 = v6;
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838A18);
      v30 = *(v29 + 48);
      v31 = v49;
      v43 = *(v49 + *(v29 + 64));
      sub_181F9A800(v49, v6, type metadata accessor for NWBrowser.Result);
      v32 = v31 + v30;
      v33 = v44;
      sub_181F9A800(v32, v44, type metadata accessor for NWBrowser.Result);
      MEMORY[0x1865DB070](3);
      NWEndpoint.hash(into:)();
      NWEndpoint.hash(into:)();
      sub_182AD4518();
      sub_181F9A9B8(v33, type metadata accessor for NWBrowser.Result);
      v34 = v6;
LABEL_22:
      sub_181F9A9B8(v34, type metadata accessor for NWBrowser.Result);
      goto LABEL_24;
    }

    MEMORY[0x1865DB070](0);
LABEL_24:
    v11 = v45;
    result = sub_182AD4558();
    v35 = -1 << *(v13 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v20 + 8 * (v36 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v35) >> 6;
      while (++v37 != v39 || (v38 & 1) == 0)
      {
        v40 = v37 == v39;
        if (v37 == v39)
        {
          v37 = 0;
        }

        v38 |= v40;
        v41 = *(v20 + 8 * v37);
        if (v41 != -1)
        {
          v21 = __clz(__rbit64(~v41)) + (v37 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_37;
    }

    v21 = __clz(__rbit64((-1 << v36) & ~*(v20 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    result = sub_181F9A800(v50, *(v13 + 48) + v21 * v48, type metadata accessor for NWBrowser.Result.Change);
    ++*(v13 + 16);
  }

  v23 = v14;
  while (1)
  {
    v14 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v14 >= v19)
    {

      v1 = v42[0];
      goto LABEL_35;
    }

    v24 = *(v15 + 8 * v14);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v18 = (v24 - 1) & v24;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_181F97BE0()
{
  v1 = v0;
  v2 = type metadata accessor for NWBrowser.Result(0);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839378);
  result = sub_182AD3B48();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v27 + 72);
      sub_181F9A8DC(*(v5 + 48) + v18 * (v15 | (v8 << 6)), v4, type metadata accessor for NWBrowser.Result);
      sub_182AD44E8();
      NWEndpoint.hash(into:)();
      result = sub_182AD4558();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_181F9A800(v4, *(v7 + 48) + v14 * v18, type metadata accessor for NWBrowser.Result);
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_181F97EC4()
{
  v1 = v0;
  v51 = type metadata accessor for NWBrowser.Result(0);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v44 - v4;
  v5 = type metadata accessor for NWBrowser.Result.Change(0);
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v44 - v8;
  v9 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839370);
  result = sub_182AD3B48();
  v11 = result;
  if (*(v9 + 16))
  {
    v45 = v0;
    v46 = v9;
    v12 = 0;
    v13 = (v9 + 56);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (1)
    {
      if (!v16)
      {
        v21 = v12;
        while (1)
        {
          v12 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
            goto LABEL_39;
          }

          if (v12 >= v17)
          {
            break;
          }

          v22 = v13[v12];
          ++v21;
          if (v22)
          {
            v20 = __clz(__rbit64(v22));
            v16 = (v22 - 1) & v22;
            goto LABEL_15;
          }
        }

        v43 = 1 << *(v9 + 32);
        if (v43 >= 64)
        {
          bzero(v13, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v13 = -1 << v43;
        }

        v1 = v45;
        *(v9 + 16) = 0;
        goto LABEL_37;
      }

      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = *(v52 + 72);
      v24 = v55;
      sub_181F9A800(*(v9 + 48) + v23 * (v20 | (v12 << 6)), v55, type metadata accessor for NWBrowser.Result.Change);
      sub_182AD44E8();
      sub_181F9A8DC(v24, v54, type metadata accessor for NWBrowser.Result.Change);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838A18);
        v29 = *(v28 + 48);
        v30 = *(v28 + 64);
        v48 = v23;
        v31 = v54;
        v47 = *(v54 + v30);
        v32 = v50;
        sub_181F9A800(v54, v50, type metadata accessor for NWBrowser.Result);
        v33 = v31 + v29;
        v34 = v49;
        sub_181F9A800(v33, v49, type metadata accessor for NWBrowser.Result);
        MEMORY[0x1865DB070](3);
        NWEndpoint.hash(into:)();
        v23 = v48;
        NWEndpoint.hash(into:)();
        sub_182AD4518();
        sub_181F9A9B8(v34, type metadata accessor for NWBrowser.Result);
        v35 = v32;
        v9 = v46;
LABEL_22:
        sub_181F9A9B8(v35, type metadata accessor for NWBrowser.Result);
        goto LABEL_24;
      }

      MEMORY[0x1865DB070](0);
LABEL_24:
      result = sub_182AD4558();
      v36 = -1 << *(v11 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v18 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v18 + 8 * v38);
          if (v42 != -1)
          {
            v19 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v37) & ~*(v18 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_181F9A800(v55, *(v11 + 48) + v19 * v23, type metadata accessor for NWBrowser.Result.Change);
      ++*(v11 + 16);
    }

    v26 = v50;
    if (EnumCaseMultiPayload)
    {
      sub_181F9A800(v54, v50, type metadata accessor for NWBrowser.Result);
      v27 = 2;
    }

    else
    {
      sub_181F9A800(v54, v50, type metadata accessor for NWBrowser.Result);
      v27 = 1;
    }

    MEMORY[0x1865DB070](v27);
    NWEndpoint.hash(into:)();
    v35 = v26;
    goto LABEL_22;
  }

LABEL_37:

  *v1 = v11;
  return result;
}

uint64_t sub_181F98420()
{
  v1 = v0;
  v2 = type metadata accessor for NWBrowser.Result(0);
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839378);
  result = sub_182AD3B48();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v0;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v29 + 72);
      sub_181F9A800(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4, type metadata accessor for NWBrowser.Result);
      sub_182AD44E8();
      NWEndpoint.hash(into:)();
      result = sub_182AD4558();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_181F9A800(v4, *(v7 + 48) + v15 * v19, type metadata accessor for NWBrowser.Result);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v28;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

void sub_181F98734(unint64_t a1)
{
  v42 = sub_182AD2058();
  v52 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for NWBrowser.Result(0);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *v1 + 56;
  v12 = -1 << *(*v1 + 32);
  v13 = (a1 + 1) & ~v12;
  if (((1 << v13) & *(v11 + 8 * (v13 >> 6))) != 0)
  {
    v49 = v7;
    v14 = ~v12;

    v51 = v14;
    v15 = sub_182AD3AE8();
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) != 0)
    {
      v50 = (v15 + 1) & v51;
      v16 = *(v49 + 72);
      v40 = (v52 + 32);
      v39 = (v52 + 8);
      v17 = v47;
      v48 = v9;
      v49 = v16;
      v45 = v4;
      v46 = v10;
      v44 = v11;
      while (1)
      {
        v18 = *(v10 + 48);
        v52 = v16 * v13;
        sub_181F9A8DC(v18 + v16 * v13, v9, type metadata accessor for NWBrowser.Result);
        sub_182AD44E8();
        sub_181F9A8DC(&v9[*(v17 + 20)], v6, type metadata accessor for NWEndpoint);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            v43 = a1;
            v29 = *(v6 + 6);
            MEMORY[0x1865DB070](1);
            sub_182AD30E8();

            sub_182AD30E8();

            sub_182AD30E8();

            sub_182AD4518();
            if (v29)
            {
              v30 = *(v29 + 184);
              v31 = *(v29 + 185);
              MEMORY[0x1865DB070](*(v29 + 16));
              sub_182AD30E8();
              MEMORY[0x1865DB070](qword_182AEB498[v30]);
              MEMORY[0x1865DB070](qword_182AEB4C0[v31]);
            }

            a1 = v43;
            v10 = v46;
            v11 = v44;
            v17 = v47;
            v9 = v48;
          }

          else
          {
            v23 = *v6;
            v24 = *(v6 + 1);
            v25 = *(v6 + 2);
            v26 = v6[24];
            MEMORY[0x1865DB070](0);
            v53 = v23;
            v54 = v24;
            v55 = v25;
            v56 = v26;
            NWEndpoint.Host.hash(into:)();
            sub_182AD4528();
            sub_181E605C8(v23, v24, v25, v26);
            v10 = v46;
            v11 = v44;
            v17 = v47;
          }
        }

        else if (EnumCaseMultiPayload == 2)
        {
          MEMORY[0x1865DB070](2);
          sub_182AD30E8();
          v9 = v48;
        }

        else if (EnumCaseMultiPayload == 3)
        {
          v20 = v41;
          v21 = v42;
          (*v40)(v41, v6, v42);
          MEMORY[0x1865DB070](3);
          sub_181F9B0F4(&qword_1EA8366A0, MEMORY[0x1E6968FB0]);
          sub_182AD2EB8();
          v22 = v20;
          v9 = v48;
          (*v39)(v22, v21);
        }

        else
        {
          v27 = *v6;
          MEMORY[0x1865DB070](4);
          hash = nw_endpoint_get_hash(v27);
          MEMORY[0x1865DB070](hash);
          swift_unknownObjectRelease();
        }

        v32 = sub_182AD4558();
        sub_181F9A9B8(v9, type metadata accessor for NWBrowser.Result);
        v33 = v32 & v51;
        v34 = v51;
        if (a1 >= v50)
        {
          break;
        }

        v16 = v49;
        if (v33 < v50)
        {
          goto LABEL_22;
        }

LABEL_23:
        v35 = v16 * a1;
        if ((v16 * a1) < v52 || *(v10 + 48) + v16 * a1 >= *(v10 + 48) + v52 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v13;
          if (v35 == v52)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v13;
LABEL_6:
        v13 = (v13 + 1) & v34;
        if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v16 = v49;
      if (v33 < v50)
      {
        goto LABEL_6;
      }

LABEL_22:
      if (a1 < v33)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

LABEL_27:

    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v36 = *(v10 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v38;
    ++*(v10 + 36);
  }
}

uint64_t sub_181F98D8C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for NWBrowser.Result.Change(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_181F97EC4();
  }

  else
  {
    if (v14 > v13)
    {
      sub_181F972BC();
      goto LABEL_12;
    }

    v26 = v10;
    sub_181F976D4();
  }

  v15 = *v4;
  sub_182AD44E8();
  NWBrowser.Result.Change.hash(into:)();
  v16 = sub_182AD4558();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_181F9A8DC(*(v15 + 48) + v19 * a2, v12, type metadata accessor for NWBrowser.Result.Change);
      v20 = _s7Network9NWBrowserC6ResultV6ChangeO2eeoiySbAG_AGtFZ_0(v12, a1);
      sub_181F9A9B8(v12, type metadata accessor for NWBrowser.Result.Change);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_181F9A800(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for NWBrowser.Result.Change);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_182AD43F8();
  __break(1u);
  return result;
}

uint64_t sub_181F98FD0(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for NWBrowser.Result(0);
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v46 = v8;
  v47 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_61;
  }

  if (a3)
  {
    sub_181F98420();
  }

  else
  {
    if (v12 > v11)
    {
      sub_181F974C8();
LABEL_61:
      v40 = *v47;
      *(*v47 + 8 * (a2 >> 6) + 56) |= 1 << a2;
      result = sub_181F9A800(a1, *(v40 + 48) + *(v46 + 72) * a2, type metadata accessor for NWBrowser.Result);
      v42 = *(v40 + 16);
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_64;
      }

      *(v40 + 16) = v44;
      return result;
    }

    sub_181F97BE0();
  }

  v13 = *v3;
  sub_182AD44E8();
  v51 = v7[5];
  NWEndpoint.hash(into:)();
  v14 = sub_182AD4558();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  v50 = v13 + 56;
  if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_61;
  }

  v48 = ~v15;
  v49 = *(v8 + 72);
  v45 = v13;
  while (1)
  {
    sub_181F9A8DC(*(v13 + 48) + v49 * a2, v10, type metadata accessor for NWBrowser.Result);
    if ((_s7Network10NWEndpointO2eeoiySbAC_ACtFZ_0(&v10[v7[5]], a1 + v51) & 1) == 0)
    {
      goto LABEL_59;
    }

    v16 = v7[6];
    v17 = *&v10[v16];
    v18 = *(a1 + v16);
    v19 = *(v17 + 16);
    if (v19 != *(v18 + 16))
    {
      goto LABEL_59;
    }

    if (v19 && v17 != v18)
    {
      break;
    }

LABEL_17:
    v21 = v7[7];
    v23 = *&v10[v21];
    v22 = *&v10[v21 + 8];
    v24 = (a1 + v21);
    v26 = *v24;
    v25 = v24[1];
    if (v23)
    {
      if (v26)
      {
        sub_181E6550C(*v24);
        sub_181E6550C(v23);
        sub_181E6550C(v26);
        sub_181E6550C(v23);
        is_equal = nw_txt_record_is_equal(v22, v25);
        sub_181AB612C(v23);
        sub_181AB612C(v26);
        sub_181AB612C(v26);
        sub_181AB612C(v23);
        sub_181F9A9B8(v10, type metadata accessor for NWBrowser.Result);
        v13 = v45;
        if (is_equal)
        {
          goto LABEL_66;
        }

        goto LABEL_60;
      }

      v39 = v23;
    }

    else
    {
      if (!v26)
      {
        goto LABEL_65;
      }

      v39 = 0;
    }

    swift_unknownObjectRetain();
    sub_181AB612C(v39);
    sub_181AB612C(v26);
    v13 = v45;
LABEL_59:
    sub_181F9A9B8(v10, type metadata accessor for NWBrowser.Result);
LABEL_60:
    a2 = (a2 + 1) & v48;
    if (((*(v50 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v28 = (v17 + 32);
  v29 = (v18 + 32);
  while (v19)
  {
    v32 = *v28;
    v33 = *v29;
    v34 = *(*v28 + 40) == *(*v29 + 40) && *(*v28 + 48) == *(*v29 + 48);
    if (!v34 && (sub_182AD4268() & 1) == 0 || *(v32 + 16) != *(v33 + 16))
    {
      goto LABEL_59;
    }

    v35 = *(v33 + 184);
    if (v35 <= 1)
    {
      if (!*(v33 + 184))
      {
        goto LABEL_48;
      }

      v36 = 2;
    }

    else if (v35 == 2)
    {
      v36 = 3;
    }

    else if (v35 == 3)
    {
      v36 = 4;
    }

    else
    {
      v36 = 1;
    }

    if (*(v32 + 184))
    {
      v37 = qword_182AEB498[*(v32 + 184)] == v36;
    }

    else
    {
      v37 = 1;
    }

    if (!v37)
    {
      goto LABEL_59;
    }

LABEL_48:
    v38 = *(v33 + 185);
    if (v38 <= 1)
    {
      if (!*(v33 + 185))
      {
        goto LABEL_27;
      }

      v30 = 3;
    }

    else if (v38 == 2)
    {
      v30 = 4;
    }

    else if (v38 == 3)
    {
      v30 = 6;
    }

    else
    {
      v30 = 7;
    }

    if (*(v32 + 185))
    {
      v31 = qword_182AEB4C0[*(v32 + 185)] == v30;
    }

    else
    {
      v31 = 1;
    }

    if (!v31)
    {
      goto LABEL_59;
    }

LABEL_27:
    ++v28;
    ++v29;
    if (!--v19)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  sub_181AB612C(0);
  sub_181AB612C(0);
  sub_181F9A9B8(v10, type metadata accessor for NWBrowser.Result);
LABEL_66:
  result = sub_182AD43F8();
  __break(1u);
  return result;
}

BOOL _s7Network9NWBrowserC6ResultV6ChangeO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWBrowser.Result.Change(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v72 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v72 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839368);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v72 - v15;
  v77 = type metadata accessor for NWBrowser.Result(0);
  MEMORY[0x1EEE9AC00](v77);
  v73 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v72 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v74 = &v72 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v75 = &v72 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v76 = &v72 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v72 - v27;
  v29 = &v16[*(v14 + 56)];
  sub_181F9A8DC(a1, v16, type metadata accessor for NWBrowser.Result.Change);
  sub_181F9A8DC(a2, v29, type metadata accessor for NWBrowser.Result.Change);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_181F9A8DC(v16, v9, type metadata accessor for NWBrowser.Result.Change);
      v12 = v9;
      v6 = v9;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_15:
        sub_181F9A800(v12, v28, type metadata accessor for NWBrowser.Result);
        v52 = v76;
        sub_181F9A800(v29, v76, type metadata accessor for NWBrowser.Result);
        sub_181F9A9B8(v16, type metadata accessor for NWBrowser.Result.Change);
        v53 = v77;
        if (_s7Network10NWEndpointO2eeoiySbAC_ACtFZ_0(&v28[*(v77 + 20)], v52 + *(v77 + 20)) & 1) != 0 && (sub_182080F1C(*&v28[*(v53 + 24)], *(v52 + *(v53 + 24))))
        {
          v54 = *(v53 + 28);
          v56 = *&v28[v54];
          v55 = *&v28[v54 + 8];
          v57 = (v52 + v54);
          v59 = *v57;
          v58 = v57[1];
          if (v56)
          {
            if (v59)
            {
              sub_181E6550C(v56);
              sub_181E6550C(v59);
              sub_181E6550C(v56);
              sub_181E6550C(v59);
              sub_181E6550C(v56);
              sub_181E6550C(v59);
              is_equal = nw_txt_record_is_equal(v55, v58);
              sub_181AB612C(v56);
              sub_181AB612C(v59);
              sub_181AB612C(v59);
              sub_181AB612C(v56);
              sub_181AB612C(v59);
              sub_181AB612C(v56);
LABEL_26:
              sub_181F9A9B8(v52, type metadata accessor for NWBrowser.Result);
              sub_181F9A9B8(v28, type metadata accessor for NWBrowser.Result);
              return is_equal;
            }
          }

          else if (!v59)
          {
            sub_181AB612C(0);
            sub_181AB612C(0);
            is_equal = 1;
            goto LABEL_26;
          }

          sub_181E6550C(v56);
          sub_181E6550C(v59);
          sub_181AB612C(v56);
          sub_181AB612C(v59);
        }

        is_equal = 0;
        goto LABEL_26;
      }
    }

    else
    {
      sub_181F9A8DC(v16, v12, type metadata accessor for NWBrowser.Result.Change);
      v6 = v12;
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_15;
      }
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_22:
    sub_181F49A88(v16, &qword_1EA839368);
    return 0;
  }

  sub_181F9A8DC(v16, v6, type metadata accessor for NWBrowser.Result.Change);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838A18);
  v32 = *(v31 + 48);
  v33 = *(v31 + 64);
  v34 = v6[v33];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_181F9A9B8(&v6[v32], type metadata accessor for NWBrowser.Result);
LABEL_21:
    sub_181F9A9B8(v6, type metadata accessor for NWBrowser.Result);
    goto LABEL_22;
  }

  v35 = *(v29 + v33);
  v36 = v75;
  sub_181F9A800(v6, v75, type metadata accessor for NWBrowser.Result);
  v37 = v74;
  sub_181F9A800(v29, v74, type metadata accessor for NWBrowser.Result);
  v38 = &v6[v32];
  v39 = v36;
  v40 = v72;
  sub_181F9A800(v38, v72, type metadata accessor for NWBrowser.Result);
  v41 = v73;
  sub_181F9A800(v29 + v32, v73, type metadata accessor for NWBrowser.Result);
  v42 = v77;
  if ((_s7Network10NWEndpointO2eeoiySbAC_ACtFZ_0(v39 + *(v77 + 20), v37 + *(v77 + 20)) & 1) == 0 || (sub_182080F1C(*(v39 + *(v42 + 24)), *(v37 + *(v42 + 24))) & 1) == 0)
  {
    goto LABEL_38;
  }

  v43 = *(v42 + 28);
  v44 = v39 + v43;
  v46 = *(v39 + v43);
  v45 = *(v44 + 8);
  v47 = (v37 + v43);
  v49 = *v47;
  v48 = v47[1];
  if (!v46)
  {
    if (!v49)
    {
      sub_181AB612C(0);
      sub_181AB612C(0);
LABEL_32:
      v62 = v77;
      v63 = _s7Network10NWEndpointO2eeoiySbAC_ACtFZ_0(v40 + *(v77 + 20), v41 + *(v77 + 20));
      v39 = v75;
      if ((v63 & 1) == 0)
      {
        v51 = 0;
        v37 = v74;
        goto LABEL_39;
      }

      v64 = sub_182080F1C(*(v40 + *(v62 + 24)), *(v41 + *(v62 + 24)));
      v37 = v74;
      if (v64)
      {
        v65 = *(v62 + 28);
        v67 = *(v40 + v65);
        v66 = *(v40 + v65 + 8);
        v68 = (v41 + v65);
        v70 = *v68;
        v69 = v68[1];
        if (v67)
        {
          if (v70)
          {
            sub_181E6550C(v67);
            sub_181E6550C(v70);
            sub_181E6550C(v67);
            sub_181E6550C(v70);
            sub_181E6550C(v67);
            sub_181E6550C(v70);
            v71 = nw_txt_record_is_equal(v66, v69);
            sub_181AB612C(v67);
            sub_181AB612C(v70);
            sub_181AB612C(v70);
            sub_181AB612C(v67);
            sub_181AB612C(v70);
            sub_181AB612C(v67);
            if (!v71)
            {
              goto LABEL_12;
            }

LABEL_44:
            v51 = v34 == v35;
            goto LABEL_13;
          }
        }

        else if (!v70)
        {
          sub_181AB612C(0);
          sub_181AB612C(0);
          goto LABEL_44;
        }

        sub_181E6550C(v67);
        sub_181E6550C(v70);
        sub_181AB612C(v67);
        sub_181AB612C(v70);
        goto LABEL_12;
      }

LABEL_38:
      v51 = 0;
      goto LABEL_39;
    }

LABEL_28:
    sub_181E6550C(v46);
    sub_181E6550C(v49);
    sub_181AB612C(v46);
    sub_181AB612C(v49);
    v51 = 0;
    goto LABEL_29;
  }

  if (!v49)
  {
    goto LABEL_28;
  }

  sub_181E6550C(v46);
  sub_181E6550C(v49);
  sub_181E6550C(v46);
  sub_181E6550C(v49);
  sub_181E6550C(v46);
  sub_181E6550C(v49);
  v50 = nw_txt_record_is_equal(v45, v48);
  sub_181AB612C(v46);
  sub_181AB612C(v49);
  sub_181AB612C(v49);
  sub_181AB612C(v46);
  sub_181AB612C(v49);
  sub_181AB612C(v46);
  if (v50)
  {
    goto LABEL_32;
  }

LABEL_12:
  v51 = 0;
LABEL_13:
  v37 = v74;
LABEL_29:
  v39 = v75;
LABEL_39:
  sub_181F9A9B8(v41, type metadata accessor for NWBrowser.Result);
  sub_181F9A9B8(v40, type metadata accessor for NWBrowser.Result);
  sub_181F9A9B8(v37, type metadata accessor for NWBrowser.Result);
  sub_181F9A9B8(v39, type metadata accessor for NWBrowser.Result);
  sub_181F9A9B8(v16, type metadata accessor for NWBrowser.Result.Change);
  return v51;
}

uint64_t _s7Network9NWBrowserC6ResultV8MetadataO2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if (*a1)
  {
    if (v5)
    {
      sub_181E6550C(*a2);
      sub_181E6550C(v3);
      sub_181E6550C(v5);
      sub_181E6550C(v3);
      is_equal = nw_txt_record_is_equal(v2, v4);
      sub_181AB612C(v3);
      sub_181AB612C(v5);
      sub_181AB612C(v5);
      sub_181AB612C(v3);
      return is_equal;
    }

    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    sub_181E6550C(*a2);
    sub_181E6550C(v3);
    sub_181AB612C(v3);
    sub_181AB612C(v5);
    return 0;
  }

  sub_181AB612C(0);
  sub_181AB612C(0);
  return 1;
}

uint64_t _s7Network9NWBrowserC6ResultV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWBrowser.Result(0);
  if ((_s7Network10NWEndpointO2eeoiySbAC_ACtFZ_0(a1 + v4[5], a2 + v4[5]) & 1) == 0 || (sub_182080F1C(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[7];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v7)
  {
    if (v10)
    {
      sub_181E6550C(v7);
      sub_181E6550C(v10);
      sub_181E6550C(v7);
      sub_181E6550C(v10);
      sub_181E6550C(v7);
      sub_181E6550C(v10);
      is_equal = nw_txt_record_is_equal(v6, v9);
      sub_181AB612C(v7);
      sub_181AB612C(v10);
      sub_181AB612C(v10);
      sub_181AB612C(v7);
      sub_181AB612C(v10);
      sub_181AB612C(v7);
      return is_equal;
    }

    goto LABEL_7;
  }

  if (v10)
  {
LABEL_7:
    sub_181E6550C(v7);
    sub_181E6550C(v10);
    sub_181AB612C(v7);
    sub_181AB612C(v10);
    return 0;
  }

  sub_181AB612C(0);
  sub_181AB612C(0);
  return 1;
}

uint64_t sub_181F9A028(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  result = sub_182AD1D58();
  v12 = result;
  if (result)
  {
    result = sub_182AD1D88();
    if (__OFSUB__(a1, result))
    {
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v12 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_18;
  }

  result = sub_182AD1D78();
  if (v12)
  {
    v13 = a6 >> 62;
    if ((a6 >> 62) > 1)
    {
      if (v13 != 2)
      {
        v14 = 0;
        return nw_browse_descriptor_set_predicate(a4, v12, v14);
      }

      v16 = *(a5 + 16);
      v15 = *(a5 + 24);
      v14 = v15 - v16;
      if (!__OFSUB__(v15, v16))
      {
        return nw_browse_descriptor_set_predicate(a4, v12, v14);
      }

      __break(1u);
    }

    else if (!v13)
    {
      v14 = BYTE6(a6);
      return nw_browse_descriptor_set_predicate(a4, v12, v14);
    }

    if (!__OFSUB__(HIDWORD(a5), a5))
    {
      v14 = HIDWORD(a5) - a5;
      return nw_browse_descriptor_set_predicate(a4, v12, v14);
    }

    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_181F9A10C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    goto LABEL_8;
  }

  if (v6)
  {
    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 >= a1)
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_28;
  }

  v18[0] = a1;
  LOWORD(v18[1]) = a2;
  BYTE2(v18[1]) = BYTE2(a2);
  BYTE3(v18[1]) = BYTE3(a2);
  BYTE4(v18[1]) = BYTE4(a2);
  v7 = a5 >> 62;
  BYTE5(v18[1]) = BYTE5(a2);
  if ((a5 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v12 = 0;
      goto LABEL_25;
    }

    v14 = *(a4 + 16);
    v13 = *(a4 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_25;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!v7)
  {
LABEL_14:
    v12 = BYTE6(a5);
LABEL_25:
    v10 = nw_browse_descriptor_set_predicate(a3, v18, v12);
    swift_unknownObjectRelease();
    return v10 & 1;
  }

  LODWORD(v6) = HIDWORD(a4) - a4;
  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_8:
  if (v6 != 2)
  {
    v11 = a5 >> 62;
    memset(v18, 0, 14);
    if ((a5 >> 62) > 1)
    {
      v12 = 0;
      if (v11 != 2)
      {
        goto LABEL_25;
      }

      v16 = *(a4 + 16);
      v15 = *(a4 + 24);
      v12 = v15 - v16;
      if (!__OFSUB__(v15, v16))
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    else if (!v11)
    {
      goto LABEL_14;
    }

    LODWORD(v6) = HIDWORD(a4) - a4;
    if (!__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_23:
      v12 = v6;
      goto LABEL_25;
    }

LABEL_29:
    __break(1u);
  }

  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
LABEL_11:
  v10 = sub_181F9A028(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4, a5);
  swift_unknownObjectRelease();
  return v10 & 1;
}

uint64_t sub_181F9A300(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839388);
  v6 = swift_allocObject();
  *(v6 + 80) = 0;
  v7 = MEMORY[0x1E69E7CD0];
  *(v6 + 16) = MEMORY[0x1E69E7CD0];
  *(v6 + 24) = v7;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0;
  *(v3 + 24) = v6;
  sub_181F9A8DC(a1, v3 + OBJC_IVAR____TtC7Network9NWBrowser_descriptor, type metadata accessor for NWBrowser.Descriptor);
  *(v3 + OBJC_IVAR____TtC7Network9NWBrowser_parameters) = a2;

  v8 = NWBrowser.Descriptor.nw.getter();
  v9 = *(a2 + 16);
  os_unfair_lock_lock((v9 + 24));
  v10 = *(v9 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v9 + 24));
  v11 = nw_browser_create(v8, v10);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_181F9A9B8(a1, type metadata accessor for NWBrowser.Descriptor);
  *(v3 + 16) = v11;
  return v3;
}

uint64_t sub_181F9A428(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 24);
  sub_181AA39C0(v4);
  result = sub_181A554F4(v5);
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_181F9A484(uint64_t a1, NSObject *a2)
{
  v5 = *(v2 + 16);
  swift_unknownObjectRetain();
  sub_181F90998(a1, a2, v7);
  return v5(v7);
}

uint64_t sub_181F9A4E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(a1 + 40);
  sub_181AA39C0(v6);
  result = sub_181A554F4(v7);
  *(a1 + 40) = v6;
  *(a1 + 48) = v5;
  *a2 = *(a1 + 16);
  return result;
}

void sub_181F9A55C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + 56);
  v5 = v3;

  *(a1 + 56) = v3;
  *(a1 + 16) = 1;
}

uint64_t sub_181F9A5FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838D00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_181F9A66C()
{
  result = qword_1EA838F08;
  if (!qword_1EA838F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838F08);
  }

  return result;
}

unint64_t sub_181F9A6C0()
{
  result = qword_1EA838F10;
  if (!qword_1EA838F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838F10);
  }

  return result;
}

unint64_t sub_181F9A714()
{
  result = qword_1EA838F30;
  if (!qword_1EA838F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838F30);
  }

  return result;
}

uint64_t sub_181F9A768(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8399C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_181F9A800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_181F9A868()
{
  result = qword_1EA838F50;
  if (!qword_1EA838F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838F50);
  }

  return result;
}

uint64_t sub_181F9A8DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_181F9A944()
{
  result = qword_1EA838F58;
  if (!qword_1EA838F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838F58);
  }

  return result;
}

uint64_t sub_181F9A9B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_181F9AA24()
{
  result = qword_1EA838F80;
  if (!qword_1EA838F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838F80);
  }

  return result;
}

unint64_t sub_181F9AA78()
{
  result = qword_1EA838F98;
  if (!qword_1EA838F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838F98);
  }

  return result;
}

unint64_t sub_181F9AACC()
{
  result = qword_1EA838FA0;
  if (!qword_1EA838FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838FA0);
  }

  return result;
}

uint64_t sub_181F9AB20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83B530);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_181F9AB8C()
{
  result = qword_1EA838FC0;
  if (!qword_1EA838FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838FC0);
  }

  return result;
}

unint64_t sub_181F9ABE0()
{
  result = qword_1EA838FC8;
  if (!qword_1EA838FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838FC8);
  }

  return result;
}

unint64_t sub_181F9AC34()
{
  result = qword_1EA838FD8;
  if (!qword_1EA838FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA838FD0);
    sub_181C675F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838FD8);
  }

  return result;
}

unint64_t sub_181F9ACB8()
{
  result = qword_1EA838FE8;
  if (!qword_1EA838FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA838D00);
    sub_181F7F268(&unk_1EA836660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838FE8);
  }

  return result;
}

unint64_t sub_181F9AD58()
{
  result = qword_1EA839000;
  if (!qword_1EA839000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839000);
  }

  return result;
}

unint64_t sub_181F9ADAC()
{
  result = qword_1EA839008;
  if (!qword_1EA839008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839008);
  }

  return result;
}

unint64_t sub_181F9AE00()
{
  result = qword_1EA839018;
  if (!qword_1EA839018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839018);
  }

  return result;
}

unint64_t sub_181F9AE54()
{
  result = qword_1EA839058;
  if (!qword_1EA839058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839058);
  }

  return result;
}

unint64_t sub_181F9AEA8()
{
  result = qword_1EA839060;
  if (!qword_1EA839060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839060);
  }

  return result;
}

unint64_t sub_181F9AEFC()
{
  result = qword_1EA839070;
  if (!qword_1EA839070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839070);
  }

  return result;
}

unint64_t sub_181F9AF50()
{
  result = qword_1EA839078;
  if (!qword_1EA839078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839078);
  }

  return result;
}

unint64_t sub_181F9AFA4()
{
  result = qword_1EA839080;
  if (!qword_1EA839080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839080);
  }

  return result;
}

unint64_t sub_181F9AFF8()
{
  result = qword_1EA839088;
  if (!qword_1EA839088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839088);
  }

  return result;
}

unint64_t sub_181F9B04C()
{
  result = qword_1EA839090;
  if (!qword_1EA839090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839090);
  }

  return result;
}

unint64_t sub_181F9B0A0()
{
  result = qword_1EA839098;
  if (!qword_1EA839098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839098);
  }

  return result;
}

uint64_t sub_181F9B0F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_181F9B13C()
{
  result = qword_1EA8390E8;
  if (!qword_1EA8390E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8390E8);
  }

  return result;
}

unint64_t sub_181F9B190()
{
  result = qword_1EA839108;
  if (!qword_1EA839108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839108);
  }

  return result;
}

unint64_t sub_181F9B1E4()
{
  result = qword_1EA839110;
  if (!qword_1EA839110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839110);
  }

  return result;
}

unint64_t sub_181F9B238()
{
  result = qword_1EA839118;
  if (!qword_1EA839118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839118);
  }

  return result;
}

unint64_t sub_181F9B28C()
{
  result = qword_1EA839120;
  if (!qword_1EA839120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839120);
  }

  return result;
}

unint64_t sub_181F9B2E0()
{
  result = qword_1EA839140;
  if (!qword_1EA839140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839140);
  }

  return result;
}

unint64_t sub_181F9B334()
{
  result = qword_1EA839150;
  if (!qword_1EA839150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839150);
  }

  return result;
}

unint64_t sub_181F9B388()
{
  result = qword_1EA839168;
  if (!qword_1EA839168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA839160);
    sub_181F9B40C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839168);
  }

  return result;
}

unint64_t sub_181F9B40C()
{
  result = qword_1EA839170;
  if (!qword_1EA839170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839170);
  }

  return result;
}

unint64_t sub_181F9B460()
{
  result = qword_1EA839188;
  if (!qword_1EA839188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA839160);
    sub_181F9B4E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839188);
  }

  return result;
}

unint64_t sub_181F9B4E4()
{
  result = qword_1EA839190;
  if (!qword_1EA839190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839190);
  }

  return result;
}

unint64_t sub_181F9B53C()
{
  result = qword_1EA839198;
  if (!qword_1EA839198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839198);
  }

  return result;
}

unint64_t sub_181F9B594()
{
  result = qword_1EA8391A0;
  if (!qword_1EA8391A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8391A0);
  }

  return result;
}

unint64_t sub_181F9B5EC()
{
  result = qword_1EA836488;
  if (!qword_1EA836488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836488);
  }

  return result;
}

unint64_t sub_181F9B644()
{
  result = qword_1EA836480;
  if (!qword_1EA836480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836480);
  }

  return result;
}

unint64_t sub_181F9B69C()
{
  result = qword_1EA8391A8;
  if (!qword_1EA8391A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8391A8);
  }

  return result;
}

unint64_t sub_181F9B6F4()
{
  result = qword_1EA8391B0;
  if (!qword_1EA8391B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8391B0);
  }

  return result;
}

unint64_t sub_181F9B74C()
{
  result = qword_1EA8367E8;
  if (!qword_1EA8367E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8367E8);
  }

  return result;
}

unint64_t sub_181F9B7A4()
{
  result = qword_1EA8367E0;
  if (!qword_1EA8367E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8367E0);
  }

  return result;
}

unint64_t sub_181F9B7FC()
{
  result = qword_1EA8391B8;
  if (!qword_1EA8391B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8391B8);
  }

  return result;
}

unint64_t sub_181F9B854()
{
  result = qword_1EA8391C0;
  if (!qword_1EA8391C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8391C0);
  }

  return result;
}

unint64_t sub_181F9B8A8()
{
  result = qword_1EA8391C8;
  if (!qword_1EA8391C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8391C8);
  }

  return result;
}

unint64_t sub_181F9B900()
{
  result = qword_1EA8391D0;
  if (!qword_1EA8391D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8391D0);
  }

  return result;
}

unint64_t sub_181F9B9E8()
{
  result = qword_1EA8391D8;
  if (!qword_1EA8391D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8391D8);
  }

  return result;
}

uint64_t sub_181F9BAC8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_181F9BB00()
{
  result = type metadata accessor for NWBrowser.Descriptor(319);
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

void sub_181F9BBD4()
{
  sub_181F9BC84();
  if (v0 <= 0x3F)
  {
    sub_181F9BCFC();
    if (v1 <= 0x3F)
    {
      sub_181F9BD2C();
      if (v2 <= 0x3F)
      {
        sub_181F9BD98();
        if (v3 <= 0x3F)
        {
          sub_181F9BDFC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_181F9BC84()
{
  if (!qword_1EA836A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8391E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EA836A18);
    }
  }
}

uint64_t sub_181F9BCFC()
{
  result = qword_1EA836A28;
  if (!qword_1EA836A28)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EA836A28);
  }

  return result;
}

void sub_181F9BD2C()
{
  if (!qword_1EA836A40)
  {
    type metadata accessor for NWBrowser.Descriptor.Options(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EA836A40);
    }
  }
}

void sub_181F9BD98()
{
  if (!qword_1EA836A38)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EA836A38);
    }
  }
}

void sub_181F9BDFC()
{
  if (!qword_1EA836A50)
  {
    type metadata accessor for NWBrowser.Descriptor.Options(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EA836A50);
    }
  }
}

void sub_181F9BE98()
{
  sub_181F9C200(319, &unk_1EA836A08, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_181F9C200(319, &unk_1EA836B20, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_181F9C19C(319, &qword_1EA836B18, &qword_1EA838EF0, &unk_182AE9740, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for NWInterface(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for NWInterface(uint64_t result, int a2, int a3)
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

void sub_181F9C0A8()
{
  sub_181F9C19C(319, &qword_1EA8391E8, &unk_1EA8391F0, &unk_182AEA3D0, type metadata accessor for UncheckedSendable);
  if (v0 <= 0x3F)
  {
    type metadata accessor for NWEndpoint();
    if (v1 <= 0x3F)
    {
      sub_181F9C200(319, &qword_1EA836F60, &type metadata for NWInterface, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_181F9C19C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_181F9C200(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_181F9C2B0()
{
  type metadata accessor for NWBrowser.Result(319);
  if (v0 <= 0x3F)
  {
    sub_181F9C324();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_181F9C324()
{
  if (!qword_1EA839200)
  {
    type metadata accessor for NWBrowser.Result(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EA839200);
    }
  }
}

uint64_t getEnumTagSinglePayload for NWBrowser.Result.Change.Flags(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for NWBrowser.Result.Change.Flags(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t sub_181F9C4D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_181F9C520(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_181F9C664()
{
  result = qword_1EA839210;
  if (!qword_1EA839210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839210);
  }

  return result;
}

unint64_t sub_181F9C6BC()
{
  result = qword_1EA839218;
  if (!qword_1EA839218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839218);
  }

  return result;
}

unint64_t sub_181F9C714()
{
  result = qword_1EA839220;
  if (!qword_1EA839220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839220);
  }

  return result;
}

unint64_t sub_181F9C76C()
{
  result = qword_1EA839228;
  if (!qword_1EA839228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839228);
  }

  return result;
}

unint64_t sub_181F9C7C4()
{
  result = qword_1EA839230;
  if (!qword_1EA839230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839230);
  }

  return result;
}

unint64_t sub_181F9C81C()
{
  result = qword_1EA839238;
  if (!qword_1EA839238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839238);
  }

  return result;
}

unint64_t sub_181F9C874()
{
  result = qword_1EA839240;
  if (!qword_1EA839240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839240);
  }

  return result;
}

unint64_t sub_181F9C8CC()
{
  result = qword_1EA839248;
  if (!qword_1EA839248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839248);
  }

  return result;
}

unint64_t sub_181F9C924()
{
  result = qword_1EA839250;
  if (!qword_1EA839250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839250);
  }

  return result;
}

unint64_t sub_181F9C97C()
{
  result = qword_1EA839258;
  if (!qword_1EA839258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839258);
  }

  return result;
}

unint64_t sub_181F9C9D4()
{
  result = qword_1EA839260;
  if (!qword_1EA839260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839260);
  }

  return result;
}

unint64_t sub_181F9CA2C()
{
  result = qword_1EA839268;
  if (!qword_1EA839268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839268);
  }

  return result;
}

unint64_t sub_181F9CA84()
{
  result = qword_1EA839270;
  if (!qword_1EA839270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839270);
  }

  return result;
}

unint64_t sub_181F9CADC()
{
  result = qword_1EA839278;
  if (!qword_1EA839278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839278);
  }

  return result;
}

unint64_t sub_181F9CB34()
{
  result = qword_1EA839280;
  if (!qword_1EA839280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839280);
  }

  return result;
}

unint64_t sub_181F9CB8C()
{
  result = qword_1EA839288;
  if (!qword_1EA839288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839288);
  }

  return result;
}

unint64_t sub_181F9CBE4()
{
  result = qword_1EA839290;
  if (!qword_1EA839290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839290);
  }

  return result;
}

unint64_t sub_181F9CC3C()
{
  result = qword_1EA839298;
  if (!qword_1EA839298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839298);
  }

  return result;
}

unint64_t sub_181F9CC94()
{
  result = qword_1EA8392A0;
  if (!qword_1EA8392A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392A0);
  }

  return result;
}

unint64_t sub_181F9CCEC()
{
  result = qword_1EA8392A8;
  if (!qword_1EA8392A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392A8);
  }

  return result;
}

unint64_t sub_181F9CD44()
{
  result = qword_1EA8392B0;
  if (!qword_1EA8392B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392B0);
  }

  return result;
}

unint64_t sub_181F9CD9C()
{
  result = qword_1EA8392B8;
  if (!qword_1EA8392B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392B8);
  }

  return result;
}

unint64_t sub_181F9CDF4()
{
  result = qword_1EA8392C0;
  if (!qword_1EA8392C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392C0);
  }

  return result;
}

unint64_t sub_181F9CE4C()
{
  result = qword_1EA8392C8;
  if (!qword_1EA8392C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392C8);
  }

  return result;
}

unint64_t sub_181F9CEA4()
{
  result = qword_1EA8392D0;
  if (!qword_1EA8392D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392D0);
  }

  return result;
}

unint64_t sub_181F9CEFC()
{
  result = qword_1EA8392D8;
  if (!qword_1EA8392D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392D8);
  }

  return result;
}

unint64_t sub_181F9CF54()
{
  result = qword_1EA8392E0;
  if (!qword_1EA8392E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392E0);
  }

  return result;
}

unint64_t sub_181F9CFAC()
{
  result = qword_1EA8392E8;
  if (!qword_1EA8392E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392E8);
  }

  return result;
}

unint64_t sub_181F9D004()
{
  result = qword_1EA8392F0;
  if (!qword_1EA8392F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392F0);
  }

  return result;
}

unint64_t sub_181F9D05C()
{
  result = qword_1EA8392F8;
  if (!qword_1EA8392F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392F8);
  }

  return result;
}

unint64_t sub_181F9D0B4()
{
  result = qword_1EA839300;
  if (!qword_1EA839300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839300);
  }

  return result;
}

unint64_t sub_181F9D10C()
{
  result = qword_1EA839308;
  if (!qword_1EA839308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839308);
  }

  return result;
}

unint64_t sub_181F9D164()
{
  result = qword_1EA839310;
  if (!qword_1EA839310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839310);
  }

  return result;
}

unint64_t sub_181F9D1BC()
{
  result = qword_1EA839318;
  if (!qword_1EA839318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839318);
  }

  return result;
}

unint64_t sub_181F9D214()
{
  result = qword_1EA839320;
  if (!qword_1EA839320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839320);
  }

  return result;
}

unint64_t sub_181F9D26C()
{
  result = qword_1EA839328;
  if (!qword_1EA839328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839328);
  }

  return result;
}

unint64_t sub_181F9D2C4()
{
  result = qword_1EA839330;
  if (!qword_1EA839330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839330);
  }

  return result;
}

unint64_t sub_181F9D31C()
{
  result = qword_1EA839338;
  if (!qword_1EA839338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839338);
  }

  return result;
}

unint64_t sub_181F9D374()
{
  result = qword_1EA839340;
  if (!qword_1EA839340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839340);
  }

  return result;
}

unint64_t sub_181F9D3CC()
{
  result = qword_1EA839348;
  if (!qword_1EA839348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839348);
  }

  return result;
}

unint64_t sub_181F9D424()
{
  result = qword_1EA839350;
  if (!qword_1EA839350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839350);
  }

  return result;
}

uint64_t sub_181F9D478(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756F6A6E6F62 && a2 == 0xE700000000000000;
  if (v4 || (sub_182AD4268() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000182BD62D0 == a2 || (sub_182AD4268() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000182BD62F0 == a2 || (sub_182AD4268() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000182BD6310 == a2 || (sub_182AD4268() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000182BD6330 == a2 || (sub_182AD4268() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000182BD6360 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_182AD4268();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_181F9D674(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_182AD4268() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65536D6F74737563 && a2 == 0xED00006563697672 || (sub_182AD4268() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_182AD4268();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_181F9D794(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6946656369766564 && a2 == 0xEC0000007265746CLL;
  if (v4 || (sub_182AD4268() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000 || (sub_182AD4268() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEB00000000736570 || (sub_182AD4268() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000182BD62B0 == a2 || (sub_182AD4268() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65536D6F74737563 && a2 == 0xED00006563697672 || (sub_182AD4268() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6572685469737372 && a2 == 0xED0000646C6F6873 || (sub_182AD4268() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065)
  {

    return 6;
  }

  else
  {
    v6 = sub_182AD4268();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_181F9DA00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000;
  if (v4 || (sub_182AD4268() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6361667265746E69 && a2 == 0xEA00000000007365 || (sub_182AD4268() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F636552747874 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_182AD4268();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_181F9DB28(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

unint64_t sub_181F9DB64()
{
  result = qword_1EA839358;
  if (!qword_1EA839358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839358);
  }

  return result;
}

uint64_t sub_181F9DC98()
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

uint64_t sub_181F9DD10()
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

unsigned __int8 *sub_181F9DD54@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 <= 3)
  {
    v3 = 0x2010003u >> (8 * v2);
  }

  else
  {
    v3 = 3;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_181F9DDDC()
{
  result = qword_1EA839390;
  if (!qword_1EA839390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839390);
  }

  return result;
}

unint64_t sub_181F9DE34()
{
  result = qword_1EA839398;
  if (!qword_1EA839398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839398);
  }

  return result;
}

void *sub_181F9DE88@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = *result - *v2;
  if (*result < *v2)
  {
    __break(1u);
  }

  else if ((v3 & 0x8000000000000000) == 0)
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *sub_181F9DEAC@<X0>(uint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result;
  if (*result < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = __CFADD__(*v2, v3);
  v5 = *v2 + v3;
  if (v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!(v5 >> 62))
  {
    *a2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t *sub_181F9DEDC(unint64_t *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6)
{
  v6 = *a6;
  if (*a6 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = __CFADD__(*a4, v6);
  v8 = *a4 + v6;
  if (v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!(v8 >> 62))
  {
    *result = v8;
    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_181F9DF5C()
{
  result = qword_1EA8393A0;
  if (!qword_1EA8393A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8393A0);
  }

  return result;
}

unint64_t sub_181F9DFBC(uint64_t a1, uint64_t a2, unint64_t a3, char a4, char a5, uint64_t a6, unint64_t a7)
{
  v7 = 4 * a1;
  if (4 * a1 < 0)
  {
    __break(1u);
LABEL_25:
    v32 = a7;
    v33 = a6;
    swift_once();
    a6 = v33;
    a7 = v32;
LABEL_16:
    if (byte_1EA843430 == 1)
    {
      v22 = a6;
      v23 = a7;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v24 = sub_182AD2698();
      __swift_project_value_buffer(v24, qword_1EA843418);

      v25 = sub_182AD2678();
      v26 = sub_182AD38A8();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v36[0] = v28;
        *v27 = 136315650;
        v29 = sub_182AD3BF8();
        v31 = sub_181C64FFC(v29, v30, v36);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2080;
        *(v27 + 14) = sub_181C64FFC(v22, v23, v36);
        *(v27 + 22) = 2080;
        *(v27 + 24) = sub_181C64FFC(0xD000000000000017, 0x8000000182BD6460, v36);
        _os_log_impl(&dword_181A37000, v25, v26, "%s %s %s", v27, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v28, -1, -1);
        MEMORY[0x1865DF520](v27, -1, -1);
      }
    }

    return 0;
  }

  if (v7 >> 62)
  {
    return 0;
  }

  if (!a2)
  {
    if (qword_1EA837250 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  result = v7 | a5 & 1;
  if ((a4 & 1) == 0 && result > a3)
  {
    if (qword_1EA837250 != -1)
    {
      v34 = a7;
      v35 = a6;
      swift_once();
      a6 = v35;
      a7 = v34;
    }

    if (byte_1EA843430 == 1)
    {
      v9 = a6;
      v10 = a7;
      v36[0] = 0;
      v36[1] = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0x657274732077656ELL, 0xEE00204449206D61);
      v11 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v11);

      MEMORY[0x1865D9CA0](0xD000000000000022, 0x8000000182BD6430);
      v12 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v12);

      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v13 = sub_182AD2698();
      __swift_project_value_buffer(v13, qword_1EA843418);

      v14 = sub_182AD2678();
      v15 = sub_182AD38A8();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v36[0] = v17;
        *v16 = 136315650;
        v18 = sub_182AD3BF8();
        v20 = sub_181C64FFC(v18, v19, v36);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        *(v16 + 14) = sub_181C64FFC(v9, v10, v36);
        *(v16 + 22) = 2080;
        v21 = sub_181C64FFC(0, 0xE000000000000000, v36);

        *(v16 + 24) = v21;
        _os_log_impl(&dword_181A37000, v14, v15, "%s %s %s", v16, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v17, -1, -1);
        MEMORY[0x1865DF520](v16, -1, -1);
      }

      else
      {
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_181F9E4E8(char a1, uint64_t a2, char a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if ((a3 & 2) == 0)
  {
    if (!v4)
    {
      v8 = 0;
LABEL_18:
      if (a3)
      {
        v12 = v8;
      }

      else
      {
        v12 = v4;
      }

      if ((a3 & 1) == 0)
      {
        v4 = v8;
      }

      if (a1)
      {
        return v4;
      }

      else
      {
        return v12;
      }
    }

    v5 = a3;
    v6 = a1;
    sub_18224F168(5);
    if (v7)
    {
      v8 = sub_1822CDE04();
      v4 = *(a2 + 16);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v8 = 0;
      v4 = *(a2 + 16);
      if (!v4)
      {
LABEL_17:
        a1 = v6;
        a3 = v5;
        goto LABEL_18;
      }
    }

    sub_18224F168(6);
    if (v11)
    {
      v4 = sub_1822CDE04();
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_17;
  }

  if (v4 && (sub_18224F168(9), (v10 & 1) != 0))
  {
    return sub_1822CDE04();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181F9E654(char a1, uint64_t a2, char a3)
{
  v4 = *(a2 + 16);
  if ((a3 & 2) == 0)
  {
    if (!v4)
    {
      v8 = 0;
LABEL_16:
      if (a3)
      {
        v12 = v8;
      }

      else
      {
        v12 = v4;
      }

      if ((a3 & 1) == 0)
      {
        v4 = v8;
      }

      if (a1)
      {
        return v12;
      }

      else
      {
        return v4;
      }
    }

    v5 = a3;
    v6 = a1;
    sub_18224F168(5);
    if (v7)
    {
      v8 = sub_1822CDE04();
      v4 = *(a2 + 16);
      if (!v4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v8 = 0;
      v4 = *(a2 + 16);
      if (!v4)
      {
LABEL_15:
        a1 = v6;
        a3 = v5;
        goto LABEL_16;
      }
    }

    sub_18224F168(6);
    if (v11)
    {
      v4 = sub_1822CDE04();
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_15;
  }

  if (v4 && (sub_18224F168(7), (v9 & 1) != 0))
  {
    return sub_1822CDE04();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_181F9E7C4()
{
  result = qword_1EA8393A8;
  if (!qword_1EA8393A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8393A8);
  }

  return result;
}

uint64_t NWEndpoint.txtRecord.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v2, v6, type metadata accessor for NWEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    result = sub_181D8E388(v6, type metadata accessor for NWEndpoint);
LABEL_5:
    *a1 = 0;
    a1[1] = 0;
    return result;
  }

  if (EnumCaseMultiPayload == 3)
  {
    *a1 = 0;
    a1[1] = 0;
    return sub_181D8E388(v6, type metadata accessor for NWEndpoint);
  }

  v9 = nw_endpoint_copy_txt_record(*v6);
  if (!v9)
  {
    result = swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x1E69E7CC8];
  v12 = (v11 + 16);
  aBlock[4] = sub_181E63B60;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181E63AEC;
  aBlock[3] = &block_descriptor_6;
  v13 = _Block_copy(aBlock);

  nw_txt_record_apply(v10, v13);
  swift_unknownObjectRelease();
  _Block_release(v13);
  swift_beginAccess();
  v14 = *v12;

  *a1 = v14;
  a1[1] = v10;
  return result;
}

unint64_t sub_181F9EA44(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_182AD3258();
  }

  __break(1u);
  return result;
}

uint64_t sub_181F9EA90(unint64_t a1)
{
  v2 = v1[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x1EEE68E00]();
}

void IPv6Address.asIPv4.getter(unint64_t *a1@<X8>)
{
  if (!*v1 && ((v3 = v1[1], v2 = v1[2], v3 == -65536) || ((v3 & 0xFEFFFFFF00000000) != 0 ? (v4 = v3 == 0) : (v4 = 0), v4)))
  {
    *a1 = HIDWORD(v3);
    a1[1] = v2;
  }

  else
  {
    *a1 = xmmword_182AEB780;
  }
}

uint64_t sub_181F9ED08@<X0>(void *a1@<X0>, _DWORD *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    swift_once();
    a2 = v7;
    a4 = v9;
    a3 = v8;
  }

  v5 = *a3;
  *a4 = *a2;
  *(a4 + 8) = v5;
}

uint64_t IPv4Address.isLoopback.getter()
{
  v1 = *(v0 + 1);
  v6 = *v0;
  v7 = v1;
  if (qword_1EA836AF8 != -1)
  {
    swift_once();
  }

  v4 = dword_1EA836B00;
  v5 = qword_1EA836B08;

  v2 = _s7Network11IPv4AddressV2eeoiySbAC_ACtFZ_0(&v6, &v4);

  return v2 & 1;
}

unint64_t IPv4Address.rawValue.getter()
{
  v8[5] = *MEMORY[0x1E69E9840];
  v7 = *v0;
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = &v7;
  v8[1] = v8;
  v1 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v2 = *v1;
  if (*v1 && (v3 = v1[1], v4 = v3 - v2, v3 != v2))
  {
    if (v4 <= 14)
    {
      v5 = sub_181E68460(v2, v3);
    }

    else if (v4 >= 0x7FFFFFFF)
    {
      v5 = sub_181E3720C(v2, v3);
    }

    else
    {
      v5 = sub_181C1F030(v2, v3);
    }
  }

  else
  {
    v5 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t IPv4Address.init(_:_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v8)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 4)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v8 != 2)
    {
      if (v8 != 1)
      {
        v22 = a1;
        goto LABEL_23;
      }

      if (a1 > a1 >> 32)
      {
        goto LABEL_27;
      }

      v13 = sub_182AD1D58();
      if (!v13)
      {
        goto LABEL_32;
      }

      v14 = v13;
      v15 = sub_182AD1D88();
      if (__OFSUB__(a1, v15))
      {
        goto LABEL_29;
      }

      v16 = (a1 - v15 + v14);
      sub_182AD1D78();
      if (v16)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_26;
      }

      if (HIDWORD(a1) - a1 != 4)
      {
        goto LABEL_17;
      }
    }

    v18 = *(a1 + 16);
    v19 = sub_182AD1D58();
    if (!v19)
    {
      goto LABEL_30;
    }

    v20 = v19;
    v21 = sub_182AD1D88();
    if (!__OFSUB__(v18, v21))
    {
      v16 = (v18 - v21 + v20);
      sub_182AD1D78();
      if (!v16)
      {
        goto LABEL_31;
      }

LABEL_21:
      v22 = *v16;
LABEL_23:
      result = sub_181C1F2E4(a1, a2);
      *a4 = v22;
      goto LABEL_24;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_182AD1D78();
LABEL_31:
    __break(1u);
LABEL_32:
    result = sub_182AD1D78();
    __break(1u);
    return result;
  }

  if (v8 != 2)
  {
    goto LABEL_17;
  }

  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = __OFSUB__(v9, v10);
  v12 = v9 - v10;
  if (v11)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v12 == 4)
  {
    goto LABEL_8;
  }

LABEL_17:

  result = sub_181C1F2E4(a1, a2);
  *a4 = 0;
  v7 = 1;
LABEL_24:
  *(a4 + 8) = v7;
  return result;
}

uint64_t IPv4Address.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) == 4)
  {
    v3 = *(a1 + 32);

    v5 = 0;
    *a2 = v3;
  }

  else
  {

    *a2 = 0;
    v5 = 1;
  }

  *(a2 + 8) = v5;
  return result;
}

uint64_t IPv4Address.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_181E5F9E8(a1, a2, 2, &v6);

  if (v9 == 255)
  {
    goto LABEL_5;
  }

  result = v6;
  v5 = v7;
  if (v9 != 1)
  {
    result = sub_181FADA8C(v6, v7, v8, v9);
LABEL_5:
    *a3 = 0;
    v5 = 1;
    goto LABEL_6;
  }

  *a3 = v6;
LABEL_6:
  a3[1] = v5;
  return result;
}

uint64_t IPv4Address.hash(into:)()
{
  v1 = *(v0 + 8);
  sub_182AD4538();
  if (!v1)
  {
    return sub_182AD4518();
  }

  sub_182AD4518();
  v2 = *(v1 + 16);
  v3 = *(v1 + 184);
  v4 = *(v1 + 185);
  MEMORY[0x1865DB070](v2);
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AEC420[v3]);
  return MEMORY[0x1865DB070](qword_182AEC448[v4]);
}

uint64_t IPv4Address.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_182AD44E8();
  sub_182AD4538();
  sub_182AD4518();
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 184);
    v4 = *(v1 + 185);
    MEMORY[0x1865DB070](v2);
    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AEC420[v3]);
    MEMORY[0x1865DB070](qword_182AEC448[v4]);
  }

  return sub_182AD4558();
}

unint64_t sub_181F9F2F0()
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *v0;
  return sub_181C1F228(&v2, &v3);
}

uint64_t sub_181F9F354@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_181E5F9E8(a1, a2, 2, &v6);

  if (v9 == 255)
  {
    goto LABEL_5;
  }

  result = v6;
  v5 = v7;
  if (v9 != 1)
  {
    result = sub_181FADA8C(v6, v7, v8, v9);
LABEL_5:
    *a3 = 0;
    v5 = 1;
    goto LABEL_6;
  }

  *a3 = v6;
LABEL_6:
  a3[1] = v5;
  return result;
}

uint64_t sub_181F9F3D4()
{
  v1 = *(v0 + 1);
  v6 = *v0;
  v7 = v1;
  if (qword_1EA836AF8 != -1)
  {
    swift_once();
  }

  v4 = dword_1EA836B00;
  v5 = qword_1EA836B08;

  v2 = _s7Network11IPv4AddressV2eeoiySbAC_ACtFZ_0(&v6, &v4);

  return v2 & 1;
}

uint64_t sub_181F9F49C()
{
  v1 = *(v0 + 8);
  sub_182AD44E8();
  sub_182AD4538();
  sub_182AD4518();
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 184);
    v4 = *(v1 + 185);
    MEMORY[0x1865DB070](v2);
    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AEC420[v3]);
    MEMORY[0x1865DB070](qword_182AEC448[v4]);
  }

  return sub_182AD4558();
}

void sub_181F9F568()
{
  v0 = *(MEMORY[0x1E69E99B8] + 8);
  *&xmmword_1EA839410 = *MEMORY[0x1E69E99B8];
  *(&xmmword_1EA839410 + 1) = v0;
  off_1EA839420 = 0;
}

void sub_181F9F5B0()
{
  v0 = *(MEMORY[0x1E69E99B8] + 8);
  qword_1EA839428 = *MEMORY[0x1E69E99B8];
  unk_1EA839430 = v0;
  qword_1EA839438 = 0;
}

void sub_181F9F5F8()
{
  v0 = *(MEMORY[0x1E69E99D0] + 8);
  qword_1EA839440 = *MEMORY[0x1E69E99D0];
  *algn_1EA839448 = v0;
  qword_1EA839450 = 0;
}

void sub_181F9F640()
{
  v0 = *(MEMORY[0x1E69E99D8] + 8);
  qword_1EA839458 = *MEMORY[0x1E69E99D8];
  unk_1EA839460 = v0;
  qword_1EA839468 = 0;
}

void sub_181F9F688()
{
  v0 = *(MEMORY[0x1E69E99C0] + 8);
  qword_1EA839470 = *MEMORY[0x1E69E99C0];
  *algn_1EA839478 = v0;
  qword_1EA839480 = 0;
}

void sub_181F9F6D0()
{
  v0 = *(MEMORY[0x1E69E99C8] + 8);
  qword_1EA839488 = *MEMORY[0x1E69E99C8];
  unk_1EA839490 = v0;
  qword_1EA839498 = 0;
}

uint64_t sub_181F9F718@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v8 = a2;
    v9 = a4;
    v10 = a3;
    swift_once();
    a2 = v8;
    a3 = v10;
    a4 = v9;
  }

  v5 = a2[1];
  v6 = *a3;
  *a4 = *a2;
  a4[1] = v5;
  a4[2] = v6;
}

Network::IPv6Address::Scope_optional __swiftcall IPv6Address.Scope.init(rawValue:)(Network::IPv6Address::Scope_optional rawValue)
{
  if (rawValue.value <= Network_IPv6Address_Scope_global)
  {
    if (rawValue.value == Network_IPv6Address_Scope_linkLocal)
    {
      *v1 = 0;
      return rawValue;
    }

    if (rawValue.value == Network_IPv6Address_Scope_siteLocal)
    {
      *v1 = 1;
      return rawValue;
    }
  }

  else
  {
    switch(rawValue.value)
    {
      case 0xE:
        *v1 = 4;
        return rawValue;
      case 8:
        *v1 = 3;
        return rawValue;
      case 5:
        *v1 = 2;
        return rawValue;
    }
  }

  *v1 = 5;
  return rawValue;
}

uint64_t sub_181F9F858()
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

uint64_t sub_181F9F8F0()
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

BOOL sub_181F9F9FC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = (v2 - 1) < 2;
  v4 = (v2 & 0xC0) == 128;
  if (v1 != 254)
  {
    v4 = 0;
  }

  if (v1 == 255)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

void IPv6Address.multicastScope.getter(_BYTE *a1@<X8>)
{
  if (*v1 != 255)
  {
    goto LABEL_2;
  }

  v2 = v1[1] & 0xF;
  if (v2 <= 4)
  {
    if (v2 == 1)
    {
      *a1 = 0;
    }

    else
    {
      if (v2 != 2)
      {
        goto LABEL_2;
      }

      *a1 = 1;
    }
  }

  else
  {
    switch(v2)
    {
      case 5u:
        *a1 = 2;
        break;
      case 8u:
        *a1 = 3;
        break;
      case 0xEu:
        *a1 = 4;
        return;
      default:
LABEL_2:
        *a1 = 5;
        return;
    }
  }
}

unint64_t IPv6Address.rawValue.getter()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v9[0] = *v0;
  v9[1] = v1;
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = v9;
  v8[1] = v10;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_181E68460(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_181E3720C(v3, v4);
    }

    else
    {
      v6 = sub_181C1F030(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

BOOL IPv6Address.isUniqueLocal.getter()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v8[0] = *v0;
  v8[1] = v1;
  v2 = sub_181C1F228(v8, v9);
  v4 = v3;
  v5 = sub_182AD2118();
  sub_181C1F2E4(v2, v4);
  return byte_1EEF96EB0 == v5 || v5 == byte_1EEF96EB1;
}

uint64_t IPv6Address.init(_:_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a1;
  v7 = *a3;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_17:

      result = sub_181C1F2E4(v5, a2);
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 1;
      return result;
    }

    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!v11)
    {
      if (v12 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    if (v8)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v8 != 2)
    {
      if (v8 != 1)
      {
        v25 = vdupq_n_s64(a2);
        v30 = vshlq_u64(v25, xmmword_182AEB790);
        v29 = vshlq_u64(v25, xmmword_182AEB7A0);
        result = sub_181C1F2E4(v5, a2);
        v26.i64[0] = 255;
        v26.i64[1] = 255;
        v27 = vandq_s8(v29, v26);
        v28 = vandq_s8(v30, v26);
        v22 = (v27.i64[0] << 40) | (v27.i64[1] << 32) | (v28.i64[0] << 24) | (v28.i64[1] << 16) | a2 & 0xFF00 | a2;
        goto LABEL_23;
      }

      if (v5 > v5 >> 32)
      {
        goto LABEL_26;
      }

      v13 = sub_182AD1D58();
      if (!v13)
      {
        goto LABEL_31;
      }

      v14 = v13;
      v15 = sub_182AD1D88();
      if (__OFSUB__(v5, v15))
      {
        goto LABEL_28;
      }

      v16 = (v5 - v15 + v14);
      sub_182AD1D78();
      if (v16)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(v5), v5))
      {
        goto LABEL_25;
      }

      if (HIDWORD(v5) - v5 != 16)
      {
        goto LABEL_17;
      }
    }

    v18 = *(v5 + 16);
    v19 = sub_182AD1D58();
    if (!v19)
    {
      goto LABEL_29;
    }

    v20 = v19;
    v21 = sub_182AD1D88();
    if (!__OFSUB__(v18, v21))
    {
      v16 = (v18 - v21 + v20);
      sub_182AD1D78();
      if (!v16)
      {
        goto LABEL_30;
      }

LABEL_21:
      v24 = v16;
      v23 = *v16;
      v22 = v24[1];
      result = sub_181C1F2E4(v5, a2);
      v5 = v23;
LABEL_23:
      *a4 = v5;
      a4[1] = v22;
      a4[2] = v7;
      return result;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_182AD1D78();
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_182AD1D78();
  __break(1u);
  return result;
}

uint64_t IPv6Address.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (a1[2] == 16)
  {
    v3 = a1[4];
    v4 = a1[5];

    v6 = 0;
    *a2 = v3;
    a2[1] = v4;
  }

  else
  {

    *a2 = 0;
    a2[1] = 0;
    v6 = 1;
  }

  a2[2] = v6;
  return result;
}

uint64_t IPv6Address.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_181E5F9E8(a1, a2, 30, &v7);

  if (v10 != 255)
  {
    result = v7;
    v5 = v8;
    v6 = v9;
    if (v10 == 2)
    {
      *a3 = v7;
      a3[1] = v5;
      a3[2] = v6;
      return result;
    }

    result = sub_181FADA8C(v7, v8, v9, v10);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 1;
  return result;
}

uint64_t IPv6Address.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  if (!v1)
  {
    return sub_182AD4518();
  }

  sub_182AD4518();
  v2 = *(v1 + 16);
  v3 = *(v1 + 184);
  v4 = *(v1 + 185);
  MEMORY[0x1865DB070](v2);
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AEC420[v3]);
  return MEMORY[0x1865DB070](qword_182AEC448[v4]);
}

uint64_t IPv6Address.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_182AD44E8();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4518();
  if (v1)
  {
    v2 = *(v1 + 184);
    v3 = *(v1 + 185);
    MEMORY[0x1865DB070](*(v1 + 16));
    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AEC420[v2]);
    MEMORY[0x1865DB070](qword_182AEC448[v3]);
  }

  return sub_182AD4558();
}

unint64_t sub_181FA012C()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v3[0] = *v0;
  v3[1] = v1;
  return sub_181C1F228(v3, v4);
}

uint64_t sub_181FA0190@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_181E5F9E8(a1, a2, 30, &v7);

  if (v10 != 255)
  {
    result = v7;
    v5 = v8;
    v6 = v9;
    if (v10 == 2)
    {
      *a3 = v7;
      a3[1] = v5;
      a3[2] = v6;
      return result;
    }

    result = sub_181FADA8C(v7, v8, v9, v10);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 1;
  return result;
}

uint64_t sub_181FA025C()
{
  sub_182AD44E8();
  IPv6Address.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_181FA02B4()
{
  sub_182AD44E8();
  IPv6Address.hash(into:)();
  return sub_182AD4558();
}

uint64_t VSOCKAddress.debugDescription.getter()
{
  v0 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v0);

  MEMORY[0x1865D9CA0](0x3D54524F50202CLL, 0xE700000000000000);
  v1 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v1);

  return 1027885379;
}

uint64_t VSOCKAddress.hashValue.getter()
{
  sub_182AD44E8();
  sub_182AD4538();
  sub_182AD4538();
  return sub_182AD4558();
}

uint64_t sub_181FA0480()
{
  sub_182AD44E8();
  sub_182AD4538();
  sub_182AD4538();
  return sub_182AD4558();
}

uint64_t sub_181FA0518()
{
  sub_182AD44E8();
  sub_182AD4538();
  sub_182AD4538();
  return sub_182AD4558();
}

void __swiftcall EthernetAddress.init(_:)(Network::EthernetAddress *__return_ptr retstr, ether_addr *a2)
{
  *retstr->addr.octet = a2;
  retstr->addr.octet[2] = BYTE2(a2);
  retstr->addr.octet[3] = BYTE3(a2);
  retstr->addr.octet[4] = BYTE4(a2);
  retstr->addr.octet[5] = BYTE5(a2);
}

uint64_t EthernetAddress.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 6)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v4 != 2)
    {
      if (v4 != 1)
      {
        v26 = vdupq_n_s64(a1);
        *v31.i8 = vmovn_s32(vuzp1q_s32(vshlq_u64(v26, xmmword_182AE69D0), vshlq_u64(v26, xmmword_182AE69E0)));
        v25 = a1 >> 40;
        v24 = a1;
        goto LABEL_23;
      }

      v9 = a1;
      if (a1 > a1 >> 32)
      {
        goto LABEL_27;
      }

      v10 = a1;
      v11 = a2;
      v12 = sub_182AD1D58();
      if (!v12)
      {
        goto LABEL_32;
      }

      v13 = v12;
      v14 = sub_182AD1D88();
      if (__OFSUB__(v9, v14))
      {
        goto LABEL_29;
      }

      v15 = v9 - v14 + v13;
      a1 = sub_182AD1D78();
      if (v15)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_26;
      }

      if (HIDWORD(a1) - a1 != 6)
      {
        goto LABEL_17;
      }
    }

    v10 = a1;
    v20 = *(a1 + 16);
    v11 = a2;
    v21 = sub_182AD1D58();
    if (!v21)
    {
      goto LABEL_30;
    }

    v22 = v21;
    v23 = sub_182AD1D88();
    if (!__OFSUB__(v20, v23))
    {
      v15 = v20 - v23 + v22;
      sub_182AD1D78();
      if (!v15)
      {
        goto LABEL_31;
      }

LABEL_21:
      v24 = *v15;
      v16.i32[0] = *(v15 + 1);
      v31 = vmovl_u8(v16);
      v25 = *(v15 + 5);
      a2 = v11;
      a1 = v10;
LABEL_23:
      result = sub_181C1F2E4(a1, a2);
      v19 = 0;
      v27 = vmovl_u16((v31.i64[0] & 0xFF00FF00FF00FFLL));
      v28.i64[0] = v27.u32[0];
      v28.i64[1] = v27.u32[1];
      v29 = v28;
      v28.i64[0] = v27.u32[2];
      v28.i64[1] = v27.u32[3];
      v30 = vorrq_s8(vshlq_u64(v29, xmmword_182AEB7C0), vshlq_u64(v28, xmmword_182AEB7B0));
      v18 = *&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)) | (v25 << 40) | v24;
      goto LABEL_24;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_182AD1D78();
LABEL_31:
    __break(1u);
LABEL_32:
    result = sub_182AD1D78();
    __break(1u);
    return result;
  }

  if (v4 != 2)
  {
    goto LABEL_17;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v8 = v5 - v6;
  if (v7)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v8 == 6)
  {
    goto LABEL_8;
  }

LABEL_17:
  result = sub_181C1F2E4(a1, a2);
  v18 = 0;
  v19 = 1;
LABEL_24:
  *a3 = v18;
  *(a3 + 4) = WORD2(v18);
  *(a3 + 6) = v19;
  return result;
}

uint64_t EthernetAddress.hash(into:)()
{
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  return sub_182AD4518();
}

uint64_t EthernetAddress.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394A0);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7508];
  *(v7 + 16) = xmmword_182AEB7D0;
  v9 = MEMORY[0x1E69E7558];
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;
  *(v7 + 32) = v1;
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = v2;
  *(v7 + 136) = v8;
  *(v7 + 144) = v9;
  *(v7 + 112) = v3;
  *(v7 + 176) = v8;
  *(v7 + 184) = v9;
  *(v7 + 152) = v4;
  *(v7 + 216) = v8;
  *(v7 + 224) = v9;
  *(v7 + 192) = v5;
  *(v7 + 256) = v8;
  *(v7 + 264) = v9;
  *(v7 + 232) = v6;

  return sub_182AD2FC8();
}

uint64_t EthernetAddress.hashValue.getter()
{
  sub_182AD44E8();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  return sub_182AD4558();
}

uint64_t sub_181FA09DC()
{
  sub_182AD44E8();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  return sub_182AD4558();
}

uint64_t sub_181FA0A8C()
{
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  return sub_182AD4518();
}

uint64_t sub_181FA0B0C()
{
  sub_182AD44E8();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  return sub_182AD4558();
}

double NWEndpoint.Host.init(stringLiteral:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  NWEndpoint.Host.init(_:)(a1, a2, &v7);
  v4 = v8;
  v5 = v9;
  result = *&v7;
  *a3 = v7;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  return result;
}

uint64_t NWEndpoint.Host.interface.getter@<X0>(void *a1@<X8>)
{
  v2 = 16;
  if (*(v1 + 24) == 1)
  {
    v2 = 8;
  }

  *a1 = *(v1 + v2);
}

uint64_t NWEndpoint.Host.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (!*(v0 + 24))
  {
    MEMORY[0x1865DB070](0);
    sub_182AD30E8();
    if (!v2)
    {
      return sub_182AD4518();
    }

LABEL_6:
    sub_182AD4518();
    v7 = *(v2 + 184);
    v8 = *(v2 + 185);
    MEMORY[0x1865DB070](*(v2 + 16));
    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AEC420[v7]);
    v6 = qword_182AEC448[v8];
    return MEMORY[0x1865DB070](v6);
  }

  if (*(v0 + 24) != 1)
  {
    MEMORY[0x1865DB070](2);
    sub_182AD4538();
    sub_182AD4538();
    sub_182AD4538();
    sub_182AD4538();
    if (!v2)
    {
      return sub_182AD4518();
    }

    goto LABEL_6;
  }

  MEMORY[0x1865DB070](1);
  sub_182AD4538();
  if (v1)
  {
    sub_182AD4518();
    v3 = *(v1 + 16);
    v4 = *(v1 + 184);
    v5 = *(v1 + 185);
    MEMORY[0x1865DB070](v3);
    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AEC420[v4]);
    v6 = qword_182AEC448[v5];
    return MEMORY[0x1865DB070](v6);
  }

  return sub_182AD4518();
}

uint64_t NWEndpoint.Host.hashValue.getter()
{
  sub_182AD44E8();
  NWEndpoint.Host.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_181FA0DDC()
{
  sub_182AD44E8();
  NWEndpoint.Host.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_181FA0E3C()
{
  sub_182AD44E8();
  NWEndpoint.Host.hash(into:)();
  return sub_182AD4558();
}

double sub_181FA0E9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  NWEndpoint.Host.init(_:)(*a1, *(a1 + 8), &v6);
  v3 = v7;
  v4 = v8;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

void NWEndpoint.Port.init(_:)(uint64_t a1@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  *&v8.ai_flags = xmmword_182AEB7E0;
  v8.ai_addrlen = 0;
  memset(&v8.ai_canonname, 0, 24);
  v7 = 0;
  v2 = sub_182AD3048();

  v3 = getaddrinfo(0, (v2 + 32), &v8, &v7);

  if (v3 || !v7)
  {
    goto LABEL_7;
  }

  ai_addr = v7->ai_addr;
  if (!ai_addr || ai_addr->sa_family != 30)
  {
    freeaddrinfo(v7);
LABEL_7:
    LOWORD(v5) = 0;
    v6 = 1;
    goto LABEL_8;
  }

  v5 = bswap32(*ai_addr->sa_data) >> 16;
  freeaddrinfo(v7);
  v6 = 0;
LABEL_8:
  *a1 = v5;
  *(a1 + 2) = v6;
}

uint64_t sub_181FA10A0()
{
  sub_182AD44E8();
  sub_182AD4528();
  return sub_182AD4558();
}

uint64_t sub_181FA1114()
{
  sub_182AD44E8();
  sub_182AD4528();
  return sub_182AD4558();
}

uint64_t NWEndpoint.interface.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_181D8E180(v2, v6, type metadata accessor for NWEndpoint);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result)
    {
      v12 = *(v6 + 6);

      *a1 = v12;
    }

    else
    {
      v9 = *(v6 + 1);
      v8 = *(v6 + 2);
      if (v6[24])
      {
        if (v6[24] == 1)
        {
          *a1 = v9;
          return result;
        }
      }

      else
      {
        v13 = *v6;

        result = sub_181E605C8(v13, v9, v8, 0);
      }

      *a1 = v8;
    }
  }

  else
  {
    if (result == 2)
    {
      result = sub_181D8E388(v6, type metadata accessor for NWEndpoint);
    }

    else
    {
      if (result == 3)
      {
        *a1 = 0;
        return sub_181D8E388(v6, type metadata accessor for NWEndpoint);
      }

      v10 = nw_endpoint_copy_interface(*v6);
      if (v10)
      {
        v11 = *(v10 + OBJC_IVAR____TtC7Network13__NWInterface_interface);

        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        *a1 = v11;
        return result;
      }

      result = swift_unknownObjectRelease();
    }

    *a1 = 0;
  }

  return result;
}

Swift::String_optional __swiftcall NWEndpoint.parentEndpointDomain()()
{
  v0 = sub_181FA4534(nw_endpoint_get_parent_endpoint_domain);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t NWEndpoint.init(_:)@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_181B80998(a1, &v11 - v5);
  v7 = type metadata accessor for NWEndpoint();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7))
  {
    sub_181F49A88(v6, &qword_1EA839360);
    v9 = 1;
  }

  else
  {
    sub_181B81180(v6, a2);
    v9 = 0;
  }

  return (*(v8 + 56))(a2, v9, 1, v7);
}

void *NWEndpoint.setParentEndpoint(endpoint:isProxy:)(uint64_t a1, char a2)
{
  result = NWEndpoint.nw.getter();
  if (result)
  {
    v5 = result;
    sub_181D8E388(v2, type metadata accessor for NWEndpoint);
    v6 = NWEndpoint.nw.getter();
    nw_endpoint_set_parent_endpoint(v5, v6, a2 & 1);
    swift_unknownObjectRelease();
    *v2 = v5;
    type metadata accessor for NWEndpoint();

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t NWEndpoint.originalEndpoint(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for NWEndpoint();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  sub_181D8E180(v3, v12, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v14 = nw_endpoint_copy_original_endpoint(*v12, dword_182AEC404[v13]);
    sub_181B80998(v14, v8);
    swift_unknownObjectRelease();
    v15 = (v10 + 56);
    if ((*(v10 + 48))(v8, 1, v9))
    {
      sub_181F49A88(v8, &qword_1EA839360);
      return (*v15)(a2, 1, 1, v9);
    }

    else
    {
      sub_181B81180(v8, a2);
      return (*v15)(a2, 0, 1, v9);
    }
  }

  else
  {
    (*(v10 + 56))(a2, 1, 1, v9);
    return sub_181D8E388(v12, type metadata accessor for NWEndpoint);
  }
}

uint64_t sub_181FA17A0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for NWEndpoint();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v4, v12, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    if (a1(*v12))
    {
      v13 = swift_unknownObjectRetain();
      sub_181B80998(v13, v8);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v14 = (v10 + 56);
      if ((*(v10 + 48))(v8, 1, v9))
      {
        sub_181F49A88(v8, &qword_1EA839360);
        return (*v14)(a2, 1, 1, v9);
      }

      else
      {
        sub_181B81180(v8, a2);
        return (*v14)(a2, 0, 1, v9);
      }
    }

    else
    {
      (*(v10 + 56))(a2, 1, 1, v9);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v10 + 56))(a2, 1, 1, v9);
    return sub_181D8E388(v12, type metadata accessor for NWEndpoint);
  }
}

void *NWEndpoint.setCustomMetadataForKey(key:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = NWEndpoint.nw.getter();
  if (result)
  {
    v10 = result;
    if (a4 >> 60 == 15)
    {
      sub_181D8E388(v4, type metadata accessor for NWEndpoint);
      v11 = sub_182AD3048();
      nw_endpoint_set_custom_metadata_for_key(v10, v11 + 32, 0, 0);
    }

    else
    {
      swift_unknownObjectRetain();

      sub_181F49B44(a3, a4);
      sub_181FA9E08(a3, a4, v10, a1, a2, a3, a4);
      sub_181D8E388(v4, type metadata accessor for NWEndpoint);
    }

    *v4 = v10;
    type metadata accessor for NWEndpoint();

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t NWEndpoint.customMetadataForKey(key:)()
{
  v1 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v1);
  v3 = (aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v0, v3, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v4 = *v3;
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_182AE8230;
    aBlock[4] = sub_181FADAA0;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181FA1E30;
    aBlock[3] = &block_descriptor_6_0;
    v6 = _Block_copy(aBlock);

    v7 = sub_182AD3048();
    nw_endpoint_access_custom_metadata_for_key(v4, v7 + 32, v6);

    swift_unknownObjectRelease();
    _Block_release(v6);
    swift_beginAccess();
    v8 = *(v5 + 16);
    sub_181F49B44(v8, *(v5 + 24));
  }

  else
  {
    sub_181D8E388(v3, type metadata accessor for NWEndpoint);
    return 0;
  }

  return v8;
}

uint64_t sub_181FA1D3C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a2 <= 14)
      {
        v7 = sub_181E68460(a1, &a1[a2]);
        v8 = v9 & 0xFFFFFFFFFFFFFFLL;
      }

      else
      {
        sub_182AD1DB8();
        swift_allocObject();
        v5 = sub_182AD1D48();
        v6 = v5;
        if (a2 >= 0x7FFFFFFF)
        {
          sub_182AD20C8();
          v7 = swift_allocObject();
          *(v7 + 16) = 0;
          *(v7 + 24) = a2;
          v8 = v6 | 0x8000000000000000;
        }

        else
        {
          v7 = a2 << 32;
          v8 = v5 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v7 = 0;
      v8 = 0xC000000000000000;
    }

    swift_beginAccess();
    v10 = *(a3 + 16);
    v11 = *(a3 + 24);
    *(a3 + 16) = v7;
    *(a3 + 24) = v8;
    sub_181D9D680(v10, v11);
  }

  return 1;
}

uint64_t sub_181FA1E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  LOBYTE(a3) = v5(a2, a3);

  return a3 & 1;
}

void *NWEndpoint.setSignature(_:)(uint64_t a1, unint64_t a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  result = NWEndpoint.nw.getter();
  if (result)
  {
    v6 = result;
    v11[0] = a1;
    v11[1] = a2;
    sub_181D8E388(v2, type metadata accessor for NWEndpoint);
    v7 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v7 != 2)
      {
        v8 = 0;
        goto LABEL_12;
      }

      v10 = *(a1 + 16);
      v9 = *(a1 + 24);
      v8 = v9 - v10;
      if (!__OFSUB__(v9, v10))
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (!v7)
    {
      v8 = BYTE6(a2);
LABEL_12:
      nw_endpoint_set_signature(v6, v11, v8);
      *v2 = v6;
      type metadata accessor for NWEndpoint();
      return swift_storeEnumTagMultiPayload();
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
    }

    v8 = HIDWORD(a1) - a1;
    goto LABEL_12;
  }

  return result;
}

Swift::Bool __swiftcall NWEndpoint.hasSignature()()
{
  v1 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v0, v3, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    has_signature = nw_endpoint_has_signature(*v3);
    swift_unknownObjectRelease();
    return has_signature;
  }

  else
  {
    sub_181D8E388(v3, type metadata accessor for NWEndpoint);
    return 0;
  }
}

uint64_t NWEndpoint.echConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v2, v9, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v10 = nw_endpoint_copy_ech_config(*v9);
    if (v10)
    {
      v11 = v10;
      sub_182AD2818();
      swift_unknownObjectRelease();

      v12 = 0;
    }

    else
    {
      swift_unknownObjectRelease();
      v12 = 1;
    }

    v15 = sub_182AD2868();
    (*(*(v15 - 8) + 56))(v6, v12, 1, v15);
    return sub_181B7D08C(v6, a1, &unk_1EA8394B0);
  }

  else
  {
    v13 = sub_182AD2868();
    (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    return sub_181D8E388(v9, type metadata accessor for NWEndpoint);
  }
}

uint64_t NWEndpoint.echConfig.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_182AD2868();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = NWEndpoint.nw.getter();
  if (!v11)
  {
    return sub_181F49A88(a1, &unk_1EA8394B0);
  }

  v12 = v11;
  sub_181D8E388(v1, type metadata accessor for NWEndpoint);
  sub_181AB5D28(a1, v6, &unk_1EA8394B0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_181F49A88(v6, &unk_1EA8394B0);
    nw_endpoint_set_ech_config(v12, 0);
    sub_181F49A88(a1, &unk_1EA8394B0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v14 = sub_182AD2808();
    nw_endpoint_set_ech_config(v12, v14);

    sub_181F49A88(a1, &unk_1EA8394B0);
    (*(v8 + 8))(v10, v7);
  }

  *v2 = v12;
  type metadata accessor for NWEndpoint();
  return swift_storeEnumTagMultiPayload();
}

void (*NWEndpoint.echConfig.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  NWEndpoint.echConfig.getter(v4);
  return sub_181FA2580;
}

uint64_t NWEndpoint.alternatives.getter()
{
  v1 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v0, v3, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_181D8E388(v3, type metadata accessor for NWEndpoint);
    return 0;
  }

  v4 = *v3;
  v13 = MEMORY[0x1E69E7CC0];
  v5 = swift_allocObject();
  *(v5 + 16) = &v13;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_181FADAA8;
  *(v6 + 24) = v5;
  aBlock[4] = sub_181FADAB0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181FA2D88;
  aBlock[3] = &block_descriptor_15;
  v7 = _Block_copy(aBlock);

  nw_endpoint_enumerate_alternatives(v4, v7);
  swift_unknownObjectRelease();
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if ((v4 & 1) == 0)
  {
    v9 = v13;
    v10 = *(v13 + 16);

    if (v10)
    {
      return v9;
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t NWEndpoint.alternatives.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8389D8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v44 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v38 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v38 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v43 = v38 - v13;
  v14 = NWEndpoint.nw.getter();
  if (v14)
  {
    v15 = v14;
    sub_181D8E388(v1, type metadata accessor for NWEndpoint);
    nw_endpoint_clear_alternatives(v15);
    if (a1)
    {
      v16 = *(a1 + 16);
      if (v16)
      {
        v39 = v1;
        v40 = v15;
        v17 = *(v3 + 48);
        v18 = *(v4 + 80);
        v38[1] = a1;
        v19 = a1 + ((v18 + 32) & ~v18);
        v41 = *(v4 + 72);
        v42 = v17;
        v20 = &qword_1EA8389D8;
        v21 = &unk_182AE60E0;
        do
        {
          v22 = v43;
          sub_181AB5D28(v19, v43, v20);
          v23 = *(v22 + v42);
          v24 = *(v3 + 48);
          sub_181B81180(v22, v11);
          *&v11[v24] = v23;
          sub_181AB5D28(v11, v8, v20);

          v25 = NWEndpoint.nw.getter();
          if (v25)
          {
            v26 = v25;
            sub_181D8E388(v8, type metadata accessor for NWEndpoint);
            v27 = v44;
            v28 = v21;
            v29 = v20;
            v30 = v20;
            v31 = v3;
            v32 = v28;
            sub_181AB5D28(v11, v44, v30);
            v33 = v31;
            v34 = *(v27 + *(v31 + 48));
            if (v34)
            {
              v35 = *(v34 + 32);
              swift_unknownObjectRetain();
            }

            else
            {
              v35 = 0;
            }

            sub_181D8E388(v44, type metadata accessor for NWEndpoint);
            nw_endpoint_add_alternative(v40, v26, v35);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v20 = v29;
            v36 = v29;
            v21 = v32;
            sub_181F49A88(v11, v36);
            v3 = v33;
          }

          else
          {
            sub_181F49A88(v11, v20);
            sub_181D8E388(v8, type metadata accessor for NWEndpoint);
          }

          v19 += v41;
          --v16;
        }

        while (v16);

        v1 = v39;
        v15 = v40;
      }

      else
      {
      }
    }

    *v1 = v15;
    type metadata accessor for NWEndpoint();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
  }
}

uint64_t sub_181FA2B3C(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8389D8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v12 = a1;
  swift_storeEnumTagMultiPayload();
  if (a2)
  {
    type metadata accessor for NWProtocolDefinition();
    v13 = swift_allocObject();
    v13[4] = a2;
    swift_unknownObjectRetain();
    v14 = [swift_unknownObjectRetain() description];
    v15 = sub_182AD2F88();
    v17 = v16;

    v13[2] = v15;
    v13[3] = v17;
  }

  else
  {
    swift_unknownObjectRetain();
    v13 = 0;
  }

  v18 = *(v6 + 48);
  sub_181B81180(v12, v9);
  *&v9[v18] = v13;
  v19 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_181F5A434(0, v19[2] + 1, 1, v19);
    *a3 = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_181F5A434(v21 > 1, v22 + 1, 1, v19);
    *a3 = v19;
  }

  v19[2] = v22 + 1;
  sub_181B7D08C(v9, v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v22, &qword_1EA8389D8);
  return 1;
}

uint64_t sub_181FA2D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t (*NWEndpoint.alternatives.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NWEndpoint.alternatives.getter();
  return sub_181FA2E38;
}

uint64_t sub_181FA2E38(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return NWEndpoint.alternatives.setter(*a1);
  }

  NWEndpoint.alternatives.setter(v2);
}

uint64_t sub_181FA2EA8@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v4 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(a1, v6, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    alternate_port = nw_endpoint_get_alternate_port(*v6);
    result = swift_unknownObjectRelease();
  }

  else
  {
    result = sub_181D8E388(v6, type metadata accessor for NWEndpoint);
    alternate_port = 0;
  }

  *a2 = alternate_port;
  return result;
}

void *sub_181FA2F98(__int16 *a1, void *a2)
{
  v3 = *a1;
  result = NWEndpoint.nw.getter();
  if (result)
  {
    v5 = result;
    sub_181D8E388(a2, type metadata accessor for NWEndpoint);
    nw_endpoint_set_alternate_port(v5, v3);
    *a2 = v5;
    type metadata accessor for NWEndpoint();

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void (*NWEndpoint.alternatePort.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = type metadata accessor for NWEndpoint();
  *(a1 + 8) = v3;
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  v6 = v5;
  *(a1 + 16) = v5;
  sub_181D8E180(v1, v5, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    alternate_port = nw_endpoint_get_alternate_port(*v6);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_181D8E388(v6, type metadata accessor for NWEndpoint);
    alternate_port = 0;
  }

  *(a1 + 24) = alternate_port;
  return sub_181FA3138;
}

void sub_181FA3138(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = NWEndpoint.nw.getter();
  if (v4)
  {
    v5 = v4;
    sub_181D8E388(v3, type metadata accessor for NWEndpoint);
    nw_endpoint_set_alternate_port(v5, v2);
    *v3 = v5;
    swift_storeEnumTagMultiPayload();
  }

  v6 = *(a1 + 16);

  free(v6);
}

uint64_t NWEndpoint.agentIdentifier.getter@<X0>(uint64_t a1@<X8>)
{

  return sub_181FA3E58(nw_endpoint_get_agent_identifier, a1);
}

uint64_t NWEndpoint.agentIdentifier.setter(uint64_t a1)
{

  return sub_181FA3528(a1, nw_endpoint_set_agent_identifier);
}

void (*NWEndpoint.agentIdentifier.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  NWEndpoint.agentIdentifier.getter(v4);
  return sub_181FA3368;
}

uint64_t NWEndpoint.preferredAgentIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = NWEndpoint.nw.getter();
  if (!v2)
  {
    goto LABEL_4;
  }

  *uu = 0;
  v7 = 0;
  nw_endpoint_get_preferred_agent_identifier(v2, uu);
  if (uuid_is_null(uu))
  {
    swift_unknownObjectRelease();
LABEL_4:
    v3 = sub_182AD2258();
    return (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  }

  sub_182AD2228();
  swift_unknownObjectRelease();
  v5 = sub_182AD2258();
  return (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
}

uint64_t NWEndpoint.preferredAgentIdentifier.setter(uint64_t a1)
{

  return sub_181FA3528(a1, nw_endpoint_set_preferred_agent_identifier);
}

uint64_t sub_181FA3528(uint64_t a1, void (*a2)(void *, _BYTE *))
{
  v4 = v2;
  v35 = *MEMORY[0x1E69E9840];
  v6 = sub_182AD2258();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v34[-v11 - 8];
  v13 = NWEndpoint.nw.getter();
  if (!v13)
  {
    return sub_181F49A88(a1, &qword_1EA8394C0);
  }

  v14 = v13;
  sub_181AB5D28(a1, v12, &qword_1EA8394C0);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    LOBYTE(v15) = 0;
    LOBYTE(v16) = 0;
    LOBYTE(v17) = 0;
    LOBYTE(v18) = 0;
    LOBYTE(v19) = 0;
    LOBYTE(v20) = 0;
    LOBYTE(v21) = 0;
    LOBYTE(v22) = 0;
    LOBYTE(v23) = 0;
    LOBYTE(v24) = 0;
    LOBYTE(v25) = 0;
    LOBYTE(v26) = 0;
    LOBYTE(v27) = 0;
    LOBYTE(v28) = 0;
    LOBYTE(v29) = 0;
    LOBYTE(v30) = 0;
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    v30 = sub_182AD2238();
    v22 = v32;
    (*(v7 + 8))(v9, v6);
    v15 = HIBYTE(v22);
    v16 = HIWORD(v22);
    v17 = v22 >> 40;
    v18 = HIDWORD(v22);
    v19 = v22 >> 24;
    v20 = v22 >> 16;
    v21 = v22 >> 8;
    v23 = HIBYTE(v30);
    v24 = HIWORD(v30);
    v25 = v30 >> 40;
    v26 = HIDWORD(v30);
    v27 = v30 >> 24;
    v28 = v30 >> 16;
    v29 = v30 >> 8;
  }

  v34[0] = v30;
  v34[1] = v29;
  v34[2] = v28;
  v34[3] = v27;
  v34[4] = v26;
  v34[5] = v25;
  v34[6] = v24;
  v34[7] = v23;
  v34[8] = v22;
  v34[9] = v21;
  v34[10] = v20;
  v34[11] = v19;
  v34[12] = v18;
  v34[13] = v17;
  v34[14] = v16;
  v34[15] = v15;
  sub_181D8E388(v4, type metadata accessor for NWEndpoint);
  a2(v14, v34);
  sub_181F49A88(a1, &qword_1EA8394C0);
  *v4 = v14;
  type metadata accessor for NWEndpoint();
  return swift_storeEnumTagMultiPayload();
}

void (*NWEndpoint.preferredAgentIdentifier.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  NWEndpoint.preferredAgentIdentifier.getter(v4);
  return sub_181FA38F4;
}

uint64_t NWEndpoint.remoteInterfaceType.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v2, v6, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    remote_interface_type = nw_endpoint_get_remote_interface_type(*v6);
    result = swift_unknownObjectRelease();
    if (remote_interface_type > 2)
    {
      if (remote_interface_type != 3)
      {
        if (remote_interface_type == 4)
        {
          *a1 = 4;
          return result;
        }

        goto LABEL_11;
      }

      *a1 = 3;
    }

    else
    {
      if (remote_interface_type != 1)
      {
        if (remote_interface_type == 2)
        {
          *a1 = 2;
          return result;
        }

LABEL_11:
        *a1 = 0;
        return result;
      }

      *a1 = 1;
    }
  }

  else
  {
    *a1 = 5;
    return sub_181D8E388(v6, type metadata accessor for NWEndpoint);
  }

  return result;
}

void *sub_181FA3A68(unsigned __int8 *a1, void *a2)
{
  v3 = *a1;
  result = NWEndpoint.nw.getter();
  if (result)
  {
    if (v3 == 5)
    {

      return swift_unknownObjectRelease();
    }

    else
    {
      v5 = result;
      sub_181D8E388(a2, type metadata accessor for NWEndpoint);
      nw_endpoint_set_remote_interface_type(v5, v3);
      *a2 = v5;
      type metadata accessor for NWEndpoint();

      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

void *NWEndpoint.remoteInterfaceType.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  result = NWEndpoint.nw.getter();
  if (result)
  {
    if (v2 == 5)
    {

      return swift_unknownObjectRelease();
    }

    else
    {
      v4 = result;
      sub_181D8E388(v1, type metadata accessor for NWEndpoint);
      nw_endpoint_set_remote_interface_type(v4, v2);
      *v1 = v4;
      type metadata accessor for NWEndpoint();

      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

void (*NWEndpoint.remoteInterfaceType.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = type metadata accessor for NWEndpoint();
  *(a1 + 8) = v3;
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  v6 = v5;
  *(a1 + 16) = v5;
  sub_181D8E180(v1, v5, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    remote_interface_type = nw_endpoint_get_remote_interface_type(*v6);
    swift_unknownObjectRelease();
    if (remote_interface_type > 2)
    {
      if (remote_interface_type == 3)
      {
        v8 = 3;
        goto LABEL_16;
      }

      if (remote_interface_type == 4)
      {
        v8 = 4;
        goto LABEL_16;
      }
    }

    else
    {
      if (remote_interface_type == 1)
      {
        v8 = 1;
        goto LABEL_16;
      }

      if (remote_interface_type == 2)
      {
        v8 = 2;
LABEL_16:
        *(a1 + 24) = v8;
        return sub_181FA3D3C;
      }
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *(a1 + 24) = 5;
    sub_181D8E388(v6, type metadata accessor for NWEndpoint);
  }

  return sub_181FA3D3C;
}

void sub_181FA3D3C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = NWEndpoint.nw.getter();
  if (v4)
  {
    if (v2 == 5)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = v4;
      sub_181D8E388(v3, type metadata accessor for NWEndpoint);
      nw_endpoint_set_remote_interface_type(v5, v2);
      *v3 = v5;
      swift_storeEnumTagMultiPayload();
    }
  }

  v6 = *(a1 + 16);

  free(v6);
}

uint64_t NWEndpoint.serviceIdentifier.getter@<X0>(uint64_t a1@<X8>)
{

  return sub_181FA3E58(nw_endpoint_get_service_identifier, a1);
}

uint64_t sub_181FA3E58@<X0>(void (*a1)(uint64_t, unsigned __int8 *)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v17 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &uu[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_181D8E180(v4, v8, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v9 = *v8;
    *uu = 0;
    v16 = 0;
    a1(v9, uu);
    if (uuid_is_null(uu))
    {
      swift_unknownObjectRelease();
      v10 = sub_182AD2258();
      return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
    }

    else
    {
      sub_182AD2228();
      swift_unknownObjectRelease();
      v13 = sub_182AD2258();
      return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
    }
  }

  else
  {
    v12 = sub_182AD2258();
    (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
    return sub_181D8E388(v8, type metadata accessor for NWEndpoint);
  }
}

uint64_t NWEndpoint.serviceIdentifier.setter(uint64_t a1)
{

  return sub_181FA3528(a1, nw_endpoint_set_service_identifier);
}

void (*NWEndpoint.serviceIdentifier.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  NWEndpoint.serviceIdentifier.getter(v4);
  return sub_181FA41A8;
}

uint64_t NWEndpoint.cnames.getter()
{
  v1 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v0, v3, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_181D8E388(v3, type metadata accessor for NWEndpoint);
    return 0;
  }

  v4 = *v3;
  v12 = MEMORY[0x1E69E7CC0];
  v5 = swift_allocObject();
  *(v5 + 16) = &v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_181F4D2B4;
  *(v6 + 24) = v5;
  aBlock[4] = sub_181B77468;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181B7749C;
  aBlock[3] = &block_descriptor_26;
  v7 = _Block_copy(aBlock);

  nw_endpoint_enumerate_cnames(v4, v7);
  swift_unknownObjectRelease();
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if ((v4 & 1) == 0)
  {
    v9 = v12;

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t NWEndpoint.ethernetAddress.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v2, v6, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    ethernet_address = nw_endpoint_get_ethernet_address(*v6);
    if (ethernet_address)
    {
      v8 = *ethernet_address;
      v9 = *(ethernet_address + 4);
      v10 = *(ethernet_address + 5);
      result = swift_unknownObjectRelease();
      *a1 = v8;
      *(a1 + 4) = ((v10 << 40) | (v9 << 32)) >> 32;
      *(a1 + 6) = 0;
    }

    else
    {
      result = swift_unknownObjectRelease();
      *(a1 + 4) = 0;
      *a1 = 0;
      *(a1 + 6) = 1;
    }
  }

  else
  {
    *(a1 + 4) = 0;
    *a1 = 0;
    *(a1 + 6) = 1;
    return sub_181D8E388(v6, type metadata accessor for NWEndpoint);
  }

  return result;
}

uint64_t sub_181FA4534(uint64_t (*a1)(void))
{
  v3 = v1;
  v4 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v3, v6, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    if (a1(*v6))
    {
      v7 = sub_182AD3158();
      swift_unknownObjectRelease();
      return v7;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_181D8E388(v6, type metadata accessor for NWEndpoint);
  }

  return 0;
}

uint64_t sub_181FA4678(uint64_t (*a1)(void))
{
  v3 = v1;
  v4 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v3, v6, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v7 = a1(*v6);
    swift_unknownObjectRelease();
    return v7;
  }

  else
  {
    sub_181D8E388(v6, type metadata accessor for NWEndpoint);
    return 0;
  }
}

uint64_t NWEndpoint.publicKeys.getter()
{
  v1 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v0, v3, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v4 = nw_endpoint_copy_public_keys(*v3);
    if (v4)
    {
      v5 = v4;
      v6 = sub_182AD33C8();

      swift_unknownObjectRelease();
      return v6;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_181D8E388(v3, type metadata accessor for NWEndpoint);
  }

  return 0;
}

void *sub_181FA4890(void **a1, void *a2)
{
  v3 = *a1;
  result = NWEndpoint.nw.getter();
  if (result)
  {
    v5 = result;
    sub_181D8E388(a2, type metadata accessor for NWEndpoint);
    if (v3)
    {
      v3 = sub_182AD33B8();
    }

    nw_endpoint_set_public_keys(v5, v3);

    *a2 = v5;
    type metadata accessor for NWEndpoint();

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t NWEndpoint.publicKeys.setter(uint64_t a1)
{
  v3 = NWEndpoint.nw.getter();
  if (v3)
  {
    v4 = v3;
    sub_181D8E388(v1, type metadata accessor for NWEndpoint);
    if (a1)
    {
      v5 = sub_182AD33B8();
    }

    else
    {
      v5 = 0;
    }

    nw_endpoint_set_public_keys(v4, v5);

    *v1 = v4;
    type metadata accessor for NWEndpoint();

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
  }
}

void (*NWEndpoint.publicKeys.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = type metadata accessor for NWEndpoint();
  a1[2] = v3;
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  v6 = v5;
  a1[3] = v5;
  sub_181D8E180(v1, v5, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_181D8E388(v6, type metadata accessor for NWEndpoint);
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v7 = nw_endpoint_copy_public_keys(*v6);
  if (!v7)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v8 = v7;
  v9 = sub_182AD33C8();
  swift_unknownObjectRelease();

LABEL_10:
  *a1 = v9;
  return sub_181FA4B44;
}

void sub_181FA4B44(uint64_t *a1, char a2)
{
  v4 = *a1;
  v3 = a1[1];
  if (a2)
  {

    v5 = NWEndpoint.nw.getter();
    if (v5)
    {
      v6 = v5;
      sub_181D8E388(v3, type metadata accessor for NWEndpoint);
      if (v4)
      {
        v7 = sub_182AD33B8();
      }

      else
      {
        v7 = 0;
      }

      nw_endpoint_set_public_keys(v6, v7);

      *v3 = v6;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
    }

    v11 = a1[3];
  }

  else
  {
    v8 = NWEndpoint.nw.getter();
    if (v8)
    {
      v9 = v8;
      sub_181D8E388(v3, type metadata accessor for NWEndpoint);
      if (v4)
      {
        v10 = sub_182AD33B8();
      }

      else
      {
        v10 = 0;
      }

      nw_endpoint_set_public_keys(v9, v10);

      *v3 = v9;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
    }

    v11 = a1[3];
  }

  free(v11);
}

uint64_t sub_181FA4CCC(void (*a1)(NSObject *))
{
  v3 = v1;
  v4 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v3, v6, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v7 = *v6;
    if (nw_endpoint_get_type(v7) == (nw_endpoint_type_url|nw_endpoint_type_host))
    {
      a1(v7);
      v8 = sub_182AD3158();
      swift_unknownObjectRelease();
      return v8;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_181D8E388(v6, type metadata accessor for NWEndpoint);
  }

  return 0;
}

void (*NWEndpoint.deviceName.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 16) = v2;
  v7 = type metadata accessor for NWEndpoint();
  v6[3] = v7;
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v6[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[5] = v9;
  sub_181D8E180(v2, v9, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_181D8E388(v10, type metadata accessor for NWEndpoint);
LABEL_13:
    v12 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v11 = *v10;
  if (nw_endpoint_get_type(*v10) != (nw_endpoint_type_url|nw_endpoint_type_host) || !nw_endpoint_get_device_name(v11))
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v12 = sub_182AD3158();
  v14 = v13;
  swift_unknownObjectRelease();
LABEL_14:
  *v6 = v12;
  v6[1] = v14;
  return sub_181FA4F9C;
}

uint64_t sub_181FA4FE0(uint64_t (*a1)(NSObject *))
{
  v3 = v1;
  v4 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v3, v6, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v7 = *v6;
    if (nw_endpoint_get_type(v7) == (nw_endpoint_type_url|nw_endpoint_type_host) && a1(v7))
    {
      v8 = sub_182AD3158();
      swift_unknownObjectRelease();
      return v8;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_181D8E388(v6, type metadata accessor for NWEndpoint);
  }

  return 0;
}

uint64_t sub_181FA511C(uint64_t a1, uint64_t a2, void (*a3)(NSObject *, uint64_t))
{
  v5 = v3;
  v7 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v5, v9, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v10 = *v9;
    if (nw_endpoint_get_type(v10) == (nw_endpoint_type_url|nw_endpoint_type_host))
    {
      if (a2)
      {
        v11 = sub_182AD3048();

        v12 = v11 + 32;
      }

      else
      {
        v12 = 0;
      }

      a3(v10, v12);
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {

    return sub_181D8E388(v9, type metadata accessor for NWEndpoint);
  }
}

void (*NWEndpoint.deviceModel.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 16) = v2;
  v7 = type metadata accessor for NWEndpoint();
  v6[3] = v7;
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v6[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[5] = v9;
  sub_181D8E180(v2, v9, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_181D8E388(v10, type metadata accessor for NWEndpoint);
LABEL_13:
    v12 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v11 = *v10;
  if (nw_endpoint_get_type(*v10) != (nw_endpoint_type_url|nw_endpoint_type_host) || !nw_endpoint_get_device_model(v11))
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v12 = sub_182AD3158();
  v14 = v13;
  swift_unknownObjectRelease();
LABEL_14:
  *v6 = v12;
  v6[1] = v14;
  return sub_181FA53F4;
}

uint64_t NWEndpoint.deviceColor.getter()
{
  v1 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v0, v3, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v4 = *v3;
    if (nw_endpoint_get_type(v4) == (nw_endpoint_type_url|nw_endpoint_type_host))
    {
      device_color = nw_endpoint_get_device_color(v4);
      swift_unknownObjectRelease();
      return device_color;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_181D8E388(v3, type metadata accessor for NWEndpoint);
  }

  return 0;
}

uint64_t sub_181FA5524@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(a1, v6, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    result = sub_181D8E388(v6, type metadata accessor for NWEndpoint);
LABEL_6:
    device_color = 0;
    goto LABEL_7;
  }

  v7 = *v6;
  if (nw_endpoint_get_type(v7) != (nw_endpoint_type_url|nw_endpoint_type_host))
  {
    result = swift_unknownObjectRelease();
    goto LABEL_6;
  }

  device_color = nw_endpoint_get_device_color(v7);
  result = swift_unknownObjectRelease();
LABEL_7:
  *a2 = device_color;
  return result;
}

uint64_t sub_181FA5630(unsigned int *a1, uint64_t a2)
{
  v4 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  sub_181D8E180(a2, v6, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    return sub_181D8E388(v6, type metadata accessor for NWEndpoint);
  }

  v8 = *v6;
  if (nw_endpoint_get_type(v8) == (nw_endpoint_type_url|nw_endpoint_type_host))
  {
    nw_endpoint_set_device_color(v8, v7);
  }

  return swift_unknownObjectRelease();
}

uint64_t NWEndpoint.deviceColor.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v2, v6, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    return sub_181D8E388(v6, type metadata accessor for NWEndpoint);
  }

  v7 = *v6;
  if (nw_endpoint_get_type(v7) == (nw_endpoint_type_url|nw_endpoint_type_host))
  {
    nw_endpoint_set_device_color(v7, a1);
  }

  return swift_unknownObjectRelease();
}

void (*NWEndpoint.deviceColor.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = type metadata accessor for NWEndpoint();
  v6[1] = v7;
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(v8);
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[4] = v9;
  sub_181D8E180(v2, v9, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_181D8E388(v10, type metadata accessor for NWEndpoint);
LABEL_12:
    device_color = 0;
    goto LABEL_13;
  }

  v11 = *v10;
  if (nw_endpoint_get_type(*v10) != (nw_endpoint_type_url|nw_endpoint_type_host))
  {
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  device_color = nw_endpoint_get_device_color(v11);
  swift_unknownObjectRelease();
LABEL_13:
  *(v6 + 10) = device_color;
  return sub_181FA59B0;
}

void sub_181FA59B0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = **a1;
  if (a2)
  {
    sub_181D8E180(v4, v2[2], type metadata accessor for NWEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = v2[2];
    if (EnumCaseMultiPayload != 4)
    {
LABEL_3:
      sub_181D8E388(v6, type metadata accessor for NWEndpoint);
      goto LABEL_8;
    }
  }

  else
  {
    sub_181D8E180(v4, v2[3], type metadata accessor for NWEndpoint);
    v7 = swift_getEnumCaseMultiPayload();
    v6 = v2[3];
    if (v7 != 4)
    {
      goto LABEL_3;
    }
  }

  v8 = *v6;
  if (nw_endpoint_get_type(*v6) == (nw_endpoint_type_url|nw_endpoint_type_host))
  {
    nw_endpoint_set_device_color(v8, v3);
  }

  swift_unknownObjectRelease();
LABEL_8:
  v9 = v2[3];
  v10 = v2[2];
  free(v2[4]);
  free(v9);
  free(v10);

  free(v2);
}

uint64_t NWEndpoint.route.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v2, v6, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    *a1 = 3;
    return sub_181D8E388(v6, type metadata accessor for NWEndpoint);
  }

  v7 = *v6;
  if (nw_endpoint_get_type(v7) == (nw_endpoint_type_url|nw_endpoint_type_host))
  {
    advertised_route = nw_endpoint_get_advertised_route(v7);
    result = swift_unknownObjectRelease();
    switch(advertised_route)
    {
      case 3:
        v10 = 2;
        goto LABEL_10;
      case 2:
        v10 = 1;
        goto LABEL_10;
      case 1:
        *a1 = 0;
        return result;
    }
  }

  else
  {
    result = swift_unknownObjectRelease();
  }

  v10 = 3;
LABEL_10:
  *a1 = v10;
  return result;
}

void (*NWEndpoint.deviceID.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 16) = v2;
  v7 = type metadata accessor for NWEndpoint();
  v6[3] = v7;
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v6[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[5] = v9;
  sub_181D8E180(v2, v9, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_181D8E388(v10, type metadata accessor for NWEndpoint);
LABEL_13:
    v12 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v11 = *v10;
  if (nw_endpoint_get_type(*v10) != (nw_endpoint_type_url|nw_endpoint_type_host) || !nw_endpoint_get_device_id(v11))
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v12 = sub_182AD3158();
  v14 = v13;
  swift_unknownObjectRelease();
LABEL_14:
  *v6 = v12;
  v6[1] = v14;
  return sub_181FA5DC4;
}

void (*NWEndpoint.contactID.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 16) = v2;
  v7 = type metadata accessor for NWEndpoint();
  v6[3] = v7;
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v6[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[5] = v9;
  sub_181D8E180(v2, v9, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_181D8E388(v10, type metadata accessor for NWEndpoint);
LABEL_13:
    v12 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v11 = *v10;
  if (nw_endpoint_get_type(*v10) != (nw_endpoint_type_url|nw_endpoint_type_host) || !nw_endpoint_get_contact_id(v11))
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v12 = sub_182AD3158();
  v14 = v13;
  swift_unknownObjectRelease();
LABEL_14:
  *v6 = v12;
  v6[1] = v14;
  return sub_181FA5FA0;
}

void sub_181FA5FCC(uint64_t **a1, char a2, void (*a3)(NSObject *, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v6 = **a1;
  v5 = (*a1)[1];
  if (a2)
  {
    v9 = v4[4];
    v8 = v4[5];

    a4(v6, v5);
  }

  else
  {
    sub_181D8E180((*a1)[2], v4[4], type metadata accessor for NWEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v12 = v4[4];
    if (EnumCaseMultiPayload == 4)
    {
      v13 = *v12;
      if (nw_endpoint_get_type(v13) == (nw_endpoint_type_url|nw_endpoint_type_host))
      {
        if (v5)
        {
          v14 = sub_182AD3048();

          v15 = v14 + 32;
        }

        else
        {
          v15 = 0;
        }

        a3(v13, v15);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {

      sub_181D8E388(v12, type metadata accessor for NWEndpoint);
    }

    v9 = v4[4];
    v8 = v4[5];
  }

  free(v8);
  free(v9);

  free(v4);
}

uint64_t NWEndpoint.applicationService.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v2, v6, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v7 = *v6;
    if (a2)
    {
      if (nw_endpoint_get_type(v7) == (nw_endpoint_type_url|nw_endpoint_type_host))
      {
        v8 = sub_182AD3048();

        nw_endpoint_set_application_service_name(v7, v8 + 32);
      }

      else
      {
      }
    }

    return swift_unknownObjectRelease();
  }

  else
  {

    return sub_181D8E388(v6, type metadata accessor for NWEndpoint);
  }
}

void (*NWEndpoint.applicationService.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 16) = v2;
  v7 = type metadata accessor for NWEndpoint();
  v6[3] = v7;
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v6[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[5] = v9;
  sub_181D8E180(v2, v9, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_181D8E388(v10, type metadata accessor for NWEndpoint);
LABEL_12:
    v12 = 0;
    v14 = 0;
    goto LABEL_13;
  }

  v11 = *v10;
  if (nw_endpoint_get_type(*v10) != (nw_endpoint_type_url|nw_endpoint_type_host))
  {
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  nw_endpoint_get_application_service_name(v11);
  v12 = sub_182AD3158();
  v14 = v13;
  swift_unknownObjectRelease();
LABEL_13:
  *v6 = v12;
  v6[1] = v14;
  return sub_181FA6410;
}

void sub_181FA6410(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    v6 = v2[4];
    v5 = v2[5];

    NWEndpoint.applicationService.setter(v4, v3);
  }

  else
  {
    sub_181D8E180((*a1)[2], v2[4], type metadata accessor for NWEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v8 = v2[4];
    if (EnumCaseMultiPayload == 4)
    {
      v9 = *v8;
      if (v3)
      {
        if (nw_endpoint_get_type(v9) == (nw_endpoint_type_url|nw_endpoint_type_host))
        {
          v10 = sub_182AD3048();

          nw_endpoint_set_application_service_name(v9, v10 + 32);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {

      sub_181D8E388(v8, type metadata accessor for NWEndpoint);
    }

    v6 = v2[4];
    v5 = v2[5];
  }

  free(v5);
  free(v6);

  free(v2);
}

uint64_t NWEndpoint.serviceID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v2, v6, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v7 = *v6;
    if (nw_endpoint_get_type(v7) == (nw_endpoint_type_url|nw_endpoint_type_host))
    {
      v13[0] = 0;
      v13[1] = 0;
      nw_endpoint_get_service_identifier(v7, v13);
      sub_182AD2228();
      swift_unknownObjectRelease();
      v8 = sub_182AD2258();
      return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
    }

    else
    {
      v11 = sub_182AD2258();
      (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v10 = sub_182AD2258();
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
    return sub_181D8E388(v6, type metadata accessor for NWEndpoint);
  }
}

uint64_t sub_181FA6798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  sub_181AB5D28(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t NWEndpoint.serviceID.setter(uint64_t a1)
{
  v2 = v1;
  v34 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_182AD2258();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v2, v13, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v14 = *v13;
    if (nw_endpoint_get_type(*v13) == (nw_endpoint_type_url|nw_endpoint_type_host))
    {
      sub_181AB5D28(a1, v6, &qword_1EA8394C0);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_181F49A88(a1, &qword_1EA8394C0);
        swift_unknownObjectRelease();
        return sub_181F49A88(v6, &qword_1EA8394C0);
      }

      else
      {
        (*(v8 + 32))(v10, v6, v7);
        v25 = sub_182AD2238();
        v26 = v16;
        v27 = v17;
        v28 = v18;
        v29 = v19;
        v30 = v20;
        v31 = v21;
        v32 = v22;
        v33 = v23;
        nw_endpoint_set_service_identifier(v14, &v25);
        swift_unknownObjectRelease();
        sub_181F49A88(a1, &qword_1EA8394C0);
        return (*(v8 + 8))(v10, v7);
      }
    }

    else
    {
      sub_181F49A88(a1, &qword_1EA8394C0);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_181F49A88(a1, &qword_1EA8394C0);
    return sub_181D8E388(v13, type metadata accessor for NWEndpoint);
  }
}

void (*NWEndpoint.serviceID.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  NWEndpoint.serviceID.getter(v4);
  return sub_181FA6C84;
}

void sub_181FA6CAC(uint64_t a1, char a2, void (*a3)(void *), uint64_t *a4)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2)
  {
    sub_181AB5D28(v6, v5, a4);
    a3(v5);
    sub_181F49A88(v6, a4);
  }

  else
  {
    a3(v6);
  }

  free(v6);

  free(v5);
}

uint64_t NWEndpoint.pairingData.setter(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v3, v8, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() < 4)
  {
    sub_181D9D680(a1, a2);
    return sub_181D8E388(v8, type metadata accessor for NWEndpoint);
  }

  v10 = *v8;
  if (a2 >> 60 != 15)
  {
    sub_181F49B58(a1, a2);
    sub_181FACC3C(a1, a2);
    if (!v11)
    {
      v18 = a1;
      v19 = a2;
      sub_181F49B58(a1, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C8);
      if (swift_dynamicCast())
      {
        sub_181F3CF20(v16, v20);
        __swift_project_boxed_opaque_existential_1(v20, v21);
        if (sub_182AD3F18())
        {
          sub_181D9D680(a1, a2);
          __swift_project_boxed_opaque_existential_1(v20, v21);
          sub_182AD3F08();
          __swift_destroy_boxed_opaque_existential_1(v20);
LABEL_12:
          dictionary = nw_txt_record_create_dictionary();
          v13 = sub_182AD3048();
          v14 = strlen((v13 + 32));

          v15 = sub_182AD3048();

          nw_txt_record_set_key(dictionary, "pairing-data", (v15 + 32), v14);

          nw_endpoint_set_txt_record(v10, dictionary);
          swift_unknownObjectRelease();
          sub_181D9D680(a1, a2);
          return swift_unknownObjectRelease();
        }

        __swift_destroy_boxed_opaque_existential_1(v20);
      }

      else
      {
        v17 = 0;
        memset(v16, 0, sizeof(v16));
        sub_181F49A88(v16, &unk_1EA8394D0);
      }

      sub_181FACB3C(a1, a2);
    }

    sub_181D9D680(a1, a2);
    goto LABEL_12;
  }

  return swift_unknownObjectRelease();
}

uint64_t (*NWEndpoint.pairingData.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  *a1 = xmmword_182AE8230;
  return sub_181FA7068;
}