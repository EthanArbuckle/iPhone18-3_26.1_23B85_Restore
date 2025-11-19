uint64_t sub_19743C900()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm_7(v0 + 3);
  if (v0[8] != 1)
  {

    v2 = v0[9];

    v3 = v0[10];

    v4 = v0[11];
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_19743C9B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v166 = a5;
  v161 = a4;
  v162 = a3;
  v158 = sub_197521F5C();
  v157 = *(v158 - 8);
  v13 = *(v157 + 64);
  v15 = MEMORY[0x1EEE9AC00](v158, v14);
  v159 = &v155 - v16;
  v17 = a7;
  v160 = *(a7 - 8);
  v18 = *(v160 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15, v19);
  v22 = &v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v155 - v24;
  *&v167 = a2;
  v26 = sub_1973F8364(a2);
  v28 = v27;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v163 = a8;
  v30 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Schema.Entity();
  v32 = sub_1973FDF38(AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_beginAccess();
  v164 = v32;
  v33 = *(v32 + 96);
  v34 = *(v33 + 16);
  v165 = v28;
  if (!v34 || (v35 = sub_1973F4028(v26, v28), (v36 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_14;
  }

  v37 = *(*(v33 + 56) + 8 * v35);
  swift_endAccess();
  if ((*(v37 + 120) & 0x90) == 0)
  {
LABEL_14:
    v42 = swift_conformsToProtocol2();
    if (v42 && a1)
    {
      v43 = v42;

      sub_19749244C(a1, v167, v162, v161, v30, a1, v163, &v168, v43);
      goto LABEL_17;
    }

    if (swift_conformsToProtocol2() && a1)
    {
      *&v172[0] = a1;
      v46 = a1;
      do
      {
        sub_1973F732C(v46, v172);
        v46 = *&v172[0];
        if (swift_conformsToProtocol2())
        {
          v47 = v46 == 0;
        }

        else
        {
          v47 = 1;
        }
      }

      while (!v47);
      v48 = swift_conformsToProtocol2();
      if (v48)
      {
        v49 = v46 == 0;
      }

      else
      {
        v49 = 1;
      }

      if (!v49)
      {
        v68 = v48;

        sub_197447C98(v46, v167, v162, v161, v30, v46, v163, &v168, v68);
LABEL_17:
        v44 = v169;
        if (v169 == 255)
        {

          memset(v172, 0, 48);
        }

        else
        {
          v45 = v168;
          *(&v172[1] + 1) = &type metadata for PersistentIdentifier;
          *&v172[2] = sub_197412644();
          *(&v172[2] + 1) = sub_197411E68();

          BYTE8(v172[0]) = v44;
          *&v172[0] = v45;
        }

        goto LABEL_88;
      }

      if (swift_conformsToProtocol2() && v46)
      {
        sub_1975214DC();
        if ((v50 & 0x8000000000000000) == 0)
        {
          if (v50)
          {
            v51 = sub_1975214DC();
            if (v52 >= 1)
            {
              v53 = *v51;
              v54 = swift_conformsToProtocol2();
              if (v54 && v53)
              {
                v55 = v54;

                v56 = sub_197447300(v53, v167, v162, v30, v17, v53, v163, v55);
                if (v56)
                {
                  *(&v172[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
                  *&v172[2] = sub_197412710(&qword_1ED7C77C0, sub_197412644);
                  *(&v172[2] + 1) = sub_197412710(&qword_1ED7C77C8, sub_197411E68);
                }

                else
                {

                  memset(v172 + 8, 0, 40);
                }

                v148 = v166;
                *&v172[0] = v56;
                swift_beginAccess();
                v146 = v148;
                return sub_19743E090(v172, v146);
              }

              v123 = dynamic_cast_existential_2_conditional(v46);
              if (!v123)
              {
                *&v172[0] = 0;
                *(&v172[0] + 1) = 0xE000000000000000;
                sub_1975221EC();

                *&v172[0] = 0xD00000000000001ALL;
                *(&v172[0] + 1) = 0x8000000197524F40;
                v154 = sub_197522B8C();
                MEMORY[0x19A8DFF80](v154);

                goto LABEL_107;
              }

              v126 = v123;
              v127 = v124;
              v128 = v125;

              v129 = sub_197521F5C();
              v130 = *(v129 - 8);
              v131 = *(v130 + 64);
              MEMORY[0x1EEE9AC00](v129, v132);
              v134 = &v155 - v133;
              sub_19743EA84(v161, v167, v126, &v155 - v133);
              v135 = *(v126 - 8);
              if ((*(v135 + 48))(v134, 1, v126) == 1)
              {

                (*(v130 + 8))(v134, v129);
                goto LABEL_75;
              }

              *&v170 = v126;
              *(&v170 + 1) = v127;
              v171 = v128;
              boxed_opaque_existential_2Tm_0 = __swift_allocate_boxed_opaque_existential_2Tm_0(&v168);
              (*(v135 + 32))(boxed_opaque_existential_2Tm_0, v134, v126);
              goto LABEL_78;
            }

LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

          v79 = dynamic_cast_existential_2_conditional(v46);
          if (v79)
          {
            goto LABEL_71;
          }

LABEL_100:
          *&v172[0] = 0;
          *(&v172[0] + 1) = 0xE000000000000000;
          sub_1975221EC();

          *&v172[0] = 0xD00000000000001DLL;
          *(&v172[0] + 1) = 0x8000000197524E70;
          v150 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v150);

          goto LABEL_107;
        }

LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v79 = dynamic_cast_existential_2_conditional(v46);
      if (v79)
      {
LABEL_71:
        v82 = v79;
        v83 = v80;
        v84 = v81;

        v85 = sub_197521F5C();
        v86 = *(v85 - 8);
        v114 = *(v86 + 64);
        MEMORY[0x1EEE9AC00](v85, v115);
        v90 = &v155 - v116;
        sub_19743EA84(v161, v167, v82, &v155 - v116);
        goto LABEL_72;
      }

LABEL_51:
      *&v172[0] = 0;
      *(&v172[0] + 1) = 0xE000000000000000;
      sub_1975221EC();

      *&v172[0] = 0xD000000000000029;
      *(&v172[0] + 1) = 0x8000000197524E40;
      v67 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v67);

LABEL_107:
      result = sub_1975223EC();
      __break(1u);
      return result;
    }

    v57 = swift_conformsToProtocol2();
    if (v57 && a1)
    {
      v58 = v57;
      sub_1975214DC();
      if (v59 < 0)
      {
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      if (v59)
      {
        v60 = sub_1975214DC();
        if (v61 >= 1)
        {
          v62 = *v60;
          if (swift_conformsToProtocol2() && v62)
          {

            v63 = sub_19749295C(a1, v167, v162, v161, v30, v17, a1, v163, v58);
            *(&v172[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
            *&v172[2] = sub_197412710(&qword_1ED7C77C0, sub_197412644);
            *(&v172[2] + 1) = sub_197412710(&qword_1ED7C77C8, sub_197411E68);

            *&v172[0] = v63;
LABEL_88:
            v145 = v166;
            swift_beginAccess();
            v146 = v145;
            return sub_19743E090(v172, v146);
          }

          if (!dynamic_cast_existential_2_conditional(v62))
          {
            *&v172[0] = 0;
            *(&v172[0] + 1) = 0xE000000000000000;
            sub_1975221EC();
            MEMORY[0x19A8DFF80](0xD000000000000039, 0x8000000197524E90);
            v151 = sub_197522B8C();
            MEMORY[0x19A8DFF80](v151);

            goto LABEL_107;
          }

          v100 = dynamic_cast_existential_2_conditional(a1);
          if (!v100)
          {
            *&v172[0] = 0;
            *(&v172[0] + 1) = 0xE000000000000000;
            sub_1975221EC();
            MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197524ED0);
            v152 = sub_197522B8C();
            MEMORY[0x19A8DFF80](v152);

            MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
            MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197524EF0);
            MEMORY[0x19A8DFF80](0xD000000000000025, 0x8000000197524F10);
            v153 = sub_197522B8C();
            MEMORY[0x19A8DFF80](v153);

            goto LABEL_107;
          }

          v103 = v100;
          v104 = v101;
          v105 = v102;

          v106 = sub_197521F5C();
          v107 = *(v106 - 8);
          v108 = *(v107 + 64);
          MEMORY[0x1EEE9AC00](v106, v109);
          v111 = &v155 - v110;
          sub_19743EC54(v167, v161, v30, v103, v163, &v155 - v110, v104);
          v112 = *(v103 - 8);
          if ((*(v112 + 48))(v111, 1, v103) == 1)
          {

            (*(v107 + 8))(v111, v106);
LABEL_75:
            memset(v172, 0, 48);
            goto LABEL_88;
          }

          *&v170 = v103;
          *(&v170 + 1) = v104;
          v171 = v105;
          v136 = __swift_allocate_boxed_opaque_existential_2Tm_0(&v168);
          (*(v112 + 32))(v136, v111, v103);
LABEL_78:
          v119 = v171;
          v167 = v170;
          v120 = v170;
          v121 = __swift_project_boxed_opaque_existential_1Tm_0(&v168, v170);
          *(&v172[1] + 8) = v167;
          *(&v172[2] + 1) = v119;
          v122 = __swift_allocate_boxed_opaque_existential_2Tm_0(v172);
          (*(*(v120 - 8) + 16))(v122, v121, v120);

          __swift_destroy_boxed_opaque_existential_1Tm_1(&v168);
          goto LABEL_88;
        }

        goto LABEL_94;
      }

      v64 = dynamic_cast_existential_2_conditional(a1);
      if (!v64)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v64 = dynamic_cast_existential_2_conditional(a1);
      if (!v64)
      {
        goto LABEL_51;
      }
    }

    v82 = v64;
    v83 = v65;
    v84 = v66;

    v85 = sub_197521F5C();
    v86 = *(v85 - 8);
    v87 = *(v86 + 64);
    MEMORY[0x1EEE9AC00](v85, v88);
    v90 = &v155 - v89;
    sub_19743EC54(v167, v161, v30, v82, v163, &v155 - v89, v83);
LABEL_72:
    v117 = *(v82 - 8);
    if ((*(v117 + 48))(v90, 1, v82) == 1)
    {

      (*(v86 + 8))(v90, v85);
      goto LABEL_75;
    }

    *&v170 = v82;
    *(&v170 + 1) = v83;
    v171 = v84;
    v118 = __swift_allocate_boxed_opaque_existential_2Tm_0(&v168);
    (*(v117 + 32))(v118, v90, v82);
    goto LABEL_78;
  }

  *&v172[0] = a1;
  v38 = v17;
  MetatypeMetadata = swift_getMetatypeMetadata();

  if ((sub_1974482A8(v172, MetatypeMetadata) & 1) == 0)
  {
    v156 = v26;
    sub_197522B2C();
    v69 = v167;
    v70 = swift_dynamicCastClass();
    if (v70)
    {
      v71 = v70;
      v72 = v163;
      v73 = *(v163 + 104);

      v73(v71, v38, v30, v72);
      type metadata accessor for Schema.Attribute();
      *(&v172[1] + 1) = v38;
      v74 = __swift_allocate_boxed_opaque_existential_2Tm_0(v172);
      v75 = v160;
      (*(v160 + 16))(v74, v25, v38);
      v76 = sub_1974480F8(v172, v37);
      v78 = v77;
      __swift_destroy_boxed_opaque_existential_1Tm_1(v172);
      if (v78 >> 60 != 15)
      {

        *(&v172[1] + 1) = MEMORY[0x1E6969080];
        *&v172[2] = sub_1974122A4();
        *(&v172[2] + 1) = sub_1974122F8();

        *&v172[0] = v76;
        *(&v172[0] + 1) = v78;
        (*(v75 + 8))(v25, v38);
        goto LABEL_88;
      }

      goto LABEL_99;
    }

    v91 = sub_1973F8364(v69);
    v93 = v161;
    v94 = *(v161 + 16);
    if (*(v94 + 16))
    {
      v95 = sub_1973F4028(v91, v92);
      v97 = v96;

      if (v97)
      {
        v98 = *(*(v94 + 56) + 8 * v95);
        swift_beginAccess();
        if ((v98 & 0x8000000000000000) == 0)
        {
          v99 = *(v93 + 32);
          if (v98 < *(v99 + 16))
          {
            sub_1973FE14C(v99 + 32 * v98 + 32, v172, &qword_1EAF2AF20, &unk_19752F320);
LABEL_85:
            v137 = v160;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
            v138 = v159;
            v139 = swift_dynamicCast();
            v140 = *(v137 + 56);
            if ((v139 & 1) == 0)
            {
              v140(v138, 1, 1, v38);
              (*(v157 + 8))(v138, v158);
              goto LABEL_107;
            }

            v140(v138, 0, 1, v38);
            (*(v137 + 32))(v22, v138, v38);
            type metadata accessor for Schema.Attribute();
            *(&v172[1] + 1) = v38;
            v141 = __swift_allocate_boxed_opaque_existential_2Tm_0(v172);
            (*(v137 + 16))(v141, v22, v38);
            v142 = sub_1974480F8(v172, v37);
            v144 = v143;
            __swift_destroy_boxed_opaque_existential_1Tm_1(v172);
            if (v144 >> 60 != 15)
            {

              *(&v172[1] + 1) = MEMORY[0x1E6969080];
              *&v172[2] = sub_1974122A4();
              *(&v172[2] + 1) = sub_1974122F8();

              *&v172[0] = v142;
              *(&v172[0] + 1) = v144;
              (*(v137 + 8))(v22, v38);
              goto LABEL_88;
            }

            goto LABEL_99;
          }

LABEL_98:
          __break(1u);
LABEL_99:
          *&v172[0] = 0;
          *(&v172[0] + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD00000000000001ELL, 0x80000001975259F0);
          v149 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v149);

          MEMORY[0x19A8DFF80](46, 0xE100000000000000);
          MEMORY[0x19A8DFF80](v156, v165);
          MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
          MEMORY[0x19A8DFF80](1635017028, 0xE400000000000000);
          MEMORY[0x19A8DFF80](0xD000000000000039, 0x8000000197525A10);
          MEMORY[0x19A8DFF80](1635017028, 0xE400000000000000);
          goto LABEL_107;
        }

LABEL_97:
        __break(1u);
        goto LABEL_98;
      }
    }

    else
    {
    }

    memset(v172, 0, 32);
    goto LABEL_85;
  }

  *&v172[0] = a1;
  if (swift_conformsToProtocol2())
  {
    v40 = v165;
    if (a1)
    {
      do
      {
        sub_1973F732C(a1, v172);
        a1 = *&v172[0];
        if (swift_conformsToProtocol2())
        {
          v41 = a1 == 0;
        }

        else
        {
          v41 = 1;
        }
      }

      while (!v41);
    }
  }

  else
  {
    v40 = v165;
  }

  sub_1974494AC(a1, v167, v162, v37, v26, v40, v166, v30, v17, a1, v163);
}

uint64_t sub_19743E090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5E8, &qword_19752EA40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19743E100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = type metadata accessor for EditingState();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19743AA50(a1, a2, a3);
  sub_197404E70(v4 + OBJC_IVAR____TtC9SwiftData34DataStoreSaveChangesRequestBuilder_editingState, v13);
  sub_19743E248(v13, a4);

  return sub_19740BE74(v13, type metadata accessor for EditingState);
}

uint64_t sub_19743E1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for DataStoreSaveChangesRequest();
  result = sub_1974074E0(a1, a5 + *(v10 + 44));
  *a5 = a2;
  a5[1] = a3;
  a5[2] = a4;
  return result;
}

uint64_t sub_19743E248@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for EditingState();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_197404E70(a1, v10);
  swift_beginAccess();
  v11 = v2[5];
  swift_beginAccess();
  v12 = v2[6];
  swift_beginAccess();
  v13 = *(v5 + 80);
  v14 = *(v5 + 88);
  sub_19743E1E0(v10, v11, v12, v2[7], a2);
}

uint64_t sub_19743E380(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = swift_unknownObjectRelease())
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    swift_unknownObjectRetain();
    sub_1974327FC(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19743E484(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v26 = a4;
  v28 = a3;
  v27 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = sub_1973F68A4(AssociatedTypeWitness, AssociatedConformanceWitness);
  v7 = *(v6 + 16);
  if (v7)
  {
    v25[1] = v6;
    v8 = v6 + 32;
    do
    {
      sub_1973F7E64(v8, v36);
      v22 = v27[3];
      v23 = v27[4];
      __swift_project_boxed_opaque_existential_1Tm_1(v27, v22);
      sub_19743B2AC(v36[2], v22, v23, &v31);
      if (v32)
      {
        sub_1974028A0(&v31, v35);
        v9 = v36[1];
        v29 = v36[0];
        sub_1973FDED4(v35, &v31);
        v10 = v26;
        v11 = *v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = *v10;
        *v10 = 0x8000000000000000;
        v13 = v32;
        v14 = v33;
        v15 = v34;
        v16 = __swift_mutable_project_boxed_opaque_existential_2(&v31, v32);
        v17 = *(*(v13 - 8) + 64);
        MEMORY[0x1EEE9AC00](v16, v16);
        v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v20 + 16))(v19);
        sub_19743B06C(v19, v29, v9, isUniquelyReferenced_nonNull_native, &v30, v13, v14, v15);
        __swift_destroy_boxed_opaque_existential_1Tm_2(v35);
        __swift_destroy_boxed_opaque_existential_1Tm_2(&v31);
        v21 = *v10;
        *v10 = v30;

        sub_1973F82A8(v36);
      }

      else
      {
        sub_1973F82A8(v36);
        sub_197448384(&v31, &qword_1EAF2B5E8, &qword_19752EA40);
      }

      v8 += 96;
      --v7;
    }

    while (v7);
  }

  else
  {
  }
}

uint64_t sub_19743E750(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = *(v4 + 16);
  v10(v14 - v11, a1, a2);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for _KKMDBackingData();
  if (swift_dynamicCast() & 1) != 0 || (v10(v8, a1, a2), type metadata accessor for _StitchedBackingData(), (swift_dynamicCast()))
  {
    v12 = *(v14[0] + 16);

    return v12;
  }

  else
  {
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000005DLL, 0x8000000197525B00);
    sub_1975227FC();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

void *sub_19743E9A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = MEMORY[0x1E69E7CC8];
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_1(a1, v6);
  result = (*(v7 + 32))(&v13, v6, v7);
  if (v14 == 255)
  {
    __break(1u);
  }

  else
  {
    v16 = v13;
    v17 = v14;
    __swift_project_boxed_opaque_existential_1Tm_1(a1, a1[3]);
    DynamicType = swift_getDynamicType();
    v10 = a1[4];
    sub_19743E484(DynamicType, a1, a2, &v15);
    v11 = v16;
    v12 = v17;
    *a3 = v15;
    *(a3 + 8) = v11;
    *(a3 + 16) = v12;
    return __swift_destroy_boxed_opaque_existential_1Tm_2(a1);
  }

  return result;
}

uint64_t sub_19743EA84@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v7 = sub_1973F8364(a2);
  v9 = *(a1 + 16);
  if (!*(v9 + 16))
  {

    goto LABEL_7;
  }

  v10 = sub_1973F4028(v7, v8);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_7:
    memset(v17, 0, sizeof(v17));
    goto LABEL_8;
  }

  v13 = *(*(v9 + 56) + 8 * v10);
  result = swift_beginAccess();
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v15 = *(a1 + 32);
    if (v13 < *(v15 + 16))
    {
      sub_1973FE14C(v15 + 32 * v13 + 32, v17, &qword_1EAF2AF20, &unk_19752F320);
LABEL_8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
      v16 = swift_dynamicCast();
      return (*(*(a3 - 8) + 56))(a4, v16 ^ 1u, 1, a3);
    }
  }

  __break(1u);
  return result;
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_19743EC54@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  sub_197522B2C();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    v18 = sub_1973F8364(a1);
    v20 = *(a2 + 16);
    if (*(v20 + 16))
    {
      v21 = sub_1973F4028(v18, v19);
      v23 = v22;

      if (v23)
      {
        v24 = *(*(v20 + 56) + 8 * v21);
        result = swift_beginAccess();
        if ((v24 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v25 = *(a2 + 32);
          if (v24 < *(v25 + 16))
          {
            sub_1973FE14C(v25 + 32 * v24 + 32, v27, &qword_1EAF2AF20, &unk_19752F320);
LABEL_12:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
            v26 = swift_dynamicCast();
            return (*(*(a4 - 8) + 56))(a6, v26 ^ 1u, 1, a4);
          }
        }

        __break(1u);
        return result;
      }
    }

    else
    {
    }

    memset(v27, 0, sizeof(v27));
    goto LABEL_12;
  }

  v14 = v13;
  v15 = *(a5 + 64);

  v15(v14, a4, a7, a3, a5);

  v16 = *(*(a4 - 8) + 56);

  return v16(a6, 0, 1, a4);
}

uint64_t sub_19743EE9C(uint64_t a1)
{
  v6 = *v1;
  v2 = *(a1 + 16);
  sub_197521AAC();
  swift_getWitnessTable();
  if (sub_197521D0C() & 1) != 0 && (v5 = v1[1], (sub_197521D0C()))
  {
    v7 = v1[2];
    v3 = sub_197521D0C();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

unint64_t sub_19743EF58(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 32 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_19743EFD0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B230, &unk_19752D3C0);
  v43 = a2;
  result = sub_19752243C();
  v8 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
    v42 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 48) + 16 * v21;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v5 + 56) + 32 * v21;
      if (v43)
      {
        sub_197433E8C(v25, v44);
      }

      else
      {
        sub_19742FE50(v25, v44);
        sub_1974028EC(v23, v24);
      }

      v26 = *(v8 + 40);
      sub_197522A5C();
      if (v24)
      {
        if (v24 == 1)
        {
          MEMORY[0x19A8E1190](1);
          v27 = *(v23 + 56);
          v28 = *(v23 + 64);
          sub_19752180C();
          v29 = *(v23 + 72);
          v30 = *(v23 + 80);
          sub_19752180C();
          if (*(v23 + 24))
          {
            v40 = *(v23 + 16);
            sub_197522A7C();
            sub_19752180C();
          }

          else
          {
            sub_197522A7C();
          }

          v31 = *(v23 + 33);
          sub_197522A7C();
          v5 = v42;
          *(v23 + 32);
        }

        else
        {
          MEMORY[0x19A8E1190](2);
          sub_19750A470();
          sub_19752180C();

          sub_19750A588();
        }

        sub_19752180C();
      }

      else
      {
        MEMORY[0x19A8E1190](0);
        sub_197521F4C();
      }

      result = sub_197522A9C();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_47:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 16 * v16;
      *v17 = v23;
      *(v17 + 8) = v24;
      result = sub_197433E8C(v44, *(v8 + 56) + 32 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_45;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_45:
  *v3 = v8;
  return result;
}

uint64_t sub_19743F3E4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  *(v5 + 16) = result + 1;
  v6 = v5 + 16 * result;
  *(v6 + 32) = a2;
  *(v6 + 40) = a5;
  return result;
}

void sub_19743F3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v73 = a1;
  v6 = *v3;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v67 = &v64[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v64[-v13];
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v64[-v16];
  v19 = *(v18 + 88);
  v68 = *(v18 + 104);
  v69 = v20;
  v21 = v19;
  if (sub_197522B4C() == 0xD000000000000014 && 0x8000000197524BA0 == v22)
  {
    goto LABEL_7;
  }

  v24 = sub_19752282C();

  if ((v24 & 1) == 0)
  {
    v25 = *(v7 + 16);
    v25(v17, v73, a3);
    if (swift_dynamicCast())
    {
LABEL_7:

      return;
    }

    v66 = v25;
    v26 = v4[5];
    v27 = sub_197522B4C();
    v29 = v28;
    swift_beginAccess();
    v30 = *(v26 + 96);
    if (*(v30 + 16))
    {
      v31 = sub_1973F4028(v27, v29);
      v65 = v32;

      if (v65)
      {
        v33 = *(*(v30 + 56) + 8 * v31);
        swift_endAccess();
        v72 = a3;
        boxed_opaque_existential_2Tm_0 = __swift_allocate_boxed_opaque_existential_2Tm_0(&v70);
        v66(boxed_opaque_existential_2Tm_0, v73, a3);

        v35 = sub_197522B4C();
        sub_1974381F8(v33, &v70, v35, v36, v4[2]);

        sub_1973FE58C(&v70, &qword_1EAF2AF20, &unk_19752F320);
        return;
      }
    }

    else
    {
    }

    swift_endAccess();
    v37 = sub_197522B4C();
    v39 = v38;
    swift_beginAccess();
    if (*(*(v26 + 104) + 16))
    {
      sub_1973F4028(v37, v39);
      v41 = v40;

      v42 = v66;
      if (v41)
      {
        swift_endAccess();
        v43 = v73;
        v42(v14, v73, a3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
        if (swift_dynamicCast())
        {
          v73 = v21;
          v44 = v70;
          v45 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
          v46 = *(v44 + 16);
          if (v46)
          {
            v47 = (v44 + 40);
            do
            {
              v48 = *(v47 - 1);
              v49 = *v47;
              v47 += 16;
              v70 = v48;
              LOBYTE(v71) = v49;
              sub_1974028EC(v48, v49);
              v50 = sub_19744D188(&v70);
              [v45 addObject_];

              sub_1974028C8(v48, v49);
              --v46;
            }

            while (v46);
          }

          v51 = v4[2];
          v52 = v45;
          sub_197522B4C();
          v53 = sub_19752178C();

          [v51 setValue:v52 forKey:v53];

          return;
        }

        v42(v67, v43, a3);
        if (swift_dynamicCast())
        {
          v54 = v70;
          v55 = v71;
          v56 = v4[2];
          v57 = sub_19744D188(&v70);
          sub_197522B4C();
          v58 = sub_19752178C();

          [v56 setValue:v57 forKey:v58];

          sub_1974028C8(v54, v55);
          return;
        }

LABEL_25:
        sub_1975223EC();
        __break(1u);
        return;
      }
    }

    else
    {
    }

    swift_endAccess();
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_1975221EC();

    v70 = 0xD000000000000011;
    v71 = 0x8000000197525550;
    v59 = sub_197522B4C();
    MEMORY[0x19A8DFF80](v59);

    MEMORY[0x19A8DFF80](0x20726F6620, 0xE500000000000000);
    v60 = [v4[2] description];
    v61 = sub_1975217BC();
    v63 = v62;

    MEMORY[0x19A8DFF80](v61, v63);

    goto LABEL_25;
  }
}

void *DefaultStore.save(_:)(uint64_t a1)
{
  v18 = MEMORY[0x1E69E7CC8];
  v17 = MEMORY[0x1E69E7CC8];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE80, &qword_19752C298) + 44);
  v13 = v1;
  v14 = a1;
  v15 = &v18;
  v16 = &v17;
  v5 = MEMORY[0x19A8E1370]();
  sub_197463DBC(a1 + v4, v1, sub_197440E74, &v12);
  objc_autoreleasePoolPop(v5);
  if (v2)
  {
  }

  else
  {
    v7 = DefaultStore.identifier.getter();
    v9 = v8;
    v10 = v18;
    v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE88, &unk_19752C2A0);
    result = swift_allocObject();
    result[2] = v10;
    result[3] = v7;
    result[4] = v9;
    result[5] = v11;
  }

  return result;
}

uint64_t sub_19743FB78(char a1)
{
  v3 = v2;
  if (*(v1 + 59))
  {
    return 1;
  }

  v4 = v1;
  if ((*(v1 + 50) & 1) == 0)
  {
    sub_19744C43C();
    return 1;
  }

  type metadata accessor for ModelContext.ProcessPendingChangesContext();
  inited = swift_initStackObject();
  v6 = MEMORY[0x1E69E7CD0];
  inited[2] = MEMORY[0x1E69E7CC8];
  inited[3] = v6;
  inited[4] = v6;
  v61 = inited + 4;
  inited[5] = v6;
  v60 = inited + 5;
  inited[6] = v6;
  v59 = inited + 6;
  inited[7] = v6;
  v58 = inited + 7;
  inited[8] = v6;
  v57 = inited + 8;
  v7 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
LABEL_73:
    if (sub_1975220EC())
    {
      sub_1974FA0B4(MEMORY[0x1E69E7CC0]);
    }
  }

  *(v4 + 59) = 257;
  swift_beginAccess();
  v8 = *(*(v4 + 96) + 16);
  result = swift_beginAccess();
  v10 = *(*(v4 + 80) + 16);
  v11 = __OFADD__(v8, v10);
  v12 = v8 + v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_76;
  }

  result = swift_beginAccess();
  v13 = *(*(v4 + 112) + 16);
  v11 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (v11)
  {
LABEL_76:
    __break(1u);
    return result;
  }

  if (v14 >= 1)
  {
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v15 = 0;
    v54 = 0;
    v56 = inited;
    while (1)
    {
      sub_197440AC4();
      v16 = *(v4 + 112);
      if (*(v4 + 56) == 1 && (*(v16 + 16) || *(*(v4 + 104) + 16)))
      {
        sub_1974B651C(a1 & 1);
        if (v3)
        {
          swift_setDeallocating();
          sub_1974433A8();
          swift_deallocClassInstance();

          if ((v54 & 1) == 0)
          {
            goto LABEL_62;
          }

          return 1;
        }

        v16 = *(v4 + 112);
      }

      if (*(v16 + 16))
      {
        v63 = v7;

        sub_197457C24(v17, v4, inited, &v63, sub_1974B5D80);

        v18 = v63;
      }

      else
      {
        v18 = v7;
      }

      if (*(*(v4 + 80) + 16))
      {
        v63 = v7;

        sub_197457C24(v19, v4, inited, &v63, sub_197457D6C);

        v20 = v63;
      }

      else
      {
        v20 = v7;
      }

      if (*(*(v4 + 96) + 16))
      {
        v63 = v7;

        sub_197442730(v21, v4, &v63, inited);

        inited = v63;
      }

      else
      {
        inited = v7;
      }

      sub_197442CDC(inited);
      sub_197443070(v20);
      v22 = *v57;

      sub_19744307C(v18, v22);

      v23 = *(v4 + 40);
      if (v23)
      {
        v24 = v23;
        if ([v24 groupsByEvent])
        {
        }

        else
        {
          if (([v24 isUndoing] & 1) == 0 && !objc_msgSend(v24, sel_isRedoing))
          {
            [v24 endUndoGrouping];
          }

          *(v4 + 180) = 0;
        }
      }

      v25 = *(v4 + 80);
      *(v4 + 80) = v6;

      v26 = *(v4 + 112);
      *(v4 + 112) = v6;

      v27 = *(v4 + 96);
      *(v4 + 96) = v6;

      v28 = *(v4 + 120);
      *(v4 + 120) = v6;
      if ((v15 & 1) == 0)
      {
        *(v4 + 50) = 0;
        *(v4 + 58) = 0;
        v54 = 1;
        *(v4 + 60) = 0;
      }

      v7 = *(v4 + 136);
      v62 = v3;
      if (*(v7 + 16))
      {
        *(v4 + 136) = v6;
      }

      else
      {
        v7 = v6;
      }

      v29 = *v61;
      v30 = *v60;
      v31 = *v59;
      v32 = *(v4 + 144) != 0;

      sub_197443A28(v29, v30, v31, v28, v7, v32);

      v33 = *v58;

      sub_1974B6340(v34, 0);

      v3 = inited[2];
      if (v3)
      {
        v7 = 0;
        v6 = inited + 5;
        while (v7 < inited[2])
        {
          ++v7;
          v36 = *(v6 - 1);
          v35 = *v6;
          ObjectType = swift_getObjectType();
          swift_unknownObjectRetain();
          sub_197443368(ObjectType, v35);
          swift_unknownObjectRelease();
          v6 += 2;
          if (v3 == v7)
          {
            goto LABEL_38;
          }
        }

        __break(1u);
        goto LABEL_69;
      }

LABEL_38:

      v3 = *(v20 + 2);
      if (v3)
      {
        v7 = 0;
        inited = (v20 + 40);
        v6 = MEMORY[0x1E69E7CD0];
        while (v7 < *(v20 + 2))
        {
          ++v7;
          v39 = *(inited - 1);
          v38 = *inited;
          v40 = swift_getObjectType();
          swift_unknownObjectRetain();
          sub_197443368(v40, v38);
          swift_unknownObjectRelease();
          inited += 2;
          if (v3 == v7)
          {
            goto LABEL_44;
          }
        }

LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v6 = MEMORY[0x1E69E7CD0];
LABEL_44:

      v3 = *(v18 + 2);
      if (v3)
      {
        v7 = 0;
        v41 = (v18 + 40);
        inited = v56;
        while (v7 < *(v18 + 2))
        {
          ++v7;
          v43 = *(v41 - 1);
          v42 = *v41;
          v44 = swift_getObjectType();
          swift_unknownObjectRetain();
          sub_197443368(v44, v42);
          swift_unknownObjectRelease();
          v41 += 2;
          if (v3 == v7)
          {
            goto LABEL_50;
          }
        }

        goto LABEL_70;
      }

      inited = v56;
LABEL_50:

      v45 = *(*(v4 + 96) + 16);
      v46 = *(*(v4 + 80) + 16);
      v11 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v11)
      {
        goto LABEL_71;
      }

      v48 = *(*(v4 + 112) + 16);
      v11 = __OFADD__(v47, v48);
      v49 = v47 + v48;
      if (v11)
      {
        goto LABEL_72;
      }

      v15 = 1;
      v3 = v62;
      v7 = MEMORY[0x1E69E7CC0];
      if (v49 <= 0)
      {
        goto LABEL_56;
      }
    }
  }

  v54 = 0;
LABEL_56:
  v50 = *(v4 + 120);
  if ((v50 & 0xC000000000000001) != 0)
  {
    if (v50 < 0)
    {
      v51 = *(v4 + 120);
    }

    v52 = *(v4 + 120);

    v53 = sub_1975220EC();

    if (v53 < 1)
    {
      goto LABEL_61;
    }
  }

  else if (*(v50 + 16) < 1)
  {
    goto LABEL_61;
  }

  sub_19744C43C();
LABEL_61:
  swift_setDeallocating();
  sub_1974433A8();
  swift_deallocClassInstance();
  if ((v54 & 1) == 0)
  {
LABEL_62:
    *(v4 + 50) = 0;
    *(v4 + 58) = 0;
    *(v4 + 60) = 0;
  }

  return 1;
}

void sub_197440354(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v66 = a7;
  v67 = a8;
  v64 = a6;
  v65 = a2;
  WitnessTable = a5;
  v68 = *a3;
  v69 = swift_allocObject();
  *(v69 + 16) = MEMORY[0x1E69E7CC0];
  v71 = a9;
  v12 = sub_19743AA50(a1, a9, a10);
  swift_beginAccess();
  v13 = v12;
  v14 = *(v12 + 32);
  v15 = a3;
  v16 = *(a3 + 2);
  v17 = *(v16 + 64);
  v76 = v14;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  while (v20)
  {
    v23 = v22;
LABEL_9:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v25 = (v23 << 10) | (16 * v24);
    v26 = *(v16 + 48) + v25;
    v27 = *(v16 + 56) + v25;
    v28 = *v27;
    v29 = *(v26 + 8);
    v30 = *(v27 + 8);
    v72 = *v26;
    v73 = v29;
    v74 = v28;
    v75 = v30;
    sub_1974028EC(v72, v29);
    sub_1974028EC(v28, v30);
    sub_1974590C4(&v72, &v74, WitnessTable, v15, &v76, v13, v71);
    v31 = v74;
    v32 = v75;
    sub_1974028C8(v72, v73);
    sub_1974028C8(v31, v32);
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      v62 = v15;
      v72 = *(v15 + 5);
      v35 = MEMORY[0x1EEE9AC00](v33, v34);
      v57[0] = v71;
      v57[1] = a10;
      v58 = WitnessTable;
      v59 = v13;
      v63 = v13;
      v60 = v69;
      MEMORY[0x1EEE9AC00](v35, v36);
      v56 = v71;
      v37 = *(v68 + 80);
      sub_197405108();
      sub_19752166C();

      swift_getWitnessTable();
      sub_19752195C();

      v39 = v65;
      v72 = *(v65 + 16);
      v40 = v72;
      MEMORY[0x1EEE9AC00](v38, v41);
      v58 = v71;
      v59 = a10;
      v60 = WitnessTable;
      v42 = sub_197521AAC();

      swift_getWitnessTable();
      sub_19752195C();

      v72 = *v65;
      MEMORY[0x1EEE9AC00](v43, v44);
      v59 = a10;
      v60 = v15;

      WitnessTable = swift_getWitnessTable();
      v46 = sub_1974048EC(sub_1974C1D80, v57, v42, &type metadata for PersistentIdentifier, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v45);

      swift_beginAccess();
      sub_19744673C(v46);
      v47 = swift_endAccess();
      v72 = *(v39 + 8);
      MEMORY[0x1EEE9AC00](v47, v48);
      v60 = v56;
      v61 = a10;

      v49 = WitnessTable;
      v51 = sub_1974048EC(sub_19745A004, &v58, v42, &type metadata for PersistentIdentifier, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v50);

      swift_beginAccess();
      sub_19744673C(v51);
      v52 = swift_endAccess();
      v72 = v40;
      MEMORY[0x1EEE9AC00](v52, v53);
      v60 = v56;
      v61 = a10;

      v55 = sub_1974048EC(sub_197448600, &v58, v42, &type metadata for PersistentIdentifier, MEMORY[0x1E69E73E0], v49, MEMORY[0x1E69E7410], v54);

      swift_beginAccess();
      sub_19744673C(v55);
      swift_endAccess();

      return;
    }

    v20 = *(v16 + 64 + 8 * v23);
    ++v22;
    if (v20)
    {
      v22 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_197440954()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_197440990(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B238, &unk_19752F350);
  result = sub_1975221AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_19747ECF8(v18, v17, v6))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v15 = (*(v3 + 48) + 16 * (v12 | (v7 << 6)));
      v16 = *v15;
      v17 = v15[1];
      v18 = swift_unknownObjectRetain();
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {
        goto LABEL_15;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v6;
  }

  return result;
}

void sub_197440AC4()
{
  if ((*(v0 + 180) & 1) == 0)
  {
    swift_beginAccess();
    v1 = *(v0 + 40);
    if (v1)
    {
      v2 = *(v0 + 176);
      v3 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v4 = v1;
      v5 = [v3 initWithInt_];
      if (([v4 groupsByEvent] & 1) == 0 && (objc_msgSend(v4, sel_isUndoing) & 1) == 0 && (objc_msgSend(v4, sel_isRedoing) & 1) == 0)
      {
        *(v0 + 60) = 1;
        [v4 beginUndoGrouping];
        *(v0 + 60) = 0;
      }

      swift_beginAccess();
      v6 = *(v0 + 88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF58, &qword_1975319E0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_19752F3D0;
      *(v7 + 56) = sub_1974C179C(0, &qword_1ED7C9B88, 0x1E696AD98);
      *(v7 + 32) = v5;
      *(v7 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B678, &unk_19752F340);
      *(v7 + 64) = v6;

      v8 = v5;
      v9 = sub_1975219BC();

      [v4 registerUndoWithTarget:v0 selector:sel__clearChangedThisTransaction_ object:v9];
    }

    *(v0 + 180) = 1;
  }

  v10 = OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveEnabled;
  swift_beginAccess();
  if (*(v0 + v10) == 1)
  {
    v11 = OBJC_IVAR____TtC9SwiftData12ModelContext_timer;
    if (!*(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_timer))
    {
      v12 = *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_AUTOSAVE_MAX_TIME) + 1.0;
      *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveDelay) = 0;
      v13 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:sel_checkAutosaveConditions selector:0 userInfo:1 repeats:v12];
      v14 = *(v0 + v11);
      *(v0 + v11) = v13;
    }
  }
}

uint64_t sub_197440D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  if (*(v3 + 40))
  {
    if (sub_1974A46D0(a2, a3))
    {
      swift_unknownObjectRelease();
      if (sub_1974A4780(a2, a3))
      {
LABEL_4:
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_1974A6118(a2, a3);
      v8 = v7;
      v10 = v9;
      v11 = swift_unknownObjectRetain();
      sub_1974A4718(v11, v10, a2, a3);
      swift_unknownObjectRelease();
      if (sub_1974A4780(a2, a3))
      {
        goto LABEL_4;
      }

      if (v8)
      {
        v12 = v10;
LABEL_9:
        sub_197442F3C(v8, v12, a2, a3);
        return swift_unknownObjectRelease();
      }
    }

    sub_1974A6118(a2, a3);
    v8 = v13;
    goto LABEL_9;
  }

  return result;
}

id sub_197440E94(uint64_t a1, void *a2)
{
  sub_1975212CC();
  v4 = *a1;
  if (!*(a1 + 8))
  {
    if ([*a1 isTemporaryID])
    {
      v5 = objc_opt_self();
      v8 = [v4 entityName];
      sub_1975217BC();

      goto LABEL_8;
    }

    sub_1974028EC(v4, 0);
LABEL_13:
    v9 = [a2 objectWithID_];
    goto LABEL_14;
  }

  if (*(a1 + 8) != 1)
  {
    v5 = objc_opt_self();
    sub_19750A588();
    goto LABEL_8;
  }

  if (*(v4 + 33))
  {
    v5 = objc_opt_self();
    v7 = *(v4 + 72);
    v6 = *(v4 + 80);

LABEL_8:
    v4 = sub_19752178C();

    v9 = [v5 insertNewObjectForEntityForName:v4 inManagedObjectContext:a2];
LABEL_14:
    v13 = v9;

    return v13;
  }

  result = [a2 persistentStoreCoordinator];
  if (result)
  {
    v12 = result;
    sub_19750ACDC(result, v11);
    v4 = sub_197521EDC();

    if (v4)
    {

      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_197441030(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_197521F2C();

  return sub_197441EDC(a1, v5);
}

unint64_t sub_197441074(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1974410C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = swift_beginAccess();
  v8 = *(*(a1 + 24) + 16);
  if (v8)
  {
    v9 = 0;
    for (i = v8 - 1; ; i = v11)
    {
      if (i <= 0)
      {
        if (v9)
        {
          goto LABEL_23;
        }

        v11 = 0;
        v9 = 1;
      }

      else
      {
        v11 = i - 1;
      }

      v12 = *(a1 + 24);
      if (i >= *(v12 + 16))
      {
        break;
      }

      sub_19740C00C(v12 + 16 * i + 32, v23);
      v13 = v24;
      if (v24 && *(v24 + 16) && (v14 = *(v24 + 40), sub_197522A5C(), sub_19752180C(), v15 = sub_197522A9C(), v16 = -1 << *(v13 + 32), v17 = v15 & ~v16, ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0))
      {
        v18 = ~v16;
        while (1)
        {
          v19 = (*(v13 + 48) + 16 * v17);
          v20 = *v19 == a2 && v19[1] == a3;
          if (v20 || (sub_19752282C() & 1) != 0)
          {
            break;
          }

          v17 = (v17 + 1) & v18;
          if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        Strong = swift_weakLoadStrong();
        result = sub_19740FE8C(v23);
        if (Strong)
        {
          *a4 = Strong;
          return result;
        }
      }

      else
      {
LABEL_3:
        result = sub_19740FE8C(v23);
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    *a4 = 0;
  }

  return result;
}

uint64_t sub_197441270()
{
  sub_1974A1014(*(v0 + 16), *(v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1974412B4(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 24);

  return (v2 >> 2) & 1;
}

uint64_t PersistentModel.getValue<A, B>(forKey:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  v10 = MEMORY[0x1E69E77B0];
  v11 = *(*a1 + *MEMORY[0x1E69E77B0]);
  if (sub_1973FE6F0(v11, a3))
  {
    sub_1974258A4(v11, a3);
  }

  if (PersistentModel.modelContext.getter(v11, a3))
  {
    sub_1974B3098(a1, a3);
  }

  if (swift_getAssociatedTypeWitness() == v11)
  {
    (*(a3 + 56))(&v21, v11, a3);
    v18 = v23;
    v19 = v24;
    __swift_project_boxed_opaque_existential_1Tm_2(&v21, v23);
    (*(v19 + 88))(a1, *(v9 + *v10 + 8), a2, a4, v18, v19);
    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v21);
  }

  else
  {
    sub_1974C2DAC(a1, a3, &v21);
    v12 = v22;
    v13 = *v22;
    v14 = sub_197521FFC();
    v15 = swift_conformsToProtocol2();
    if (v15)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
      v20 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v20);

      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      sub_1974C6478(v14, v12, v4, v11, *(v9 + *MEMORY[0x1E69E77B0] + 8), a2, v14, a3, a4, v15);
      return sub_1973F82A8(&v21);
    }
  }

  return result;
}

BOOL PersistentModel.isDeleted.getter(void *a1, uint64_t a2)
{
  if (sub_19744377C(a1, a2) & 1) != 0 || (sub_1974412B4(a1, a2))
  {
    return 1;
  }

  if (qword_1ED7C7270 != -1)
  {
    swift_once();
  }

  if (*(qword_1ED7CE5B8 + 17) != 1)
  {
    return 0;
  }

  if (sub_1973FE6F0(a1, a2))
  {
    sub_1974258A4(a1, a2);
  }

  v5 = *(sub_1973FE074(a1, a2) + 24);

  return (v5 & 0x100000) != 0;
}

uint64_t sub_197441670(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1974416CC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_197441730(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B8B0, &qword_19752FB50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B8B8, &unk_19752FB58);
    v9 = sub_19752245C();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_1974047F8(v11, v7, &qword_1EAF2B8B0, &qword_19752FB50);
      result = sub_19749EE94(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_19752239C();
      (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      result = sub_1974028B8(&v7[v10], (v9[7] + 32 * v15));
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_19744191C(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16))
  {

    v9 = sub_197403C30(a1, a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      if ([v11 isEqual_])
      {

        return;
      }

      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000044, 0x8000000197524670);
      sub_19752235C();
      MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
      v26 = [v11 description];
      v27 = sub_1975217BC();
      v29 = v28;

      MEMORY[0x19A8DFF80](v27, v29);

      MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
      v30 = [a3 description];
      v31 = sub_1975217BC();
      v33 = v32;

      MEMORY[0x19A8DFF80](v31, v33);

      goto LABEL_13;
    }
  }

  swift_beginAccess();
  v12 = *(v4 + 24);
  if (*(v12 + 16))
  {
    v13 = *(v4 + 24);

    v14 = sub_197441030(a3);
    if (v15)
    {
      sub_1974028EC(*(*(v12 + 56) + 16 * v14), *(*(v12 + 56) + 16 * v14 + 8));

      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000043, 0x8000000197524620);
      v22 = [a3 description];
      v23 = sub_1975217BC();
      v25 = v24;

      MEMORY[0x19A8DFF80](v23, v25);

      MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
      sub_19752235C();
      MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
      sub_19752235C();
LABEL_13:
      sub_1975223EC();
      __break(1u);
      return;
    }
  }

  swift_beginAccess();
  sub_1974028EC(a1, a2);
  v16 = a3;
  v17 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_19743EFA8(v16, a1, a2, isUniquelyReferenced_nonNull_native);
  sub_1974028C8(a1, a2);
  *(v4 + 16) = v34;
  swift_endAccess();
  swift_beginAccess();
  sub_1974028EC(a1, a2);
  v19 = v16;
  v20 = *(v4 + 24);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v4 + 24);
  *(v4 + 24) = 0x8000000000000000;
  sub_197441D84(a1, a2, v19, v21);

  *(v4 + 24) = v35;
  swift_endAccess();
}

void sub_197441D84(uint64_t a1, char a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_197441030(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      sub_19747AADC();
      v10 = v18;
      goto LABEL_8;
    }

    sub_197441FB0(v15, a4 & 1);
    v19 = *v5;
    v10 = sub_197441030(a3);
    if ((v16 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_19744CC00(0, qword_1ED7C7910, 0x1E695D630);
      sub_1975229CC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v16)
  {
    v22 = v21[7] + 16 * v10;
    v23 = *v22;
    *v22 = a1;
    v24 = *(v22 + 8);
    *(v22 + 8) = a2;

    sub_1974028C8(v23, v24);
  }

  else
  {
    sub_197441074(v10, a3, a1, a2, v21);

    v25 = a3;
  }
}

unint64_t sub_197441EDC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1973FF680(0, qword_1ED7C7910, 0x1E695D630);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_197521F3C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_197441FB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B298, &qword_19752D430);
  v37 = a2;
  result = sub_19752243C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 16 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      if ((v37 & 1) == 0)
      {
        v26 = v22;
        sub_1974028EC(v24, v25);
      }

      v27 = *(v8 + 40);
      result = sub_197521F2C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_197442240(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (qword_1ED7C9CD8 != -1)
  {
    a1 = swift_once();
  }

  v4 = *(qword_1ED7CE678 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  MEMORY[0x1EEE9AC00](v5, v6);
  os_unfair_lock_lock(v4 + 4);
  sub_1974423B0(&v13);
  os_unfair_lock_unlock(v4 + 4);
  if (v13)
  {
    v7 = *(*(v13 + 16) + 72);
    if (*(v7 + 16))
    {
      v8 = *(*(v13 + 16) + 72);

      v9 = sub_1973F4028(v3, a2);
      if (v10)
      {
        v11 = *(*(v7 + 56) + 8 * v9);

        return v11;
      }
    }

    else
    {
    }
  }

  return 0;
}

void *sub_1974423B0@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

unint64_t sub_197442414()
{
  result = qword_1ED7C8198[0];
  if (!qword_1ED7C8198[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED7C8198);
  }

  return result;
}

uint64_t sub_197442468()
{
  v8 = *(*v0 + 80);
  v9 = *(*v0 + 88);
  type metadata accessor for ManagedObjectKeyedEncoding();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v1;

  sub_1974425BC(v6, v2, v3, v4, v5);

  swift_getWitnessTable();
  return sub_19752279C();
}

void *sub_1974425BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(v5 + 80);
  v13 = *(v5 + 96);
  type metadata accessor for ManagedObjectKeyedEncoding();
  swift_allocObject();
  return sub_197442640(a1, a2, a3, a4, a5);
}

void *sub_197442640(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  result = [a1 managedObjectContext];
  if (result)
  {
    v5[3] = result;
    v5[4] = a5;
    v5[5] = a2;
    v5[6] = a3;
    v5[7] = a4;
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1974426B8(uint64_t a1)
{
  swift_beginAccess();
  sub_19743B4F0(a1, v1 + 48);
  return swift_endAccess();
}

uint64_t sub_197442730(uint64_t a1, uint64_t a2, char **a3, uint64_t a4)
{
  v17 = a4;
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = *(*(a1 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v11)))));
      swift_unknownObjectRetain();
      sub_19744286C(&v16, a2, a3);
      if (v4)
      {
        break;
      }

      v11 &= v11 - 1;
      result = swift_unknownObjectRelease();
      v14 = v15;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    return swift_unknownObjectRelease();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_19744286C(__int128 *a1, uint64_t a2, char **a3)
{
  v11 = *a1;
  v4 = *a1;
  ObjectType = swift_getObjectType();
  sub_197432360(0, ObjectType, *(&v11 + 1));
  if ((sub_197442A30(ObjectType, *(&v11 + 1)) & 1) == 0 && (sub_19744377C(ObjectType, *(&v11 + 1)) & 1) == 0)
  {
    sub_197442A5C(1, ObjectType, *(&v11 + 1));
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_1974327FC(v12, v4, *(&v11 + 1));
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  v6 = *a3;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_197442AD4(0, *(v6 + 2) + 1, 1, v6);
    *a3 = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_197442AD4((v8 > 1), v9 + 1, 1, v6);
    *a3 = v6;
  }

  *(v6 + 2) = v9 + 1;
  *&v6[16 * v9 + 32] = v11;
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_1974327FC(v12, v4, *(&v11 + 1));
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_197442A30(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 24);

  return (v2 >> 4) & 1;
}

uint64_t sub_197442A5C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1973FE074(a2, a3);
  if (a1)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 24) = *(v4 + 24) & 0xFFFFFFF7 | v5;
}

char *sub_197442AD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B278, &unk_19752D410);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_197442BE0(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 16))
  {
    v3 = *a2;
    v4 = type metadata accessor for ModelContext._UndoPayload();
    v5 = objc_allocWithZone(v4);
    v6 = OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__snapshots;
    *&v5[OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__snapshots] = 0;
    v7 = OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__deletedModifiedLastSnapshots;
    *&v5[OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__deletedModifiedLastSnapshots] = 0;
    v8 = OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__moveToUpdatesList;
    *&v5[OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__moveToUpdatesList] = 0;
    v9 = &v5[OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__undoTransactionID];
    *v9 = 0;
    v9[4] = 1;
    *&v5[OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__objects] = a1;
    *&v5[v6] = 0;
    *&v5[v7] = 0;
    v10 = *&v5[v8];
    *&v5[v8] = 0;

    *v9 = 0;
    v9[4] = 1;
    v12.receiver = v5;
    v12.super_class = v4;
    v11 = objc_msgSendSuper2(&v12, sel_init);
    sub_197442D0C(v3, v11);
  }
}

uint64_t sub_197442D0C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__objects);
  result = swift_beginAccess();
  v7 = *(v5 + 16);
  if (*(v2 + 40))
  {
    if (v7)
    {
      v25 = a1;
      v26 = a2;
      v27 = v2;
      v8 = (v5 + 40);
      v9 = MEMORY[0x1E69E7CC0];
      do
      {
        v10 = *(v8 - 1);
        v11 = *v8;
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        v13 = sub_1974A6A54(ObjectType, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_197477954(0, v9[2] + 1, 1, v9);
        }

        v15 = v9[2];
        v14 = v9[3];
        if (v15 >= v14 >> 1)
        {
          v9 = sub_197477954((v14 > 1), v15 + 1, 1, v9);
        }

        v9[2] = v15 + 1;
        v9[v15 + 4] = v13;
        sub_197442F3C(0, 0, ObjectType, v11);
        swift_unknownObjectRelease();
        v8 += 2;
        --v7;
      }

      while (v7);
      if (*(v5 + 16))
      {
        v16 = v9[2];
        if (v16)
        {

          v16 = v9;
        }

        v17 = *(v26 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__snapshots);
        *(v26 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__snapshots) = v16;

        v18 = v26 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__undoTransactionID;
        *v18 = *(v27 + 176);
        *(v18 + 4) = 0;
        v19 = *(v27 + 40);
        if (v19)
        {
          [v19 registerUndoWithTarget:v27 selector:v25 object:v26];
        }
      }
    }
  }

  else if (v7)
  {
    v20 = 0;
    v21 = (v5 + 40);
    while (v20 < *(v5 + 16))
    {
      ++v20;
      v23 = *(v21 - 1);
      v22 = *v21;
      v24 = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_197442F3C(0, 0, v24, v22);
      result = swift_unknownObjectRelease();
      v21 += 2;
      if (v7 == v20)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_197442F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1973FE074(a3, a4);
  v9 = *(v8 + 48);
  v10 = *(v8 + 56);
  swift_unknownObjectRetain();

  if (a1)
  {
    if (v9)
    {
      v11 = v9 == a1;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      goto LABEL_9;
    }

LABEL_7:
    v12 = sub_1973FE074(a3, a4);
    v13 = *(v12 + 64);
    *(v12 + 64) = v9;
    *(v12 + 72) = v10;
    goto LABEL_10;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_9:
  v14 = sub_1973FE074(a3, a4);
  v15 = *(v14 + 64);
  *(v14 + 64) = v9;
  *(v14 + 72) = v10;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  v16 = sub_1973FE074(a3, a4);
  swift_unknownObjectRelease();
  v17 = *(v16 + 48);
  *(v16 + 48) = a1;
  *(v16 + 56) = a2;
  swift_unknownObjectRetain();
LABEL_10:

  return swift_unknownObjectRelease();
}

void sub_19744307C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v17 = MEMORY[0x1E69E7CC0];
    v18 = MEMORY[0x1E69E7CC0];
    v19 = *(a2 + 16) != 0;
    swift_beginAccess();
    if (*(v2 + 40))
    {

      sub_1974C04E4(a1, &v18, &v19, a2, &v17);

      v5 = v17;
      if (*(v17 + 2))
      {
LABEL_4:

        v6 = v5;
LABEL_7:
        v7 = v18;
        v8 = type metadata accessor for ModelContext._UndoPayload();
        v9 = objc_allocWithZone(v8);
        v10 = OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__snapshots;
        *&v9[OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__snapshots] = 0;
        v11 = OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__deletedModifiedLastSnapshots;
        *&v9[OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__deletedModifiedLastSnapshots] = 0;
        v12 = OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__moveToUpdatesList;
        *&v9[OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__moveToUpdatesList] = 0;
        v13 = &v9[OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__undoTransactionID];
        *v13 = 0;
        v13[4] = 1;
        *&v9[OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__objects] = a1;
        *&v9[v10] = 0;
        *&v9[v11] = v7;
        v14 = *&v9[v12];
        *&v9[v12] = v6;

        *v13 = 0;
        v13[4] = 1;
        v16.receiver = v9;
        v16.super_class = v8;
        v15 = objc_msgSendSuper2(&v16, sel_init);
        sub_197442D0C(sel__undoDeletions_, v15);

        return;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_4;
      }
    }

    v6 = 0;
    goto LABEL_7;
  }
}

uint64_t sub_197443248(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1973F4028(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_19747BCB8();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_1974A0670(v7, v10);
  *v3 = v10;
  return v12;
}

void *sub_1974432E0(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  sub_197405108();
  v2[4] = sub_1975215BC();
  v2[5] = sub_1975215CC();
  v2[6] = sub_1975215CC();
  v2[7] = sub_1975215CC();
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t sub_197443368(uint64_t a1, uint64_t a2)
{
  v2 = sub_1973FE074(a1, a2);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;

  return swift_unknownObjectRelease();
}

void *sub_1974433A8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  return v0;
}

uint64_t sub_1974433F8(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = MEMORY[0x1E69E7CC8];
  *(v2 + 16) = MEMORY[0x1E69E7CC8];
  *(v2 + 24) = v5;
  sub_197404E70(a1, v2 + OBJC_IVAR____TtC9SwiftData34DataStoreSaveChangesRequestBuilder_editingState);
  v6 = *(a2 + 16);
  if (v6)
  {
    v33 = v4;
    v34 = a2;
    v7 = 32;
    while (1)
    {
      v37 = *(a2 + v7);
      v11 = *(a2 + v7);
      ObjectType = swift_getObjectType();
      v13 = *(*(&v37 + 1) + 40);
      swift_unknownObjectRetain();
      v14 = v13(ObjectType, *(&v37 + 1));
      v16 = v15;
      swift_beginAccess();
      swift_unknownObjectRetain();
      v17 = *v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v35;
      v38 = v19;
      *v35 = 0x8000000000000000;
      v21 = sub_1973F4028(v14, v16);
      v22 = v19[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v20;
      if (v19[3] >= v24)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_19747B284();
        }
      }

      else
      {
        sub_19740CAD4(v24, isUniquelyReferenced_nonNull_native);
        v26 = sub_1973F4028(v14, v16);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_19;
        }

        v21 = v26;
      }

      if (v25)
      {
        v8 = v19[7];
        v9 = *(v8 + 16 * v21);
        *(v8 + 16 * v21) = v37;

        swift_unknownObjectRelease();
      }

      else
      {
        v19[(v21 >> 6) + 8] |= 1 << v21;
        v28 = (v19[6] + 16 * v21);
        *v28 = v14;
        v28[1] = v16;
        *(v19[7] + 16 * v21) = v37;
        v29 = v19[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_18;
        }

        v19[2] = v31;
      }

      *(v36 + 16) = v38;
      swift_endAccess();
      v10 = swift_getObjectType();
      sub_19744388C(v10, v36, v11, *(&v37 + 1));
      swift_unknownObjectRelease();
      v7 += 16;
      --v6;
      a2 = v34;
      if (!v6)
      {

        v4 = v33;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    result = sub_1975229CC();
    __break(1u);
  }

  else
  {

LABEL_16:
    sub_19740BE74(v4, type metadata accessor for EditingState);
    return v36;
  }

  return result;
}

uint64_t sub_197443690@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  if (swift_getAssociatedTypeWitness() == a1)
  {
    return (*(a2 + 56))(a1, a2);
  }

  v6 = sub_1974C23A4(a1, a2);
  a3[3] = type metadata accessor for _StitchedBackingData();
  result = swift_getWitnessTable();
  a3[4] = result;
  *a3 = v6;
  return result;
}

uint64_t sub_19744377C(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 24);

  return (v2 >> 5) & 1;
}

uint64_t sub_1974437D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t))
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  swift_dynamicCast();
  sub_19743AA50(v13, a6, a7);
  a8(a5);
  swift_unknownObjectRelease();
}

uint64_t sub_19744388C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v7 = *(a4 + 40);
  v8 = v7(ObjectType, a4);
  v19 = v9;
  v20 = v8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for DataStoreSaveChangesRequestBuilder.StoreBuilder();
  v11 = v7(ObjectType, a4);
  v13 = v12;
  v14 = swift_allocObject();
  sub_1974432E0(v11, v13);
  v23 = v10;
  *&v22 = v14;
  type metadata accessor for DataStoreSaveChangesRequestBuilder.AnyStoreBuilderBox();
  v15 = swift_allocObject();
  sub_1974028B8(&v22, (v15 + 16));
  swift_beginAccess();
  v16 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(a2 + 24);
  *(a2 + 24) = 0x8000000000000000;
  sub_197442708(v15, v20, v19, isUniquelyReferenced_nonNull_native);

  *(a2 + 24) = v21;
  return swift_endAccess();
}

uint64_t sub_197443A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v13 = sub_1973FFB18(MEMORY[0x1E69E7CC0]);
  v14 = *(a5 + 16);
  v57 = MEMORY[0x1E69E7CD0];
  if (!v14)
  {

    goto LABEL_19;
  }

  if (*(a2 + 16))
  {
    v57 = a5;

    sub_1974AE1A8(a2);
  }

  v15 = *(v57 + 16);
  if (*(a1 + 16))
  {
    if (!v15)
    {

      v57 = a5;
    }

    sub_1974AE3E0(a1);
    a1 = v57;
  }

  else if (v15)
  {

    a1 = v57;
  }

  else
  {

    v16 = v57;
    a1 = a5;
  }

  if (!*(a3 + 16))
  {

LABEL_19:
    if (!*(a1 + 16))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v56 = a3;
  if (*(v16 + 16))
  {
    a5 = v16;
  }

  swift_bridgeObjectRetain_n();

  sub_1974BFD24(v17, a5);
  swift_bridgeObjectRelease_n();
  if (*(v56 + 16))
  {

    if (!*(a1 + 16))
    {
      goto LABEL_21;
    }

LABEL_20:
    v18 = *MEMORY[0x1E695D328];
    v19 = sub_1975217BC();
    v21 = v20;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B678, &unk_19752F340);
    *&v53 = a1;
    sub_1974028B8(&v53, v52);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v13;
    sub_1973FF710(v52, v19, v21, isUniquelyReferenced_nonNull_native);

    v13 = v55;
    goto LABEL_21;
  }

  if (*(a1 + 16))
  {
    goto LABEL_20;
  }

LABEL_21:
  if (*(a2 + 16))
  {
    v23 = *MEMORY[0x1E695D2F8];
    v24 = sub_1975217BC();
    v26 = v25;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B678, &unk_19752F340);
    *&v53 = a2;
    sub_1974028B8(&v53, v52);

    v27 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v13;
    sub_1973FF710(v52, v24, v26, v27);

    v13 = v55;
  }

  if (*(a3 + 16))
  {
    v28 = *MEMORY[0x1E695D4D0];
    v29 = sub_1975217BC();
    v31 = v30;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B678, &unk_19752F340);
    *&v53 = a3;
    sub_1974028B8(&v53, v52);

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v13;
    sub_1973FF710(v52, v29, v31, v32);

    v13 = v55;
  }

  if ((a4 & 0xC000000000000001) != 0)
  {
    if (sub_1975220EC() < 1)
    {
      goto LABEL_33;
    }
  }

  else if (*(a4 + 16) < 1)
  {
    goto LABEL_33;
  }

  v33 = *MEMORY[0x1E695D460];
  v34 = sub_1975217BC();
  v36 = v35;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B928, &unk_19752FC28);
  *&v53 = a4;
  sub_1974028B8(&v53, v52);

  v37 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v13;
  sub_1973FF710(v52, v34, v36, v37);

  v13 = v55;
  v55 = MEMORY[0x1E69E7CD0];

  sub_1974BFE44(a4, v7);

  v38 = v55;
  if (*(v55 + 16))
  {
    v39 = *MEMORY[0x1E695D468];
    v40 = sub_1975217BC();
    v42 = v41;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B678, &unk_19752F340);
    *&v53 = v38;
    sub_1974028B8(&v53, v52);

    v43 = swift_isUniquelyReferenced_nonNull_native();
    sub_1973FF710(v52, v40, v42, v43);
  }

LABEL_33:
  if (*(v13 + 16))
  {
    if (a6)
    {
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B920, &qword_19752FC20);
      *&v53 = MEMORY[0x1E69E7CD0];
      sub_1974028B8(&v53, v52);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v55 = v13;
      sub_1973FF710(v52, 0xD000000000000021, 0x8000000197527480, v44);
      v13 = v55;
    }

    sub_1974443D4(v13);
  }

  swift_beginAccess();
  if (*(v7 + 144))
  {
    v55 = v13;

    sub_19749F498(0xD000000000000021, 0x8000000197527480, &v53);
    sub_1974050A8(&v53, &qword_1EAF2AF20, &unk_19752F320);
    v45 = *(v7 + 144);
    if (v45)
    {
      v46 = *(v7 + 144);

      v47 = v55;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      *&v53 = v47;
      sub_1974C07C0(v45, sub_1974BF3EC, 0, v48, &v53);

      v55 = v53;
    }

    else
    {
    }

    v49 = *(v7 + 144);
    *(v7 + 144) = 0;
  }

  else
  {
  }
}

uint64_t sub_1974440A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31[3] = a3;
  v31[4] = a4;
  boxed_opaque_existential_1Tm_0 = __swift_allocate_boxed_opaque_existential_1Tm_0(v31);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1Tm_0, a1, a3);
  v9 = *(a4 + 32);
  v9(&v29, a3, a4);
  v10 = v29;
  v11 = v30;
  if (v30 > 1u)
  {
    if (v30 != 2)
    {
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000038, 0x8000000197526EE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B220, &qword_19752D3B0);
      sub_19752235C();
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (v30)
  {
    v16 = *(v29 + 3);
    if (v16)
    {
      v14 = *(v29 + 2);
      v17 = *(v29 + 3);

      goto LABEL_9;
    }

LABEL_8:
    v14 = sub_197458844(a2, v29, v30, boxed_opaque_existential_1Tm_0, a3, a4);
    v16 = v18;

    goto LABEL_9;
  }

  v12 = v9;
  v13 = [v29 storeIdentifier];
  v14 = sub_1975217BC();
  v16 = v15;

  v9 = v12;
LABEL_9:
  swift_beginAccess();
  v19 = *(a2 + 16);
  if (*(v19 + 16))
  {

    v20 = sub_1973F4028(v14, v16);
    if (v21)
    {
      v22 = v20;

      v23 = (*(v19 + 56) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      swift_unknownObjectRetain();
      sub_1974A1014(v10, v11);

      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      return v24;
    }
  }

  sub_1975221EC();

  v28[2] = 0xD000000000000019;
  v28[3] = 0x80000001975278E0;
  v9(v28, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5A0, &qword_19752E9F0);
  v27 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v27);

LABEL_14:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

void sub_1974443D4(uint64_t a1)
{
  v51 = MEMORY[0x1E69E7CC8];
  v54 = MEMORY[0x1E69E7CC8];
  v2 = *MEMORY[0x1E695D328];
  v53[20] = sub_1975217BC();
  v53[21] = v3;
  v4 = *MEMORY[0x1E695D4D0];
  v53[22] = sub_1975217BC();
  v53[23] = v5;
  v6 = *MEMORY[0x1E695D2F8];
  v53[24] = sub_1975217BC();
  v53[25] = v7;
  v8 = *MEMORY[0x1E695D340];
  v53[26] = sub_1975217BC();
  v53[27] = v9;
  v10 = *MEMORY[0x1E695D320];
  v53[8] = sub_1975217BC();
  v53[9] = v11;
  v12 = *MEMORY[0x1E695D4C8];
  v53[10] = sub_1975217BC();
  v53[11] = v13;
  v14 = *MEMORY[0x1E695D2F0];
  v53[12] = sub_1975217BC();
  v53[13] = v15;
  v16 = *MEMORY[0x1E695D338];
  v17 = 0;
  v53[14] = sub_1975217BC();
  v53[15] = v18;
  if (*(a1 + 16))
  {
LABEL_2:
    v19 = v53[v17 + 20];
    v20 = v53[v17 + 21];

    v21 = sub_1973F4028(v19, v20);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      goto LABEL_17;
    }

    sub_197404860(*(a1 + 56) + 32 * v21, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B678, &unk_19752F340);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_17;
    }

    if (!*(v52 + 16))
    {

      goto LABEL_17;
    }

    v24 = sub_1974AEAC4(v52);

    v26 = v53[v17 + 8];
    v25 = v53[v17 + 9];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53[0] = v51;
    v29 = sub_1973F4028(v26, v25);
    v30 = v51[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v33 = v28;
    if (v51[3] < v32)
    {
      sub_197443234(v32, isUniquelyReferenced_nonNull_native);
      v34 = sub_1973F4028(v26, v25);
      if ((v33 & 1) != (v35 & 1))
      {
LABEL_23:
        sub_1975229CC();
        __break(1u);
        return;
      }

      v29 = v34;
      if ((v33 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_13:

      v51 = v53[0];
      v36 = *(v53[0] + 56);
      v37 = *(v36 + 8 * v29);
      *(v36 + 8 * v29) = v24;

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v28)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_19747BCB8();
      if (v33)
      {
        goto LABEL_13;
      }
    }

LABEL_15:
    v38 = v53[0];
    *(v53[0] + 8 * (v29 >> 6) + 64) |= 1 << v29;
    v39 = (v38[6] + 16 * v29);
    *v39 = v26;
    v39[1] = v25;
    *(v38[7] + 8 * v29) = v24;
    v40 = v38[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (!v41)
    {
      v51 = v38;
      v38[2] = v42;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

LABEL_17:
  while (v17 != 6)
  {
    v17 += 2;
    if (*(a1 + 16))
    {
      goto LABEL_2;
    }
  }

  v54 = v51;
  swift_arrayDestroy();
  swift_arrayDestroy();
  v43 = *MEMORY[0x1E695D460];
  v44 = sub_1975217BC();
  sub_197443248(v44, v45);

  v46 = v54;
  *(v50 + OBJC_IVAR____TtC9SwiftData12ModelContext_contextChanged) = 1;
  v47 = [objc_opt_self() defaultCenter];
  v48 = sub_19752178C();
  sub_197444840(v46, &qword_1EAF2AEE0, &qword_19752E9C0);

  v49 = sub_1975215EC();

  [v47 postNotificationName:v48 object:v50 userInfo:v49];
}

uint64_t sub_197444840(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B950, &qword_19752FC68);
    v4 = sub_19752245C();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v4 + 64;

  v11 = 0;
  while (v7)
  {
LABEL_15:
    v15 = __clz(__rbit64(v7)) | (v11 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = v16[1];
    v18 = *(*(a1 + 56) + 8 * v15);
    *&v37[0] = *v16;
    *(&v37[0] + 1) = v17;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    swift_dynamicCast();
    v33 = v29;
    v34 = v30;
    v35 = v31;
    sub_1974028B8(&v32, v36);
    v29 = v33;
    v30 = v34;
    v31 = v35;
    sub_1974028B8(v36, v37);
    v19 = *(v4 + 40);
    result = sub_19752215C();
    v20 = -1 << *(v4 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v9 + 8 * (v21 >> 6))) == 0)
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
        v26 = *(v9 + 8 * v22);
        if (v26 != -1)
        {
          v12 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v12 = __clz(__rbit64((-1 << v21) & ~*(v9 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v7 &= v7 - 1;
    *(v9 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = *(v4 + 48) + 40 * v12;
    *v13 = v29;
    *(v13 + 16) = v30;
    *(v13 + 32) = v31;
    result = sub_1974028B8(v37, (*(v4 + 56) + 32 * v12));
    ++*(v4 + 16);
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      return v4;
    }

    v7 = *(a1 + 64 + 8 * v14);
    ++v11;
    if (v7)
    {
      v11 = v14;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_197444B2C(void *a1, int64_t a2, char a3)
{
  result = sub_19740CD8C(a1, a2, a3, *v3, &qword_1EAF2B3A8, &unk_19752D560, &qword_1EAF2B168, &unk_19752E980);
  *v3 = result;
  return result;
}

uint64_t sub_197444BD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_197444BE4(uint64_t a1)
{
  v2 = sub_197520BFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  sub_197520BDC();

  v9(v7);

  return (*(v3 + 8))(v7, v2);
}

void sub_197444CD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void **a5)
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1975220AC();
    sub_1973F3D34(0, &qword_1ED7C9360, 0x1E695D620);
    sub_197471480(&qword_1EAF2ACD0, &qword_1ED7C9360, 0x1E695D620);
    sub_197521C1C();
    v6 = v36;
    v7 = v37;
    v8 = v38;
    v9 = v39;
    v10 = v40;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v28 = v6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v9;
    v15 = v10;
    v16 = v9;
    if (!v10)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_18:
      sub_1973FF47C();
      return;
    }

    while (1)
    {
      v31 = v18;
      v32 = MEMORY[0x19A8E1370]();
      sub_197402910(v18, a3, a4, &v33);
      v20 = v33;
      v21 = v34;
      v22 = v35;
      sub_1974028EC(v34, v35);

      sub_1974028EC(v21, v22);
      v23 = *a5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *a5;
      *a5 = 0x8000000000000000;
      sub_197400CA8(v20, v21, v22, v21, v22, isUniquelyReferenced_nonNull_native);
      sub_1974028C8(v21, v22);
      *a5 = v33;
      swift_beginAccess();
      sub_1974028EC(v21, v22);

      sub_1974028EC(v21, v22);
      v25 = *(a4 + 16);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v41 = *(a4 + 16);
      *(a4 + 16) = 0x8000000000000000;
      sub_197400CA8(v20, v21, v22, v21, v22, v26);
      sub_1974028C8(v21, v22);
      *(a4 + 16) = v41;
      swift_endAccess();
      swift_beginAccess();
      v27 = sub_197400BC8(v21, v22);
      swift_endAccess();
      v6 = v28;

      sub_1974028C8(v21, v22);
      objc_autoreleasePoolPop(v32);

      v9 = v16;
      v10 = v17;
      if ((v28 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v19 = sub_19752212C();
      if (v19)
      {
        v41 = v19;
        sub_1973F3D34(0, &qword_1ED7C9360, 0x1E695D620);
        swift_dynamicCast();
        v18 = v33;
        v16 = v9;
        v17 = v10;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= ((v8 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v15 = *(v7 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1974450A0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v27 = a6;
  v28 = a7;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  swift_dynamicCast();
  v20 = a12;
  v21 = a13;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  sub_197446014(v26, sub_19744506C, v19, a2, a3, a4, a5);
  return swift_unknownObjectRelease();
}

void sub_197445198()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 postNotificationName:*MEMORY[0x1E695D358] object:v0 userInfo:0];

  v4 = sub_197520BEC();
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = *MEMORY[0x1E695D3A8];
  sub_1975217BC();
  sub_19752218C();
  if (!*(v5 + 16) || (v7 = sub_197445520(v17), (v8 & 1) == 0))
  {

    sub_197420CA4(v17);
LABEL_8:
    v18 = 0u;
    v19 = 0u;
    goto LABEL_9;
  }

  sub_197404860(*(v5 + 56) + 32 * v7, &v18);
  sub_197420CA4(v17);

  if (!*(&v19 + 1))
  {
LABEL_9:
    sub_1974454C0(&v18, &qword_1EAF2AF20, &unk_19752F320);
    goto LABEL_10;
  }

  sub_19744CC00(0, &qword_1ED7C7C78, 0x1E695D6A8);
  if (swift_dynamicCast())
  {
    v9 = v17[0];
    sub_19744E718(v9, v17);
    v10 = v17[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B2B8, &qword_19752D450);
    inited = swift_initStackObject();
    v16 = xmmword_19752C280;
    *(inited + 16) = xmmword_19752C280;
    strcpy((inited + 32), "HistoryTokens");
    *(inited + 46) = -4864;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B2C0, &qword_19752D458);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_19752C280;
    *(v12 + 56) = &type metadata for DefaultHistoryToken;
    *(v12 + 64) = sub_19744E9E4();
    *(v12 + 32) = v10;
    *(inited + 48) = v12;
    v13 = sub_19744ECBC(inited);
    swift_setDeallocating();
    sub_1974454C0(inited + 32, &qword_1EAF2B2C8, &unk_19752D460);

    goto LABEL_11;
  }

LABEL_10:
  v13 = 0;
LABEL_11:
  v14 = [v2 defaultCenter];
  if (qword_1ED7C8620 != -1)
  {
    swift_once();
  }

  v15 = qword_1ED7C8628;
  if (v13)
  {
    sub_19744ED20(v13);

    v13 = sub_1975215EC();
  }

  [v14 postNotificationName:v15 object:v1 userInfo:v13];
}

uint64_t sub_1974454C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_197445520(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_19752215C();

  return sub_197445564(a1, v5);
}

unint64_t sub_197445564(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_19741FFE0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x19A8E0890](v9, a1);
      sub_197420CA4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_197445644()
{
  sub_1974466C8();

  return swift_deallocClassInstance();
}

uint64_t sub_197445678(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFC0, &qword_19752C728);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v11 - v5;
  v7 = swift_projectBox();
  v8 = sub_197520BFC();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a1, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  swift_beginAccess();
  return sub_197420984(v6, v7, &qword_1EAF2AFC0, &qword_19752C728);
}

uint64_t sub_1974457D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for EditingState();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_197445880(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  v9 = *(a1 + 24);
  if (!*(v9 + 16))
  {
    return swift_endAccess();
  }

  v37 = a3;
  v38 = a5;
  v39 = a1;
  while (1)
  {
    v14 = 0;
    v15 = (v9 + 64);
    v16 = 1 << *(v9 + 32);
    v17 = (v16 + 63) >> 6;
    while (1)
    {
      v19 = *v15++;
      v18 = v19;
      if (v19)
      {
        break;
      }

      v14 -= 64;
      if (!--v17)
      {
        goto LABEL_10;
      }
    }

    v16 = __clz(__rbit64(v18)) - v14;
LABEL_10:
    v20 = sub_197425424(&v42, v16, *(v9 + 36));
    v44 = v20;
    v22 = v42;
    v21 = v43;
    result = swift_endAccess();
    if (!v20)
    {
      return result;
    }

    v45 = v21;
    v40 = MEMORY[0x19A8E1370](result);
    sub_197402910(v20, a3, a4, &v42);
    v25 = v42;
    v24 = v43;
    v26 = v44;
    swift_beginAccess();

    sub_1974028EC(v24, v26);

    sub_1974028EC(v24, v26);
    sub_1974028EC(v24, v26);
    v27 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_197400CA8(v25, v24, v26, v24, v26, isUniquelyReferenced_nonNull_native);
    sub_1974028C8(v24, v26);
    *(a4 + 16) = v41;
    swift_endAccess();
    swift_beginAccess();
    v29 = sub_197400BC8(v24, v26);
    swift_endAccess();

    v30 = *a5;
    if (*(*a5 + 16) && (v31 = sub_197403C30(v24, v26), (v32 & 1) != 0))
    {
      v33 = v30[7] + 24 * v31;
      v34 = *v33;
      v35 = *(v33 + 8);
      v36 = *(v33 + 16);

      sub_1974028EC(v35, v36);

      sub_1974028C8(v24, v26);

      sub_1974028C8(v24, v26);

      v12 = v35;
      v13 = v36;
      a3 = v37;
      a5 = v38;
    }

    else
    {
      sub_1974028EC(v24, v26);
      v10 = *a5;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v42 = *a5;
      *a5 = 0x8000000000000000;
      sub_197400CA8(v25, v24, v26, v24, v26, v11);
      sub_1974028C8(v24, v26);
      *a5 = v42;

      v12 = v24;
      v13 = v26;
    }

    sub_1974028C8(v12, v13);
    objc_autoreleasePoolPop(v40);
    sub_197425500(v22, v45, v20);
    swift_beginAccess();
    v9 = *(v39 + 24);
    if (!*(v9 + 16))
    {
      return swift_endAccess();
    }
  }
}

char *sub_197445BA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3C0, &qword_19752D580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_197445CC4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B950, &qword_19752FC68);
    v2 = sub_19752245C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_197404860(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1974028B8(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1974028B8(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1974028B8(v32, v33);
    v17 = *(v2 + 40);
    result = sub_19752215C();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1974028B8(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_197445F8C()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_19740BE74(v0 + OBJC_IVAR____TtC9SwiftData34DataStoreSaveChangesRequestBuilder_editingState, type metadata accessor for EditingState);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_197446014(uint64_t a1, void (*a2)(uint64_t, char *, void), uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a7;
  v45 = a3;
  v46 = a2;
  v44 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v47 = AssociatedTypeWitness;
  v11 = type metadata accessor for DataStoreSaveChangesRequest();
  v12 = sub_197521F5C();
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v40 - v16;
  v18 = *(v11 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15, v20);
  v22 = &v40 - v21;
  swift_beginAccess();
  v41 = a4;
  v42 = a5;
  v23 = *a4;
  v24 = *(*a4 + 16);
  v43 = a6;
  if (v24 && (v25 = sub_1973F4028(a5, a6), (v26 & 1) != 0))
  {
    sub_1974047F8(*(v23 + 56) + 32 * v25, &v49, &qword_1EAF2AF20, &unk_19752F320);
  }

  else
  {
    v49 = 0uLL;
    *&v50 = 0;
    *(&v50 + 1) = 1;
  }

  swift_endAccess();
  if (*(&v50 + 1) == 1)
  {
    v29 = &qword_1EAF2B648;
    v30 = &unk_19752FD20;
    v31 = &v49;
LABEL_13:
    sub_1974050A8(v31, v29, v30);
    (*(v18 + 56))(v17, 1, 1, v11);
    goto LABEL_14;
  }

  v51 = v49;
  v52 = v50;
  if (!*(&v50 + 1))
  {
    v29 = &qword_1EAF2AF20;
    v30 = &unk_19752F320;
    v31 = &v51;
    goto LABEL_13;
  }

  v27 = swift_dynamicCast();
  (*(v18 + 56))(v17, v27 ^ 1u, 1, v11);
  if ((*(v18 + 48))(v17, 1, v11) == 1)
  {
LABEL_14:
    (*(v40 + 8))(v17, v12);
    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;
    sub_1975221EC();
    v49 = v51;
    MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x80000001975277D0);
    MEMORY[0x19A8DFF80](v42, v43);
    MEMORY[0x19A8DFF80](0xD000000000000021, 0x80000001975277F0);
    v32 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v32);

    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    v33 = v41;
    swift_beginAccess();
    v34 = *v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
    v35 = sub_19752160C();
    v37 = v36;

    MEMORY[0x19A8DFF80](v35, v37);

    goto LABEL_17;
  }

  (*(v18 + 32))(v22, v17, v11);
  sub_1974047F8(v48, &v51, &qword_1EAF2AF20, &unk_19752F320);
  if (*(&v52 + 1))
  {
    type metadata accessor for DataStoreSaveChangesResult();
    if (swift_dynamicCast())
    {
      v46(v44, v22, v49);

      return (*(v18 + 8))(v22, v11);
    }
  }

  else
  {
    sub_1974050A8(&v51, &qword_1EAF2AF20, &unk_19752F320);
  }

  *&v51 = 0;
  *(&v51 + 1) = 0xE000000000000000;
  sub_1975221EC();
  v49 = v51;
  MEMORY[0x19A8DFF80](0xD00000000000001ELL, 0x8000000197527820);
  MEMORY[0x19A8DFF80](v42, v43);
  MEMORY[0x19A8DFF80](0xD000000000000020, 0x8000000197527840);
  v38 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v38);

  MEMORY[0x19A8DFF80](10, 0xE100000000000000);
  sub_1974047F8(v48, &v51, &qword_1EAF2AF20, &unk_19752F320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
  v39 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v39);

LABEL_17:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

void *sub_197446624(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for EditingState();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_1974466C8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return v0;
}

uint64_t DataStoreSaveChangesResult.__deallocating_deinit()
{
  DataStoreSaveChangesResult.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_19744673C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_197445BA8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_197446830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *a4;
  if (*(a3 + 16))
  {
    Strong = *(a3 + 16);
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }

  v12 = *(Strong + 16);

  v13 = *(v12 + 72);

  v14 = *(v10 + 88);
  v40 = *(v10 + 80);
  v41 = *(v14 + 24);
  v41(&v47);
  v15 = v47;
  v16 = v48;
  if (v48)
  {
    if (v48 == 1)
    {
      v18 = *(v47 + 9);
      v17 = *(v47 + 10);
    }

    else
    {
      v18 = sub_19750A588();
      v17 = v23;
    }

    v21 = v15;
    v22 = v16;
  }

  else
  {
    v19 = [v47 entityName];
    v18 = sub_1975217BC();
    v17 = v20;

    v21 = v15;
    v22 = 0;
  }

  sub_1974028C8(v21, v22);
  if (!*(v13 + 16))
  {

    goto LABEL_15;
  }

  v24 = sub_1973F4028(v18, v17);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  v27 = *(*(v13 + 56) + 8 * v24);

  v28 = *(v27 + 144);
  v29 = *(v27 + 152);

  if (v28)
  {
    return sub_1974483E4(v28, a3, a2, a4, a5, a6, v28, a7, v29);
  }

LABEL_16:
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197527710);
  (v41)(&v45, v40, v14);
  v31 = v45;
  v32 = v46;
  sub_19752235C();
  sub_1974028C8(v31, v32);
  MEMORY[0x19A8DFF80](0xD000000000000010, 0x8000000197527750);
  Strong = *(a3 + 16);
  if (!Strong)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v33 = Strong;
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  v33 = Strong;
LABEL_22:
  v34 = *(v33 + 16);

  v35 = *(v34 + 64);

  v36 = type metadata accessor for Schema.Entity();
  v37 = MEMORY[0x19A8E0100](v35, v36);
  v39 = v38;

  MEMORY[0x19A8DFF80](v37, v39);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197446BBC()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_197446BF4()
{
  sub_19744946C();

  return swift_deallocClassInstance();
}

uint64_t sub_197446C28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B848, &qword_19752F3E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_197446C98(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B240, &qword_19752D3D0);
    v2 = sub_19752245C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
        swift_dynamicCast();
        sub_1974028B8(&v25, v27);
        sub_1974028B8(v27, v28);
        sub_1974028B8(v28, &v26);
        result = sub_1973F4028(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0Tm(v12);
          result = sub_1974028B8(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_1974028B8(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

double sub_197446EF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v24 - v12;
  v26[0] = v11;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v15 = sub_1974482A8(v26, MetatypeMetadata);
  v26[0] = a1;
  if (swift_conformsToProtocol2() && a1)
  {
    v16 = a1;
    do
    {
      sub_1973F732C(v16, v26);
      v16 = v26[0];
      if (swift_conformsToProtocol2())
      {
        v17 = v16 == 0;
      }

      else
      {
        v17 = 1;
      }
    }

    while (!v17);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B588, &unk_19752E9B0);
  v18 = sub_1975214EC();
  v19 = sub_1975214EC();
  if (v18)
  {
    if (v19 && v18 == v19)
    {
      goto LABEL_12;
    }

LABEL_17:
    v26[0] = 0;
    v26[1] = 0xE000000000000000;
    a3 = v26;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000038, 0x800000019752B150);
    sub_1975227FC();
    sub_1975223EC();
    __break(1u);
    goto LABEL_18;
  }

  if (v19)
  {
    goto LABEL_17;
  }

LABEL_12:
  v20 = *(v5 + 16);
  if ((v15 & 1) == 0)
  {
    v20(v9, v25, a1);
    swift_getAssociatedTypeWitness();
    a3[3] = sub_197521AAC();
    a3[4] = swift_getWitnessTable();
    swift_dynamicCast();
    return result;
  }

  v20(v13, v25, a1);
  swift_getAssociatedTypeWitness();
  v21 = sub_197521AAC();
  sub_197521F5C();
  swift_dynamicCast();
  v22 = v26[0];
  if (v26[0])
  {
    a3[3] = v21;
    a3[4] = swift_getWitnessTable();
    *a3 = v22;
    return result;
  }

LABEL_18:
  a3[4] = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  return result;
}

uint64_t sub_19744725C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_19744D0E0(a1, a2);
  }

  return a1;
}

uint64_t sub_197447270(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_197521AAC();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for EditingState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_197447300(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a3;
  v44 = a8;
  v41 = a1;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v42 = a6;
  v16 = sub_197521AAC();
  v17 = sub_197521F5C();
  sub_197522B2C();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    v20 = *(a7 + 88);

    WitnessTable = swift_getWitnessTable();
    v47 = v44;
    v21 = swift_getWitnessTable();
    v20(&v54, v19, v17, v42, v21, a4, a7);
    if (v54)
    {
      v45 = v44;
      v22 = swift_getWitnessTable();
      v23 = sub_19743055C(1, v16, v22);

      return v23;
    }

    goto LABEL_24;
  }

  v24 = a2;
  v25 = v16;
  (*(v12 + 16))(v15, v43, a4);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for _StitchedBackingData();
  if (!swift_dynamicCast())
  {
    goto LABEL_29;
  }

  v26 = *(v54 + 16);

  v27 = sub_1973F8364(v24);
  v29 = *(v26 + 16);
  if (!*(v29 + 16))
  {

    goto LABEL_12;
  }

  v30 = sub_1973F4028(v27, v28);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_12:
    memset(v59, 0, 32);
    goto LABEL_13;
  }

  v33 = *(*(v29 + 56) + 8 * v30);
  swift_beginAccess();
  if ((v33 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v34 = *(v26 + 32);
    if (v33 < *(v34 + 16))
    {
      sub_1973FE14C(v34 + 32 * v33 + 32, v59, &qword_1EAF2AF20, &unk_19752F320);
LABEL_13:

      sub_1973FE14C(v59, &v48, &qword_1EAF2AF20, &unk_19752F320);
      if (*(&v49 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
        v35 = swift_dynamicCast();
        v36 = v25;
        v37 = v44;
        if (v35)
        {
          if (v54)
          {
            sub_1973FE58C(v59, &qword_1EAF2AF20, &unk_19752F320);

            v48 = v54;
            v49 = v55;
            v51 = v57;
            v52 = v58;
            v50 = v56;
            v23 = v54;
            sub_1974416CC(v57);
            __swift_destroy_boxed_opaque_existential_1Tm_1(&v48 + 1);
            return v23;
          }
        }

        else
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v54 = 0u;
        }
      }

      else
      {
        sub_1973FE58C(&v48, &qword_1EAF2AF20, &unk_19752F320);
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v36 = v25;
        v37 = v44;
      }

      sub_1973FE58C(&v54, &qword_1EAF2B5F8, &qword_19752EA50);
      sub_1973FE14C(v59, &v54, &qword_1EAF2AF20, &unk_19752F320);
      if (!*(&v55 + 1))
      {
        sub_1973FE58C(v59, &qword_1EAF2AF20, &unk_19752F320);

        sub_1973FE58C(&v54, &qword_1EAF2AF20, &unk_19752F320);
        return 0;
      }

      if (swift_dynamicCast())
      {
        v53 = v37;
        *&v54 = v48;
        v38 = swift_getWitnessTable();
        v23 = sub_19743055C(1, v36, v38);

        sub_1973FE58C(v59, &qword_1EAF2AF20, &unk_19752F320);
        return v23;
      }

      sub_1973FE58C(v59, &qword_1EAF2AF20, &unk_19752F320);
LABEL_24:

      return 0;
    }
  }

  __break(1u);
LABEL_29:
  *&v54 = 0;
  *(&v54 + 1) = 0xE000000000000000;
  sub_1975221EC();

  *&v54 = 0xD00000000000002ELL;
  *(&v54 + 1) = 0x8000000197525AA0;
  v40 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v40);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_19744790C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *v3;
  v9 = *a1;
  v10 = v3[2];
  v11 = *(v10 + 24);
  v12 = *(v11 + 16);

  if (!v12 || (v13 = sub_1973F7814(a1), (v14 & 1) == 0))
  {
    v25 = 0u;
    v26 = 0u;

    goto LABEL_10;
  }

  v15 = *(*(v11 + 56) + 8 * v13);
  swift_beginAccess();
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = *(v10 + 32);
  if (v15 >= *(v16 + 16))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    *&v25 = 0;
    *(&v25 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000026, 0x800000019752B620);
    v23 = a1;
    v21 = *(v8 + 232);
    v22 = *(v9 + *MEMORY[0x1E69E77B0] + 8);
    sub_197522B2C();
    sub_1975227FC();
    MEMORY[0x19A8DFF80](0x206D6F726620, 0xE600000000000000);
    v23 = v4[2];
    type metadata accessor for KnownKeysDictionary();
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    sub_1975227FC();
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  sub_197413B20(v16 + 32 * v15 + 32, &v25);

  if (*(&v26 + 1))
  {
    sub_1974028B8(&v25, v27);
    if (*(v4 + 48) != 1)
    {
      sub_197404860(v27, &v25);
      v19 = *(*(v9 + *MEMORY[0x1E69E77B0] + 8) + 16);
      swift_dynamicCast();
      PersistentModel.persistentModelID.getter(v19, a2, &v23);
      swift_unknownObjectRelease();
LABEL_14:
      result = __swift_destroy_boxed_opaque_existential_1Tm_7(v27);
      v20 = v24;
      *a3 = v23;
      *(a3 + 8) = v20;
      return result;
    }

    sub_197404860(v27, &v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm_7(v27);
      v17 = v24;
      result = swift_unknownObjectRelease();
      *a3 = v23;
      *(a3 + 8) = v17;
      return result;
    }

    sub_197404860(v27, &v25);
    if (swift_dynamicCast())
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

LABEL_10:
  result = sub_1973FE5EC(&v25, &qword_1EAF2AF20, &unk_19752F320);
  *a3 = 0;
  *(a3 + 8) = -1;
  return result;
}

uint64_t sub_197447C98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9)
{
  v42 = a8;
  v15 = *(a5 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v41 = a6;
  sub_197521F5C();
  sub_197522B2C();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    v22 = sub_1973F8364(a2);
    v24 = *(a4 + 16);
    if (*(v24 + 16))
    {
      v25 = sub_1973F4028(v22, v23);
      v27 = v26;

      if (v27)
      {
        v28 = *(*(v24 + 56) + 8 * v25);
        result = swift_beginAccess();
        if ((v28 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v29 = *(a4 + 32);
          if (v28 < *(v29 + 16))
          {
            sub_1973FE14C(v29 + 32 * v28 + 32, v48, &qword_1EAF2AF20, &unk_19752F320);
LABEL_13:
            v33 = v41;
            sub_1973FE14C(v48, &v45, &qword_1EAF2AF20, &unk_19752F320);
            if (v47)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
              if (swift_dynamicCast())
              {
                sub_1973FE58C(v48, &qword_1EAF2AF20, &unk_19752F320);
                v34 = v43;
                v35 = v44;
                result = swift_unknownObjectRelease();
                v36 = v42;
                *v42 = v34;
                *(v36 + 8) = v35;
                return result;
              }
            }

            else
            {
              sub_1973FE58C(&v45, &qword_1EAF2AF20, &unk_19752F320);
            }

            sub_1973FE14C(v48, &v45, &qword_1EAF2AF20, &unk_19752F320);
            if (v47)
            {
              if (swift_dynamicCast())
              {
                PersistentModel.persistentModelID.getter(v33, a9, &v45);
                swift_unknownObjectRelease();
                result = sub_1973FE58C(v48, &qword_1EAF2AF20, &unk_19752F320);
                v31 = v45;
                v32 = v46;
                goto LABEL_20;
              }

              v38 = v48;
            }

            else
            {
              sub_1973FE58C(v48, &qword_1EAF2AF20, &unk_19752F320);
              v38 = &v45;
            }

            result = sub_1973FE58C(v38, &qword_1EAF2AF20, &unk_19752F320);
            goto LABEL_25;
          }
        }

        __break(1u);
        return result;
      }
    }

    else
    {
    }

    memset(v48, 0, sizeof(v48));
    goto LABEL_13;
  }

  v20 = v19;
  (*(v15 + 16))(v18, a3, a5);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for _KKMDBackingData();

  if (swift_dynamicCast())
  {
    sub_19744790C(v20, a9, v42);
  }

  v30 = v41;
  if ((*(a7 + 80))(v20, v41, a9, a5, a7))
  {
    PersistentModel.persistentModelID.getter(v30, a9, v48);
    swift_unknownObjectRelease();

    v31 = *&v48[0];
    v32 = BYTE8(v48[0]);
LABEL_20:
    v37 = v42;
    *v42 = v31;
    *(v37 + 8) = v32;
    return result;
  }

LABEL_25:
  v39 = v42;
  *v42 = 0;
  *(v39 + 8) = -1;
  return result;
}

uint64_t sub_1974480F8(uint64_t a1, uint64_t a2)
{
  v3 = swift_beginAccess();
  v5 = *(a2 + 48);
  v7 = *(v5 + 16);
  v6 = v5 + 16;
  v8 = v7 + 1;
  while (--v8)
  {
    v9 = (v6 + 40);
    v10 = *(v6 + 16);
    v6 += 40;
    if (v10 == 1)
    {
      v11 = *v9;
      if (*v9)
      {
        v12 = *(v9 - 1);
        MEMORY[0x1EEE9AC00](v3, v4);

        sub_19744E3BC(v12, v11, sub_19744E704);

        sub_19744C1E4(0, 0xF000000000000000);
        sub_19744725C(0, 0xF000000000000000);
        return 0;
      }

      break;
    }
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD00000000000004DLL, 0x800000019752A1C0);
  v14 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v14);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974482A8(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  (*(v4 + 16))(&v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B668, &qword_19752F2E8);
  return swift_dynamicCast();
}

uint64_t sub_197448384(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1974483E4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *a4;
  swift_beginAccess();
  v15 = a4[4];
  v16 = *(v14 + 80);
  v17 = *(v14 + 88);

  v18 = sub_197401480(a3, a1, 0, v15, v16, a7, v17, a9);

  swift_beginAccess();
  v19 = *(a5 + 16);
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_197433F80(0, v19[2] + 1, 1, v19);
    *(a5 + 16) = v19;
  }

  v21 = v19[2];
  v22 = v19[3];
  if (v21 >= v22 >> 1)
  {
    v24 = v19[2];
    v19 = sub_197433F80((v22 > 1), v21 + 1, 1, v19);
    v21 = v24;
    *(a5 + 16) = v19;
  }

  sub_19743F3E4(v21, v18, (a5 + 16), a7, a9);
  *(a5 + 16) = v19;
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_19744857C(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v6(a1, a1 + *(TupleTypeMetadata2 + 48));
}

void *DataStoreSaveChangesResult.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t sub_197448648(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_197520DAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B320, &qword_19752D4C8);
  v52 = a2;
  result = sub_19752243C();
  v15 = result;
  if (*(v12 + 16))
  {
    v55 = v11;
    v56 = v6;
    v48 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v49 = (v7 + 16);
    v50 = v7;
    v53 = (v7 + 32);
    v22 = result + 64;
    v51 = v12;
    while (v20)
    {
      v28 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v31 = v28 | (v16 << 6);
      v32 = *(v12 + 48);
      v54 = *(v7 + 72);
      v33 = v32 + v54 * v31;
      if (v52)
      {
        (*v53)(v55, v33, v56);
        v34 = (*(v12 + 56) + (v31 << 6));
        v36 = *v34;
        v35 = v34[1];
        v37 = v34[3];
        v59 = v34[2];
        v60 = v37;
        v57 = v36;
        v58 = v35;
      }

      else
      {
        (*v49)(v55, v33, v56);
        sub_197408378(*(v12 + 56) + (v31 << 6), &v57);
      }

      v38 = *(v15 + 40);
      sub_197413D04(qword_1ED7C9228, MEMORY[0x1E6968B10]);
      result = sub_1975216AC();
      v39 = -1 << *(v15 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v22 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        v7 = v50;
        v12 = v51;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v22 + 8 * v41);
          if (v45 != -1)
          {
            v23 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v40) & ~*(v22 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
      v7 = v50;
      v12 = v51;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v53)(*(v15 + 48) + v54 * v23, v55, v56);
      v24 = (*(v15 + 56) + (v23 << 6));
      v26 = v59;
      v25 = v60;
      v27 = v58;
      *v24 = v57;
      v24[1] = v27;
      v24[2] = v26;
      v24[3] = v25;
      ++*(v15 + 16);
    }

    v29 = v16;
    while (1)
    {
      v16 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v30 = v17[v16];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v20 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_36;
    }

    v46 = 1 << *(v12 + 32);
    v3 = v48;
    if (v46 >= 64)
    {
      bzero(v17, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v46;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t sub_197448A30(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197448A6C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197448AA8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1975220EC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1975220EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_19745B31C(&qword_1EAF2BCA0, &qword_1EAF2BC98, &qword_197532030);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BC98, &qword_197532030);
            v9 = sub_1974805CC(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_19752202C();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_197448C4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_197448C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a1;
  if (!*(a1 + 8))
  {
    sub_1974028EC(*a1, 0);
    v12 = [v6 entityName];
    v7 = sub_1975217BC();
    v8 = v13;

    v14 = v6;
    v15 = 0;
    goto LABEL_8;
  }

  if (*(a1 + 8) != 1)
  {
    sub_1974028EC(*a1, 2);
    v7 = sub_19750A588();
    v8 = v16;
    v14 = v6;
    v15 = 2;
LABEL_8:
    sub_1974028C8(v14, v15);
    v9 = *(a2 + 16);
    if (!v9)
    {
      goto LABEL_4;
    }

LABEL_9:
    v11 = v9;
    goto LABEL_10;
  }

  v7 = v6[9];
  v8 = v6[10];

  v9 = *(a2 + 16);
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_4:
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_19:

LABEL_21:
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000034, 0x8000000197527AC0);
    swift_beginAccess();
    v29 = *a1;
    v30 = *(a1 + 8);
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v11 = Strong;
LABEL_10:
  v17 = *(v11 + 80);

  if (!*(v17 + 16))
  {
    goto LABEL_19;
  }

  v18 = sub_1973F4028(v7, v8);
  if ((v19 & 1) == 0)
  {
    goto LABEL_19;
  }

  v20 = *(*(v17 + 56) + 8 * v18);

  v21 = *(v20 + 144);
  if (!v21)
  {

    goto LABEL_21;
  }

  v22 = *(v20 + 152);

  v23 = sub_1974498AC(v21, a1, a2, v21, v22);
  v24 = swift_unknownObjectRetain();
  sub_1974339E4(v24, a2, v21, v22);
  swift_unknownObjectRelease();
  swift_beginAccess();
  v25 = *(a2 + 64);
  if (v25)
  {
    swift_beginAccess();
    v26 = *a1;
    v27 = *(a1 + 8);

    sub_1974028EC(v26, v27);
    sub_197455CE4(v26, v27, v25);

    sub_1974028C8(v26, v27);
    if (PersistentModel.modelContext.getter(v21, v22))
    {
    }

    else
    {
      sub_1974BF438(v23, a2, v21, v22);
      sub_1974B7028(v23, v21, v22);
    }
  }

  *a3 = v23;
  a3[1] = v22;
  return result;
}

uint64_t sub_197449054(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197449090(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1974490F0(uint64_t *a1, uint64_t *a2)
{
  v5 = MEMORY[0x19A8E1370]();
  v6 = a2[5];
  sub_1974EADDC(v2, a1, a2[2], a2[3], a2[4], &v8, &v7);
  objc_autoreleasePoolPop(v5);
}

uint64_t ModelContext.__deallocating_deinit()
{
  ModelContext.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t DefaultStore.invalidateState(for:)(uint64_t a1)
{
  v3 = sub_19752135C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 16))(v8, a1, v3);
  v9 = *(v1 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
  v21 = v1;
  v22 = v8;
  v18 = sub_197449450;
  v19 = &v20;

  os_unfair_lock_lock(v9 + 4);
  sub_197405074(aBlock);
  os_unfair_lock_unlock(v9 + 4);
  v10 = aBlock[0];

  if (v10)
  {
    v11 = *(v10 + 24);

    sub_19744A4E8();

    v12 = *(v10 + 16);
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    aBlock[4] = sub_197472374;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1974635F0;
    aBlock[3] = &block_descriptor_0;
    v14 = _Block_copy(aBlock);
    v15 = v12;

    [v15 performBlock_];
    _Block_release(v14);
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_197449404()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *sub_19744946C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return v0;
}

uint64_t sub_1974494AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v35 = a4;
  v36 = a7;
  v33 = a5;
  v34 = a6;
  v12 = sub_197521F5C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &AssociatedTypeWitness - v17;
  v19 = *(a10 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16, v21);
  v23 = &AssociatedTypeWitness - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_197522B2C();
  v24 = swift_dynamicCastClassUnconditional();
  (*(a11 + 104))(v24, v12, a8, a11);
  if ((*(v19 + 48))(v18, 1, a10) == 1)
  {
    return (*(v13 + 8))(v18, v12);
  }

  (*(v19 + 32))(v23, v18, a10);
  type metadata accessor for Schema.Attribute();
  v39 = a10;
  v26 = __swift_allocate_boxed_opaque_existential_2Tm_0(&v37);
  (*(v19 + 16))(v26, v23, a10);
  v27 = sub_1974480F8(&v37, v35);
  v29 = v28;
  __swift_destroy_boxed_opaque_existential_1Tm_1(&v37);
  if (v29 >> 60 == 15)
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001ELL, 0x80000001975259F0);
    v31 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v31);

    MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    MEMORY[0x19A8DFF80](v33, v34);
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    MEMORY[0x19A8DFF80](1635017028, 0xE400000000000000);
    MEMORY[0x19A8DFF80](0xD000000000000039, 0x8000000197525A10);
    MEMORY[0x19A8DFF80](1635017028, 0xE400000000000000);
    result = sub_1975223EC();
    __break(1u);
  }

  else
  {
    v39 = MEMORY[0x1E6969080];
    v40 = sub_1974122A4();
    v41 = sub_1974122F8();
    v37 = v27;
    v38 = v29;
    (*(v19 + 8))(v23, a10);
    v30 = v36;
    swift_beginAccess();
    return sub_19743E090(&v37, v30);
  }

  return result;
}

uint64_t sub_197449870(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974498AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for _FullFutureBackingData();
  swift_beginAccess();
  v11 = *(a2 + 8);
  v14 = *a2;
  v15 = v11;
  sub_1974028EC(v14, v11);

  v12 = sub_197449BBC(a1, &v14, a3);
  _SD_set_faulting_backingdata_tsd(1);
  v16 = v10;
  WitnessTable = swift_getWitnessTable();
  v14 = v12;
  return (*(a5 + 48))(&v14, a4, a5);
}

uint64_t sub_1974499A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *a2;
  v7 = *(a2 + 8);
  type metadata accessor for _ModelMetadata();
  swift_allocObject();
  *(v3 + 40) = sub_1973FD110();
  if (v7)
  {
    if (v7 == 1 && (v6[33] & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (![v6 isTemporaryID])
  {
    goto LABEL_11;
  }

  if (qword_1EAF2AC88 != -1)
  {
    swift_once();
  }

  v8 = sub_19752157C();
  __swift_project_value_buffer(v8, qword_1EAF33DD0);
  sub_1974028EC(v6, v7);
  v9 = sub_19752155C();
  v10 = sub_197521DDC();
  sub_1974028C8(v6, v7);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    sub_1974028EC(v6, v7);
    v13 = sub_1975217CC();
    v15 = sub_197462310(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1973F2000, v9, v10, "Illegal attempt to create a full future for a temporary identifier. These won't be resolvable after the temporary object is deallocated: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v12);
    MEMORY[0x19A8E1B50](v12, -1, -1);
    MEMORY[0x19A8E1B50](v11, -1, -1);
  }

LABEL_11:
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = a3;
  v16 = *(v4 + 40);
  v17 = *(v16 + 16);
  *(v16 + 16) = a3;

  *(*(v4 + 40) + 112) = 1;
  return v4;
}

uint64_t sub_197449BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  sub_1974499A4(v5, a2, a3);
  return v5;
}

uint64_t sub_197449C90(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197449D18(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t ModelContext.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for EditingState();
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x19A8E1370](v5);
  v9 = [objc_opt_self() defaultCenter];
  [v9 removeObserver_];

  sub_19740E3D0(0);
  current_context_tsd = _SD_get_current_context_tsd();
  if (current_context_tsd)
  {
    v11 = swift_retain_n();

    swift_retain_n();
    v12 = sub_1974BEE44(v1);

    if (v12)
    {
    }
  }

  v13 = &unk_1ED7CE000;
  if (*(v1 + 16))
  {
    Strong = *(v1 + 16);
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
LABEL_12:

      goto LABEL_13;
    }
  }

  swift_beginAccess();
  v15 = *(Strong + 48);
  v16 = *(v15 + 16);
  if (!v16)
  {

    goto LABEL_12;
  }

  v39[2] = Strong;
  v39[3] = current_context_tsd;
  v40 = v8;
  v17 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  v18 = v15 + 32;

  v39[1] = v15;

  swift_beginAccess();
  do
  {
    sub_1974047F8(v18, v41, &qword_1EAF2AF38, &qword_19752C6A8);
    v19 = v42;
    ObjectType = swift_getObjectType();
    sub_197404E70(v1 + v17, v7);
    (*(v19 + 120))(v7, ObjectType, v19);
    swift_unknownObjectRelease();
    sub_19740BE74(v7, type metadata accessor for EditingState);
    sub_197414BEC(v41);
    v18 += 56;
    --v16;
  }

  while (v16);

  v13 = &unk_1ED7CE000;
  v8 = v40;
LABEL_13:
  objc_autoreleasePoolPop(v8);
  v21 = *(v1 + 16);

  swift_weakDestroy();
  v22 = *(v1 + 32);

  v23 = *(v1 + 64);

  v24 = *(v1 + 72);

  v25 = *(v1 + 80);

  v26 = *(v1 + 88);

  v27 = *(v1 + 96);

  v28 = *(v1 + 104);

  v29 = *(v1 + 112);

  v30 = *(v1 + 120);

  v31 = *(v1 + 128);

  v32 = *(v1 + 136);

  v33 = *(v1 + 144);

  v34 = *(v1 + 152);

  v35 = *(v1 + 160);

  v36 = *(v1 + 168);

  sub_19740BE74(v1 + v13[220], type metadata accessor for EditingState);

  v37 = *(v1 + OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration);

  return v1;
}

uint64_t sub_19744A0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC9SwiftData12DefaultStore__contextsByEditorIdentifier;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = sub_197404D0C(a2);
  v9 = 0;
  if (v10)
  {
    v11 = v8;
    v12 = *(a1 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a1 + v6);
    *(a1 + v6) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19747A4FC();
    }

    v15 = *(v14 + 48);
    v16 = sub_19752135C();
    (*(*(v16 - 8) + 8))(v15 + *(*(v16 - 8) + 72) * v11, v16);
    v9 = *(*(v14 + 56) + 8 * v11);
    sub_19744A1C8(v11, v14);
    *(a1 + v6) = v14;
  }

  *a3 = v9;
  return swift_endAccess();
}

unint64_t sub_19744A1C8(int64_t a1, uint64_t a2)
{
  v44 = sub_19752135C();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v44, v6);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v45 = v8;
    v14 = sub_19752207C();
    v15 = v44;
    v8 = v45;
    v16 = v13;
    v42 = (v14 + 1) & v13;
    v18 = *(v4 + 16);
    v17 = v4 + 16;
    v40 = a2 + 64;
    v41 = v18;
    v19 = *(v17 + 56);
    v39 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v12;
      v22 = v43;
      v23 = v16;
      v24 = v17;
      v25 = v8;
      v41(v43, *(v8 + 48) + v19 * v12, v15);
      v26 = *(v25 + 40);
      sub_197404DE0(&qword_1ED7C9B68, MEMORY[0x1E69695A8]);
      v27 = sub_1975216AC();
      result = (*v39)(v22, v15);
      v16 = v23;
      v28 = v27 & v23;
      if (a1 >= v42)
      {
        if (v28 >= v42 && a1 >= v28)
        {
LABEL_15:
          v8 = v45;
          v31 = *(v45 + 48);
          result = v31 + v20 * a1;
          v17 = v24;
          if (v20 * a1 < v21 || (v19 = v20, result >= v31 + v21 + v20))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v8 = v45;
            v19 = v20;
            v16 = v23;
            v10 = v40;
          }

          else
          {
            v10 = v40;
            if (v20 * a1 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v8 = v45;
              v19 = v20;
              v16 = v23;
            }
          }

          v32 = *(v8 + 56);
          v33 = (v32 + 8 * a1);
          v34 = (v32 + 8 * v12);
          if (a1 != v12 || v33 >= v34 + 1)
          {
            *v33 = *v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v28 >= v42 || a1 >= v28)
      {
        goto LABEL_15;
      }

      v17 = v24;
      v10 = v40;
      v19 = v20;
      v8 = v45;
LABEL_4:
      v12 = (v12 + 1) & v16;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(v8 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v37;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_19744A4E8()
{
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_19744A624(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  v3 = v0[2];
  v0[2] = v2;

  v4 = sub_19744A638(v1);
  swift_beginAccess();
  v5 = v0[3];
  v0[3] = v4;

  v6 = sub_19744A624(v1);
  swift_beginAccess();
  v7 = v0[4];
  v0[4] = v6;

  v8 = sub_19744943C(v1);
  swift_beginAccess();
  v9 = v0[5];
  v0[5] = v8;

  v10 = sub_19744A64C(v1);
  swift_beginAccess();
  v11 = v0[6];
  v0[6] = v10;

  v12 = sub_19744A624(v1);
  swift_beginAccess();
  v13 = v0[7];
  v0[7] = v12;
}

uint64_t sub_19744A660()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_19744A6A0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t ModelActor.unownedExecutor.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = v4();
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    swift_unknownObjectRelease();
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000016, 0x8000000197524840);
    (v4)(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B160, &unk_19752CF90);
    sub_19752235C();
    swift_unknownObjectRelease();
    result = sub_1975223EC();
    __break(1u);
  }

  else
  {
    v8 = v6;
    swift_getObjectType();
    v9 = *(v8 + 16);
    v10 = sub_197521B4C();
    swift_unknownObjectRelease();
    return v10;
  }

  return result;
}

uint64_t DefaultSerialModelExecutor.enqueue(_:)()
{
  v1 = v0;
  v2 = sub_197521B3C();
  v3 = *(v0 + 32);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_197472ABC;
    *(v5 + 24) = v4;
    v15[4] = sub_197472AC4;
    v15[5] = v5;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_197472418;
    v15[3] = &block_descriptor_1;
    v6 = _Block_copy(v15);
    v7 = v3;

    [v7 performBlockAndWait_];

    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    v10 = *(v0 + 16);
    if (_SD_get_current_context_tsd())
    {
      v11 = swift_retain_n();

      sub_19744AB88(v10);
    }

    else
    {
      _SD_get_current_context_tsd();
      type metadata accessor for _SwiftDataContextThreadLocalState();
      v12 = swift_allocObject();
      *(v12 + 16) = MEMORY[0x1E69E7CC0];
      sub_19744AB88(v10);
      _SD_set_current_context_tsd(v12);
    }

    sub_19744ADA8(&qword_1ED7C6D30);
    swift_job_run();
    result = _SD_get_current_context_tsd();
    if (result)
    {
      v13 = swift_retain_n();

      v14 = sub_19744BE90(v10);

      if (v14)
      {
      }
    }
  }

  return result;
}

uint64_t sub_19744AB1C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19744AB88(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v2 + 16);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v14 = *(v2 + 16);
    }

    result = sub_1975220EC();
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_10;
    }
  }

  v6 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_23:

    MEMORY[0x19A8E0960](v6, v4);

    goto LABEL_8;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = *(v4 + 8 * v6 + 32);

LABEL_8:
  Strong = swift_weakLoadStrong();

  if (Strong)
  {

    if (Strong == a1)
    {
      return result;
    }
  }

LABEL_10:
  type metadata accessor for _SwiftDataContextScope();
  v9 = swift_allocObject();
  swift_weakInit();
  *(v9 + 24) = 0;
  swift_weakAssign();
  if (!*(a1 + 16))
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v10 = result;
      goto LABEL_14;
    }

LABEL_26:
    __break(1u);
    return result;
  }

  v10 = *(a1 + 16);
LABEL_14:
  v11 = *(v10 + 72);

  v12 = *(v9 + 24);
  *(v9 + 24) = v11;

  swift_beginAccess();

  MEMORY[0x19A8E00D0](v13);
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1975219FC();
  }

  sub_197521A4C();
  swift_endAccess();
}

uint64_t sub_19744ADA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DefaultSerialModelExecutor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ModelActor.modelContext.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 16))(ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_19744AEE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v55 = a3;
  v54 = a2;
  v61 = a4;
  sub_19752139C();
  v53 = sub_197521F5C();
  v9 = *(v53 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v53, v11);
  v52 = &v43 - v12;
  v13 = type metadata accessor for EditingState();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v50 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a4;
  v57 = a5;
  v51 = type metadata accessor for DataStoreBatchDeleteRequest();
  v17 = *(v51 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v51, v19);
  v21 = &v43 - v20;
  v22 = *(v5 + 16);
  v58 = v6;
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
      goto LABEL_20;
    }

    v23 = result;
  }

  swift_beginAccess();
  v25 = *(v23 + 48);

  v26 = *(v25 + 16);
  if (!v26)
  {
  }

  v48 = v21;
  v27 = v25 + 32;
  v49 = v5;
  v47 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  result = swift_beginAccess();
  v28 = 0;
  v46 = (v9 + 16);
  v45 = (v17 + 8);
  v44 = v25;
  while (v28 < *(v25 + 16))
  {
    sub_1974047F8(v27, v59, &qword_1EAF2AF38, &qword_19752C6A8);
    v29 = v60;
    swift_getObjectType();
    v30 = swift_conformsToProtocol2();
    if (v30)
    {
      v31 = v29 == 0;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = v30;
      v33 = v26;
      v34 = v50;
      sub_197404E70(v49 + v47, v50);
      v35 = v52;
      (*v46)(v52, v54, v53);
      v36 = v48;
      v37 = v34;
      v38 = v35;
      v39 = v56;
      v40 = v57;
      sub_19744B340(v37, v38, v55 & 1, v48);
      ObjectType = swift_getObjectType();
      v42 = v58;
      (*(v32 + 16))(v36, v39, v40, ObjectType, v32);
      if (v42)
      {
        swift_unknownObjectRelease();

        (*v45)(v36, v51);
        return sub_197414BEC(v59);
      }

      v58 = 0;
      swift_unknownObjectRelease();
      (*v45)(v36, v51);
      v25 = v44;
      v26 = v33;
    }

    ++v28;
    result = sub_197414BEC(v59);
    v27 += 56;
    if (v26 == v28)
    {
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_19744B340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1974074E0(a1, a4);
  v7 = type metadata accessor for DataStoreBatchDeleteRequest();
  v8 = *(v7 + 36);
  sub_19752139C();
  v9 = sub_197521F5C();
  result = (*(*(v9 - 8) + 32))(a4 + v8, a2, v9);
  *(a4 + *(v7 + 40)) = a3;
  return result;
}

void DefaultStore.delete<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;
  v5 = MEMORY[0x19A8E1370]();
  sub_197463DBC(a1, v3, sub_19744B504, v6);
  objc_autoreleasePoolPop(v5);
}

void sub_19744B524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v55 = a2;
  v61 = *MEMORY[0x1E69E9840];
  v60 = a4;
  v6 = sub_19752139C();
  v7 = sub_197521F5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v49 - v12;
  v51 = *(v6 - 8);
  v14 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v11, v15);
  v52 = &v49 - v16;
  v54 = *(a1 + 16);
  sub_1973F7AAC();
  v17 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v18 = sub_19752178C();

  v19 = [v17 initWithEntityName_];

  v20 = type metadata accessor for DataStoreBatchDeleteRequest();
  v21 = v7;
  v22 = v7;
  v23 = v51;
  (*(v8 + 16))(v13, v55 + *(v20 + 36), v22);
  if ((*(v23 + 48))(v13, 1, v6) == 1)
  {
    (*(v8 + 8))(v13, v21);
  }

  else
  {
    v24 = v52;
    (*(v23 + 32))(v52, v13, v6);
    v25 = v53;
    sub_19744BBA0(v24, v50, a4);
    if (v25)
    {
      (*(v23 + 8))(v52, v6);
      v27 = v54;
LABEL_11:

LABEL_23:
      v43 = *MEMORY[0x1E69E9840];
      return;
    }

    v28 = v26;
    [v19 setPredicate_];

    (*(v23 + 8))(v52, v6);
  }

  [v19 setIncludesSubentities_];
  v29 = v19;
  v30 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  [v30 setResultType:0];
  *&v59[0] = 0;
  v27 = v54;
  v31 = [v54 executeRequest:v30 error:v59];
  v32 = *&v59[0];
  if (!v31)
  {
    v37 = *&v59[0];
    sub_1975211DC();

    swift_willThrow();
    v19 = v29;
    goto LABEL_11;
  }

  v33 = v31;
  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (v34)
  {
    v35 = v34;
    v36 = v32;
    if ([v35 result])
    {
      sub_197521FDC();
      swift_unknownObjectRelease();
    }

    else
    {
      v57 = 0u;
      v58 = 0u;
    }

    v59[0] = v57;
    v59[1] = v58;
    if (*(&v58 + 1))
    {
      sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v38 = v56;
        if ([v56 BOOLValue])
        {
          v39 = v30;
        }

        else
        {
          if (qword_1ED7C9848 != -1)
          {
            swift_once();
          }

          v40 = sub_19752157C();
          __swift_project_value_buffer(v40, qword_1ED7CE648);
          v39 = sub_19752155C();
          v41 = sub_197521DDC();
          if (os_log_type_enabled(v39, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            _os_log_impl(&dword_1973F2000, v39, v41, "NSBatchDeleteRequest returned a false status but no error", v42, 2u);
            MEMORY[0x19A8E1B50](v42, -1, -1);
          }
        }

        goto LABEL_23;
      }
    }

    else
    {
      sub_19740C044(v59, &qword_1EAF2AF20, &unk_19752F320);
    }

    *&v59[0] = 0;
    *(&v59[0] + 1) = 0xE000000000000000;
    sub_1975221EC();

    *&v59[0] = 0xD000000000000020;
    *(&v59[0] + 1) = 0x80000001975246F0;
    v45 = [v35 description];
    v46 = sub_1975217BC();
    v48 = v47;

    MEMORY[0x19A8DFF80](v46, v48);
  }

  else
  {
    v44 = v32;
  }

  sub_1975223EC();
  __break(1u);
}

void sub_19744BBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x19A8E1370]();
  sub_1974DE4EC(a1, a2, a3, &v7, &v8);
  objc_autoreleasePoolPop(v6);
}

void sub_19744BD48(uint64_t *a1, uint64_t a2)
{
  v5 = MEMORY[0x19A8E1370]();
  sub_1974E36E0(v2, a1, *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48), &v7, &v6);
  objc_autoreleasePoolPop(v5);
}

unint64_t sub_19744BE3C()
{
  result = qword_1EAF2ACE0;
  if (!qword_1EAF2ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2ACE0);
  }

  return result;
}

BOOL sub_19744BE90(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
    goto LABEL_30;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = v4 - 1;
  if (v4 < 1)
  {
    goto LABEL_24;
  }

  do
  {
    v6 = 0;
    if (!v5)
    {
LABEL_7:
      if ((v6 & 1) == 0)
      {
        v7 = 0;
        v6 = 1;
        goto LABEL_9;
      }

      break;
    }

    while (1)
    {
      v7 = v5 - 1;
LABEL_9:
      v8 = *(v1 + 16);
      if ((v8 & 0xC000000000000001) != 0)
      {
        v18 = *(v1 + 16);

        v9 = MEMORY[0x19A8E0960](v5, v8);

        goto LABEL_12;
      }

      if (v5 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v9 = *(v8 + 8 * v5 + 32);

LABEL_12:
      if (swift_weakLoadStrong())
      {

        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v11 = Strong;

          if (v11 == a1)
          {
            swift_beginAccess();
            sub_19744C118(v5);
            swift_endAccess();

            v19 = *(v9 + 24);
            *(v9 + 24) = 0;

            goto LABEL_24;
          }
        }

        v5 = v7;
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
        swift_beginAccess();
        v12 = *(v1 + 16);
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v1 + 16) = v12;
        if (!isUniquelyReferenced_nonNull_bridgeObject || v12 < 0 || (v12 & 0x4000000000000000) != 0)
        {
          v12 = sub_19751E880(v12);
          *(v1 + 16) = v12;
        }

        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v5 >= v14)
        {
          goto LABEL_29;
        }

        v15 = v14 - 1;
        v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20);
        memmove(((v12 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 32), ((v12 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 40), 8 * (v14 - 1 - v5));
        *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v15;
        *(v1 + 16) = v12;
        swift_endAccess();

        v17 = *(v9 + 24);
        *(v9 + 24) = 0;

        v5 = v7;
        if (!v7)
        {
          goto LABEL_7;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v23 = sub_1975220EC();
    v5 = v23 - 1;
  }

  while (v23 >= 1);
LABEL_24:
  v20 = *(v1 + 16);
  if (v20 >> 62)
  {
    if (v20 < 0)
    {
      v24 = *(v1 + 16);
    }

    v21 = sub_1975220EC();
    if (!v21)
    {
LABEL_26:
      _SD_remove_current_context_tsd();
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_26;
    }
  }

  return v21 == 0;
}

uint64_t sub_19744C130()
{
  swift_weakAssign();
  v1 = *(v0 + 24);
  *(v0 + 24) = 0;

  swift_weakDestroy();
  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_19744C188()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  *(v0 + 16) = MEMORY[0x1E69E7CC0];

  v2 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_19744C1E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_19744D134(a1, a2);
  }

  return a1;
}

uint64_t sub_19744C1F8(void *a1, char a2, void *a3, uint64_t *a4)
{
  __swift_project_boxed_opaque_existential_1Tm_4(a3, a3[3]);
  v7 = sub_19752281C();
  if (a2)
  {
    v8 = [a1 reverseTransformedValue_];
  }

  else
  {
    v8 = [a1 transformedValue_];
  }

  v9 = v8;
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = *a4;
      v11 = a4[1];
      *a4 = v17;
      return sub_19744725C(v10, v11);
    }
  }

  else
  {
    sub_1973F9E68(v19);
  }

  *&v19[0] = 0;
  *(&v19[0] + 1) = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752A2B0);
  sub_19752235C();
  MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
  MEMORY[0x19A8DFF80](1635017028, 0xE400000000000000);
  MEMORY[0x19A8DFF80](0x20676E69737520, 0xE700000000000000);
  v13 = [a1 description];
  v14 = sub_1975217BC();
  v16 = v15;

  MEMORY[0x19A8DFF80](v14, v16);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_19744C43C()
{
  v1 = v0[15];
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = v0[15];
    }

    v3 = v0[15];

    v4 = sub_1975220EC();

    if (v4 > 0)
    {
      goto LABEL_9;
    }
  }

  else if (*(v1 + 16) > 0)
  {
LABEL_9:
    v6 = v0[15];
    v7 = v0[17];
    v8 = MEMORY[0x1E69E7CD0];
    v0[15] = MEMORY[0x1E69E7CD0];
    v0[17] = v8;
    swift_beginAccess();
    sub_197443A28(v8, v8, v8, v6, v7, v0[18] != 0);
  }

  if (*(v0[17] + 16))
  {
    goto LABEL_9;
  }

  result = swift_beginAccess();
  if (v0[18])
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t FetchDescriptor.predicate.setter(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 16);
  sub_19752139C();
  v4 = sub_197521F5C();
  return (*(*(v4 - 8) + 40))(v2, a1, v4);
}

uint64_t sub_19744C5BC(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

unint64_t sub_19744C698(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B238, &unk_19752F350);
  result = sub_1975221AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v3 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_19747ECF8(*v16, v16[1], v6))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_13;
      }
    }

    v17 = 1 << *(v3 + 32);
    if (v17 >= 64)
    {
      bzero((v3 + 56), ((v17 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v17;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_19744C800(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Schema.Entity();
  v6 = sub_1973FDF38(a2, a3);
  v7 = sub_1973F8364(a1);
  v9 = v8;
  swift_beginAccess();
  v10 = *(v6 + 104);
  if (*(v10 + 16))
  {
    v11 = sub_1973F4028(v7, v9);
    v13 = v12;

    if (v13)
    {
      v14 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();

      return v14;
    }
  }

  else
  {
  }

  swift_endAccess();
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x8000000197528400);
  v16 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v16);

  MEMORY[0x19A8DFF80](0x79654B20726F6620, 0xED00002068746150);
  sub_19752202C();
  sub_19752235C();
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_19744CA30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(v3 + 16);
  if (*(v3 + 48) == 1)
  {
    if (a2)
    {
      *(&v13 + 1) = &type metadata for PersistentIdentifier;
      v7 = *(*(v5 + *MEMORY[0x1E69E77B0] + 8) + 16);

      PersistentModel.persistentModelID.getter(v7, a3, &v12);
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }
  }

  else
  {
    if (a2)
    {
      v9 = *(*(v5 + *MEMORY[0x1E69E77B0] + 8) + 16);
      v10 = a2;
    }

    else
    {
      v10 = 0;
      v9 = 0;
      *(&v12 + 1) = 0;
      *&v13 = 0;
    }

    *&v12 = v10;
    *(&v13 + 1) = v9;

    swift_unknownObjectRetain();
  }

  sub_1973FCF28(&v12, a1);
}

uint64_t sub_19744CB7C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19744CBB8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_19744CC00(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_19744CC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v22 = a3;
  if (swift_conformsToProtocol2() && a3)
  {
    v8 = a3;
    do
    {
      sub_1973F732C(v8, &v22);
      v8 = v22;
      if (swift_conformsToProtocol2())
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 1;
      }
    }

    while (!v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B588, &unk_19752E9B0);
  v10 = sub_1975214EC();
  v11 = sub_1975214EC();
  if (v10)
  {
    if (!v11 || v10 != v11)
    {
      goto LABEL_24;
    }
  }

  else if (v11)
  {
    goto LABEL_24;
  }

  sub_1975214DC();
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!v12)
    {
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_1975221EC();

      v22 = 0xD00000000000001BLL;
      v23 = 0x800000019752B270;
      v20 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v20);

      MEMORY[0x19A8DFF80](0x20726F6620, 0xE500000000000000);
      swift_getMetatypeMetadata();
      v21 = sub_1975217CC();
      MEMORY[0x19A8DFF80](v21);

      goto LABEL_24;
    }

    v13 = sub_1975214DC();
    if (v14 >= 1)
    {
      v15 = *v13;
      if (swift_conformsToProtocol2() && v15)
      {
        v16 = *(v7 + 240);
        sub_19744CFD8(v15, a2, a1, *(v7 + 232), a3, v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
        v17 = sub_19752234C();

        v22 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
        return swift_dynamicCast();
      }

      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_22:
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1975221EC();

  v22 = 0xD000000000000028;
  v23 = 0x800000019752B490;
  v19 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v19);

  MEMORY[0x19A8DFF80](8285, 0xE200000000000000);
LABEL_24:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_19744CFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_1975215CC();
  v15 = result;
  v9 = *(a3 + 16);
  if (v9)
  {
    v10 = (a3 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v10 += 16;
      v13 = v11;
      v14 = v12;
      sub_1974028EC(v11, v12);
      v13 = sub_197452724(a6, &v13);
      sub_197521AAC();
      sub_197521A7C();
      sub_1974028C8(v11, v12);
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_19744D0E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_19744D134(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_19744D188(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v1 + 32);
  v10 = *a1;
  LOBYTE(v11) = v4;
  v6 = sub_19744DAA0(&v10);
  if (v6)
  {
    v7 = v6;
    v8 = [*(v2 + 24) objectWithID_];
  }

  else
  {
    v10 = v3;
    LOBYTE(v11) = v4;
    v8 = sub_197440E94(&v10, *(v2 + 24));
    LOBYTE(v11) = v4;
    v7 = [v8 objectID];
    sub_19744DBF0(&v10, v7);
  }

  return v8;
}

void sub_19744D278(__int16 a1)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  v5 = *(v2 + 88);
  v6 = *(v2 + 104);
  sub_197522B4C();
  v7 = sub_19752178C();

  [v3 setValue:v4 forKey:v7];
}

uint64_t sub_19744D340@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a3 + 48);
  v10 = *(v8 + 16);
  v9 = v8 + 16;
  v11 = v10 + 1;
  while (--v11)
  {
    v12 = (v9 + 40);
    v13 = *(v9 + 16);
    v9 += 40;
    if (v13 == 1)
    {
      v14 = *v12;
      if (*v12)
      {
        v15 = *(v12 - 1);
        *a4 = 0u;
        a4[1] = 0u;

        sub_19744D134(a1, a2);

        sub_19744D4C0(v15, v14, a1, a2, a3, a4);

        sub_19744D0E0(a1, a2);
      }

      break;
    }
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD00000000000004DLL, 0x800000019752A1C0);
  v17 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v17);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

void sub_19744D4C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, _OWORD *a6)
{
  if (a1 == 0xD000000000000024 && 0x800000019752A210 == a2)
  {
    v19 = MEMORY[0x1E696A8B0];
    goto LABEL_15;
  }

  v13 = sub_19752282C();
  v14 = *MEMORY[0x1E696A8B0];
  if (v13)
  {
    goto LABEL_16;
  }

  v15 = *MEMORY[0x1E696A8B0];
  if (sub_1975217BC() == a1 && v16 == a2)
  {
    goto LABEL_33;
  }

  v18 = sub_19752282C();

  if (v18)
  {
    goto LABEL_16;
  }

  if (a1 == 0xD000000000000027 && 0x800000019752A120 == a2)
  {
    v19 = MEMORY[0x1E696A510];
LABEL_15:
    v14 = *v19;
    goto LABEL_16;
  }

  v22 = sub_19752282C();
  v14 = *MEMORY[0x1E696A510];
  if ((v22 & 1) == 0)
  {
    v23 = *MEMORY[0x1E696A510];
    if (sub_1975217BC() == a1 && v24 == a2)
    {
      goto LABEL_33;
    }

    v26 = sub_19752282C();

    if ((v26 & 1) == 0)
    {
      if (a1 == 0xD000000000000022 && 0x800000019752A150 == a2)
      {
        v19 = MEMORY[0x1E696A9F8];
        goto LABEL_15;
      }

      v27 = sub_19752282C();
      v14 = *MEMORY[0x1E696A9F8];
      if ((v27 & 1) == 0)
      {
        v28 = *MEMORY[0x1E696A9F8];
        if (sub_1975217BC() == a1 && v29 == a2)
        {
LABEL_33:

          goto LABEL_16;
        }

        v30 = sub_19752282C();

        if ((v30 & 1) == 0)
        {
          v31 = sub_19752178C();
          v32 = [objc_opt_self() valueTransformerForName_];

          if (v32)
          {
            objc_opt_self();
            v21 = swift_dynamicCastObjCClass() != 0;
            v20 = v32;
            goto LABEL_18;
          }

LABEL_37:
          sub_1975221EC();

          MEMORY[0x19A8DFF80](a1, a2);
          sub_19744D0E0(a3, a4);

          sub_1975223EC();
          __break(1u);
          return;
        }
      }
    }
  }

LABEL_16:
  v20 = [objc_opt_self() valueTransformerForName_];
  if (!v20)
  {
    goto LABEL_37;
  }

  v21 = 1;
LABEL_18:
  v33 = v20;
  sub_19744D83C(v33, v21, a3, a4, a5, a6);
}

_OWORD *sub_19744D83C(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  v10 = sub_1975212FC();
  if (a2)
  {
    v11 = [a1 transformedValue_];
  }

  else
  {
    v11 = [a1 reverseTransformedValue_];
  }

  v12 = v11;

  if (v12)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    sub_1974028B8(v21, v22);
    sub_1973F9E68(a6);
    return sub_1974028B8(v22, a6);
  }

  else
  {
    sub_1973F9E68(v21);
    *&v22[0] = 0;
    *(&v22[0] + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000031, 0x800000019752A270);
    v14 = [a1 description];
    v15 = sub_1975217BC();
    v17 = v16;

    MEMORY[0x19A8DFF80](v15, v17);

    MEMORY[0x19A8DFF80](8238, 0xE200000000000000);
    v18 = sub_1975212EC();
    MEMORY[0x19A8DFF80](v18);

    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    *&v21[0] = a5;
    type metadata accessor for Schema.Attribute();
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_19744DA60()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 64);
}

void *sub_19744DAA0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = sub_197403C30(v2, v3);
  if (v6)
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = v7;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_19744DB58()
{
  v1 = v0[2];
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 104);
  sub_197522B4C();
  v4 = sub_19752178C();

  [v1 setValue:0 forKey:v4];
}

void sub_19744DBF0(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  swift_beginAccess();
  v7 = *(v2 + 16);
  if (*(v7 + 16))
  {

    v8 = sub_197403C30(v5, v6);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      if ([v10 isEqual_])
      {

        return;
      }

      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000044, 0x8000000197524670);
      sub_19752235C();
      MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
      v25 = [v10 description];
      v26 = sub_1975217BC();
      v28 = v27;

      MEMORY[0x19A8DFF80](v26, v28);

      MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
      v29 = [a2 description];
      v30 = sub_1975217BC();
      v32 = v31;

      MEMORY[0x19A8DFF80](v30, v32);

      goto LABEL_13;
    }
  }

  swift_beginAccess();
  v11 = *(v3 + 24);
  if (*(v11 + 16))
  {
    v12 = *(v3 + 24);

    v13 = sub_197441030(a2);
    if (v14)
    {
      sub_1974028EC(*(*(v11 + 56) + 16 * v13), *(*(v11 + 56) + 16 * v13 + 8));

      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000043, 0x8000000197524620);
      v21 = [a2 description];
      v22 = sub_1975217BC();
      v24 = v23;

      MEMORY[0x19A8DFF80](v22, v24);

      MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
      sub_19752235C();
      MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
      sub_19752235C();
LABEL_13:
      sub_1975223EC();
      __break(1u);
      return;
    }
  }

  swift_beginAccess();
  sub_1974028EC(v5, v6);
  v15 = a2;
  v16 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_19743EFA8(v15, v5, v6, isUniquelyReferenced_nonNull_native);
  sub_1974028C8(v5, v6);
  *(v3 + 16) = v33;
  swift_endAccess();
  swift_beginAccess();
  sub_1974028EC(v5, v6);
  v18 = v15;
  v19 = *(v3 + 24);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  sub_197441D84(v5, v6, v18, v20);

  *(v3 + 24) = v34;
  swift_endAccess();
}

unint64_t sub_19744E050(uint64_t a1)
{
  result = sub_197406AAC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19744E078()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B000, &qword_19752C760);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1ED7C8358 = result;
  return result;
}

unint64_t sub_19744E0DC(uint64_t a1)
{
  *(a1 + 8) = sub_1973FF3D4();
  result = sub_1973FF428();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_19744E158(uint64_t a1)
{
  result = sub_197413CBC(&qword_1ED7C9B80, type metadata accessor for DefaultStore);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19744E1D4()
{
  result = qword_1ED7C7AA0[0];
  if (!qword_1ED7C7AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED7C7AA0);
  }

  return result;
}

uint64_t sub_19744E238()
{
  result = sub_19752178C();
  qword_1ED7C8180 = result;
  return result;
}

uint64_t sub_19744E270()
{
  result = type metadata accessor for EditingState();
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

uint64_t sub_19744E36C()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  return swift_deallocClassInstance();
}

void sub_19744E3BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a1 == 0xD000000000000024 && 0x800000019752A210 == a2)
  {
    v13 = MEMORY[0x1E696A8B0];
    goto LABEL_15;
  }

  v7 = sub_19752282C();
  v8 = *MEMORY[0x1E696A8B0];
  if (v7)
  {
    goto LABEL_16;
  }

  v9 = *MEMORY[0x1E696A8B0];
  if (sub_1975217BC() == a1 && v10 == a2)
  {
    goto LABEL_32;
  }

  v12 = sub_19752282C();

  if (v12)
  {
    goto LABEL_16;
  }

  if (a1 == 0xD000000000000027 && 0x800000019752A120 == a2)
  {
    v13 = MEMORY[0x1E696A510];
LABEL_15:
    v8 = *v13;
    goto LABEL_16;
  }

  v15 = sub_19752282C();
  v8 = *MEMORY[0x1E696A510];
  if ((v15 & 1) == 0)
  {
    v16 = *MEMORY[0x1E696A510];
    if (sub_1975217BC() == a1 && v17 == a2)
    {
      goto LABEL_32;
    }

    v19 = sub_19752282C();

    if ((v19 & 1) == 0)
    {
      if (a1 == 0xD000000000000022 && 0x800000019752A150 == a2)
      {
        v13 = MEMORY[0x1E696A9F8];
        goto LABEL_15;
      }

      v20 = sub_19752282C();
      v8 = *MEMORY[0x1E696A9F8];
      if ((v20 & 1) == 0)
      {
        v21 = *MEMORY[0x1E696A9F8];
        if (sub_1975217BC() == a1 && v22 == a2)
        {
LABEL_32:

          goto LABEL_16;
        }

        v23 = sub_19752282C();

        if ((v23 & 1) == 0)
        {
          v24 = sub_19752178C();
          v25 = [objc_opt_self() valueTransformerForName_];

          if (v25)
          {
            objc_opt_self();
            swift_dynamicCastObjCClass();
            v14 = v25;
            goto LABEL_17;
          }

LABEL_36:
          sub_1975221EC();

          MEMORY[0x19A8DFF80](a1, a2);
          sub_1975223EC();
          __break(1u);
          return;
        }
      }
    }
  }

LABEL_16:
  v14 = [objc_opt_self() valueTransformerForName_];
  if (!v14)
  {
    goto LABEL_36;
  }

LABEL_17:
  v26 = v14;
  a3();
}

void sub_19744E718(void *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_19744E9BC(MEMORY[0x1E69E7CC0]);
  v34 = a1;
  v4 = [a1 storeTokens];
  if (!v4)
  {
    goto LABEL_26;
  }

  v5 = v4;
  sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
  v6 = sub_1975215FC();

  v7 = 0;
  v8 = v6 + 64;
  v36 = v6;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
LABEL_12:
    v15 = __clz(__rbit64(v11)) | (v7 << 6);
    v16 = (*(v36 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(*(v36 + 56) + 8 * v15);

    v20 = v19;
    v37 = [v20 longLongValue];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = sub_1973F4028(v18, v17);
    v24 = v3[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_24;
    }

    v28 = v23;
    if (v3[3] < v27)
    {
      sub_19744E9D0(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_1973F4028(v18, v17);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

LABEL_17:
      if (v28)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v33 = v22;
    sub_19747AFA8();
    v22 = v33;
    if (v28)
    {
LABEL_5:
      v13 = v22;

      *(v3[7] + 8 * v13) = v37;

      goto LABEL_6;
    }

LABEL_18:
    v3[(v22 >> 6) + 8] |= 1 << v22;
    v30 = (v3[6] + 16 * v22);
    *v30 = v18;
    v30[1] = v17;
    *(v3[7] + 8 * v22) = v37;

    v31 = v3[2];
    v26 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v26)
    {
      goto LABEL_25;
    }

    v3[2] = v32;
LABEL_6:
    v11 &= v11 - 1;
  }

  while (1)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      *a2 = v3;
      return;
    }

    v11 = *(v8 + 8 * v14);
    ++v7;
    if (v11)
    {
      v7 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1975229CC();
  __break(1u);
}

unint64_t sub_19744E9E4()
{
  result = qword_1ED7C7C98;
  if (!qword_1ED7C7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C7C98);
  }

  return result;
}

unint64_t sub_19744EA38(void *a1)
{
  a1[1] = sub_19744EA80();
  a1[2] = sub_19744EB30();
  a1[3] = sub_19744EB84();
  a1[4] = sub_19744EBF0();
  result = sub_19744EC4C();
  a1[5] = result;
  return result;
}

unint64_t sub_19744EA80()
{
  result = qword_1ED7C7CB8;
  if (!qword_1ED7C7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C7CB8);
  }

  return result;
}

unint64_t sub_19744EADC()
{
  result = qword_1ED7C7CB0;
  if (!qword_1ED7C7CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C7CB0);
  }

  return result;
}

unint64_t sub_19744EB30()
{
  result = qword_1ED7C7CA8;
  if (!qword_1ED7C7CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C7CA8);
  }

  return result;
}

unint64_t sub_19744EB84()
{
  result = qword_1ED7C7CC8;
  if (!qword_1ED7C7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C7CC8);
  }

  return result;
}

unint64_t sub_19744EBF0()
{
  result = qword_1ED7C7CC0;
  if (!qword_1ED7C7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C7CC0);
  }

  return result;
}

unint64_t sub_19744EC4C()
{
  result = qword_1ED7C7CA0;
  if (!qword_1ED7C7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C7CA0);
  }

  return result;
}

uint64_t sub_19744ED98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19744EDE0(uint64_t a1)
{
  *(a1 + 8) = sub_19744ED98(qword_1ED7C7720, type metadata accessor for DefaultHistoryTransaction);
  result = sub_19744ED98(&qword_1ED7C7710, type metadata accessor for DefaultHistoryTransaction);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_19744EECC(uint64_t a1)
{
  v4 = *(a1 + 16);
  sub_19752139C();
  result = sub_197521F5C();
  if (v2 <= 0x3F)
  {
    sub_197520C4C();
    result = sub_197521AAC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t HistoryDescriptor.init(predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_19752139C();
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = type metadata accessor for HistoryDescriptor();
  v6 = *(v5 + 40);
  sub_197520C4C();
  *(a2 + v6) = sub_197521A1C();
  v7 = sub_197521F5C();
  result = (*(*(v7 - 8) + 40))(a2, a1, v7);
  *(a2 + *(v5 + 36)) = 0;
  return result;
}

uint64_t sub_19744F0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = sub_1975215CC();
  if (*(v3 + 16))
  {
    v7 = *(v3 + 16);
  }

  else
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
      goto LABEL_13;
    }

    v7 = result;
  }

  swift_beginAccess();
  v9 = *(v7 + 48);

  v10 = *(v9 + 16);
  if (!v10)
  {
LABEL_10:

    swift_beginAccess();
    return v17;
  }

  v11 = 0;
  v12 = v9 + 32;
  while (v11 < *(v9 + 16))
  {
    sub_1974047F8(v12, v14, &qword_1EAF2AF38, &qword_19752C6A8);
    sub_19744F268(v14, v15, v16, &v17, a1, a2, a3);
    if (v4)
    {

      sub_1974050A8(v14, &qword_1EAF2AF38, &qword_19752C6A8);
    }

    ++v11;
    result = sub_1974050A8(v14, &qword_1EAF2AF38, &qword_19752C6A8);
    v12 += 56;
    if (v10 == v11)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_19744F268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a2;
  v16 = a3;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B980, &qword_19752FCC8);
  if (swift_dynamicCast())
  {
    sub_197402778(v13, v17);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    DynamicType = swift_getDynamicType();
    sub_19744F388(DynamicType, v17, a4, a5, a6, DynamicType, a7, v17[4]);
    return __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    return sub_1974050A8(v13, &qword_1EAF2B988, &unk_19752FCD0);
  }
}

uint64_t sub_19744F388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a2, a2);
  v18 = &v21[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1973FFC48(v16, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B980, &qword_19752FCC8);
  swift_dynamicCast();
  if ((*(a8 + 24))(a6, a8) == a5)
  {
    sub_19744F500(a5, a4, v18, a3, a5, a6, a5, a7, a8);
  }

  return (*(v14 + 8))(v18, a6);
}

uint64_t sub_19744F500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a3;
  v25[0] = a4;
  v25[1] = a5;
  v26 = a2;
  v10 = type metadata accessor for HistoryDescriptor();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v25 - v14;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for HistoryDescriptor();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v25 - v20;
  (*(v11 + 16))(v15, v26, v10);
  swift_dynamicCast();
  v22 = v28;
  (*(a9 + 32))(v21, a6, a9);
  if (!v22)
  {
    v23 = sub_1975224BC();

    if (v23)
    {
      v29 = v23;
      swift_beginAccess();
      sub_197521AAC();
      swift_getWitnessTable();
      sub_197521A6C();
      swift_endAccess();
    }
  }

  return (*(v17 + 8))(v21, v16);
}

uint64_t DefaultStore.fetchHistory(_:)()
{
  v22 = MEMORY[0x1E69E7CC0];
  v2 = *(v0 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container);
  v3 = objc_allocWithZone(MEMORY[0x1E695D628]);
  v4 = v2;
  v5 = [v3 initWithConcurrencyType_];
  v6 = [v4 persistentStoreCoordinator];
  [v5 setPersistentStoreCoordinator_];

  v7 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
  [v5 setMergePolicy_];

  [v5 set:1 isSwiftBound:?];
  sub_197521E5C();
  if (!v1)
  {

    return v22;
  }

  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
  sub_1973F3D34(0, &qword_1EAF2AEA0, 0x1E696ABC0);
  if (swift_dynamicCast())
  {

    v9 = [v21 domain];
    v10 = sub_1975217BC();
    v12 = v11;

    v13 = *MEMORY[0x1E696A250];
    if (v10 == sub_1975217BC() && v12 == v14)
    {
    }

    else
    {
      v16 = sub_19752282C();

      if ((v16 & 1) == 0)
      {
LABEL_12:
        swift_willThrow();
        goto LABEL_13;
      }
    }

    if ([v21 code] == 134301)
    {
      if (qword_1EAF2AD88 != -1)
      {
        swift_once();
      }

      v17 = byte_1EAF2B818;
      v19 = qword_1EAF2B820;
      v18 = unk_1EAF2B828;
      sub_19744BE3C();
      swift_allocError();
      *v20 = v17;
      *(v20 + 8) = v19;
      *(v20 + 16) = v18;
      swift_willThrow();

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
}

void sub_19744FB48(uint64_t a1, int a2)
{
  v75 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF60, &qword_19752C6D0);
  v5 = *(v4 - 8);
  v81 = v4;
  v82 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v80 = &v70 - v8;
  v9 = sub_197520DAC();
  v77 = *(v9 - 8);
  v78 = v9;
  v10 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v74 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF68, &qword_19752C6D8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v70 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF70, &qword_19752C6E0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v23 = &v70 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF78, &qword_19752C6E8);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = &v70 - v28;
  v76 = [objc_opt_self() fetchRequest];
  if (!v76)
  {
    if (qword_1EAF2AD90 == -1)
    {
LABEL_5:
      v31 = byte_1EAF2B830;
      v33 = qword_1EAF2B838;
      v32 = unk_1EAF2B840;
      sub_19744BE3C();
      swift_allocError();
      *v34 = v31;
      *(v34 + 8) = v33;
      *(v34 + 16) = v32;
      swift_willThrow();

      return;
    }

LABEL_22:
    swift_once();
    goto LABEL_5;
  }

  v73 = a1;
  sub_1973FE0E4(a1, v23, &qword_1EAF2AF70, &qword_19752C6E0);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_19740C044(v23, &qword_1EAF2AF70, &qword_19752C6E0);
    v30 = v79;
  }

  else
  {
    v72 = v25;
    v35 = (*(v25 + 32))(v29, v23, v24);
    v36 = MEMORY[0x19A8E1370](v35);
    v70 = v2;
    v71 = v36;
    v86[5] = v18;
    sub_19752138C();
    v37 = v74;
    sub_19752118C();
    (*(v14 + 8))(v18, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF88, &qword_19752C6F8);
    v38 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF90, &qword_19752C700) - 8);
    v39 = *(*v38 + 72);
    v40 = (*(*v38 + 80) + 32) & ~*(*v38 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_19752C280;
    v42 = v41 + v40;
    v43 = v41 + v40 + v38[14];
    v45 = v77;
    v44 = v78;
    (*(v77 + 16))(v42, v37, v78);
    v46 = [objc_opt_self() expressionForEvaluatedObject];
    *(v43 + 8) = 0u;
    *(v43 + 24) = 0u;
    *(v43 + 40) = 0u;
    *(v43 + 56) = 0;
    *v43 = v46;
    v47 = sub_197407784(v41);
    swift_setDeallocating();
    sub_19740C044(v42, &qword_1EAF2AF90, &qword_19752C700);
    swift_deallocClassInstance();
    (*(v45 + 8))(v37, v44);
    v86[0] = 1;
    v86[1] = v47;
    v86[2] = v70;

    sub_19752136C();
    v49 = v84;
    v48 = v85;
    __swift_project_boxed_opaque_existential_1Tm(v83, v84);
    v50 = v79;
    sub_197407C0C(v86, v49, *(v48 + 8));
    v30 = v50;
    if (v50)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      objc_autoreleasePoolPop(v71);

      (*(v72 + 8))(v29, v24);
      return;
    }

    v52 = v51;
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    [v76 setPredicate_];

    objc_autoreleasePoolPop(v71);
    (*(v72 + 8))(v29, v24);
  }

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF80, &qword_19752C6F0);
  v54 = v53;
  v55 = v73;
  v56 = *(v73 + *(v53 + 40));
  v57 = *(v56 + 16);
  v58 = v75;
  if (v57)
  {
    v74 = v53;
    v59 = v30;
    v83[0] = MEMORY[0x1E69E7CC0];
    sub_1975222CC();
    v60 = 0;
    v79 = v56 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
    v77 = v82 + 8;
    v78 = v82 + 16;
    while (v60 < *(v56 + 16))
    {
      v62 = v81;
      v61 = v82;
      v63 = v80;
      (*(v82 + 16))(v80, v79 + *(v82 + 72) * v60, v81);
      sub_197467984();
      (*(v61 + 8))(v63, v62);
      if (v59)
      {

        return;
      }

      ++v60;
      sub_19752229C();
      v64 = *(v83[0] + 16);
      sub_1975222DC();
      sub_1975222EC();
      sub_1975222AC();
      if (v57 == v60)
      {
        v58 = v75;
        v55 = v73;
        v54 = v74;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  sub_1973F3D34(0, &qword_1ED7C9358, 0x1E696AEB0);
  v65 = sub_1975219BC();

  v66 = v76;
  [v76 setSortDescriptors_];

  v67 = *(v55 + *(v54 + 9));
  if (v67 < 0)
  {
    __break(1u);
  }

  else
  {
    [v66 setFetchLimit_];
    if (v58)
    {
      v68 = [objc_opt_self() deleteRequest];
    }

    else
    {
      v68 = [objc_allocWithZone(MEMORY[0x1E695D698]) init];
    }

    v69 = v68;
    [v68 setFetchRequest_];
    [v69 setFetchLimit_];
  }
}

unint64_t sub_1974503D0()
{
  result = qword_1ED7C8188;
  if (!qword_1ED7C8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C8188);
  }

  return result;
}

unint64_t sub_197450428()
{
  result = qword_1ED7C8190;
  if (!qword_1ED7C8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C8190);
  }

  return result;
}

uint64_t sub_197450540()
{
  result = sub_19752178C();
  qword_1ED7C7CD8 = result;
  return result;
}

uint64_t sub_197450578(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4, int a5)
{
  v6 = v5;
  v12 = type metadata accessor for EditingState();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a5;
  v32 = a1;
  if (a5)
  {
    if (a5 != 1 || (v20 = a4[3]) == 0)
    {
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000059, 0x8000000197526FB0);
      v34 = a4;
      LOBYTE(v35) = a5;
      sub_19752235C();
      goto LABEL_17;
    }

    v18 = a4[2];
    v23 = a4[3];

    v21 = *(v6 + 16);
    if (v21)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [a4 storeIdentifier];
    v18 = sub_1975217BC();
    v20 = v19;

    v21 = *(v6 + 16);
    if (v21)
    {
LABEL_3:
      v22 = v21;
      goto LABEL_9;
    }
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_14:

    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000005CLL, 0x8000000197527010);
    *&v36 = a4;
    BYTE8(v36) = v33;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    *&v36 = v6;
    type metadata accessor for ModelContext(0);
    sub_19752235C();
    goto LABEL_17;
  }

  v22 = Strong;
LABEL_9:
  swift_beginAccess();
  v25 = *(v22 + 56);

  if (!*(v25 + 16))
  {
    goto LABEL_14;
  }

  v26 = sub_1973F4028(v18, v20);
  if ((v27 & 1) == 0)
  {
    goto LABEL_14;
  }

  v31 = *(*(v25 + 56) + 16 * v26);
  swift_unknownObjectRetain();

  type metadata accessor for DefaultStore(0);
  if (swift_dynamicCastClass())
  {

    v28 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    sub_197404E70(v6 + v28, v16);
    v29 = sub_1974509B0(v32, a2, a3, a4, v33);
    swift_unknownObjectRelease();
    sub_197428DBC(v16);
    return v29;
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000048, 0x8000000197527070);
  MEMORY[0x19A8DFF80](0x53746C7561666544, 0xEC00000065726F74);
  MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
  v36 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  sub_19752235C();
LABEL_17:
  result = sub_1975223EC();
  __break(1u);
  return result;
}