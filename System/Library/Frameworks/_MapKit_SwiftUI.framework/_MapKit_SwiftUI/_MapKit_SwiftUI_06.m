void sub_213D4C63C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_213D4C68C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_213D4C750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[6];
  v12 = v3[7];
  v13 = *(type metadata accessor for _MapContentView.Child() - 8);
  return sub_213D31F20(a1, a2, v3 + ((*(v13 + 80) + 64) & ~*(v13 + 80)), v7, v8, v9, v10, v11, a3, v12);
}

unint64_t sub_213D4C820()
{
  result = qword_27C8EBED8;
  if (!qword_27C8EBED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBED0, &qword_213D98B50);
    sub_213D4C8A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EBED8);
  }

  return result;
}

unint64_t sub_213D4C8A4()
{
  result = qword_27C8EBEE0;
  if (!qword_27C8EBEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EBEE0);
  }

  return result;
}

uint64_t sub_213D4C8F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_213D4C940(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_213D4C94C(result);
  }

  else
  {
  }
}

uint64_t sub_213D4C94C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_213D4C9A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  return sub_213D48A94(a1, *(v2 + 48), *(v2 + 56), *(v2 + 24), a2);
}

void sub_213D4C9B4(uint64_t *a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for MapPreferenceWrapper() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  sub_213D35790(a1, a2, v8);
}

uint64_t sub_213D4CA50(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for MapPreferenceWrapper() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_213D35D70(a1, a2, v8);
}

uint64_t sub_213D4CAEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_269Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for MapPreferenceWrapper();
  v4 = *(*(v3 - 1) + 80);
  v5 = *(*(v3 - 1) + 64);
  v6 = v0 + ((v4 + 32) & ~v4);
  v7 = *(v6 + 8);

  sub_213CCCE18(*(v6 + 16), *(v6 + 24));
  sub_213D4C940(*(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72));
  v8 = v6 + v3[12];
  v9 = type metadata accessor for KeyframeAnimationState();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB60, &unk_213D96930);
    (*(*(v10 - 8) + 8))(v8, v10);
    v19 = *(v9 + 20);
    v11 = sub_213D9031C();
    v12 = *(*(v11 - 8) + 8);
    v12(v8 + v19, v11);
    v12(v8 + *(v9 + 24), v11);
  }

  v13 = *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EBCB0, &qword_213D98708) + 28));

  v14 = (v6 + v3[13]);
  v15 = *v14;

  v16 = v14[1];

  sub_213D1E068(v14[2]);
  v17 = *(v6 + v3[14] + 8);

  return swift_deallocObject();
}

uint64_t sub_213D4CD9C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for MapPreferenceWrapper() - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a2(a1, v7, v4, v5);
}

unint64_t sub_213D4CE4C()
{
  result = qword_27C8EBF20;
  if (!qword_27C8EBF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EBF20);
  }

  return result;
}

id sub_213D4CF90(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtCV15_MapKit_SwiftUI10MapPolygon12CocoaWrapper_wrapped];
  v5 = a1;
  v6 = [v4 *a3];
  if (v6)
  {
    v7 = v6;
    sub_213D9193C();

    v8 = sub_213D9190C();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

void sub_213D4D040(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    sub_213D9193C();
    v6 = *&a1[OBJC_IVAR____TtCV15_MapKit_SwiftUI10MapPolygon12CocoaWrapper_wrapped];
    v7 = a1;
    v9 = sub_213D9190C();
  }

  else
  {
    v6 = *&a1[OBJC_IVAR____TtCV15_MapKit_SwiftUI10MapPolygon12CocoaWrapper_wrapped];
    v8 = a1;
    v9 = 0;
  }

  [v6 *a4];
}

id sub_213D4D418()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapPolygon.CocoaWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double MapPolygon.init(coordinates:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *&result = 1;
  *(a2 + 8) = xmmword_213D98BB0;
  return result;
}

uint64_t MapPolygon.init(points:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = result;
  return result;
}

uint64_t sub_213D4D4A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v17 = result;
      v18 = a4;
      v19 = a3;
      v20 = MEMORY[0x277D84F90];
      sub_213D4E914(0, v5, 0);
      v6 = v20;
      v7 = (a2 + 48);
      do
      {
        v8 = *(v7 - 2);
        v9 = *(v7 - 1);
        v10 = *v7;
        sub_213D2BD34(v8, v9);
        v12 = *(v20 + 16);
        v11 = *(v20 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_213D4E914((v11 > 1), v12 + 1, 1);
        }

        v7 += 3;
        *(v20 + 16) = v12 + 1;
        v13 = (v20 + 24 * v12);
        v13[4] = v8;
        v13[5] = v9;
        v13[6] = v10;
        --v5;
      }

      while (v5);

      a4 = v18;
      a3 = v19;
      result = v17;
    }

    else
    {
      v14 = result;
      v15 = a3;
      v16 = a4;

      result = v14;
      a4 = v16;
      a3 = v15;
      v6 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v6 = 0;
  }

  *a4 = result;
  a4[1] = a3;
  a4[2] = v6;
  return result;
}

double MapPolygon.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MapPolygon.CocoaWrapper();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCV15_MapKit_SwiftUI10MapPolygon12CocoaWrapper_wrapped] = a1;
  v7.receiver = v5;
  v7.super_class = v4;
  *a2 = objc_msgSendSuper2(&v7, sel_init);
  result = -0.0;
  *(a2 + 8) = xmmword_213D98BC0;
  return result;
}

uint64_t static MapPolygon._makeMapContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v38 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F0, &unk_213D96020);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v25 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF68, &qword_213D98BD0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v25 - v13);
  v25 = a3;
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  (*(v11 + 16))(v14, a1, v10);
  if (v12 != 4)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v15 = *v14;
  (*(v11 + 8))(v14, v10);
  v16 = v26;
  sub_213D90C3C();
  if (v7 != 4)
  {
    goto LABEL_5;
  }

  v17 = *v9;
  (*(v6 + 8))(v9, v5);
  v18 = type metadata accessor for _MapContentInputs(0);
  v19 = *(v16 + *(v18 + 28));
  v27 = 1;
  v28 = v15;
  v29 = v17;
  v30 = v19;
  v31 = 0u;
  v32 = 0u;
  memset(v33, 0, 28);
  v33[28] = -1;
  v34 = 0;
  v35 = -1;
  v36 = 0;
  v37 = 1;
  sub_213CDB9F8();
  sub_213D4E958();
  v20 = sub_213D903EC();
  v21 = *(v18 + 24);
  MEMORY[0x28223BE20](v20);
  *(&v25 - 4) = v22;
  sub_213CD83E4();
  result = sub_213D90F7C();
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_213D4D970()
{
  v171 = *MEMORY[0x277D85DE8];
  v122 = type metadata accessor for MapContentList.Item.Content(0);
  v1 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v125 = &v119 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for MapContentList.Item(0);
  v126 = *(v124 - 8);
  v3 = *(v126 + 64);
  MEMORY[0x28223BE20](v124);
  v123 = (&v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v127 = &v119 - v6;
  v7 = sub_213D90C0C();
  v156 = *(v7 - 8);
  v8 = *(v156 + 64);
  MEMORY[0x28223BE20](v7);
  v149 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v150 = &v119 - v11;
  MEMORY[0x28223BE20](v12);
  v147 = &v119 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA920, &unk_213D96380);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v119 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA928, &qword_213D96008);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v119 - v21;
  v23 = sub_213D9100C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v152 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v153 = &v119 - v28;
  v29 = *v0;
  Value = AGGraphGetValue();
  v136 = v31;
  v33 = *Value;
  v32 = *(Value + 8);
  v34 = *(Value + 16);
  v146 = v0;
  v35 = v0[2];
  v36 = *MEMORY[0x277CEF7D0];
  v154 = v24;
  v155 = v23;
  *(&v144 + 1) = v32;
  v145 = v34;
  *&v144 = v33;
  if (v35 == v36)
  {
    v37 = v33;
    v38 = v32;
    (*(v19 + 56))(v17, 1, 1, v18);
    v39 = *(v18 + 48);
    sub_213D2BD34(v37, v38);
    sub_213D90FFC();
    v22[v39] = 0;
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      sub_213CD8330(v17, &qword_27C8EA920, &unk_213D96380);
    }
  }

  else
  {
    sub_213D2BD34(v33, v32);
    v40 = AGGraphGetValue();
    v42 = v41;
    v43 = v23;
    v44 = *(v18 + 48);
    (*(v24 + 16))(v17, v40, v43);
    v17[v44] = v42 & 1;
    (*(v19 + 56))(v17, 0, 1, v18);
    sub_213CF3968(v17, v22);
  }

  v133 = v22[*(v18 + 48)];
  v120 = *(v154 + 32);
  v121 = v154 + 32;
  v120(v153, v22, v155);
  v45 = v146;
  v46 = v146[1];
  v47 = AGGraphGetValue();
  v48 = v156;
  v49 = *(v156 + 16);
  v50 = v147;
  v49(v147, v47, v7);
  v51 = sub_213D90A7C();
  v156 = *(v48 + 8);
  (v156)(v50, v7);
  v52 = *(v45 + 2);
  v143 = (v51 | v52) == 0;
  v151 = v51;
  if (v51 && v52)
  {

    v143 = sub_213D9147C();
  }

  v142 = v52;
  v53 = AGGraphGetValue();
  v49(v50, v53, v7);
  sub_213D4F17C();
  sub_213D90C1C();
  (v156)(v50, v7);
  v141 = v164;
  v158 = v164;
  v159 = v165;
  v140 = v166;
  v160 = v166;
  v138 = *(&v165 + 1);
  v139 = v165;
  v54 = *(v45 + 6);
  v137 = v54;
  if (v54)
  {
    v55 = *(v45 + 7);
    v56 = *(v45 + 5);
    v57 = *(v45 + 4);
    v161[0] = *(v45 + 3);
    v161[1] = v57;
    v161[2] = v56;
    v161[3] = v54;
    v161[4] = v55;
    sub_213D1E3A4(&v158, &v164);

    v58 = MEMORY[0x21604D700](&v158, v161);

    sub_213D1E400(&v158);
    v59 = v58 ^ 1;
  }

  else
  {

    v59 = 1;
  }

  v129 = v59;
  v60 = AGGraphGetValue();
  v49(v50, v60, v7);
  sub_213D4F1D0();
  sub_213D90C1C();
  (v156)(v50, v7);
  v61 = AGGraphGetValue();
  v62 = v150;
  v49(v150, v61, v7);
  v63 = sub_213D67A84(&v164, v62);
  v65 = *(v45 + 8);
  v66 = *(v45 + 72);
  LODWORD(v150) = v64;
  v135 = v65;
  v134 = v66;
  v130 = v63;
  if (v66 == 255)
  {
    goto LABEL_16;
  }

  if ((v64 & 1) == 0)
  {
    if ((v66 & 1) == 0)
    {
      v148 = v49;
      v67 = v63;
      sub_213D2BCD4(v63, 0);
      sub_213D4F40C(v65, v66);
      v68 = sub_213D9147C();
      goto LABEL_18;
    }

LABEL_16:
    v128 = 1;
    goto LABEL_19;
  }

  if ((v66 & 1) == 0)
  {
    goto LABEL_16;
  }

  v148 = v49;
  v67 = v63;
  sub_213D2BCD4(v63, 1);
  sub_213D4F40C(v65, v66);
  v68 = MEMORY[0x21604E890](v67, v65);
LABEL_18:
  v69 = v65;
  v70 = v68;
  sub_213D4F3F4(v69, v66);
  sub_213CE2B28(v67, v150 & 1);
  v128 = v70 ^ 1;
  v49 = v148;
LABEL_19:
  v71 = AGGraphGetValue();
  v72 = v149;
  v49(v149, v71, v7);
  sub_213D4F224();
  sub_213D90C1C();
  (v156)(v72, v7);
  if (v163)
  {
    sub_213D1E2DC(&v162, &v164);
  }

  else
  {
    v73 = AGGraphGetValue();
    v74 = (v49)(v50, v73, v7);
    v75 = MEMORY[0x21604DD60](v74);
    (v156)(v50, v7);
    *(&v165 + 1) = MEMORY[0x277CDF6A8];
    *&v166 = MEMORY[0x277CDF6A0];
    *&v164 = v75;
    if (v163)
    {
      sub_213CD8330(&v162, &qword_27C8EBF98, &qword_213D9E670);
    }
  }

  v76 = AGGraphGetValue();
  v49(v50, v76, v7);
  v149 = sub_213D67A84(&v164, v50);
  v78 = *(v45 + 10);
  v79 = *(v45 + 88);
  LODWORD(v148) = v77;
  v132 = v78;
  v131 = v79;
  if (v79 != 255)
  {
    if (v77)
    {
      if (v79)
      {
        v80 = v149;
        sub_213D2BCD4(v149, 1);
        sub_213D4F40C(v78, v79);
        v81 = MEMORY[0x21604E890](v80, v78);
LABEL_30:
        v83 = v78;
        v84 = v81;
        sub_213D4F3F4(v83, v79);
        sub_213CE2B28(v80, v148 & 1);
        v82 = v84 ^ 1;
        goto LABEL_31;
      }
    }

    else if ((v79 & 1) == 0)
    {
      v80 = v149;
      sub_213D2BCD4(v149, 0);
      sub_213D4F40C(v78, v79);
      v81 = sub_213D9147C();
      goto LABEL_30;
    }
  }

  v82 = 1;
LABEL_31:
  v85 = AGGraphGetValue();
  v86 = v147;
  v49(v147, v85, v7);
  sub_213D4F278();
  sub_213D90C1C();
  (v156)(v86, v7);
  v87 = v164;
  if ((*(v45 + 104) | v136) & 1 | ((v143 & 1) == 0) | v129 & 1 | v128 & 1 | v133 & 1 || (v82 & 1) != 0 || v164 != *(v45 + 12) || (v88 = v164, OutputValue = AGGraphGetOutputValue(), v87 = v88, !OutputValue))
  {
    LODWORD(v147) = v45[3] + 1;
    v45[3] = v147;
    v166 = v158;
    v167 = v159;
    v92 = v130;
    v93 = v150 & 1;
    LOBYTE(v162) = v150 & 1;
    v94 = v148 & 1;
    v157 = v148 & 1;
    v95 = v144;
    v164 = v144;
    *&v165 = v145;
    *(&v165 + 1) = v151;
    *&v168 = v160;
    *(&v168 + 1) = v130;
    LOBYTE(v169) = v150 & 1;
    *(&v169 + 1) = v149;
    LOBYTE(v170) = v148 & 1;
    v156 = v87;
    *(&v170 + 1) = v87;
    (*(v154 + 16))(v152, v153, v155);
    v96 = v169;
    v97 = v125;
    *(v125 + 4) = v168;
    v97[5] = v96;
    v97[6] = v170;
    v98 = v165;
    *v97 = v164;
    v97[1] = v98;
    v99 = v167;
    v97[2] = v166;
    v97[3] = v99;
    swift_storeEnumTagMultiPayload();
    sub_213D2BD34(v95, *(&v95 + 1));

    sub_213D1E3A4(&v158, &v162);
    v100 = v92;
    v101 = v93;
    v102 = v149;
    sub_213D2BCD4(v92, v101);
    sub_213D2BCD4(v102, v94);
    sub_213D4F2CC(&v164, &v162);
    sub_213CDF60C();
    sub_213D9101C();
    v103 = v162;
    if (!v162)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_213D94520;
      *(v103 + 32) = 0;
      *(v103 + 72) = 0;
    }

    v105 = v123;
    v104 = v124;
    *v123 = v103;
    v106 = v155;
    v120(v105 + *(v104 + 28), v152, v155);
    *(v105 + 2) = v147;
    sub_213CF39D8(v97, v105 + *(v104 + 24), type metadata accessor for MapContentList.Item.Content);
    v107 = v105;
    v108 = v127;
    sub_213CF39D8(v107, v127, type metadata accessor for MapContentList.Item);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA930, &unk_213D963A0);
    v109 = *(v126 + 72);
    v110 = (*(v126 + 80) + 32) & ~*(v126 + 80);
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_213D94520;
    sub_213D4F304(v108, v111 + v110);
    *&v162 = sub_213D71A68(v111);
    *(&v162 + 1) = v112;
    AGGraphSetOutputValue();
    sub_213D4F368(&v164);
    sub_213D1E5E8(v144, *(&v144 + 1));
    sub_213D4F398(v108);
    (*(v154 + 8))(v153, v106);

    sub_213D4F3F4(v132, v131);
    sub_213D4F3F4(v135, v134);

    v45 = v146;
    *(v146 + 12) = v156;
    *(v45 + 104) = 0;
    v113 = v148 & 1;
    *(v45 + 10) = v102;
    *(v45 + 88) = v113;
    v91 = v150 & 1;
    *(v45 + 8) = v100;
  }

  else
  {
    (*(v154 + 8))(v153, v155);
    sub_213D1E5E8(v144, *(&v144 + 1));
    sub_213D4F3F4(v132, v131);
    sub_213D4F3F4(v135, v134);

    *(v45 + 12) = v88;
    *(v45 + 104) = 0;
    v90 = v148 & 1;
    *(v45 + 10) = v149;
    *(v45 + 88) = v90;
    v91 = v150 & 1;
    *(v45 + 8) = v130;
  }

  *(v45 + 72) = v91;
  v115 = v139;
  v114 = v140;
  result = *&v141;
  *(v45 + 6) = v141;
  v117 = v138;
  *(v45 + 5) = v115;
  *(v45 + 6) = v117;
  *(v45 + 7) = v114;
  *(v45 + 2) = v151;
  v118 = *MEMORY[0x277D85DE8];
  return result;
}

size_t sub_213D4E8D4(size_t a1, int64_t a2, char a3)
{
  result = sub_213D4EBA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_213D4E8F4(char *a1, int64_t a2, char a3)
{
  result = sub_213D4ED80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_213D4E914(char *a1, int64_t a2, char a3)
{
  result = sub_213D4EF90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_213D4E958()
{
  result = qword_27C8EBF70;
  if (!qword_27C8EBF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EBF70);
  }

  return result;
}

uint64_t sub_213D4E9BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_213D4EA0C(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
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

uint64_t get_enum_tag_for_layout_string_15_MapKit_SwiftUI18ResolvedShapeStyleOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_213D4EAC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_213D4EB24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

size_t sub_213D4EBA8(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC30, &qword_213D9B470);
  v10 = *(type metadata accessor for _MapContentOutputs(0) - 8);
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
  v15 = *(type metadata accessor for _MapContentOutputs(0) - 8);
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

char *sub_213D4ED80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF78, &qword_213D98F80);
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

char *sub_213D4EE8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8ECD00, &qword_213D98F88);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_213D4EF90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBFA8, &qword_213D98F90);
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

BOOL sub_213D4F0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    if (a5 < 0)
    {
      sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
      return sub_213D91C5C() & 1;
    }

    return 0;
  }

  if (a5 < 0 || !sub_213D6798C(a1, a2 & 1, a4, a5 & 1))
  {
    return 0;
  }

  result = (a3 | a6) == 0;
  if (a3)
  {
    if (a6)
    {

      v9 = sub_213D6F248(a3, a6);

      return v9 & 1;
    }
  }

  return result;
}

unint64_t sub_213D4F17C()
{
  result = qword_27C8EBF80;
  if (!qword_27C8EBF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EBF80);
  }

  return result;
}

unint64_t sub_213D4F1D0()
{
  result = qword_27C8EBF88;
  if (!qword_27C8EBF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EBF88);
  }

  return result;
}

unint64_t sub_213D4F224()
{
  result = qword_27C8EBF90;
  if (!qword_27C8EBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EBF90);
  }

  return result;
}

unint64_t sub_213D4F278()
{
  result = qword_27C8EBFA0;
  if (!qword_27C8EBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EBFA0);
  }

  return result;
}

uint64_t sub_213D4F304(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapContentList.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213D4F398(uint64_t a1)
{
  v2 = type metadata accessor for MapContentList.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213D4F3F4(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_213CE2B28(result, a2 & 1);
  }

  return result;
}

uint64_t sub_213D4F40C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_213D2BCD4(result, a2 & 1);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_213D4F448(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_213D4F498(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213D4F514(uint64_t a1)
{
  v28 = a1;
  v2 = sub_213D9051C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = *(type metadata accessor for MapScaleViewConfig(0) + 28);
  v14 = *MEMORY[0x277CDF440];
  (*(v3 + 104))(v12, *MEMORY[0x277CDF440], v2);
  v15 = sub_213D9050C();
  v27 = *(v3 + 8);
  v27(v12, v2);
  v16 = *(v3 + 16);
  v17 = (v3 + 88);
  if ((v15 & 1) == 0)
  {
    v16(v6, v1 + v13, v2);
    v23 = (*v17)(v6, v2);
    if (v23 == *MEMORY[0x277CDF418] || v23 == *MEMORY[0x277CDF438] || v23 == v14)
    {
      return 1;
    }

    v26 = v23 == *MEMORY[0x277CDF420] || v23 == *MEMORY[0x277CDF410];
    v9 = v6;
    if (!v26)
    {
      goto LABEL_26;
    }

    return 2;
  }

  v16(v9, v28, v2);
  v18 = (*v17)(v9, v2);
  if (v18 == *MEMORY[0x277CDF418] || v18 == *MEMORY[0x277CDF438] || v18 == v14)
  {
    return 1;
  }

  if (v18 == *MEMORY[0x277CDF420] || v18 == *MEMORY[0x277CDF410])
  {
    return 2;
  }

LABEL_26:
  v27(v9, v2);
  return 1;
}

uint64_t sub_213D4F7A8()
{
  v1 = *(v0 + 8);
  sub_213D90D6C();
  if (sub_213D90D4C())
  {
    return 0;
  }

  sub_213D90D7C();
  if (sub_213D90D4C())
  {
    return 1;
  }

  sub_213D90D5C();
  if ((sub_213D90D4C() & 1) == 0)
  {
    if (qword_27C8E99D0 != -1)
    {
      swift_once();
    }

    v3 = sub_213D9046C();
    __swift_project_value_buffer(v3, qword_27C8F7330);
    v4 = sub_213D9044C();
    v5 = sub_213D91BCC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_213CCA000, v4, v5, "[MapScaleView] Unsupported HorizontalAlignment provided to MapScaleView init. Falling back to leading alignment.", v6, 2u);
      MEMORY[0x21604FC60](v6, -1, -1);
    }

    return 0;
  }

  return 2;
}

uint64_t sub_213D4F8CC()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {
    v7 = *(v0 + 16);

    sub_213D91BDC();
    v8 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_213D4FA14()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {
    v7 = *(v0 + 32);

    sub_213D91BDC();
    v8 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v6, 0);
    (*(v2 + 8))(v5, v1);
    return v10[15];
  }

  return v6;
}

uint64_t sub_213D4FB5C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MapScaleView(0);
  sub_213CE2C28(v1 + *(v12 + 28), v11, &qword_27C8EBAF0, &qword_213D9A2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213D9051C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_213D91BDC();
    v16 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t MapScaleView.init(anchorEdge:scope:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  *(a3 + 32) = swift_getKeyPath();
  *(a3 + 40) = 0;
  v6 = type metadata accessor for MapScaleView(0);
  v7 = v6[7];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  swift_storeEnumTagMultiPayload();
  v8 = sub_213D9078C();
  if (v8 == sub_213D9078C())
  {
    result = sub_213D90D6C();
  }

  else
  {
    result = sub_213D90D7C();
  }

  *(a3 + v6[9]) = result;
  v10 = a3 + v6[8];
  *v10 = a1;
  *(v10 + 8) = a2 & 1;
  return result;
}

uint64_t MapScaleView.init(alignment:scope:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = swift_getKeyPath();
  *(a4 + 24) = 0;
  *(a4 + 32) = swift_getKeyPath();
  *(a4 + 40) = 0;
  v8 = type metadata accessor for MapScaleView(0);
  v9 = v8[7];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  result = swift_storeEnumTagMultiPayload();
  *(a4 + v8[9]) = a1;
  v11 = a4 + v8[8];
  *v11 = a2;
  *(v11 + 8) = a3 & 1;
  return result;
}

uint64_t MapScaleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBFB0, &qword_213D991E0);
  v2 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v48 = &v45 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBFB8, &qword_213D991E8);
  v4 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v54 = &v45 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1B8, &qword_213D94B50);
  v6 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v47 = &v45 - v7;
  v8 = type metadata accessor for MapControlsConfig();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v50 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_213D9051C();
  v12 = *(v51 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v51);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for MapScaleViewConfig(0);
  v16 = *(v49 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v49);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = sub_213D4FA14();
  v46 = type metadata accessor for MapScaleView(0);
  v24 = *(v1 + *(v46 + 36));
  sub_213D4FB5C(v15);
  if (v23 == 3)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  v26 = v22;
  v27 = v49;
  v28 = v50;
  v19[1] = v25;
  *(v19 + 1) = v24;
  (*(v12 + 32))(&v19[*(v27 + 28)], v15, v51);
  *v19 = 1;
  sub_213D50D1C(v19, v26);
  v29 = type metadata accessor for MapPitchToggleConfig(0);
  (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
  v30 = v9[7];
  sub_213D50EA8(v26, v28 + v30, type metadata accessor for MapScaleViewConfig);
  (*(v16 + 56))(v28 + v30, 0, 1, v27);
  v31 = v9[8];
  v32 = type metadata accessor for MapUserLocationButtonConfig(0);
  (*(*(v32 - 8) + 56))(v28 + v31, 1, 1, v32);
  v33 = v9[9];
  v34 = type metadata accessor for MapCompassConfig(0);
  (*(*(v34 - 8) + 56))(v28 + v33, 1, 1, v34);
  *(v28 + v9[10]) = 2;
  *(v28 + v9[11]) = 2;
  *(v28 + v9[12]) = 2;
  if (sub_213D4F8CC())
  {
    v35 = sub_213D9149C();
    v36 = v47;
    sub_213D50EA8(v28, &v47[*(v53 + 36)], type metadata accessor for MapControlsConfig);
    *v36 = v35;
    v37 = &qword_27C8EA1B8;
    v38 = &qword_213D94B50;
    sub_213CE2C28(v36, v54, &qword_27C8EA1B8, &qword_213D94B50);
  }

  else
  {
    v39 = type metadata accessor for _MapScaleView(0);
    v36 = v48;
    sub_213D50EA8(v26, &v48[*(v39 + 24)], type metadata accessor for MapScaleViewConfig);
    v40 = (v1 + *(v46 + 32));
    v41 = *v40;
    v42 = *(v40 + 8);
    *v36 = swift_getKeyPath();
    *(v36 + 8) = 0;
    *(v36 + 16) = v41;
    *(v36 + 24) = v42;
    v43 = v54;
    *(v36 + *(v55 + 36)) = 257;
    v37 = &qword_27C8EBFB0;
    v38 = &qword_213D991E0;
    sub_213CE2C28(v36, v43, &qword_27C8EBFB0, &qword_213D991E0);
  }

  swift_storeEnumTagMultiPayload();
  sub_213CE189C();
  sub_213D50DA0();
  sub_213D90E5C();
  sub_213CD8330(v36, v37, v38);
  sub_213D50E48(v28, type metadata accessor for MapControlsConfig);
  return sub_213D50E48(v26, type metadata accessor for MapScaleViewConfig);
}

uint64_t sub_213D50534()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (*(v0 + 8) == 1)
  {
  }

  else
  {

    sub_213D91BDC();
    v7 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CE2B28(v6, 0);
    (*(v2 + 8))(v5, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_213D50688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D51428(&qword_27C8EC010);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213D50708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D51428(&qword_27C8EC010);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213D50788()
{
  sub_213D51428(&qword_27C8EC010);
  sub_213D90E1C();
  __break(1u);
}

id sub_213D507CC()
{
  v1 = sub_213D9051C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [objc_allocWithZone(MEMORY[0x277CD4F40]) init];
  if ((*(v0 + 24) & 1) == 0)
  {
    v8 = *(v0 + 16);
    v9 = v0;
    v10 = sub_213D50534();
    if (*(v10 + 16) && (v11 = sub_213CE212C(v8), (v12 & 1) != 0))
    {
      sub_213CE2A1C(*(v10 + 56) + 8 * v11, v20);

      sub_213CE2A78(v20, v21);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        [v6 setMapView_];
        v15 = v9 + *(type metadata accessor for _MapScaleView(0) + 24);
        [v6 setScaleVisibility_];
        [v6 setLegendAlignment_];
        v16 = type metadata accessor for MapScaleViewConfig(0);
        (*(v2 + 16))(v5, v15 + *(v16 + 28), v1);
        v17 = (*(v2 + 88))(v5, v1);
        v18 = 1;
        if (v17 != *MEMORY[0x277CDF418] && v17 != *MEMORY[0x277CDF438] && v17 != *MEMORY[0x277CDF440])
        {
          v18 = 2;
          if (v17 != *MEMORY[0x277CDF420] && v17 != *MEMORY[0x277CDF410])
          {
            (*(v2 + 8))(v5, v1, 2);
            v18 = 1;
          }
        }

        [v6 _setControlSize_];
      }

      sub_213CE2AD4(v21);
    }

    else
    {
    }
  }

  LODWORD(v7) = 1144750080;
  [v6 _mapkit_setContentHuggingPriority_forAxis_];
  return v6;
}

id sub_213D50A74(void *a1)
{
  v2 = v1;
  v4 = sub_213D9051C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(v1 + 24) & 1) == 0)
  {
    v9 = *(v1 + 16);
    v10 = sub_213D50534();
    if (*(v10 + 16) && (v11 = sub_213CE212C(v9), (v12 & 1) != 0))
    {
      sub_213CE2A1C(*(v10 + 56) + 8 * v11, v22);

      sub_213CE2A78(v22, v23);
      Strong = swift_unknownObjectWeakLoadStrong();
      [a1 setMapView_];

      sub_213CE2AD4(v23);
    }

    else
    {
    }
  }

  v14 = v2 + *(type metadata accessor for _MapScaleView(0) + 24);
  [a1 setScaleVisibility_];
  [a1 setLegendAlignment_];
  v15 = type metadata accessor for MapScaleViewConfig(0);
  (*(v5 + 16))(v8, v14 + *(v15 + 28), v4);
  v16 = (*(v5 + 88))(v8, v4);
  if (v16 == *MEMORY[0x277CDF418] || v16 == *MEMORY[0x277CDF438] || v16 == *MEMORY[0x277CDF440])
  {
    goto LABEL_19;
  }

  if (v16 != *MEMORY[0x277CDF420] && v16 != *MEMORY[0x277CDF410])
  {
    (*(v5 + 8))(v8, v4);
LABEL_19:
    v20 = 1;
    return [a1 _setControlSize_];
  }

  v20 = 2;
  return [a1 _setControlSize_];
}

uint64_t sub_213D50D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapScaleViewConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_213D50DA0()
{
  result = qword_27C8EBFC0;
  if (!qword_27C8EBFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBFB0, &qword_213D991E0);
    sub_213D51428(&qword_27C8EBFC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EBFC0);
  }

  return result;
}

uint64_t sub_213D50E48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213D50EA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_213D50F54()
{
  sub_213D51150(319, &qword_27C8E9760, &type metadata for MapScopeRegistry, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213D51150(319, &qword_27C8EA218, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_213D51094();
      if (v2 <= 0x3F)
      {
        sub_213D510F8();
        if (v3 <= 0x3F)
        {
          sub_213D51150(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_213D51094()
{
  if (!qword_27C8EA220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBE20, &qword_213D98750);
    v0 = sub_213D9052C();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8EA220);
    }
  }
}

void sub_213D510F8()
{
  if (!qword_27C8EC520)
  {
    sub_213D9051C();
    v0 = sub_213D9052C();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8EC520);
    }
  }
}

void sub_213D51150(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_213D511A0()
{
  result = qword_27C8EBFE0;
  if (!qword_27C8EBFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBFE8, &qword_213D99268);
    sub_213CE189C();
    sub_213D50DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EBFE0);
  }

  return result;
}

void sub_213D51254()
{
  sub_213D51150(319, &qword_27C8E9760, &type metadata for MapScopeRegistry, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213D51150(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MapScaleViewConfig(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_213D51360()
{
  result = sub_213D9051C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213D51428(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _MapScaleView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_213D5146C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a2[1];
  v5 = a1[1];
  if ((sub_213D904DC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 1);
  v7 = *(a2 + 1);
  if ((sub_213D90D4C() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for MapScaleViewConfig(0) + 28);

  return sub_213D9050C();
}

uint64_t sub_213D514F4@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 16);
  sub_213CDF810(v4);
  if (*(*(a3 - 8) + 64))
  {
    a1(1);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();

  return sub_213CDF770(OffsetAttribute2, a4);
}

uint64_t sub_213D5159C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC018, &qword_213D993F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for LookAroundPreview();
  sub_213D51CDC(v1 + *(v12 + 36), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213D909AC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_213D91BDC();
    v16 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t LookAroundPreview.init(initialScene:allowsNavigation:showsRoadLabels:pointsOfInterest:badgePosition:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a4;
  v12 = a4[1];
  v13 = *(type metadata accessor for LookAroundPreview() + 36);
  *(a6 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC018, &qword_213D993F0);
  result = swift_storeEnumTagMultiPayload();
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *a6 = a1;
  *(a6 + 24) = a2;
  *(a6 + 25) = a3;
  *(a6 + 32) = v11;
  *(a6 + 40) = v12;
  *(a6 + 48) = a5;
  return result;
}

uint64_t type metadata accessor for LookAroundPreview()
{
  result = qword_27C8EC028;
  if (!qword_27C8EC028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LookAroundPreview.init(scene:allowsNavigation:showsRoadLabels:pointsOfInterest:badgePosition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a6;
  v16 = a6[1];
  v17 = *(type metadata accessor for LookAroundPreview() + 36);
  *(a8 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC018, &qword_213D993F0);
  result = swift_storeEnumTagMultiPayload();
  *a8 = a1;
  *(a8 + 8) = a2 | 0x8000000000000000;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 25) = a5;
  *(a8 + 32) = v15;
  *(a8 + 40) = v16;
  *(a8 + 48) = a7;
  return result;
}

uint64_t LookAroundPreview.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213D909AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = *(v1 + 8);
  v20 = *v1;
  v12 = *(v1 + 16);
  sub_213D51AE4(v20, v11, v12);
  sub_213D5159C(v10);
  sub_213D9098C();
  v13 = sub_213D9099C();
  v14 = *(v4 + 8);
  v14(v7, v3);
  v14(v10, v3);
  v15 = *(v1 + 24);
  v16 = *(v1 + 25);
  v17 = *(v1 + 32);
  *a1 = v20;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13 & 1;
  *(a1 + 25) = v15;
  *(a1 + 26) = v16;
  *(a1 + 40) = *(v1 + 40);
  *(a1 + 32) = v17;
}

id sub_213D51AE4(void *a1, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    v5 = a3;
  }

  else
  {

    return a1;
  }
}

void sub_213D51B88()
{
  type metadata accessor for MKLookAroundBadgePosition(319);
  if (v0 <= 0x3F)
  {
    sub_213D51C30();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213D51C30()
{
  if (!qword_27C8EC038)
  {
    sub_213D909AC();
    v0 = sub_213D9052C();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8EC038);
    }
  }
}

unint64_t sub_213D51C88()
{
  result = qword_27C8EC150;
  if (!qword_27C8EC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EC150);
  }

  return result;
}

uint64_t sub_213D51CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC018, &qword_213D993F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MapFeature.title.getter()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_213D9193C();

  return v3;
}

id MapFeature.kind.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 featureType];
  if (result >= 3)
  {
    result = sub_213D91E9C();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

id sub_213D51EB4(SEL *a1, uint64_t (*a2)(id))
{
  result = [*v2 iconStyle];
  if (result)
  {
    v6 = result;
    v7 = [result *a1];

    if (v7)
    {
      return a2(v7);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id MapFeature.pointOfInterestCategory.getter()
{
  v1 = [*v0 pointOfInterestCategory];

  return v1;
}

uint64_t MapFeature.hashValue.getter()
{
  v1 = *v0;
  sub_213D91FBC();
  sub_213D91C6C();
  return sub_213D91FFC();
}

uint64_t sub_213D52020()
{
  v1 = *v0;
  sub_213D91FBC();
  sub_213D91C6C();
  return sub_213D91FFC();
}

uint64_t sub_213D52088()
{
  v1 = *v0;
  sub_213D91FBC();
  sub_213D91C6C();
  return sub_213D91FFC();
}

uint64_t MapFeature.FeatureKind.description.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x49664F746E696F70;
  }

  if (v1 == 2)
  {
    return 0x6C61636973796870;
  }

  if (v1 == 1)
  {
    return 0x726F746972726574;
  }

  result = sub_213D91E9C();
  __break(1u);
  return result;
}

uint64_t sub_213D521C0()
{
  sub_213D52540();
  sub_213D90C1C();
  return v1;
}

uint64_t View.mapFeatureSelectionContent<A>(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  sub_213D9130C();
}

double sub_213D522DC@<D0>(_OWORD *a1@<X8>)
{
  sub_213D52540();
  sub_213D90C1C();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_213D5232C(uint64_t *a1)
{
  v2 = a1[1];
  sub_213D4CEC4(*a1);
  sub_213D52540();
  return sub_213D90C2C();
}

uint64_t sub_213D52380@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[5];
  v5 = v2[6];
  v6 = v2[7];
  v8 = *a1;
  a2[3] = v3;
  a2[4] = v4;
  __swift_allocate_boxed_opaque_existential_0(a2);
  return v5(&v8);
}

unint64_t sub_213D523D8()
{
  result = qword_27C8EC040;
  if (!qword_27C8EC040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EC040);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnyMapContent(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AnyMapContent(uint64_t result, int a2, int a3)
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

unint64_t sub_213D524DC()
{
  result = qword_27C8EC050;
  if (!qword_27C8EC050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EC048, &unk_213D995C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EC050);
  }

  return result;
}

unint64_t sub_213D52540()
{
  result = qword_27C8EC058;
  if (!qword_27C8EC058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EC058);
  }

  return result;
}

uint64_t Array<A>.selectedOption(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v57 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for MapStylePicker.Option(0);
  v42 = *(v5 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = *(a1 + 88);
    v37 = *(a1 + 104);
    v38 = v10;
    v36 = *(a1 + 120);
    v11 = *(a1 + 136);
    v12 = *(a1 + 16);
    v13 = a2 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    if (*(a1 + 64) == 1)
    {
      v14 = *(a1 + 48);
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v42 + 72);
    v35 = v11 & 1;
    for (i = v9 - 1; ; --i)
    {
      sub_213D59C48(v13, v8, type metadata accessor for MapStylePicker.Option);
      v17 = &v8[*(v5 + 24)];
      v18 = *(v17 + 7);
      v55[6] = *(v17 + 6);
      v55[7] = v18;
      v55[8] = *(v17 + 8);
      v56 = *(v17 + 72);
      v19 = *(v17 + 3);
      v55[2] = *(v17 + 2);
      v55[3] = v19;
      v20 = *(v17 + 5);
      v55[4] = *(v17 + 4);
      v55[5] = v20;
      v21 = *(v17 + 1);
      v55[0] = *v17;
      v55[1] = v21;
      v22 = sub_213D52C38(v55);
      v23 = sub_213CD1094(v55);
      if (v22)
      {
        if (v22 == 1)
        {
          if ((v14 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v24 = *(v23 + 48);
          v25 = *(v23 + 56);
          v26 = *(v23 + 72);
          v27 = *(v23 + 88);
          v28 = *(v23 + 104);
          v29 = *(v23 + 16);
          v30 = *(v23 + 32);
          v51 = *v23;
          v52 = v29;
          v53 = v30;
          v54 = v24;
          if (v11 != 2)
          {
            v39 = v27;
            v40 = v26;
            v41 = v25;
            v47 = v38;
            v48 = v37;
            v49 = v36;
            v50 = v35;
            if (_MKCartographicConfigurationEquals() & 1) != 0 || v28 != 2 && (v43 = v41, v44 = v40, v45 = v39, v46 = v28 & 1, (_MKCartographicConfigurationEquals()))
            {
LABEL_19:
              v32 = v34;
              sub_213D59BE0(v8, v34, type metadata accessor for MapStylePicker.Option);
              result = (*(v42 + 56))(v32, 0, 1, v5);
              goto LABEL_20;
            }
          }
        }
      }

      else if (v12 != 1)
      {
        goto LABEL_19;
      }

      sub_213D52C44(v8);
      if (!i)
      {
        break;
      }

      v13 += v15;
    }
  }

  result = (*(v42 + 56))(v34, 1, 1, v5);
LABEL_20:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL static MapStylePicker.labelsToggleState(style:option:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C0, &qword_213D95000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v19 - v6;
  v8 = type metadata accessor for MapStylePicker.Option(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213CE2C28(a2, v7, &qword_27C8EA2C0, &qword_213D95000);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_213CD8330(v7, &qword_27C8EA2C0, &qword_213D95000);
    return 1;
  }

  sub_213D59BE0(v7, v12, type metadata accessor for MapStylePicker.Option);
  if (v12[*(v8 + 32)] != 1)
  {
    sub_213D52C44(v12);
    return 1;
  }

  v13 = *(a1 + 112);
  v19[6] = *(a1 + 96);
  v19[7] = v13;
  v19[8] = *(a1 + 128);
  v20 = *(a1 + 144);
  v14 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v19[3] = v14;
  v15 = *(a1 + 80);
  v19[4] = *(a1 + 64);
  v19[5] = v15;
  v16 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v16;
  v17 = sub_213D5404C();
  sub_213D52C44(v12);
  return v17;
}

uint64_t MapStylePicker.Option.matches(_:)(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v22 = *(a1 + 88);
  v23 = *(a1 + 104);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = *(a1 + 136);
  v8 = v1 + *(type metadata accessor for MapStylePicker.Option(0) + 24);
  v9 = *(v8 + 112);
  v27[6] = *(v8 + 96);
  v27[7] = v9;
  v27[8] = *(v8 + 128);
  v28 = *(v8 + 144);
  v10 = *(v8 + 48);
  v27[2] = *(v8 + 32);
  v27[3] = v10;
  v11 = *(v8 + 80);
  v27[4] = *(v8 + 64);
  v27[5] = v11;
  v12 = *(v8 + 16);
  v27[0] = *v8;
  v27[1] = v12;
  v13 = sub_213D52C38(v27);
  v14 = sub_213CD1094(v27);
  if (v13)
  {
    if (v13 == 1)
    {
      if (v4 == 1)
      {
        result = v3 ^ 1u;
      }

      else
      {
        result = 1;
      }
    }

    else
    {
      v16 = *(v14 + 104);
      v17 = *v14;
      v24 = *(v14 + 16);
      v25 = *(v14 + 32);
      v26 = *(v14 + 48);
      if (v7 != 2)
      {
        v19 = *(v14 + 88);
        v20 = *(v14 + 72);
        v21 = *(v14 + 56);
        if (_MKCartographicConfigurationEquals())
        {
          result = 1;
          goto LABEL_13;
        }

        if (v16 != 2)
        {
          result = _MKCartographicConfigurationEquals();
          goto LABEL_13;
        }
      }

      result = 0;
    }
  }

  else
  {
    result = v2 != 1;
  }

LABEL_13:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213D52C44(uint64_t a1)
{
  v2 = type metadata accessor for MapStylePicker.Option(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double MapStylePicker.Option.style(trafficToggleValue:labelsToggleValue:)@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MapStylePicker.Option(0);
  v8 = a2 | ~*(v3 + *(v7 + 32));
  v9 = *(v3 + *(v7 + 28)) & a1 & 1;

  return sub_213D55054(v9, v8 & 1, a3);
}

uint64_t MapStylePicker.Option.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213D902AC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MapStylePicker.Option.title.setter(uint64_t a1)
{
  v3 = sub_213D902AC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MapStylePicker.Option.Thumbnail.hashValue.getter()
{
  v1 = *v0;
  sub_213D91FBC();
  MEMORY[0x21604F190](v1);
  return sub_213D91FFC();
}

uint64_t MapStylePicker.Option.thumbnail.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MapStylePicker.Option(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t MapStylePicker.Option.thumbnail.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MapStylePicker.Option(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t sub_213D5300C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_213D9033C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_213D9029C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_213D918FC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_213D902AC();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  sub_213D918EC();
  if (qword_27C8E9768 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_27C8E9770);
  (*(v6 + 16))(v9, v13, v5);
  sub_213D9032C();
  return sub_213D902BC();
}

uint64_t sub_213D53258@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_213D902AC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

double MapStylePicker.init(options:mapView:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_213D58F40(v12);
  v6 = v12[6];
  *(a3 + 120) = v12[7];
  v7 = v12[9];
  *(a3 + 136) = v12[8];
  *(a3 + 152) = v7;
  v8 = v12[2];
  *(a3 + 56) = v12[3];
  v9 = v12[5];
  *(a3 + 72) = v12[4];
  *(a3 + 88) = v9;
  *(a3 + 104) = v6;
  result = *v12;
  v11 = v12[1];
  *(a3 + 8) = v12[0];
  *(a3 + 24) = v11;
  *(a3 + 168) = v13;
  *(a3 + 40) = v8;
  *(a3 + 176) = 0;
  *(a3 + 184) = 1;
  *a3 = a1;
  *(a3 + 192) = a2;
  return result;
}

double MapStylePicker.init(options:style:scope:)@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_213D58F40(v29);
  v8 = v29[6];
  *(a4 + 120) = v29[7];
  v9 = v29[9];
  *(a4 + 136) = v29[8];
  *(a4 + 152) = v9;
  v10 = v29[2];
  *(a4 + 56) = v29[3];
  v11 = v29[5];
  *(a4 + 72) = v29[4];
  *(a4 + 88) = v11;
  *(a4 + 104) = v8;
  v12 = v29[1];
  *(a4 + 8) = v29[0];
  *(a4 + 168) = v30;
  *(a4 + 24) = v12;
  *(a4 + 40) = v10;
  *(a4 + 192) = 0;
  *a4 = a1;
  v13 = a2[9];
  v39 = a2[8];
  v40 = v13;
  v41 = *(a2 + 80);
  v14 = a2[5];
  v35 = a2[4];
  v36 = v14;
  v15 = a2[7];
  v37 = a2[6];
  v38 = v15;
  v16 = a2[1];
  v31 = *a2;
  v32 = v16;
  v17 = a2[3];
  v33 = a2[2];
  v34 = v17;
  nullsub_2(&v31);
  v18 = *(a4 + 120);
  v19 = *(a4 + 152);
  v42[8] = *(a4 + 136);
  v42[9] = v19;
  v43 = *(a4 + 168);
  v20 = *(a4 + 56);
  v21 = *(a4 + 88);
  v42[4] = *(a4 + 72);
  v42[5] = v21;
  v42[6] = *(a4 + 104);
  v42[7] = v18;
  v22 = *(a4 + 24);
  v42[0] = *(a4 + 8);
  v42[1] = v22;
  v42[2] = *(a4 + 40);
  v42[3] = v20;
  sub_213CD8330(v42, &qword_27C8EC090, &qword_213D99648);
  v23 = v37;
  *(a4 + 120) = v38;
  v24 = v40;
  *(a4 + 136) = v39;
  *(a4 + 152) = v24;
  v25 = v33;
  *(a4 + 56) = v34;
  v26 = v36;
  *(a4 + 72) = v35;
  *(a4 + 88) = v26;
  *(a4 + 104) = v23;
  result = *&v31;
  v28 = v32;
  *(a4 + 8) = v31;
  *(a4 + 24) = v28;
  *(a4 + 168) = v41;
  *(a4 + 40) = v25;
  *(a4 + 176) = a3;
  *(a4 + 184) = 0;
  return result;
}

uint64_t MapStylePicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 120);
  v5 = *(v1 + 152);
  v15[8] = *(v1 + 136);
  v15[9] = v5;
  v16 = *(v1 + 168);
  v6 = *(v1 + 56);
  v7 = *(v1 + 88);
  v15[4] = *(v1 + 72);
  v15[5] = v7;
  v15[6] = *(v1 + 104);
  v15[7] = v4;
  v8 = *(v1 + 24);
  v15[0] = *(v1 + 8);
  v15[1] = v8;
  v15[2] = *(v1 + 40);
  v15[3] = v6;
  v9 = *(v1 + 176);
  v10 = *(v1 + 184);
  v11 = *(v1 + 192);

  sub_213CE2C28(v15, v14, &qword_27C8EC090, &qword_213D99648);
  v12 = v11;
  return sub_213D53600(v3, v15, v9, v10, v11, a1);
}

uint64_t sub_213D53600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v56 = a5;
  v57 = a1;
  v53 = a4;
  v52 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A0, &qword_213D94F50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  v55 = type metadata accessor for MapStylePickerView(0);
  sub_213D58F40(v83);
  v15 = v83[6];
  *(a6 + 120) = v83[7];
  v16 = v83[9];
  *(a6 + 136) = v83[8];
  *(a6 + 152) = v16;
  v17 = v83[2];
  *(a6 + 56) = v83[3];
  v18 = v83[5];
  *(a6 + 72) = v83[4];
  *(a6 + 88) = v18;
  *(a6 + 104) = v15;
  v19 = v83[1];
  *(a6 + 8) = v83[0];
  *(a6 + 24) = v19;
  *(a6 + 168) = v84;
  *(a6 + 40) = v17;
  *(a6 + 176) = 0;
  *(a6 + 184) = 1;
  *(a6 + 192) = swift_getKeyPath();
  *(a6 + 200) = 0;
  *&v70[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC0A8, qword_213D998B8);
  sub_213D9156C();
  v20 = *(&v72 + 1);
  v54 = v72;
  *(a6 + 208) = v72;
  *(a6 + 216) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC0C8, &qword_213D99920);
  v22 = *(v21 + 52);
  v23 = type metadata accessor for _MapStylePickerAttribution(0);
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  sub_213CE2C28(v14, v11, &qword_27C8EA2A0, &qword_213D94F50);
  sub_213D9156C();
  v24 = v56;
  sub_213CD8330(v14, &qword_27C8EA2A0, &qword_213D94F50);
  *a6 = v57;
  *(a6 + *(v21 + 56)) = v55;
  if (v24)
  {
    sub_213CD8330(a2, &qword_27C8EC090, &qword_213D99648);
    v25 = type metadata accessor for CocoaMapConfigurationObserver(0);
    v26 = objc_allocWithZone(v25);
    swift_unknownObjectWeakInit();
    v27 = OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver__configuration;
    *&v26[OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver__configuration] = 0;
    *&v26[OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver_observation] = 0;
    sub_213D9039C();
    swift_unknownObjectWeakAssign();
    v28 = [v24 preferredConfiguration];

    *&v26[v27] = v28;
    v58.receiver = v26;
    v58.super_class = v25;
    v29 = objc_msgSendSuper2(&v58, sel_init);
    *&v72 = v24;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = v29;
    v31 = sub_213D902CC();

    v32 = *&v30[OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver_observation];
    *&v30[OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver_observation] = v31;

    *(a6 + 208) = v29;
    *(a6 + 216) = 0;
    return result;
  }

  v34 = v53;
  v35 = v52;
  v36 = *(a2 + 144);
  v80 = *(a2 + 128);
  v81 = v36;
  v82 = *(a2 + 160);
  v37 = *(a2 + 80);
  v76 = *(a2 + 64);
  v77 = v37;
  v38 = *(a2 + 112);
  v78 = *(a2 + 96);
  v79 = v38;
  v39 = *(a2 + 16);
  v72 = *a2;
  v73 = v39;
  v40 = *(a2 + 48);
  v74 = *(a2 + 32);
  v75 = v40;
  result = get_enum_tag_for_layout_string_7SwiftUI7BindingVySbGSg_0(&v72);
  if (result == 1)
  {
    goto LABEL_8;
  }

  if (v34)
  {
    result = sub_213CD8330(a2, &qword_27C8EC090, &qword_213D99648);
LABEL_8:
    __break(1u);
    return result;
  }

  v67 = v80;
  v68 = v81;
  v69 = v82;
  v63 = v76;
  v64 = v77;
  v65 = v78;
  v66 = v79;
  v59 = v72;
  v60 = v73;
  v61 = v74;
  v62 = v75;
  nullsub_2(&v59);
  v41 = *(a6 + 120);
  v42 = *(a6 + 152);
  v70[8] = *(a6 + 136);
  v70[9] = v42;
  v71 = *(a6 + 168);
  v43 = *(a6 + 56);
  v44 = *(a6 + 88);
  v70[4] = *(a6 + 72);
  v70[5] = v44;
  v70[6] = *(a6 + 104);
  v70[7] = v41;
  v45 = *(a6 + 24);
  v70[0] = *(a6 + 8);
  v70[1] = v45;
  v70[2] = *(a6 + 40);
  v70[3] = v43;
  result = sub_213CD8330(v70, &qword_27C8EC090, &qword_213D99648);
  v46 = v65;
  *(a6 + 120) = v66;
  v47 = v68;
  *(a6 + 136) = v67;
  *(a6 + 152) = v47;
  v48 = v61;
  *(a6 + 56) = v62;
  v49 = v64;
  *(a6 + 72) = v63;
  *(a6 + 88) = v49;
  *(a6 + 104) = v46;
  v50 = v60;
  *(a6 + 8) = v59;
  *(a6 + 24) = v50;
  *(a6 + 168) = v69;
  *(a6 + 40) = v48;
  *(a6 + 176) = v35;
  *(a6 + 184) = 0;
  return result;
}

uint64_t sub_213D53AE8@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v53 = a4;
  v52 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A0, &qword_213D94F50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v52 - v14;
  v16 = a2[9];
  v87 = a2[8];
  v88 = v16;
  v89 = *(a2 + 80);
  v17 = a2[5];
  v83 = a2[4];
  v84 = v17;
  v18 = a2[7];
  v85 = a2[6];
  v86 = v18;
  v19 = a2[1];
  v79 = *a2;
  v80 = v19;
  v20 = a2[3];
  v81 = a2[2];
  v82 = v20;
  sub_213D58F40(v90);
  v21 = v90[6];
  *(a7 + 120) = v90[7];
  v22 = v90[9];
  *(a7 + 136) = v90[8];
  *(a7 + 152) = v22;
  v23 = v90[2];
  *(a7 + 56) = v90[3];
  v24 = v90[5];
  *(a7 + 72) = v90[4];
  *(a7 + 88) = v24;
  *(a7 + 104) = v21;
  v25 = v90[1];
  *(a7 + 8) = v90[0];
  *(a7 + 24) = v25;
  *(a7 + 168) = v91;
  *(a7 + 40) = v23;
  *(a7 + 176) = 0;
  *(a7 + 184) = 1;
  *(a7 + 192) = swift_getKeyPath();
  *(a7 + 200) = 0;
  v26 = sub_213D56F4C();
  *(a7 + 208) = v26;
  *(a7 + 216) = v27;
  v28 = type metadata accessor for _MapStylePicker();
  v29 = *(v28 + 52);
  v30 = type metadata accessor for _MapStylePickerAttribution(0);
  (*(*(v30 - 8) + 56))(v15, 1, 1, v30);
  sub_213D56FE4(v15);
  *a7 = a1;
  *(a7 + *(v28 + 56)) = a6;
  if (a5)
  {
    sub_213CD8330(&v79, &qword_27C8EC090, &qword_213D99648);
    v31 = type metadata accessor for CocoaMapConfigurationObserver(0);
    v32 = objc_allocWithZone(v31);
    swift_unknownObjectWeakInit();
    v33 = OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver__configuration;
    *&v32[OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver__configuration] = 0;
    *&v32[OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver_observation] = 0;
    sub_213D9039C();
    swift_unknownObjectWeakAssign();
    v34 = [a5 preferredConfiguration];

    *&v32[v33] = v34;
    v54.receiver = v32;
    v54.super_class = v31;
    v35 = objc_msgSendSuper2(&v54, sel_init);
    *&v68 = a5;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = v35;
    v37 = sub_213D902CC();

    v38 = *&v36[OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver_observation];
    *&v36[OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver_observation] = v37;

    *(a7 + 208) = v35;
    *(a7 + 216) = 0;
    return result;
  }

  v40 = v53;
  v41 = v52;
  v76 = v87;
  v77 = v88;
  v78 = v89;
  v72 = v83;
  v73 = v84;
  v74 = v85;
  v75 = v86;
  v68 = v79;
  v69 = v80;
  v70 = v81;
  v71 = v82;
  result = get_enum_tag_for_layout_string_7SwiftUI7BindingVySbGSg_0(&v68);
  if (result == 1)
  {
    goto LABEL_8;
  }

  if (v40)
  {
    result = sub_213CD8330(&v79, &qword_27C8EC090, &qword_213D99648);
LABEL_8:
    __break(1u);
    return result;
  }

  v63 = v76;
  v64 = v77;
  v65 = v78;
  v59 = v72;
  v60 = v73;
  v61 = v74;
  v62 = v75;
  v55 = v68;
  v56 = v69;
  v57 = v70;
  v58 = v71;
  nullsub_2(&v55);
  v42 = *(a7 + 120);
  v43 = *(a7 + 152);
  v66[8] = *(a7 + 136);
  v66[9] = v43;
  v67 = *(a7 + 168);
  v44 = *(a7 + 56);
  v45 = *(a7 + 88);
  v66[4] = *(a7 + 72);
  v66[5] = v45;
  v66[6] = *(a7 + 104);
  v66[7] = v42;
  v46 = *(a7 + 24);
  v66[0] = *(a7 + 8);
  v66[1] = v46;
  v66[2] = *(a7 + 40);
  v66[3] = v44;
  result = sub_213CD8330(v66, &qword_27C8EC090, &qword_213D99648);
  v47 = v61;
  *(a7 + 120) = v62;
  v48 = v64;
  *(a7 + 136) = v63;
  *(a7 + 152) = v48;
  v49 = v57;
  *(a7 + 56) = v58;
  v50 = v60;
  *(a7 + 72) = v59;
  *(a7 + 88) = v50;
  *(a7 + 104) = v47;
  v51 = v56;
  *(a7 + 8) = v55;
  *(a7 + 24) = v51;
  *(a7 + 168) = v65;
  *(a7 + 40) = v49;
  *(a7 + 176) = v41;
  *(a7 + 184) = 0;
  return result;
}

uint64_t sub_213D53F78@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 120);
  v5 = *(v1 + 152);
  v15[8] = *(v1 + 136);
  v15[9] = v5;
  v16 = *(v1 + 168);
  v6 = *(v1 + 56);
  v7 = *(v1 + 88);
  v15[4] = *(v1 + 72);
  v15[5] = v7;
  v15[6] = *(v1 + 104);
  v15[7] = v4;
  v8 = *(v1 + 24);
  v15[0] = *(v1 + 8);
  v15[1] = v8;
  v15[2] = *(v1 + 40);
  v15[3] = v6;
  v9 = *(v1 + 176);
  v10 = *(v1 + 184);
  v11 = *(v1 + 192);

  sub_213CE2C28(v15, v14, &qword_27C8EC090, &qword_213D99648);
  v12 = v11;
  return sub_213D53600(v3, v15, v9, v10, v11, a1);
}

BOOL sub_213D5404C()
{
  v1 = v0[7];
  v15 = v0[6];
  v16 = v1;
  v17 = v0[8];
  v18 = *(v0 + 72);
  v2 = v0[3];
  v11 = v0[2];
  v12 = v2;
  v3 = v0[5];
  v13 = v0[4];
  v14 = v3;
  v4 = v0[1];
  v9 = *v0;
  v10 = v4;
  v5.super.isa = MapStyle.configuration()().super.isa;
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {

    return 1;
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) == 0))
    {

      return 0;
    }

    else
    {
      [v7 cartographicConfiguration];
      v8 = v9;

      return v8 != 1 || *(&v8 + 1) != 0;
    }
  }
}

double MapStylePicker.init(options:dismissAction:mapView:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_213CCE520(a2);
  sub_213D58F40(v13);
  v7 = v13[6];
  *(a4 + 120) = v13[7];
  v8 = v13[9];
  *(a4 + 136) = v13[8];
  *(a4 + 152) = v8;
  v9 = v13[2];
  *(a4 + 56) = v13[3];
  v10 = v13[5];
  *(a4 + 72) = v13[4];
  *(a4 + 88) = v10;
  *(a4 + 104) = v7;
  result = *v13;
  v12 = v13[1];
  *(a4 + 8) = v13[0];
  *(a4 + 24) = v12;
  *a4 = a1;
  *(a4 + 168) = v14;
  *(a4 + 40) = v9;
  *(a4 + 176) = 0;
  *(a4 + 184) = 1;
  *(a4 + 192) = a3;
  return result;
}

double MapStylePicker.init(options:dismissAction:style:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X3>, uint64_t a4@<X8>)
{
  sub_213CCE520(a2);
  sub_213D58F40(v28);
  v7 = v28[6];
  *(a4 + 120) = v28[7];
  v8 = v28[9];
  *(a4 + 136) = v28[8];
  *(a4 + 152) = v8;
  v9 = v28[2];
  *(a4 + 56) = v28[3];
  v10 = v28[5];
  *(a4 + 72) = v28[4];
  *(a4 + 88) = v10;
  *(a4 + 104) = v7;
  v11 = v28[1];
  *(a4 + 8) = v28[0];
  *(a4 + 168) = v29;
  *(a4 + 24) = v11;
  *(a4 + 40) = v9;
  *(a4 + 176) = 0;
  *(a4 + 184) = 1;
  *(a4 + 192) = 0;
  *a4 = a1;
  v12 = a3[9];
  v38 = a3[8];
  v39 = v12;
  v40 = *(a3 + 80);
  v13 = a3[5];
  v34 = a3[4];
  v35 = v13;
  v14 = a3[7];
  v36 = a3[6];
  v37 = v14;
  v15 = a3[1];
  v30 = *a3;
  v31 = v15;
  v16 = a3[3];
  v32 = a3[2];
  v33 = v16;
  nullsub_2(&v30);
  v17 = *(a4 + 120);
  v18 = *(a4 + 152);
  v41[8] = *(a4 + 136);
  v41[9] = v18;
  v42 = *(a4 + 168);
  v19 = *(a4 + 56);
  v20 = *(a4 + 88);
  v41[4] = *(a4 + 72);
  v41[5] = v20;
  v41[6] = *(a4 + 104);
  v41[7] = v17;
  v21 = *(a4 + 24);
  v41[0] = *(a4 + 8);
  v41[1] = v21;
  v41[2] = *(a4 + 40);
  v41[3] = v19;
  sub_213CD8330(v41, &qword_27C8EC090, &qword_213D99648);
  v22 = v36;
  *(a4 + 120) = v37;
  v23 = v39;
  *(a4 + 136) = v38;
  *(a4 + 152) = v23;
  v24 = v32;
  *(a4 + 56) = v33;
  v25 = v35;
  *(a4 + 72) = v34;
  *(a4 + 88) = v25;
  *(a4 + 104) = v22;
  result = *&v30;
  v27 = v31;
  *(a4 + 8) = v30;
  *(a4 + 24) = v27;
  *(a4 + 168) = v40;
  *(a4 + 40) = v24;
  return result;
}

__n128 sub_213D543C0()
{
  v0 = sub_213D9033C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_213D9029C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_213D918FC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for MapStylePicker.Option(0);
  __swift_allocate_value_buffer(v9, qword_27C8EC060);
  v10 = __swift_project_value_buffer(v9, qword_27C8EC060);
  v20[16] = 1;
  sub_213D918EC();
  if (qword_27C8E9768 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_27C8E9770);
  (*(v3 + 16))(v6, v11, v2);
  sub_213D9032C();
  sub_213D902BC();
  v24 = 0uLL;
  *&v25 = 0;
  *(&v25 + 1) = MEMORY[0x277D84F90];
  LOWORD(v26) = 0;
  *(&v26 + 2) = *&v22[7];
  WORD3(v26) = v23;
  *(&v26 + 1) = 0;
  v27[0] = 1;
  *&v27[1] = *v22;
  *&v27[4] = *&v22[3];
  *&v27[8] = xmmword_213D99630;
  *&v27[24] = 0;
  v28[0] = 0;
  *&v28[1] = *v21;
  *&v28[4] = *&v21[3];
  memset(&v28[8], 0, 48);
  *&v28[56] = 2;
  v29 = 0;
  sub_213D58F60(&v24);
  *(v10 + v9[5]) = 0;
  v12 = v10 + v9[6];
  v13 = v25;
  *v12 = v24;
  *(v12 + 16) = v13;
  v14 = v26;
  v15 = *v27;
  v16 = *v28;
  *(v12 + 64) = *&v27[16];
  *(v12 + 80) = v16;
  *(v12 + 32) = v14;
  *(v12 + 48) = v15;
  result = *&v28[16];
  v18 = *&v28[32];
  v19 = *&v28[48];
  *(v12 + 144) = v29;
  *(v12 + 112) = v18;
  *(v12 + 128) = v19;
  *(v12 + 96) = result;
  *(v10 + v9[7]) = 0;
  *(v10 + v9[8]) = 0;
  *(v10 + v9[9]) = 2;
  return result;
}

uint64_t static MapStylePicker.Option.standard(style:showTrafficToggle:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_213D9033C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_213D9029C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_213D918FC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = a1[7];
  v35 = a1[6];
  v36 = v15;
  v37 = a1[8];
  v38 = *(a1 + 72);
  v16 = a1[3];
  v31 = a1[2];
  v32 = v16;
  v17 = a1[5];
  v33 = a1[4];
  v34 = v17;
  v18 = a1[1];
  v29 = *a1;
  v30 = v18;
  sub_213D918EC();
  if (qword_27C8E9768 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v8, qword_27C8E9770);
  (*(v9 + 16))(v12, v19, v8);
  sub_213D9032C();
  sub_213D902BC();
  v45 = v35;
  v46 = v36;
  v47 = v37;
  v48 = v38;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v39 = v29;
  v40 = v30;
  sub_213D58F60(&v39);
  v20 = type metadata accessor for MapStylePicker.Option(0);
  *(a3 + v20[5]) = 0;
  v21 = a3 + v20[6];
  v22 = v46;
  *(v21 + 96) = v45;
  *(v21 + 112) = v22;
  *(v21 + 128) = v47;
  *(v21 + 144) = v48;
  v23 = v42;
  *(v21 + 32) = v41;
  *(v21 + 48) = v23;
  v24 = v44;
  *(v21 + 64) = v43;
  *(v21 + 80) = v24;
  v25 = v40;
  *v21 = v39;
  *(v21 + 16) = v25;
  *(a3 + v20[7]) = a2 & 1;
  *(a3 + v20[8]) = 0;
  *(a3 + v20[9]) = 2;
  return sub_213D1E0AC(&v29, &v28);
}

__n128 sub_213D549FC()
{
  v0 = sub_213D9033C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_213D9029C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_213D918FC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for MapStylePicker.Option(0);
  __swift_allocate_value_buffer(v9, qword_27C8EC078);
  v10 = __swift_project_value_buffer(v9, qword_27C8EC078);
  v20[16] = 1;
  sub_213D918EC();
  if (qword_27C8E9768 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_27C8E9770);
  (*(v3 + 16))(v6, v11, v2);
  sub_213D9032C();
  sub_213D902BC();
  v24 = 0uLL;
  v25 = xmmword_213D98BB0;
  LOWORD(v26) = 0;
  *(&v26 + 2) = *&v22[7];
  WORD3(v26) = v23;
  *(&v26 + 1) = 0;
  LOBYTE(v27) = 1;
  *(&v27 + 1) = *v22;
  DWORD1(v27) = *&v22[3];
  *(&v27 + 1) = 0;
  *&v28 = 0;
  *(&v28 + 1) = MEMORY[0x277D84F90];
  v29[0] = 0;
  *&v29[1] = *v21;
  *&v29[4] = *&v21[3];
  memset(&v29[8], 0, 48);
  *&v29[56] = 2;
  v30 = 0;
  sub_213D58F70(&v24);
  *(v10 + v9[5]) = 3;
  v12 = v10 + v9[6];
  v13 = v25;
  *v12 = v24;
  *(v12 + 16) = v13;
  v14 = v26;
  v15 = v27;
  v16 = *v29;
  *(v12 + 64) = v28;
  *(v12 + 80) = v16;
  *(v12 + 32) = v14;
  *(v12 + 48) = v15;
  result = *&v29[16];
  v18 = *&v29[32];
  v19 = *&v29[48];
  *(v12 + 144) = v30;
  *(v12 + 112) = v18;
  *(v12 + 128) = v19;
  *(v12 + 96) = result;
  *(v10 + v9[7]) = 0;
  *(v10 + v9[8]) = 0;
  *(v10 + v9[9]) = 2;
  return result;
}

uint64_t static MapStylePicker.Option.satellite(style:showTrafficToggle:showLabelsToggle:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  HIDWORD(v28) = a3;
  v7 = sub_213D9033C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_213D9029C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_213D918FC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = a1[7];
  v36 = a1[6];
  v37 = v16;
  v38 = a1[8];
  v39 = *(a1 + 72);
  v17 = a1[3];
  v32 = a1[2];
  v33 = v17;
  v18 = a1[5];
  v34 = a1[4];
  v35 = v18;
  v19 = a1[1];
  v30 = *a1;
  v31 = v19;
  sub_213D918EC();
  if (qword_27C8E9768 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v9, qword_27C8E9770);
  (*(v10 + 16))(v13, v20, v9);
  sub_213D9032C();
  sub_213D902BC();
  v46 = v36;
  v47 = v37;
  v48 = v38;
  v49 = v39;
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v45 = v35;
  v40 = v30;
  v41 = v31;
  sub_213D58F70(&v40);
  v21 = type metadata accessor for MapStylePicker.Option(0);
  *(a4 + v21[5]) = 3;
  v22 = a4 + v21[6];
  v23 = v47;
  *(v22 + 96) = v46;
  *(v22 + 112) = v23;
  *(v22 + 128) = v48;
  *(v22 + 144) = v49;
  v24 = v43;
  *(v22 + 32) = v42;
  *(v22 + 48) = v24;
  v25 = v45;
  *(v22 + 64) = v44;
  *(v22 + 80) = v25;
  v26 = v41;
  *v22 = v40;
  *(v22 + 16) = v26;
  *(a4 + v21[7]) = a2 & 1;
  *(a4 + v21[8]) = BYTE4(v28) & 1;
  *(a4 + v21[9]) = 2;
  return sub_213D1E0AC(&v30, &v29);
}

double sub_213D55054@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MapStylePicker.Option(0);
  if (*(v3 + *(v7 + 36)) == 2)
  {
    v8 = a1;
  }

  else
  {
    v8 = *(v3 + *(v7 + 36));
  }

  v9 = v3 + *(v7 + 24);
  v10 = *(v9 + 112);
  v45[6] = *(v9 + 96);
  v45[7] = v10;
  v45[8] = *(v9 + 128);
  v46 = *(v9 + 144);
  v11 = *(v9 + 48);
  v45[2] = *(v9 + 32);
  v45[3] = v11;
  v12 = *(v9 + 80);
  v45[4] = *(v9 + 64);
  v45[5] = v12;
  v13 = *(v9 + 16);
  v45[0] = *v9;
  v45[1] = v13;
  v14 = sub_213D52C38(v45);
  v15 = sub_213CD1094(v45);
  if (!v14)
  {
    v21 = *(v15 + 16);
    if (v21 != 1)
    {
      v37 = *(v15 + 24);
      v39 = *v15;
      v38 = *(v15 + 8);
      v40 = *(v15 + 32);
      *a3 = *v15;
      *(a3 + 8) = v38;
      *(a3 + 16) = v21;
      *(a3 + 24) = v37;
      *(a3 + 32) = v40 & 0x100 | v8 & 1;
      *(a3 + 40) = 0;
      *(a3 + 48) = 1;
      *(a3 + 56) = xmmword_213D99630;
      *(a3 + 72) = 0;
      *(a3 + 80) = 0;
      *(a3 + 88) = 0u;
      *(a3 + 104) = 0u;
      *(a3 + 120) = 0u;
      *(a3 + 136) = 2;
      *(a3 + 144) = 0;
      sub_213D59E60(v39, v38, v21);
      return *&v20;
    }

    goto LABEL_10;
  }

  if (v14 != 1)
  {
    v34 = *(v15 + 48);
    v20 = *v15;
    v35 = *(v15 + 16);
    v36 = *(v15 + 32);
    if ((a2 & 1) == 0)
    {
      if (*(v15 + 104) == 2)
      {
LABEL_15:
        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = xmmword_213D98BB0;
        *(a3 + 32) = 0;
        *(a3 + 40) = 0;
        *(a3 + 48) = 1;
        *(a3 + 56) = xmmword_213D99630;
        *(a3 + 72) = 0;
        *(a3 + 80) = 0;
        *(a3 + 88) = v20;
        *(a3 + 104) = v35;
        *(a3 + 120) = v36;
        *(a3 + 136) = v34;
        *(a3 + 144) = v8 & 1;
        *(a3 + 145) = 1;
        return *&v20;
      }

      v20 = *(v15 + 56);
      v35 = *(v15 + 72);
      v34 = *(v15 + 104);
      v36 = *(v15 + 88);
    }

    v34 &= 1u;
    goto LABEL_15;
  }

  v16 = *(v15 + 64);
  if (v16 == 1)
  {
LABEL_10:
    v22 = *(v15 + 16);
    *a3 = *v15;
    *(a3 + 16) = v22;
    v23 = *(v15 + 32);
    v24 = *(v15 + 48);
    v25 = *(v15 + 80);
    *(a3 + 64) = *(v15 + 64);
    *(a3 + 80) = v25;
    *(a3 + 32) = v23;
    *(a3 + 48) = v24;
    v26 = *(v15 + 96);
    v27 = *(v15 + 112);
    v28 = *(v15 + 128);
    *(a3 + 144) = *(v15 + 144);
    *(a3 + 112) = v27;
    *(a3 + 128) = v28;
    *(a3 + 96) = v26;
    v29 = *(v9 + 16);
    v43[0] = *v9;
    v43[1] = v29;
    v30 = *(v9 + 80);
    v43[4] = *(v9 + 64);
    v43[5] = v30;
    v31 = *(v9 + 48);
    v43[2] = *(v9 + 32);
    v43[3] = v31;
    v44 = *(v9 + 144);
    v32 = *(v9 + 128);
    v43[7] = *(v9 + 112);
    v43[8] = v32;
    v43[6] = *(v9 + 96);
    v33 = sub_213CD1094(v43);
    sub_213D1E0AC(v33, v42);
    return *&v20;
  }

  v17 = *(v15 + 56);
  v18 = *(v15 + 72);
  v19 = *(v15 + 80);
  if (a2)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = xmmword_213D98BB0;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 48) = 1;
    *(a3 + 56) = v17;
    *(a3 + 64) = v16;
    *(a3 + 72) = v18;
    *(a3 + 80) = v8 & 1;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 2;
    *(a3 + 144) = 0;
    sub_213D59E18(v17, v16);
  }

  else
  {
    sub_213D59E18(*(v15 + 56), v16);

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = xmmword_213D98BB0;
    *(a3 + 32) = 0;
    *(a3 + 40) = v17;
    *(a3 + 48) = 0;
    *(a3 + 56) = xmmword_213D99630;
    *(a3 + 72) = 0;
    *(a3 + 80) = 0;
    *&v20 = 0;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 2;
    *(a3 + 144) = 0;
  }

  return *&v20;
}

double static MapStylePicker.Option.standard(elevation:showTrafficToggle:)@<D0>(unint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_213D9033C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_213D9029C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 2;
  v13 = sub_213D918FC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = *a1;
  sub_213D918EC();
  if (qword_27C8E9768 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_27C8E9770);
  (*(v9 + 16))(v12, v16, v8);
  sub_213D9032C();
  sub_213D902BC();
  v25 = 1;
  v29 = v15;
  *&v30 = 0;
  *(&v30 + 1) = MEMORY[0x277D84F90];
  LOWORD(v31) = 0;
  *(&v31 + 2) = *&v27[7];
  WORD3(v31) = v28;
  *(&v31 + 1) = 0;
  v32[0] = 1;
  *&v32[1] = *v27;
  *&v32[4] = *&v27[3];
  *&v32[8] = xmmword_213D99630;
  *&v32[24] = 0;
  v33[0] = 0;
  *&v33[1] = *v26;
  *&v33[4] = *&v26[3];
  memset(&v33[8], 0, 48);
  *&v33[56] = 2;
  v34 = 0;
  sub_213D58F60(&v29);
  v17 = type metadata accessor for MapStylePicker.Option(0);
  *(a3 + v17[5]) = 0;
  v18 = a3 + v17[6];
  v19 = *&v33[32];
  v20 = *&v33[48];
  *(v18 + 96) = *&v33[16];
  *(v18 + 112) = v19;
  *(v18 + 128) = v20;
  *(v18 + 144) = v34;
  v21 = *v32;
  *(v18 + 32) = v31;
  *(v18 + 48) = v21;
  v22 = *v33;
  *(v18 + 64) = *&v32[16];
  *(v18 + 80) = v22;
  result = *&v29;
  v24 = v30;
  *v18 = v29;
  *(v18 + 16) = v24;
  *(a3 + v17[7]) = a2 & 1;
  *(a3 + v17[8]) = 0;
  *(a3 + v17[9]) = 2;
  return result;
}

double static MapStylePicker.Option.satellite(elevation:showTrafficToggle:showLabelsToggle:)@<D0>(uint64_t *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_213D9033C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_213D9029C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_213D918FC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = *a1;
  sub_213D918EC();
  if (qword_27C8E9768 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v10, qword_27C8E9770);
  (*(v11 + 16))(v14, v18, v10);
  sub_213D9032C();
  sub_213D902BC();
  v27[8] = 1;
  v31 = 0uLL;
  v32 = xmmword_213D98BB0;
  LOWORD(v33) = 0;
  *(&v33 + 2) = *&v29[7];
  WORD3(v33) = v30;
  *(&v33 + 1) = 0;
  LOBYTE(v34) = 1;
  *(&v34 + 1) = *v29;
  DWORD1(v34) = *&v29[3];
  *(&v34 + 1) = v17;
  *&v35 = 0;
  *(&v35 + 1) = MEMORY[0x277D84F90];
  v36[0] = 0;
  *&v36[1] = *v28;
  *&v36[4] = *&v28[3];
  memset(&v36[8], 0, 48);
  *&v36[56] = 2;
  v37 = 0;
  sub_213D58F70(&v31);
  v19 = type metadata accessor for MapStylePicker.Option(0);
  *(a4 + v19[5]) = 3;
  v20 = a4 + v19[6];
  v21 = *&v36[32];
  v22 = *&v36[48];
  *(v20 + 96) = *&v36[16];
  *(v20 + 112) = v21;
  *(v20 + 128) = v22;
  *(v20 + 144) = v37;
  v23 = v34;
  *(v20 + 32) = v33;
  *(v20 + 48) = v23;
  v24 = *v36;
  *(v20 + 64) = v35;
  *(v20 + 80) = v24;
  result = *&v31;
  v26 = v32;
  *v20 = v31;
  *(v20 + 16) = v26;
  *(a4 + v19[7]) = a2 & 1;
  *(a4 + v19[8]) = a3 & 1;
  *(a4 + v19[9]) = 2;
  return result;
}

uint64_t sub_213D5599C()
{
  v0 = sub_213D9033C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_213D9029C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_213D918FC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_213D902AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MapStylePicker.Option(0);
  __swift_allocate_value_buffer(v14, qword_27C8E98B0);
  v15 = __swift_project_value_buffer(v14, qword_27C8E98B0);
  sub_213D918EC();
  if (qword_27C8E9768 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v2, qword_27C8E9770);
  (*(v3 + 16))(v6, v16, v2);
  sub_213D9032C();
  sub_213D902BC();
  if (qword_27C8E93C8 != -1)
  {
    swift_once();
  }

  v17 = qword_27C8E93F0;
  v18 = unk_27C8E93F8;
  v19 = byte_27C8E9400;
  v20 = *(v10 + 16);
  v31 = xmmword_27C8E93D0;
  v30 = *&qword_27C8E93E0;
  v20(v15, v13, v9);
  v33 = v31;
  v34 = v30;
  *&v35 = v17;
  *(&v35 + 1) = v18;
  v36[0] = v19;
  *&v36[1] = *v32;
  *&v36[4] = *&v32[3];
  memset(&v36[8], 0, 48);
  *&v36[56] = 2;
  sub_213D59E04(&v33);
  *(v15 + v14[5]) = 0;
  v21 = v15 + v14[6];
  v22 = v34;
  *v21 = v33;
  *(v21 + 16) = v22;
  v23 = v35;
  v24 = *v36;
  v25 = *&v36[32];
  *(v21 + 64) = *&v36[16];
  *(v21 + 80) = v25;
  *(v21 + 32) = v23;
  *(v21 + 48) = v24;
  v26 = *&v36[48];
  v27 = v37;
  v28 = v38;
  *(v21 + 144) = v39;
  *(v21 + 112) = v27;
  *(v21 + 128) = v28;
  *(v21 + 96) = v26;
  *(v15 + v14[7]) = 0;
  *(v15 + v14[8]) = 0;
  *(v15 + v14[9]) = 0;
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_213D55D98()
{
  v0 = sub_213D9033C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_213D9029C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_213D918FC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_213D902AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MapStylePicker.Option(0);
  __swift_allocate_value_buffer(v14, qword_27C8E98D8);
  v15 = __swift_project_value_buffer(v14, qword_27C8E98D8);
  sub_213D918EC();
  if (qword_27C8E9768 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v2, qword_27C8E9770);
  (*(v3 + 16))(v6, v16, v2);
  sub_213D9032C();
  sub_213D902BC();
  if (qword_27C8E9410 != -1)
  {
    swift_once();
  }

  v17 = qword_27C8E9438;
  v18 = unk_27C8E9440;
  v19 = byte_27C8E9448;
  v20 = *(v10 + 16);
  v31 = xmmword_27C8E9418;
  v30 = *&qword_27C8E9428;
  v20(v15, v13, v9);
  v33 = v31;
  v34 = v30;
  *&v35 = v17;
  *(&v35 + 1) = v18;
  v36[0] = v19;
  *&v36[1] = *v32;
  *&v36[4] = *&v32[3];
  memset(&v36[8], 0, 48);
  *&v36[56] = 2;
  sub_213D59E04(&v33);
  *(v15 + v14[5]) = 1;
  v21 = v15 + v14[6];
  v22 = v34;
  *v21 = v33;
  *(v21 + 16) = v22;
  v23 = v35;
  v24 = *v36;
  v25 = *&v36[32];
  *(v21 + 64) = *&v36[16];
  *(v21 + 80) = v25;
  *(v21 + 32) = v23;
  *(v21 + 48) = v24;
  v26 = *&v36[48];
  v27 = v37;
  v28 = v38;
  *(v21 + 144) = v39;
  *(v21 + 112) = v27;
  *(v21 + 128) = v28;
  *(v21 + 96) = v26;
  *(v15 + v14[7]) = 0;
  *(v15 + v14[8]) = 0;
  *(v15 + v14[9]) = 1;
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_213D56198()
{
  v0 = sub_213D9033C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_213D9029C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_213D918FC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_213D902AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MapStylePicker.Option(0);
  __swift_allocate_value_buffer(v14, qword_27C8E9890);
  v15 = __swift_project_value_buffer(v14, qword_27C8E9890);
  sub_213D918EC();
  if (qword_27C8E9768 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v2, qword_27C8E9770);
  (*(v3 + 16))(v6, v16, v2);
  sub_213D9032C();
  sub_213D902BC();
  if (qword_27C8E9388 != -1)
  {
    swift_once();
  }

  v17 = qword_27C8E93B0;
  v18 = unk_27C8E93B8;
  v19 = byte_27C8E93C0;
  v20 = *(v10 + 16);
  v31 = xmmword_27C8E9390;
  v30 = *&qword_27C8E93A0;
  v20(v15, v13, v9);
  v33 = v31;
  v34 = v30;
  *&v35 = v17;
  *(&v35 + 1) = v18;
  v36[0] = v19;
  *&v36[1] = *v32;
  *&v36[4] = *&v32[3];
  memset(&v36[8], 0, 48);
  *&v36[56] = 2;
  sub_213D59E04(&v33);
  *(v15 + v14[5]) = 2;
  v21 = v15 + v14[6];
  v22 = v34;
  *v21 = v33;
  *(v21 + 16) = v22;
  v23 = v35;
  v24 = *v36;
  v25 = *&v36[32];
  *(v21 + 64) = *&v36[16];
  *(v21 + 80) = v25;
  *(v21 + 32) = v23;
  *(v21 + 48) = v24;
  v26 = *&v36[48];
  v27 = v37;
  v28 = v38;
  *(v21 + 144) = v39;
  *(v21 + 112) = v27;
  *(v21 + 128) = v28;
  *(v21 + 96) = v26;
  *(v15 + v14[7]) = 0;
  *(v15 + v14[8]) = 0;
  *(v15 + v14[9]) = 2;
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_213D56594()
{
  v0 = sub_213D9033C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_213D9029C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_213D918FC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_213D902AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MapStylePicker.Option(0);
  __swift_allocate_value_buffer(v14, qword_27C8E9868);
  v15 = __swift_project_value_buffer(v14, qword_27C8E9868);
  sub_213D918EC();
  if (qword_27C8E9768 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v2, qword_27C8E9770);
  (*(v3 + 16))(v6, v16, v2);
  sub_213D9032C();
  sub_213D902BC();
  if (qword_27C8E94A0 != -1)
  {
    swift_once();
  }

  v17 = v13;
  v36 = *&qword_27C8E94B8;
  v37 = xmmword_27C8E94A8;
  v18 = unk_27C8E94D0;
  v35 = qword_27C8E94C8;
  v19 = byte_27C8E94D8;
  if (qword_27C8E9458 != -1)
  {
    swift_once();
  }

  v20 = qword_27C8E9480;
  v21 = unk_27C8E9488;
  v22 = byte_27C8E9490;
  v23 = *(v10 + 16);
  v34 = xmmword_27C8E9460;
  v33 = *&qword_27C8E9470;
  v23(v15, v17, v9);
  v39 = v37;
  v40 = v36;
  *&v41 = v35;
  *(&v41 + 1) = v18;
  v42[0] = v19;
  *&v42[1] = *v38;
  *&v42[4] = *&v38[3];
  *&v42[24] = v33;
  *&v42[8] = v34;
  *&v42[40] = v20;
  *&v43 = v21;
  *(&v43 + 1) = v22;
  sub_213D59E04(&v39);
  *(v15 + v14[5]) = 3;
  v24 = v15 + v14[6];
  v25 = v40;
  *v24 = v39;
  *(v24 + 16) = v25;
  v26 = v41;
  v27 = *v42;
  v28 = *&v42[32];
  *(v24 + 64) = *&v42[16];
  *(v24 + 80) = v28;
  *(v24 + 32) = v26;
  *(v24 + 48) = v27;
  v29 = v43;
  v30 = v44;
  v31 = v45;
  *(v24 + 144) = v46;
  *(v24 + 112) = v30;
  *(v24 + 128) = v31;
  *(v24 + 96) = v29;
  *(v15 + v14[7]) = 1;
  *(v15 + v14[8]) = 1;
  *(v15 + v14[9]) = 2;
  return (*(v10 + 8))(v17, v9);
}

uint64_t sub_213D56A10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for MapStylePicker.Option(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_213D59C48(v6, a3, type metadata accessor for MapStylePicker.Option);
}

uint64_t sub_213D56A98()
{
  result = _MKCartographicConfigurationForMapType();
  v1 = 3;
  if (*(&v2 + 1) != 4)
  {
    v1 = 1;
  }

  xmmword_27C8E93D0 = v2;
  qword_27C8E93E0 = 1;
  unk_27C8E93E8 = v1;
  qword_27C8E93F0 = 0;
  unk_27C8E93F8 = v3;
  byte_27C8E9400 = v4;
  return result;
}

uint64_t sub_213D56AF4()
{
  if (qword_27C8E9348 != -1)
  {
    swift_once();
  }

  result = _MKCartographicConfigurationForMapType();
  v1 = 3;
  if (*(&v2 + 1) != 4)
  {
    v1 = 1;
  }

  xmmword_27C8E9418 = v2;
  qword_27C8E9428 = 1;
  unk_27C8E9430 = v1;
  qword_27C8E9438 = 0;
  unk_27C8E9440 = v3;
  byte_27C8E9448 = v4;
  return result;
}

uint64_t sub_213D56B84()
{
  if (qword_27C8E9330 != -1)
  {
    swift_once();
  }

  result = _MKCartographicConfigurationForMapType();
  v1 = 3;
  if (*(&v2 + 1) != 4)
  {
    v1 = 1;
  }

  xmmword_27C8E9390 = v2;
  qword_27C8E93A0 = 1;
  unk_27C8E93A8 = v1;
  qword_27C8E93B0 = 0;
  unk_27C8E93B8 = v3;
  byte_27C8E93C0 = v4;
  return result;
}

uint64_t sub_213D56C14()
{
  result = _MKCartographicConfigurationForMapType();
  v1 = 3;
  if (*(&v2 + 1) != 4)
  {
    v1 = 1;
  }

  xmmword_27C8E94A8 = v2;
  qword_27C8E94B8 = 1;
  unk_27C8E94C0 = v1;
  qword_27C8E94C8 = 0;
  unk_27C8E94D0 = v3;
  byte_27C8E94D8 = v4;
  return result;
}

uint64_t sub_213D56C70()
{
  result = _MKCartographicConfigurationForMapType();
  if (*(&v2 + 1) == 4)
  {
    v1 = 3;
  }

  else
  {
    v1 = 1;
  }

  xmmword_27C8E9460 = v2;
  qword_27C8E9470 = 1;
  unk_27C8E9478 = v1;
  qword_27C8E9480 = 0;
  unk_27C8E9488 = v3;
  byte_27C8E9490 = v4;
  return result;
}

uint64_t _MapStylePickerAttribution.url.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for _MapStylePickerAttribution(0) + 20);

  return sub_213D58FA4(a1, v3);
}

uint64_t sub_213D56DFC()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 192);
  if (*(v0 + 200) == 1)
  {
  }

  else
  {

    sub_213D91BDC();
    v7 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CE2B28(v6, 0);
    (*(v2 + 8))(v5, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_213D56F4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC0A8, qword_213D998B8);
  sub_213D9156C();
  return v1;
}

uint64_t sub_213D56F94()
{
  v3 = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC0D8, &qword_213D99AB0);
  sub_213D9157C();
  return v2;
}

uint64_t sub_213D56FE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A0, &qword_213D94F50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_213CE2C28(a1, &v6 - v4, &qword_27C8EA2A0, &qword_213D94F50);
  sub_213D9156C();
  return sub_213CD8330(a1, &qword_27C8EA2A0, &qword_213D94F50);
}

uint64_t sub_213D570AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A0, &qword_213D94F50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *(a2 + 52);
  sub_213CE2C28(a1, &v9 - v7, &qword_27C8EA2A0, &qword_213D94F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC0A0, &qword_213D99898);
  sub_213D9158C();
  return sub_213CD8330(a1, &qword_27C8EA2A0, &qword_213D94F50);
}

uint64_t _MapStylePicker.init(options:style:scope:contentType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a2 + 144);
  v25 = *(a2 + 128);
  v26 = v9;
  v27 = *(a2 + 160);
  v10 = *(a2 + 80);
  v21 = *(a2 + 64);
  v22 = v10;
  v11 = *(a2 + 112);
  v23 = *(a2 + 96);
  v24 = v11;
  v12 = *(a2 + 16);
  v17 = *a2;
  v18 = v12;
  v13 = *(a2 + 48);
  v19 = *(a2 + 32);
  v20 = v13;
  nullsub_2(&v17);
  v15[8] = v25;
  v15[9] = v26;
  v16 = v27;
  v15[4] = v21;
  v15[5] = v22;
  v15[6] = v23;
  v15[7] = v24;
  v15[0] = v17;
  v15[1] = v18;
  v15[2] = v19;
  v15[3] = v20;
  return sub_213D53AE8(a1, v15, a3, 0, 0, a4, a5);
}

uint64_t sub_213D57268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v4 = a1 - 8;
  v61 = *(a1 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](a1);
  v59 = v6;
  v60 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A0, &qword_213D94F50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = (&v53 - v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - v16;
  v18 = type metadata accessor for _MapStylePickerAttribution(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v58 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v63 = &v53 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v53 - v24;
  v26 = *(v4 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC0A0, &qword_213D99898);
  sub_213D9157C();
  v27 = *(v19 + 48);
  if (v27(v17, 1, v18) != 1)
  {
    sub_213D59BE0(v17, v25, type metadata accessor for _MapStylePickerAttribution);
    sub_213D59BE0(v25, a2, type metadata accessor for _MapStylePickerAttribution);
    return (*(v19 + 56))(a2, 0, 1, v18);
  }

  v56 = a2;
  sub_213CD8330(v17, &qword_27C8EA2A0, &qword_213D94F50);
  v54 = *(v19 + 56);
  v55 = v18;
  v54(v14, 1, 1, v18);
  v28 = v14;
  v29 = v2;
  if ((*(v2 + 184) & 1) == 0)
  {
    v30 = *(v2 + 176);
    v31 = sub_213D56DFC();
    if (*(v31 + 16) && (v32 = sub_213CE212C(v30), (v33 & 1) != 0))
    {
      sub_213CE2A1C(*(v31 + 56) + 8 * v32, v65);

      sub_213CE2A78(v65, v66);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v35 = v57;
        v36 = Strong;
        sub_213D5789C(Strong, v64, v57);

        sub_213CE2AD4(v66);
        goto LABEL_12;
      }

      sub_213CE2AD4(v66);
    }

    else
    {
    }
  }

  v38 = sub_213D56F94();
  if (!v38)
  {
    goto LABEL_13;
  }

  v39 = v38;
  v40 = swift_unknownObjectWeakLoadStrong();

  if (!v40)
  {
    goto LABEL_13;
  }

  v35 = v57;
  sub_213D5789C(v40, v64, v57);

LABEL_12:
  sub_213CD8330(v28, &qword_27C8EA2A0, &qword_213D94F50);
  sub_213CED608(v35, v28, &qword_27C8EA2A0, &qword_213D94F50);
LABEL_13:
  v41 = v62;
  sub_213CE2C28(v28, v62, &qword_27C8EA2A0, &qword_213D94F50);
  v42 = v55;
  if (v27(v41, 1, v55) == 1)
  {
    sub_213CD8330(v28, &qword_27C8EA2A0, &qword_213D94F50);
    sub_213CD8330(v41, &qword_27C8EA2A0, &qword_213D94F50);
    return (v54)(v56, 1, 1, v42);
  }

  else
  {
    v62 = v19 + 56;
    v43 = v63;
    sub_213D59BE0(v41, v63, type metadata accessor for _MapStylePickerAttribution);
    v44 = v61;
    v45 = *(v61 + 16);
    v57 = v28;
    v46 = v60;
    v47 = v64;
    v45(v60, v29, v64);
    v48 = v58;
    sub_213D59C48(v43, v58, type metadata accessor for _MapStylePickerAttribution);
    v49 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v50 = (v59 + *(v19 + 80) + v49) & ~*(v19 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = *(v47 + 16);
    (*(v44 + 32))(v51 + v49, v46, v47);
    sub_213D59BE0(v48, v51 + v50, type metadata accessor for _MapStylePickerAttribution);
    sub_213D905AC();

    sub_213CD8330(v57, &qword_27C8EA2A0, &qword_213D94F50);
    v52 = v56;
    sub_213D59BE0(v63, v56, type metadata accessor for _MapStylePickerAttribution);
    return (v54)(v52, 0, 1, v42);
  }
}

uint64_t sub_213D5789C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5C8, &qword_213D95620);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v75 - v9;
  v11 = sub_213D9028C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v85 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v88 = &v75 - v16;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v75 - v19;
  v21 = *(v3 + *(a2 + 56));
  v22 = (*(*(a2 + 24) + 24))(*(a2 + 16), v18);
  sub_213D57FDC(v22);

  v23 = sub_213D9182C();

  v24 = [a1 mapAttributionWithStringAttributes:v23 underlineText:0 linkAttribution:0];

  if (!v24)
  {
    goto LABEL_18;
  }

  v25 = [v24 string];
  if (!v25)
  {

LABEL_18:
    v70 = type metadata accessor for _MapStylePickerAttribution(0);
    v71 = *(*(v70 - 8) + 56);

    return v71(a3, 1, 1, v70);
  }

  v26 = v25;
  v84 = v20;
  v77 = v24;
  v78 = v10;
  v87 = v11;
  v79 = a3;
  v27 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v76 = v26;
  v82 = [v27 initWithAttributedString_];
  v28 = [v82 string];
  v29 = sub_213D9193C();
  v31 = v30;

  v32 = (v12 + 8);
  v33 = v29;
  v34 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v34 = v29 & 0xFFFFFFFFFFFFLL;
  }

  v83 = 4 * v34;
  v35 = 7;
  if (((v31 >> 60) & ((v29 & 0x800000000000000) == 0)) != 0)
  {
    v35 = 11;
  }

  v80 = v35 | (v34 << 16);
  v81 = v29;
  v36 = 15;
  do
  {
    v37 = v36;
    v89 = v33;
    v90 = v31;

    v38 = v88;
    sub_213D9026C();
    v39 = v32;
    v40 = v85;
    sub_213D9027C();
    v41 = v84;
    sub_213D9025C();
    v42 = *v39;
    v43 = v87;
    (*v39)(v40, v87);
    result = v42(v38, v43);
    if (v83 < v37 >> 14)
    {
      __break(1u);
      return result;
    }

    v45 = v37 >> 14;
    sub_213CEFA54();
    v46 = v43;
    v86 = v37;
    v47 = sub_213D91C9C();
    v48 = v41;
    v49 = v47;
    v36 = v50;
    v52 = v51;
    v53 = v46;
    v32 = v39;
    v54 = v42;
    v42(v48, v53);

    v33 = v81;
  }

  while ((v52 & 1) == 0 && v49 >> 14 == v45);
  v55 = v88;
  while (1)
  {
    v89 = v33;
    v90 = v31;

    sub_213D9027C();
    v56 = sub_213D91C9C();
    v58 = v57;
    v54(v55, v87);

    if ((v58 & 1) != 0 || v56 >> 14 != v45)
    {
      break;
    }

    v59 = sub_213D9198C();
    v60 = sub_213D9198C();

    v61 = v82;
    [v82 deleteCharactersInRange_];
    v62 = [v61 string];
    v33 = sub_213D9193C();
    v31 = v63;
  }

  v64 = v77;
  v65 = [v77 url];
  if (v65)
  {
    v66 = v78;
    v67 = v65;
    sub_213D902DC();

    v68 = 0;
  }

  else
  {
    v68 = 1;
    v66 = v78;
  }

  v69 = v79;

  v72 = v82;
  v73 = sub_213D902EC();
  (*(*(v73 - 8) + 56))(v66, v68, 1, v73);
  *v69 = v72;
  v74 = type metadata accessor for _MapStylePickerAttribution(0);
  sub_213CED608(v66, v69 + *(v74 + 20), &qword_27C8EA5C8, &qword_213D95620);
  return (*(*(v74 - 8) + 56))(v69, 0, 1, v74);
}

uint64_t sub_213D57ED4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A0, &qword_213D94F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  sub_213D59C48(a2, &v10 - v5, type metadata accessor for _MapStylePickerAttribution);
  v7 = type metadata accessor for _MapStylePickerAttribution(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = type metadata accessor for _MapStylePicker();
  return sub_213D570AC(v6, v8);
}

uint64_t sub_213D57FDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC0D0, &qword_213D99AA8);
    v2 = sub_213D91EEC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_213D1F124(*(a1 + 56) + 32 * v13, v35 + 8);
    *&v35[0] = v14;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v34 = v36;
    *&v32[0] = v14;
    type metadata accessor for Key(0);
    v15 = v14;
    swift_dynamicCast();
    sub_213CEB34C((v33 + 8), v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_213CEB34C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_213CEB34C(v31, v32);
    v16 = *(v2 + 40);
    result = sub_213D91D1C();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_213CEB34C(v32, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_213D582A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 120);
  v4 = *(v1 + 152);
  v29[8] = *(v1 + 136);
  v29[9] = v4;
  v30 = *(v1 + 168);
  v5 = *(v1 + 56);
  v6 = *(v1 + 88);
  v29[4] = *(v1 + 72);
  v29[5] = v6;
  v29[6] = *(v1 + 104);
  v29[7] = v3;
  v7 = *(v1 + 24);
  v29[0] = *(v1 + 8);
  v29[1] = v7;
  v29[2] = *(v1 + 40);
  v29[3] = v5;
  v8 = *(v1 + 120);
  v9 = *(v1 + 152);
  v39 = *(v1 + 136);
  v40 = v9;
  v41 = *(v1 + 168);
  v10 = *(v1 + 56);
  v11 = *(v1 + 88);
  v35 = *(v1 + 72);
  v36 = v11;
  v37 = *(v1 + 104);
  v38 = v8;
  v12 = *(v1 + 24);
  v31 = *(v1 + 8);
  v32 = v12;
  v33 = *(v1 + 40);
  v34 = v10;
  if (get_enum_tag_for_layout_string_7SwiftUI7BindingVySbGSg_0(&v31) == 1)
  {
    v13 = swift_allocObject();
    v14 = sub_213D56F94();
    swift_unknownObjectWeakInit();

    sub_213D91AFC();

    v15 = sub_213D91AEC();
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v13;

    v18 = swift_allocObject();
    v19 = sub_213D56F94();
    swift_unknownObjectWeakInit();

    v20 = sub_213D91AEC();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v17;
    v21[4] = v18;

    sub_213D9161C();
  }

  else
  {
    v22 = v40;
    *(a1 + 128) = v39;
    *(a1 + 144) = v22;
    *(a1 + 160) = v41;
    v23 = v36;
    *(a1 + 64) = v35;
    *(a1 + 80) = v23;
    v24 = v38;
    *(a1 + 96) = v37;
    *(a1 + 112) = v24;
    v25 = v32;
    *a1 = v31;
    *(a1 + 16) = v25;
    v26 = v34;
    *(a1 + 32) = v33;
    *(a1 + 48) = v26;
  }

  return sub_213CE2C28(v29, v28, &qword_27C8EC090, &qword_213D99648);
}

double sub_213D58518@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return static MapStyle.standard.getter(a1);
  }

  v3 = Strong;
  swift_getKeyPath();
  sub_213D59B88();
  sub_213D9038C();

  v4 = *&v3[OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver__configuration];
  v5 = v4;

  if (!v4)
  {
    return static MapStyle.standard.getter(a1);
  }

  sub_213D7A454(v5, a1);
  return result;
}

void sub_213D585E0(__int128 *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      v12 = a1[6];
      v13 = a1[7];
      v14 = a1[8];
      LOWORD(v15) = *(a1 + 72);
      v8 = a1[2];
      v9 = a1[3];
      v10 = a1[4];
      v11 = a1[5];
      v6 = *a1;
      v7 = a1[1];
      isa = MapStyle.configuration()().super.isa;
      [v4 setPreferredConfiguration_];
    }
  }
}

uint64_t _MapStylePicker.body.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A0, &qword_213D94F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22[-v5];
  v7 = *(a1 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v22[-v14];
  v16 = *(v1 + *(a1 + 56));
  v17 = *v1;

  sub_213D582A4(v22);
  sub_213D57268(a1, v6);
  v18 = *(a1 + 24);
  (*(v18 + 16))(v17, v22, v6, v7, v18);
  v19 = *(v18 + 8);
  sub_213D4CEAC(v12, v7, v19);
  v20 = *(v8 + 8);
  v20(v12, v7);
  sub_213D4CEAC(v15, v7, v19);
  return (v20)(v15, v7);
}

void *sub_213D58890()
{
  swift_getKeyPath();
  sub_213D59B88();
  sub_213D9038C();

  v1 = *(v0 + OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver__configuration);
  v2 = v1;
  return v1;
}

id sub_213D58910@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213D59B88();
  sub_213D9038C();

  v4 = *(v3 + OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver__configuration);
  *a2 = v4;

  return v4;
}

void sub_213D589A0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver__configuration;
  v5 = *(v1 + OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver__configuration);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213D59B88();
    sub_213D9037C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_213CE2B34(0, &unk_27C8E9518, 0x277CD4E70);
  v6 = v5;
  v7 = a1;
  v8 = sub_213D91C5C();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_213D58B08(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_213D589A0([v1 configuration]);
  }
}

id sub_213D58BA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CocoaMapConfigurationObserver(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s15_MapKit_SwiftUI0A11StylePickerV18trafficToggleState5style6option0cD00I0VySbGAA0aE0V_AC6OptionVSgtFZ_0(__int128 *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C0, &qword_213D95000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for MapStylePicker.Option(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213CE2C28(a2, v7, &qword_27C8EA2C0, &qword_213D95000);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_213CD8330(v7, &qword_27C8EA2C0, &qword_213D95000);
    return 0;
  }

  else
  {
    sub_213D59BE0(v7, v12, type metadata accessor for MapStylePicker.Option);
    if (v12[*(v8 + 28)] != 1)
    {
      goto LABEL_6;
    }

    v14 = a1[7];
    v32 = a1[6];
    v33 = v14;
    v34 = a1[8];
    v35 = *(a1 + 72);
    v15 = a1[3];
    v28 = a1[2];
    v29 = v15;
    v16 = a1[5];
    v30 = a1[4];
    v31 = v16;
    v17 = a1[1];
    v26 = *a1;
    v27 = v17;
    v18 = sub_213D5404C();
    if (v12[*(v8 + 32)] != 1 || v18)
    {
      v19 = a1[7];
      v32 = a1[6];
      v33 = v19;
      v34 = a1[8];
      v35 = *(a1 + 72);
      v20 = a1[3];
      v28 = a1[2];
      v29 = v20;
      v21 = a1[5];
      v30 = a1[4];
      v31 = v21;
      v22 = a1[1];
      v26 = *a1;
      v27 = v22;
      v23.super.isa = MapStyle.configuration()().super.isa;
      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (v24 || (objc_opt_self(), (v24 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), !swift_dynamicCastObjCClass()) && (objc_opt_self(), (v24 = swift_dynamicCastObjCClass()) != 0))
      {
        v13 = [v24 showsTraffic];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
LABEL_6:
      v13 = 0;
    }

    sub_213D52C44(v12);
  }

  return v13;
}

double sub_213D58F40(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_213D58FA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5C8, &qword_213D95620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_213D59018()
{
  result = qword_27C8EC098;
  if (!qword_27C8EC098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EC098);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15_MapKit_SwiftUI0A5StyleV8StandardVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_15_MapKit_SwiftUI0A5StyleV6HybridVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVy08_MapKit_aB00D5StyleVGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_213D59170(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_213D591B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_213D59260()
{
  sub_213D902AC();
  if (v0 <= 0x3F)
  {
    sub_213D5981C(319, &qword_27C8E9560, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for MapStylePicker.Option.Thumbnail(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MapStylePicker.Option.Thumbnail(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_213D5949C()
{
  sub_213CE2B34(319, &qword_27C8E9510, 0x277CCA898);
  if (v0 <= 0x3F)
  {
    sub_213D597B8(319, &unk_27C8E99B0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213D59588(uint64_t a1)
{
  sub_213D597B8(319, &qword_27C8E9580, type metadata accessor for MapStylePicker.Option, MEMORY[0x277D83940]);
  if (v2 <= 0x3F)
  {
    sub_213D5986C(319, &qword_27C8E95B0, &qword_27C8EA2D0, &qword_213D998B0, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      sub_213D5981C(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
      if (v4 <= 0x3F)
      {
        sub_213D5981C(319, &qword_27C8E9760, &type metadata for MapScopeRegistry, MEMORY[0x277CDF468]);
        if (v5 <= 0x3F)
        {
          sub_213D5986C(319, &qword_27C8E95F0, &qword_27C8EC0A8, qword_213D998B8, MEMORY[0x277CE10B8]);
          if (v6 <= 0x3F)
          {
            sub_213D5986C(319, &qword_27C8E95F8, &qword_27C8EA2A0, &qword_213D94F50, MEMORY[0x277CE10B8]);
            if (v7 <= 0x3F)
            {
              v8 = *(a1 + 16);
              swift_getMetatypeMetadata();
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_213D597B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_213D5981C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_213D5986C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_213D598F8()
{
  result = sub_213D903AC();
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

unint64_t sub_213D599A0()
{
  result = qword_27C8E9928[0];
  if (!qword_27C8E9928[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EC0C8, &qword_213D99920);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C8E9928);
  }

  return result;
}

__n128 __swift_memcpy146_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_213D59A44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 146))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_213D59A94(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 144) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 146) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 2 * -a2;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 130) = 0u;
      return result;
    }

    *(a1 + 146) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_213D59B48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver__configuration);
  *(v1 + OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver__configuration) = v2;
  v4 = v2;
}

unint64_t sub_213D59B88()
{
  result = qword_27C8E9900;
  if (!qword_27C8E9900)
  {
    type metadata accessor for CocoaMapConfigurationObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9900);
  }

  return result;
}

uint64_t sub_213D59BE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213D59C48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213D59CB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for _MapStylePicker() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for _MapStylePickerAttribution(0) - 8);
  v7 = v0 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_213D57ED4(v0 + v4, v7);
}

double sub_213D59D98@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_213D58518(a1);
}

uint64_t objectdestroy_58Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

void sub_213D59DE4(__int128 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_213D585E0(a1);
}

uint64_t sub_213D59E18(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_213D59E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_213D59EAC(uint64_t result)
{
  v2 = (v1 + OBJC_IVAR____TtCV15_MapKit_SwiftUI18_LookAroundPreview11Coordinator_sceneStorage);
  if ((*(v1 + OBJC_IVAR____TtCV15_MapKit_SwiftUI18_LookAroundPreview11Coordinator_sceneStorage + 8) & 0x8000000000000000) != 0)
  {
    v3 = *v2;
    v4 = result;
    v5 = v2[2];

    [v4 scene];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC160, &qword_213D99D30);
    sub_213D915FC();
  }

  return result;
}

id sub_213D5A014()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _LookAroundPreview.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_213D5A090(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_213D5A0EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = 0;
    }
  }

  return result;
}

uint64_t sub_213D5A168(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_213D5A1C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void sub_213D5A238(void *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  v7 = *(v1 + 25);
  v8 = *(v1 + 26);
  v10 = v1[4];
  v9 = v1[5];
  v23 = v1[6];
  if (v3 < 0)
  {
    v26 = *v1;
    v27 = v3 & 0x7FFFFFFFFFFFFFFFLL;
    v28 = v5;

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC160, &qword_213D99D30);
    MEMORY[0x21604E7B0](&v25, v12);
    v11 = v25;
  }

  else
  {

    sub_213D51AE4(v4, v3, v5);
    v11 = v4;
  }

  [a1 setScene_];

  [a1 _setFullScreenCover_];
  [a1 setNavigationEnabled_];
  [a1 setShowsRoadLabels_];
  if (v10)
  {
    v13 = objc_allocWithZone(MEMORY[0x277CD4F10]);
    type metadata accessor for MKPointOfInterestCategory(0);
    v14 = sub_213D919EC();
    v15 = [v13 initIncludingCategories_];
  }

  else if (v9)
  {
    v16 = objc_allocWithZone(MEMORY[0x277CD4F10]);
    type metadata accessor for MKPointOfInterestCategory(0);
    v17 = sub_213D919EC();
    v15 = [v16 initExcludingCategories_];
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v15 = 0;
  }

  [a1 setPointOfInterestFilter_];

  [a1 setBadgePosition_];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EC168, &qword_213D99D38);
  sub_213D9116C();
  v18 = v26;
  v19 = &v26[OBJC_IVAR____TtCV15_MapKit_SwiftUI18_LookAroundPreview11Coordinator_sceneStorage];
  v20 = *&v26[OBJC_IVAR____TtCV15_MapKit_SwiftUI18_LookAroundPreview11Coordinator_sceneStorage];
  v21 = *&v26[OBJC_IVAR____TtCV15_MapKit_SwiftUI18_LookAroundPreview11Coordinator_sceneStorage + 8];
  v22 = *&v26[OBJC_IVAR____TtCV15_MapKit_SwiftUI18_LookAroundPreview11Coordinator_sceneStorage + 16];
  *v19 = v4;
  *(v19 + 1) = v3;
  *(v19 + 2) = v5;
  sub_213D51AE4(v4, v3, v5);
  sub_213D5A76C(v20, v21, v22);
}

id sub_213D5A4B8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD4E50]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EC168, &qword_213D99D38);
  sub_213D9116C();
  [v0 setDelegate_];

  sub_213D5A238(v0);
  return v0;
}

id sub_213D5A560@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = type metadata accessor for _LookAroundPreview.Coordinator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV15_MapKit_SwiftUI18_LookAroundPreview11Coordinator_sceneStorage];
  *v8 = v3;
  *(v8 + 1) = v4;
  *(v8 + 2) = v5;
  sub_213D51AE4(v3, v4, v5);
  v10.receiver = v7;
  v10.super_class = v6;
  result = objc_msgSendSuper2(&v10, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_213D5A628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D5A718();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_213D5A68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D5A718();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_213D5A6F0()
{
  sub_213D5A718();
  sub_213D9114C();
  __break(1u);
}

unint64_t sub_213D5A718()
{
  result = qword_27C8EC158;
  if (!qword_27C8EC158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EC158);
  }

  return result;
}

void sub_213D5A76C(void *a1, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {

    a1 = a3;
  }
}

uint64_t MapReader.init(content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t MapReader.body.getter(uint64_t a1)
{
  v11 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF08, &unk_213D99D40);
  v4 = swift_allocObject();
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 32) = v11;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBF28, &qword_213D98B78);
  sub_213D5AD90(&qword_27C8EBF30, &qword_27C8EBF28, &qword_213D98B78);
  v5 = sub_213D90EDC();
  v6 = sub_213D5AD90(&qword_27C8EBF18, &qword_27C8EBF08, &unk_213D99D40);
  WitnessTable = swift_getWitnessTable();
  sub_213D9073C();

  v12[0] = v17;
  v12[1] = v18;
  v13 = v3;
  v14 = v5;
  v15 = v6;
  v16 = WitnessTable;
  v8 = sub_213D90EDC();
  v9 = swift_getWitnessTable();
  sub_213D4CEAC(v12, v8, v9);

  v17 = v13;
  v18 = v14;
  sub_213D4CEAC(&v17, v8, v9);
}

uint64_t sub_213D5A9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18[0] = a2;
  v18[1] = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC308, &qword_213D99F70);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF28, &qword_213D98B78);
  (*(v11 + 16))(v14, a1, v10);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a4;
  *(v16 + 3) = a5;
  *(v16 + 4) = v18[0];
  *(v16 + 5) = a3;
  (*(v11 + 32))(&v16[v15], v14, v10);
  sub_213D5AD90(&qword_27C8EBF30, &qword_27C8EBF28, &qword_213D98B78);

  sub_213D9073C();
}

uint64_t sub_213D5AB84@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[2] = a3;
  v22 = a2;
  v21[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EC310, &qword_213D99F78);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (v21 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC308, &qword_213D99F70);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (v21 - v16);
  result = (*(v13 + 16))(v21 - v16, a4, v12, v15);
  if (v14 == 8)
  {
    v19 = *v17;
    (*(v13 + 8))(v17, v12);
    result = (*(v8 + 16))(v11, a1, v7);
    if (v9 == 8)
    {
      v20 = *v11;
      (*(v8 + 8))(v11, v7);
      v23[0] = v19;
      v23[1] = v20;
      return v22(v23);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_213D5AD90(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_213D5ADE8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF38, &qword_213D98B80);
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    goto LABEL_4;
  }

  sub_213CE2C28(WeakValue, v5, &qword_27C8EBF38, &qword_213D98B80);
  sub_213D5CC2C(v5, v4);
  if (v4[8])
  {
    sub_213CD8330(v4, &qword_27C8EBF38, &qword_213D98B80);
LABEL_4:
    swift_unknownObjectWeakInit();
    return swift_unknownObjectWeakAssign();
  }

  return sub_213CE2A78(v4, a1);
}

BOOL sub_213D5AEA4(double a1, double a2)
{
  v2 = *&a1 & 0xFFFFFFFFFFFFFLL;
  result = 0;
  if ((*&a1 & 0x7FF0000000000000) != 0x7FF0000000000000 || v2 == 0)
  {
    if (v2)
    {
      v5 = 0;
    }

    else
    {
      v5 = (*&a1 & 0x7FF0000000000000) == 0x7FF0000000000000;
    }

    v6 = v5;
    if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v6 & 1) == 0)
    {
      v9 = sub_213D9024C();
      return sub_213D9024C() != a2 || v9 != a1;
    }
  }

  return result;
}

uint64_t sub_213D5AF3C()
{
  v1 = sub_213D90E8C();
  v45 = *(v1 - 8);
  v2 = *(v45 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF10, &qword_213D98B70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF00, &unk_213D98B60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - v11;
  v13 = type metadata accessor for MapSizingInformation();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v0;
  v18 = v0[1];
  sub_213D5ADE8(v46);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_213CE2AD4(v46);
  if (!Strong)
  {
    goto LABEL_8;
  }

  v44 = v1;
  v21 = Strong;
  v22 = [v21 superview];
  if (!v22)
  {

LABEL_8:
    *&result = 0.0;
    return result;
  }

  v23 = v22;
  [v21 frame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  [v23 convertRect:0 toView:{v25, v27, v29, v31}];
  v33 = v32;

  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    sub_213CE2C28(WeakValue, v12, &qword_27C8EBF00, &unk_213D98B60);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_213D5B4BC(v12, v17);
      goto LABEL_10;
    }

    sub_213CD8330(v12, &qword_27C8EBF00, &unk_213D98B60);
  }

  v35 = sub_213D906CC();
  v36 = *(*(v35 - 8) + 56);
  v36(v17, 1, 1, v35);
  sub_213CD8330(v17, &qword_27C8EBF10, &qword_213D98B70);
  v36(v17, 1, 1, v35);
  *&v17[*(v13 + 20)] = 0x3FF0000000000000;
LABEL_10:
  sub_213CE2C28(v17, v8, &qword_27C8EBF10, &qword_213D98B70);
  v38 = sub_213D906CC();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v8, 1, v38) == 1)
  {

    sub_213D5B460(v17);
    sub_213CD8330(v8, &qword_27C8EBF10, &qword_213D98B70);
    v40 = 0.0;
  }

  else
  {
    sub_213D90EFC();
    v41 = v44;
    sub_213D906BC();
    v40 = v42;

    (*(v45 + 8))(v4, v41);
    sub_213D5B460(v17);
    (*(v39 + 8))(v8, v38);
  }

  *&result = v40 - v33;
  return result;
}

uint64_t type metadata accessor for MapSizingInformation()
{
  result = qword_27C8EC270;
  if (!qword_27C8EC270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213D5B460(uint64_t a1)
{
  v2 = type metadata accessor for MapSizingInformation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213D5B4BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapSizingInformation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213D5B538(uint64_t (*a1)(uint64_t, double, double, double, double, double, double), double a2, double a3, double a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF10, &qword_213D98B70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF00, &unk_213D98B60);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - v17;
  v19 = type metadata accessor for MapSizingInformation();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v5;
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    goto LABEL_4;
  }

  sub_213CE2C28(WeakValue, v18, &qword_27C8EBF00, &unk_213D98B60);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_213CD8330(v18, &qword_27C8EBF00, &unk_213D98B60);
LABEL_4:
    v26 = sub_213D906CC();
    v27 = *(*(v26 - 8) + 56);
    v27(v23, 1, 1, v26);
    sub_213CD8330(v23, &qword_27C8EBF10, &qword_213D98B70);
    v27(v23, 1, 1, v26);
    *&v23[*(v19 + 20)] = 0x3FF0000000000000;
    goto LABEL_6;
  }

  sub_213D5B4BC(v18, v23);
LABEL_6:
  sub_213CE2C28(v23, v14, &qword_27C8EBF10, &qword_213D98B70);
  v28 = sub_213D906CC();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v14, 1, v28) == 1)
  {
    sub_213D5B460(v23);
    v30 = sub_213CD8330(v14, &qword_27C8EBF10, &qword_213D98B70);
    v31 = 0.0;
    v32 = 0.0;
  }

  else
  {
    sub_213D9069C();
    v31 = v33;
    v32 = v34;
    sub_213D5B460(v23);
    (*(v29 + 8))(v14, v28);
  }

  return a1(v30, a2, a3, a4, a5, v31, v32);
}

void __swiftcall MapProxy.camera(framing:allowPitch:)(_MapKit_SwiftUI::MapCamera *__return_ptr retstr, MKMapItem framing, Swift::Bool allowPitch)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF10, &qword_213D98B70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF00, &unk_213D98B60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  v15 = type metadata accessor for MapSizingInformation();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v3;
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    goto LABEL_4;
  }

  sub_213CE2C28(WeakValue, v14, &qword_27C8EBF00, &unk_213D98B60);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_213CD8330(v14, &qword_27C8EBF00, &unk_213D98B60);
LABEL_4:
    v22 = sub_213D906CC();
    v23 = *(*(v22 - 8) + 56);
    v23(v19, 1, 1, v22);
    sub_213CD8330(v19, &qword_27C8EBF10, &qword_213D98B70);
    v23(v19, 1, 1, v22);
    *&v19[*(v15 + 20)] = 0x3FF0000000000000;
    goto LABEL_6;
  }

  sub_213D5B4BC(v14, v19);
LABEL_6:
  sub_213CE2C28(v19, v10, &qword_27C8EBF10, &qword_213D98B70);
  v24 = sub_213D906CC();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v10, 1, v24) == 1)
  {
    sub_213D5B460(v19);
    sub_213CD8330(v10, &qword_27C8EBF10, &qword_213D98B70);
    v26 = 0.0;
    v27 = 0.0;
  }

  else
  {
    sub_213D9069C();
    v26 = v28;
    v27 = v29;
    sub_213D5B460(v19);
    (*(v25 + 8))(v10, v24);
  }

  v30 = [objc_opt_self() cameraLookingAtMapItem:framing.super.isa forViewSize:allowPitch allowPitch:{v26, v27}];
  [v30 centerCoordinate];
  v32 = v31;
  v34 = v33;
  [v30 centerCoordinateDistance];
  v36 = v35;
  [v30 heading];
  v38 = v37;
  [v30 pitch];
  v40 = v39;

  retstr->centerCoordinate.latitude = v32;
  retstr->centerCoordinate.longitude = v34;
  retstr->distance = v36;
  retstr->heading = v38;
  retstr->pitch = v40;
}

uint64_t MapProxy.convert<A>(_:from:)(uint64_t a1, double a2, double a3)
{
  v7 = sub_213D9083C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = *(v3 + 2);
  v13 = *(v3 + 3);
  sub_213D5ADE8(&v27);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_213CE2AD4(&v27);
  if (!Strong)
  {
    return 0;
  }

  v27 = v12;
  v28 = v14;
  v29 = v13;
  v16 = sub_213D5BEA4(a2, a3, a1, sub_213D5BE9C, 0);
  v18 = v17;
  sub_213D90EEC();
  v19 = sub_213D9081C();
  (*(v8 + 8))(v11, v7);
  v20 = 0;
  if (v19)
  {
    v20 = Strong;
  }

  [Strong convertPoint:v20 toCoordinateFromView:{v16, v18}];
  v22 = v21;
  v24 = v23;

  v30.latitude = v22;
  v30.longitude = v24;
  v25 = CLLocationCoordinate2DIsValid(v30);

  if (v25)
  {
    return *&v22;
  }

  else
  {
    return 0;
  }
}

double sub_213D5BEA4(double a1, double a2, uint64_t a3, double (*a4)(double, double), uint64_t a5)
{
  v44 = a5;
  v45 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF00, &unk_213D98B60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v42 = &v40 - v10;
  v43 = type metadata accessor for MapSizingInformation();
  v41 = *(v43 - 8);
  v11 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_213D9083C();
  v14 = *(v47 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v47);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v5;
  *&v19 = *(v5 + 1);
  v46 = v19;
  v20 = v5[3];
  sub_213D90EEC();
  if ((sub_213D9082C() & 1) == 0)
  {
    v48 = v18;
    v49 = v46;
    v50 = v20;
    v21 = sub_213D5AF3C();
    if ((v23 & 1) == 0)
    {
      v24 = v22;
      v25 = v45;
      a1 = v45(a1, *&v21);
      a2 = v25(a2, v24);
    }
  }

  if ((sub_213D9082C() & 1) == 0 && (sub_213D9081C() & 1) == 0)
  {
    WeakValue = AGGraphGetWeakValue();
    v27 = v43;
    if (WeakValue)
    {
      v28 = v42;
      sub_213CE2C28(WeakValue, v42, &qword_27C8EBF00, &unk_213D98B60);
      if ((*(v41 + 48))(v28, 1, v27) != 1)
      {
        sub_213D5B4BC(v28, v13);
LABEL_11:
        *&v31 = COERCE_DOUBLE(sub_213D5C6F8());
        v33 = v32;
        v35 = v34;
        v36 = sub_213D5B460(v13);
        if ((v35 & 1) == 0)
        {
          v37 = *&v31;
          v38 = v45;
          a1 = (v45)(v36, a1, v37);
          v38(a2, v33);
        }

        goto LABEL_13;
      }

      sub_213CD8330(v28, &qword_27C8EBF00, &unk_213D98B60);
    }

    v29 = sub_213D906CC();
    v30 = *(*(v29 - 8) + 56);
    v30(v13, 1, 1, v29);
    sub_213CD8330(v13, &qword_27C8EBF10, &qword_213D98B70);
    v30(v13, 1, 1, v29);
    *&v13[*(v27 + 20)] = 0x3FF0000000000000;
    goto LABEL_11;
  }

LABEL_13:
  (*(v14 + 8))(v17, v47);
  return a1;
}

uint64_t MapProxy.convert<A>(_:to:)(uint64_t a1, double a2, double a3)
{
  v7 = sub_213D9083C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = *(v3 + 2);
  v14 = *(v3 + 3);
  sub_213D5ADE8(&v24);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_213CE2AD4(&v24);
  if (Strong)
  {
    sub_213D90EEC();
    v16 = sub_213D9081C();
    (*(v8 + 8))(v11, v7);
    if (v16)
    {
      v17 = Strong;
    }

    else
    {
      v17 = 0;
    }

    [Strong convertCoordinate:v17 toPointToView:{a2, a3}];
    v19 = v18;
    v21 = v20;

    if (sub_213D5AEA4(v19, v21))
    {
      v24 = v12;
      v25 = v13;
      v26 = v14;
      v22 = sub_213D5BEA4(v19, v21, a1, sub_213D5C474, 0);

      return *&v22;
    }
  }

  return 0;
}

uint64_t sub_213D5C4C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_213D5C530()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_213D5C5AC()
{
  sub_213D5C620();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_213D5C620()
{
  if (!qword_27C8EC280[0])
  {
    sub_213D906CC();
    v0 = sub_213D91C7C();
    if (!v1)
    {
      atomic_store(v0, qword_27C8EC280);
    }
  }
}

uint64_t sub_213D5C6F8()
{
  v1 = v0;
  v2 = sub_213D90E8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF10, &qword_213D98B70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  if (sub_213D9082C())
  {
    goto LABEL_7;
  }

  v25 = v3;
  sub_213CE2C28(v0, v13, &qword_27C8EBF10, &qword_213D98B70);
  v14 = sub_213D906CC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v13, 1, v14) == 1)
  {
    v17 = v13;
LABEL_6:
    sub_213CD8330(v17, &qword_27C8EBF10, &qword_213D98B70);
LABEL_7:
    *&result = 0.0;
    return result;
  }

  sub_213D906AC();
  v19 = v18;
  v20 = *(v15 + 8);
  v20(v13, v14);
  sub_213CE2C28(v1, v10, &qword_27C8EBF10, &qword_213D98B70);
  if (v16(v10, 1, v14) == 1)
  {
    v17 = v10;
    goto LABEL_6;
  }

  sub_213D90EFC();
  sub_213D906BC();
  v23 = v22;
  (*(v25 + 8))(v6, v2);
  v20(v10, v14);
  *&result = v23 - v19;
  return result;
}

uint64_t sub_213D5CA10(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v19[1] = a3;
  v20 = a2;
  v6 = sub_213D91C7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v19 - v13;
  v15 = *(v7 + 32);
  v21 = a1;
  v15(v10, a1, v6, v12);
  v16 = *(a4 - 8);
  v17 = *(v16 + 48);
  if (v17(v10, 1, a4) == 1)
  {
    v20();
    if (v17(v10, 1, a4) != 1)
    {
      (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    (*(v16 + 32))(v14, v10, a4);
    (*(v16 + 56))(v14, 0, 1, a4);
  }

  return (v15)(v21, v14, v6);
}

uint64_t sub_213D5CC2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF38, &qword_213D98B80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213D5CC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC308, &qword_213D99F70) - 8);
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_213D5AB84(a1, v8, v9, v10, a2);
}

uint64_t sub_213D5CD88(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_213D5CE30(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *a1;
  v5 = *(a1 + 8);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (*(a1 + 40))
  {
    if (*(a1 + 40) == 1)
    {
      [v2 visibleMapRect];
      if (v6 != v12 || v5 != v9 || v8 != v10 || v7 != v11)
      {
        if (qword_27C8E99D0 != -1)
        {
          swift_once();
        }

        v16 = sub_213D9046C();
        __swift_project_value_buffer(v16, qword_27C8F7330);
        v17 = sub_213D9044C();
        v18 = sub_213D91BBC();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v82 = v20;
          *v19 = 136380675;
          type metadata accessor for MKMapRect(0);
          v21 = sub_213D9194C();
          v23 = sub_213D63E10(v21, v22, &v82);

          *(v19 + 4) = v23;
          _os_log_impl(&dword_213CCA000, v17, v18, "model -> mapview %{private}s", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v20);
          MEMORY[0x21604FC60](v20, -1, -1);
          MEMORY[0x21604FC60](v19, -1, -1);
        }

        [v3 setVisibleMapRect:a2 & 1 animated:{v6, v5, v8, v7}];
        return;
      }

      if (qword_27C8E99D0 != -1)
      {
        swift_once();
      }

      v73 = sub_213D9046C();
      __swift_project_value_buffer(v73, qword_27C8F7330);
      oslog = sub_213D9044C();
      v54 = sub_213D91BBC();
      if (os_log_type_enabled(oslog, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v82 = v56;
        *v55 = 136380675;
        type metadata accessor for MKMapRect(0);
        goto LABEL_57;
      }

LABEL_60:
      v77 = oslog;
LABEL_61:

      return;
    }

    [v2 region];
    if (vabdd_f64(v6, v52) < 0.00000000999999994 && vabdd_f64(v5, v49) < 0.00000000999999994 && vabdd_f64(v8, v50) < 0.00000000999999994 && vabdd_f64(v7, v51) < 0.00000000999999994)
    {
      if (qword_27C8E99D0 != -1)
      {
        swift_once();
      }

      v53 = sub_213D9046C();
      __swift_project_value_buffer(v53, qword_27C8F7330);
      oslog = sub_213D9044C();
      v54 = sub_213D91BBC();
      if (os_log_type_enabled(oslog, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v82 = v56;
        *v55 = 136380675;
        type metadata accessor for MKCoordinateRegion(0);
LABEL_57:
        v74 = sub_213D9194C();
        v76 = sub_213D63E10(v74, v75, &v82);

        *(v55 + 4) = v76;
        _os_log_impl(&dword_213CCA000, oslog, v54, "model == mapview %{private}s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x21604FC60](v56, -1, -1);
        MEMORY[0x21604FC60](v55, -1, -1);
        v72 = oslog;
        goto LABEL_58;
      }

      goto LABEL_60;
    }

    if (qword_27C8E99D0 != -1)
    {
      swift_once();
    }

    v57 = sub_213D9046C();
    __swift_project_value_buffer(v57, qword_27C8F7330);
    v58 = sub_213D9044C();
    v59 = sub_213D91BBC();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v82 = v61;
      *v60 = 136380675;
      type metadata accessor for MKCoordinateRegion(0);
      v62 = sub_213D9194C();
      v64 = sub_213D63E10(v62, v63, &v82);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_213CCA000, v58, v59, "model -> mapview %{private}s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x21604FC60](v61, -1, -1);
      MEMORY[0x21604FC60](v60, -1, -1);
    }

    [v3 setRegion:a2 & 1 animated:{v6, v5, v8, v7}];
  }

  else
  {
    v79 = *(a1 + 32);
    v24 = [v2 camera];
    [v24 centerCoordinate];
    v80 = v5;
    v26 = v25;
    v28 = v27;
    [v24 centerCoordinateDistance];
    v30 = v29;
    [v24 heading];
    v32 = v31;
    [v24 pitch];
    v33 = v8;
    v35 = v34;

    if (v6 == v26 && v80 == v28 && v7 == v32 && v79 == v35 && v33 == v30)
    {
      if (qword_27C8E99D0 != -1)
      {
        swift_once();
      }

      v65 = sub_213D9046C();
      __swift_project_value_buffer(v65, qword_27C8F7330);
      log = sub_213D9044C();
      v66 = sub_213D91BBC();
      if (os_log_type_enabled(log, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v82 = v68;
        *v67 = 136380675;
        v69 = sub_213D9194C();
        v71 = sub_213D63E10(v69, v70, &v82);

        *(v67 + 4) = v71;
        _os_log_impl(&dword_213CCA000, log, v66, "model == mapview %{private}s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v68);
        MEMORY[0x21604FC60](v68, -1, -1);
        MEMORY[0x21604FC60](v67, -1, -1);
        v72 = log;
LABEL_58:

        return;
      }

      v77 = log;
      goto LABEL_61;
    }

    if (qword_27C8E99D0 != -1)
    {
      swift_once();
    }

    v40 = sub_213D9046C();
    __swift_project_value_buffer(v40, qword_27C8F7330);
    v41 = sub_213D9044C();
    v42 = sub_213D91BBC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v82 = v44;
      *v43 = 136380675;
      v45 = sub_213D9194C();
      v47 = sub_213D63E10(v45, v46, &v82);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_213CCA000, v41, v42, "model -> mapview %{private}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x21604FC60](v44, -1, -1);
      MEMORY[0x21604FC60](v43, -1, -1);
    }

    v48 = [objc_opt_self() cameraLookingAtCenterCoordinate:v6 fromDistance:v80 pitch:v33 heading:{v79, v7}];
    [v3 setCamera:v48 animated:a2 & 1];
  }
}

uint64_t sub_213D5D6E4(uint64_t a1)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1 + *(a1 + 68);
  v9 = *v8;
  if (*(v8 + 8) == 1)
  {
    v10 = v9 >> 8;
  }

  else
  {

    sub_213D91BDC();
    v11 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v9, 0);
    (*(v4 + 8))(v7, v3);
    LOBYTE(v9) = v13[14];
    LODWORD(v10) = v13[15];
  }

  return (v9 & 1) | (v10 << 8);
}

uint64_t sub_213D5D848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_213D90C0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAF8, &qword_213D985A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v17 - v12);
  sub_213CE2C28(v2 + *(a1 + 72), &v17 - v12, &unk_27C8EBAF8, &qword_213D985A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_213D64F50(v13, a2, type metadata accessor for MapControlsConfig);
  }

  v15 = *v13;
  sub_213D91BDC();
  v16 = sub_213D9119C();
  sub_213D9043C();

  sub_213D90BFC();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_213D5DA30(uint64_t a1)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1 + *(a1 + 76);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_213D91BDC();
    v10 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v9, 0);
    (*(v4 + 8))(v7, v3);
    return v12[15];
  }

  return v9;
}

uint64_t sub_213D5DB84@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a1[1];
  v31 = *a1;
  v7 = *(a1 + 4);
  v29 = *(a1 + 5);
  v32 = *a2;
  v33 = *(a1 + 6);
  v8 = *a4;
  v9 = *(a4 + 8);
  v28 = *(a4 + 16);
  v10 = type metadata accessor for _MapView();
  v11 = v10[11];
  v12 = type metadata accessor for _DefaultAnnotatedMapContent();
  v35 = v11;
  (*(*(v12 - 8) + 56))(a6 + v11, 1, 1, v12);
  v13 = v10[12];
  if (qword_27C8E99F8 != -1)
  {
    swift_once();
  }

  *(a6 + v13) = qword_27C8ED488;
  v14 = v10[13];
  v15 = (a6 + v10[14]);
  v15[1] = 0;
  v15[2] = 0;
  *v15 = 0;
  v16 = v10[15];
  *(a6 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC550, &qword_213D94A80);
  swift_storeEnumTagMultiPayload();
  v17 = v10[16];
  *(a6 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  swift_storeEnumTagMultiPayload();
  v18 = a6 + v10[17];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = v10[18];
  *(a6 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAF8, &qword_213D985A0);
  swift_storeEnumTagMultiPayload();
  v20 = a6 + v10[19];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  *a6 = v31;
  *(a6 + 16) = v30;
  *(a6 + 32) = v7;
  *(a6 + 40) = v29;
  *(a6 + 48) = v33;
  *(a6 + v13) = v32;
  *(a6 + v14) = a3 & 1;
  if (v9)
  {
    sub_213D91AFC();

    v21 = sub_213D91AEC();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    *(v22 + 16) = v21;
    *(v22 + 24) = v23;
    *(v22 + 32) = v8;
    *(v22 + 40) = v9;
    *(v22 + 48) = v28;

    v24 = sub_213D91AEC();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v23;
    *(v25 + 32) = v8;
    *(v25 + 40) = v9;
    *(v25 + 48) = v28;
    type metadata accessor for MKUserTrackingMode(0);
    sub_213D9161C();
    sub_213D65068(v8, v9);
    *v15 = v37;
    v15[2] = v38;
  }

  v26 = sub_213D91C7C();
  return (*(*(v26 - 8) + 40))(a6 + v35, a5, v26);
}

void *sub_213D5DF08@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char a3@<W4>, void *a4@<X8>)
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC548, &qword_213D9A230);
  result = MEMORY[0x21604E7B0](&v7, v5);
  *a4 = v7;
  return result;
}

uint64_t sub_213D5DF60(void *a1)
{
  if (*a1 != 1)
  {
    v1 = 2 * (*a1 == 2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC548, &qword_213D9A230);
  sub_213D915FC();
}

void *sub_213D5DFF0(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v58 = *(a1 + 32);
  v59 = v4;
  v6 = type metadata accessor for _DefaultAnnotatedMapContent();
  v7 = sub_213D91C7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v56 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v61 = v5;
  v53 = sub_213D91C7C();
  v14 = *(v53 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v53);
  v18 = &v50 - v17;
  v60 = a1;
  v19 = *(v8 + 16);
  v51 = *(a1 + 44);
  v52 = v19;
  v54 = v7;
  (v19)(v13, v2 + v51, v7, v16);
  v20 = *(v6 - 8);
  v21 = *(v20 + 48);
  v22 = v21(v13, 1, v6);
  v57 = v14;
  v55 = v18;
  v50 = v8;
  if (v22 == 1)
  {
    v23 = v54;
    (*(v8 + 8))(v13, v54);
    (*(*(v61 - 8) + 56))(v18, 1, 1);
    v24 = v53;
  }

  else
  {
    v24 = v53;
    (*(v14 + 16))(v18, &v13[*(v6 + 56)], v53);
    (*(v20 + 8))(v13, v6);
    v23 = v54;
  }

  v25 = v20;
  v26 = v56;
  v52(v56, v2 + v51, v23);
  if (v21(v26, 1, v6) == 1)
  {
    v27 = 0;
    v28 = 0;
    v29 = v26;
    v30 = v57;
    v31 = v55;
    v32 = v50;
  }

  else
  {
    v33 = &v26[*(v6 + 60)];
    v27 = *v33;
    v28 = v33[1];
    sub_213CD4E28(*v33);
    v32 = v25;
    v23 = v6;
    v29 = v26;
    v30 = v57;
    v31 = v55;
  }

  (*(v32 + 8))(v29, v23);
  type metadata accessor for MapViewCoordinator();
  v34 = sub_213D64678(v31, v27, v28);
  sub_213CCE520(v27);
  (*(v30 + 8))(v31, v24);
  v35 = (v2 + *(v60 + 56));
  v36 = *v35;
  v37 = v35[1];
  v38 = v35[2];
  sub_213D646D0(*v35, v37);
  v39 = (v34 + *((*MEMORY[0x277D85000] & *v34) + 0x70));
  v40 = *v39;
  v41 = v39[1];
  v42 = v39[2];
  *v39 = v36;
  v39[1] = v37;
  v39[2] = v38;
  sub_213D65068(v40, v41);
  v43 = v2[1];
  v44 = v2[2];
  v45 = v2[3];
  v46 = v2[4];
  v47 = v2[5];
  v48 = v2[6];
  v62[0] = *v2;
  v62[1] = v43;
  v62[2] = v44;
  v62[3] = v45;
  v62[4] = v46;
  v62[5] = v47;
  v62[6] = v48;
  sub_213D64710(v62[0], v43);
  sub_213D61D14(v62);
  return v34;
}

uint64_t sub_213D5E424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_213D5E4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_213D5E51C()
{
  swift_getWitnessTable();
  sub_213D90E1C();
  __break(1u);
}

uint64_t sub_213D5E55C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_213D90C0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  sub_213D910BC();
  sub_213D910AC();
  v10 = sub_213D9056C();

  if (v10)
  {

    sub_213D910AC();
    v11 = sub_213D9055C();

    LOBYTE(v10) = v11 ^ 1;
  }

  sub_213D9108C();
  v12 = v14[1];
  sub_213D9109C();
  sub_213D5E6F0(a1, v12, v9, v10 & 1, a3);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_213D5E6F0(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  v12 = *(a5 + 16);
  v11 = *(a5 + 24);
  v13 = *(a5 + 32);
  v61 = type metadata accessor for _DefaultAnnotatedMapContent();
  v70 = sub_213D91C7C();
  v68 = *(v70 - 8);
  v14 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  v63 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - v17;
  v60 = v12;
  v69 = sub_213D91C7C();
  v67 = *(v69 - 8);
  v19 = *(v67 + 64);
  v20 = MEMORY[0x28223BE20](v69);
  v71 = &v60 - v21;
  v66 = a2;
  [a1 setDelegate_];
  v22 = *(v6 + 6);
  v23 = v6[1];
  v93 = *v6;
  v94 = v23;
  v95 = v6[2];
  *&v96 = v22;
  sub_213D2B188(v92);
  sub_213D5CE30(v92, a4);
  sub_213D5EC6C(a1, a4, a5);
  *&v93 = *(v6 + *(a5 + 48));
  sub_213D5ED3C(a1, &v93);
  sub_213D64778();
  sub_213D90C1C();
  v99 = v88;
  v100 = v89;
  v101 = v90;
  v95 = v84;
  v96 = v85;
  v97 = v86;
  v98 = v87;
  v93 = v82;
  v94 = v83;
  v78 = v88;
  v79 = v89;
  v80 = v90;
  v74 = v84;
  v75 = v85;
  v76 = v86;
  v77 = v87;
  v102 = v91;
  v81 = v91;
  v72 = v82;
  v73 = v83;
  isa = MapStyle.configuration()().super.isa;
  [a1 setPreferredConfiguration_];

  sub_213CEB3CC(&v93);
  v64 = a1;
  sub_213D5EDD8(a1, a5);
  v65 = a5;
  v25 = *(a5 + 44);
  v26 = v68;
  v27 = *(v68 + 16);
  v27(v18, v6 + v25, v70);
  v62 = *(v61 - 8);
  v28 = *(v62 + 48);
  v29 = v18;
  v30 = v18;
  v31 = v61;
  if (v28(v30, 1) == 1)
  {
    v32 = v29;
    v33 = v70;
    (*(v26 + 8))(v32, v70);
    (*(*(v60 - 8) + 56))(v71, 1, 1);
  }

  else
  {
    (*(v67 + 16))(v71, &v29[*(v31 + 56)], v69);
    (*(v62 + 8))(v29, v31);
    v33 = v70;
  }

  v34 = v6 + v25;
  v35 = v63;
  v27(v63, v34, v33);
  if ((v28)(v35, 1, v31) == 1)
  {
    v36 = v33;
    v37 = 0;
    v38 = 0;
    v39 = v68;
    v40 = v69;
  }

  else
  {
    v41 = &v35[*(v31 + 60)];
    v37 = *v41;
    v38 = v41[1];
    sub_213CD4E28(*v41);
    v39 = v62;
    v36 = v31;
    v40 = v69;
  }

  v42 = v67;
  v43 = v71;
  (*(v39 + 8))(v35, v36);
  v44 = v66;
  sub_213D609A0(v64, v43, v37, v38);
  sub_213CCE520(v37);
  (*(v42 + 8))(v43, v40);
  v45 = *(v6 + 1);
  v46 = *(v6 + 2);
  v47 = *(v6 + 3);
  v48 = *(v6 + 4);
  v49 = *(v6 + 5);
  v50 = *(v6 + 6);
  *&v82 = *v6;
  *(&v82 + 1) = v45;
  *&v83 = v46;
  *(&v83 + 1) = v47;
  *&v84 = v48;
  *(&v84 + 1) = v49;
  *&v85 = v50;
  sub_213D64710(v82, v45);
  sub_213D61D14(&v82);
  v51 = (v6 + *(v65 + 56));
  v53 = *v51;
  v52 = v51[1];
  v54 = v51[2];
  sub_213D646D0(*v51, v52);
  v55 = (v44 + *((*MEMORY[0x277D85000] & *v44) + 0x70));
  v56 = *v55;
  v57 = v55[1];
  v58 = v55[2];
  *v55 = v53;
  v55[1] = v52;
  v55[2] = v54;
  return sub_213D65068(v56, v57);
}

void *sub_213D5EC44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_213D5DFF0(a1);
  *a2 = result;
  return result;
}

id sub_213D5EC6C(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  result = [a1 setShowsUserLocation_];
  v9 = (v4 + *(a3 + 56));
  v10 = v9[1];
  if (v10)
  {
    v11 = v9[2];
    v16[1] = *v9;
    v16[2] = v10;
    v16[3] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EC510, qword_213D9A120);
    MEMORY[0x21604E7B0](v16, v12);
    if (v16[0] == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2 * (v16[0] == 2);
    }

    if (v13 == 2)
    {
      v14 = *(v4 + 8) >> 62 == 0;
      *(v4 + 8);
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 1;
    }

    return [a1 setUserTrackingMode:v15 animated:a2 & 1];
  }

  return result;
}

id sub_213D5ED3C(void *a1, unint64_t *a2)
{
  v4 = *a2;
  [a1 setScrollEnabled_];
  [a1 setZoomEnabled_];
  if (*(v2 + 8) >> 62)
  {
    v5 = 0;
  }

  else
  {
    v5 = (v4 >> 2) & 1;
  }

  if (*(v2 + 8) >> 62)
  {
    v6 = 0;
  }

  else
  {
    v6 = (v4 >> 3) & 1;
  }

  [a1 setRotateEnabled_];

  return [a1 setPitchEnabled_];
}

id sub_213D5EDD8(void *a1, uint64_t a2)
{
  v3 = v2;
  v253 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAC8, &unk_213D98580);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v235 = &v209 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v232 = &v209 - v9;
  MEMORY[0x28223BE20](v10);
  v229 = &v209 - v11;
  v240 = type metadata accessor for MapUserLocationButtonConfig(0);
  v249 = *(v240 - 8);
  v12 = *(v249 + 64);
  MEMORY[0x28223BE20](v240);
  v234 = &v209 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v233 = &v209 - v15;
  MEMORY[0x28223BE20](v16);
  v230 = &v209 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD0, &unk_213D9DF50);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v226 = &v209 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v221 = &v209 - v22;
  v224 = type metadata accessor for MapCompassConfig(0);
  v223 = *(v224 - 8);
  v23 = *(v223 + 64);
  MEMORY[0x28223BE20](v224);
  v227 = (&v209 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v222 = &v209 - v26;
  v239 = sub_213D90A6C();
  v245 = *(v239 - 8);
  v27 = *(v245 + 64);
  MEMORY[0x28223BE20](v239);
  v231 = &v209 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v238 = &v209 - v30;
  MEMORY[0x28223BE20](v31);
  v216 = &v209 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD8, &unk_213D98590);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v218 = &v209 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v213 = (&v209 - v37);
  MEMORY[0x28223BE20](v38);
  v211 = &v209 - v39;
  v237 = type metadata accessor for MapPitchToggleConfig(0);
  v241 = *(v237 - 8);
  v40 = *(v241 + 8);
  MEMORY[0x28223BE20](v237);
  v217 = &v209 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v214 = &v209 - v43;
  MEMORY[0x28223BE20](v44);
  v212 = &v209 - v45;
  v46 = sub_213D9051C();
  v247 = *(v46 - 8);
  v47 = *(v247 + 64);
  MEMORY[0x28223BE20](v46);
  v248 = &v209 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAE0, &unk_213D9DF40);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v244 = &v209 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v54 = &v209 - v53;
  v55 = type metadata accessor for MapScaleViewConfig(0);
  v56 = *(v55 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  v236 = (&v209 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v59);
  v61 = &v209 - v60;
  v62 = type metadata accessor for MapControlsConfig();
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v228 = &v209 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v225 = &v209 - v66;
  MEMORY[0x28223BE20](v67);
  v220 = &v209 - v68;
  MEMORY[0x28223BE20](v69);
  v219 = &v209 - v70;
  MEMORY[0x28223BE20](v71);
  v215 = &v209 - v72;
  MEMORY[0x28223BE20](v73);
  v210 = &v209 - v74;
  MEMORY[0x28223BE20](v75);
  v209 = &v209 - v76;
  MEMORY[0x28223BE20](v77);
  v243 = &v209 - v78;
  MEMORY[0x28223BE20](v79);
  v81 = &v209 - v80;
  MEMORY[0x28223BE20](v82);
  v84 = &v209 - v83;
  v250 = a2;
  v252 = v3;
  sub_213D5D848(a2, &v209 - v83);
  v246 = v62;
  sub_213CE2C28(&v84[*(v62 + 20)], v54, &unk_27C8EBAE0, &unk_213D9DF40);
  v85 = *(v56 + 48);
  v86 = v85(v54, 1, v55);
  v87 = MEMORY[0x277CDF440];
  v251 = v46;
  if (v86 == 1)
  {
    v88 = sub_213D90D6C();
    sub_213D64EF0(v84, type metadata accessor for MapControlsConfig);
    v89 = v247;
    (*(v247 + 104))(&v61[*(v55 + 28)], *v87, v46);
    *(v61 + 1) = v88;
    *v61 = 512;
    if (v85(v54, 1, v55) != 1)
    {
      sub_213CD8330(v54, &unk_27C8EBAE0, &unk_213D9DF40);
    }
  }

  else
  {
    sub_213D64EF0(v84, type metadata accessor for MapControlsConfig);
    sub_213D64F50(v54, v61, type metadata accessor for MapScaleViewConfig);
    v89 = v247;
  }

  v90 = v250;
  v91 = sub_213D5DA30(v250);
  v92 = v236;
  if (*v61)
  {
    v93 = v91;
    if (v91 == 3)
    {
      v94 = v61[1];
      sub_213D64EF0(v61, type metadata accessor for MapScaleViewConfig);
      v95 = qword_213D9A328[v94];
    }

    else
    {
      sub_213D64EF0(v61, type metadata accessor for MapScaleViewConfig);
      v95 = qword_213D9A328[v93];
    }
  }

  else
  {
    sub_213D64EF0(v61, type metadata accessor for MapScaleViewConfig);
    v95 = 1;
  }

  [v253 _setScaleVisibility_];
  sub_213D5D848(v90, v81);
  v96 = v244;
  sub_213CE2C28(&v81[*(v246 + 20)], v244, &unk_27C8EBAE0, &unk_213D9DF40);
  v97 = v85(v96, 1, v55);
  v98 = v251;
  v99 = MEMORY[0x277CDF440];
  if (v97 == 1)
  {
    v100 = sub_213D90D6C();
    sub_213D64EF0(v81, type metadata accessor for MapControlsConfig);
    (*(v89 + 104))(v92 + *(v55 + 28), *v99, v98);
    *(v92 + 8) = v100;
    v101 = v244;
    *v92 = 512;
    v102 = v85(v101, 1, v55);
    v103 = v243;
    if (v102 != 1)
    {
      sub_213CD8330(v101, &unk_27C8EBAE0, &unk_213D9DF40);
    }
  }

  else
  {
    sub_213D64EF0(v81, type metadata accessor for MapControlsConfig);
    sub_213D64F50(v96, v92, type metadata accessor for MapScaleViewConfig);
    v103 = v243;
  }

  v244 = *(v90 + 64);
  v104 = v248;
  sub_213D486E8(v248);
  v105 = sub_213D4F514(v104);
  v106 = v104;
  v107 = v251;
  v242 = *(v89 + 8);
  v243 = (v89 + 8);
  v242(v106, v251);
  sub_213D64EF0(v92, type metadata accessor for MapScaleViewConfig);
  v108 = v253;
  [v253 _setScaleControlSize_];
  sub_213D5D848(v90, v103);
  v109 = v211;
  sub_213CE2C28(v103, v211, &qword_27C8EBAD8, &unk_213D98590);
  v111 = (v241 + 48);
  v110 = *(v241 + 6);
  v112 = v237;
  v113 = v110(v109, 1, v237);
  v114 = v212;
  v236 = v110;
  if (v113 == 1)
  {
    v115 = &v212[v112[6]];
    sub_213D90A5C();
    sub_213D64EF0(v103, type metadata accessor for MapControlsConfig);
    (*(v89 + 104))(&v114[v112[7]], *MEMORY[0x277CDF440], v107);
    v114[1] = 2;
    *&v114[v112[8]] = 0;
    *v114 = 0;
    if (v110(v109, 1, v112) != 1)
    {
      sub_213CD8330(v109, &qword_27C8EBAD8, &unk_213D98590);
    }
  }

  else
  {
    sub_213D64EF0(v103, type metadata accessor for MapControlsConfig);
    sub_213D64F50(v109, v114, type metadata accessor for MapPitchToggleConfig);
  }

  v116 = sub_213D5DA30(v90);
  if (*v114)
  {
    v117 = v116;
    if (v116 == 3)
    {
      v118 = v114[1];
      sub_213D64EF0(v114, type metadata accessor for MapPitchToggleConfig);
      v119 = qword_213D9A328[v118];
    }

    else
    {
      sub_213D64EF0(v114, type metadata accessor for MapPitchToggleConfig);
      v119 = qword_213D9A328[v117];
    }
  }

  else
  {
    sub_213D64EF0(v114, type metadata accessor for MapPitchToggleConfig);
    v119 = 1;
  }

  [v108 setPitchButtonVisibility_];
  v120 = v209;
  sub_213D5D848(v90, v209);
  v121 = v213;
  sub_213CE2C28(v120, v213, &qword_27C8EBAD8, &unk_213D98590);
  v122 = v236;
  v123 = v236(v121, 1, v112);
  v124 = v214;
  v241 = v111;
  if (v123 == 1)
  {
    v125 = &v214[v112[6]];
    sub_213D90A5C();
    sub_213D64EF0(v120, type metadata accessor for MapControlsConfig);
    (*(v89 + 104))(&v124[v112[7]], *MEMORY[0x277CDF440], v107);
    v124[1] = 2;
    *&v124[v112[8]] = 0;
    *v124 = 0;
    if (v122(v121, 1, v112) != 1)
    {
      sub_213CD8330(v121, &qword_27C8EBAD8, &unk_213D98590);
    }
  }

  else
  {
    sub_213D64EF0(v120, type metadata accessor for MapControlsConfig);
    sub_213D64F50(v121, v124, type metadata accessor for MapPitchToggleConfig);
  }

  v211 = *(v90 + 60);
  v126 = v216;
  sub_213D486C0(v216);
  v127 = v124;
  v128 = &v124[v112[6]];
  v129 = v238;
  sub_213D90A5C();
  v130 = sub_213D90A2C();
  v131 = v245;
  v133 = v245 + 8;
  v132 = *(v245 + 8);
  v134 = v239;
  v132(v129, v239);
  v137 = *(v131 + 16);
  v136 = v131 + 16;
  v135 = v137;
  if (v130)
  {
    v138 = v126;
  }

  else
  {
    v138 = v128;
  }

  v245 = v136;
  v212 = v135;
  (v135)(v129, v138, v134);
  v139 = v237;
  v140 = sub_213D8B784(v129, 1);
  v216 = v133;
  v213 = v132;
  v132(v126, v134);
  sub_213D64EF0(v127, type metadata accessor for MapPitchToggleConfig);
  [v253 _setPitchButtonBackgroundStyle_];
  v141 = v210;
  sub_213D5D848(v250, v210);
  v142 = v218;
  sub_213CE2C28(v141, v218, &qword_27C8EBAD8, &unk_213D98590);
  v143 = v236;
  if (v236(v142, 1, v139) == 1)
  {
    v144 = v217;
    v145 = &v217[v139[6]];
    sub_213D90A5C();
    sub_213D64EF0(v141, type metadata accessor for MapControlsConfig);
    v146 = v251;
    (*(v247 + 104))(&v144[v139[7]], *MEMORY[0x277CDF440], v251);
    v144[1] = 2;
    *&v144[v139[8]] = 0;
    *v144 = 0;
    v147 = v143(v142, 1, v139);
    v148 = v246;
    v149 = v224;
    v150 = v222;
    if (v147 != 1)
    {
      sub_213CD8330(v142, &qword_27C8EBAD8, &unk_213D98590);
    }
  }

  else
  {
    sub_213D64EF0(v141, type metadata accessor for MapControlsConfig);
    v144 = v217;
    sub_213D64F50(v142, v217, type metadata accessor for MapPitchToggleConfig);
    v148 = v246;
    v149 = v224;
    v150 = v222;
    v146 = v251;
  }

  v151 = v248;
  sub_213D486E8(v248);
  v152 = sub_213CDF85C(v151);
  v242(v151, v146);
  sub_213D64EF0(v144, type metadata accessor for MapPitchToggleConfig);
  [v253 _setPitchButtonControlSize_];
  v153 = v215;
  v154 = v250;
  sub_213D5D848(v250, v215);
  v155 = v221;
  sub_213CE2C28(v153 + *(v148 + 28), v221, &qword_27C8EBAD0, &unk_213D9DF50);
  sub_213D64EF0(v153, type metadata accessor for MapControlsConfig);
  v156 = *(v223 + 48);
  if (v156(v155, 1, v149) == 1)
  {
    v157 = v146;
    (*(v247 + 104))(v150 + *(v149 + 24), *MEMORY[0x277CDF440], v146);
    *v150 = 512;
    if (v156(v155, 1, v149) != 1)
    {
      sub_213CD8330(v155, &qword_27C8EBAD0, &unk_213D9DF50);
    }
  }

  else
  {
    v157 = v146;
    sub_213D64F50(v155, v150, type metadata accessor for MapCompassConfig);
  }

  v158 = sub_213D5DA30(v154);
  v159 = v246;
  if (*v150)
  {
    v160 = v157;
    if (v158 == 3)
    {
      v161 = *(v150 + 1);
    }

    v162 = sub_213D904DC() ^ 1;
  }

  else
  {
    v162 = 0;
    v160 = v157;
  }

  v163 = v253;
  sub_213D64EF0(v150, type metadata accessor for MapCompassConfig);
  [v163 setShowsCompass_];
  v164 = v219;
  sub_213D5D848(v154, v219);
  v165 = v226;
  sub_213CE2C28(v164 + *(v159 + 28), v226, &qword_27C8EBAD0, &unk_213D9DF50);
  sub_213D64EF0(v164, type metadata accessor for MapControlsConfig);
  if (v156(v165, 1, v149) == 1)
  {
    v166 = v165;
    v167 = v227;
    (*(v247 + 104))(v227 + *(v149 + 24), *MEMORY[0x277CDF440], v160);
    *v167 = 512;
    v168 = v156(v166, 1, v149);
    v163 = v253;
    v169 = v167;
    v170 = v230;
    if (v168 != 1)
    {
      sub_213CD8330(v166, &qword_27C8EBAD0, &unk_213D9DF50);
    }
  }

  else
  {
    v169 = v227;
    sub_213D64F50(v165, v227, type metadata accessor for MapCompassConfig);
    v170 = v230;
  }

  v171 = v248;
  sub_213D486E8(v248);
  v172 = v169;
  v173 = sub_213D652C4(v171);
  v242(v171, v160);
  sub_213D64EF0(v172, type metadata accessor for MapCompassConfig);
  [v163 setCompassViewSize_];
  v174 = v220;
  sub_213D5D848(v154, v220);
  v175 = v229;
  sub_213CE2C28(v174 + *(v159 + 24), v229, &qword_27C8EBAC8, &unk_213D98580);
  v176 = v249 + 48;
  v177 = *(v249 + 48);
  v178 = v240;
  v179 = v177(v175, 1, v240);
  v249 = v176;
  if (v179 == 1)
  {
    v180 = &v170[v178[6]];
    sub_213D90A5C();
    sub_213D64EF0(v174, type metadata accessor for MapControlsConfig);
    (*(v247 + 104))(&v170[v178[7]], *MEMORY[0x277CDF440], v160);
    v170[1] = 2;
    *&v170[v178[8]] = 0;
    *v170 = 0;
    v181 = v177(v175, 1, v178);
    v182 = v225;
    if (v181 != 1)
    {
      sub_213CD8330(v175, &qword_27C8EBAC8, &unk_213D98580);
    }
  }

  else
  {
    sub_213D64EF0(v174, type metadata accessor for MapControlsConfig);
    sub_213D64F50(v175, v170, type metadata accessor for MapUserLocationButtonConfig);
    v182 = v225;
  }

  v183 = sub_213D5DA30(v154);
  if (*v170)
  {
    if (v183 == 3)
    {
      v184 = v170[1];
    }

    v185 = sub_213D904DC() ^ 1;
  }

  else
  {
    v185 = 0;
  }

  sub_213D64EF0(v170, type metadata accessor for MapUserLocationButtonConfig);
  [v253 setShowsUserTrackingButton_];
  sub_213D5D848(v154, v182);
  v186 = v232;
  sub_213CE2C28(v182 + *(v159 + 24), v232, &qword_27C8EBAC8, &unk_213D98580);
  v187 = v240;
  v188 = v177(v186, 1, v240);
  v241 = v177;
  if (v188 == 1)
  {
    v189 = v233;
    v190 = &v233[v187[6]];
    sub_213D90A5C();
    sub_213D64EF0(v182, type metadata accessor for MapControlsConfig);
    (*(v247 + 104))(&v189[v187[7]], *MEMORY[0x277CDF440], v251);
    v189[1] = 2;
    *&v189[v187[8]] = 0;
    *v189 = 0;
    if (v177(v186, 1, v187) != 1)
    {
      sub_213CD8330(v186, &qword_27C8EBAC8, &unk_213D98580);
    }
  }

  else
  {
    sub_213D64EF0(v182, type metadata accessor for MapControlsConfig);
    v189 = v233;
    sub_213D64F50(v186, v233, type metadata accessor for MapUserLocationButtonConfig);
  }

  v191 = v231;
  sub_213D486C0(v231);
  v192 = &v189[v187[6]];
  v193 = v238;
  sub_213D90A5C();
  v194 = sub_213D90A2C();
  v195 = v239;
  v196 = v213;
  v213(v193, v239);
  if (v194)
  {
    v197 = v191;
  }

  else
  {
    v197 = v192;
  }

  (v212)(v193, v197, v195);
  v198 = sub_213D8B784(v193, 1);
  v196(v191, v195);
  sub_213D64EF0(v189, type metadata accessor for MapUserLocationButtonConfig);
  [v253 _setUserTrackingButtonBackgroundStyle_];
  v199 = v228;
  v200 = v250;
  sub_213D5D848(v250, v228);
  v201 = v235;
  sub_213CE2C28(v199 + *(v246 + 24), v235, &qword_27C8EBAC8, &unk_213D98580);
  v202 = v241;
  if (v241(v201, 1, v187) == 1)
  {
    v203 = v234;
    v204 = &v234[v187[6]];
    sub_213D90A5C();
    sub_213D64EF0(v199, type metadata accessor for MapControlsConfig);
    (*(v247 + 104))(&v203[v187[7]], *MEMORY[0x277CDF440], v251);
    v203[1] = 2;
    *&v203[v187[8]] = 0;
    *v203 = 0;
    if (v202(v201, 1, v187) != 1)
    {
      sub_213CD8330(v201, &qword_27C8EBAC8, &unk_213D98580);
    }
  }

  else
  {
    sub_213D64EF0(v199, type metadata accessor for MapControlsConfig);
    v203 = v234;
    sub_213D64F50(v201, v234, type metadata accessor for MapUserLocationButtonConfig);
  }

  v205 = v248;
  sub_213D486E8(v248);
  v206 = sub_213D83E18(v205);
  v242(v205, v251);
  sub_213D64EF0(v203, type metadata accessor for MapUserLocationButtonConfig);
  v207 = v253;
  [v253 _setUserTrackingControlSize_];
  sub_213D5D6E4(v200);
  LOBYTE(v206) = sub_213D904DC();
  sub_213D5D6E4(v200);
  [v207 _setShowsAppleLogo_force_];
  return [v207 setShowsAttribution_];
}

uint64_t sub_213D609A0(void *a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t), uint64_t a4)
{
  v5 = v4;
  v125 = a4;
  v132 = a3;
  v133 = a1;
  v7 = *v4;
  v8 = *MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & *v4) + 0x60);
  v122 = *((*MEMORY[0x277D85000] & *v4) + 0x58);
  v118 = *(*(v122 + 8) + 8);
  v10 = *(v118 + 8);
  v11 = *((v8 & v7) + 0x50);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v113 = *(AssociatedTypeWitness - 8);
  v12 = v113[8];
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v121 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v126 = &v100 - v15;
  v16 = swift_checkMetadataState();
  v131 = *(v16 - 8);
  v17 = v131[8];
  MEMORY[0x28223BE20](v16);
  v110 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v134 = v20;
  v135 = &v100 - v21;
  v22 = sub_213D91C7C();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v127 = &v100 - v24;
  v120 = v10;
  v130 = swift_getAssociatedTypeWitness();
  v107 = *(v130 - 8);
  v25 = *(v107 + 64);
  MEMORY[0x28223BE20](v130);
  v129 = &v100 - v26;
  v27 = sub_213D91C7C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v123 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v119 = &v100 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v100 - v34;
  v36 = *(v11 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v117 = &v100 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v109 = &v100 - v41;
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v100 - v44;
  (*(v28 + 16))(v35, a2, v27, v43);
  v46 = *(v36 + 48);
  if (v46(v35, 1, v11) == 1)
  {
    (*(v28 + 8))(v35, v27);
LABEL_7:
    sub_213D628F8(v133);
    v53 = v123;
    (*(v36 + 56))(v123, 1, 1, v11);
    sub_213D61E74(v53);
    v54 = (v5 + *((*MEMORY[0x277D85000] & *v5) + 0x80));
    v55 = *v54;
    v56 = v54[1];
    *v54 = 0;
    v54[1] = 0;
    return sub_213CCE520(v55);
  }

  v116 = v27;
  v124 = v9;
  v47 = *(v36 + 32);
  v47(v45, v35, v11);
  if (!v132)
  {
    (*(v36 + 8))(v45, v11);
    goto LABEL_7;
  }

  v104 = v45;
  v105 = v36;
  v48 = v119;
  sub_213D61DB4(v119);
  if (v46(v48, 1, v11) == 1)
  {
    v49 = *(v28 + 8);
    v50 = v125;

    v49(v48, v116);
    v51 = v11;
    v52 = v105;
LABEL_12:
    v79 = v104;
    v80 = *(v52 + 16);
    v80(v117, v104, v51);
    v81 = sub_213D91ACC();
    v82 = v132;
    sub_213D62B54(v133, v81, v132, v50);

    v83 = v123;
    v80(v123, v79, v51);
    (*(v52 + 56))(v83, 0, 1, v51);
    sub_213D61E74(v83);
    v84 = (v5 + *((*MEMORY[0x277D85000] & *v5) + 0x80));
    v85 = *v84;
    v86 = v84[1];
    *v84 = v82;
    v84[1] = v50;

    sub_213CCE520(v85);
    (*(v52 + 8))(v79, v51);
    v55 = v82;
    return sub_213CCE520(v55);
  }

  v57 = v109;
  v47(v109, v48, v11);

  v51 = v11;
  if (sub_213D91B7C() < 1)
  {
    v52 = v105;
    (*(v105 + 8))(v57, v11);
    v50 = v125;
    goto LABEL_12;
  }

  v58 = v134;
  v139 = sub_213D9181C();
  v59 = type metadata accessor for AnnotationBridge();
  v60 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v119 = v59;
  v118 = AssociatedConformanceWitness;
  v138 = sub_213D9180C();
  v62 = *(v105 + 16);
  v102 = v105 + 16;
  v101 = v62;
  v62(v117, v104, v11);
  sub_213D919AC();
  v106 = *((*MEMORY[0x277D85000] & *v5) + 0x88);
  v108 = v11;
  v63 = swift_getAssociatedConformanceWitness();
  v64 = v127;
  v117 = v63;
  sub_213D91C8C();
  v65 = v131[6];
  v116 = v131 + 6;
  v115 = v65;
  v66 = v65(v64, 1, v58);
  v67 = v135;
  if (v66 != 1)
  {
    v114 = v131[4];
    ++v113;
    v111 = (v131 + 1);
    v131 += 4;
    v103 = (v131 - 2);
    v112 = v5;
    v114(v135, v64, v58);
    while (1)
    {
      v90 = v126;
      sub_213D91D9C();
      v91 = *((*MEMORY[0x277D85000] & *v5) + 0x88);
      swift_beginAccess();
      v92 = *(v5 + v91);

      sub_213D9188C();

      v93 = *v113;
      (*v113)(v90, v60);
      v94 = v60;
      v95 = v136;
      if (v136)
      {
        sub_213D649C4(v136, v67, v132, v125, v133);
        v96 = v121;
        v120 = v93;
        sub_213D91D9C();
        v136 = v95;
        sub_213D9187C();
        v97 = v95;
        sub_213D9189C();
        sub_213D91D9C();
        swift_beginAccess();
        v58 = v134;
        sub_213D9183C();
        v98 = v96;
        v67 = v135;
        v120(v98, v94);
        v99 = v137;
        swift_endAccess();
      }

      else
      {
        (*v103)(v110, v67, v58);
        sub_213D91ABC();
        sub_213D91A8C();
      }

      (*v111)(v67, v58);
      v88 = v127;
      sub_213D91C8C();
      v89 = v115(v88, 1, v58);
      v60 = AssociatedTypeWitness;
      v5 = v112;
      if (v89 == 1)
      {
        break;
      }

      v114(v67, v88, v58);
    }
  }

  (*(v107 + 8))(v129, v130);
  v68 = v133;
  sub_213D628F8(v133);
  sub_213D61F78(v138);
  v69 = v132;
  v70 = v125;
  sub_213D62B54(v68, v139, v132, v125);

  v71 = v123;
  v72 = v104;
  v73 = v108;
  v101(v123, v104, v108);
  v74 = v105;
  (*(v105 + 56))(v71, 0, 1, v73);
  sub_213D61E74(v71);
  sub_213CD4E28(v69);
  v75 = (v5 + *((*MEMORY[0x277D85000] & *v5) + 0x80));
  v76 = *v75;
  v77 = v75[1];
  *v75 = v69;
  v75[1] = v70;
  sub_213CCE520(v76);
  v78 = *(v74 + 8);
  v78(v109, v73);
  v78(v72, v73);
  v55 = v69;
  return sub_213CCE520(v55);
}

uint64_t sub_213D61764@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x50) - 8) + 16))(a1, &v1[v5]);
}

uint64_t sub_213D61818(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  swift_beginAccess();
  (*(*(*((v4 & v3) + 0x50) - 8) + 40))(&v1[v5], a1);
  return swift_endAccess();
}

id sub_213D618D4()
{
  result = [v0 coordinate];
  v3 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x68));
  if (vabdd_f64(v4, *v3) >= 0.00000000999999994 || vabdd_f64(v2, v3[1]) >= 0.00000000999999994)
  {

    return [v0 setCoordinate_];
  }

  return result;
}

id sub_213D61970(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v4 = *(v3 + 4);
  *v3 = *a1;
  v3[16] = v2;
  *(v3 + 24) = *(a1 + 24);

  return sub_213D618D4();
}

double sub_213D61A04()
{
  v1 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x70);
  result = *v1;
  v3 = *(v1 + 1);
  return result;
}

void sub_213D61A58(double a1, double a2)
{
  v3 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x70));
  *v3 = a1;
  v3[1] = a2;
}

void sub_213D61A88(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_213D65038();
}

id sub_213D61AC8()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AnnotationBridge();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_213D61B38(char *a1)
{
  v2 = MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)]);
  v3 = *&a1[*((*v2 & *a1) + 0x68) + 32];
}

uint64_t sub_213D61C08(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_213D91C7C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_213D61CC8@<X0>(uint64_t *a1@<X8>)
{
  v2 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  *a1 = *v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  return sub_213D650AC(v3, v4);
}

uint64_t sub_213D61D14(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v11 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v11;
  *(v3 + 2) = *(a1 + 32);
  v3[6] = v2;
  return sub_213D64FB8(v5, v4);
}

uint64_t sub_213D61D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + *((*MEMORY[0x277D85000] & *v3) + 0x70));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  return sub_213D65068(v5, v6);
}

uint64_t sub_213D61DB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v6 = *((v4 & v3) + 0x50);
  v7 = sub_213D91C7C();
  return (*(*(v7 - 8) + 16))(a1, &v1[v5], v7);
}

uint64_t sub_213D61E74(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v6 = *((v4 & v3) + 0x50);
  v7 = sub_213D91C7C();
  (*(*(v7 - 8) + 40))(&v1[v5], a1, v7);
  return swift_endAccess();
}

uint64_t sub_213D61F3C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x80));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_213CCE520(v4);
}

uint64_t sub_213D61F78(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_213D61FEC(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = (*MEMORY[0x277D85000] & *v1);
  v6 = *(*(*(v5[11] + 8) + 8) + 8);
  v7 = v5[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v34 - v11;
  v13 = *((v4 & v3) + 0x60);
  type metadata accessor for AnnotationBridge();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    return 0;
  }

  v15 = v1 + v5[16];
  v16 = *v15;
  if (!*v15)
  {
    return 0;
  }

  v17 = *(v15 + 1);
  v18 = v14;
  sub_213D61764(v12);
  sub_213CD4E28(v16);
  swift_unknownObjectRetain();
  v16(&v35, v12);
  v20 = v35;
  v19 = v36;
  v21 = v39;
  switch(v37)
  {
    case 2:
      v34 = v38;
      v29 = sub_213D9190C();
      v30 = [a1 dequeueReusableAnnotationViewWithIdentifier:v29 forAnnotation:v18];

      type metadata accessor for SwiftUIAnnotationView();
      v24 = swift_dynamicCastClass();
      if (!v24)
      {

        sub_213CCE520(v16);
        swift_unknownObjectRelease();

        (*(v9 + 8))(v12, AssociatedTypeWitness);
        return v24;
      }

      v35 = v20;
      v36 = v19;
      v37 = 2;
      v31 = v34;
      v38 = v34;
      v39 = v21;

      v32 = v30;
      v31(v24, &v35);

      sub_213CCE520(v16);
      swift_unknownObjectRelease();

      (*(v9 + 8))(v12, AssociatedTypeWitness);

      goto LABEL_16;
    case 1:
      v34 = v38;
      v26 = sub_213D9190C();
      v23 = [a1 dequeueReusableAnnotationViewWithIdentifier:v26 forAnnotation:v18];

      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (v24)
      {
        v35 = v20;
        v36 = v19;
        v37 = 1;
        v27 = v34;
        v38 = v34;
        v39 = v21;

        v23 = v23;
        v27(v24, &v35);

        LODWORD(v28) = 1148846080;
        [v24 setDisplayPriority_];
      }

      goto LABEL_11;
    case 0:
      v34 = v38;
      v22 = sub_213D9190C();
      v23 = [a1 dequeueReusableAnnotationViewWithIdentifier:v22 forAnnotation:v18];

      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (v24)
      {
        v35 = v20;
        v36 = v19;
        v37 = 0;
        v25 = v34;
        v38 = v34;
        v39 = v21;

        v23 = v23;
        v25(v24, &v35);
      }

LABEL_11:

      goto LABEL_15;
  }

  v24 = 0;
LABEL_15:
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  sub_213CCE520(v16);
  swift_unknownObjectRelease();

  if (v24)
  {
LABEL_16:
    [v24 setEnabled_];
  }

  return v24;
}

id sub_213D624B8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = sub_213D61FEC(v4);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_213D62530(void *a1)
{
  result = sub_213D61CC8(&v5);
  v3 = v6;
  if ((~v6 & 0xF000000000000007) != 0)
  {
    v4 = v5;
    sub_213D2B29C(a1);
    return sub_213D64FB8(v4, v3);
  }

  return result;
}

void sub_213D625DC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_213D62530(v4);
}

void sub_213D62644(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_213D650C0(a4);
}

void sub_213D626B0(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  sub_213D651A4();
}

id sub_213D62704()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for MapViewCoordinator();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_213D62788(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *a1;
  v4 = *MEMORY[0x277D85000];
  v5 = &a1[*((*MEMORY[0x277D85000] & *a1) + 0x68)];
  v6 = v5[2];
  v7 = v5[3];
  v8 = v5[4];
  v9 = v5[5];
  v10 = v5[6];
  sub_213D64FB8(*v5, v5[1]);
  v11 = &a1[*((*v2 & *a1) + 0x70)];
  v12 = v11[2];
  sub_213D65068(*v11, v11[1]);
  v13 = *((*v2 & *a1) + 0x78);
  v14 = *((v4 & v3) + 0x50);
  v15 = sub_213D91C7C();
  (*(*(v15 - 8) + 8))(&a1[v13], v15);
  v16 = &a1[*((*v2 & *a1) + 0x80)];
  v17 = v16[1];
  sub_213CCE520(*v16);
  v18 = *&a1[*((*v2 & *a1) + 0x88)];
}

uint64_t sub_213D628F8(void *a1)
{
  v3 = *v1;
  v4 = MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = *((v5 & v3) + 0x60);
  v9 = *(*(*(*((v5 & v3) + 0x58) + 8) + 8) + 8);
  v10 = *((v5 & v3) + 0x50);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnnotationBridge();
  swift_getAssociatedConformanceWitness();
  v14 = v7;
  sub_213D9185C();

  swift_getWitnessTable();
  sub_213D91ACC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
  sub_213D91E8C();

  v11 = sub_213D919EC();

  [a1 removeAnnotations_];

  v12 = *((*v4 & *v1) + 0x88);
  swift_beginAccess();
  sub_213D9187C();
  sub_213D9186C();
  return swift_endAccess();
}

void sub_213D62B54(void *a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, char *), uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v7 = MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & *v4) + 0x60);
  v9 = *(*(*(*((*MEMORY[0x277D85000] & *v4) + 0x58) + 8) + 8) + 8);
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x50);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v30 = &v24 - v12;
  v13 = swift_checkMetadataState();
  v36 = *(v13 - 8);
  v14 = *(v36 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  if (sub_213D91A7C() >= 1)
  {
    v24 = v14;
    v34 = type metadata accessor for AnnotationBridge();
    v44 = sub_213D9181C();
    if (sub_213D91A7C())
    {
      v25 = a1;
      v17 = 0;
      v27 = *((*v7 & *v35) + 0x88);
      v29 = (v36 + 16);
      v26 = (v36 + 8);
      v28 = a2;
      while (1)
      {
        v18 = sub_213D91A5C();
        sub_213D91A0C();
        if (v18)
        {
          (*(v36 + 16))(v16, a2 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v17, v13);
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_11;
          }
        }

        else
        {
          v22 = sub_213D91DAC();
          if (v24 != 8)
          {
            __break(1u);
            return;
          }

          *&v41 = v22;
          (*v29)(v16, &v41, v13);
          swift_unknownObjectRelease();
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_11:
            __break(1u);
LABEL_12:
            a1 = v25;
            break;
          }
        }

        v37 = v19;
        v32(&v41, v16);
        v38 = v41;
        v39 = v42;
        v40 = v43;
        v20 = sub_213D64EA4(v16, &v38);
        sub_213D91D9C();
        *&v38 = v20;
        swift_beginAccess();
        swift_getAssociatedConformanceWitness();
        sub_213D9187C();
        v21 = v20;
        a2 = v28;
        sub_213D9189C();
        swift_endAccess();
        *&v41 = v21;
        sub_213D91ABC();
        sub_213D91A8C();
        (*v26)(v16, v13);
        ++v17;
        if (v37 == sub_213D91A7C())
        {
          goto LABEL_12;
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
    sub_213D91E8C();

    v23 = sub_213D919EC();

    [a1 addAnnotations_];
  }
}

id sub_213D631C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _SwiftUIMKMapView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_213D6321C(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  type metadata accessor for _DefaultAnnotatedMapContent();
  sub_213D91C7C();
  if (v4 <= 0x3F)
  {
    sub_213D63D90(319, &qword_27C8EC508, &unk_27C8EC510, qword_213D9A120, MEMORY[0x277D83D88]);
    if (v5 <= 0x3F)
    {
      sub_213D63D3C(319, &unk_27C8EBDF0, MEMORY[0x277CDDBB8]);
      if (v6 <= 0x3F)
      {
        sub_213D63D3C(319, &qword_27C8EC520, MEMORY[0x277CDF450]);
        if (v7 <= 0x3F)
        {
          sub_213D63CEC();
          if (v8 <= 0x3F)
          {
            sub_213D63D3C(319, &unk_27C8EBE10, type metadata accessor for MapControlsConfig);
            if (v9 <= 0x3F)
            {
              sub_213D63D90(319, &qword_27C8EA220, &qword_27C8EBE20, &qword_213D98750, MEMORY[0x277CDF468]);
              if (v10 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_213D63400(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v40 = *(a3 + 16);
  v4 = *(v40 - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v41 = v6;
  if (v6 <= 0x7FFFFFFE)
  {
    v6 = 2147483646;
  }

  v7 = v6 - 1;
  if (v6 - 1 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v6 - 1;
  }

  v9 = *(sub_213D90A6C() - 8);
  v10 = v9;
  v11 = *(v9 + 64);
  if (v11 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v9 + 64);
  }

  v42 = v12;
  v13 = *(sub_213D9051C() - 8);
  v14 = *(v13 + 64);
  if (v14 <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = *(v13 + 64);
  }

  v16 = *(v10 + 80);
  v17 = *(v13 + 80);
  v19 = v17 | 7;
  v20 = v16 | 7 | v17;
  v21 = *(v4 + 80);
  if (v5)
  {
    v22 = 7;
  }

  else
  {
    v22 = 8;
  }

  v18 = ((v14 + ((v11 + v17 + ((v16 + 2) & ~v16)) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v23 = v14 + ((v17 + 2) & ~v17) + ((v18 + v17 + ((v20 + v14 + ((v17 + 16) & ~v17) + ((v18 + v19) & ~v19)) & ~v20)) & ~v17) + 6;
  if (v23 <= 8)
  {
    v24 = 8;
  }

  else
  {
    v24 = v23;
  }

  if (!a2)
  {
    return 0;
  }

  v25 = v21 | 7;
  v26 = ((v22 + *(v4 + 64) + ((v21 + 89) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a2)
  {
    goto LABEL_45;
  }

  v27 = ((v24 + ((v20 + ((v15 + ((v42 + v19 + ((v16 + ((v21 + 56) & ~v25) + v26 + 40) & ~(v16 | 7)) + 1) & ~v19) + 8) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v20) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v27 <= 3)
  {
    v28 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v28 = 2;
  }

  if (v28 >= 0x10000)
  {
    v29 = 4;
  }

  else
  {
    v29 = 2;
  }

  if (v28 < 0x100)
  {
    v29 = 1;
  }

  if (v28 >= 2)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (v30 > 1)
  {
    if (v30 == 2)
    {
      v31 = *&a1[v27];
      if (!*&a1[v27])
      {
        goto LABEL_45;
      }
    }

    else
    {
      v31 = *&a1[v27];
      if (!v31)
      {
        goto LABEL_45;
      }
    }

LABEL_41:
    v33 = (v31 - 1) << (8 * v27);
    if (v27 <= 3)
    {
      v34 = *a1;
    }

    else
    {
      v33 = 0;
      v34 = *a1;
    }

    return v8 + (v34 | v33) + 1;
  }

  if (v30)
  {
    v31 = a1[v27];
    if (a1[v27])
    {
      goto LABEL_41;
    }
  }

LABEL_45:
  v35 = &a1[v25 + 56] & ~v25;
  if (v7 < 0x7FFFFFFE)
  {
    v39 = *(v35 + v26 + 24);
    if (v39 >= 0xFFFFFFFF)
    {
      LODWORD(v39) = -1;
    }

    if ((v39 + 1) >= 2)
    {
      return v39;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v36 = (v35 + 79) & 0xFFFFFFFFFFFFFFF8;
    if (v41 > 0x7FFFFFFE)
    {
      v38 = (*(v4 + 48))((v21 + v36 + 17) & ~v21, v5, v40);
      LODWORD(v37) = v38 - 1;
    }

    else
    {
      v37 = *(v36 + 8);
      if (v37 >= 0xFFFFFFFF)
      {
        LODWORD(v37) = -1;
      }

      v38 = v37 + 1;
    }

    if (v38 < 2)
    {
      LODWORD(v37) = 0;
    }

    if (v37 >= 2)
    {
      return (v37 - 1);
    }

    else
    {
      return 0;
    }
  }
}

void sub_213D637C0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v50 = v5;
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v46 = v7;
  if (v7 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  v47 = v7;
  v8 = v7 - 1;
  if (v7 - 1 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v7 - 1;
  }

  v10 = *(sub_213D90A6C() - 8);
  v11 = v10;
  v12 = *(v10 + 64);
  if (v12 <= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v10 + 64);
  }

  v14 = sub_213D9051C();
  v15 = v6;
  v16 = 0;
  v17 = *(v14 - 8);
  v18 = *(v17 + 64);
  v19 = v5;
  if (v18 <= 8)
  {
    v20 = 8;
  }

  else
  {
    v20 = *(v17 + 64);
  }

  v21 = *(v11 + 80);
  v22 = *(v17 + 80);
  v24 = v22 | 7;
  v25 = v21 | 7 | v22;
  v26 = *(v50 + 80);
  if (v15)
  {
    v28 = *(v19 + 64);
  }

  else
  {
    v28 = *(v19 + 64) + 1;
  }

  v29 = ((v26 + 89) & ~v26) + v28;
  v30 = ((v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v31 = (v25 + ((v20 + ((v13 + v24 + ((v21 + ((v26 + 56) & ~(v26 | 7)) + v30 + 40) & ~(v21 | 7)) + 1) & ~v24) + 8) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v25;
  v23 = ((v18 + ((v12 + v22 + ((v21 + 2) & ~v21)) & ~v22) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v32 = v18 + ((v22 + 2) & ~v22) + ((v23 + v22 + ((v25 + v18 + ((v22 + 16) & ~v22) + ((v23 + v24) & ~v24)) & ~v25)) & ~v22) + 6;
  if (v32 <= 8)
  {
    v32 = 8;
  }

  v33 = ((v32 + v31 + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v9 < a3)
  {
    if (v33 <= 3)
    {
      v34 = ((a3 - v9 + 255) >> 8) + 1;
    }

    else
    {
      v34 = 2;
    }

    if (v34 >= 0x10000)
    {
      v35 = 4;
    }

    else
    {
      v35 = 2;
    }

    if (v34 < 0x100)
    {
      v35 = 1;
    }

    if (v34 >= 2)
    {
      v16 = v35;
    }

    else
    {
      v16 = 0;
    }
  }

  if (v9 >= a2)
  {
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        *&a1[v33] = 0;
        if (!a2)
        {
          return;
        }

LABEL_50:
        v27 = v26 | 7;
        v38 = (&a1[v27 + 56] & ~v27);
        if (v8 <= 0x7FFFFFFD)
        {
          v41 = &v38[v30];
          if (a2 > 0x7FFFFFFE)
          {
            v41[2] = 0;
            v41[3] = 0;
            v41[4] = 0;
            *(v41 + 4) = a2 - 0x7FFFFFFF;
          }

          else
          {
            v41[3] = a2;
          }

          return;
        }

        v39 = ((v29 + 7) & 0xFFFFFFF8) + 16;
        if (v8 >= a2)
        {
          if (a2 >= v47)
          {
            if (v39)
            {
              bzero(v38, v39);
              *v38 = a2 - v47;
            }

            return;
          }

          v42 = (v38 + 79) & 0xFFFFFFFFFFFFFFF8;
          if (v46 <= 0x7FFFFFFE)
          {
            if (a2 > 0x7FFFFFFD)
            {
              *v42 = 0;
              *(v42 + 8) = 0;
              *(v42 + 16) = 0;
              *v42 = a2 - 2147483646;
            }

            else
            {
              *(v42 + 8) = a2 + 1;
            }

            return;
          }

          v38 = ((v26 + v42 + 17) & ~v26);
          if (a2 < v46)
          {
            v43 = *(v50 + 56);

            v43(v38, a2 + 2);
            return;
          }

          if (v28 <= 3)
          {
            v44 = ~(-1 << (8 * v28));
          }

          else
          {
            v44 = -1;
          }

          if (!v28)
          {
            return;
          }

          v40 = v44 & (a2 - v46);
          if (v28 <= 3)
          {
            v45 = v28;
          }

          else
          {
            v45 = 4;
          }

          bzero(v38, v28);
          if (v45 <= 2)
          {
            if (v45 == 1)
            {
              *v38 = v40;
            }

            else
            {
              *v38 = v40;
            }

            return;
          }

          if (v45 == 3)
          {
            *v38 = v40;
            v38[2] = BYTE2(v40);
            return;
          }
        }

        else
        {
          if (!v39)
          {
            return;
          }

          v40 = a2 - v47;
          bzero((&a1[v27 + 56] & ~v27), v39);
        }

        *v38 = v40;
        return;
      }

      *&a1[v33] = 0;
    }

    else if (v16)
    {
      a1[v33] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_50;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  v36 = ~v9 + a2;
  bzero(a1, v33);
  if (v33 <= 3)
  {
    v37 = (v36 >> 8) + 1;
  }

  else
  {
    v37 = 1;
  }

  if (v33 <= 3)
  {
    *a1 = v36;
    if (v16 > 1)
    {
LABEL_38:
      if (v16 == 2)
      {
        *&a1[v33] = v37;
      }

      else
      {
        *&a1[v33] = v37;
      }

      return;
    }
  }

  else
  {
    *a1 = v36;
    if (v16 > 1)
    {
      goto LABEL_38;
    }
  }

  if (v16)
  {
    a1[v33] = v37;
  }
}