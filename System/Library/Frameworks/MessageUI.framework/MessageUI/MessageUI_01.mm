uint64_t sub_1BE92AC1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v9[4] = a1;
  sub_1BE932EAC(a1, &v8);
  sub_1BE94203C();
  v3 = sub_1BE94224C();
  MEMORY[0x1E69E5928](v3);

  MEMORY[0x1E69E5920](v3);
  __swift_destroy_boxed_opaque_existential_1(v9);
  *a2 = v3;
  sub_1BE932EAC(a1, &v6);
  sub_1BE932D64(&v7, (a2 + 1));
}

uint64_t sub_1BE92ACFC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a1;
  v41 = a2;
  v65 = a3;
  v55 = a4;
  v42 = a5;
  v64 = a6;
  v44 = a8;
  v45 = "Fatal error";
  v46 = "Range requires lowerBound <= upperBound";
  v47 = "Swift/Range.swift";
  v48 = "Index out of range";
  v49 = "invalid Collection: count differed in successive traversals";
  v50 = "Swift/ArrayShared.swift";
  v78 = a3;
  v77 = a4;
  v76 = a5;
  v51 = *(a5 - 8);
  v52 = a5 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v54 = &v21 - v53;
  v56 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = *(AssociatedTypeWitness - 8);
  v59 = AssociatedTypeWitness - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v56, v64, v65, v55);
  v61 = &v21 - v60;
  v62 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8, v10, v11, v9);
  v63 = &v21 - v62;
  v66 = swift_getAssociatedTypeWitness();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v65, v64, v12, v13);
  v70 = &v21 - v69;
  v71 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14, v16, &v21 - v69, v17);
  v72 = &v21 - v71;
  v73 = sub_1BE94249C();
  if (!v73)
  {
    goto LABEL_24;
  }

  v75 = sub_1BE9426FC();
  v39 = sub_1BE94270C();
  sub_1BE9426DC();
  result = sub_1BE94248C();
  if (v73 < 0)
  {
    sub_1BE94274C();
    __break(1u);
LABEL_24:
    v23 = sub_1BE9423BC();
    v24 = v43;
    return v23;
  }

  if (!v73)
  {
LABEL_19:
    v29 = v43;
LABEL_20:
    v25 = v29;
    sub_1BE9424AC();
    swift_getAssociatedConformanceWitness();
    v28 = sub_1BE94223C();
    v26 = *(v67 + 8);
    v27 = v67 + 8;
    v26(v70, v66);
    if ((v28 & 1) == 0)
    {
      sub_1BE94276C();
      __break(1u);
    }

    v26(v72, v66);
    v22 = v75;

    v23 = v22;
    v24 = v25;
    return v23;
  }

  v37 = 0;
  for (i = v43; ; i = v33)
  {
    v35 = i;
    v36 = v37;
    if (v37 < 0 || v36 >= v73)
    {
      goto LABEL_18;
    }

    if (v73 < 0)
    {
      sub_1BE94274C();
      __break(1u);
LABEL_18:
      sub_1BE94276C();
      __break(1u);
      goto LABEL_19;
    }

    v34 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    v32 = &v74;
    v31 = sub_1BE9424FC();
    (*(v58 + 16))(v61);
    v31();
    v20 = v35;
    v40(v61, v54);
    v33 = v20;
    if (v20)
    {
      (*(v58 + 8))(v61, AssociatedTypeWitness);
      (*(v67 + 8))(v72, v66);
      sub_1BE926968();
      (*(v51 + 32))(v44, v54, v42);
      return v30;
    }

    (*(v58 + 8))(v61, AssociatedTypeWitness);
    sub_1BE9426EC();
    sub_1BE9424BC();
    if (v34 == v73)
    {
      v29 = v33;
      goto LABEL_20;
    }

    result = v33;
    v37 = v34;
  }

  __break(1u);
  return result;
}

id sub_1BE92B62C(uint64_t a1, double a2)
{
  v4 = [swift_getObjCClassFromMetadata() fontWithDescriptor:a1 size:a2];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

unint64_t sub_1BE92B690()
{
  v2 = qword_1EBDB61B8;
  if (!qword_1EBDB61B8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB61B8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1BE92B6F4()
{
  result = sub_1BE94283C();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  v1[4] = 4;
  sub_1BE921DF8();
  return result;
}

uint64_t sub_1BE92B75C@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v22 = a1;
  v36 = 0;
  v35 = 0;
  v26 = 0;
  v18 = (*(*(sub_1BE941D9C() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3, v4);
  v33 = &v17 - v18;
  v19 = (*(*(sub_1BE941E2C() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v22, v5, v6, v7);
  v32 = &v17 - v19;
  v36 = v8;
  v20 = objc_opt_self();
  v21 = sub_1BE92E4C0(v22);
  v34 = [v20 preferredFontForTextStyle_];
  MEMORY[0x1E69E5920](v21);
  v35 = v34;
  v30 = sub_1BE92C02C();
  v31 = v9;
  sub_1BE93051C();
  sub_1BE941E1C();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB61E0);
  v25 = sub_1BE94283C();
  v23 = v10;
  sub_1BE930C04(MEMORY[0x1E69DB648], v10);
  MEMORY[0x1E69E5928](v34);
  v11 = sub_1BE930BA0();
  v12 = v23;
  v13 = v34;
  v14 = v11;
  v15 = v25;
  v23[4] = v14;
  v12[1] = v13;
  sub_1BE921DF8();
  v28 = v15;
  v27 = type metadata accessor for Key();
  sub_1BE93095C();
  sub_1BE94219C();
  sub_1BE941DAC();
  sub_1BE9425BC();
  return MEMORY[0x1E69E5920](v34);
}

uint64_t sub_1BE92B99C(void *a1, uint64_t a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v6 = v3;
  sub_1BE932D80(a2, &v7);
  type metadata accessor for Key();
  sub_1BE93095C();
  sub_1BE94203C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6438);
  sub_1BE932DE4();
  sub_1BE93291C();
  v5 = sub_1BE94234C();
  sub_1BE91F954();
  sub_1BE932E6C(&v6);
  return v5 & 1;
}

uint64_t sub_1BE92BAAC(uint64_t *a1, uint64_t *a2)
{
  v31 = 0;
  v47 = a1;
  v46 = a2;
  sub_1BE932CDC(a1, &v43);
  v27 = v43;
  v42 = v43;
  sub_1BE932D64(&v44, v45);
  sub_1BE932CDC(a2, &v39);
  v28 = v39;
  v38 = v39;
  sub_1BE932D64(&v40, v41);
  v37 = v27;
  v36 = v28;
  type metadata accessor for Key();
  sub_1BE93255C();
  if ((sub_1BE94284C() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1E69E5920](v28);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1E69E5920](v27);
    v9 = 0;
    return v9 & 1;
  }

  sub_1BE932D80(v41, v35);
  sub_1BE930BA0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v35);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1E69E5920](v28);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1E69E5920](v27);
    v9 = 1;
    return v9 & 1;
  }

  v25 = v34;
  sub_1BE932D80(v41, v33);
  if (swift_dynamicCast())
  {
    v24 = v32;
  }

  else
  {
    v24 = 0;
  }

  if (!v24)
  {
    goto LABEL_19;
  }

  v31 = v24;
  sub_1BE932D80(v45, v30);
  v2 = swift_dynamicCast();
  if (v2)
  {
    v23 = v29;
  }

  else
  {
    v23 = 0;
  }

  if (!v23)
  {
    MEMORY[0x1E69E5920](v24);
LABEL_19:
    MEMORY[0x1E69E5920](v25);
    __swift_destroy_boxed_opaque_existential_1(v35);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1E69E5920](v28);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1E69E5920](v27);
    v9 = 0;
    return v9 & 1;
  }

  v11 = [v24 0x1FB328E67];
  v12 = [v11 0x1FBB6A9EBLL];
  v19 = sub_1BE94225C();
  v20 = v3;
  MEMORY[0x1E69E5920](v11);
  MEMORY[0x1E69E5920](v12);
  v13 = [v23 0x1FB328E67];
  v14 = [v13 0x1FBB6A9EBLL];
  v21 = sub_1BE94225C();
  v22 = v4;
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v14);
  v15 = [v24 0x1FB328E67];
  [v15 0x1FAA5F578];
  v16 = v5;
  MEMORY[0x1E69E5920](v15);
  v17 = [v23 0x1FB328E67];
  [v17 0x1FAA5F578];
  v18 = v6;
  MEMORY[0x1E69E5920](v17);
  v7 = MEMORY[0x1BFB4A0E0](v19, v20, v21, v22);
  v10 = (v7 & 1) != 0 && v16 == v18;

  MEMORY[0x1E69E5920](v23);
  MEMORY[0x1E69E5920](v24);
  MEMORY[0x1E69E5920](v25);
  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v41);
  MEMORY[0x1E69E5920](v28);
  __swift_destroy_boxed_opaque_existential_1(v45);
  MEMORY[0x1E69E5920](v27);
  v9 = v10;
  return v9 & 1;
}

double sub_1BE92C21C()
{
  v27 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB61D0);
  v20 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1, v2, v3, v4);
  v21 = v9 - v20;
  v27 = v0;
  MEMORY[0x1E69E5928](v0);
  sub_1BE9425FC();
  v5 = sub_1BE94259C();
  if ((*(*(v5 - 8) + 48))(v21, 1) == 0)
  {
    v17 = sub_1BE94256C();
    sub_1BE930C44(v21);
    MEMORY[0x1E69E5920](v19);
    v24 = v17;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6208);
    sub_1BE930A64();
    sub_1BE9424CC();
    v18 = v23;

    if (v18)
    {
      v15 = v18;
      v11 = v18;
      [v18 pointSize];
      v12 = v6;
      MEMORY[0x1E69E5920](v11);
      v13 = v12;
      v14 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1BE930C44(v21);
    MEMORY[0x1E69E5920](v19);
  }

  v13 = 0.0;
  v14 = 1;
LABEL_6:
  v25 = v13;
  v26 = v14 & 1;
  if ((v14 & 1) == 0)
  {
    return v25;
  }

  [objc_opt_self() mf_defaultComposeFontPixelSize];
  *&v9[1] = v7;
  return v7;
}

double sub_1BE92C49C()
{
  sub_1BE92C21C();
  sub_1BE930CEC();
  sub_1BE94285C();
  sub_1BE94286C();
  return v1;
}

uint64_t sub_1BE92C640(uint64_t a1, uint64_t a2)
{
  v143 = a1;
  v149 = a2;
  v200 = 0;
  v199 = 0;
  v198 = 0;
  v197 = 0;
  v195 = 0;
  v196 = 0;
  v194 = 0;
  v193 = 0;
  v191 = 0;
  v189 = 0;
  v181 = 0;
  v174 = 0;
  v167 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB61D0);
  v139 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3, v4, v5, v6);
  v140 = &v25 - v139;
  v141 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v25 - v139, v8, v9, v10);
  v142 = &v25 - v141;
  v153 = sub_1BE9425EC();
  v151 = *(v153 - 8);
  v152 = v153 - 8;
  v146 = *(v151 + 64);
  v144 = (v146 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v149, v11, v12, v13);
  v154 = &v25 - v144;
  v145 = (v146 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x1EEE9AC00](v14, v15, v16, v17);
  v148 = &v25 - v145;
  v147 = (v146 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = MEMORY[0x1EEE9AC00](v18, &v25 - v145, v19, v20);
  v150 = &v25 - v147;
  v200 = &v25 - v147;
  v199 = v22;
  v198 = v21;
  v197 = v2;
  MEMORY[0x1E69E5928](v21);
  sub_1BE9425DC();
  (*(v151 + 32))(v150, v148, v153);
  MEMORY[0x1E69E5920](v149);
  (*(v151 + 16))(v154, v150, v153);
  v155 = (*(v151 + 88))(v154, v153);
  if (v155 == *MEMORY[0x1E69DC490])
  {
    (*(v151 + 96))(v154, v153);
    v156 = [v138 formattingDelegate];
    if (v156)
    {
      v135 = &v156;
      v137 = v156;
      swift_unknownObjectRetain();
      sub_1BE92898C();
      swift_getObjectType();
      sub_1BE930D64();
      v136 = sub_1BE92E264(1);
      [v137 composeFormattingController:v138 didSelectTextStyle:?];
      MEMORY[0x1E69E5920](v136);
      swift_unknownObjectRelease();
      return (*(v151 + 8))(v150, v153);
    }

    goto LABEL_95;
  }

  if (v155 == *MEMORY[0x1E69DC4A0])
  {
    (*(v151 + 96))(v154, v153);
    v157 = [v138 formattingDelegate];
    if (v157)
    {
      v132 = &v157;
      v134 = v157;
      swift_unknownObjectRetain();
      sub_1BE92898C();
      swift_getObjectType();
      sub_1BE930D64();
      v133 = sub_1BE92E264(2);
      [v134 composeFormattingController:v138 didSelectTextStyle:?];
      MEMORY[0x1E69E5920](v133);
      swift_unknownObjectRelease();
      return (*(v151 + 8))(v150, v153);
    }

    goto LABEL_95;
  }

  if (v155 == *MEMORY[0x1E69DC4C0])
  {
    (*(v151 + 96))(v154, v153);
    v158 = [v138 formattingDelegate];
    if (v158)
    {
      v129 = &v158;
      v131 = v158;
      swift_unknownObjectRetain();
      sub_1BE92898C();
      swift_getObjectType();
      sub_1BE930D64();
      v130 = sub_1BE92E264(3);
      [v131 composeFormattingController:v138 didSelectTextStyle:?];
      MEMORY[0x1E69E5920](v130);
      swift_unknownObjectRelease();
      return (*(v151 + 8))(v150, v153);
    }

    goto LABEL_95;
  }

  if (v155 == *MEMORY[0x1E69DC448])
  {
    (*(v151 + 96))(v154, v153);
    v159 = [v138 formattingDelegate];
    if (v159)
    {
      v126 = &v159;
      v128 = v159;
      swift_unknownObjectRetain();
      sub_1BE92898C();
      swift_getObjectType();
      sub_1BE930D64();
      v127 = sub_1BE92E264(4);
      [v128 composeFormattingController:v138 didSelectTextStyle:?];
      MEMORY[0x1E69E5920](v127);
      swift_unknownObjectRelease();
      return (*(v151 + 8))(v150, v153);
    }

    goto LABEL_95;
  }

  if (v155 == *MEMORY[0x1E69DC498])
  {
    (*(v151 + 96))(v154, v153);
    v41 = *v154;
    v189 = v41;
    v188 = [v138 formattingDelegate];
    if (v188)
    {
      v38 = &v188;
      v40 = v188;
      swift_unknownObjectRetain();
      sub_1BE92898C();
      swift_getObjectType();
      v39 = [v41 fontWithSize_];
      [v40 composeFormattingController:v138 didChangeFont:?];
      MEMORY[0x1E69E5920](v39);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE92898C();
    }

    MEMORY[0x1E69E5920](v41);
    return (*(v151 + 8))(v150, v153);
  }

  if (v155 == *MEMORY[0x1E69DC4B8])
  {
    (*(v151 + 96))(v154, v153);
    v37 = *v154;
    v191 = v37;
    v190 = [v138 formattingDelegate];
    if (v190)
    {
      v35 = &v190;
      v36 = v190;
      swift_unknownObjectRetain();
      sub_1BE92898C();
      swift_getObjectType();
      [v36 composeFormattingController:v138 didChangeTextColor:v37];
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE92898C();
    }

    MEMORY[0x1E69E5920](v37);
    return (*(v151 + 8))(v150, v153);
  }

  if (v155 == *MEMORY[0x1E69DC4B0])
  {
    (*(v151 + 96))(v154, v153);
    v103 = *v154;
    v181 = v103;
    MEMORY[0x1E69E5928](v103);
    if (!v103)
    {
      MEMORY[0x1E69E5928](v138);
      sub_1BE9425FC();
      v79 = sub_1BE94259C();
      v23 = *(v79 - 8);
      v80 = *(v23 + 48);
      v81 = v23 + 48;
      if (v80(v142, 1) == 0)
      {
        v76 = sub_1BE94258C();
        sub_1BE930C44(v142);
        MEMORY[0x1E69E5920](v138);
        v73 = *MEMORY[0x1E69DE678];
        MEMORY[0x1E69E5928](v73);
        v75 = &v175;
        v175 = v73;
        v74 = type metadata accessor for TextList();
        sub_1BE930E60();
        v77 = sub_1BE94246C();
        sub_1BE923F04(v75);

        v78 = v77 & 1;
      }

      else
      {
        sub_1BE930C44(v142);
        MEMORY[0x1E69E5920](v138);
        v78 = 2;
      }

      v180 = v78;
      if (v78 == 2)
      {
        v72 = 0;
      }

      else
      {
        v72 = v180;
      }

      if (v72)
      {
        v176 = [v138 formattingDelegate];
        if (v176)
        {
          v69 = &v176;
          v71 = v176;
          swift_unknownObjectRetain();
          sub_1BE92898C();
          swift_getObjectType();
          sub_1BE930D64();
          v70 = sub_1BE92E264(7);
          [v71 composeFormattingController:v138 didSelectTextStyle:?];
          MEMORY[0x1E69E5920](v70);
          swift_unknownObjectRelease();
          goto LABEL_77;
        }
      }

      else
      {
        MEMORY[0x1E69E5928](v138);
        sub_1BE9425FC();
        if ((v80)(v140, 1, v79) == 0)
        {
          v65 = sub_1BE94258C();
          sub_1BE930C44(v140);
          MEMORY[0x1E69E5920](v138);
          v62 = *MEMORY[0x1E69DE680];
          MEMORY[0x1E69E5928](v62);
          v64 = &v177;
          v177 = v62;
          v63 = type metadata accessor for TextList();
          sub_1BE930E60();
          v66 = sub_1BE94246C();
          sub_1BE923F04(v64);

          v67 = v66 & 1;
        }

        else
        {
          sub_1BE930C44(v140);
          MEMORY[0x1E69E5920](v138);
          v67 = 2;
        }

        v179 = v67;
        if (v67 == 2)
        {
          v61 = 0;
        }

        else
        {
          v61 = v179;
        }

        if ((v61 & 1) == 0)
        {
          goto LABEL_77;
        }

        v178 = [v138 formattingDelegate];
        if (v178)
        {
          v58 = &v178;
          v60 = v178;
          swift_unknownObjectRetain();
          sub_1BE92898C();
          swift_getObjectType();
          sub_1BE930D64();
          v59 = sub_1BE92E264(8);
          [v60 composeFormattingController:v138 didSelectTextStyle:?];
          MEMORY[0x1E69E5920](v59);
          swift_unknownObjectRelease();
          goto LABEL_77;
        }
      }

      sub_1BE92898C();
      goto LABEL_77;
    }

    v102 = v103;
    v96 = v103;
    v174 = v103;
    MEMORY[0x1E69E5928](v103);
    v95 = *MEMORY[0x1E69DE678];
    MEMORY[0x1E69E5928](v95);
    v100 = &v173;
    v173 = v95;
    v97 = &v172;
    v172 = v96;
    v98 = type metadata accessor for TextList();
    v99 = sub_1BE930EE0();
    v101 = sub_1BE94223C();
    sub_1BE923F04(v100);
    if (v101)
    {
      MEMORY[0x1E69E5920](v96);
      v168 = [v138 formattingDelegate];
      if (v168)
      {
        v92 = &v168;
        v94 = v168;
        swift_unknownObjectRetain();
        sub_1BE92898C();
        swift_getObjectType();
        sub_1BE930D64();
        v93 = sub_1BE92E264(7);
        [v94 composeFormattingController:v138 didSelectTextStyle:?];
        MEMORY[0x1E69E5920](v93);
        swift_unknownObjectRelease();
LABEL_55:
        MEMORY[0x1E69E5920](v96);
LABEL_77:
        MEMORY[0x1E69E5920](v103);
        return (*(v151 + 8))(v150, v153);
      }
    }

    else
    {
      MEMORY[0x1E69E5920](v96);
      MEMORY[0x1E69E5928](v96);
      v89 = *MEMORY[0x1E69DE680];
      MEMORY[0x1E69E5928](v89);
      v90 = &v171;
      v171 = v89;
      v170[1] = v96;
      v91 = sub_1BE94223C();
      sub_1BE923F04(v90);
      if (v91)
      {
        MEMORY[0x1E69E5920](v96);
        v169 = [v138 formattingDelegate];
        if (v169)
        {
          v86 = &v169;
          v88 = v169;
          swift_unknownObjectRetain();
          sub_1BE92898C();
          swift_getObjectType();
          sub_1BE930D64();
          v87 = sub_1BE92E264(8);
          [v88 composeFormattingController:v138 didSelectTextStyle:?];
          MEMORY[0x1E69E5920](v87);
          swift_unknownObjectRelease();
          goto LABEL_55;
        }
      }

      else
      {
        MEMORY[0x1E69E5920](v96);
        v170[0] = [v138 formattingDelegate];
        if (v170[0])
        {
          v83 = v170;
          v85 = v170[0];
          swift_unknownObjectRetain();
          sub_1BE92898C();
          swift_getObjectType();
          sub_1BE930D64();
          v84 = sub_1BE92E264(8);
          [v85 composeFormattingController:v138 didSelectTextStyle:?];
          MEMORY[0x1E69E5920](v84);
          swift_unknownObjectRelease();
          goto LABEL_55;
        }
      }
    }

    sub_1BE92898C();
    goto LABEL_55;
  }

  if (v155 == *MEMORY[0x1E69DC450])
  {
    (*(v151 + 96))(v154, v153);
    v120 = *v154;
    v167 = v120;
    MEMORY[0x1E69E5928](v120);
    v119 = *MEMORY[0x1E69DE650];
    MEMORY[0x1E69E5928](v119);
    v124 = &v166;
    v166 = v119;
    v121 = &v165;
    v165 = v120;
    v122 = type metadata accessor for TextAlignment();
    v123 = sub_1BE930FF8();
    v125 = sub_1BE94223C();
    sub_1BE923F04(v124);
    if (v125)
    {
      MEMORY[0x1E69E5920](v120);
      v160 = [v138 formattingDelegate];
      if (v160)
      {
        v116 = &v160;
        v118 = v160;
        swift_unknownObjectRetain();
        sub_1BE92898C();
        swift_getObjectType();
        sub_1BE930D64();
        v117 = sub_1BE92E264(13);
        [v118 composeFormattingController:v138 didSelectTextStyle:?];
        MEMORY[0x1E69E5920](v117);
        swift_unknownObjectRelease();
LABEL_42:
        MEMORY[0x1E69E5920](v120);
        return (*(v151 + 8))(v150, v153);
      }
    }

    else
    {
      MEMORY[0x1E69E5920](v120);
      MEMORY[0x1E69E5928](v120);
      v113 = *MEMORY[0x1E69DE660];
      MEMORY[0x1E69E5928](v113);
      v114 = &v164;
      v164 = v113;
      v163[1] = v120;
      v115 = sub_1BE94223C();
      sub_1BE923F04(v114);
      if (v115)
      {
        MEMORY[0x1E69E5920](v120);
        v161 = [v138 formattingDelegate];
        if (v161)
        {
          v110 = &v161;
          v112 = v161;
          swift_unknownObjectRetain();
          sub_1BE92898C();
          swift_getObjectType();
          sub_1BE930D64();
          v111 = sub_1BE92E264(15);
          [v112 composeFormattingController:v138 didSelectTextStyle:?];
          MEMORY[0x1E69E5920](v111);
          swift_unknownObjectRelease();
          goto LABEL_42;
        }
      }

      else
      {
        MEMORY[0x1E69E5920](v120);
        MEMORY[0x1E69E5928](v120);
        v107 = *MEMORY[0x1E69DE638];
        MEMORY[0x1E69E5928](v107);
        v108 = v163;
        v163[0] = v107;
        v162[1] = v120;
        v109 = sub_1BE94223C();
        sub_1BE923F04(v108);
        if ((v109 & 1) == 0)
        {
          MEMORY[0x1E69E5920](v120);
          goto LABEL_42;
        }

        MEMORY[0x1E69E5920](v120);
        v162[0] = [v138 formattingDelegate];
        if (v162[0])
        {
          v104 = v162;
          v106 = v162[0];
          swift_unknownObjectRetain();
          sub_1BE92898C();
          swift_getObjectType();
          sub_1BE930D64();
          v105 = sub_1BE92E264(14);
          [v106 composeFormattingController:v138 didSelectTextStyle:?];
          MEMORY[0x1E69E5920](v105);
          swift_unknownObjectRelease();
          goto LABEL_42;
        }
      }
    }

    sub_1BE92898C();
    goto LABEL_42;
  }

  if (v155 != *MEMORY[0x1E69DC458])
  {
    if (v155 == *MEMORY[0x1E69DC468])
    {
      v186 = [v138 formattingDelegate];
      if (v186)
      {
        v44 = &v186;
        v45 = v186;
        swift_unknownObjectRetain();
        sub_1BE92898C();
        swift_getObjectType();
        [v45 composeFormattingController:v138 didChangeFontSize:sub_1BE92C49C()];
        swift_unknownObjectRelease();
        return (*(v151 + 8))(v150, v153);
      }
    }

    else if (v155 == *MEMORY[0x1E69DC460])
    {
      v187 = [v138 formattingDelegate];
      if (v187)
      {
        v42 = &v187;
        v43 = v187;
        swift_unknownObjectRetain();
        sub_1BE92898C();
        swift_getObjectType();
        [v43 composeFormattingController:v138 didChangeFontSize:sub_1BE92C49C()];
        swift_unknownObjectRelease();
        return (*(v151 + 8))(v150, v153);
      }
    }

    else if (v155 == *MEMORY[0x1E69DC488])
    {
      v182 = [v138 formattingDelegate];
      if (v182)
      {
        v55 = &v182;
        v57 = v182;
        swift_unknownObjectRetain();
        sub_1BE92898C();
        swift_getObjectType();
        sub_1BE930D64();
        v56 = sub_1BE92E264(10);
        [v57 composeFormattingController:v138 didSelectTextStyle:?];
        MEMORY[0x1E69E5920](v56);
        swift_unknownObjectRelease();
        return (*(v151 + 8))(v150, v153);
      }
    }

    else if (v155 == *MEMORY[0x1E69DC480])
    {
      v183 = [v138 formattingDelegate];
      if (v183)
      {
        v52 = &v183;
        v54 = v183;
        swift_unknownObjectRetain();
        sub_1BE92898C();
        swift_getObjectType();
        sub_1BE930D64();
        v53 = sub_1BE92E264(9);
        [v54 composeFormattingController:v138 didSelectTextStyle:?];
        MEMORY[0x1E69E5920](v53);
        swift_unknownObjectRelease();
        return (*(v151 + 8))(v150, v153);
      }
    }

    else if (v155 == *MEMORY[0x1E69DC478])
    {
      v184 = [v138 formattingDelegate];
      if (v184)
      {
        v49 = &v184;
        v51 = v184;
        swift_unknownObjectRetain();
        sub_1BE92898C();
        swift_getObjectType();
        sub_1BE930D64();
        v50 = sub_1BE92E264(11);
        [v51 composeFormattingController:v138 didSelectTextStyle:?];
        MEMORY[0x1E69E5920](v50);
        swift_unknownObjectRelease();
        return (*(v151 + 8))(v150, v153);
      }
    }

    else
    {
      if (v155 != *MEMORY[0x1E69DC470])
      {
        (*(v151 + 8))(v154, v153);
        return (*(v151 + 8))(v150, v153);
      }

      v185 = [v138 formattingDelegate];
      if (v185)
      {
        v46 = &v185;
        v48 = v185;
        swift_unknownObjectRetain();
        sub_1BE92898C();
        swift_getObjectType();
        sub_1BE930D64();
        v47 = sub_1BE92E264(12);
        [v48 composeFormattingController:v138 didSelectTextStyle:?];
        MEMORY[0x1E69E5920](v47);
        swift_unknownObjectRelease();
        return (*(v151 + 8))(v150, v153);
      }
    }

LABEL_95:
    sub_1BE92898C();
    return (*(v151 + 8))(v150, v153);
  }

  (*(v151 + 96))(v154, v153);
  v32 = *v154;
  v33 = *(v154 + 1);
  v195 = v32;
  v196 = v33;
  sub_1BE94203C();
  v34 = sub_1BE92E2B0();
  if (v34 == 5)
  {

    return (*(v151 + 8))(v150, v153);
  }

  v31 = v34;
  v27 = v34;
  v194 = v34;
  v28 = objc_opt_self();
  v29 = sub_1BE92E4C0(v27);
  v30 = [v28 preferredFontForTextStyle_];
  MEMORY[0x1E69E5920](v29);
  v193 = v30;
  v192 = [v138 formattingDelegate];
  if (v192)
  {
    v25 = &v192;
    v26 = v192;
    swift_unknownObjectRetain();
    sub_1BE92898C();
    swift_getObjectType();
    [v26 composeFormattingController:v138 didChangeFont:v30];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BE92898C();
  }

  MEMORY[0x1E69E5920](v30);

  return (*(v151 + 8))(v150, v153);
}

id sub_1BE92E264(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() composeTextStyleForTextStyleType_];

  return v1;
}

uint64_t sub_1BE92E2B0()
{
  sub_1BE94283C();
  *v0 = "title";
  *(v0 + 8) = 5;
  *(v0 + 16) = 2;
  *(v0 + 24) = "headline";
  *(v0 + 32) = 8;
  *(v0 + 40) = 2;
  *(v0 + 48) = "subheadline";
  *(v0 + 56) = 11;
  *(v0 + 64) = 2;
  *(v0 + 72) = "body";
  *(v0 + 80) = 4;
  *(v0 + 88) = 2;
  *(v0 + 96) = "footnote";
  *(v0 + 104) = 8;
  *(v0 + 112) = 2;
  sub_1BE921DF8();
  v4 = sub_1BE9427FC();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_12:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_12;
    case 2:
      v3 = 2;
      goto LABEL_12;
    case 3:
      v3 = 3;
      goto LABEL_12;
    case 4:
      v3 = 4;
      goto LABEL_12;
  }

  return 5;
}

uint64_t sub_1BE92E4C0(char a1)
{
  v3 = a1;
  if (a1)
  {
    switch(a1)
    {
      case 1:
        sub_1BE930C04(MEMORY[0x1E69DDD40], &v2);
        break;
      case 2:
        sub_1BE930C04(MEMORY[0x1E69DDD80], &v2);
        break;
      case 3:
        sub_1BE930C04(MEMORY[0x1E69DDCF8], &v2);
        break;
      default:
        sub_1BE930C04(MEMORY[0x1E69DDD28], &v2);
        break;
    }
  }

  else
  {
    sub_1BE930C04(MEMORY[0x1E69DDDB8], &v2);
  }

  return v2;
}

void sub_1BE92E644()
{
  v1 = [v0 formattingDelegate];
  if (v1)
  {
    swift_unknownObjectRetain();
    sub_1BE92898C();
    swift_getObjectType();
    [v1 composeFormattingControllerDidCancel_];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BE92898C();
  }
}

uint64_t sub_1BE92E77C(uint64_t a1, void *a2)
{
  v57 = a1;
  v58 = a2;
  v55 = sub_1BE9310DC;
  v56 = sub_1BE931118;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v66 = 0;
  v60 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB61D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v59, v58, v2, v3);
  v61 = &v18 - v60;
  v70 = v5;
  v69 = v6;
  v68 = v4;
  v67 = [v4 formattingDelegate];
  if (v67)
  {
    v53 = &v67;
    v54 = v67;
    swift_unknownObjectRetain();
    sub_1BE92898C();
    swift_getObjectType();
    if ([v54 respondsToSelector_])
    {
      swift_unknownObjectRetain();
      v51 = 7;
      v52 = swift_allocObject();
      *(v52 + 16) = v54;
      v7 = swift_allocObject();
      v8 = v52;
      v9 = v56;
      *(v7 + 16) = v55;
      *(v7 + 24) = v8;
      v62 = v9;
      v63 = v7;
    }

    else
    {
      v62 = 0;
      v63 = 0;
    }

    v49 = v62;
    v50 = v63;
    if (v62)
    {
      v47 = v49;
      v48 = v50;
      v44 = v50;
      v45 = v49(v59);

      swift_unknownObjectRelease();
      v46 = v45;
      goto LABEL_9;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BE92898C();
  }

  v46 = 0;
LABEL_9:
  v43 = v46;
  if (!v46)
  {
    v18 = [v58 configuration];
    [v18 setIncludeFaces_];
    MEMORY[0x1E69E5920](v18);
    v21 = 1;
    return v21 & 1;
  }

  v42 = v43;
  v10 = v59;
  v38 = v43;
  v66 = v43;
  v39 = [v58 configuration];
  v40 = 1;
  [v39 setIncludeFaces_];
  MEMORY[0x1E69E5920](v39);
  MEMORY[0x1E69E5928](v10);
  sub_1BE9425FC();
  v11 = sub_1BE94259C();
  if ((*(*(v11 - 8) + 48))(v61, v40) != 0)
  {
    sub_1BE930C44(v61);
    MEMORY[0x1E69E5920](v59);
LABEL_19:
    v33 = 0;
    goto LABEL_15;
  }

  v36 = sub_1BE94256C();
  sub_1BE930C44(v61);
  MEMORY[0x1E69E5920](v59);
  v65 = v36;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6208);
  sub_1BE930A64();
  sub_1BE9424CC();
  v37 = v64;

  if (!v37)
  {
    goto LABEL_19;
  }

  v34 = v37;
  v31 = v37;
  v32 = [v37 fontDescriptor];
  MEMORY[0x1E69E5920](v31);
  v33 = v32;
LABEL_15:
  v29 = v33;
  [v58 setSelectedFontDescriptor_];
  MEMORY[0x1E69E5920](v29);
  *&v12 = MEMORY[0x1E69E5928](v59).n128_u64[0];
  [v58 setDelegate_];
  swift_unknownObjectRelease();
  *&v13 = MEMORY[0x1E69E5928](v58).n128_u64[0];
  v30 = [v58 sheetPresentationController];
  MEMORY[0x1E69E5920](v58);
  if (v30)
  {
    v28 = v30;
    v27 = v30;
    v24 = sub_1BE931078();
    v23 = sub_1BE94283C();
    v22 = v14;
    v15 = [objc_opt_self() largeDetent];
    v16 = v23;
    *v22 = v15;
    sub_1BE921DF8();
    v25 = v16;
    v26 = sub_1BE94238C();

    [v27 setDetents_];
    MEMORY[0x1E69E5920](v26);
    MEMORY[0x1E69E5920](v27);
  }

  v19 = 1;
  v20 = 0;
  [v59 dismissViewControllerAnimated:1 completion:?];
  [v38 presentViewController:v58 animated:v19 & 1 completion:v20];
  MEMORY[0x1E69E5920](v38);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1BE92EF90(uint64_t a1, uint64_t a2)
{
  v73 = a1;
  v74 = a2;
  v71 = sub_1BE9311EC;
  v72 = sub_1BE9311F4;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v82 = 0;
  v79 = 0;
  v75 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB61D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v77, v74, v2, v3);
  v76 = v21 - v75;
  v99 = v5;
  v98 = v6;
  v97 = v4;
  *&v7 = MEMORY[0x1E69E5928](v4).n128_u64[0];
  v78 = [v77 navigationController];
  if (v78)
  {
    v70 = v78;
    v68 = v78;
    v79 = v78;
    MEMORY[0x1E69E5920](v77);
    v8 = [v68 topViewController];
    v69 = v8;
    if (v8)
    {
      v67 = v69;
      v65 = v69;
      objc_opt_self();
      v66 = swift_dynamicCastObjCClass();
      if (v66)
      {
        v64 = v66;
      }

      else
      {
        MEMORY[0x1E69E5920](v65);
        v64 = 0;
      }

      v63 = v64;
    }

    else
    {
      v63 = 0;
    }

    v62 = v63;
    MEMORY[0x1E69E5920](v63);
    if (v62)
    {
      MEMORY[0x1E69E5920](v68);
      v61 = 0;
      return v61 & 1;
    }

    MEMORY[0x1E69E5920](v68);
  }

  else
  {
    MEMORY[0x1E69E5920](v77);
  }

  v9 = v77;
  v59 = 0;
  v58 = sub_1BE931124();
  MEMORY[0x1E69E5928](v9);
  sub_1BE9425FC();
  v10 = sub_1BE94259C();
  if ((*(*(v10 - 8) + 48))(v76, 1) == 0)
  {
    v55 = sub_1BE94252C();
    sub_1BE930C44(v76);
    MEMORY[0x1E69E5920](v77);
    v81 = v55;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6278);
    sub_1BE931260();
    sub_1BE9424CC();
    v56 = v80;

    v57 = v56;
  }

  else
  {
    sub_1BE930C44(v76);
    MEMORY[0x1E69E5920](v77);
    v57 = 0;
  }

  v95 = v57;
  if (v57)
  {
    v96 = v95;
  }

  else
  {
    v96 = [objc_opt_self() labelColor];
    if (v95)
    {
      sub_1BE923F04(&v95);
    }
  }

  v52 = v96;
  *&v11 = MEMORY[0x1E69E5928](v77).n128_u64[0];
  v53 = [v77 navigationController];
  MEMORY[0x1E69E5920](v77);
  v94 = v53;
  v51 = v53 == 0;
  v47 = v51;
  sub_1BE923F04(&v94);
  v48 = sub_1BE92FBA0(v52);
  v93 = v48;
  v49 = *&v77[OBJC_IVAR___MFComposeFormattingViewController_colorPickerDelegate];
  *&v12 = MEMORY[0x1E69E5928](v49).n128_u64[0];
  [v48 setDelegate_];
  swift_unknownObjectRelease();
  *&v13 = MEMORY[0x1E69E5928](v77).n128_u64[0];
  v50 = [v77 navigationController];
  if (v50)
  {
    v46 = v50;
    v45 = v50;
    v82 = v50;
    MEMORY[0x1E69E5920](v77);
    [v45 pushViewController:v48 animated:1];
    MEMORY[0x1E69E5920](v45);
  }

  else
  {
    MEMORY[0x1E69E5920](v77);
    v36 = 0;
    sub_1BE931188();
    MEMORY[0x1E69E5928](v48);
    v43 = sub_1BE92FBEC(v48);
    v92 = v43;
    v34 = sub_1BE94229C();
    v35 = v14;
    sub_1BE94203C();
    v41 = sub_1BE94224C();
    MEMORY[0x1E69E5928](v41);

    MEMORY[0x1E69E5920](v41);
    v91 = v41;
    v37 = sub_1BE931078();
    MEMORY[0x1E69E5928](v41);
    v40 = swift_allocObject();
    v38 = v40 + 16;
    MEMORY[0x1E69E5928](v77);
    v39 = v77;
    swift_unknownObjectWeakInit();
    MEMORY[0x1E69E5920](v39);

    v42 = sub_1BE94261C();

    MEMORY[0x1E69E5920](v41);
    v90 = v42;
    *&v15 = MEMORY[0x1E69E5928](v43).n128_u64[0];
    v44 = [v43 sheetPresentationController];
    MEMORY[0x1E69E5920](v43);
    if (v44)
    {
      v33 = v44;
      v32 = v44;
      v29 = sub_1BE94283C();
      v28 = v16;
      MEMORY[0x1E69E5928](v42);
      v17 = v29;
      *v28 = v42;
      sub_1BE921DF8();
      v30 = v17;
      v31 = sub_1BE94238C();

      [v32 setDetents_];
      MEMORY[0x1E69E5920](v31);
      MEMORY[0x1E69E5920](v32);
    }

    *&v18 = MEMORY[0x1E69E5928](v43).n128_u64[0];
    v27 = [v43 sheetPresentationController];
    MEMORY[0x1E69E5920](v43);
    if (v27)
    {
      v26 = v27;
      v25 = v27;
      *&v19 = MEMORY[0x1E69E5928](v41).n128_u64[0];
      [v25 setLargestUndimmedDetentIdentifier_];
      MEMORY[0x1E69E5920](v41);
      MEMORY[0x1E69E5920](v25);
    }

    v23 = swift_allocObject();
    v21[1] = v23 + 16;
    MEMORY[0x1E69E5928](v77);
    v22 = v77;
    swift_unknownObjectWeakInit();
    MEMORY[0x1E69E5920](v22);

    v88 = v72;
    v89 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v84 = 1107296256;
    v85 = 0;
    v86 = sub_1BE92FFE0;
    v87 = &block_descriptor;
    v24 = _Block_copy(&aBlock);

    [v77 presentViewController:v43 animated:1 completion:v24];
    _Block_release(v24);
    MEMORY[0x1E69E5920](v42);
    MEMORY[0x1E69E5920](v41);
    MEMORY[0x1E69E5920](v43);
  }

  MEMORY[0x1E69E5920](v48);
  v61 = 0;
  return v61 & 1;
}

uint64_t sub_1BE92FC2C(uint64_t a1, uint64_t a2)
{
  v9[5] = a1;
  v9[4] = a2 + 16;
  swift_beginAccess();
  v9[0] = swift_unknownObjectWeakLoadStrong();
  if (v9[0])
  {
    v5 = v9[0];
    MEMORY[0x1E69E5928](v9[0]);
    sub_1BE923F04(v9);
    swift_endAccess();
    sub_1BE929F10();
    v6 = v2;
    MEMORY[0x1E69E5920](v5);
    v7 = v6;
    v8 = 0;
  }

  else
  {
    sub_1BE923F04(v9);
    swift_endAccess();
    v7 = 0;
    v8 = 1;
  }

  if (v8)
  {
    return 0x4071800000000000;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1BE92FD8C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    v1 = [Strong formattingDelegate];
    v6 = v1;
    if (v1)
    {
      swift_unknownObjectRetain();
      sub_1BE92898C();
      swift_getObjectType();
      if ([v6 respondsToSelector_])
      {
        swift_unknownObjectRetain();
        v3 = swift_allocObject();
        *(v3 + 16) = v6;
        v2 = swift_allocObject();
        *(v2 + 16) = sub_1BE932CA8;
        *(v2 + 24) = v3;
        v5 = sub_1BE932CD0;
      }

      else
      {
        v5 = 0;
      }

      if (v5)
      {
        v5(Strong);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE92898C();
    }

    return MEMORY[0x1E69E5920](Strong);
  }

  return result;
}

uint64_t sub_1BE92FFE0(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

id sub_1BE9300F0(void *a1)
{
  v6 = [a1 selectedFontDescriptor];
  if (!v6)
  {
    return sub_1BE930264(a1);
  }

  sub_1BE930BA0();
  MEMORY[0x1E69E5928](v6);
  v1 = sub_1BE92C21C();
  v3 = sub_1BE92B62C(v6, v1);
  v7 = [v5 formattingDelegate];
  if (v7)
  {
    swift_unknownObjectRetain();
    sub_1BE92898C();
    swift_getObjectType();
    [v7 composeFormattingController:v5 didChangeFont:v3];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BE92898C();
  }

  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v6);
  return sub_1BE930264(a1);
}

id MFComposeFormattingViewController.init(configuration:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration_];
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1BE93051C()
{
  sub_1BE92C02C();
  sub_1BE92157C();
  v1 = sub_1BE9426AC();

  return v1;
}

uint64_t sub_1BE9306A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE92E2B0();
  *a1 = result;
  return result;
}

uint64_t sub_1BE9306E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE92C02C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1BE930714@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE92B6F4();
  *a1 = result;
  return result;
}

unint64_t sub_1BE9307B4()
{
  v2 = qword_1EBDB61C8;
  if (!qword_1EBDB61C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB61C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB61C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE93083C()
{
  v2 = qword_1EBDB61E8;
  if (!qword_1EBDB61E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB61D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB61E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for Key()
{
  v4 = qword_1EBDB63D0;
  if (!qword_1EBDB63D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBDB63D0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1BE93095C()
{
  v2 = qword_1EBDB61F8;
  if (!qword_1EBDB61F8)
  {
    type metadata accessor for Key();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB61F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE9309DC()
{
  v2 = qword_1EBDB6200;
  if (!qword_1EBDB6200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB61F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6200);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE930A64()
{
  v2 = qword_1EBDB6210;
  if (!qword_1EBDB6210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6208);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6210);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE930B18()
{
  v2 = qword_1EBDB6228;
  if (!qword_1EBDB6228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6220);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6228);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE930BA0()
{
  v2 = qword_1EBDB6230;
  if (!qword_1EBDB6230)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB6230);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1BE930C04(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928]();
  result = a2;
  *a2 = v3;
  return result;
}

uint64_t sub_1BE930C44(uint64_t a1)
{
  v3 = sub_1BE94259C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1BE930CEC()
{
  v2 = qword_1EBDB6238;
  if (!qword_1EBDB6238)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6238);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE930D64()
{
  v2 = qword_1EBDB6240;
  if (!qword_1EBDB6240)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB6240);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for TextList()
{
  v4 = qword_1EBDB63C8;
  if (!qword_1EBDB63C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBDB63C8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1BE930E60()
{
  v2 = qword_1EBDB6248;
  if (!qword_1EBDB6248)
  {
    type metadata accessor for TextList();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6248);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE930EE0()
{
  v2 = qword_1EBDB6250;
  if (!qword_1EBDB6250)
  {
    type metadata accessor for TextList();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6250);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for TextAlignment()
{
  v4 = qword_1EBDB63C0;
  if (!qword_1EBDB63C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBDB63C0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1BE930FF8()
{
  v2 = qword_1EBDB6258;
  if (!qword_1EBDB6258)
  {
    type metadata accessor for TextAlignment();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6258);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE931078()
{
  v2 = qword_1EBDB6260;
  if (!qword_1EBDB6260)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB6260);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1BE9310DC(uint64_t a1)
{
  v2 = [*(v1 + 16) presentingViewControllerForComposeFormattingController_];

  return v2;
}

unint64_t sub_1BE931124()
{
  v2 = qword_1EBDB6268;
  if (!qword_1EBDB6268)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB6268);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1BE931188()
{
  v2 = qword_1EBDB6270;
  if (!qword_1EBDB6270)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB6270);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1BE931260()
{
  v2 = qword_1EBDB6280;
  if (!qword_1EBDB6280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6278);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6280);
    return WitnessTable;
  }

  return v2;
}

id sub_1BE9312E8(uint64_t a1)
{
  v4 = [v1 initWithSelectedColor_shouldShowTitleBar_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

id sub_1BE931340(uint64_t a1)
{
  v4 = [v1 initWithRootViewController_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

id sub_1BE931390()
{
  sub_1BE929A5C();
  v2 = sub_1BE94238C();
  v3 = [v1 initWithGroups_];
  MEMORY[0x1E69E5920](v2);

  return v3;
}

uint64_t sub_1BE931404()
{
  sub_1BE932A30();
  sub_1BE932BB0();
  return sub_1BE9427EC();
}

uint64_t sub_1BE931440()
{
  sub_1BE932A30();
  sub_1BE932BB0();
  return sub_1BE9427BC();
}

uint64_t sub_1BE93148C()
{
  sub_1BE932A30();
  sub_1BE932BB0();
  return sub_1BE9427CC() & 1;
}

uint64_t sub_1BE9314DC()
{
  sub_1BE932A30();
  sub_1BE932BB0();
  return sub_1BE9427DC();
}

uint64_t sub_1BE931644@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE93167C();
  *a1 = result;
  return result;
}

uint64_t sub_1BE93167C()
{
  sub_1BE94203C();
  v1 = sub_1BE94224C();
  MEMORY[0x1E69E5928](v1);

  MEMORY[0x1E69E5920](v1);
  return v1;
}

uint64_t sub_1BE9316E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE93171C(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BE93171C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = sub_1BE94225C();
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1BE93177C()
{
  sub_1BE932B30();
  sub_1BE932BB0();
  return sub_1BE9427EC();
}

uint64_t sub_1BE9317B8()
{
  sub_1BE932B30();
  sub_1BE932BB0();
  return sub_1BE9427BC();
}

uint64_t sub_1BE931804()
{
  sub_1BE932B30();
  sub_1BE932BB0();
  return sub_1BE9427CC() & 1;
}

uint64_t sub_1BE931854()
{
  sub_1BE932B30();
  sub_1BE932BB0();
  return sub_1BE9427DC();
}

uint64_t sub_1BE9318EC()
{
  sub_1BE932AB0();
  sub_1BE932BB0();
  return sub_1BE9427EC();
}

uint64_t sub_1BE931928()
{
  sub_1BE932AB0();
  sub_1BE932BB0();
  return sub_1BE9427BC();
}

uint64_t sub_1BE931974()
{
  sub_1BE932AB0();
  sub_1BE932BB0();
  return sub_1BE9427CC() & 1;
}

uint64_t sub_1BE9319C4()
{
  sub_1BE932AB0();
  sub_1BE932BB0();
  return sub_1BE9427DC();
}

uint64_t sub_1BE931B2C()
{
  sub_1BE93095C();
  sub_1BE932A30();
  return sub_1BE94279C();
}

uint64_t sub_1BE931B78()
{
  sub_1BE932C28();
  sub_1BE932B30();
  return sub_1BE94279C();
}

uint64_t sub_1BE931BC4()
{
  sub_1BE930E60();
  sub_1BE932AB0();
  return sub_1BE94279C();
}

unint64_t sub_1BE931D08()
{
  v2 = qword_1EBDB6290;
  if (!qword_1EBDB6290)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6290);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE931D9C()
{
  v2 = qword_1EBDB6298;
  if (!qword_1EBDB6298)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6298);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1BE931E34(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_1BE931F84(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for MFComposeFormattingViewController()
{
  v2 = qword_1EBDB7050[0];
  if (!qword_1EBDB7050[0])
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, qword_1EBDB7050);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1BE9321CC(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1BE932334(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_1BE93255C()
{
  v2 = qword_1EBDB63D8;
  if (!qword_1EBDB63D8)
  {
    type metadata accessor for Key();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB63D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE9325F4()
{
  v2 = qword_1EBDB63E0;
  if (!qword_1EBDB63E0)
  {
    type metadata accessor for Key();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB63E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE93268C()
{
  v2 = qword_1EBDB63E8;
  if (!qword_1EBDB63E8)
  {
    type metadata accessor for TextList();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB63E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE932724()
{
  v2 = qword_1EBDB63F0;
  if (!qword_1EBDB63F0)
  {
    type metadata accessor for TextList();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB63F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE9327BC()
{
  v2 = qword_1EBDB63F8;
  if (!qword_1EBDB63F8)
  {
    type metadata accessor for TextAlignment();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB63F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE932854()
{
  v2 = qword_1EBDB6400;
  if (!qword_1EBDB6400)
  {
    type metadata accessor for TextAlignment();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6400);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE93291C()
{
  v2 = qword_1EBDB6408;
  if (!qword_1EBDB6408)
  {
    type metadata accessor for Key();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6408);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE9329B4()
{
  v2 = qword_1EBDB7A60[0];
  if (!qword_1EBDB7A60[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EBDB7A60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE932A30()
{
  v2 = qword_1EBDB6410;
  if (!qword_1EBDB6410)
  {
    type metadata accessor for Key();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6410);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE932AB0()
{
  v2 = qword_1EBDB6418;
  if (!qword_1EBDB6418)
  {
    type metadata accessor for TextList();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6418);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE932B30()
{
  v2 = qword_1EBDB6420;
  if (!qword_1EBDB6420)
  {
    type metadata accessor for TextAlignment();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6420);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE932BB0()
{
  v2 = qword_1EBDB6428;
  if (!qword_1EBDB6428)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6428);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE932C28()
{
  v2 = qword_1EBDB6430;
  if (!qword_1EBDB6430)
  {
    type metadata accessor for TextAlignment();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6430);
    return WitnessTable;
  }

  return v2;
}

void *sub_1BE932CDC(uint64_t *a1, void *a2)
{
  v4 = *a1;
  MEMORY[0x1E69E5928]();
  *a2 = v4;
  v2 = a1[4];
  a2[4] = v2;
  (**(v2 - 8))((a2 + 1), (a1 + 1));
  return a2;
}

__n128 sub_1BE932D64(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1BE932D80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

unint64_t sub_1BE932DE4()
{
  v2 = qword_1EBDB6440;
  if (!qword_1EBDB6440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6438);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6440);
    return WitnessTable;
  }

  return v2;
}

void *sub_1BE932E6C(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  __swift_destroy_boxed_opaque_existential_1((a1 + 1));
  return a1;
}

void *sub_1BE932EAC(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_1BE94203C();
  a2[1] = v4;
  v2 = a1[5];
  a2[5] = v2;
  (**(v2 - 8))((a2 + 2), (a1 + 2));
  return a2;
}

uint64_t sub_1BE933294@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v30 = "Fatal error";
  v31 = "MessageUI/MFPreferencesURL.swift";
  v32 = "Unexpectedly found nil while unwrapping an Optional value";
  v54 = 0;
  v53 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60D0);
  v33 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v34 = v23 - v33;
  v36 = 0;
  v46 = sub_1BE941E5C();
  v43 = *(v46 - 8);
  v44 = v46 - 8;
  v35 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46, v6, v7, v8);
  v45 = v23 - v35;
  v37 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB64B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36, v9, v10, v11);
  v49 = v23 - v37;
  v51 = sub_1BE941D8C();
  v47 = *(v51 - 8);
  v48 = v51 - 8;
  v39 = *(v47 + 64);
  v38 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51, v12, v13, v14);
  v40 = v23 - v38;
  v41 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23 - v38, v15, v16, v17);
  v42 = v23 - v41;
  v54 = v23 - v41;
  v53 = v1;
  v52[39] = 2;
  MailSettingsSpecifier.url.getter(v18);
  v50 = 1;
  sub_1BE941D0C();
  (*(v43 + 8))(v45, v46);
  if ((*(v47 + 48))(v49, v50, v51) == 1)
  {
    sub_1BE9337E8(v49);
    sub_1BE9378B0();
    result = sub_1BE94275C();
    __break(1u);
  }

  else
  {
    (*(v47 + 32))(v42, v49, v51);
    v28 = 1;
    v23[1] = sub_1BE94229C();
    v25 = v19;
    v23[2] = v52;
    v20 = sub_1BE941D3C();
    v21 = v40;
    v24 = v20;
    sub_1BE9422BC();
    v24();

    (*(v47 + 16))(v21, v42, v51);
    sub_1BE941D1C();
    v26 = *(v47 + 8);
    v27 = v47 + 8;
    v26(v40, v51);
    if ((*(v43 + 48))(v34, v28, v46) == 1)
    {
      sub_1BE94274C();
      __break(1u);
    }

    (*(v43 + 32))(v29, v34, v46);
    return (v26)(v42, v51);
  }

  return result;
}

uint64_t sub_1BE9337E8(uint64_t a1)
{
  v3 = sub_1BE941D8C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1BE933988@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v30 = "Fatal error";
  v31 = "MessageUI/MFPreferencesURL.swift";
  v32 = "Unexpectedly found nil while unwrapping an Optional value";
  v54 = 0;
  v53 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60D0);
  v33 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v34 = v23 - v33;
  v36 = 0;
  v46 = sub_1BE941E5C();
  v43 = *(v46 - 8);
  v44 = v46 - 8;
  v35 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46, v6, v7, v8);
  v45 = v23 - v35;
  v37 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB64B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36, v9, v10, v11);
  v49 = v23 - v37;
  v51 = sub_1BE941D8C();
  v47 = *(v51 - 8);
  v48 = v51 - 8;
  v39 = *(v47 + 64);
  v38 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51, v12, v13, v14);
  v40 = v23 - v38;
  v41 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23 - v38, v15, v16, v17);
  v42 = v23 - v41;
  v54 = v23 - v41;
  v53 = v1;
  v52[39] = 2;
  MailSettingsSpecifier.url.getter(v18);
  v50 = 1;
  sub_1BE941D0C();
  (*(v43 + 8))(v45, v46);
  if ((*(v47 + 48))(v49, v50, v51) == 1)
  {
    sub_1BE9337E8(v49);
    sub_1BE9378B0();
    result = sub_1BE94275C();
    __break(1u);
  }

  else
  {
    (*(v47 + 32))(v42, v49, v51);
    v28 = 1;
    v23[1] = sub_1BE94229C();
    v25 = v19;
    v23[2] = v52;
    v20 = sub_1BE941D3C();
    v21 = v40;
    v24 = v20;
    sub_1BE9422BC();
    v24();

    (*(v47 + 16))(v21, v42, v51);
    sub_1BE941D1C();
    v26 = *(v47 + 8);
    v27 = v47 + 8;
    v26(v40, v51);
    if ((*(v43 + 48))(v34, v28, v46) == 1)
    {
      sub_1BE94274C();
      __break(1u);
    }

    (*(v43 + 32))(v29, v34, v46);
    return (v26)(v42, v51);
  }

  return result;
}

uint64_t sub_1BE933FD8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v30 = "Fatal error";
  v31 = "MessageUI/MFPreferencesURL.swift";
  v32 = "Unexpectedly found nil while unwrapping an Optional value";
  v54 = 0;
  v53 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60D0);
  v33 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v34 = v23 - v33;
  v36 = 0;
  v46 = sub_1BE941E5C();
  v43 = *(v46 - 8);
  v44 = v46 - 8;
  v35 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46, v6, v7, v8);
  v45 = v23 - v35;
  v37 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB64B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36, v9, v10, v11);
  v49 = v23 - v37;
  v51 = sub_1BE941D8C();
  v47 = *(v51 - 8);
  v48 = v51 - 8;
  v39 = *(v47 + 64);
  v38 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51, v12, v13, v14);
  v40 = v23 - v38;
  v41 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23 - v38, v15, v16, v17);
  v42 = v23 - v41;
  v54 = v23 - v41;
  v53 = v1;
  v52[39] = 0;
  MailSettingsSpecifier.url.getter(v18);
  v50 = 1;
  sub_1BE941D0C();
  (*(v43 + 8))(v45, v46);
  if ((*(v47 + 48))(v49, v50, v51) == 1)
  {
    sub_1BE9337E8(v49);
    sub_1BE9378B0();
    result = sub_1BE94275C();
    __break(1u);
  }

  else
  {
    (*(v47 + 32))(v42, v49, v51);
    v28 = 1;
    v23[1] = sub_1BE94229C();
    v25 = v19;
    v23[2] = v52;
    v20 = sub_1BE941D3C();
    v21 = v40;
    v24 = v20;
    sub_1BE9422BC();
    v24();

    (*(v47 + 16))(v21, v42, v51);
    sub_1BE941D1C();
    v26 = *(v47 + 8);
    v27 = v47 + 8;
    v26(v40, v51);
    if ((*(v43 + 48))(v34, v28, v46) == 1)
    {
      sub_1BE94274C();
      __break(1u);
    }

    (*(v43 + 32))(v29, v34, v46);
    return (v26)(v42, v51);
  }

  return result;
}

BOOL sub_1BE93452C(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

void sub_1BE934770(void *a1, int a2)
{
  v214 = v244;
  v218 = a1;
  v215 = a2;
  v216 = 0;
  v251 = 0;
  v243 = 0;
  v242 = 0;
  v241 = 0;
  v240 = 0;
  v239 = 0;
  v238 = 0;
  v237 = 0;
  v236 = 0;
  v235 = 0;
  v234 = 0;
  v233 = 0;
  v232 = 0;
  v231 = 0;
  v230 = 0;
  v227 = 0;
  v224 = 0;
  v217 = 0;
  v222 = 0;
  v221 = 0;
  v220 = 0;
  v253 = a1;
  v252 = a2;
  v249 = 0;
  v250 = 0;
  v247 = 0;
  v248 = 0;
  v2 = a1;
  objc_opt_self();
  v219 = swift_dynamicCastObjCClass();
  if (v219)
  {
    v213 = v219;
  }

  else
  {

    v213 = 0;
  }

  v212 = v213;
  if (v213)
  {
    v211 = v212;
    v209 = v212;
    v221 = v212;
    v3 = [v212 mailAccountIfAvailable];
    v210 = v3;
    if (v3)
    {
      v208 = v210;
      v207 = v210;
      v220 = v210;
      v4 = v210;
      v5 = nullsub_1(v210);
      v7 = v6;
      v8 = v249;
      v9 = v250;
      v249 = v5;
      v250 = v7;
      sub_1BE937C44(v8, v9);
    }
  }

  v205 = v249;
  v206 = v250;
  sub_1BE937964(v249, v250);
  v246[0] = v205;
  v246[1] = v206;
  v204 = v205 == 0;
  v203 = v204;
  sub_1BE9379B4(v246);
  if (!v205)
  {
    v202 = [objc_opt_self() mailAccounts];
    if (v202)
    {
      v201 = v202;
      v198 = v202;
      v197 = sub_1BE937CF8();
      v199 = sub_1BE94239C();

      v200 = v199;
    }

    else
    {
      v200 = 0;
    }

    v196 = v200;
    if (v200)
    {
      v195 = v196;
    }

    else
    {
      LODWORD(v72) = 0;
      v71 = 78;
      v70 = 2;
      sub_1BE94274C();
      __break(1u);
    }

    v229 = v195;
    v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB64B8);
    sub_1BE937AA4();
    sub_1BE9424EC();
    for (i = v217; ; i = v152)
    {
      v191 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB64C8);
      sub_1BE94273C();
      v192 = v228;
      if (!v228)
      {
        v153 = v191;
        goto LABEL_52;
      }

      v190 = v192;
      v188 = v192;
      v227 = v192;
      v189 = sub_1BE937B2C();
      if (sub_1BE94265C())
      {
        v10 = v188;
        v11 = nullsub_1(v188);
        v13 = v12;
        v14 = v249;
        v15 = v250;
        v249 = v11;
        v250 = v13;
        sub_1BE937C44(v14, v15);
        v187 = v191;
        goto LABEL_48;
      }

      v186 = [v188 deliveryAccount];
      if (!v186)
      {
        goto LABEL_31;
      }

      v185 = v186;
      v184 = v186;
      v222 = v186;
      v16 = sub_1BE94265C();
      if ((v16 & 1) == 0)
      {
        break;
      }

      if ([v188 derivesDeliveryAccountInfoFromMailAccount])
      {
        v17 = v188;
      }

      else
      {
        v23 = v188;
        v24 = v184;
      }

      v18 = nullsub_1(v188);
      v20 = v19;
      v21 = v249;
      v22 = v250;
      v249 = v18;
      v250 = v20;
      sub_1BE937C44(v21, v22);

      v183 = v191;
LABEL_47:
      v187 = v183;
LABEL_48:
      v157 = v187;
      v158 = v249;
      v159 = v250;
      sub_1BE937964(v249, v250);
      v225[0] = v158;
      v225[1] = v159;
      v156 = v158 != 0;
      v154 = v156;
      sub_1BE9379B4(v225);
      v155 = v188;
      if (v154)
      {

        v153 = v157;
LABEL_52:
        v150 = v153;
        sub_1BE91F954();
        v151 = v150;
        goto LABEL_54;
      }

      v152 = v157;
    }

LABEL_31:
    v181 = v247;
    v182 = v248;
    sub_1BE937964(v247, v248);
    v226[0] = v181;
    v226[1] = v182;
    v180 = v181 == 0;
    v179 = v180;
    sub_1BE9379B4(v226);
    if (v179)
    {
      v178 = [v188 deliveryAccountAlternates];
      if (v178)
      {
        v177 = v178;
        v174 = v178;
        v173 = sub_1BE937C94();
        v175 = sub_1BE94239C();

        v176 = v175;
      }

      else
      {
        v176 = 0;
      }

      v172 = v176;
      if (v176)
      {
        v171 = v172;
        v25 = v191;
        v163 = v172;
        v224 = v172;
        v223 = v172;
        v26 = v218;
        v166 = &v73;
        MEMORY[0x1EEE9AC00](&v73, v27, v28, v29);
        v164 = &v70;
        v72 = v30;
        v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB64D8);
        sub_1BE937BBC();
        v31 = sub_1BE94233C();
        v167 = v25;
        v168 = v31;
        v169 = v166;
        if (v25)
        {

          __break(1u);
          return;
        }

        v162 = v168;

        if (v162)
        {
          v32 = v188;
          v33 = v218;
          objc_opt_self();
          v161 = swift_dynamicCastObjCClass();
          if (v161)
          {
            v160 = v161;
          }

          else
          {

            v160 = 0;
          }

          v34 = nullsub_1(v188);
          v36 = v35;
          v37 = v247;
          v38 = v248;
          v247 = v34;
          v248 = v36;
          sub_1BE937C44(v37, v38);

          v170 = v167;
        }

        else
        {

          v170 = v167;
        }
      }

      else
      {
        v170 = v191;
      }
    }

    else
    {
      v170 = v191;
    }

    v183 = v170;
    goto LABEL_47;
  }

  v151 = v217;
LABEL_54:
  v148 = v249;
  v149 = v250;
  sub_1BE937964(v249, v250);
  v244[0] = v148;
  v244[1] = v149;
  if (v148)
  {
    v214[1] = *v214;
  }

  else
  {
    sub_1BE937A10(&v247, v245);
    if (v244[0])
    {
      sub_1BE9379B4(v244);
    }
  }

  v146 = v245[0];
  v147 = v245[1];
  if (v245[0])
  {
    v144 = v146;
    v145 = v147;
    v140 = v147;
    v141 = v146;
    v242 = v146;
    v243 = v147;
    v39 = v146;
    v241 = v141;
    v40 = v140;
    v240 = v140;
    v41 = v141;
    v143 = [v141 parentAccount];
    v142 = v143;

    if (v143)
    {
      v139 = v142;
      v136 = v142;
      v137 = [v142 identifier];

      v138 = v137;
    }

    else
    {
      v138 = 0;
    }

    v135 = v138;
    if (v138)
    {
      v134 = v135;
      v129 = v135;
      v232 = v135;
      v42 = v135;
      v127 = sub_1BE94225C();
      v128 = v43;
      v130 = v127;
      v131 = v43;
      sub_1BE94203C();
      v238 = v127;
      v239 = v128;

      v132 = v130;
      v133 = v131;
    }

    else
    {
      v44 = v141;
      v126 = [v141 identifier];
      if (v126)
      {
        v125 = v126;
        v120 = v126;
        v121 = sub_1BE94225C();
        v122 = v45;

        v123 = v121;
        v124 = v122;
      }

      else
      {
        v123 = 0;
        v124 = 0;
      }

      v118 = v124;
      v119 = v123;
      if (!v124)
      {

        sub_1BE9379B4(&v247);
        sub_1BE9379B4(&v249);
        v115 = 0;
        return;
      }

      v116 = v119;
      v117 = v118;
      v114 = v118;
      v113 = v119;
      v236 = v119;
      v237 = v118;

      sub_1BE94203C();
      sub_1BE94203C();
      v238 = v113;
      v239 = v114;

      v132 = v113;
      v133 = v114;
    }

    v110 = v133;
    v109 = v132;
    v111 = MEMORY[0x1E69E6158];
    v112 = 1;
    v46 = sub_1BE94283C();
    v47 = v110;
    *v48 = v109;
    v48[1] = v47;
    sub_1BE921DF8();
    v235 = v46;
    if (sub_1BE93452C(v215, v112) || sub_1BE93452C(v215, 2))
    {
      v106 = MEMORY[0x1E69E6158];
      v103 = 1;
      v105 = sub_1BE94283C();
      v104 = v49;
      v50 = sub_1BE94229C();
      v51 = v104;
      v52 = v50;
      v53 = v105;
      *v104 = v52;
      v51[1] = v54;
      sub_1BE921DF8();
      v107 = v53;
      sub_1BE9423DC();
    }

    if (!sub_1BE93452C(v215, 2))
    {
      v55 = v140;
      if (v140)
      {
        v102 = v140;
        v100 = v140;
        v101 = [v140 identifier];
        if (v101)
        {
          v99 = v101;
          v94 = v101;
          v95 = sub_1BE94225C();
          v96 = v56;

          v97 = v95;
          v98 = v96;
        }

        else
        {
          v97 = 0;
          v98 = 0;
        }

        v91 = v98;
        v90 = v97;

        v92 = v90;
        v93 = v91;
      }

      else
      {
        v92 = 0;
        v93 = 0;
      }

      v88 = v93;
      v89 = v92;
      if (v93)
      {
        v86 = v89;
        v87 = v88;
        v85 = v88;
        v81 = v89;
        v233 = v89;
        v234 = v88;
        v83 = MEMORY[0x1E69E6158];
        v80 = sub_1BE94283C();
        v82 = v57;
        v58 = sub_1BE94229C();
        v59 = v82;
        *v82 = v58;
        v59[1] = v60;
        sub_1BE94203C();
        v61 = v80;
        v62 = v82;
        v63 = v85;
        v82[2] = v81;
        v62[3] = v63;
        sub_1BE921DF8();
        v84 = v61;
        sub_1BE9423DC();
      }
    }

    if (sub_1BE93452C(v215, 2))
    {
      v78 = MEMORY[0x1E69E6158];
      v75 = 1;
      v77 = sub_1BE94283C();
      v76 = v64;
      v65 = sub_1BE94229C();
      v66 = v76;
      v67 = v65;
      v68 = v77;
      *v76 = v67;
      v66[1] = v69;
      sub_1BE921DF8();
      v79 = v68;
      sub_1BE9423DC();
    }

    v73 = v235;
    sub_1BE94203C();
    v74 = v73;
    sub_1BE91F954();
    sub_1BE9215F4();

    sub_1BE9379B4(&v247);
    sub_1BE9379B4(&v249);
    v115 = v74;
  }

  else
  {
    sub_1BE9379B4(&v247);
    sub_1BE9379B4(&v249);
    v115 = 0;
  }
}

uint64_t sub_1BE9357B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v48 = a1;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v65 = 0;
  v46 = 0;
  v57 = sub_1BE941E5C();
  v54 = *(v57 - 8);
  v55 = v57 - 8;
  v45 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57, v3, v4, v5);
  v56 = v25 - v45;
  v47 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB64B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46, v6, v7, v8);
  v60 = v25 - v47;
  v62 = sub_1BE941D8C();
  v58 = *(v62 - 8);
  v59 = v62 - 8;
  v50 = *(v58 + 64);
  v49 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v48, v9, v10, v11);
  v51 = v25 - v49;
  v52 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v12, v25 - v49, v13, v14);
  v53 = v25 - v52;
  v69 = v25 - v52;
  v68 = v15;
  v67 = v2;
  v66 = 0;
  MailSettingsSpecifier.url.getter(v16);
  v61 = 1;
  sub_1BE941D0C();
  (*(v54 + 8))(v56, v57);
  if ((*(v58 + 48))(v60, v61, v62) == 1)
  {
    sub_1BE9337E8(v60);
  }

  else
  {
    (*(v58 + 32))(v53, v60, v62);
    sub_1BE934770(v48, 0);
    v43 = v17;
    if (v17)
    {
      v42 = v43;
      v39 = v43;
      v65 = v43;
      v26 = "/";
      v27 = 1;
      v25[3] = 1;
      v31 = sub_1BE94229C();
      v34 = v18;
      v64 = v39;
      v29 = sub_1BE94229C();
      v30 = v19;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60E8);
      sub_1BE921F64();
      v32 = sub_1BE94222C();
      v33 = v20;

      v35 = MEMORY[0x1BFB4A0C0](v31, v34, v32, v33);
      v38 = v21;

      v36 = &v63;
      v22 = sub_1BE941D3C();
      v23 = v51;
      v37 = v22;
      sub_1BE9422BC();
      v37();

      (*(v58 + 16))(v23, v53, v62);
      sub_1BE941D1C();
      v41 = *(v58 + 8);
      v40 = v58 + 8;
      v41(v51, v62);

      return (v41)(v53, v62);
    }

    (*(v58 + 8))(v53, v62);
  }

  return (*(v54 + 56))(v44, 1, 1, v57);
}

uint64_t sub_1BE935EE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v48 = a1;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v65 = 0;
  v46 = 0;
  v57 = sub_1BE941E5C();
  v54 = *(v57 - 8);
  v55 = v57 - 8;
  v45 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57, v3, v4, v5);
  v56 = v25 - v45;
  v47 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB64B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46, v6, v7, v8);
  v60 = v25 - v47;
  v62 = sub_1BE941D8C();
  v58 = *(v62 - 8);
  v59 = v62 - 8;
  v50 = *(v58 + 64);
  v49 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v48, v9, v10, v11);
  v51 = v25 - v49;
  v52 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v12, v25 - v49, v13, v14);
  v53 = v25 - v52;
  v69 = v25 - v52;
  v68 = v15;
  v67 = v2;
  v66 = 0;
  MailSettingsSpecifier.url.getter(v16);
  v61 = 1;
  sub_1BE941D0C();
  (*(v54 + 8))(v56, v57);
  if ((*(v58 + 48))(v60, v61, v62) == 1)
  {
    sub_1BE9337E8(v60);
  }

  else
  {
    (*(v58 + 32))(v53, v60, v62);
    sub_1BE934770(v48, 1);
    v43 = v17;
    if (v17)
    {
      v42 = v43;
      v39 = v43;
      v65 = v43;
      v26 = "/";
      v27 = 1;
      v25[3] = 1;
      v31 = sub_1BE94229C();
      v34 = v18;
      v64 = v39;
      v29 = sub_1BE94229C();
      v30 = v19;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60E8);
      sub_1BE921F64();
      v32 = sub_1BE94222C();
      v33 = v20;

      v35 = MEMORY[0x1BFB4A0C0](v31, v34, v32, v33);
      v38 = v21;

      v36 = &v63;
      v22 = sub_1BE941D3C();
      v23 = v51;
      v37 = v22;
      sub_1BE9422BC();
      v37();

      (*(v58 + 16))(v23, v53, v62);
      sub_1BE941D1C();
      v41 = *(v58 + 8);
      v40 = v58 + 8;
      v41(v51, v62);

      return (v41)(v53, v62);
    }

    (*(v58 + 8))(v53, v62);
  }

  return (*(v54 + 56))(v44, 1, 1, v57);
}

uint64_t sub_1BE936618@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v48 = a1;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v65 = 0;
  v46 = 0;
  v57 = sub_1BE941E5C();
  v54 = *(v57 - 8);
  v55 = v57 - 8;
  v45 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57, v3, v4, v5);
  v56 = v25 - v45;
  v47 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB64B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46, v6, v7, v8);
  v60 = v25 - v47;
  v62 = sub_1BE941D8C();
  v58 = *(v62 - 8);
  v59 = v62 - 8;
  v50 = *(v58 + 64);
  v49 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v48, v9, v10, v11);
  v51 = v25 - v49;
  v52 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v12, v25 - v49, v13, v14);
  v53 = v25 - v52;
  v69 = v25 - v52;
  v68 = v15;
  v67 = v2;
  v66 = 0;
  MailSettingsSpecifier.url.getter(v16);
  v61 = 1;
  sub_1BE941D0C();
  (*(v54 + 8))(v56, v57);
  if ((*(v58 + 48))(v60, v61, v62) == 1)
  {
    sub_1BE9337E8(v60);
  }

  else
  {
    (*(v58 + 32))(v53, v60, v62);
    sub_1BE934770(v48, 2);
    v43 = v17;
    if (v17)
    {
      v42 = v43;
      v39 = v43;
      v65 = v43;
      v26 = "/";
      v27 = 1;
      v25[3] = 1;
      v31 = sub_1BE94229C();
      v34 = v18;
      v64 = v39;
      v29 = sub_1BE94229C();
      v30 = v19;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60E8);
      sub_1BE921F64();
      v32 = sub_1BE94222C();
      v33 = v20;

      v35 = MEMORY[0x1BFB4A0C0](v31, v34, v32, v33);
      v38 = v21;

      v36 = &v63;
      v22 = sub_1BE941D3C();
      v23 = v51;
      v37 = v22;
      sub_1BE9422BC();
      v37();

      (*(v58 + 16))(v23, v53, v62);
      sub_1BE941D1C();
      v41 = *(v58 + 8);
      v40 = v58 + 8;
      v41(v51, v62);

      return (v41)(v53, v62);
    }

    (*(v58 + 8))(v53, v62);
  }

  return (*(v54 + 56))(v44, 1, 1, v57);
}

uint64_t sub_1BE936D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[0] = a4;
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v21[1] = "Fatal error";
  v21[2] = "Unexpectedly found nil while unwrapping an Optional value";
  v21[3] = "MessageUI/MFPreferencesURL.swift";
  v58 = 0;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v54 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60D0);
  v22 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4, v5, v6, v7);
  v49 = v21 - v22;
  v47 = 0;
  v44 = sub_1BE941D8C();
  v41 = *(v44 - 8);
  v42 = v44 - 8;
  v24 = *(v41 + 64);
  v23 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v26, v27, v28, v8);
  v43 = v21 - v23;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v9, v10, v11, v21 - v23);
  v40 = v21 - v25;
  v58 = v21 - v25;
  v56 = v12;
  v57 = v13;
  v55 = v14;
  v54 = v15;
  sub_1BE941D7C();
  v48 = 1;
  sub_1BE94229C();
  sub_1BE941D5C();
  sub_1BE94203C();
  MEMORY[0x1BFB49B60](v26, v27);
  v29 = "/";
  v30 = 1;
  v34 = sub_1BE94229C();
  v37 = v16;
  v53 = v28;
  v32 = sub_1BE94229C();
  v33 = v17;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60E8);
  sub_1BE921F64();
  v35 = sub_1BE94222C();
  v36 = v18;

  v38 = MEMORY[0x1BFB4A0C0](v34, v37, v35, v36);
  v39 = v19;

  MEMORY[0x1BFB49B80](v38, v39);
  (*(v41 + 16))(v43, v40, v44);
  sub_1BE941D1C();
  v45 = *(v41 + 8);
  v46 = v41 + 8;
  v45(v43, v44);
  v50 = sub_1BE941E5C();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  if ((*(v51 + 48))(v49, v48) == 1)
  {
    sub_1BE94274C();
    __break(1u);
  }

  (*(v51 + 32))(v21[0], v49, v50);
  return (v45)(v40, v44);
}

uint64_t sub_1BE9372E0@<X0>(uint64_t a1@<X8>)
{
  v8 = sub_1BE94229C();
  v9 = v1;
  v6 = sub_1BE94283C();
  v5 = v2;
  *v2 = sub_1BE94229C();
  v5[1] = v3;
  sub_1BE921DF8();
  sub_1BE936D48(v8, v9, v6, a1);
}

uint64_t sub_1BE9374B0@<X0>(uint64_t a1@<X8>)
{
  v8 = sub_1BE94229C();
  v9 = v1;
  v6 = sub_1BE94283C();
  v5 = v2;
  *v2 = sub_1BE94229C();
  v5[1] = v3;
  sub_1BE921DF8();
  sub_1BE936D48(v8, v9, v6, a1);
}

uint64_t sub_1BE937680@<X0>(uint64_t a1@<X8>)
{
  v9 = sub_1BE94229C();
  v10 = v1;
  v7 = sub_1BE94283C();
  v6 = v2;
  *v2 = sub_1BE94229C();
  v6[1] = v3;
  v6[2] = sub_1BE94229C();
  v6[3] = v4;
  sub_1BE921DF8();
  sub_1BE936D48(v9, v10, v7, a1);
}

id MFPreferencesURL.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = MFPreferencesURL;
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x1E69E5928](v1);
  v3 = v1;
  MEMORY[0x1E69E5920](v1);
  return v1;
}

unint64_t sub_1BE9378E8()
{
  v2 = qword_1EBDB7AF0;
  if (!qword_1EBDB7AF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB7AF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1BE937964(uint64_t result, uint64_t a2)
{
  if (result)
  {
    MEMORY[0x1E69E5928](result);
    return MEMORY[0x1E69E5928](a2);
  }

  return result;
}

void *sub_1BE9379B4(void *a1)
{
  if (*a1)
  {
    MEMORY[0x1E69E5920](*a1);
    MEMORY[0x1E69E5920](a1[1]);
  }

  return a1;
}

void *sub_1BE937A10(void *a1, void *a2)
{
  if (*a1)
  {
    v3 = *a1;
    MEMORY[0x1E69E5928](*a1);
    *a2 = v3;
    v4 = a1[1];
    MEMORY[0x1E69E5928](v4);
    a2[1] = v4;
  }

  else
  {
    *a2 = *a1;
  }

  return a2;
}

unint64_t sub_1BE937AA4()
{
  v2 = qword_1EBDB64C0;
  if (!qword_1EBDB64C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB64B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB64C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE937B2C()
{
  v2 = qword_1EBDB64D0;
  if (!qword_1EBDB64D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB64D0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1BE937BBC()
{
  v2 = qword_1EBDB64E0;
  if (!qword_1EBDB64E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB64D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB64E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1BE937C44(uint64_t result, uint64_t a2)
{
  if (result)
  {
    MEMORY[0x1E69E5920](result);
    return MEMORY[0x1E69E5920](a2);
  }

  return result;
}

unint64_t sub_1BE937C94()
{
  v2 = qword_1EBDB64E8;
  if (!qword_1EBDB64E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB64E8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1BE937CF8()
{
  v2 = qword_1EBDB64F0;
  if (!qword_1EBDB64F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB64F0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1BE937D5C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1BE937EC4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t type metadata accessor for MFPreferencesURL()
{
  v2 = qword_1EBDB7AF8[0];
  if (!qword_1EBDB7AF8[0])
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, qword_1EBDB7AF8);
    return ObjCClassMetadata;
  }

  return v2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1BE938144(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
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

uint64_t sub_1BE938288(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1BE938484()
{
  v2 = qword_1EBDB7B80[0];
  if (!qword_1EBDB7B80[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EBDB7B80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1BE938500()
{
  result = sub_1BE94229C();
  qword_1EBDB7C18 = result;
  qword_1EBDB7C20 = v1;
  return result;
}

uint64_t *sub_1BE938544()
{
  if (qword_1EBDB7C10 != -1)
  {
    swift_once();
  }

  return &qword_1EBDB7C18;
}

uint64_t sub_1BE9385A4()
{
  v1 = *sub_1BE938544();
  sub_1BE94203C();
  return v1;
}

uint64_t sub_1BE9385E8()
{
  result = sub_1BE94229C();
  qword_1EBDB7C30 = result;
  qword_1EBDB7C38 = v1;
  return result;
}

uint64_t *sub_1BE93862C()
{
  if (qword_1EBDB7C28 != -1)
  {
    swift_once();
  }

  return &qword_1EBDB7C30;
}

uint64_t sub_1BE93868C()
{
  v1 = *sub_1BE93862C();
  sub_1BE94203C();
  return v1;
}

uint64_t PhotoPickerItem.assetIdentifier.getter()
{
  v2 = *(v0 + OBJC_IVAR___MFComposePhotoPickerItem_assetIdentifier);
  sub_1BE94203C();
  return v2;
}

void *sub_1BE938954(const void *a1, void *a2)
{
  v6 = sub_1BE941E5C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60D0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t PhotoPickerItem.assetData.getter()
{
  v2 = *(v0 + OBJC_IVAR___MFComposePhotoPickerItem_assetData);
  sub_1BE938C20(v2, *(v0 + OBJC_IVAR___MFComposePhotoPickerItem_assetData + 8));
  return v2;
}

uint64_t sub_1BE938BA4(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t sub_1BE938C20(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_1BE938C68(result, a2);
  }

  return result;
}

uint64_t sub_1BE938C68(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t PhotoPickerItem.contentType.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR___MFComposePhotoPickerItem_contentType;
  v2 = sub_1BE941F5C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t PhotoPickerItem.contentIdentifier.getter()
{
  v2 = *(v0 + OBJC_IVAR___MFComposePhotoPickerItem_contentIdentifier);
  sub_1BE94203C();
  return v2;
}

uint64_t sub_1BE938FA0()
{
  v19 = 0;
  v15 = sub_1BE941F5C();
  v11 = *(v15 - 8);
  v12 = v15 - 8;
  v8 = *(v11 + 64);
  v7 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15, v0, v15, v1);
  v13 = &v6 - v7;
  v9 = v7;
  MEMORY[0x1EEE9AC00](&v6 - v7, v2, v3, v4);
  v14 = &v6 - v9;
  v19 = v10;
  (*(v11 + 16))(&v6 - v9, v10 + OBJC_IVAR___MFComposePhotoPickerItem_contentType);
  sub_1BE941F3C();
  v18 = sub_1BE941F4C();
  v17 = *(v11 + 8);
  v16 = v11 + 8;
  v17(v13, v15);
  v17(v14, v15);
  return v18 & 1;
}

uint64_t sub_1BE93911C()
{
  result = sub_1BE94229C();
  qword_1EBDB7C48 = result;
  qword_1EBDB7C50 = v1;
  return result;
}

uint64_t *sub_1BE939160()
{
  if (qword_1EBDB7C40 != -1)
  {
    swift_once();
  }

  return &qword_1EBDB7C48;
}

uint64_t static PhotoPickerItem.contentIdentifierPrefix.getter()
{
  v1 = *sub_1BE939160();
  sub_1BE94203C();
  return v1;
}

char *PhotoPickerItem.init(assetIdentifier:assetURL:assetData:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v55 = a1;
  v77 = a2;
  v76 = a3;
  v74 = a4;
  v75 = a5;
  v73 = a6;
  v91 = 0;
  v89 = 0;
  v90 = 0;
  v88 = 0;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  v68 = 0;
  v72 = sub_1BE941F5C();
  v70 = *(v72 - 8);
  v71 = v72 - 8;
  v44 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v72, v7, v8, v9);
  v67 = &v44 - v44;
  v45 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v77, v10, v76, v74);
  v48 = &v44 - v45;
  v89 = v12;
  v90 = v11;
  v88 = v13;
  v86 = v14;
  v87 = v15;
  v85 = v16;
  v91 = v6;
  v46 = v6;
  sub_1BE94203C();
  v17 = v76;
  v18 = v48;
  v19 = v77;
  v20 = &v46[OBJC_IVAR___MFComposePhotoPickerItem_assetIdentifier];
  *v20 = v55;
  *(v20 + 1) = v19;
  v47 = v91;
  sub_1BE938954(v17, v18);
  sub_1BE93981C(v48, &v47[OBJC_IVAR___MFComposePhotoPickerItem_assetURL]);
  v49 = v91;
  sub_1BE938C20(v74, v75);
  v21 = v75;
  v22 = &v49[OBJC_IVAR___MFComposePhotoPickerItem_assetData];
  *v22 = v74;
  *(v22 + 1) = v21;
  v65 = v91;
  v23 = sub_1BE94282C();
  v62 = &v83;
  v83 = v23;
  v84 = v24;
  v59 = "";
  v60 = 1;
  v25 = sub_1BE94229C();
  v50 = v26;
  MEMORY[0x1BFB4A650](v25);

  v27 = sub_1BE939160();
  v51 = *v27;
  v52 = v27[1];
  sub_1BE94203C();
  v53 = v82;
  v82[0] = v51;
  v82[1] = v52;
  v56 = MEMORY[0x1E69E6158];
  v57 = MEMORY[0x1E69E61C8];
  v58 = MEMORY[0x1E69E61C0];
  sub_1BE94280C();
  sub_1BE9215F4();
  v28 = sub_1BE94229C();
  v54 = v29;
  MEMORY[0x1BFB4A650](v28);

  v80 = v55;
  v81 = v77;
  sub_1BE94280C();
  v30 = sub_1BE94229C();
  v61 = v31;
  MEMORY[0x1BFB4A650](v30);

  v64 = v83;
  v63 = v84;
  sub_1BE94203C();
  sub_1BE9215F4();
  v32 = sub_1BE94227C();
  v33 = v70;
  v34 = v72;
  v35 = v32;
  v36 = v67;
  v38 = v37;
  v39 = v73;
  v40 = &v65[OBJC_IVAR___MFComposePhotoPickerItem_contentIdentifier];
  *v40 = v35;
  v40[1] = v38;
  v66 = v91;
  (*(v33 + 16))(v36, v39, v34);
  (*(v70 + 32))(&v66[OBJC_IVAR___MFComposePhotoPickerItem_contentType], v67, v72);
  v69 = v91;
  v41 = type metadata accessor for PhotoPickerItem();
  v79.receiver = v69;
  v79.super_class = v41;
  v78 = objc_msgSendSuper2(&v79, sel_init);
  v42 = MEMORY[0x1E69E5928](v78);
  v91 = v78;
  (*(v70 + 8))(v73, v72, v42);
  sub_1BE9399B8(v74, v75);
  sub_1BE939A00(v76);

  MEMORY[0x1E69E5920](v91);
  return v78;
}

void *sub_1BE93981C(const void *a1, void *a2)
{
  v6 = sub_1BE941E5C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60D0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t type metadata accessor for PhotoPickerItem()
{
  v1 = qword_1EBDB7C58;
  if (!qword_1EBDB7C58)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1BE9399B8(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_1BE938BA4(result, a2);
  }

  return result;
}

uint64_t sub_1BE939A00(uint64_t a1)
{
  v3 = sub_1BE941E5C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1BE939E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v44 = a2;
  v45 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v48 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6500) - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](0, v3, v4, v5);
  v50 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = &v35 - v50;
  v9 = MEMORY[0x1EEE9AC00](v6, &v35 - v50, v7, v8);
  v47 = &v35 - v50;
  v12 = MEMORY[0x1EEE9AC00](v9, &v35 - v50, v10, v11);
  v49 = &v35 - v50;
  MEMORY[0x1EEE9AC00](v12, &v35 - v50, v13, v14);
  v63 = &v35 - v50;
  v51 = &v35 - v50;
  v53 = sub_1BE941F5C();
  v54 = *(v53 - 8);
  v55 = v54;
  v58 = *(v54 + 64);
  v17 = MEMORY[0x1EEE9AC00](v52, v53, v15, v16);
  v60 = (v58 + 15) & 0xFFFFFFFFFFFFFFF0;
  v56 = &v35 - v60;
  v77 = &v35 - v60;
  v20 = MEMORY[0x1EEE9AC00](v17, &v35 - v60, v18, v19);
  v57 = &v35 - v60;
  v76 = &v35 - v60;
  v23 = MEMORY[0x1EEE9AC00](v20, &v35 - v60, v21, v22);
  v59 = &v35 - v60;
  v75 = &v35 - v60;
  v26 = MEMORY[0x1EEE9AC00](v23, &v35 - v60, v24, v25);
  v61 = &v35 - v60;
  v74 = &v35 - v60;
  v73 = v26;
  v72 = v2;
  v71 = v26;
  v67 = v2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6508);
  v62 = v64;
  v65 = sub_1BE93A708();
  sub_1BE94231C();
  v66 = 0;
  v41 = *(v55 + 48);
  v42 = (v55 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v41(v51, 1, v53) != 1)
  {
    v27 = v66;
    (*(v55 + 32))(v61, v51, v53);
    (*(v55 + 16))(v44, v61, v53);
    (*(v55 + 56))(v44, 0, 1, v53);
    (*(v55 + 8))(v61, v53);
    return v27;
  }

  v28 = v66;
  sub_1BE93A790(v51);
  v70 = v52;
  v38 = &v35;
  MEMORY[0x1EEE9AC00](&v35, v29, v62, v65);
  *(&v35 - 2) = v43;
  sub_1BE94231C();
  v39 = v28;
  if (v28)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v41(v49, 1, v53) != 1)
  {
    v30 = v39;
    (*(v55 + 32))(v59, v49, v53);
    (*(v55 + 16))(v44, v59, v53);
    (*(v55 + 56))(v44, 0, 1, v53);
    (*(v55 + 8))(v59, v53);
    return v30;
  }

  v31 = v39;
  sub_1BE93A790(v49);
  v69 = v52;
  sub_1BE94231C();
  v37 = v31;
  if (v31)
  {
    goto LABEL_16;
  }

  if (v41(v47, 1, v53) != 1)
  {
    v32 = v37;
    (*(v55 + 32))(v57, v47, v53);
    (*(v55 + 16))(v44, v57, v53);
    (*(v55 + 56))(v44, 0, 1, v53);
    (*(v55 + 8))(v57, v53);
    return v32;
  }

  v33 = v37;
  sub_1BE93A790(v47);
  v68 = v52;
  sub_1BE94231C();
  v36 = v33;
  if (!v33)
  {
    if (v41(v46, 1, v53) == 1)
    {
      sub_1BE93A790(v46);
      (*(v55 + 56))(v44, 1, 1, v53);
    }

    else
    {
      (*(v55 + 32))(v56, v46, v53);
      (*(v55 + 16))(v44, v56, v53);
      (*(v55 + 56))(v44, 0, 1, v53);
      (*(v55 + 8))(v56, v53);
    }

    return v36;
  }

LABEL_17:
  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_1BE93A640()
{
  v3 = sub_1BE941EFC();
  v6 = v0;
  v1 = sub_1BE938544();
  v4 = *v1;
  v5 = v1[1];
  sub_1BE94203C();
  v7 = MEMORY[0x1BFB4A0E0](v3, v6, v4, v5);

  return v7 & 1;
}

unint64_t sub_1BE93A708()
{
  v2 = qword_1EBDB6510;
  if (!qword_1EBDB6510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6508);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6510);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1BE93A790(uint64_t a1)
{
  v3 = sub_1BE941F5C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1BE93A838()
{
  v3 = sub_1BE941EFC();
  v6 = v0;
  v1 = sub_1BE93862C();
  v4 = *v1;
  v5 = v1[1];
  sub_1BE94203C();
  v7 = MEMORY[0x1BFB4A0E0](v3, v6, v4, v5);

  return v7 & 1;
}

uint64_t sub_1BE93A900(uint64_t a1)
{
  v12 = 0;
  v9 = sub_1BE941F5C();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, v2, v3, v4);
  v10 = &v6 - v6;
  v12 = a1;
  sub_1BE941F3C();
  v11 = sub_1BE941F4C();
  (*(v7 + 8))(v10, v9);
  return v11 & 1;
}

uint64_t sub_1BE93A9E8(uint64_t a1)
{
  v12 = 0;
  v9 = sub_1BE941F5C();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, v2, v3, v4);
  v10 = &v6 - v6;
  v12 = a1;
  sub_1BE941F2C();
  v11 = sub_1BE941F4C();
  (*(v7 + 8))(v10, v9);
  return v11 & 1;
}

uint64_t sub_1BE93AC78()
{
  sub_1BE939160();
  sub_1BE94203C();
  v3 = sub_1BE9422DC();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1BE94203C();
  sub_1BE939160();
  sub_1BE94203C();
  sub_1BE9422CC();

  sub_1BE93ADCC();
  sub_1BE9424DC();
  v1 = sub_1BE9422EC();

  return v1;
}

unint64_t sub_1BE93ADCC()
{
  v2 = qword_1EBDB6518;
  if (!qword_1EBDB6518)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6518);
    return WitnessTable;
  }

  return v2;
}

id PhotoPickerItem.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoPickerItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BE93B100(uint64_t a1)
{
  if ((*(a1 + 8) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1BE938BA4(*a1, *(a1 + 8));
  }

  return a1;
}

uint64_t sub_1BE93B16C()
{
  updated = sub_1BE93B3B8();
  if (v0 <= 0x3F)
  {
    updated = sub_1BE941F5C();
    if (v1 <= 0x3F)
    {
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

uint64_t sub_1BE93B3B8()
{
  v4 = qword_1EBDB6520;
  if (!qword_1EBDB6520)
  {
    sub_1BE941E5C();
    v3 = sub_1BE94269C();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EBDB6520);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1BE93B454()
{
  v2 = qword_1EBDB6530;
  if (!qword_1EBDB6530)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB6530);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1BE93B4B8()
{
  v2 = (v0 + OBJC_IVAR___MFComposePhotoPickerProgressManager_progresses);
  swift_beginAccess();
  v3 = *v2;
  sub_1BE94203C();
  swift_endAccess();
  return v3;
}

uint64_t sub_1BE93B520(uint64_t a1)
{
  sub_1BE94203C();
  v3 = (v1 + OBJC_IVAR___MFComposePhotoPickerProgressManager_progresses);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1BE93B678()
{
  v3 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x58))();
  v1 = sub_1BE93B454();
  v4 = MEMORY[0x1BFB4A000](v3, MEMORY[0x1E69E6158], v1, MEMORY[0x1E69E6168]);

  return (v4 ^ 1) & 1;
}

uint64_t sub_1BE93B71C(uint64_t a1)
{
  v2 = sub_1BE94203C();
  (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x58))(v2);
  sub_1BE93B454();
  sub_1BE9421FC();
  sub_1BE9215F4();

  if (v9)
  {
    [v9 cancel];
    v6 = (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x68))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6540);
    sub_1BE94218C();
    v6();
    (MEMORY[0x1E69E5920])();
    (MEMORY[0x1E69E5920])();
  }

  sub_1BE94203C();
  v3 = MEMORY[0x1E69E5928](a1);
  v5 = (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x68))(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6540);
  sub_1BE94220C();
  return v5();
}

uint64_t sub_1BE93BAB8()
{
  v1 = sub_1BE94203C();
  (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x58))(v1);
  sub_1BE93B454();
  sub_1BE9421FC();
  sub_1BE9215F4();

  if (v4)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BE93BC90()
{
  v1 = sub_1BE94203C();
  (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x58))(v1);
  sub_1BE93B454();
  sub_1BE9421FC();
  sub_1BE9215F4();
  if (!v5)
  {
  }

  [v5 cancel];
  v3 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x68))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6540);
  sub_1BE94218C();
  v3();
  (MEMORY[0x1E69E5920])();
  return (MEMORY[0x1E69E5920])();
}

uint64_t sub_1BE93BF1C()
{
  v4 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x58))();
  sub_1BE93B454();
  v5 = MEMORY[0x1BFB4A000](v4, MEMORY[0x1E69E6158]);

  result = v5;
  if ((v5 & 1) == 0)
  {
    (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x58))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6540);
    sub_1BE93C16C();
    sub_1BE94232C();
    sub_1BE91F954();
    v2 = (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x68))();
    sub_1BE93C1F4();
    sub_1BE9421DC();
    return v2();
  }

  return result;
}

unint64_t sub_1BE93C16C()
{
  v2 = qword_1EBDB6548;
  if (!qword_1EBDB6548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6540);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6548);
    return WitnessTable;
  }

  return v2;
}

id PhotoPickerProgressManager.init()()
{
  v4 = 0;
  v1 = OBJC_IVAR___MFComposePhotoPickerProgressManager_progresses;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6528);
  sub_1BE94283C();
  sub_1BE93B454();
  *v1 = sub_1BE94219C();
  v3.receiver = v4;
  v3.super_class = type metadata accessor for PhotoPickerProgressManager();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x1E69E5928](v2);
  v4 = v2;
  MEMORY[0x1E69E5920](v2);
  return v2;
}

id PhotoPickerProgressManager.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoPickerProgressManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::String __swiftcall SwiftHelloMessageUI.world(truncated:)(Swift::Int truncated)
{
  SwiftHelloMessageUI.world.getter();
  v12 = sub_1BE94224C();
  v13 = [v12 mf:truncated substringTruncatedToIndex:?];
  MEMORY[0x1E69E5920](v12);

  if (v13)
  {
    v7 = sub_1BE94225C();
    v8 = v1;
    MEMORY[0x1E69E5920](v13);
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  if (v10)
  {
    v5 = v9;
    v6 = v10;
  }

  else
  {
    sub_1BE94274C();
    __break(1u);
  }

  v2 = v5;
  v3 = v6;
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

id SwiftHelloMessageUI.init()()
{
  v4 = v0;
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x1E69E5928](v2);
  v4 = v2;
  MEMORY[0x1E69E5920](v2);
  return v2;
}

id SwiftHelloMessageUI.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BE93CAB4()
{
  sub_1BE93F33C();
  type metadata accessor for ResourceBundleClass();
  result = sub_1BE93CAFC();
  qword_1EBDB7C70 = result;
  return result;
}

id sub_1BE93CAFC()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass_];

  return v0;
}

uint64_t *sub_1BE93CB54()
{
  if (qword_1EBDB7C68 != -1)
  {
    swift_once();
  }

  return &qword_1EBDB7C70;
}

uint64_t sub_1BE93CBB4()
{
  v2 = sub_1BE941ECC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7DB0);
  __swift_project_value_buffer(v2, qword_1EBDB7DB0);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93CC4C()
{
  if (qword_1EBDB7C78 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941ECC();
  return __swift_project_value_buffer(v0, qword_1EBDB7DB0);
}

uint64_t sub_1BE93CCB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93CC4C();
  v1 = sub_1BE941ECC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93CD1C()
{
  v2 = sub_1BE941ECC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7DC8);
  __swift_project_value_buffer(v2, qword_1EBDB7DC8);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93CDB4()
{
  if (qword_1EBDB7C80 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941ECC();
  return __swift_project_value_buffer(v0, qword_1EBDB7DC8);
}

uint64_t sub_1BE93CE20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93CDB4();
  v1 = sub_1BE941ECC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93CE84()
{
  v2 = sub_1BE941ECC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7DE0);
  __swift_project_value_buffer(v2, qword_1EBDB7DE0);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93CF1C()
{
  if (qword_1EBDB7C88 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941ECC();
  return __swift_project_value_buffer(v0, qword_1EBDB7DE0);
}

uint64_t sub_1BE93CF88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93CF1C();
  v1 = sub_1BE941ECC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93CFEC()
{
  v2 = sub_1BE941ECC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7DF8);
  __swift_project_value_buffer(v2, qword_1EBDB7DF8);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93D084()
{
  if (qword_1EBDB7C90 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941ECC();
  return __swift_project_value_buffer(v0, qword_1EBDB7DF8);
}

uint64_t sub_1BE93D0F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93D084();
  v1 = sub_1BE941ECC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93D154()
{
  v2 = sub_1BE941ECC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7E10);
  __swift_project_value_buffer(v2, qword_1EBDB7E10);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93D1EC()
{
  if (qword_1EBDB7C98 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941ECC();
  return __swift_project_value_buffer(v0, qword_1EBDB7E10);
}

uint64_t sub_1BE93D258@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93D1EC();
  v1 = sub_1BE941ECC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93D2BC()
{
  v2 = sub_1BE941ECC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7E28);
  __swift_project_value_buffer(v2, qword_1EBDB7E28);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93D354()
{
  if (qword_1EBDB7CA0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941ECC();
  return __swift_project_value_buffer(v0, qword_1EBDB7E28);
}

uint64_t sub_1BE93D3C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93D354();
  v1 = sub_1BE941ECC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93D424()
{
  v2 = sub_1BE941ECC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7E40);
  __swift_project_value_buffer(v2, qword_1EBDB7E40);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93D4BC()
{
  if (qword_1EBDB7CA8 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941ECC();
  return __swift_project_value_buffer(v0, qword_1EBDB7E40);
}

uint64_t sub_1BE93D528@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93D4BC();
  v1 = sub_1BE941ECC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93D58C()
{
  v2 = sub_1BE941ECC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7E58);
  __swift_project_value_buffer(v2, qword_1EBDB7E58);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93D624()
{
  if (qword_1EBDB7CB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941ECC();
  return __swift_project_value_buffer(v0, qword_1EBDB7E58);
}

uint64_t sub_1BE93D690@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93D624();
  v1 = sub_1BE941ECC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93D6F4()
{
  v2 = sub_1BE941ECC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7E70);
  __swift_project_value_buffer(v2, qword_1EBDB7E70);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93D78C()
{
  if (qword_1EBDB7CB8 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941ECC();
  return __swift_project_value_buffer(v0, qword_1EBDB7E70);
}

uint64_t sub_1BE93D7F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93D78C();
  v1 = sub_1BE941ECC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93D85C()
{
  v2 = sub_1BE941ECC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7E88);
  __swift_project_value_buffer(v2, qword_1EBDB7E88);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93D8F4()
{
  if (qword_1EBDB7CC0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941ECC();
  return __swift_project_value_buffer(v0, qword_1EBDB7E88);
}

uint64_t sub_1BE93D960@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93D8F4();
  v1 = sub_1BE941ECC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93D9C4()
{
  v2 = sub_1BE941ECC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7EA0);
  __swift_project_value_buffer(v2, qword_1EBDB7EA0);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93DA5C()
{
  if (qword_1EBDB7CC8 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941ECC();
  return __swift_project_value_buffer(v0, qword_1EBDB7EA0);
}

uint64_t sub_1BE93DAC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93DA5C();
  v1 = sub_1BE941ECC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93DB2C()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7EB8);
  __swift_project_value_buffer(v2, qword_1EBDB7EB8);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93DBC4()
{
  if (qword_1EBDB7CD0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7EB8);
}

uint64_t sub_1BE93DC30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93DBC4();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93DC94()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7ED0);
  __swift_project_value_buffer(v2, qword_1EBDB7ED0);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93DD2C()
{
  if (qword_1EBDB7CD8 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7ED0);
}

uint64_t sub_1BE93DD98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93DD2C();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93DDFC()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7EE8);
  __swift_project_value_buffer(v2, qword_1EBDB7EE8);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93DE94()
{
  if (qword_1EBDB7CE0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7EE8);
}

uint64_t sub_1BE93DF00@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93DE94();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93DF64()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7F00);
  __swift_project_value_buffer(v2, qword_1EBDB7F00);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93DFFC()
{
  if (qword_1EBDB7CE8 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7F00);
}

uint64_t sub_1BE93E068@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93DFFC();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93E0CC()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7F18);
  __swift_project_value_buffer(v2, qword_1EBDB7F18);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93E164()
{
  if (qword_1EBDB7CF0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7F18);
}

uint64_t sub_1BE93E1D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93E164();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93E234()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7F30);
  __swift_project_value_buffer(v2, qword_1EBDB7F30);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93E2CC()
{
  if (qword_1EBDB7CF8 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7F30);
}

uint64_t sub_1BE93E338@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93E2CC();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93E39C()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7F48);
  __swift_project_value_buffer(v2, qword_1EBDB7F48);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93E434()
{
  if (qword_1EBDB7D00 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7F48);
}

uint64_t sub_1BE93E4A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93E434();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93E504()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7F60);
  __swift_project_value_buffer(v2, qword_1EBDB7F60);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93E59C()
{
  if (qword_1EBDB7D08 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7F60);
}

uint64_t sub_1BE93E608@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93E59C();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93E66C()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7F78);
  __swift_project_value_buffer(v2, qword_1EBDB7F78);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93E704()
{
  if (qword_1EBDB7D10 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7F78);
}

uint64_t sub_1BE93E770@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93E704();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93E7D4()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7F90);
  __swift_project_value_buffer(v2, qword_1EBDB7F90);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93E86C()
{
  if (qword_1EBDB7D18 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7F90);
}

uint64_t sub_1BE93E8D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93E86C();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93E93C()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7FA8);
  __swift_project_value_buffer(v2, qword_1EBDB7FA8);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93E9D4()
{
  if (qword_1EBDB7D20 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7FA8);
}

uint64_t sub_1BE93EA40@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93E9D4();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93EAA4()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7FC0);
  __swift_project_value_buffer(v2, qword_1EBDB7FC0);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93EB3C()
{
  if (qword_1EBDB7D28 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7FC0);
}

uint64_t sub_1BE93EBA8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93EB3C();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93EC0C()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7FD8);
  __swift_project_value_buffer(v2, qword_1EBDB7FD8);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93ECA4()
{
  if (qword_1EBDB7D30 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7FD8);
}

uint64_t sub_1BE93ED10@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93ECA4();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93ED74()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7FF0);
  __swift_project_value_buffer(v2, qword_1EBDB7FF0);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93EE0C()
{
  if (qword_1EBDB7D38 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7FF0);
}

uint64_t sub_1BE93EE78@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93EE0C();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93EEDC()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB8008);
  __swift_project_value_buffer(v2, qword_1EBDB8008);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93EF74()
{
  if (qword_1EBDB7D40 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB8008);
}

uint64_t sub_1BE93EFE0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93EF74();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93F044()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB8020);
  __swift_project_value_buffer(v2, qword_1EBDB8020);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93F0DC()
{
  if (qword_1EBDB7D48 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB8020);
}

uint64_t sub_1BE93F148@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93F0DC();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93F1AC()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB8038);
  __swift_project_value_buffer(v2, qword_1EBDB8038);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93F244()
{
  if (qword_1EBDB7D50 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB8038);
}

uint64_t sub_1BE93F2B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93F244();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

unint64_t sub_1BE93F33C()
{
  v2 = qword_1EBDB3258;
  if (!qword_1EBDB3258)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB3258);
    return ObjCClassMetadata;
  }

  return v2;
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSRangeFromString(NSString *aString)
{
  v1 = MEMORY[0x1EEDC70A0](aString);
  result.length = v2;
  result.location = v1;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___CKSMSComposeController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_ChatKit))
  {
    return dlopenHelper_ChatKit(result);
  }

  return result;
}

void gotLoadHelper_x25__OBJC_CLASS___CKSMSComposeController(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_ChatKit))
  {
    dlopenHelper_ChatKit(a1);
  }
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_ChatKit(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/ChatKit.framework/ChatKit", 0);
  atomic_store(1u, &dlopenHelperFlag_ChatKit);
  return a1;
}