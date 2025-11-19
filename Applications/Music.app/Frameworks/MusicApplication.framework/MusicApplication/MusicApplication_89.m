uint64_t sub_805B74()
{
  sub_AB9870();
  sub_AB7860();
  sub_AB7810();
  return v1;
}

double sub_805BD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19E08);
  sub_AB77F0();
  return v1;
}

uint64_t CarouselView.init(items:scrollPosition:itemSize:horizontalSpacing:carouselToPageIndicatorSpacing:content:didSelect:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  v48 = a7;
  v49 = a8;
  v46 = a5;
  v47 = a6;
  v45 = a15;
  v44[0] = a17;
  v44[1] = a18;
  v28 = sub_ABA9C0();
  __chkstk_darwin(v28 - 8);
  v30 = v44 - v29;
  v50 = a16;
  v51 = a17;
  v52 = a18;
  v53 = a19;
  v31 = type metadata accessor for CarouselView();
  (*(*(a16 - 8) + 56))(v30, 1, 1, a16);
  property wrapper backing initializer of CarouselView.previousItem(v30);
  v32 = (a9 + v31[24]);
  v54 = 0;
  sub_AB7630();
  v33 = v51;
  *v32 = v50;
  v32[1] = v33;
  v34 = [objc_opt_self() currentTraitCollection];
  v35 = [v34 userInterfaceIdiom];

  v36 = 8.0;
  if (v35 == &dword_4 + 2)
  {
    v36 = 10.0;
  }

  v37 = (a9 + v31[22]);
  *(a9 + v31[25]) = v36;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  result = sub_80BADC(a4, a9 + v31[17]);
  v39 = a9 + v31[18];
  v40 = v47;
  *v39 = v46;
  *(v39 + 1) = v40;
  *(v39 + 2) = a10;
  *(v39 + 3) = a11;
  *(a9 + v31[20]) = a12;
  *(a9 + v31[21]) = a13;
  v41 = (a9 + v31[19]);
  v42 = v49;
  *v41 = v48;
  v41[1] = v42;
  v43 = v45;
  *v37 = a14;
  v37[1] = v43;
  return result;
}

uint64_t property wrapper backing initializer of CarouselView.previousItem(uint64_t a1)
{
  v2 = sub_ABA9C0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_AB7630();
  return (*(v3 + 8))(a1, v2);
}

uint64_t CarouselView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v97 = sub_AB5BB0();
  v89 = *(v97 - 8);
  __chkstk_darwin(v97);
  v88 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *(a1 - 1);
  v96 = *(v86 + 64);
  __chkstk_darwin(v4);
  v95 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[2];
  v7 = sub_AB9870();
  v93 = a1[6];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = a1;
  v9 = a1[7];
  v114 = a1[3];
  *&v115 = v9;
  v10 = v114;
  v99 = v114;
  v11 = v9;
  v94 = v9;
  swift_getOpaqueTypeMetadata2();
  v12 = sub_AB5D50();
  WitnessTable = swift_getWitnessTable();
  v14 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v114 = v7;
  *&v115 = AssociatedTypeWitness;
  *(&v115 + 1) = v12;
  v116 = WitnessTable;
  v117 = AssociatedConformanceWitness;
  sub_AB78D0();
  v114 = v10;
  *&v115 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v113 = &protocol witness table for _FrameLayout;
  v111 = swift_getWitnessTable();
  swift_getWitnessTable();
  v16 = sub_AB56C0();
  v17 = swift_getWitnessTable();
  v114 = v16;
  *&v115 = v17;
  swift_getOpaqueTypeMetadata2();
  v114 = v16;
  *&v115 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = sub_AB5700();
  v19 = swift_getWitnessTable();
  v114 = v18;
  *&v115 = v19;
  swift_getOpaqueTypeMetadata2();
  sub_AB67C0();
  sub_AB5D50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E19C28);
  v20 = sub_AB5D50();
  v21 = sub_AB69F0();
  v114 = v18;
  *&v115 = v19;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_80D428(&qword_E19C30, &type metadata accessor for SafeAreaPaddingModifier);
  v109 = v22;
  v110 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_80BB4C();
  v107 = v24;
  v108 = v25;
  v26 = swift_getWitnessTable();
  v114 = v20;
  *&v115 = v21;
  *(&v115 + 1) = v26;
  v116 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v114 = v20;
  *&v115 = v21;
  *(&v115 + 1) = v26;
  v116 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v28 = swift_getOpaqueTypeConformance2();
  v114 = OpaqueTypeMetadata2;
  *&v115 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v114 = OpaqueTypeMetadata2;
  *&v115 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v114 = v29;
  *&v115 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v114 = v29;
  *&v115 = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v114 = v31;
  *&v115 = v32;
  swift_getOpaqueTypeMetadata2();
  sub_AB5D50();
  v92 = v14;
  v114 = v14;
  v33 = v93;
  v116 = v93;
  *&v34 = v14;
  *(&v34 + 1) = v99;
  v76 = v34;
  v35 = v85;
  v98 = *(v85 + 2);
  v115 = v98;
  type metadata accessor for PageControl();
  sub_AB5D50();
  sub_ABA9C0();
  swift_getTupleTypeMetadata2();
  sub_AB7B40();
  swift_getWitnessTable();
  v36 = sub_AB77B0();
  v80 = *(v36 - 8);
  __chkstk_darwin(v36);
  v71 = &v70 - v37;
  v74 = v36;
  v38 = sub_AB5D50();
  v79 = v38;
  v84 = *(v38 - 8);
  __chkstk_darwin(v38);
  v91 = &v70 - v39;
  v72 = swift_getWitnessTable();
  v105 = v72;
  v106 = &protocol witness table for _AppearanceActionModifier;
  v40 = swift_getWitnessTable();
  v78 = v40;
  v77 = sub_80D428(qword_E19C40, &type metadata accessor for ScrollPosition);
  v114 = v38;
  *&v115 = v97;
  *(&v115 + 1) = v40;
  v116 = v77;
  v81 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v82 = swift_getOpaqueTypeMetadata2();
  v83 = *(v82 - 8);
  __chkstk_darwin(v82);
  v73 = &v70 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v75 = &v70 - v43;
  v44 = v87;
  v100 = v76;
  v101 = v98;
  v45 = v94;
  v102 = v33;
  v103 = v94;
  v104 = v87;
  sub_AB6440();
  sub_AB77A0();
  v46 = v86;
  *&v76 = *(v86 + 16);
  v47 = v95;
  (v76)(v95, v44, v35);
  v48 = (*(v46 + 80) + 64) & ~*(v46 + 80);
  v49 = swift_allocObject();
  v50 = v99;
  *(v49 + 16) = v92;
  *(v49 + 24) = v50;
  *(v49 + 32) = v98;
  *(v49 + 48) = v33;
  *(v49 + 56) = v45;
  v51 = *(v46 + 32);
  v51(v49 + v48, v47, v35);
  v52 = v74;
  v53 = v71;
  sub_AB7320();

  (*(v80 + 8))(v53, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19C20);
  v54 = v88;
  sub_AB77F0();
  v55 = v95;
  (v76)(v95, v44, v35);
  v56 = swift_allocObject();
  v57 = v99;
  *(v56 + 16) = v92;
  *(v56 + 24) = v57;
  *(v56 + 32) = v98;
  v58 = v94;
  *(v56 + 48) = v93;
  *(v56 + 56) = v58;
  v51(v56 + v48, v55, v35);
  v59 = v73;
  v60 = v79;
  v61 = v97;
  v62 = v78;
  v63 = v77;
  v64 = v91;
  sub_AB7330();

  (*(v89 + 8))(v54, v61);
  (*(v84 + 8))(v64, v60);
  v114 = v60;
  *&v115 = v61;
  *(&v115 + 1) = v62;
  v116 = v63;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v75;
  v67 = v82;
  sub_7FF188(v59, v82, v65);
  v68 = *(v83 + 8);
  v68(v59, v67);
  sub_7FF188(v66, v67, v65);
  return (v68)(v66, v67);
}

uint64_t sub_806C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v209 = a1;
  v197 = a8;
  v228 = a2;
  v229 = a4;
  v199 = a4;
  v200 = a5;
  v230 = a5;
  v231 = a6;
  v14 = type metadata accessor for PageControl();
  v148 = *(v14 - 8);
  __chkstk_darwin(v14);
  v146 = (&v145 - v15);
  v208 = v16;
  v17 = sub_AB5D50();
  v191 = *(v17 - 8);
  __chkstk_darwin(v17);
  v149 = &v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v147 = &v145 - v20;
  v195 = v21;
  *&v196 = COERCE_DOUBLE(sub_ABA9C0());
  v192 = *(v196 - 8);
  __chkstk_darwin(v196);
  v194 = &v145 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v193 = &v145 - v24;
  v25 = sub_AB6870();
  v189 = *(v25 - 8);
  v190 = v25;
  __chkstk_darwin(v25);
  v184 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_AB69D0();
  __chkstk_darwin(v27 - 8);
  v186 = &v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_AB69F0();
  v187 = *(v202 - 8);
  __chkstk_darwin(v202);
  v185 = &v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = a2;
  v229 = a3;
  v201 = a3;
  v230 = a4;
  v231 = a5;
  v232 = a6;
  v233 = a7;
  v207 = type metadata accessor for CarouselView();
  v182 = *(v207 - 8);
  v183 = *(v182 + 64);
  __chkstk_darwin(v207);
  v181 = &v145 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19C20);
  __chkstk_darwin(v31 - 8);
  v198 = &v145 - v32;
  v33 = sub_AB9870();
  v210 = a6;
  v212 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v228 = a3;
  v229 = a7;
  v204 = a7;
  swift_getOpaqueTypeMetadata2();
  v35 = sub_AB5D50();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v228 = v33;
  v229 = AssociatedTypeWitness;
  v230 = v35;
  v231 = WitnessTable;
  v232 = AssociatedConformanceWitness;
  sub_AB78D0();
  v38 = v201;
  v228 = v201;
  v229 = a7;
  *&v227[16] = swift_getOpaqueTypeConformance2();
  *&v227[17] = &protocol witness table for _FrameLayout;
  *&v227[15] = swift_getWitnessTable();
  swift_getWitnessTable();
  v39 = sub_AB56C0();
  v40 = swift_getWitnessTable();
  v228 = v39;
  v229 = v40;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v228 = v39;
  v229 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_AB5700();
  v162 = *(v41 - 8);
  __chkstk_darwin(v41);
  v43 = &v145 - v42;
  v44 = swift_getWitnessTable();
  v228 = v41;
  v229 = v44;
  v45 = v44;
  v150 = v44;
  v160 = swift_getOpaqueTypeMetadata2();
  v163 = *(v160 - 8);
  __chkstk_darwin(v160);
  v153 = &v145 - v46;
  sub_AB67C0();
  v47 = sub_AB5D50();
  v165 = *(v47 - 8);
  __chkstk_darwin(v47);
  v203 = &v145 - v48;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E19C28);
  v159 = v47;
  v49 = sub_AB5D50();
  v164 = *(v49 - 8);
  __chkstk_darwin(v49);
  v161 = &v145 - v50;
  v228 = v41;
  v229 = v45;
  v51 = swift_getOpaqueTypeConformance2();
  v152 = v51;
  v52 = sub_80D428(&qword_E19C30, &type metadata accessor for SafeAreaPaddingModifier);
  *&v227[13] = v51;
  *&v227[14] = v52;
  v53 = swift_getWitnessTable();
  v156 = v53;
  v54 = sub_80BB4C();
  *&v227[11] = v53;
  *&v227[12] = v54;
  v55 = swift_getWitnessTable();
  v56 = v49;
  v154 = v49;
  v57 = v202;
  v228 = v49;
  v229 = v202;
  v230 = v55;
  v231 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v58 = v55;
  v155 = v55;
  v59 = swift_getOpaqueTypeMetadata2();
  v179 = *(v59 - 8);
  __chkstk_darwin(v59);
  v151 = &v145 - v60;
  v228 = v56;
  v229 = v57;
  v230 = v58;
  v231 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v61 = swift_getOpaqueTypeConformance2();
  v228 = v59;
  v229 = v61;
  v62 = swift_getOpaqueTypeMetadata2();
  v176 = *(v62 - 8);
  __chkstk_darwin(v62);
  v171 = &v145 - v63;
  v180 = v59;
  v228 = v59;
  v229 = v61;
  v173 = v61;
  v64 = swift_getOpaqueTypeConformance2();
  v228 = v62;
  v229 = v64;
  v65 = swift_getOpaqueTypeMetadata2();
  v172 = *(v65 - 8);
  __chkstk_darwin(v65);
  v166 = v64;
  v167 = &v145 - v66;
  v177 = v62;
  v228 = v62;
  v229 = v64;
  v67 = swift_getOpaqueTypeConformance2();
  v178 = v65;
  v228 = v65;
  v229 = v67;
  v169 = v67;
  v68 = swift_getOpaqueTypeMetadata2();
  v174 = *(v68 - 8);
  __chkstk_darwin(v68);
  v168 = &v145 - v69;
  v175 = v70;
  *&v71 = COERCE_DOUBLE(sub_AB5D50());
  v205 = *(v71 - 8);
  v206 = *&v71;
  __chkstk_darwin(v71);
  v188 = &v145 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v170 = &v145 - v74;
  __chkstk_darwin(v75);
  v211 = &v145 - v76;
  sub_AB6A50();
  v213 = v212;
  v214 = v38;
  v78 = v199;
  v77 = v200;
  v215 = v199;
  v216 = v200;
  v217 = v210;
  v218 = v204;
  v79 = v209;
  v219 = v209;
  sub_AB5710();
  v80 = v207;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19C20);
  v81 = v198;
  sub_AB7810();
  sub_AB7BB0();
  v82 = v153;
  sub_AB7080();
  sub_80D25C(v81);
  (*(v162 + 8))(v43, v41);
  v83 = sub_AB6A90();
  v84 = v80;
  v85 = (v79 + *(v80 + 96));
  v86 = *v85;
  v87 = v85[1];
  v228 = v86;
  v229 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19DF0);
  sub_AB7640();
  v88 = v160;
  sub_8092DC(v83, COERCE__INT64(round(v227[0])), 0);
  (*(v163 + 8))(v82, v88);
  _s3__C6CGSizeVMa_0(0);
  v89 = v181;
  v90 = v182;
  (*(v182 + 16))(v181, v79, v84);
  v91 = (*(v90 + 80) + 64) & ~*(v90 + 80);
  v92 = swift_allocObject();
  v93 = v201;
  v92[2] = v212;
  v92[3] = v93;
  v92[4] = v78;
  v92[5] = v77;
  v94 = v151;
  v95 = v204;
  v92[6] = v210;
  v92[7] = v95;
  v96 = v92 + v91;
  v97 = v184;
  (*(v90 + 32))(v96, v89, v84);
  sub_80D428(&qword_E19DF8, _s3__C6CGSizeVMa_0);
  v98 = v161;
  v99 = v159;
  v100 = v203;
  sub_8096E0();

  (*(v165 + 8))(v100, v99);
  sub_AB69C0();
  v101 = v185;
  sub_AB69E0();
  v102 = v154;
  v103 = v202;
  sub_AB71F0();
  (*(v187 + 8))(v101, v103);
  (*(v164 + 8))(v98, v102);
  sub_AB6860();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  LOBYTE(v101) = sub_AB6A70();
  *(inited + 32) = v101;
  v105 = sub_AB6A50();
  *(inited + 33) = v105;
  sub_AB6A60();
  sub_AB6A60();
  if (sub_AB6A60() != v101)
  {
    sub_AB6A60();
  }

  sub_AB6A60();
  if (sub_AB6A60() != v105)
  {
    sub_AB6A60();
  }

  v106 = v171;
  v107 = v180;
  sub_AB7120();
  (*(v189 + 8))(v97, v190);
  (*(v179 + 8))(v94, v107);
  v108 = v167;
  v109 = v177;
  sub_AB71A0();
  (*(v176 + 8))(v106, v109);
  sub_805B18();
  sub_AB9800();

  v111 = v168;
  v110 = v169;
  v112 = v178;
  sub_AB7070();
  (*(v172 + 8))(v108, v112);
  sub_805BD4();
  sub_AB7A30();
  v228 = v112;
  v229 = v110;
  v113 = swift_getOpaqueTypeConformance2();
  v114 = v170;
  v115 = v175;
  sub_AB7290();
  (*(v174 + 8))(v111, v115);
  *&v227[4] = v113;
  *&v227[5] = &protocol witness table for _FrameLayout;
  v116 = v206;
  v202 = swift_getWitnessTable();
  sub_7FF188(v114, *&v116, v202);
  v117 = v114;
  v118 = v212;
  v203 = *(v205 + 8);
  v204 = v205 + 8;
  (v203)(v117, *&v116);
  sub_805B18();
  v119 = sub_AB9800();

  if (v119 < 2)
  {
    v136 = v194;
    (*(v191 + 56))(v194, 1, 1, v195);
    *&v227[2] = swift_getWitnessTable();
    *&v227[3] = &protocol witness table for _FrameLayout;
    swift_getWitnessTable();
  }

  else
  {
    v120 = sub_805B74();
    v122 = v121;
    v124 = v123;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19C20);
    v125 = v198;
    sub_AB7810();
    v126 = v146;
    *v146 = v120;
    v126[1] = v122;
    v126[2] = v124;
    v228 = v118;
    v229 = v199;
    v230 = v200;
    v231 = v210;
    v127 = type metadata accessor for PageControl();
    sub_80BADC(v125, v126 + *(v127 + 52));
    sub_AB7A30();
    v128 = v208;
    v129 = swift_getWitnessTable();
    v130 = v149;
    sub_AB7290();
    (*(v148 + 8))(v126, v128);
    v220 = v129;
    v221 = &protocol witness table for _FrameLayout;
    v131 = v195;
    v132 = swift_getWitnessTable();
    v133 = v147;
    sub_7FF188(v130, v131, v132);
    v134 = v191;
    v135 = *(v191 + 8);
    v135(v130, v131);
    sub_7FF188(v133, v131, v132);
    v135(v133, v131);
    v136 = v194;
    (*(v134 + 32))(v194, v130, v131);
    (*(v134 + 56))(v136, 0, 1, v131);
  }

  v137 = v193;
  sub_8609E8(v136, v193);
  v138 = v192;
  v139 = *(v192 + 8);
  v140 = *&v196;
  v139(v136, v196);
  v141 = v206;
  v142 = v188;
  (*(v205 + 16))(v188, v211, COERCE_DOUBLE(*&v206));
  v228 = v142;
  (*(v138 + 16))(v136, v137, COERCE_DOUBLE(*&v140));
  v229 = v136;
  v227[0] = v141;
  v227[1] = v140;
  v225 = v202;
  v223 = swift_getWitnessTable();
  v224 = &protocol witness table for _FrameLayout;
  v222 = swift_getWitnessTable();
  v226 = swift_getWitnessTable();
  sub_860684(&v228, 2uLL, v227);
  v139(v137, *&v140);
  v143 = v203;
  (v203)(v211, *&v141);
  v139(v136, *&v140);
  return v143(v142, *&v141);
}

uint64_t sub_8082B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v48 = a5;
  v46 = a4;
  v49 = a1;
  v50 = a8;
  v12 = sub_AB66E0();
  __chkstk_darwin(v12 - 8);
  v47 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_AB9870();
  v45 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = a3;
  v59 = a7;
  swift_getOpaqueTypeMetadata2();
  v16 = sub_AB5D50();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = v14;
  v59 = AssociatedTypeWitness;
  v60 = v16;
  v61 = WitnessTable;
  v62 = AssociatedConformanceWitness;
  v41 = sub_AB78D0();
  v58 = a3;
  v59 = a7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = &protocol witness table for _FrameLayout;
  v64 = swift_getWitnessTable();
  v40 = swift_getWitnessTable();
  v19 = sub_AB56C0();
  v44 = *(v19 - 8);
  __chkstk_darwin(v19);
  v38 = v37 - v20;
  v39 = swift_getWitnessTable();
  v58 = v19;
  v59 = v39;
  v42 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v23 = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v37 - v25;
  v37[2] = sub_AB62E0();
  v27 = a2;
  v58 = a2;
  v59 = a3;
  v28 = a3;
  v29 = v46;
  v30 = v48;
  v60 = v46;
  v61 = v48;
  v31 = v45;
  v62 = v45;
  v63 = a7;
  v37[1] = *(v49 + *(type metadata accessor for CarouselView() + 80));
  v51 = v27;
  v52 = v28;
  v53 = v29;
  v54 = v30;
  v55 = v31;
  v56 = a7;
  v57 = v49;
  sub_80925C();
  v32 = v38;
  sub_AB56B0();
  v33 = v39;
  sub_AB71B0();
  (*(v44 + 8))(v32, v19);
  v58 = v19;
  v59 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  sub_7FF188(v23, OpaqueTypeMetadata2, v34);
  v35 = *(v43 + 8);
  v35(v23, OpaqueTypeMetadata2);
  sub_7FF188(v26, OpaqueTypeMetadata2, v34);
  return (v35)(v26, OpaqueTypeMetadata2);
}

uint64_t sub_8087B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v50 = a4;
  v51 = a5;
  v49 = a1;
  v52 = a8;
  v57 = a2;
  v58 = a3;
  v41 = a3;
  v59 = a4;
  v60 = a5;
  v61 = a6;
  v62 = a7;
  v43 = a7;
  v12 = type metadata accessor for CarouselView();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v42 = v39 - v14;
  v15 = sub_AB9870();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = AssociatedTypeWitness;
  v57 = a3;
  v58 = a7;
  v44 = &opaque type descriptor for <<opaque return type of View.onTapGesture(count:perform:)>>;
  swift_getOpaqueTypeMetadata2();
  v17 = sub_AB5D50();
  v39[1] = v17;
  v47 = v15;
  WitnessTable = swift_getWitnessTable();
  v45 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v57 = v15;
  v58 = AssociatedTypeWitness;
  v59 = v17;
  v60 = WitnessTable;
  v61 = AssociatedConformanceWitness;
  v20 = sub_AB78D0();
  v48 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v40 = v39 - v24;
  v25 = v12;
  v26 = v49;
  v56 = sub_805B18();
  v27 = v42;
  (*(v13 + 16))(v42, v26, v25);
  v28 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = a2;
  v30 = v41;
  v32 = v50;
  v31 = v51;
  *(v29 + 3) = v41;
  *(v29 + 4) = v32;
  *(v29 + 5) = v31;
  *(v29 + 6) = a6;
  v33 = v43;
  *(v29 + 7) = v43;
  (*(v13 + 32))(&v29[v28], v27, v25);
  v57 = v30;
  v58 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = &protocol witness table for _FrameLayout;
  v34 = swift_getWitnessTable();
  sub_AB78C0();
  v53 = v34;
  v35 = swift_getWitnessTable();
  v36 = v40;
  sub_7FF188(v22, v20, v35);
  v37 = *(v48 + 8);
  v37(v22, v20);
  sub_7FF188(v36, v20, v35);
  return (v37)(v36, v20);
}

uint64_t sub_808BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v66 = a5;
  v67 = a6;
  v65 = a4;
  v72 = a7;
  v58 = a3;
  v60 = *(a3 - 8);
  v64 = *(v60 + 64);
  __chkstk_darwin(a1);
  v59 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v10;
  v76 = v11;
  v12 = v11;
  v77 = v13;
  v78 = v14;
  v79 = v15;
  v80 = v16;
  v17 = v16;
  v56 = v16;
  v18 = type metadata accessor for CarouselView();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v52 - v21;
  v68 = *(v12 - 8);
  __chkstk_darwin(v23);
  v53 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v12;
  v76 = v17;
  v69 = &opaque type descriptor for <<opaque return type of View.onTapGesture(count:perform:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v70 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v55 = &v52 - v25;
  v61 = sub_AB5D50();
  v71 = *(v61 - 8);
  __chkstk_darwin(v61);
  v57 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v27);
  v63 = &v52 - v29;
  v30 = v18;
  v52 = v18;
  v31 = *(v18 + 76);
  v54 = a2;
  (*(a2 + v31))(a1, v28);
  v32 = v22;
  (*(v19 + 16))(v22, a2, v30);
  v33 = v60;
  v34 = v59;
  v35 = v58;
  (*(v60 + 16))(v59, a1, v58);
  v36 = (*(v19 + 80) + 64) & ~*(v19 + 80);
  v37 = (v20 + *(v33 + 80) + v36) & ~*(v33 + 80);
  v38 = swift_allocObject();
  *(v38 + 2) = v35;
  *(v38 + 3) = v12;
  v39 = v12;
  v40 = v66;
  *(v38 + 4) = v65;
  *(v38 + 5) = v40;
  v41 = v56;
  *(v38 + 6) = v67;
  *(v38 + 7) = v41;
  (*(v19 + 32))(&v38[v36], v32, v52);
  (*(v33 + 32))(&v38[v37], v34, v35);
  v42 = v55;
  v43 = v53;
  sub_AB7010();

  (*(v68 + 8))(v43, v39);
  sub_805BD4();
  sub_805BD4();
  sub_AB7A30();
  v75 = v39;
  v76 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v57;
  v46 = OpaqueTypeMetadata2;
  sub_AB7290();
  (*(v70 + 8))(v42, v46);
  v73 = OpaqueTypeConformance2;
  v74 = &protocol witness table for _FrameLayout;
  v47 = v61;
  WitnessTable = swift_getWitnessTable();
  v49 = v63;
  sub_7FF188(v45, v47, WitnessTable);
  v50 = *(v71 + 8);
  v50(v45, v47);
  sub_7FF188(v49, v47, WitnessTable);
  return (v50)(v49, v47);
}

uint64_t sub_8091B4(uint64_t a1, char a2)
{
  v2 = 0;
  if (a2)
  {
    v2 = sub_AB7A90();
  }

  __chkstk_darwin(v2);
  sub_AB5B00();
}

uint64_t sub_80925C()
{
  sub_AB66E0();
  sub_80D428(&unk_E19E10, &type metadata accessor for PinnedScrollableViews);
  return sub_ABB6C0();
}

uint64_t sub_8092DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_AB67C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0uLL;
  v9 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_AB5690();
    *(&v8 + 1) = v10;
    *(&v9 + 1) = v11;
  }

  v13[0] = v8;
  v13[1] = v9;
  v14 = a3 & 1;
  sub_AB67B0();
  sub_AB7310();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_809418@<X0>(void *a1@<X8>)
{
  result = sub_AB5A10();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_809444(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a8;
  v15 = sub_ABA9C0();
  v30 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  v18 = *(a3 - 8);
  __chkstk_darwin(v19);
  v29 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = v31;
  v22 = type metadata accessor for CarouselView();
  v23 = (v21 - sub_805BD4()) * 0.5;
  v24 = (a2 + *(v22 + 96));
  v25 = *v24;
  v26 = v24[1];
  v33 = *v24;
  v34 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19DF0);
  sub_AB7640();
  if (v32 != v23)
  {
    v32 = v23;
    v33 = v25;
    v34 = v26;
    sub_AB7650();
  }

  sub_AB7670();
  sub_AB7640();
  if ((*(v18 + 48))(v17, 1, a3) == 1)
  {
    return (*(v30 + 8))(v17, v15);
  }

  v28 = v29;
  (*(v18 + 32))(v29, v17, a3);
  sub_8091B4(v28, 0);
  return (*(v18 + 8))(v28, a3);
}

uint64_t sub_8096E0()
{

  sub_AB67D0();
  sub_AB67E0();
  sub_AB7310();
}

uint64_t sub_8097BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a5;
  v36 = a7;
  v34 = a4;
  v37 = a1;
  v10 = sub_ABA9C0();
  v30 = *(v10 - 8);
  v31 = v10;
  __chkstk_darwin(v10);
  v33 = &v28 - v11;
  v32 = *(a2 - 8);
  __chkstk_darwin(v12);
  v29 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_AB5BB0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_ABA9C0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v28 - v21;
  v38 = a2;
  v39 = a3;
  v40 = v34;
  v41 = v35;
  v42 = a6;
  v43 = v36;
  v36 = type metadata accessor for CarouselView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19C20);
  sub_AB77F0();
  swift_getAssociatedConformanceWitness();
  sub_AB5B90();
  (*(v15 + 8))(v17, v14);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v22, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v20 + 8))(v22, v19);
  }

  v23 = v19;
  v38 = sub_805B18();
  sub_AB9870();
  swift_getWitnessTable();
  v24 = v33;
  sub_AB9CF0();
  v25 = v32;
  if ((*(v32 + 48))(v24, 1, a2) == 1)
  {
    (*(v20 + 8))(v22, v23);
    (*(v30 + 8))(v24, v31);
  }

  else
  {
    v27 = v29;
    (*(v25 + 32))(v29, v24, a2);

    sub_8091B4(v27, 0);
    (*(v25 + 8))(v27, a2);
    return (*(v20 + 8))(v22, v23);
  }
}

uint64_t sub_809C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v54 = a6;
  v55 = a7;
  v53 = a5;
  v57 = a3;
  v11 = sub_ABA9C0();
  v51 = *(v11 - 8);
  v52 = v11;
  __chkstk_darwin(v11);
  v49 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v48 = &v43 - v14;
  v50 = *(a4 - 8);
  __chkstk_darwin(v15);
  v56 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_ABA9C0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v43 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v23);
  v25 = &v43 - v24;
  swift_getAssociatedConformanceWitness();
  sub_AB5B90();
  if ((*(v22 + 48))(v21, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v19 + 8))(v21, v18);
  }

  (*(v22 + 32))(v25, v21, AssociatedTypeWitness);
  v27 = a8;
  v28 = v53;
  v59 = a4;
  v60 = v53;
  v46 = v22;
  v47 = v25;
  v30 = v54;
  v29 = v55;
  v61 = v54;
  v62 = v55;
  v63 = v27;
  v64 = a9;
  v44 = type metadata accessor for CarouselView();
  v31 = sub_805B18();
  v45 = &v43;
  v58 = v31;
  __chkstk_darwin(v31);
  *(&v43 - 8) = a4;
  *(&v43 - 7) = v28;
  *(&v43 - 6) = v30;
  *(&v43 - 5) = v29;
  v32 = v47;
  *(&v43 - 4) = v27;
  *(&v43 - 3) = a9;
  *(&v43 - 2) = v32;
  sub_AB9870();
  swift_getWitnessTable();
  sub_AB9CC0();

  if (v60 == 1)
  {
    return (*(v46 + 8))(v32, AssociatedTypeWitness);
  }

  v33 = v59;
  v34 = v44;
  v35 = v57;
  sub_805B18();
  v36 = v56;
  v55 = v33;
  sub_AB9880();

  v37 = v50;
  v38 = v48;
  (*(v50 + 16))(v48, v36, a4);
  (*(v37 + 56))(v38, 0, 1, a4);
  v40 = v51;
  v39 = v52;
  (*(v51 + 16))(v49, v38, v52);
  sub_AB7670();
  sub_AB7650();
  (*(v40 + 8))(v38, v39);
  v41 = (v35 + *(v34 + 88));
  v42 = v56;
  if (*v41)
  {
    (*v41)(v55, v56);
  }

  (*(v37 + 8))(v42, a4);
  return (*(v46 + 8))(v47, AssociatedTypeWitness);
}

uint64_t sub_80A194()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v3 = &v6 - v2;
  sub_ABADB0();
  swift_getAssociatedConformanceWitness();
  v4 = sub_AB91C0();
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return v4 & 1;
}

uint64_t sub_80A2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a6;
  v21 = a8;
  v12 = sub_AB5BB0();
  __chkstk_darwin(v12 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v15 = v19 - v14;
  sub_ABADB0();
  sub_AB7BB0();
  v19[1] = v17;
  v19[2] = v16;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = v20;
  v27 = a7;
  v28 = v21;
  type metadata accessor for CarouselView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19C20);
  sub_AB77F0();
  swift_getAssociatedConformanceWitness();
  sub_AB5BA0();
  (*(v22 + 8))(v15, AssociatedTypeWitness);
  return sub_AB7800();
}

void *sub_80A4DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19C20);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  v5 = *(a1 + 32);
  v13[0] = *(a1 + 16);
  v13[1] = v5;
  type metadata accessor for PageControl.Coordinator();
  v6 = sub_805B74();
  v8 = v7;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19C20);
  sub_AB7810();
  v11 = swift_allocObject();
  v11[2] = v6;
  v11[3] = v8;
  v11[4] = v10;
  sub_80BADC(v4, v11 + qword_E19CE8);
  return v11;
}

void *sub_80A5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_80BADC(a4, v8 + qword_E19CE8);
  return v8;
}

uint64_t sub_80A664(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_AB5BB0();
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v57 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v60 = *(a3 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = sub_ABA9C0();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v56 = &v49 - v11;
  v63 = AssociatedTypeWitness;
  v62 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v12);
  v52 = &v49 - v13;
  v54 = *(v9 - 8);
  __chkstk_darwin(v14);
  v69 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v66 = sub_ABA9C0();
  v53 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19C20);
  __chkstk_darwin(v20 - 8);
  v22 = &v49 - v21;
  swift_getWitnessTable();
  sub_AB68B0();
  sub_AB68A0();
  v23 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19C20);
  sub_AB7810();
  v24 = qword_E19CE8;
  swift_beginAccess();
  v55 = v23;
  sub_80CFFC(v22, v23 + v24);
  swift_endAccess();
  v25 = [a1 numberOfPages];
  sub_805B18();
  v26 = sub_AB9800();

  if (v25 != v26)
  {
    sub_805B18();
    v27 = sub_AB9800();

    [a1 setNumberOfPages:v27];
  }

  v64 = a1;
  v68 = a3;
  v61 = v4;
  v72 = sub_805B18();
  v28 = v9;
  v29 = sub_AB9870();
  swift_getWitnessTable();
  sub_AB95D0();

  v70 = v71;
  sub_ABB050();
  sub_ABB020();
  v49 = v29;
  sub_ABB040();
  v30 = (v53 + 32);
  v31 = TupleTypeMetadata2;
  v32 = (v54 + 32);
  v33 = (v54 + 8);
  while (1)
  {
    v34 = v65;
    sub_ABB030();
    (*v30)(v19, v34, v66);
    if ((*(*(v31 - 8) + 48))(v19, 1, v31) == 1)
    {
      break;
    }

    v35 = *v19;
    (*v32)(v69, &v19[*(v31 + 48)], v28);
    v36 = (*(*(v68 + 24) + 8))(v28);
    if (v36)
    {
      v37 = v36;
      [v64 setIndicatorImage:v36 forPage:v35];
    }

    (*v33)(v69, v28);
    v31 = TupleTypeMetadata2;
  }

  v38 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19C20);
  v39 = v57;
  sub_AB77F0();
  v40 = v60;
  v41 = v28;
  v42 = v63;
  swift_getAssociatedConformanceWitness();
  v43 = v56;
  sub_AB5B90();
  (*(v58 + 8))(v39, v59);
  v44 = v62;
  if ((*(v62 + 48))(v43, 1, v42) == 1)
  {

    return (*(v50 + 8))(v43, v51);
  }

  else
  {
    v46 = v52;
    (*(v44 + 32))(v52, v43, v42);
    v71 = sub_805B18();
    __chkstk_darwin(v71);
    *(&v49 - 6) = v41;
    *(&v49 - 5) = *(v38 + 24);
    *(&v49 - 3) = v40;
    *(&v49 - 2) = v46;
    swift_getWitnessTable();
    sub_AB9CC0();

    if (v73 != 1)
    {
      v47 = v72;
      v48 = v64;
      if ([v64 currentPage] != v47)
      {
        [v48 setCurrentPage:v47];
      }
    }

    return (*(v44 + 8))(v46, v42);
  }
}

uint64_t sub_80AED0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v3 = &v6 - v2;
  sub_ABADB0();
  swift_getAssociatedConformanceWitness();
  v4 = sub_AB91C0();
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return v4 & 1;
}

uint64_t sub_80B018(void *a1)
{
  v2 = v1;
  v59 = *(*v2 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v51 = &v45 - v5;
  v6 = sub_ABA9C0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v49 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v54 = &v45 - v8;
  v9 = sub_AB5BB0();
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin(v9);
  v58 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19C20);
  __chkstk_darwin(v57);
  v56 = &v45 - v11;
  v63 = *(v6 - 8);
  __chkstk_darwin(v12);
  v50 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  __chkstk_darwin(v17);
  v61 = &v45 - v18;
  v62 = sub_AB7860();
  v55 = *(v62 - 8);
  *&v19 = __chkstk_darwin(v62).n128_u64[0];
  v60 = &v45 - v20;
  v21 = [a1 currentPage];
  v67 = *(v2 + 16);
  v68 = *(v2 + 24);
  sub_AB9870();
  sub_AB7860();
  swift_getWitnessTable();
  result = sub_AB7830();
  if (v21 >= v65 && v21 < v66)
  {
    v67 = *(v2 + 16);
    v68 = *(v2 + 24);
    v65 = v21;
    v48 = TupleTypeMetadata2;
    sub_AB7840();
    v23 = qword_E19CE8;
    swift_beginAccess();
    v46 = v23;
    v24 = v2 + v23;
    v25 = v56;
    sub_80D1EC(v24, v56);
    v26 = v58;
    sub_AB77F0();
    sub_80D25C(v25);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_AB5B90();
    (*(v52 + 8))(v26, v53);
    sub_AB7850();
    v27 = v64;
    (*(v64 + 56))(v16, 0, 1, AssociatedTypeWitness);
    v28 = *(v48 + 48);
    v29 = v63;
    v30 = *(v63 + 16);
    v31 = v54;
    v30();
    v53 = v28;
    (v30)(&v31[v28], v16, v6);
    v32 = *(v27 + 48);
    if (v32(v31, 1, AssociatedTypeWitness) == 1)
    {
      v33 = *(v29 + 8);
      v33(v16, v6);
      if (v32(&v31[v53], 1, AssociatedTypeWitness) == 1)
      {
        v33(v31, v6);
LABEL_11:
        v33(v61, v6);
        return (*(v55 + 8))(v60, v62);
      }
    }

    else
    {
      v34 = v50;
      (v30)(v50, v31, v6);
      v35 = v53;
      if (v32(&v31[v53], 1, AssociatedTypeWitness) != 1)
      {
        v40 = v64;
        v41 = &v31[v35];
        v42 = v51;
        (*(v64 + 32))(v51, v41, AssociatedTypeWitness);
        v43 = sub_AB91C0();
        v44 = *(v40 + 8);
        v44(v42, AssociatedTypeWitness);
        v33 = *(v63 + 8);
        v33(v16, v6);
        v44(v50, AssociatedTypeWitness);
        v33(v31, v6);
        if (v43)
        {
          goto LABEL_11;
        }

LABEL_9:
        v36 = v56;
        sub_80D1EC(v2 + v46, v56);
        v37 = v51;
        v38 = v62;
        v39 = v60;
        sub_AB7850();
        sub_AB77F0();
        sub_AB5BA0();
        (*(v64 + 8))(v37, AssociatedTypeWitness);
        sub_AB7800();
        sub_80D25C(v36);
        v33(v61, v6);
        return (*(v55 + 8))(v39, v38);
      }

      v33 = *(v63 + 8);
      v33(v16, v6);
      (*(v64 + 8))(v34, AssociatedTypeWitness);
    }

    (*(v49 + 8))(v31, v48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_80B870(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_80B018(v3);
}

uint64_t sub_80B8C0()
{

  sub_80D25C(v0 + qword_E19CE8);
  return v0;
}

uint64_t sub_80B914()
{
  sub_80B8C0();

  return swift_deallocClassInstance();
}

void *sub_80B97C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_80A4DC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_80B9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_80BA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_80BA9C()
{
  swift_getWitnessTable();
  sub_AB65B0();
  __break(1u);
}

uint64_t sub_80BADC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19C20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_80BB4C()
{
  result = qword_E19C38;
  if (!qword_E19C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E19C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E19C38);
  }

  return result;
}

uint64_t sub_80BBE4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = *(type metadata accessor for CarouselView() - 8);
  v8 = v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_8097BC(v8, v1, v2, v3, v4, v5, v6);
}

uint64_t sub_80BCA0(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = *(type metadata accessor for CarouselView() - 8);
  return sub_809C2C(a1, a2, v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80)), v5, v6, v7, v8, v9, v10);
}

void sub_80BDBC()
{
  sub_AB9870();
  sub_AB7860();
  if (v0 <= 0x3F)
  {
    sub_80C610(319, &qword_E19CC8, &type metadata accessor for ScrollPosition);
    if (v1 <= 0x3F)
    {
      sub_80C610(319, &qword_E19CD0, _s3__C6CGSizeVMa_0);
      if (v2 <= 0x3F)
      {
        sub_7FD734();
        if (v3 <= 0x3F)
        {
          sub_80C664();
          if (v4 <= 0x3F)
          {
            sub_ABA9C0();
            sub_AB7670();
            if (v5 <= 0x3F)
            {
              sub_80C6C8();
              if (v6 <= 0x3F)
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

uint64_t sub_80BF2C(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_AB5BB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v8 >= 0)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v7 + 80);
  v14 = v12 - 1;
  if (!v12)
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v14 = v10;
  }

  if (v12)
  {
    v15 = 7;
  }

  else
  {
    v15 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v13 | 7;
  v17 = ((v13 + 16) & ~v13) + *(*(v6 - 8) + 64) + 7;
  v18 = *(v11 + 80) & 0xF8;
  v19 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 23;
  if (v14 >= a2)
  {
    goto LABEL_37;
  }

  v21 = ((((v15 + *(v11 + 64)) & 0xFFFFFFFFFFFFFFF8) + ((v20 + ((((((((((v17 + ((v13 + 24) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v22 = v21 & 0xFFFFFFF8;
  if ((v21 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = a2 - v14 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_37;
      }
    }

LABEL_34:
    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v14 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v21);
    if (v26)
    {
      goto LABEL_34;
    }
  }

LABEL_37:
  if (v14 == 0x7FFFFFFF)
  {
    v30 = *(a1 + 1);
    if (v30 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    return (v30 + 1);
  }

  else
  {
    v31 = (a1 + v16 + 24) & ~v16;
    if (v14 == v9)
    {
      v32 = *(v7 + 48);

      return v32((v13 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13);
    }

    else
    {
      v33 = (*(v11 + 48))((v20 + ((((((((((v17 + v31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19, v12);
      if (v33 >= 2)
      {
        return v33 - 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_80C214(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_AB5BB0();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v11 >= 0)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v10 + 80);
  v17 = *(v14 + 80);
  v18 = v15 - 1;
  if (!v15)
  {
    v18 = 0;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= v13)
  {
    v20 = v13;
  }

  else
  {
    v20 = v19;
  }

  v21 = ((v16 + 16) & ~v16) + *(*(v8 - 8) + 64) + 7;
  v22 = ~(v17 & 0xF8) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v17 & 0xF8) + 23;
  if (v15)
  {
    v24 = *(v14 + 64);
  }

  else
  {
    v24 = *(v14 + 64) + 1;
  }

  v25 = ((((v24 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v22) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v20 < a3)
  {
    if (((((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v22) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v26 = a3 - v20 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v9 = v27;
    }

    else
    {
      v9 = 0;
    }
  }

  if (a2 > v20)
  {
    if (((((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v22) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v28 = a2 - v20;
    }

    else
    {
      v28 = 1;
    }

    if (((((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v22) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v29 = ~v20 + a2;
      bzero(a1, v25);
      *a1 = v29;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        *(a1 + v25) = v28;
      }

      else
      {
        *(a1 + v25) = v28;
      }
    }

    else if (v9)
    {
      *(a1 + v25) = v28;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *(a1 + v25) = 0;
LABEL_47:
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!v9)
  {
    goto LABEL_47;
  }

  *(a1 + v25) = 0;
  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v20 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      a1[1] = 0;
      a1[2] = 0;
      *a1 = a2 & 0x7FFFFFFF;
    }

    else
    {
      a1[1] = (a2 - 1);
    }
  }

  else
  {
    v30 = (a1 + (v16 | 7) + 24) & ~(v16 | 7);
    if (v12 == v20)
    {
      v31 = *(v10 + 56);

      v31((v16 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16, a2, v11, v8);
    }

    else
    {
      v32 = v23 + ((((((((((v21 + v30) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      v33 = (v32 & v22);
      if (v19 >= a2)
      {
        if (v18 >= a2)
        {
          v39 = *(v14 + 56);

          v39(v32 & v22, (a2 + 1));
        }

        else
        {
          if (v24 <= 3)
          {
            v36 = ~(-1 << (8 * v24));
          }

          else
          {
            v36 = -1;
          }

          if (v24)
          {
            v37 = v36 & (~v18 + a2);
            if (v24 <= 3)
            {
              v38 = v24;
            }

            else
            {
              v38 = 4;
            }

            bzero(v33, v24);
            if (v38 > 2)
            {
              if (v38 == 3)
              {
                *v33 = v37;
                v33[2] = BYTE2(v37);
              }

              else
              {
                *v33 = v37;
              }
            }

            else if (v38 == 1)
            {
              *v33 = v37;
            }

            else
            {
              *v33 = v37;
            }
          }
        }
      }

      else
      {
        v34 = (v24 + 7) & 0xFFFFFFF8;
        if (v34 != -8)
        {
          v35 = ~v19 + a2;
          bzero(v33, (v34 + 8));
          *v33 = v35;
        }
      }
    }
  }
}

void sub_80C610(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_AB7860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_80C664()
{
  if (!qword_E19CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C490);
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E19CD8);
    }
  }
}

void sub_80C6C8()
{
  if (!qword_E19CE0)
  {
    v0 = sub_AB7670();
    if (!v1)
    {
      atomic_store(v0, &qword_E19CE0);
    }
  }
}

void sub_80C718()
{
  sub_80C610(319, &qword_E19CC8, &type metadata accessor for ScrollPosition);
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_80C7E8()
{
  sub_AB9870();
  swift_getAssociatedTypeWitness();
  swift_getOpaqueTypeMetadata2();
  sub_AB5D50();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_AB78D0();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_AB56C0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_AB5700();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_AB67C0();
  sub_AB5D50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E19C28);
  sub_AB5D50();
  sub_AB69F0();
  swift_getOpaqueTypeConformance2();
  sub_80D428(&qword_E19C30, &type metadata accessor for SafeAreaPaddingModifier);
  swift_getWitnessTable();
  sub_80BB4C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_AB5D50();
  type metadata accessor for PageControl();
  sub_AB5D50();
  sub_ABA9C0();
  swift_getTupleTypeMetadata2();
  sub_AB7B40();
  swift_getWitnessTable();
  sub_AB77B0();
  sub_AB5D50();
  sub_AB5BB0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_80D428(qword_E19C40, &type metadata accessor for ScrollPosition);
  return swift_getOpaqueTypeConformance2();
}

void sub_80CD9C()
{
  sub_AB9870();
  sub_AB7860();
  if (v0 <= 0x3F)
  {
    sub_80C610(319, &qword_E19CC8, &type metadata accessor for ScrollPosition);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_80CE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19C20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_80CF30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19C20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_80CFFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19C20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_80D094(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(UIPageControl) init];
  type metadata accessor for PageControl();
  swift_getWitnessTable();
  sub_AB68B0();
  sub_AB68A0();
  [v3 addTarget:a2 action:"updateCurrentPage:" forControlEvents:4096];

  v4 = objc_opt_self();
  v5 = [v4 systemFillColor];
  [v3 setPageIndicatorTintColor:v5];

  v6 = [v4 labelColor];
  [v3 setCurrentPageIndicatorTintColor:v6];

  return v3;
}

uint64_t sub_80D1EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_80D25C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_80D330(double *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(type metadata accessor for CarouselView() - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_809444(a1, v10, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_80D428(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_22()
{
  v9 = *(v0 + 16);
  v1 = type metadata accessor for CarouselView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[17];

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19C20) + 32);
  v5 = sub_AB5BB0();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  if (*(v2 + v1[22]))
  {
  }

  v6 = v2 + v1[23];
  v7 = *(v9 - 8);
  if (!(*(v7 + 48))(v6, 1, v9))
  {
    (*(v7 + 8))(v6, v9);
  }

  sub_ABA9C0();
  sub_AB7670();

  return swift_deallocObject();
}

uint64_t sub_80D6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = *(type metadata accessor for CarouselView() - 8);
  v10 = v2 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_808BD4(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_80D78C()
{
  v11 = *(v0 + 16);
  v1 = type metadata accessor for CarouselView();
  v10 = *(*(v1 - 1) + 64);
  v2 = (*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80);
  v3 = *(v11 - 8);
  v4 = *(v3 + 80);

  v5 = v0 + v2 + v1[17];

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19C20) + 32);
  v7 = sub_AB5BB0();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  if (*(v0 + v2 + v1[22]))
  {
  }

  v8 = v0 + v2 + v1[23];
  if (!(*(v3 + 48))(v8, 1, v11))
  {
    (*(v3 + 8))(v8, v11);
  }

  sub_ABA9C0();
  sub_AB7670();

  (*(v3 + 8))(v0 + ((v2 + v10 + v4) & ~v4), v11);
  return swift_deallocObject();
}

uint64_t sub_80DA18()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for CarouselView() - 8);
  v3 = (((*(v2 + 80) + 64) & ~*(v2 + 80)) + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  type metadata accessor for CarouselView();
  return sub_8091B4(v0 + v3, 1);
}

void CircularProgressView.setState(_:animated:)(uint64_t a1, int a2, char a3)
{
  v5 = &v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state];
  if ((a2 & 0x10000) != 0)
  {
    if (v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10])
    {
      return;
    }

    *v5 = *&a1;
    *(v5 + 4) = a2;
    v5[10] = 1;
    if (a3)
    {
      v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
      goto LABEL_13;
    }
  }

  else
  {
    if ((v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10] & 1) == 0)
    {
      v16 = *v5;
      v17 = *(v5 + 4);
      if ((a2 & 0x100) != 0)
      {
        if (a1 | a2)
        {
          if ((*(v5 + 4) & 0x100) != 0 && *&v16 | *(v5 + 4))
          {
            return;
          }
        }

        else if ((*(v5 + 4) & 0x100) != 0 && !(*&v16 | *(v5 + 4)))
        {
          return;
        }
      }

      else if ((*(v5 + 4) & 0x100) == 0)
      {
        if (a2)
        {
          if (v17)
          {
            return;
          }
        }

        else if ((v17 & 1) == 0 && *&a1 == v16)
        {
          return;
        }
      }
    }

    *v5 = *&a1;
    *(v5 + 4) = a2;
    v5[10] = 0;
    if (a3)
    {
      v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
      LOBYTE(v7) = a2;
      if ((a2 & 0x100) == 0)
      {
        goto LABEL_5;
      }

LABEL_23:
      if (a1 | v7)
      {
        [v6 setOpacity:0.0];
        if (a3)
        {
          return;
        }
      }

      else if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
      {
        v20 = swift_allocObject();
        *(v20 + 16) = v3;
        *(v20 + 24) = v6;
        v21 = v3;
        v22 = v6;

        sub_80F85C(sub_80FD70, v20, 1.0);

        if (a3)
        {
          return;
        }
      }

      else
      {
        [v6 setStrokeEnd:1.0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_AF82B0;
        sub_13C80(0, &qword_E19E40);
        *(v23 + 32) = sub_ABA770(4);
        isa = sub_AB9740().super.isa;

        [v6 setLineDashPattern:isa];

        if (a3)
        {
          return;
        }
      }

      goto LABEL_46;
    }
  }

  v13 = objc_opt_self();
  [v13 begin];
  [v13 setDisableActions:1];
  v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  if (v5[10])
  {
LABEL_13:
    [v6 setLineDashPattern:0];
    if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v3;
      v15 = v3;

      sub_80F85C(sub_80EDD8, v14, 0.0);

      goto LABEL_15;
    }

LABEL_40:
    if (a3)
    {
      return;
    }

    goto LABEL_46;
  }

  a1 = *v5;
  v7 = *(v5 + 4);
  if ((v7 & 0x100) != 0)
  {
    goto LABEL_23;
  }

LABEL_5:
  v8 = *&a1;
  [v6 setLineDashPattern:0];
  LODWORD(v9) = 1.0;
  [v6 setOpacity:v9];
  if ((v7 & 1) == 0)
  {
    if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v3;

      v19 = v3;
      sub_80F85C(sub_81034C, v18, v8);

      if (a3)
      {
        return;
      }

      goto LABEL_46;
    }

    [v6 setStrokeEnd:v8];
    goto LABEL_40;
  }

  v10 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator;
  v11 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator];
  if (!v11)
  {
    type metadata accessor for CircularProgressView.SpinAnimator();
    v11 = swift_allocObject();
    *(v11 + 40) = 0;
    *(v11 + 16) = 0xD000000000000010;
    *(v11 + 24) = 0x8000000000B75250;
    *(v11 + 32) = v6;
    v12 = v6;
  }

  *&v3[v10] = v11;

  sub_80F544();
LABEL_15:

  if (a3)
  {
    return;
  }

LABEL_46:
  v25 = objc_opt_self();

  [v25 commit];
}

uint64_t static CircularProgressView.State.__derived_enum_equals(_:_:)(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if ((a2 & 0x100) != 0)
  {
    v5 = (a3 | a4) == 0;
    if ((a4 & 0x100) == 0)
    {
      v5 = 0;
    }

    v6 = (a3 | a4) != 0;
    if ((a4 & 0x100) == 0)
    {
      v6 = 0;
    }

    if (a1 | a2)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if ((a4 & 0x100) == 0)
    {
      if (a2)
      {
        if (a4)
        {
          return 1;
        }
      }

      else if ((a4 & 1) == 0 && *&a1 == *&a3)
      {
        return 1;
      }
    }

    return 0;
  }
}

BOOL sub_80E074(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (*&v2 | v3)
    {
      if (*(a2 + 9))
      {
        return (*&v4 | v5) != 0;
      }
    }

    else if (*(a2 + 9))
    {
      return (*&v4 | v5) == 0;
    }

    return 0;
  }

  if ((*(a2 + 9) & 1) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

char *CircularProgressView.init(size:)(double a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state];
  *v6 = 0;
  *(v6 + 4) = 0;
  v6[10] = 1;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image] = 0;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView] = 0;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale] = 0x3FE0000000000000;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator] = 0;
  v7 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  *&v2[v7] = [objc_allocWithZone(CAShapeLayer) init];
  v8 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  *&v2[v8] = [objc_allocWithZone(CAShapeLayer) init];
  v9 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize];
  *v9 = a1;
  v9[1] = a2;
  v25.receiver = v2;
  v25.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, a1, a2);
  v11 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  v12 = *&v10[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v13 = objc_opt_self();
  v14 = v10;
  v15 = v12;
  v16 = [v13 clearColor];
  v17 = [v16 CGColor];

  [v15 setFillColor:v17];
  [*&v10[v11] setLineWidth:2.5];
  v18 = [v14 layer];
  [v18 addSublayer:*&v10[v11]];

  v19 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  [*&v14[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer] setLineCap:kCALineCapRound];
  [*&v14[v19] setStrokeEnd:0.0];
  v20 = *&v14[v19];
  v21 = [v13 clearColor];
  v22 = [v21 CGColor];

  [v20 setFillColor:v22];
  [*&v14[v19] setLineWidth:2.5];
  [*&v14[v19] setLineDashPhase:6.0];
  v23 = [v14 layer];

  [v23 addSublayer:*&v14[v19]];
  sub_80E3D4();

  return v14;
}

void sub_80E3D4()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v2 = [objc_opt_self() tertiarySystemFillColor];
  v3 = [v2 CGColor];

  [v1 setStrokeColor:v3];
  v4 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  v5 = [v0 tintColor];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 CGColor];

    [v4 setStrokeColor:v7];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CircularProgressView.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "tintColorDidChange");
  sub_80E3D4();
}

Swift::Void __swiftcall CircularProgressView.layoutSubviews()()
{
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "layoutSubviews");
  [v0 bounds];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v5 = CGRectGetWidth(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v6 = CGRectGetHeight(v26);
  if (v6 >= v5)
  {
    v6 = v5;
  }

  v7 = (v6 + -2.5) * 0.5;
  sub_ABA4C0();
  v10 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v8 startAngle:v9 endAngle:v7 clockwise:{-1.57079633, 4.71238898}];
  v11 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v12 = [v10 CGPath];
  [v11 setPath:v12];

  v13 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  v14 = [v10 CGPath];
  [v13 setPath:v14];

  [v13 setBounds:{x, y, width, height}];
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v15 = CGRectGetWidth(v27) * 0.5;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  [v13 setPosition:{v15, CGRectGetHeight(v28) * 0.5}];
  v16 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
  v17 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView];
  if (v17)
  {
    [v17 setFrame:{x, y, width, height}];
    v18 = *&v0[v16];
    if (v18)
    {
      v19 = v18;
      [v19 frame];
      v20 = CGRectGetWidth(v29);
      [v19 frame];
      v21 = CGRectGetHeight(v30);
      if (v21 < v20)
      {
        v20 = v21;
      }

      v22 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
      swift_beginAccess();
      v23 = [objc_opt_self() configurationWithPointSize:v20 * *&v0[v22]];
      [v19 setPreferredSymbolConfiguration:v23];
    }
  }
}

double CircularProgressView.sizeThatFits(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize;
  swift_beginAccess();
  return *v1;
}

id CircularProgressView.preferredSize.setter(double a1, double a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize];
  result = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (v7 != a1 || v8 != a2)
  {
    return [v2 invalidateIntrinsicContentSize];
  }

  return result;
}

void (*CircularProgressView.preferredSize.modify(uint64_t *a1))(id **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_80EA98;
}

void sub_80EA98(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v3 = ((*a1)[6] + (*a1)[5]);
  v4 = *(*a1 + 4);
  v5 = *v3;
  v6 = v3[1];
  *v3 = v2;
  v3[1] = v4;
  if (v2 != v5 || v4 != v6)
  {
    [v1[5] invalidateIntrinsicContentSize];
  }

  free(v1);
}

void (*CircularProgressView.state.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 8);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10);
  *a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state);
  *(a1 + 8) = v2;
  *(a1 + 10) = v3;
  return sub_80EB88;
}

double sub_80EBCC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator);
  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF82B0;
  sub_13C80(0, &qword_E19E40);
  *(v8 + 32) = sub_ABA770(4);
  isa = sub_AB9740().super.isa;

  [a3 setLineDashPattern:isa];

  v10 = a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  result = 0.0;
  if ((*(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10) & 1) == 0)
  {
    v12 = *v10;
    v13 = *(v10 + 8);
    if ((v13 & 0x100) != 0)
    {
      if (!(*&v12 | v13))
      {
        return 1.0;
      }
    }

    else
    {
      result = v12;
      if (v13)
      {
        return 0.6;
      }
    }
  }

  return result;
}

double sub_80ED00(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator);
  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  }

  v6 = a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  result = 0.0;
  if ((*(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10) & 1) == 0)
  {
    v8 = *v6;
    v9 = *(v6 + 8);
    if ((v9 & 0x100) != 0)
    {
      if (!(*&v8 | v9))
      {
        return 1.0;
      }
    }

    else
    {
      result = v8;
      if (v9)
      {
        return 0.6;
      }
    }
  }

  return result;
}

uint64_t sub_80EDA0()
{

  return swift_deallocObject();
}

void sub_80EDF4()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
    v4 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    if (v4)
    {
      v5 = v2;
      v6 = v4;
    }

    else
    {
      v8 = objc_allocWithZone(UIImageView);
      v9 = v2;
      v6 = [v8 init];
    }

    v10 = v4;
    [v6 setImage:v2];
    v11 = *(v0 + v3);
    if (v11)
    {
      v12 = v11;
      [v12 frame];
      Width = CGRectGetWidth(v18);
      [v12 frame];
      Height = CGRectGetHeight(v19);
      if (Height < Width)
      {
        Width = Height;
      }

      v15 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
      swift_beginAccess();
      v16 = [objc_opt_self() configurationWithPointSize:Width * *(v0 + v15)];
      [v12 setPreferredSymbolConfiguration:v16];

      v7 = *(v0 + v3);
    }

    else
    {
      v7 = 0;
    }

    *(v0 + v3) = v6;
    v17 = v6;
    sub_80F0F0(v7);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView) = 0;
    sub_80F0F0(v7);
  }
}

void *CircularProgressView.image.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CircularProgressView.image.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_80EDF4();
}

void (*CircularProgressView.image.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_80F0BC;
}

void sub_80F0BC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_80EDF4();
  }
}

void sub_80F0F0(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView];
  if (v5)
  {
    if (!a1)
    {
LABEL_10:
      v13 = v5;
      [v13 setContentMode:4];
      [v2 addSubview:v13];

      return;
    }

    sub_13C80(0, &unk_E1A010);
    v6 = v5;
    v3 = v3;
    v7 = sub_ABA790();

    if (v7)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = v3;
  v9 = [v8 superview];
  if (v9)
  {
    v10 = v9;
    sub_13C80(0, &qword_E1E050);
    v11 = v2;
    v12 = sub_ABA790();

    if (v12)
    {
      [v8 removeFromSuperview];
    }
  }

  v5 = *&v2[v4];
  if (v5)
  {
    goto LABEL_10;
  }
}

double CircularProgressView.imageScale.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  swift_beginAccess();
  return *(v0 + v1);
}

void CircularProgressView.imageScale.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    v5 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    if (v5)
    {
      v6 = v5;
      [v6 frame];
      Width = CGRectGetWidth(v10);
      [v6 frame];
      Height = CGRectGetHeight(v11);
      if (Height >= Width)
      {
        Height = Width;
      }

      v9 = [objc_opt_self() configurationWithPointSize:*(v1 + v3) * Height];
      [v6 setPreferredSymbolConfiguration:v9];
    }
  }
}

void (*CircularProgressView.imageScale.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_80F434;
}

void sub_80F434(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    CircularProgressView.imageScale.setter(v3);
  }

  else
  {
    v5 = v2[4];
    v4 = v2[5];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[4];
      v8 = *(v7 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
      if (v8)
      {
        v9 = v2[5];
        v10 = v8;
        [v10 frame];
        Width = CGRectGetWidth(v15);
        [v10 frame];
        Height = CGRectGetHeight(v16);
        if (Height >= Width)
        {
          Height = Width;
        }

        v13 = [objc_opt_self() configurationWithPointSize:*(v7 + v9) * Height];
        [v10 setPreferredSymbolConfiguration:v13];
      }
    }
  }

  free(v2);
}

void sub_80F544()
{
  *(v0 + 40) = 0;
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = sub_AB9260();
  [v1 removeAnimationForKey:v4];

  *&v20[0] = v3;
  *(&v20[0] + 1) = v2;

  v21._countAndFlagsBits = 0x676E69646E65;
  v21._object = 0xE600000000000000;
  sub_AB94A0(v21);
  v5 = sub_AB9260();

  [v1 removeAnimationForKey:v5];

  [v1 setStrokeEnd:0.6];
  v6 = sub_AB9260();
  v7 = [objc_opt_self() animationWithKeyPath:v6];

  v8 = [v1 presentationLayer];
  if (!v8)
  {
    v8 = v1;
  }

  v9 = sub_AB9260();
  v10 = [v8 valueForKeyPath:v9];

  if (v10)
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_7A5268(v20);
  }

  isa = sub_AB9A80().super.super.isa;
  [v7 setFromValue:isa];

  v12 = sub_AB9A80().super.super.isa;
  [v7 setToValue:v12];

  v13 = v7;
  [v13 setRemovedOnCompletion:1];
  [v13 setFillMode:kCAFillModeBoth];
  [v13 setDuration:1.0];
  LODWORD(v14) = 2139095040;
  [v13 setRepeatCount:v14];
  v15 = CACurrentMediaTime();
  [v13 duration];
  [v13 setBeginTime:{(v15 - fmod(v15, v16))}];

  v17 = sub_AB9260();
  [v1 addAnimation:v13 forKey:v17];
}

void sub_80F85C(uint64_t a1, uint64_t a2, double a3)
{
  if ((*(v3 + 40) & 1) == 0)
  {
    *(v3 + 40) = 1;
    v7 = *(v3 + 32);
    v8 = [v7 presentationLayer];
    if (!v8)
    {
      v8 = v7;
    }

    v9 = sub_AB9260();
    v10 = [v8 valueForKeyPath:v9];

    if (v10)
    {
      sub_ABAB50();
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
    }

    v11 = fmin(a3, 0.1);
    v41[0] = v39;
    v41[1] = v40;
    if (*(&v40 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_7A5268(v41);
    }

    v12 = sub_AB9260();
    v13 = objc_opt_self();
    v14 = [v13 animationWithKeyPath:v12];

    isa = sub_AB9A80().super.super.isa;
    [v14 setFromValue:isa];

    v16 = sub_AB9A80().super.super.isa;
    [v14 setToValue:v16];

    v17 = sub_AB9260();
    v18 = [v13 animationWithKeyPath:v17];

    v19 = sub_AB3A30().super.super.isa;
    [v18 setToValue:v19];

    v20 = [objc_allocWithZone(CAAnimationGroup) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_AF7C50;
    *(v21 + 32) = v14;
    *(v21 + 40) = v18;
    sub_13C80(0, &unk_E1A020);
    v22 = v14;
    v23 = v18;
    v24 = sub_AB9740().super.isa;

    [v20 setAnimations:v24];

    v25 = v20;
    [v25 setDuration:((1.0 - (0.6 - v11)) * 6.28318531 + -6.28318531 + 6.28318531) * 0.159154943];
    [v25 setFillMode:kCAFillModeForwards];
    [v25 setRemovedOnCompletion:0];
    v26 = type metadata accessor for CircularProgressView.SpinAnimator.Delegate();
    v27 = objc_allocWithZone(v26);
    v28 = &v27[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    *v28 = 0;
    *(v28 + 1) = 0;
    v38.receiver = v27;
    v38.super_class = v26;
    v29 = objc_msgSendSuper2(&v38, "init");
    [v25 setDelegate:v29];

    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v3;
    *(v30 + 32) = v11;
    *(v30 + 40) = a1;
    *(v30 + 48) = a2;
    *(v30 + 56) = a3;
    v31 = &v29[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    v32 = *&v29[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    *v31 = sub_810330;
    v31[1] = v30;
    v33 = v29;

    sub_17654(v32);
    v35 = *(v3 + 16);
    v34 = *(v3 + 24);
    v36 = sub_AB9260();
    [v7 removeAnimationForKey:v36];

    *&v41[0] = v35;
    *(&v41[0] + 1) = v34;

    v42._countAndFlagsBits = 0x676E69646E65;
    v42._object = 0xE600000000000000;
    sub_AB94A0(v42);
    v37 = sub_AB9260();

    [v7 addAnimation:v25 forKey:v37];
  }
}

uint64_t sub_80FD30()
{

  return swift_deallocObject();
}

void sub_80FD9C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if (*(a5 + 40) == 1)
  {
    v11 = objc_opt_self();
    [v11 begin];
    [v11 setDisableActions:1];
    v12 = *(a5 + 32);
    v16 = *(a5 + 16);
    v17 = *(a5 + 24);

    v18._countAndFlagsBits = 0x676E69646E65;
    v18._object = 0xE600000000000000;
    sub_AB94A0(v18);
    v13 = sub_AB9260();

    [v12 removeAnimationForKey:{v13, v16, v17}];

    [v12 setStrokeStart:0.0];
    [v12 setStrokeEnd:a1];
    [v11 commit];
    v14 = COERCE_DOUBLE(a6(a5));
    if (v15)
    {
      v14 = a2;
    }

    [v12 setStrokeEnd:v14];
  }
}

id sub_80FFD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CircularProgressView.SpinAnimator.Delegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_81001C()
{

  return swift_deallocClassInstance();
}

void _s11MusicCoreUI20CircularProgressViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 10) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale) = 0x3FE0000000000000;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  v2 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  *(v0 + v2) = [objc_allocWithZone(CAShapeLayer) init];
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  *(v0 + v3) = [objc_allocWithZone(CAShapeLayer) init];
  sub_ABAFD0();
  __break(1u);
}

uint64_t __swift_memcpy10_8_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_8102E8()
{

  return swift_deallocObject();
}

uint64_t sub_810350(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB89C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB60);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E199A8);
  __chkstk_darwin(v64);
  v69 = &v53 - v11;
  v71 = type metadata accessor for ArtworkImage.ViewModel(0);
  v12 = *(v71 - 8);
  __chkstk_darwin(v71);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70);
  __chkstk_darwin(v15 - 8);
  v66 = &v53 - v16;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AD70);
  __chkstk_darwin(v67);
  v73 = &v53 - v17;
  v72 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  __chkstk_darwin(v72);
  v19 = (&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v68 = &v53 - v22;
  v23 = *(a1 + 16);
  if (v23 == *(a2 + 16))
  {
    if (v23 && a1 != a2)
    {
      v56 = v10;
      v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v25 = a1 + v24;
      v26 = a2 + v24;
      v65 = (v12 + 48);
      v59 = (v5 + 48);
      v60 = v4;
      v53 = (v5 + 32);
      v54 = v7;
      v55 = (v5 + 8);
      v63 = *(v21 + 72);
      v27 = v66;
      v28 = v68;
      v61 = v14;
      v58 = v19;
      while (1)
      {
        sub_83290C(v25, v28, type metadata accessor for ArtworkImage.GridPreview.Item);
        v70 = v25;
        sub_83290C(v26, v19, type metadata accessor for ArtworkImage.GridPreview.Item);
        v29 = *v28 == *v19 && v28[1] == v19[1];
        if (!v29 && (sub_ABB3C0() & 1) == 0)
        {
LABEL_32:
          sub_832E5C(v19, type metadata accessor for ArtworkImage.GridPreview.Item);
          sub_832E5C(v28, type metadata accessor for ArtworkImage.GridPreview.Item);
          goto LABEL_33;
        }

        v30 = v73;
        v31 = *(v72 + 20);
        v32 = *(v67 + 48);
        sub_15F84(v28 + v31, v73, &qword_E1BD70);
        sub_15F84(v19 + v31, v30 + v32, &qword_E1BD70);
        v33 = *v65;
        v34 = v30;
        v35 = v71;
        if ((*v65)(v34, 1, v71) == 1)
        {
          break;
        }

        v62 = v23;
        v37 = v73;
        sub_15F84(v73, v27, &qword_E1BD70);
        if (v33(v37 + v32, 1, v35) == 1)
        {
          sub_832E5C(v27, type metadata accessor for ArtworkImage.ViewModel);
          v28 = v68;
LABEL_26:
          v51 = &unk_E1AD70;
          goto LABEL_31;
        }

        v38 = v61;
        sub_832978(v73 + v32, v61, type metadata accessor for ArtworkImage.ViewModel);
        if ((sub_AB8A40() & 1) == 0)
        {
          sub_832E5C(v38, type metadata accessor for ArtworkImage.ViewModel);
          goto LABEL_30;
        }

        v39 = *(v71 + 20);
        v40 = *(v64 + 48);
        v41 = v69;
        sub_15F84(v27 + v39, v69, &qword_E1AB60);
        sub_15F84(v38 + v39, v41 + v40, &qword_E1AB60);
        v42 = *v59;
        v43 = v41;
        v44 = v60;
        if ((*v59)(v43, 1, v60) == 1)
        {
          sub_832E5C(v38, type metadata accessor for ArtworkImage.ViewModel);
          v45 = v42(v69 + v40, 1, v44);
          v19 = v58;
          if (v45 != 1)
          {
            goto LABEL_29;
          }

          sub_12E1C(v69, &qword_E1AB60);
          v27 = v66;
          sub_832E5C(v66, type metadata accessor for ArtworkImage.ViewModel);
          v28 = v68;
          v23 = v62;
          goto LABEL_18;
        }

        v46 = v69;
        v47 = v56;
        sub_15F84(v69, v56, &qword_E1AB60);
        if (v42(v46 + v40, 1, v44) == 1)
        {
          sub_832E5C(v61, type metadata accessor for ArtworkImage.ViewModel);
          (*v55)(v47, v44);
          v19 = v58;
LABEL_29:
          sub_12E1C(v69, &qword_E199A8);
          v27 = v66;
LABEL_30:
          v28 = v68;
          sub_832E5C(v27, type metadata accessor for ArtworkImage.ViewModel);
          v51 = &qword_E1BD70;
LABEL_31:
          sub_12E1C(v73, v51);
          goto LABEL_32;
        }

        v48 = v54;
        (*v53)(v54, v46 + v40, v44);
        sub_830C28(&qword_E199B0, &type metadata accessor for Artwork.CropStyle);
        v57 = sub_AB91C0();
        v49 = *v55;
        (*v55)(v48, v44);
        sub_832E5C(v61, type metadata accessor for ArtworkImage.ViewModel);
        v49(v47, v44);
        sub_12E1C(v46, &qword_E1AB60);
        v27 = v66;
        sub_832E5C(v66, type metadata accessor for ArtworkImage.ViewModel);
        sub_12E1C(v73, &qword_E1BD70);
        v19 = v58;
        v28 = v68;
        v23 = v62;
        if ((v57 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_21:
        v50 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(v28 + *(v72 + 24), v19 + *(v72 + 24));
        sub_832E5C(v19, type metadata accessor for ArtworkImage.GridPreview.Item);
        sub_832E5C(v28, type metadata accessor for ArtworkImage.GridPreview.Item);
        if (v50)
        {
          v26 += v63;
          v25 = v70 + v63;
          if (--v23)
          {
            continue;
          }
        }

        return v50 & 1;
      }

      v36 = v33(v73 + v32, 1, v35);
      v28 = v68;
      if (v36 != 1)
      {
        goto LABEL_26;
      }

LABEL_18:
      sub_12E1C(v73, &qword_E1BD70);
      goto LABEL_21;
    }

    v50 = 1;
  }

  else
  {
LABEL_33:
    v50 = 0;
  }

  return v50 & 1;
}

uint64_t sub_810C64(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s11MusicCoreUI16PlaylistCuratorsO4ViewV13ConfigurationV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v48 = sub_AB8A60();
  v4 = *(v48 - 8);
  __chkstk_darwin(v48);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30);
  __chkstk_darwin(v6 - 8);
  v46 = &v36 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AE98);
  __chkstk_darwin(v45);
  v9 = &v36 - v8;
  v44 = type metadata accessor for PlaylistCurators.Curator(0);
  __chkstk_darwin(v44);
  v49 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v47 = (&v36 - v13);
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      return 1;
    }

    v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v16 = a1 + v15;
    v17 = a2 + v15;
    v18 = (v4 + 48);
    v37 = (v4 + 32);
    v38 = (v4 + 48);
    v39 = (v4 + 8);
    v43 = *(v12 + 72);
    v19 = v46;
    v20 = v47;
    while (1)
    {
      sub_83290C(v16, v20, type metadata accessor for PlaylistCurators.Curator);
      v21 = v49;
      sub_83290C(v17, v49, type metadata accessor for PlaylistCurators.Curator);
      v22 = *v20 == *v21 && v20[1] == v21[1];
      if (!v22 && (sub_ABB3C0() & 1) == 0)
      {
        break;
      }

      v23 = v20;
      v24 = v18;
      v25 = *(v44 + 20);
      v26 = *(v45 + 48);
      sub_15F84(v23 + v25, v9, &unk_E1BA30);
      sub_15F84(v49 + v25, &v9[v26], &unk_E1BA30);
      v27 = *v24;
      if ((*v24)(v9, 1, v48) == 1)
      {
        if (v27(&v9[v26], 1, v48) != 1)
        {
          goto LABEL_19;
        }

        v18 = v24;
        sub_12E1C(v9, &unk_E1BA30);
        sub_832E5C(v49, type metadata accessor for PlaylistCurators.Curator);
        v20 = v47;
        sub_832E5C(v47, type metadata accessor for PlaylistCurators.Curator);
      }

      else
      {
        v42 = v16;
        v28 = v9;
        sub_15F84(v9, v19, &unk_E1BA30);
        if (v27(&v9[v26], 1, v48) == 1)
        {
          (*v39)(v19, v48);
LABEL_19:
          sub_12E1C(v9, &qword_E1AE98);
          v20 = v47;
          break;
        }

        v29 = &v9[v26];
        v30 = v40;
        v31 = v48;
        (*v37)(v40, v29, v48);
        sub_830C28(&qword_E1AEA0, &type metadata accessor for Artwork);
        v41 = sub_AB91C0();
        v32 = *v39;
        v33 = v30;
        v34 = v46;
        (*v39)(v33, v31);
        v19 = v34;
        v32(v34, v31);
        sub_12E1C(v28, &unk_E1BA30);
        sub_832E5C(v49, type metadata accessor for PlaylistCurators.Curator);
        v20 = v47;
        v18 = v38;
        sub_832E5C(v47, type metadata accessor for PlaylistCurators.Curator);
        v9 = v28;
        v16 = v42;
        if ((v41 & 1) == 0)
        {
          return 0;
        }
      }

      v17 += v43;
      v16 += v43;
      if (!--v14)
      {
        return 1;
      }
    }

    sub_832E5C(v49, type metadata accessor for PlaylistCurators.Curator);
    sub_832E5C(v20, type metadata accessor for PlaylistCurators.Curator);
  }

  return 0;
}

uint64_t Collaboration.Management.Model.__allocating_init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_830010(a1, a2);

  return v4;
}

uint64_t Collaboration.Management.Model.init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_830010(a1, a2);

  return v2;
}

uint64_t property wrapper backing initializer of Collaboration.Management.Model.playlist(char *a1)
{
  v2 = sub_AB8E20();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v13 - v8;
  v10 = *(v3 + 16);
  (v10)(&v13 - v8, a1, v2, v7);
  v10(v5, v9, v2);
  sub_AB54D0();
  v11 = *(v3 + 8);
  v11(a1, v2);
  return v11(v9, v2);
}

uint64_t sub_811448()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static ApplicationCapabilities.shared.getter(v1);
    sub_70C54(v1);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_AB5520();
  }

  return result;
}

uint64_t sub_8114E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B310);
  v5[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B318);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B320);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B328);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_8116B8, 0, 0);
}

uint64_t sub_8116B8()
{
  sub_AB8E20();
  sub_AB8B70();
  sub_830C28(&qword_E1B330, &type metadata accessor for Playlist.Collaborator);
  sub_AB7F60();
  swift_getKeyPath();
  v0[2] = sub_AB8D10();
  v0[3] = v1;
  sub_AB7F50();

  sub_AB9940();
  v0[17] = sub_AB9930();
  v3 = sub_AB98B0();

  return _swift_task_switch(sub_811824, v3, v2);
}

uint64_t sub_811824()
{

  sub_36A00(&qword_E1B338, &qword_E1B328);
  *(v0 + 144) = sub_AB4170();

  return _swift_task_switch(sub_8118D0, 0, 0);
}

uint64_t sub_8118D0()
{
  v1 = v0[13];
  v15 = v0[14];
  v16 = v0[16];
  v13 = v0[12];
  v14 = v0[15];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v11 = v0[8];
  v12 = v0[11];
  v5 = v0[6];
  *(v5 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse) = v0[18];

  sub_AB4190();

  sub_13C80(0, &qword_E1B340);
  v6 = sub_ABA150();
  v0[4] = v6;
  v7 = sub_ABA130();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_36A00(&qword_E1B348, &qword_E1B318);
  sub_836898();
  sub_AB5590();
  sub_12E1C(v4, &qword_E1B310);

  (*(v3 + 8))(v2, v11);
  swift_allocObject();
  swift_weakInit();
  sub_36A00(&qword_E1B358, &qword_E1B320);
  v8 = sub_AB55C0();

  (*(v13 + 8))(v1, v12);
  (*(v14 + 8))(v16, v15);
  *(v5 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponseSubscription) = v8;

  v9 = v0[1];

  return v9();
}

uint64_t sub_811B98(uint64_t a1, uint64_t a2)
{
  v244 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A980);
  __chkstk_darwin(v3 - 8);
  v240 = &v206 - v4;
  v5 = sub_AB8B70();
  v238 = *(v5 - 8);
  __chkstk_darwin(v5);
  v252 = &v206 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v237 = &v206 - v8;
  __chkstk_darwin(v9);
  v255 = &v206 - v10;
  __chkstk_darwin(v11);
  v247 = &v206 - v12;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B360);
  v229 = *(v249 - 8);
  __chkstk_darwin(v249);
  v228 = &v206 - v13;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B368);
  __chkstk_darwin(v227);
  v248 = &v206 - v14;
  v220 = sub_AB3430();
  v218 = *(v220 - 8);
  __chkstk_darwin(v220);
  v213 = &v206 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B370);
  __chkstk_darwin(v217);
  v219 = &v206 - v16;
  v226 = sub_AB8E20();
  v225 = *(v226 - 1);
  __chkstk_darwin(v226);
  v223 = &v206 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v224 = &v206 - v19;
  __chkstk_darwin(v20);
  v216 = &v206 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD40);
  __chkstk_darwin(v22 - 8);
  v214 = &v206 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v221 = &v206 - v25;
  __chkstk_darwin(v26);
  v222 = &v206 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD58);
  __chkstk_darwin(v28 - 8);
  v246 = &v206 - v29;
  v239 = sub_AB8B30();
  v234 = *(v239 - 8);
  __chkstk_darwin(v239);
  v232 = &v206 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v233 = &v206 - v32;
  v253 = sub_AB8BE0();
  v254 = *(v253 - 8);
  __chkstk_darwin(v253);
  v235 = &v206 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B378);
  v259 = *(v258 - 8);
  __chkstk_darwin(v258);
  v241 = &v206 - v34;
  v256 = sub_AB4BC0();
  v250 = *(v256 - 8);
  __chkstk_darwin(v256);
  v242 = &v206 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v231 = &v206 - v37;
  __chkstk_darwin(v38);
  v230 = &v206 - v39;
  __chkstk_darwin(v40);
  v251 = &v206 - v41;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD38);
  __chkstk_darwin(v236);
  v215 = &v206 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v245 = &v206 - v44;
  __chkstk_darwin(v45);
  v47 = &v206 - v46;
  __chkstk_darwin(v48);
  v50 = &v206 - v49;
  __chkstk_darwin(v51);
  v260 = &v206 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B380);
  __chkstk_darwin(v53 - 8);
  v55 = &v206 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B388);
  __chkstk_darwin(v56);
  v243 = (&v206 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v58);
  v60 = &v206 - v59;
  __chkstk_darwin(v61);
  v63 = &v206 - v62;
  __chkstk_darwin(v64);
  v66 = &v206 - v65;
  __chkstk_darwin(v67);
  v261 = &v206 - v68;
  swift_beginAccess();
  v257 = a2;
  result = swift_weakLoadStrong();
  if (result)
  {
    v70 = *(result + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse);

    if (v70)
    {
      v71 = sub_AB4180();

      if (v71)
      {
        v212 = v5;
        sub_15F84(v244, v55, &qword_E1B380);
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B390);
        v73 = *(v72 - 8);
        if ((*(v73 + 48))(v55, 1, v72) == 1)
        {
          sub_12E1C(v55, &qword_E1B380);
        }

        else
        {
          v74 = sub_AB7F80();
          (*(v73 + 8))(v55, v72);
          if (*(v74 + 16))
          {
            v75 = v258;
            (*(v259 + 16))(v261, v74 + ((*(v259 + 80) + 32) & ~*(v259 + 80)), v258);

            v76 = 0;
            v77 = v260;
            goto LABEL_10;
          }
        }

        v76 = 1;
        v77 = v260;
        v75 = v258;
LABEL_10:
        v78 = v259;
        v79 = v261;
        (*(v259 + 56))(v261, v76, 1, v75);
        sub_15F84(v79, v66, &qword_E1B388);
        v80 = *(v78 + 48);
        v209 = v78 + 48;
        v208 = v80;
        if (v80(v66, 1, v75) == 1)
        {
          sub_12E1C(v66, &qword_E1B388);
          v81 = v254;
          (*(v254 + 56))(v77, 1, 1, v253);
        }

        else
        {
          swift_getKeyPath();
          sub_AB7E80();
          v77 = v260;

          (*(v78 + 8))(v66, v75);
          v81 = v254;
        }

        v82 = v251;
        v83 = Logger.collaboration.unsafeMutableAddressor();
        v84 = v250;
        v85 = *(v250 + 16);
        v210 = v83;
        v86 = v256;
        v244 = v250 + 16;
        v211 = v85;
        v85(v82);
        sub_15F84(v261, v63, &qword_E1B388);
        sub_15F84(v77, v50, &qword_E1AD38);
        v87 = sub_AB4BA0();
        v207 = sub_AB9F50();
        if (os_log_type_enabled(v87, v207))
        {
          v88 = swift_slowAlloc();
          v206 = swift_slowAlloc();
          v263 = v206;
          *v88 = 136446466;
          sub_15F84(v63, v60, &qword_E1B388);
          v89 = sub_AB9350();
          v91 = v90;
          sub_12E1C(v63, &qword_E1B388);
          v92 = sub_7AB3E0(v89, v91, &v263);

          *(v88 + 4) = v92;
          *(v88 + 12) = 2082;
          sub_15F84(v50, v47, &qword_E1AD38);
          v93 = sub_AB9350();
          v95 = v94;
          sub_12E1C(v50, &qword_E1AD38);
          v96 = v93;
          v81 = v254;
          v97 = sub_7AB3E0(v96, v95, &v263);

          *(v88 + 14) = v97;
          _os_log_impl(&dword_0, v87, v207, "    [Management] Did update collaborative playlist with:\n        playlist=%{public}s)\n        collaboration=%{public}s", v88, 0x16u);
          swift_arrayDestroy();

          v86 = v256;

          v98 = *(v84 + 8);
          v98(v251, v86);
        }

        else
        {

          sub_12E1C(v50, &qword_E1AD38);
          sub_12E1C(v63, &qword_E1B388);
          v98 = *(v84 + 8);
          v98(v82, v86);
        }

        v99 = v259;
        v100 = v253;
        v101 = v243;
        sub_15F84(v261, v243, &qword_E1B388);
        v102 = v258;
        v103 = v208(v101, 1, v258);
        v104 = v246;
        v105 = v245;
        if (v103 == 1)
        {
          sub_12E1C(v101, &qword_E1B388);
LABEL_25:
          v121 = v242;
          v211(v242, v210, v86);
          v122 = sub_AB4BA0();
          v123 = sub_AB9F50();
          if (os_log_type_enabled(v122, v123))
          {
            v124 = swift_slowAlloc();
            *v124 = 0;
            _os_log_impl(&dword_0, v122, v123, "[Management] Dismissing management sheet", v124, 2u);
          }

          v98(v121, v86);
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v264 = 1;
            sub_AB5520();
          }

LABEL_29:
          sub_12E1C(v260, &qword_E1AD38);
          return sub_12E1C(v261, &qword_E1B388);
        }

        v106 = v101;
        v107 = v241;
        (*(v99 + 32))(v241, v106, v102);
        sub_15F84(v260, v105, &qword_E1AD38);
        v251 = *(v81 + 48);
        if ((v251)(v105, 1, v100) == 1)
        {
          (*(v99 + 8))(v107, v102);
          sub_12E1C(v105, &qword_E1AD38);
          v86 = v256;
          goto LABEL_25;
        }

        v236 = v98;
        v108 = v235;
        (*(v81 + 32))(v235, v105, v100);
        sub_AB8BB0();
        v109 = v234;
        v110 = v239;
        if ((*(v234 + 48))(v104, 1, v239) == 1)
        {
          (*(v81 + 8))(v108, v100);
          (*(v99 + 8))(v241, v258);
          sub_12E1C(v104, &qword_E1AD58);
LABEL_24:
          v86 = v256;
          v98 = v236;
          goto LABEL_25;
        }

        v111 = v233;
        (*(v109 + 32))(v233, v104, v110);
        v112 = v232;
        (*(v109 + 104))(v232, enum case for Playlist.Collaborator.Status.notJoined(_:), v110);
        sub_830C28(&unk_E1AD60, &type metadata accessor for Playlist.Collaborator.Status);
        v113 = v109;
        v114 = sub_AB91C0();
        v115 = v239;
        v116 = v114;
        v118 = *(v113 + 8);
        v117 = v113 + 8;
        v119 = v112;
        v120 = v118;
        v118(v119, v239);
        if (v116)
        {
          v120(v111, v115);
          (*(v254 + 8))(v235, v100);
          (*(v99 + 8))(v241, v258);
          goto LABEL_24;
        }

        v234 = v117;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        v126 = v254;
        if (!Strong || (swift_getKeyPath(), swift_getKeyPath(), sub_AB5510(), , , , v263 != 1))
        {
LABEL_47:
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            v144 = v224;
            sub_AB7E70();
            swift_getKeyPath();
            swift_getKeyPath();
            v145 = v225;
            v146 = v226;
            (*(v225 + 16))(v223, v144, v226);
            sub_AB5520();
            (*(v145 + 8))(v144, v146);
          }

          swift_beginAccess();
          v147 = swift_weakLoadStrong();
          v148 = v248;
          if (v147)
          {
            v149 = Playlist.Collaboration.isOpenInvitation.getter();
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v263) = v149 & 1;
            sub_AB5520();
          }

          v226 = v120;
          v150 = v228;
          sub_AB7E90();
          v151 = v229;
          v152 = v249;
          (*(v229 + 16))(v148, v150, v249);
          v153 = *(v227 + 36);
          v154 = sub_36A00(&qword_E1B398, &qword_E1B360);
          sub_AB9C60();
          (*(v151 + 8))(v150, v152);
          swift_beginAccess();
          sub_AB9CA0();
          if (*&v153[v148] == v263)
          {
            v242 = _swiftEmptyArrayStorage;
            v246 = _swiftEmptyArrayStorage;
          }

          else
          {
            v169 = v238;
            v251 = (v238 + 16);
            v170 = (v238 + 32);
            v243 = (v238 + 8);
            v232 = (v238 + 56);
            v246 = _swiftEmptyArrayStorage;
            v242 = _swiftEmptyArrayStorage;
            v245 = v153;
            do
            {
              v176 = v154;
              v177 = sub_AB9D80();
              v178 = *v251;
              v179 = v247;
              v180 = v212;
              (*v251)(v247);
              v177(&v263, 0);
              v154 = v176;
              sub_AB9CB0();
              v181 = *v170;
              v182 = v255;
              (*v170)(v255, v179, v180);
              v183 = sub_AB8B60();
              if (v183 == 2 || (v183 & 1) == 0)
              {
                v178(v252, v182, v180);
                v188 = v246;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v188 = sub_8A4E7C(0, *(v188 + 2) + 1, 1, v188);
                }

                v190 = *(v188 + 2);
                v189 = *(v188 + 3);
                if (v190 >= v189 >> 1)
                {
                  v188 = sub_8A4E7C(v189 > 1, v190 + 1, 1, v188);
                }

                *(v188 + 2) = v190 + 1;
                v191 = (*(v169 + 80) + 32) & ~*(v169 + 80);
                v246 = v188;
                v181(&v188[v191 + *(v169 + 72) * v190], v252, v180);
                if (swift_weakLoadStrong())
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v171 = sub_AB5500();
                  v172 = v240;
                  v173 = v255;
                  sub_82E744(v255, v240);
                  v174 = v172;
                  v169 = v238;
                  sub_12E1C(v174, &unk_E1A980);
                  v171(&v263, 0);
                  v175 = v173;
                  v154 = v176;

                  (*v243)(v175, v212);
                }

                else
                {
                  (*v243)(v255, v180);
                  v192 = v240;
                  (*v232)(v240, 1, 1, v180);
                  sub_12E1C(v192, &unk_E1A980);
                }
              }

              else
              {
                v178(v237, v182, v180);
                v184 = v242;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v184 = sub_8A4E7C(0, v184[2] + 1, 1, v184);
                }

                v242 = v184;
                v186 = v184[2];
                v185 = v184[3];
                if (v186 >= v185 >> 1)
                {
                  v242 = sub_8A4E7C(v185 > 1, v186 + 1, 1, v242);
                }

                (*(v169 + 8))(v182, v180);
                v187 = v242;
                *(v242 + 2) = v186 + 1;
                v181(v187 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v186, v237, v180);
              }

              v148 = v248;
              sub_AB9CA0();
            }

            while (*&v245[v148] != v263);
          }

          sub_12E1C(v148, &qword_E1B368);
          swift_beginAccess();
          v155 = swift_weakLoadStrong();
          v156 = v246;
          if (v155)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v262[1] = v156;

            sub_AB5520();
          }

          swift_beginAccess();
          v157 = swift_weakLoadStrong();
          v158 = v230;
          v159 = v242;
          if (v157)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v262[0] = v159;

            sub_AB5520();
          }

          v160 = v256;
          v211(v158, v210, v256);

          v161 = sub_AB4BA0();
          v162 = sub_AB9F20();

          if (os_log_type_enabled(v161, v162))
          {
            v163 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            v262[0] = v164;
            *v163 = 136315138;
            v165 = sub_AB9770();
            v167 = v166;

            v168 = sub_7AB3E0(v165, v167, v262);

            *(v163 + 4) = v168;
            _os_log_impl(&dword_0, v161, v162, "[Management] pendingCollaborators=%s", v163, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v164);
          }

          else
          {
          }

          v193 = v158;
          v194 = v236;
          v236(v193, v160);
          v195 = v231;
          v211(v231, v210, v160);

          v196 = sub_AB4BA0();
          v197 = sub_AB9F20();

          if (os_log_type_enabled(v196, v197))
          {
            v198 = v195;
            v199 = swift_slowAlloc();
            v200 = swift_slowAlloc();
            v262[0] = v200;
            *v199 = 136315138;
            v201 = sub_AB9770();
            v202 = v194;
            v204 = v203;

            v205 = sub_7AB3E0(v201, v204, v262);

            *(v199 + 4) = v205;
            _os_log_impl(&dword_0, v196, v197, "[Management] activeCollaborators=%s", v199, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v200);

            v202(v198, v256);
          }

          else
          {

            v194(v195, v160);
          }

          (v226)(v233, v239);
          (*(v254 + 8))(v235, v253);
          (*(v259 + 8))(v241, v258);
          goto LABEL_29;
        }

        swift_beginAccess();
        v127 = swift_weakLoadStrong();
        v128 = v218;
        v129 = v221;
        if (v127)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v130 = v216;
          sub_AB5510();

          v131 = v215;
          sub_AB8BF0();
          (*(v225 + 8))(v130, v226);
          if ((v251)(v131, 1, v100) != 1)
          {
            v132 = v222;
            sub_AB8BD0();
            (*(v126 + 8))(v131, v100);
            v133 = v220;
LABEL_38:
            sub_AB8BD0();
            v134 = *(v217 + 48);
            v135 = v219;
            sub_15F84(v132, v219, &qword_E1AD40);
            sub_15F84(v129, v135 + v134, &qword_E1AD40);
            v136 = v128;
            v137 = *(v128 + 48);
            if (v137(v135, 1, v133) == 1)
            {
              sub_12E1C(v129, &qword_E1AD40);
              sub_12E1C(v132, &qword_E1AD40);
              if (v137(v135 + v134, 1, v133) == 1)
              {
                sub_12E1C(v135, &qword_E1AD40);
                goto LABEL_47;
              }
            }

            else
            {
              v138 = v214;
              sub_15F84(v135, v214, &qword_E1AD40);
              if (v137(v135 + v134, 1, v133) != 1)
              {
                v139 = v135 + v134;
                v140 = v213;
                (*(v136 + 32))(v213, v139, v133);
                sub_830C28(&qword_E1B3A0, &type metadata accessor for Date);
                v141 = v138;
                v142 = sub_AB91C0();
                v143 = *(v136 + 8);
                v143(v140, v133);
                sub_12E1C(v221, &qword_E1AD40);
                sub_12E1C(v222, &qword_E1AD40);
                v143(v141, v133);
                sub_12E1C(v135, &qword_E1AD40);
                if (v142)
                {
                  goto LABEL_47;
                }

LABEL_44:
                swift_beginAccess();
                if (swift_weakLoadStrong())
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  LOBYTE(v263) = 0;
                  sub_AB5520();
                }

                goto LABEL_47;
              }

              sub_12E1C(v221, &qword_E1AD40);
              sub_12E1C(v222, &qword_E1AD40);
              (*(v136 + 8))(v138, v133);
            }

            sub_12E1C(v135, &qword_E1B370);
            goto LABEL_44;
          }

          sub_12E1C(v131, &qword_E1AD38);
        }

        v132 = v222;
        v133 = v220;
        (*(v128 + 56))(v222, 1, 1, v220);
        goto LABEL_38;
      }
    }
  }

  return result;
}

uint64_t sub_8140A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();
}

uint64_t sub_81411C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();
}

uint64_t sub_814198(uint64_t a1)
{
  v2 = sub_AB8E20();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  (v10)(v5, v9, v2);

  sub_AB5520();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_814358()
{
  v0 = sub_AB8B30();
  v33 = *(v0 - 8);
  __chkstk_darwin(v0);
  v31 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD50);
  __chkstk_darwin(v34);
  v3 = &v30 - v2;
  v4 = sub_AB8E20();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD38);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD58);
  __chkstk_darwin(v11 - 8);
  v32 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  sub_AB8BF0();
  (*(v5 + 8))(v7, v4);
  v19 = sub_AB8BE0();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v10, 1, v19) == 1)
  {
    sub_12E1C(v10, &qword_E1AD38);
    v21 = v33;
    (*(v33 + 56))(v18, 1, 1, v0);
  }

  else
  {
    sub_AB8BB0();
    (*(v20 + 8))(v10, v19);
    v21 = v33;
  }

  (*(v21 + 104))(v15, enum case for Playlist.Collaborator.Status.pending(_:), v0);
  (*(v21 + 56))(v15, 0, 1, v0);
  v22 = *(v34 + 48);
  sub_15F84(v18, v3, &qword_E1AD58);
  sub_15F84(v15, &v3[v22], &qword_E1AD58);
  v23 = *(v21 + 48);
  if (v23(v3, 1, v0) != 1)
  {
    v25 = v32;
    sub_15F84(v3, v32, &qword_E1AD58);
    if (v23(&v3[v22], 1, v0) != 1)
    {
      v26 = v31;
      (*(v21 + 32))(v31, &v3[v22], v0);
      sub_830C28(&unk_E1AD60, &type metadata accessor for Playlist.Collaborator.Status);
      v27 = v25;
      v24 = sub_AB91C0();
      v28 = *(v21 + 8);
      v28(v26, v0);
      sub_12E1C(v15, &qword_E1AD58);
      sub_12E1C(v18, &qword_E1AD58);
      v28(v27, v0);
      sub_12E1C(v3, &qword_E1AD58);
      return v24 & 1;
    }

    sub_12E1C(v15, &qword_E1AD58);
    sub_12E1C(v18, &qword_E1AD58);
    (*(v21 + 8))(v25, v0);
    goto LABEL_9;
  }

  sub_12E1C(v15, &qword_E1AD58);
  sub_12E1C(v18, &qword_E1AD58);
  if (v23(&v3[v22], 1, v0) != 1)
  {
LABEL_9:
    sub_12E1C(v3, &qword_E1AD50);
    v24 = 0;
    return v24 & 1;
  }

  sub_12E1C(v3, &qword_E1AD58);
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_814994()
{
  v0 = sub_AB8E20();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v6[15] == 1 && (sub_8150B4() & 1) == 0)
  {
    v4 = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    v4 = sub_AB8CC0();
    (*(v1 + 8))(v3, v0);
  }

  return v4 & 1;
}

uint64_t sub_814B0C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v1 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    sub_7B2EBC(v1);
  }

  return v1;
}

uint64_t sub_814C70()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_AB9230();
  __chkstk_darwin(v8 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v9 = *(v16 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v10 = *(v16 + 16);

  if (v10 == 1)
  {
    if (!v9)
    {
      return 0;
    }

    sub_AB9220();
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    sub_AB9210(v17);
    v16 = v9;
    sub_AB91F0();
    v11._countAndFlagsBits = 0xD000000000000012;
    v11._object = 0x8000000000B75A80;
  }

  else
  {
    sub_AB9220();
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    sub_AB9210(v18);
    v16 = v10;
    sub_AB91F0();
    if (v9)
    {
      v19._countAndFlagsBits = 0x2064656E696F6A20;
      v19._object = 0xAC00000020A280E2;
      sub_AB9210(v19);
      v16 = v9;
      sub_AB91F0();
      v11._countAndFlagsBits = 0x676E69646E657020;
      v11._object = 0xE800000000000000;
    }

    else
    {
      v11._object = 0x8000000000B75A60;
      v11._countAndFlagsBits = 0xD000000000000011;
    }
  }

  sub_AB9210(v11);
  sub_AB9240();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v13 = qword_E73660;
  sub_AB3550();
  v12 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v12;
}

uint64_t sub_8150B4()
{
  v0 = sub_AB8E20();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD38);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD40);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v23 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v22 = &v22 - v14;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  sub_AB8BF0();
  (*(v1 + 8))(v3, v0);
  v15 = sub_AB8BE0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v6, 1, v15) == 1)
  {
    sub_12E1C(v6, &qword_E1AD38);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  else
  {
    sub_AB8BD0();
    (*(v16 + 8))(v6, v15);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      v18 = v22;
      (*(v11 + 32))(v22, v9, v10);
      v19 = v23;
      sub_AB3420();
      v17 = sub_AB3380();
      v20 = *(v11 + 8);
      v20(v19, v10);
      v20(v18, v10);
      return v17 & 1;
    }
  }

  sub_12E1C(v9, &qword_E1AD40);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_815484()
{
  v1 = v0;
  v2 = sub_AB9230();
  __chkstk_darwin(v2 - 8);
  v68 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB36A0();
  v77 = *(v4 - 8);
  v78 = v4;
  __chkstk_darwin(v4);
  v76 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB2DC0();
  v80 = *(v6 - 8);
  v81 = v6;
  __chkstk_darwin(v6);
  v79 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB35C0();
  __chkstk_darwin(v8 - 8);
  v71 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB9250();
  v73 = *(v10 - 8);
  v74 = v10;
  __chkstk_darwin(v10);
  v70 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v72 = &v66 - v13;
  v14 = sub_AB8E20();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v67 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v69 = &v66 - v18;
  __chkstk_darwin(v19);
  v21 = &v66 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD38);
  __chkstk_darwin(v22 - 8);
  v24 = &v66 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD40);
  __chkstk_darwin(v25 - 8);
  v27 = &v66 - v26;
  v28 = sub_AB3430();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v75 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v84 = &v66 - v32;
  swift_getKeyPath();
  swift_getKeyPath();
  v83 = v1;
  sub_AB5510();

  sub_AB8BF0();
  v33 = *(v15 + 8);
  v82 = v14;
  v33(v21, v14);
  v34 = sub_AB8BE0();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v24, 1, v34) == 1)
  {
    sub_12E1C(v24, &qword_E1AD38);
    (*(v29 + 56))(v27, 1, 1, v28);
LABEL_4:
    sub_12E1C(v27, &qword_E1AD40);
    return 0;
  }

  sub_AB8BD0();
  (*(v35 + 8))(v24, v34);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    goto LABEL_4;
  }

  v37 = *(v29 + 32);
  v66 = v28;
  v37(v84, v27, v28);
  v38 = v29;
  if (sub_8150B4() & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), v39 = v69, sub_AB5510(), , , v40 = sub_AB8CC0(), v33(v39, v82), v40 != 2) && (v40)
  {
    v41 = v72;
    sub_AB91E0();
    v43 = v73;
    v42 = v74;
    (*(v73 + 16))(v70, v41, v74);
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v44 = qword_E73660;
    sub_AB3550();
    v45 = sub_AB9320();
    (*(v43 + 8))(v41, v42);
    (*(v38 + 8))(v84, v66);
  }

  else
  {
    v46 = v76;
    sub_AB3630();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD48);
    v47 = sub_AB3690();
    v48 = *(v47 - 8);
    v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_AF4EC0;
    (*(v48 + 104))(v50 + v49, enum case for Calendar.Component.day(_:), v47);
    sub_7ADD9C(v50);
    swift_setDeallocating();
    (*(v48 + 8))(v50 + v49, v47);
    swift_deallocClassInstance();
    v51 = v75;
    sub_AB3420();
    v52 = v79;
    v53 = v84;
    sub_AB3610();

    v54 = *(v38 + 8);
    v55 = v66;
    v54(v51, v66);
    (*(v77 + 8))(v46, v78);
    v56 = sub_AB2D80();
    if (v57)
    {
      (*(v80 + 8))(v52, v81);
      v54(v53, v55);
      return 0;
    }

    v58 = v56;
    swift_getKeyPath();
    swift_getKeyPath();
    v59 = v67;
    sub_AB5510();

    v60 = sub_AB8CC0();
    v33(v59, v82);
    if (v60 == 2 || (v60 & 1) == 0)
    {
      sub_AB9220();
      v87._object = 0x8000000000B75960;
      v87._countAndFlagsBits = 0xD000000000000010;
      sub_AB9210(v87);
      v85 = v58;
      sub_AB91F0();
      v61._countAndFlagsBits = 0x2E29732879616420;
      v61._object = 0xE800000000000000;
    }

    else
    {
      sub_AB9220();
      v86._object = 0x8000000000B75960;
      v86._countAndFlagsBits = 0xD000000000000010;
      sub_AB9210(v86);
      v85 = v58;
      sub_AB91F0();
      v61._countAndFlagsBits = 0xD00000000000006CLL;
      v61._object = 0x8000000000B75980;
    }

    sub_AB9210(v61);
    v62 = v72;
    sub_AB9240();
    v64 = v73;
    v63 = v74;
    (*(v73 + 16))(v70, v62, v74);
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v65 = qword_E73660;
    sub_AB3550();
    v45 = sub_AB9320();
    (*(v64 + 8))(v62, v63);
    (*(v80 + 8))(v52, v81);
    v54(v53, v66);
  }

  return v45;
}

uint64_t sub_815FF8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_AB8E20();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD38);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  if (sub_8150B4())
  {
    v9 = sub_AB31C0();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    sub_AB8BF0();
    (*(v3 + 8))(v5, v2);
    v12 = sub_AB8BE0();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {
      sub_12E1C(v8, &qword_E1AD38);
      v14 = sub_AB31C0();
      return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
    }

    else
    {
      sub_AB8B80();
      return (*(v13 + 8))(v8, v12);
    }
  }
}

uint64_t sub_8162AC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A168);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel;
  swift_beginAccess();
  sub_15F84(v1 + v9, v8, &qword_E1A168);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_36B0C(v8, a1, &qword_E1BD70);
  }

  sub_12E1C(v8, &qword_E1A168);
  sub_8164BC(a1);
  sub_15F84(a1, v5, &qword_E1BD70);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_160B4(v5, v1 + v9, &qword_E1A168);
  return swift_endAccess();
}

uint64_t sub_8164BC@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_AB8E20();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB8A60();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  sub_AB8E00();
  (*(v5 + 8))(v7, v4);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    sub_12E1C(v3, &unk_E1BA30);
    v12 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v12 - 8) + 56))(v19, 1, 1, v12);
  }

  else
  {
    (*(v9 + 32))(v11, v3, v8);
    v14 = v19;
    (*(v9 + 16))(v19, v11, v8);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    sub_AB8940();
    (*(v9 + 8))(v11, v8);
    v17 = sub_AB89C0();
    (*(*(v17 - 8) + 56))(v14 + v16, 0, 1, v17);
    return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }
}

uint64_t sub_816810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  v6 = sub_AB8E20();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_8168D4, 0, 0);
}

uint64_t sub_8168D4()
{
  *(v0 + 56) = *(*(v0 + 24) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_8169DC;
  v2 = *(v0 + 48);
  v3 = *(v0 + 80);

  return Collaboration.Manager.updateShareOption(_:for:)(v3, v2);
}

uint64_t sub_8169DC()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_83735C;
  }

  else
  {
    (*(v4 + 8))(v2[6], v2[4]);

    v6 = sub_816B98;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_816B98()
{
  **(v0 + 16) = *(v0 + 72) != 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_816C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_AB8E20();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_816CD8, 0, 0);
}

uint64_t sub_816CD8()
{
  v0[7] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_816DDC;
  v3 = v0[5];
  v2 = v0[6];

  return Collaboration.Manager.end(_:)(v2, v3);
}

uint64_t sub_816DDC()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = sub_816FD8;
  }

  else
  {
    v5 = v2[5];
    v4 = v2[6];
    v8 = v2 + 3;
    v6 = v2[3];
    v7 = v8[1];

    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    v3 = sub_816F70;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_816F70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_816FD8()
{
  v0[10] = *(v0[2] + 16);
  sub_AB9940();

  v0[11] = sub_AB9930();
  v2 = sub_AB98B0();

  return _swift_task_switch(sub_817080, v2, v1);
}

uint64_t sub_817080()
{
  v1 = *(v0 + 72);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_8170FC, 0, 0);
}

uint64_t sub_8170FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_81716C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_AB8E20();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_AB31C0();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_817288, 0, 0);
}

uint64_t sub_817288()
{
  v0[9] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_817390;
  v2 = v0[8];
  v3 = v0[5];

  return Collaboration.Manager.resetInvitationURL(_:)(v2, v3);
}

uint64_t sub_817390()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = sub_8175A0;
  }

  else
  {
    v5 = v2[7];
    v4 = v2[8];
    v7 = v2[5];
    v6 = v2[6];
    v10 = v2 + 3;
    v8 = v2[3];
    v9 = v10[1];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    v3 = sub_817534;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_817534()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_8175A0()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 112) = 0;

  sub_AB5520();
  *(v0 + 96) = *(v1 + 16);
  sub_AB9940();

  *(v0 + 104) = sub_AB9930();
  v3 = sub_AB98B0();

  return _swift_task_switch(sub_817694, v3, v2);
}

uint64_t sub_817694()
{
  v1 = *(v0 + 88);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_817710, 0, 0);
}

uint64_t sub_817710()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_817784(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720);
  __chkstk_darwin(v2 - 8);
  v4 = v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A980);
  __chkstk_darwin(v5 - 8);
  v7 = v20 - v6;
  v8 = sub_AB8B70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v20 - v13;
  sub_15F84(a1, v7, &unk_E1A980);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_12E1C(v7, &unk_E1A980);
    result = sub_ABAFD0();
    __break(1u);
  }

  else
  {
    v15 = *(v9 + 32);
    v15(v14, v7, v8);
    v16 = sub_AB9990();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    (*(v9 + 16))(v11, v14, v8);
    v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 4) = v20[1];
    v15(&v18[v17], v11, v8);

    sub_7C7F60(0, 0, v4, &unk_B2FA40, v18);

    return (*(v9 + 8))(v14, v8);
  }

  return result;
}

uint64_t sub_817AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_AB8E20();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_817B94, 0, 0);
}

uint64_t sub_817B94()
{
  v0[8] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_817C9C;
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[3];

  return Collaboration.Manager.remove(collaborator:in:)(v2, v4, v3);
}

uint64_t sub_817C9C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = sub_817E98;
  }

  else
  {
    v5 = v2[6];
    v4 = v2[7];
    v8 = v2 + 4;
    v6 = v2[4];
    v7 = v8[1];

    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    v3 = sub_817E30;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_817E30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_817E98()
{
  v0[11] = *(v0[2] + 16);
  sub_AB9940();

  v0[12] = sub_AB9930();
  v2 = sub_AB98B0();

  return _swift_task_switch(sub_817F40, v2, v1);
}

uint64_t sub_817F40()
{
  v1 = *(v0 + 80);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_817FBC, 0, 0);
}

uint64_t sub_817FBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_81802C(uint64_t a1, int a2)
{
  v21 = a1;
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720);
  __chkstk_darwin(v3 - 8);
  v22 = &v20 - v4;
  v5 = sub_AB8B70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = *(v6 + 16);
  v13(v8, a1, v5, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = sub_AB5500();
  sub_82F5A4(v12, v8);
  (*(v6 + 8))(v12, v5);
  v14(v24, 0);

  v15 = sub_AB9990();
  v16 = v22;
  (*(*(v15 - 8) + 56))(v22, 1, 1, v15);
  (v13)(v12, v21, v5);
  v17 = (*(v6 + 80) + 41) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v20;
  *(v18 + 40) = v23 & 1;
  (*(v6 + 32))(v18 + v17, v12, v5);

  sub_7C7F60(0, 0, v16, &unk_B2FA18, v18);
}

uint64_t sub_818300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 136) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v7 = sub_AB8B70();
  *(v6 + 32) = v7;
  v8 = *(v7 - 8);
  *(v6 + 40) = v8;
  *(v6 + 48) = *(v8 + 64);
  *(v6 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720);
  *(v6 + 64) = swift_task_alloc();
  v9 = sub_AB8E20();
  *(v6 + 72) = v9;
  *(v6 + 80) = *(v9 - 8);
  *(v6 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_818460, 0, 0);
}

uint64_t sub_818460()
{
  v1 = *(v0 + 136);
  *(v0 + 96) = *(*(v0 + 16) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510();

  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_818570;
  v3 = *(v0 + 88);
  v4 = *(v0 + 24);

  return Collaboration.Manager.moderate(_:collaborator:in:)(v1 & 1, v4, v3);
}

uint64_t sub_818570()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_81875C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_81875C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  v7 = sub_AB9990();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v4, v5);
  sub_AB9940();

  v8 = sub_AB9930();
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = v8;
  *(v10 + 3) = &protocol witness table for MainActor;
  *(v10 + 4) = v6;
  (*(v3 + 32))(&v10[v9], v2, v5);
  sub_7C8574(0, 0, v1, &unk_B2FA28, v10);

  v0[15] = *(v6 + 16);

  v0[16] = sub_AB9930();
  v12 = sub_AB98B0();

  return _swift_task_switch(sub_81891C, v12, v11);
}

uint64_t sub_81891C()
{
  v1 = *(v0 + 112);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_818998, 0, 0);
}

uint64_t sub_818998()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_818A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  sub_AB9940();
  v5[9] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_818AB0, v7, v6);
}

uint64_t sub_818AB0()
{
  v1 = v0[8];
  v2 = v0[6];

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = sub_AB5500();
  sub_82E744(v1, v2);
  v3(v0 + 2, 0);

  v4 = v0[1];

  return v4();
}

uint64_t Collaboration.Management.Model.deinit()
{

  v1 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__pendingCollaborators;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A108);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__activeCollaborators, v2);
  v4 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__transientCollaborators;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A120);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__playlist;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A130);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isOpen;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isResetingURL, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__shouldDismiss, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__hasNetworkConnectivity, v9);
  sub_12E1C(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel, &qword_E1A168);

  return v0;
}

uint64_t Collaboration.Management.Model.__deallocating_deinit()
{
  Collaboration.Management.Model.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_818E1C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.Model(0);
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

uint64_t Collaboration.Management.View.init(model:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Collaboration.Management.View(0);
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CD0);
  swift_storeEnumTagMultiPayload();
  v4 = v2[6];
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A190);
  swift_storeEnumTagMultiPayload();
  v5 = v2[7];
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CE0);
  swift_storeEnumTagMultiPayload();
  v6 = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A1A0);
  sub_AB7630();
  *(a1 + v6) = v13;
  v7 = a1 + v2[9];
  sub_AB7630();
  *v7 = v13;
  *(v7 + 1) = *(&v13 + 1);
  v8 = a1 + v2[10];
  sub_AB7630();
  *v8 = v13;
  *(v8 + 1) = *(&v13 + 1);
  v9 = a1 + v2[11];
  sub_AB7630();
  *v9 = v13;
  *(v9 + 1) = *(&v13 + 1);
  v10 = a1 + v2[12];
  sub_AB7630();
  *v10 = v13;
  *(v10 + 1) = *(&v13 + 1);
  type metadata accessor for Collaboration.Management.Model(0);
  sub_830C28(&qword_E1A1A8, type metadata accessor for Collaboration.Management.Model);
  result = sub_AB5B50();
  *a1 = result;
  a1[1] = v12;
  return result;
}

uint64_t property wrapper backing initializer of Collaboration.Management.View.shareSheet()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A1A0);
  sub_AB7630();
  return v1;
}

uint64_t property wrapper backing initializer of Collaboration.Management.View.viewModel()
{
  type metadata accessor for Collaboration.Management.Model(0);
  sub_830C28(&qword_E1A1A8, type metadata accessor for Collaboration.Management.Model);

  return sub_AB5B50();
}

uint64_t Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = type metadata accessor for Collaboration.Management.View(0);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A1B0);
  v6 = *(v5 - 8);
  v24 = v5;
  v25 = v6;
  __chkstk_darwin(v5);
  v8 = v22 - v7;
  v27 = v2;
  v22[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A1B8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1A1C0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1A1C8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1A1D0);
  v12 = sub_AB66B0();
  v13 = sub_830A08();
  v28 = v11;
  v29 = v12;
  v30 = v13;
  v31 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1A200);
  v16 = sub_36A00(&qword_E1A208, &qword_E1A200);
  v28 = v15;
  v29 = v16;
  v17 = swift_getOpaqueTypeConformance2();
  v28 = v9;
  v29 = v10;
  v30 = OpaqueTypeConformance2;
  v31 = v17;
  swift_getOpaqueTypeConformance2();
  sub_AB5D60();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  sub_83290C(v2, v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v18 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v19 = swift_allocObject();
  sub_832978(v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for Collaboration.Management.View);
  sub_36A00(&unk_E1A210, &qword_E1A1B0);
  v20 = v24;
  sub_AB7330();

  return (*(v25 + 8))(v8, v20);
}

uint64_t sub_819540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_AB66B0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A1D0);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A1C0);
  v10 = *(v25 - 8);
  __chkstk_darwin(v25);
  v12 = &v23 - v11;
  v24 = a1;
  v27 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AEA8);
  sub_36A00(&qword_E1AEB0, &qword_E1AEA8);
  sub_AB6CF0();
  KeyPath = swift_getKeyPath();
  if (qword_E16A90 != -1)
  {
    v22 = KeyPath;
    swift_once();
    KeyPath = v22;
  }

  v14 = qword_E1A048;
  v15 = &v9[*(v7 + 36)];
  *v15 = KeyPath;
  v15[1] = v14;
  sub_AB66A0();
  v16 = sub_830A08();
  sub_AB73A0();
  (*(v4 + 8))(v6, v3);
  v17 = sub_12E1C(v9, &qword_E1A1D0);
  __chkstk_darwin(v17);
  *(&v23 - 2) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A1C8);
  v28 = v7;
  v29 = v3;
  v30 = v16;
  v31 = &protocol witness table for InsetGroupedListStyle;
  swift_getOpaqueTypeConformance2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1A200);
  v19 = sub_36A00(&qword_E1A208, &qword_E1A200);
  v28 = v18;
  v29 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v25;
  sub_AB7300();
  return (*(v10 + 8))(v12, v20);
}

uint64_t sub_819940@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v168 = a2;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AEC8);
  v165 = *(v166 - 8);
  __chkstk_darwin(v166);
  v131 = &v130 - v3;
  v162 = sub_AB8E20();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v160 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AED0);
  __chkstk_darwin(v5 - 8);
  v167 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v164 = &v130 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AED8);
  v171 = *(v9 - 8);
  v172 = v9;
  __chkstk_darwin(v9);
  v139 = &v130 - v10;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AEE0);
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v151 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v150 = &v130 - v13;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AEE8);
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v132 = &v130 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AEF0);
  __chkstk_darwin(v15 - 8);
  v136 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v149 = &v130 - v18;
  v19 = sub_AB35C0();
  __chkstk_darwin(v19 - 8);
  v141 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_AB9250();
  v140 = *(v142 - 8);
  __chkstk_darwin(v142);
  v169 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v170 = &v130 - v23;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AEF8);
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v144 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v152 = &v130 - v26;
  v147 = sub_AB8B70();
  v145 = *(v147 - 8);
  __chkstk_darwin(v147);
  v133 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v143 = &v130 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AF00);
  __chkstk_darwin(v30 - 8);
  v163 = &v130 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v175 = &v130 - v33;
  v156 = sub_AB56D0();
  v34 = *(v156 - 8);
  __chkstk_darwin(v156);
  v36 = &v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AF08);
  __chkstk_darwin(v173);
  v38 = &v130 - v37;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AF10);
  v155 = *(v154 - 8);
  __chkstk_darwin(v154);
  v40 = &v130 - v39;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AF18);
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v130 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v130 - v43;
  v174 = a1;
  v176 = a1;
  sub_81D990(a1, v38);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AF20);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AF28);
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AF30);
  v47 = sub_834BF4();
  v48 = sub_834CD8(&qword_E1AF60, &qword_E1AF30, &unk_B2FDF8, sub_834D54);
  v177 = v45;
  v178 = v46;
  v179 = v47;
  v180 = v48;
  swift_getOpaqueTypeConformance2();
  sub_834E98();
  sub_AB7900();
  v49 = v156;
  (*(v34 + 104))(v36, enum case for Prominence.increased(_:), v156);
  sub_834F48();
  v173 = v44;
  v50 = v154;
  sub_AB70F0();
  v51 = v36;
  v52 = v175;
  (*(v34 + 8))(v51, v49);
  (*(v155 + 8))(v40, v50);
  v53 = *(v174 + 8);
  v54 = sub_814358();
  v56 = v171;
  v55 = v172;
  if ((v54 & 1) == 0)
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (!*(v177 + 16))
  {

    v52 = v175;
    v56 = v171;
    v55 = v172;
LABEL_9:
    (*(v56 + 56))(v52, 1, 1, v55);
    v79 = v164;
    v80 = v170;
    goto LABEL_11;
  }

  v57 = v145;
  v58 = v133;
  v59 = v147;
  (*(v145 + 16))(v133, v177 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v147);

  v60 = (*(v57 + 32))(v143, v58, v59);
  __chkstk_darwin(v60);
  v61 = v170;
  sub_AB91E0();
  v62 = v140;
  v63 = v142;
  (*(v140 + 16))(v169, v61, v142);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v64 = qword_E73660;
  sub_AB3550();
  v65 = sub_AB9320();
  v67 = v66;
  (*(v62 + 8))(v61, v63);
  v177 = v65;
  v178 = v67;
  sub_7ABE60();
  v177 = sub_AB6F20();
  v178 = v68;
  LOBYTE(v179) = v69 & 1;
  v180 = v70;
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_830C28(&qword_E1AFF0, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  sub_AB7900();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v156 = v53;
  if (v177 == 1)
  {
    __chkstk_darwin(v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B010);
    v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B018);
    v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B020);
    v74 = sub_AB6690();
    v75 = sub_36A00(&qword_E1B028, &qword_E1B020);
    v76 = sub_830C28(&qword_E1B030, &type metadata accessor for BorderlessButtonStyle);
    v177 = v73;
    v178 = v74;
    v179 = v75;
    v180 = v76;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v177 = v72;
    v178 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v78 = v132;
    sub_AB7920();
    v84 = v134;
    v82 = v149;
    v83 = v135;
    (*(v134 + 32))(v149, v78, v135);
    v81 = 0;
  }

  else
  {
    v81 = 1;
    v82 = v149;
    v83 = v135;
    v84 = v134;
  }

  v85 = (*(v84 + 56))(v82, v81, 1, v83);
  __chkstk_darwin(v85);
  sub_822B44(&v177);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AFF8);
  sub_8350A8();
  v86 = v150;
  sub_AB7900();
  v87 = *(v146 + 16);
  v88 = v144;
  v89 = v148;
  v87(v144, v152, v148);
  v90 = v82;
  v91 = v136;
  sub_15F84(v90, v136, &qword_E1AEF0);
  v92 = v137;
  v93 = *(v137 + 16);
  v94 = v138;
  v93(v151, v86, v138);
  v95 = v139;
  v87(v139, v88, v89);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B008);
  sub_15F84(v91, v95 + *(v96 + 48), &qword_E1AEF0);
  v97 = v151;
  v93((v95 + *(v96 + 64)), v151, v94);
  v98 = *(v92 + 8);
  v98(v150, v94);
  sub_12E1C(v149, &qword_E1AEF0);
  v99 = *(v146 + 8);
  v100 = v148;
  v99(v152, v148);
  v98(v97, v94);
  sub_12E1C(v91, &qword_E1AEF0);
  v99(v144, v100);
  v52 = v175;
  sub_36B0C(v95, v175, &qword_E1AED8);
  (*(v171 + 56))(v52, 0, 1, v172);
  (*(v145 + 8))(v143, v147);
  v80 = v170;
  v79 = v164;
LABEL_11:
  v101 = v169;
  swift_getKeyPath();
  swift_getKeyPath();
  v102 = v160;
  sub_AB5510();

  v103 = sub_AB8CC0();
  (*(v161 + 8))(v102, v162);
  if (v103 != 2 && (v103 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), sub_AB5510(), , v104 = , v177 == 1))
  {
    __chkstk_darwin(v104);
    sub_AB91E0();
    v105 = v140;
    v106 = v142;
    (*(v140 + 16))(v101, v80, v142);
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v107 = qword_E73660;
    sub_AB3550();
    v108 = sub_AB9320();
    v110 = v109;
    (*(v105 + 8))(v80, v106);
    v177 = v108;
    v178 = v110;
    sub_7ABE60();
    v181 = sub_AB6F20();
    v182 = v111;
    v183 = v112 & 1;
    v184 = v113;
    sub_82348C(&v177);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AFC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19178);
    sub_36A00(&unk_E1AFD0, &unk_E1AFC0);
    sub_7EE784();
    v114 = v131;
    sub_AB7910();
    v115 = v165;
    v116 = v114;
    v117 = v166;
    (*(v165 + 32))(v79, v116, v166);
    v118 = v117;
    v119 = 0;
  }

  else
  {
    v119 = 1;
    v118 = v166;
    v115 = v165;
  }

  (*(v115 + 56))(v79, v119, 1, v118);
  v120 = v158;
  v121 = *(v158 + 16);
  v122 = v157;
  v123 = v159;
  v121(v157, v173, v159);
  v124 = v163;
  sub_15F84(v52, v163, &qword_E1AF00);
  v125 = v167;
  sub_15F84(v79, v167, &qword_E1AED0);
  v126 = v168;
  v121(v168, v122, v123);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AFB8);
  sub_15F84(v124, &v126[*(v127 + 48)], &qword_E1AF00);
  sub_15F84(v125, &v126[*(v127 + 64)], &qword_E1AED0);
  sub_12E1C(v79, &qword_E1AED0);
  sub_12E1C(v175, &qword_E1AF00);
  v128 = *(v120 + 8);
  v128(v173, v123);
  sub_12E1C(v125, &qword_E1AED0);
  sub_12E1C(v124, &qword_E1AF00);
  return (v128)(v122, v123);
}

uint64_t sub_81B090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AFA8);
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v71 = &v61 - v4;
  v5 = type metadata accessor for Collaboration.Management.View(0);
  v62 = *(v5 - 8);
  v6 = *(v62 + 64);
  __chkstk_darwin(v5 - 8);
  v63 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AFF8);
  v67 = *(v7 - 8);
  v68 = v7;
  __chkstk_darwin(v7);
  v66 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v70 = &v61 - v10;
  v11 = sub_AB6890();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B1D8);
  __chkstk_darwin(v15);
  v17 = &v61 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B1E0);
  v64 = *(v18 - 8);
  v65 = v18;
  __chkstk_darwin(v18);
  v69 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v61 - v21;
  v23 = a1;
  if (sub_814358())
  {
    v24 = v73;
    v25 = *(v72 + 56);
    v26 = v74;

    return v25(v26, 1, 1, v24);
  }

  else
  {
    *v17 = sub_AB62E0();
    *(v17 + 1) = 0x4028000000000000;
    v17[16] = 0;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B1E8);
    sub_81B840(a1, &v17[*(v28 + 44)]);
    v29 = sub_AB6A90();
    sub_AB5690();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B1F0) + 36)];
    *v38 = v29;
    *(v38 + 1) = v31;
    *(v38 + 2) = v33;
    *(v38 + 3) = v35;
    *(v38 + 4) = v37;
    v38[40] = 0;
    v39 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B1F8) + 36)];
    v39[32] = 0;
    *v39 = 0u;
    *(v39 + 1) = 0u;
    v40 = sub_AB6430();
    v41 = &v17[*(v15 + 36)];
    *v41 = v40;
    v41[1] = sub_81D968;
    v41[2] = 0;
    sub_AB6880();
    sub_835D8C();
    v61 = v22;
    sub_AB71E0();
    (*(v12 + 8))(v14, v11);
    sub_12E1C(v17, &qword_E1B1D8);
    v75 = sub_814B0C();
    v42 = v23;
    v43 = v63;
    sub_83290C(v42, v63, type metadata accessor for Collaboration.Management.View);
    v44 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v45 = swift_allocObject();
    sub_832978(v43, v45 + v44, type metadata accessor for Collaboration.Management.View);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A0F0);
    _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
    sub_36A00(&qword_E1B058, &qword_E1A0F0);
    sub_830C28(&qword_E1AFF0, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    sub_830C28(&qword_E1B060, &type metadata accessor for Playlist.Collaborator);
    v46 = v70;
    sub_AB78C0();
    v48 = v64;
    v47 = v65;
    v49 = *(v64 + 16);
    v50 = v69;
    v49(v69, v61, v65);
    v52 = v66;
    v51 = v67;
    v53 = *(v67 + 16);
    v54 = v46;
    v55 = v68;
    v53(v66, v54, v68);
    v49(v71, v50, v47);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B228);
    v57 = v71;
    v53(&v71[*(v56 + 48)], v52, v55);
    v58 = *(v51 + 8);
    v58(v70, v55);
    v59 = *(v48 + 8);
    v59(v61, v47);
    v58(v52, v55);
    v59(v69, v47);
    v60 = v74;
    sub_36B0C(v57, v74, &qword_E1AFA8);
    return (*(v72 + 56))(v60, 0, 1, v73);
  }
}

uint64_t sub_81B840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B230);
  v167 = *(v3 - 8);
  v168 = v3;
  __chkstk_darwin(v3);
  v162 = (&v138 - v4);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ACC8);
  __chkstk_darwin(v161);
  v153 = &v138 - v5;
  v6 = type metadata accessor for Collaboration.Management.View(0);
  v146 = *(v6 - 8);
  __chkstk_darwin(v6);
  v147 = v7;
  v148 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B238);
  __chkstk_darwin(v150);
  v149 = &v138 - v8;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B240);
  __chkstk_darwin(v145);
  v151 = &v138 - v9;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B248);
  v156 = *(v158 - 8);
  __chkstk_darwin(v158);
  v152 = &v138 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B250);
  v159 = *(v11 - 8);
  v160 = v11;
  __chkstk_darwin(v11);
  v157 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v155 = &v138 - v14;
  v15 = sub_AB35C0();
  __chkstk_darwin(v15 - 8);
  v142 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_AB9250();
  v143 = *(v17 - 8);
  v144 = v17;
  __chkstk_darwin(v17);
  v19 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v141 = &v138 - v21;
  v22 = sub_AB8E20();
  v139 = *(v22 - 8);
  v140 = v22;
  __chkstk_darwin(v22);
  v138 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B258);
  __chkstk_darwin(v24 - 8);
  v166 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v170 = &v138 - v27;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B260);
  v28 = *(v164 - 8);
  __chkstk_darwin(v164);
  v30 = &v138 - v29;
  v31 = sub_AB5C70();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v138 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v138 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B268);
  __chkstk_darwin(v38 - 8);
  v165 = &v138 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v171 = a1;
  v172 = &v138 - v41;
  v154 = v6;
  sub_7EF870(v37);
  if (qword_E16AE8 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v31, qword_E1A0A0);
  (*(v32 + 16))(v34, v42, v31);
  sub_830C28(&qword_E17A98, &type metadata accessor for DynamicTypeSize);
  v43 = sub_AB9160();
  v44 = *(v32 + 8);
  v44(v34, v31);
  v44(v37, v31);
  if (v43)
  {
    (*(v28 + 56))(v172, 1, 1, v164);
    v45 = v19;
  }

  else
  {
    v46 = sub_AB7530();
    v45 = v19;
    if (qword_E16A88 != -1)
    {
      swift_once();
    }

    v47 = qword_E1A040;
    KeyPath = swift_getKeyPath();
    v49 = qword_E16AD8;

    if (v49 != -1)
    {
      swift_once();
    }

    sub_AB7A30();
    sub_AB5970();
    v50 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B270) + 36)];
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B278) + 28);
    sub_AB6470();
    v52 = sub_AB6480();
    (*(*(v52 - 8) + 56))(v50 + v51, 0, 1, v52);
    *v50 = swift_getKeyPath();
    *v30 = v46;
    *(v30 + 1) = KeyPath;
    *(v30 + 2) = v47;
    *(v30 + 56) = *&v177[16];
    v53 = v176;
    *(v30 + 40) = *v177;
    *(v30 + 24) = v53;
    if (qword_E16AE0 != -1)
    {
      swift_once();
    }

    v54 = qword_E1A098;
    v55 = swift_getKeyPath();
    v56 = v164;
    v57 = &v30[*(v164 + 36)];
    *v57 = v55;
    v57[1] = v54;
    v58 = v172;
    sub_36B0C(v30, v172, &qword_E1B260);
    (*(v28 + 56))(v58, 0, 1, v56);
  }

  v164 = sub_AB6450();
  v59 = 1;
  LOBYTE(v176) = 1;
  v60 = v171;
  sub_81CC50(v171, v180);
  *&v179[7] = v180[0];
  *&v179[23] = v180[1];
  *&v179[39] = v180[2];
  *&v179[55] = v180[3];
  v163 = v176;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v176 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v61 = v138;
    sub_AB5510();

    v62 = sub_AB8CC0();
    (*(v139 + 8))(v61, v140);
    if (v62 == 2 || (v62 & 1) == 0)
    {
      v63 = v141;
    }

    else
    {
      v63 = v141;
    }

    sub_AB91E0();
    v65 = v143;
    v64 = v144;
    (*(v143 + 16))(v45, v63, v144);
    v66 = v145;
    v67 = v151;
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v68 = qword_E73660;
    sub_AB3550();
    v69 = sub_AB9320();
    v71 = v70;
    (*(v65 + 8))(v63, v64);
    v145 = v69;
    *&v176 = v69;
    *(&v176 + 1) = v71;
    v72 = v148;
    sub_83290C(v60, v148, type metadata accessor for Collaboration.Management.View);
    v73 = (*(v146 + 80) + 16) & ~*(v146 + 80);
    v74 = swift_allocObject();
    sub_832978(v72, v74 + v73, type metadata accessor for Collaboration.Management.View);
    sub_7ABE60();

    v75 = v149;
    sub_AB76E0();
    v76 = sub_AB6B70();
    v77 = swift_getKeyPath();
    v78 = (v75 + *(v150 + 36));
    *v78 = v77;
    v78[1] = v76;
    sub_AB6C10();
    sub_8360CC();
    sub_AB6F80();
    sub_12E1C(v75, &qword_E1B238);
    v79 = sub_AB74B0();
    v80 = swift_getKeyPath();
    v81 = &v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B298) + 36)];
    *v81 = v80;
    v81[1] = v79;
    if (qword_E16AC8 != -1)
    {
      swift_once();
    }

    sub_AB7A30();
    sub_AB5970();
    v82 = &v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B2A0) + 36)];
    v83 = v180[5];
    *v82 = v180[4];
    *(v82 + 1) = v83;
    *(v82 + 2) = v180[6];
    v84 = sub_AB6A90();
    sub_AB5690();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = &v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B2A8) + 36)];
    *v93 = v84;
    *(v93 + 1) = v86;
    *(v93 + 2) = v88;
    *(v93 + 3) = v90;
    *(v93 + 4) = v92;
    v93[40] = 0;
    if (qword_E16910 != -1)
    {
      swift_once();
    }

    v151 = v71;
    v94 = static UIColor.MusicTint.normal;
    v95 = sub_AB7510();
    v96 = sub_AB6AA0();
    v97 = &v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B2B0) + 36)];
    *v97 = v95;
    v97[8] = v96;
    v98 = &v67[*(v66 + 36)];
    v99 = enum case for RoundedCornerStyle.continuous(_:);
    v100 = sub_AB63A0();
    (*(*(v100 - 8) + 104))(v98, v99, v100);
    *&v98[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B2B8) + 36)] = 256;
    v101 = v66;
    v102 = v67;
    if (qword_E16AF0 != -1)
    {
      swift_once();
    }

    v103 = v161;
    v104 = __swift_project_value_buffer(v161, qword_E1A0B8);
    v105 = v153;
    sub_15F84(v104, v153, &qword_E1ACC8);
    v150 = sub_8361B0();
    v106 = sub_36A00(&qword_E1AD00, &qword_E1ACC8);
    v107 = v152;
    sub_AB70A0();
    sub_12E1C(v105, &qword_E1ACC8);
    sub_12E1C(v102, &qword_E1B240);
    v108 = (v171 + *(v154 + 11));
    v109 = *v108;
    v110 = *(v108 + 1);
    LOBYTE(v173) = v109;
    v174 = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
    v111 = sub_AB7660();
    v154 = &v138;
    __chkstk_darwin(v111);
    v112 = v145;
    *(&v138 - 4) = v113;
    *(&v138 - 3) = v112;
    *(&v138 - 2) = v151;
    *&v176 = v101;
    *(&v176 + 1) = v103;
    *v177 = v150;
    *&v177[8] = v106;
    swift_getOpaqueTypeConformance2();
    v114 = v155;
    v115 = v158;
    sub_AB7260();

    (*(v156 + 8))(v107, v115);
    v117 = v159;
    v116 = v160;
    v118 = *(v159 + 16);
    v119 = v157;
    v118(v157, v114, v160);
    v120 = v162;
    *v162 = 0;
    *(v120 + 8) = 1;
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B300);
    v118((v120 + *(v121 + 48)), v119, v116);
    v122 = *(v117 + 8);
    v122(v114, v116);
    v122(v119, v116);
    sub_36B0C(v120, v170, &qword_E1B230);
    v59 = 0;
  }

  v123 = v170;
  (*(v167 + 56))(v170, v59, 1, v168);
  v124 = v172;
  v125 = v165;
  sub_15F84(v172, v165, &qword_E1B268);
  v126 = v166;
  sub_15F84(v123, v166, &qword_E1B258);
  v127 = v169;
  sub_15F84(v125, v169, &qword_E1B268);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B280);
  v129 = v127 + *(v128 + 48);
  v130 = v164;
  v173 = v164;
  v174 = 0;
  v131 = v163;
  v175[0] = v163;
  *&v175[1] = *v179;
  *&v175[17] = *&v179[16];
  *&v175[33] = *&v179[32];
  *&v175[49] = *&v179[48];
  v132 = *&v179[63];
  *&v175[64] = *&v179[63];
  v133 = *v175;
  *v129 = v164;
  *(v129 + 16) = v133;
  v134 = *&v175[16];
  v135 = *&v175[32];
  v136 = *&v175[48];
  *(v129 + 80) = v132;
  *(v129 + 48) = v135;
  *(v129 + 64) = v136;
  *(v129 + 32) = v134;
  sub_15F84(v126, v127 + *(v128 + 64), &qword_E1B258);
  sub_15F84(&v173, &v176, &qword_E1B288);
  sub_12E1C(v123, &qword_E1B258);
  sub_12E1C(v124, &qword_E1B268);
  sub_12E1C(v126, &qword_E1B258);
  v176 = v130;
  v177[0] = v131;
  *&v177[17] = *&v179[16];
  *&v177[33] = *&v179[32];
  *v178 = *&v179[48];
  *&v178[15] = *&v179[63];
  *&v177[1] = *v179;
  sub_12E1C(&v176, &qword_E1B288);
  return sub_12E1C(v125, &qword_E1B268);
}

uint64_t sub_81CC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v3 = sub_AB35C0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_AB9250();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v56[-v9];
  sub_AB91E0();
  (*(v5 + 16))(v7, v10, v4);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v11 = qword_E73660;
  sub_AB3550();
  v12 = sub_AB9320();
  v14 = v13;
  (*(v5 + 8))(v10, v4);
  v61 = v12;
  v62 = v14;
  sub_7ABE60();
  v15 = sub_AB6F20();
  v17 = v16;
  v19 = v18;
  LODWORD(v61) = sub_AB6730();
  v20 = sub_AB6E20();
  v22 = v21;
  v24 = v23;
  sub_36B74(v15, v17, v19 & 1);

  sub_AB6C80();
  v25 = sub_AB6E80();
  v59 = v26;
  v28 = v27;
  v30 = v29;

  sub_36B74(v20, v22, v24 & 1);

  v31 = sub_814C70();
  if (v32)
  {
    v61 = v31;
    v62 = v32;
    v33 = sub_AB6F20();
    v35 = v34;
    v37 = v36;
    LODWORD(v61) = sub_AB6760();
    v38 = sub_AB6E20();
    v40 = v39;
    v57 = v28;
    v42 = v41;
    v60 = v30;
    sub_36B74(v33, v35, v37 & 1);

    sub_AB6C90();
    v43 = sub_AB6E80();
    v45 = v44;
    v58 = a2;
    v46 = v25;
    v48 = v47;
    v50 = v49;

    v51 = v42 & 1;
    LOBYTE(v28) = v57;
    sub_36B74(v38, v40, v51);
    v30 = v60;

    v52 = v48 & 1;
    v25 = v46;
    a2 = v58;
    sub_AFF30(v43, v45, v52);
  }

  else
  {
    v43 = 0;
    v45 = 0;
    v52 = 0;
    v50 = 0;
  }

  v53 = v28 & 1;
  v54 = v59;
  sub_AFF30(v25, v59, v53);

  sub_AFEEC(v43, v45, v52, v50);
  sub_AFFE0(v43, v45, v52, v50);
  LOBYTE(v61) = v53;
  *a2 = v25;
  *(a2 + 8) = v54;
  *(a2 + 16) = v53;
  *(a2 + 24) = v30;
  *(a2 + 32) = v43;
  *(a2 + 40) = v45;
  *(a2 + 48) = v52;
  *(a2 + 56) = v50;
  sub_AFFE0(v43, v45, v52, v50);
  sub_36B74(v25, v54, v53);
}

uint64_t sub_81D0D4(uint64_t a1)
{
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 44));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
  sub_AB7650();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = sub_AB4BA0();
  v11 = sub_AB9F50();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "[Management] Stop/Leave button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_81D27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a2;
  v52 = a3;
  v59 = a4;
  v5 = type metadata accessor for Collaboration.Management.View(0);
  v53 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v54 = v6;
  v55 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB7410();
  __chkstk_darwin(v7 - 8);
  v58 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = v46 - v10;
  v11 = sub_AB35C0();
  __chkstk_darwin(v11 - 8);
  v50 = sub_AB9250();
  v12 = *(v50 - 8);
  __chkstk_darwin(v50);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v46 - v16;
  v18 = sub_AB8E20();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v22 = sub_AB8CC0();
  (*(v19 + 8))(v21, v18);
  if (v22 != 2 && (v22 & 1) != 0)
  {
    sub_AB91E0();
    v23 = *(v12 + 16);
    v24 = v50;
    v23(v14, v17, v50);
    if (qword_E16870 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  sub_AB91E0();
  v23 = *(v12 + 16);
  v24 = v50;
  v23(v14, v17, v50);
  if (qword_E16870 != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  v25 = qword_E73660;
  sub_AB3550();
  v26 = v25;
  v49 = sub_AB9320();
  v28 = v27;
  v29 = *(v12 + 8);
  v29(v17, v24);
  sub_AB91E0();
  v23(v14, v17, v24);
  sub_AB3550();
  v30 = sub_AB9320();
  v32 = v31;
  v29(v17, v24);
  v60 = v49;
  v61 = v28;
  sub_7ABE60();
  v33 = sub_AB6F20();
  v49 = v34;
  v50 = v33;
  v47 = v35;
  v48 = v36;
  v60 = v30;
  v61 = v32;
  sub_AB6F20();
  v46[1] = v37;
  v60 = v51;
  v61 = v52;

  v38 = sub_AB6F20();
  v40 = v39;
  LOBYTE(v28) = v41;
  v42 = v55;
  sub_83290C(v56, v55, type metadata accessor for Collaboration.Management.View);
  v43 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v44 = swift_allocObject();
  sub_832978(v42, v44 + v43, type metadata accessor for Collaboration.Management.View);
  sub_AB73E0();
  sub_36B74(v38, v40, v28 & 1);

  sub_AB73F0();
  return sub_AB73D0();
}

uint64_t sub_81D990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for Collaboration.Management.View(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AF28);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  *v9 = sub_AB6440();
  *(v9 + 1) = 0x4028000000000000;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1B070);
  sub_81DC5C(a1, &v9[*(v10 + 44)]);
  v11 = &v9[*(v7 + 36)];
  v11[32] = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = a1 + *(v4 + 48);
  v13 = *v12;
  v14 = *(v12 + 8);
  v19 = v13;
  v20 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
  sub_AB7660();
  sub_83290C(a1, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_832978(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for Collaboration.Management.View);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AF30);
  sub_834BF4();
  sub_834CD8(&qword_E1AF60, &qword_E1AF30, &unk_B2FDF8, sub_834D54);
  sub_AB70D0();

  return sub_12E1C(v9, &qword_E1AF28);
}

uint64_t sub_81DC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v240 = a2;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B088);
  v238 = *(v239 - 8);
  __chkstk_darwin(v239);
  v217 = &v195 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B090);
  __chkstk_darwin(v4 - 8);
  v200 = &v195 - v5;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B098);
  __chkstk_darwin(v197);
  v209 = &v195 - v6;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B0A0);
  __chkstk_darwin(v207);
  v206 = &v195 - v7;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B0A8);
  __chkstk_darwin(v204);
  v203 = &v195 - v8;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B0B0);
  __chkstk_darwin(v199);
  v202 = &v195 - v9;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B0B8);
  __chkstk_darwin(v198);
  v205 = &v195 - v10;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B0C0);
  __chkstk_darwin(v201);
  v212 = &v195 - v11;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B0C8);
  __chkstk_darwin(v211);
  v216 = &v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v210 = &v195 - v14;
  __chkstk_darwin(v15);
  v215 = &v195 - v16;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B0D0);
  __chkstk_darwin(v196);
  v214 = &v195 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v213 = (&v195 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B0D8);
  __chkstk_darwin(v20 - 8);
  v237 = &v195 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v242 = &v195 - v23;
  v235 = sub_AB8E20();
  v234 = *(v235 - 8);
  __chkstk_darwin(v235);
  v233 = &v195 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB60);
  __chkstk_darwin(v25 - 8);
  v227 = &v195 - v26;
  v230 = sub_AB89C0();
  v228 = *(v230 - 8);
  __chkstk_darwin(v230);
  v226 = &v195 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30);
  __chkstk_darwin(v28 - 8);
  v220 = &v195 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v219 = &v195 - v31;
  v231 = sub_AB4820();
  v229 = *(v231 - 8);
  __chkstk_darwin(v231);
  v244 = &v195 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v222 = &v195 - v34;
  __chkstk_darwin(v35);
  v225 = &v195 - v36;
  __chkstk_darwin(v37);
  v224 = &v195 - v38;
  v39 = sub_AB4780();
  v246 = *(v39 - 8);
  __chkstk_darwin(v39);
  v41 = &v195 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ArtworkImage.Placeholder(0);
  v243 = *(v42 - 8);
  v43 = *(v243 + 8);
  __chkstk_darwin(v42 - 8);
  v44 = &v195 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v195 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70);
  __chkstk_darwin(v48 - 8);
  v218 = &v195 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = &v195 - v51;
  __chkstk_darwin(v53);
  v55 = &v195 - v54;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B0E0);
  __chkstk_darwin(v232);
  v236 = &v195 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v241 = &v195 - v58;
  v208 = a1;
  v247 = *(a1 + 8);
  sub_8162AC(v55);
  v59 = enum case for Playlist.Variant.regular(_:);
  v60 = sub_AB8CB0();
  v61 = *(v60 - 8);
  (*(v61 + 104))(v47, v59, v60);
  (*(v61 + 56))(v47, 0, 1, v60);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80);
  (*(*(v62 - 8) + 56))(v47, 0, 11, v62);
  v262 = 1;
  v260 = 1;
  v258 = 1;
  v63 = *(v246 + 104);
  v245 = v41;
  v223 = v39;
  v63(v41, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v39);
  v221 = v47;
  sub_83290C(v47, v44, type metadata accessor for ArtworkImage.Placeholder);
  v64 = (v243[80] + 16) & ~v243[80];
  v65 = (v43 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  sub_832978(v44, v66 + v64, type metadata accessor for ArtworkImage.Placeholder);
  v67 = v66 + v65;
  *v67 = 0;
  *(v67 + 8) = v262;
  *(v67 + 9) = *v261;
  *(v67 + 12) = *&v261[3];
  *(v67 + 16) = 0;
  *(v67 + 24) = v260;
  *(v67 + 25) = *v259;
  *(v67 + 28) = *&v259[3];
  *(v67 + 32) = 0;
  *(v67 + 40) = v258;
  *(v67 + 41) = 2;
  v243 = v55;
  sub_15F84(v55, v52, &qword_E1BD70);
  v68 = type metadata accessor for ArtworkImage.ViewModel(0);
  v69 = *(*(v68 - 8) + 48);
  if (v69(v52, 1, v68) == 1)
  {
    sub_12E1C(v52, &qword_E1BD70);
    v70 = sub_AB8A60();
    v71 = v219;
    (*(*(v70 - 8) + 56))(v219, 1, 1, v70);
  }

  else
  {
    v72 = sub_AB8A60();
    v73 = *(v72 - 8);
    v71 = v219;
    (*(v73 + 16))(v219, v52, v72);
    sub_832E5C(v52, type metadata accessor for ArtworkImage.ViewModel);
    (*(v73 + 56))(v71, 0, 1, v72);
  }

  sub_15F84(v71, v220, &unk_E1BA30);
  v74 = v224;
  sub_AB4810();
  sub_12E1C(v71, &unk_E1BA30);
  sub_AB47B0();
  v75 = v218;
  sub_15F84(v243, v218, &qword_E1BD70);
  if (v69(v75, 1, v68) == 1)
  {
    sub_12E1C(v75, &qword_E1BD70);
    v76 = v228;
    v77 = v227;
    v78 = v230;
    (*(v228 + 56))(v227, 1, 1, v230);
    v79 = v241;
  }

  else
  {
    v77 = v227;
    sub_15F84(v75 + *(v68 + 20), v227, &qword_E1AB60);
    sub_832E5C(v75, type metadata accessor for ArtworkImage.ViewModel);
    v76 = v228;
    v78 = v230;
    v80 = (*(v228 + 48))(v77, 1, v230);
    v79 = v241;
    if (v80 != 1)
    {
      v81 = v226;
      (*(v76 + 32))(v226, v77, v78);
      goto LABEL_12;
    }
  }

  v81 = v226;
  if (qword_E16A58 != -1)
  {
    swift_once();
  }

  v82 = __swift_project_value_buffer(v78, static Artwork.CropStyle.fallback);
  (*(v76 + 16))(v81, v82, v78);
  if ((*(v76 + 48))(v77, 1, v78) != 1)
  {
    sub_12E1C(v77, &qword_E1AB60);
  }

LABEL_12:
  v83 = v222;
  v84 = v244;
  sub_AB4790();
  (*(v76 + 8))(v81, v78);
  v85 = *(v229 + 8);
  v86 = v231;
  v85(v84, v231);
  v87 = v225;
  sub_AB47C0();
  v85(v83, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E197E8);
  sub_7FD7E8();
  sub_AB47A0();

  v85(v87, v86);
  v85(v74, v86);
  (*(v246 + 8))(v245, v223);
  sub_832E5C(v221, type metadata accessor for ArtworkImage.Placeholder);
  sub_12E1C(v243, &qword_E1BD70);
  if (qword_E16AD0 != -1)
  {
    swift_once();
  }

  sub_AB7A30();
  sub_AB5970();
  v88 = (v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B0E8) + 36));
  v89 = v249;
  *v88 = v248;
  v88[1] = v89;
  v88[2] = v250;
  if (qword_E169F0 != -1)
  {
    swift_once();
  }

  v90 = static Corner.small;
  v91 = *algn_E739F8;
  v92 = byte_E73A00;
  v93 = v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B0F0) + 36);
  *v93 = v90;
  *(v93 + 8) = v91;
  *(v93 + 16) = v92;
  if (qword_E16A10 != -1)
  {
    swift_once();
  }

  v94 = static Border.artwork;
  v95 = qword_E73A58;
  v96 = byte_E73A60;
  v97 = v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B0F8) + 36);
  *v97 = v94;
  *(v97 + 8) = v95;
  *(v97 + 16) = v96;
  *(v97 + 24) = v90;
  *(v97 + 32) = v91;
  *(v97 + 40) = v92;

  sub_AB7480();
  v98 = sub_AB74C0();

  v99 = v79 + *(v232 + 36);
  *v99 = v98;
  *(v99 + 8) = xmmword_AFEDA0;
  *(v99 + 24) = 0x4000000000000000;
  swift_getKeyPath();
  swift_getKeyPath();
  v100 = v233;
  sub_AB5510();

  v101 = sub_AB8D30();
  v103 = v102;
  (*(v234 + 8))(v100, v235);
  *&v251 = v101;
  *(&v251 + 1) = v103;
  sub_7ABE60();
  v104 = sub_AB6F20();
  v106 = v105;
  v108 = v107;
  LODWORD(v251) = sub_AB6730();
  v109 = sub_AB6E20();
  v111 = v110;
  v113 = v112;
  sub_36B74(v104, v106, v108 & 1);

  if (qword_E16A80 != -1)
  {
    swift_once();
  }

  v114 = sub_AB6E80();
  v116 = v115;
  v118 = v117;

  sub_36B74(v109, v111, v113 & 1);

  sub_AB6C10();
  v245 = sub_AB6E00();
  v244 = v119;
  LODWORD(v121) = v120;
  v246 = v122;
  sub_36B74(v114, v116, v118 & 1);

  v123 = sub_814994();
  v124 = 1;
  if (v123)
  {
    v125 = sub_AB62D0();
    v126 = v213;
    *v213 = v125;
    *(v126 + 8) = 0x4020000000000000;
    *(v126 + 16) = 0;
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B108);
    v128 = v208;
    sub_81F874(v208, (v126 + *(v127 + 44)));
    *(v126 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B110) + 36)) = 256;
    v129 = sub_AB6AB0();
    if (qword_E16AB8 != -1)
    {
      swift_once();
    }

    LODWORD(v247) = v121;
    sub_AB5690();
    v130 = v126 + *(v196 + 36);
    *v130 = v129;
    *(v130 + 8) = v131;
    *(v130 + 16) = v132;
    *(v130 + 24) = v133;
    *(v130 + 32) = v134;
    *(v130 + 40) = 0;
    v135 = v200;
    sub_820970(v128, v200);
    sub_AB7A40();
    sub_AB5E90();
    v136 = v209;
    sub_36B0C(v135, v209, &qword_E1B090);
    v137 = (v136 + *(v197 + 36));
    v138 = v256;
    v137[4] = v255;
    v137[5] = v138;
    v137[6] = v257;
    v139 = v252;
    *v137 = v251;
    v137[1] = v139;
    v140 = v254;
    v137[2] = v253;
    v137[3] = v140;
    KeyPath = swift_getKeyPath();
    v142 = v136;
    v143 = v206;
    sub_36B0C(v142, v206, &qword_E1B098);
    v144 = v143 + *(v207 + 36);
    *v144 = KeyPath;
    *(v144 + 8) = 0;
    *(v144 + 16) = 1;
    v145 = v143;
    v146 = v203;
    sub_36B0C(v145, v203, &qword_E1B0A0);
    *(v146 + *(v204 + 36)) = 256;
    LODWORD(KeyPath) = sub_AB6760();
    v147 = v146;
    v148 = v202;
    sub_36B0C(v147, v202, &qword_E1B0A8);
    *(v148 + *(v199 + 36)) = KeyPath;
    v149 = sub_AB6CB0();
    v150 = swift_getKeyPath();
    v151 = v148;
    v152 = v205;
    sub_36B0C(v151, v205, &qword_E1B0B0);
    v153 = (v152 + *(v198 + 36));
    *v153 = v150;
    v153[1] = v149;
    LOBYTE(v149) = sub_AB6A90();
    sub_AB5690();
    v155 = v154;
    v157 = v156;
    v159 = v158;
    v161 = v160;
    v162 = v152;
    v163 = v212;
    sub_36B0C(v162, v212, &qword_E1B0B8);
    v164 = v163 + *(v201 + 36);
    *v164 = v149;
    *(v164 + 8) = v155;
    *(v164 + 16) = v157;
    *(v164 + 24) = v159;
    *(v164 + 32) = v161;
    *(v164 + 40) = 0;
    v165 = sub_AB6AB0();
    if (qword_E16AC0 != -1)
    {
      swift_once();
    }

    sub_AB5690();
    v167 = v166;
    v169 = v168;
    v171 = v170;
    v173 = v172;
    v174 = v163;
    v175 = v210;
    sub_36B0C(v174, v210, &qword_E1B0C0);
    v176 = v175 + *(v211 + 36);
    *v176 = v165;
    *(v176 + 8) = v167;
    *(v176 + 16) = v169;
    *(v176 + 24) = v171;
    *(v176 + 32) = v173;
    *(v176 + 40) = 0;
    v177 = v215;
    sub_36B0C(v175, v215, &qword_E1B0C8);
    v178 = v214;
    sub_15F84(v126, v214, &qword_E1B0D0);
    v179 = v216;
    sub_15F84(v177, v216, &qword_E1B0C8);
    v121 = v126;
    v180 = v217;
    sub_15F84(v178, v217, &qword_E1B0D0);
    v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B118);
    sub_15F84(v179, v180 + *(v181 + 48), &qword_E1B0C8);
    v182 = v180 + *(v181 + 64);
    sub_12E1C(v177, &qword_E1B0C8);
    sub_12E1C(v121, &qword_E1B0D0);
    *v182 = 0x3FF0000000000000;
    *(v182 + 8) = 0;
    sub_12E1C(v179, &qword_E1B0C8);
    sub_12E1C(v178, &qword_E1B0D0);
    sub_36B0C(v180, v242, &qword_E1B088);
    v124 = 0;
    v79 = v241;
    LOBYTE(v121) = v247;
  }

  v183 = v242;
  (*(v238 + 56))(v242, v124, 1, v239);
  v247 = sub_AB62E0();
  v184 = v236;
  sub_15F84(v79, v236, &qword_E1B0E0);
  v185 = v237;
  sub_15F84(v183, v237, &qword_E1B0D8);
  v186 = v240;
  sub_15F84(v184, v240, &qword_E1B0E0);
  v187 = v79;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B100);
  v189 = v186 + v188[12];
  v190 = v245;
  v191 = v244;
  *v189 = v245;
  *(v189 + 8) = v191;
  v192 = v121 & 1;
  *(v189 + 16) = v192;
  *(v189 + 24) = v246;
  sub_15F84(v185, v186 + v188[16], &qword_E1B0D8);
  v193 = v186 + v188[20];
  sub_AFF30(v190, v191, v192);

  sub_12E1C(v183, &qword_E1B0D8);
  sub_12E1C(v187, &qword_E1B0E0);
  *v193 = v247;
  *(v193 + 8) = 0;
  *(v193 + 16) = 1;
  *(v193 + 24) = 0;
  *(v193 + 32) = 1;
  sub_12E1C(v185, &qword_E1B0D8);
  sub_36B74(v190, v191, v192);

  return sub_12E1C(v184, &qword_E1B0E0);
}

uint64_t sub_81F874@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v110 = a2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B180);
  v108 = *(v104 - 8);
  __chkstk_darwin(v104);
  v99 = v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v98 = v87 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B188);
  __chkstk_darwin(v6 - 8);
  v109 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v103 = v87 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17060);
  __chkstk_darwin(v10 - 8);
  v96 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v87 - v13;
  v15 = type metadata accessor for Collaboration.Management.View(0);
  v16 = v15 - 8;
  v17 = *(v15 - 8);
  __chkstk_darwin(v15);
  v111 = v18;
  v19 = (v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  __chkstk_darwin(v20);
  v95 = v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v87 - v23;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B190);
  __chkstk_darwin(v102);
  v94 = v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v112 = v87 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B198);
  v106 = *(v28 - 8);
  v107 = v28;
  __chkstk_darwin(v28);
  v105 = v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v113 = v87 - v31;
  v101 = type metadata accessor for Collaboration.Management.View;
  sub_83290C(a1, v19, type metadata accessor for Collaboration.Management.View);
  v32 = *(v17 + 80);
  v33 = swift_allocObject();
  v100 = type metadata accessor for Collaboration.Management.View;
  sub_832978(v19, v33 + ((v32 + 16) & ~v32), type metadata accessor for Collaboration.Management.View);
  *&v24[*(v20 + 24)] = swift_getKeyPath();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC60);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *v24 = 0;
  *(v24 + 1) = sub_835BB4;
  *(v24 + 2) = v33;
  v93 = v20;
  v35 = &v24[*(v20 + 28)];
  *v35 = KeyPath;
  v35[8] = 0;
  v36 = a1;
  v90 = *(a1 + 8);
  sub_815FF8(v14);
  v37 = sub_AB31C0();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  v89 = v37;
  v88 = v39;
  v87[1] = v38 + 48;
  v40 = (v39)(v14, 1) == 1;
  sub_12E1C(v14, &qword_E17060);
  v41 = swift_getKeyPath();
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  v43 = v112;
  sub_832978(v24, v112, _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v44 = v102;
  v45 = (v43 + *(v102 + 36));
  *v45 = v41;
  v45[1] = sub_C8EC8;
  v45[2] = v42;
  v46 = v36 + *(v16 + 44);
  v47 = *v46;
  v48 = *(v46 + 8);
  v114 = v47;
  v115 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
  sub_AB7660();
  v97 = v36;
  sub_83290C(v36, v19, v101);
  v92 = v32;
  v49 = (v32 + 16) & ~v32;
  v50 = swift_allocObject();
  v101 = v19;
  sub_832978(v19, v50 + v49, v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B1A0);
  sub_835C78();
  v51 = v104;
  sub_834CD8(&qword_E1B1C8, &qword_E1B1A0, &unk_B30060, sub_832614);
  v52 = v44;
  v53 = v112;
  sub_AB72A0();

  v54 = 1;
  v55 = v103;

  sub_12E1C(v53, &qword_E1B190);
  v56 = [objc_opt_self() currentTraitCollection];
  v57 = [v56 userInterfaceIdiom];

  if (v57 != &dword_4 + 2)
  {
    v58 = v101;
    sub_83290C(v97, v101, type metadata accessor for Collaboration.Management.View);
    v59 = swift_allocObject();
    sub_832978(v58, v59 + v49, type metadata accessor for Collaboration.Management.View);
    v60 = swift_getKeyPath();
    v61 = v93;
    v62 = v95;
    *&v95[*(v93 + 24)] = v60;
    swift_storeEnumTagMultiPayload();
    v63 = swift_getKeyPath();
    *v62 = 1;
    *(v62 + 8) = sub_835D60;
    *(v62 + 16) = v59;
    v64 = v62 + *(v61 + 28);
    *v64 = v63;
    *(v64 + 8) = 0;
    v65 = v96;
    sub_815FF8(v96);
    v66 = v88(v65, 1, v89) == 1;
    sub_12E1C(v65, &qword_E17060);
    v67 = swift_getKeyPath();
    v68 = swift_allocObject();
    *(v68 + 16) = v66;
    v69 = v94;
    sub_832978(v62, v94, _s10ManagementO4ViewV5ShareO6ButtonVMa);
    v70 = (v69 + *(v52 + 36));
    *v70 = v67;
    v70[1] = sub_837360;
    v70[2] = v68;
    v71 = v69;
    v72 = v99;
    sub_36B0C(v71, v99, &qword_E1B190);
    v73 = (v72 + *(v51 + 36));
    *v73 = sub_820948;
    v73[1] = 0;
    v74 = v72;
    v75 = v98;
    sub_36B0C(v74, v98, &qword_E1B180);
    sub_36B0C(v75, v55, &qword_E1B180);
    v54 = 0;
  }

  v76 = v55;
  (*(v108 + 56))(v55, v54, 1, v51);
  v78 = v105;
  v77 = v106;
  v79 = *(v106 + 16);
  v80 = v113;
  v81 = v107;
  v79(v105, v113, v107);
  v82 = v109;
  sub_15F84(v55, v109, &qword_E1B188);
  v83 = v110;
  v79(v110, v78, v81);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B1D0);
  sub_15F84(v82, &v83[*(v84 + 48)], &qword_E1B188);
  sub_12E1C(v76, &qword_E1B188);
  v85 = *(v77 + 8);
  v85(v80, v81);
  sub_12E1C(v82, &qword_E1B188);
  return (v85)(v78, v81);
}

uint64_t sub_820350(uint64_t a1)
{
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 36));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
  sub_AB7650();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = sub_AB4BA0();
  v11 = sub_AB9F50();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "[Management] Share Sheet button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_8204F8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_AB8E20();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17060);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_AB31C0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_815FF8(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_12E1C(v8, &qword_E17060);
    v14 = 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    swift_getKeyPath();
    v16 = v2;
    swift_getKeyPath();

    sub_AB5510();

    v14 = Collaboration.Manager.activityViewController(for:url:)();

    (*(v3 + 8))(v5, v16);
    result = (*(v10 + 8))(v12, v9);
  }

  *a1 = v14;
  return result;
}

uint64_t sub_8207A0(uint64_t a1)
{
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 40));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
  sub_AB7650();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = sub_AB4BA0();
  v11 = sub_AB9F50();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "[Management] QRCode button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_820970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for Collaboration.Management.View(0);
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  __chkstk_darwin(v3 - 8);
  v41 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B120);
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B128);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B130);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v40 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v43 == 1)
  {
    *v13 = sub_AB62E0();
    *(v13 + 1) = 0x4020000000000000;
    v13[16] = 0;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B170);
    sub_820E88(&v13[*(v14 + 44)]);
    sub_15F84(v13, v10, &qword_E1B130);
    swift_storeEnumTagMultiPayload();
    sub_36A00(&qword_E1B148, &qword_E1B130);
    sub_835990();
    v15 = v42;
    sub_AB6610();
    sub_12E1C(v13, &qword_E1B130);
    v16 = 0;
    v17 = v15;
  }

  else
  {
    v37 = v8;
    v38 = v11;
    v17 = v42;
    sub_815484();
    if (v18)
    {
      sub_AB6380();
      v19 = sub_AB6F00();
      v34 = v20;
      v35 = v19;
      v33 = v21;
      v36 = v22;
      v32 = sub_AB7430();
      KeyPath = swift_getKeyPath();
      v24 = swift_getKeyPath();
      v25 = v41;
      sub_83290C(v40, v41, type metadata accessor for Collaboration.Management.View);
      v26 = (*(v39 + 80) + 16) & ~*(v39 + 80);
      v27 = swift_allocObject();
      sub_832978(v25, v27 + v26, type metadata accessor for Collaboration.Management.View);
      v28 = &v7[*(v5 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B140);
      sub_AB5A80();
      *v28 = v24;
      v29 = v34;
      *v7 = v35;
      *(v7 + 1) = v29;
      v7[16] = v33 & 1;
      *(v7 + 3) = v36;
      *(v7 + 4) = KeyPath;
      *(v7 + 5) = v32;
      sub_15F84(v7, v10, &qword_E1B120);
      swift_storeEnumTagMultiPayload();
      sub_36A00(&qword_E1B148, &qword_E1B130);
      sub_835990();
      sub_AB6610();
      sub_12E1C(v7, &qword_E1B120);
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B138);
  return (*(*(v30 - 8) + 56))(v17, v16, 1, v30);
}

uint64_t sub_820E88@<X0>(char *a1@<X8>)
{
  v35 = a1;
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC18);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  sub_AB58D0();
  sub_AB91E0();
  (*(v3 + 16))(v5, v8, v2);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v16 = qword_E73660;
  sub_AB3550();
  v17 = sub_AB9320();
  v19 = v18;
  (*(v3 + 8))(v8, v2);
  v36 = v17;
  v37 = v19;
  sub_7ABE60();
  v20 = sub_AB6F20();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = *(v10 + 16);
  v27(v12, v15, v9);
  v34 = v15;
  v28 = v12;
  v29 = v35;
  v27(v35, v28, v9);
  v30 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B178) + 48)];
  *v30 = v20;
  *(v30 + 1) = v22;
  v30[16] = v24 & 1;
  *(v30 + 3) = v26;
  sub_AFF30(v20, v22, v24 & 1);
  v31 = *(v10 + 8);

  v31(v34, v9);
  sub_36B74(v20, v22, v24 & 1);

  return (v31)(v28, v9);
}

uint64_t sub_821268(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720);
  __chkstk_darwin(v3 - 8);
  v5 = &v10[-v4];
  v6 = *(a2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v10[15] = 1;

  sub_AB5520();
  v7 = sub_AB9990();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  sub_7C7F60(0, 0, v5, &unk_B2FFA8, v8);

  return sub_AB5A70();
}

uint64_t sub_8213D4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17060);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_AB31C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_815FF8(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_12E1C(v4, &qword_E17060);
    v10 = 0;
    v11 = 0;
LABEL_6:
    v18 = 0;
    v20 = 0;
    v22 = 0;
    v24 = 0;
    v26 = 0;
    v25 = 0uLL;
    goto LABEL_7;
  }

  (*(v6 + 32))(v8, v4, v5);
  v12 = sub_AB30E0();
  v14 = QRCode.init(data:errorCorrectionLevel:)(v12, v13, 76, &v28);
  v15 = *(&v28 + 1);
  v16 = v29;
  v17 = v30;
  result = (*(v6 + 8))(v8, v5, v14);
  v11 = v30;
  if (!v30)
  {
    v10 = 0;
    goto LABEL_6;
  }

  v18 = v31;
  v10 = v29;
  v27 = v28;
  sub_90090(v15, v16);
  v19 = v17;
  v20 = sub_AB5D70();
  v21 = sub_AB6AA0();
  v22 = sub_AB7A30();
  v24 = v23;
  result = sub_12E1C(&v28, &qword_E1B080);
  v25 = v27;
  v26 = v21;
LABEL_7:
  *a1 = v25;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v18;
  *(a1 + 40) = v20;
  *(a1 + 48) = v26;
  *(a1 + 56) = v22;
  *(a1 + 64) = v24;
  return result;
}

uint64_t sub_821628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A980);
  __chkstk_darwin(v6);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v21[-v10];
  v12 = sub_AB8B70();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a3, a1, v12);
  v14 = *(a2 + 8);
  KeyPath = swift_getKeyPath();
  v16 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  *(a3 + v16[9]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CE0);
  swift_storeEnumTagMultiPayload();
  *(a3 + v16[5]) = v14;
  v17 = a3 + v16[6];
  v21[15] = 0;

  sub_AB7630();
  v18 = v22;
  *v17 = v21[16];
  *(v17 + 8) = v18;
  (*(v13 + 56))(v11, 1, 1, v12);
  sub_15F84(v11, v8, &unk_E1A980);
  sub_AB7630();
  sub_12E1C(v11, &unk_E1A980);
  v19 = v16[8];
  *(a3 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A190);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_821870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v36 = a2;
  v3 = sub_AB6690();
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Collaboration.Management.View(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B020);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B018);
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  __chkstk_darwin(v15);
  v18 = &v31 - v17;
  sub_83290C(a1, &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  sub_832978(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for Collaboration.Management.View);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B038);
  sub_835190();
  sub_AB7690();
  sub_AB6680();
  v21 = sub_36A00(&qword_E1B028, &qword_E1B020);
  v22 = sub_830C28(&qword_E1B030, &type metadata accessor for BorderlessButtonStyle);
  v23 = v32;
  sub_AB6FB0();
  v24 = v23;
  (*(v33 + 8))(v6, v23);
  (*(v12 + 8))(v14, v11);
  v25 = v31;
  v26 = v31 + *(v8 + 56);
  v27 = *v26;
  v28 = *(v26 + 8);
  v42 = v27;
  v43 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
  sub_AB7660();
  v37 = v25;
  v38 = v11;
  v39 = v24;
  v40 = v21;
  v41 = v22;
  swift_getOpaqueTypeConformance2();
  v29 = v34;
  sub_AB7260();

  return (*(v35 + 8))(v18, v29);
}

uint64_t sub_821D08(uint64_t a1)
{
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 48));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
  sub_AB7650();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = sub_AB4BA0();
  v11 = sub_AB9F50();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "[Management] Remove Join Request button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

__n128 sub_821EB0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v27 - v8;
  sub_AB91E0();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v10 = qword_E73660;
  sub_AB3550();
  v11 = sub_AB9320();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  *&v27[0] = v11;
  *(&v27[0] + 1) = v13;
  sub_7ABE60();
  v14 = sub_AB6F20();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_AB7A30();
  sub_AB5E90();
  v21 = v18 & 1;
  v28 = v18 & 1;
  v22 = sub_AB7460();
  KeyPath = swift_getKeyPath();
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v21;
  *(a1 + 24) = v20;
  v24 = v27[5];
  *(a1 + 96) = v27[4];
  *(a1 + 112) = v24;
  *(a1 + 128) = v27[6];
  v25 = v27[1];
  *(a1 + 32) = v27[0];
  *(a1 + 48) = v25;
  result = v27[3];
  *(a1 + 64) = v27[2];
  *(a1 + 80) = result;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v22;
  return result;
}

uint64_t sub_822158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v62 = a2;
  v2 = type metadata accessor for Collaboration.Management.View(0);
  v56 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v57 = v3;
  v59 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB7410();
  __chkstk_darwin(v4 - 8);
  v61 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = v48 - v7;
  v8 = sub_AB35C0();
  __chkstk_darwin(v8 - 8);
  v9 = sub_AB9250();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v48 - v14;
  sub_AB91E0();
  v16 = *(v10 + 16);
  v48[4] = v10 + 16;
  v49 = v16;
  v16(v12, v15, v9);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v17 = qword_E73660;
  v18 = qword_E73660;
  v63 = v17;
  v19 = v18;
  sub_AB3550();
  v20 = v19;
  v21 = sub_AB9320();
  v23 = v22;
  v24 = *(v10 + 8);
  v24(v15, v9);
  v48[1] = v10 + 8;
  v64 = v21;
  v65 = v23;
  v48[0] = sub_7ABE60();
  v25 = sub_AB6F20();
  v54 = v26;
  v55 = v25;
  v52 = v27;
  v53 = v28;
  sub_AB91E0();
  v29 = v49;
  v49(v12, v15, v9);
  sub_AB3550();
  v30 = sub_AB9320();
  v32 = v31;
  v24(v15, v9);
  v64 = v30;
  v65 = v32;
  v51 = sub_AB6F20();
  v48[3] = v33;
  v50 = v34;
  v48[2] = v35 & 1;
  sub_AB91E0();
  v29(v12, v15, v9);
  sub_AB3550();
  v36 = sub_AB9320();
  v38 = v37;
  v24(v15, v9);
  v64 = v36;
  v65 = v38;
  v39 = sub_AB6F20();
  v41 = v40;
  v43 = v42;
  v44 = v59;
  sub_83290C(v58, v59, type metadata accessor for Collaboration.Management.View);
  v45 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v46 = swift_allocObject();
  sub_832978(v44, v46 + v45, type metadata accessor for Collaboration.Management.View);
  sub_AB73E0();
  sub_36B74(v39, v41, v43 & 1);

  sub_AB73F0();
  return sub_AB73D0();
}

uint64_t sub_822710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_AB5A00();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = *(a1 + 8);
  v13 = sub_AB9990();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;

  sub_7C7F60(0, 0, v11, a3, v14);

  type metadata accessor for Collaboration.Management.View(0);
  sub_7EFCC8(v8);
  sub_AB59F0();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_8228D4(uint64_t a1)
{
  v2 = type metadata accessor for Collaboration.Management.View(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  sub_83290C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_832978(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for Collaboration.Management.View);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A0F0);
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_36A00(&qword_E1B058, &qword_E1A0F0);
  sub_830C28(&qword_E1AFF0, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  sub_830C28(&qword_E1B060, &type metadata accessor for Playlist.Collaborator);
  return sub_AB78C0();
}

uint64_t sub_822B44@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = sub_AB9230();
  __chkstk_darwin(v10 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v11 = *(v21 + 16);

  sub_AB9220();
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_AB9210(v23);
  v21 = v11;
  sub_AB91F0();
  v24._object = 0x8000000000B75B40;
  v24._countAndFlagsBits = 0xD000000000000010;
  sub_AB9210(v24);
  sub_AB9240();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v12 = qword_E73660;
  sub_AB3550();
  v13 = sub_AB9320();
  v15 = v14;
  (*(v4 + 8))(v9, v3);
  v21 = v13;
  v22 = v15;
  sub_7ABE60();
  result = sub_AB6F20();
  *a1 = result;
  *(a1 + 8) = v17;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v19;
  return result;
}

uint64_t sub_822E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Collaboration.Management.View(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  *a2 = sub_AB62E0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B068) + 44);
  sub_83290C(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  sub_AB9940();
  v7 = sub_AB9930();
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_832978(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for Collaboration.Management.View);
  sub_83290C(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v10 = sub_AB9930();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  sub_832978(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v8, type metadata accessor for Collaboration.Management.View);
  sub_AB7820();
  return sub_AB7790();
}

uint64_t sub_823084@<X0>(BOOL *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = (v3 & 1) == 0;
  return result;
}

uint64_t sub_82310C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720);
  __chkstk_darwin(v6 - 8);
  v8 = &v15[-v7];
  v9 = *a1;
  v10 = *(a4 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = (v9 & 1) == 0;
  v15[15] = v11;

  sub_AB5520();
  v12 = sub_AB9990();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v10;
  *(v13 + 40) = v11;

  sub_7C8260(0, 0, v8, &unk_B2FEA8, v13);
}

uint64_t sub_82327C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  sub_AB91E0();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v10 = qword_E73660;
  sub_AB3550();
  v11 = sub_AB9320();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v18[1] = v11;
  v18[2] = v13;
  sub_7ABE60();
  result = sub_AB6F20();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

__n128 sub_82348C@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v39[-v8];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if ((v43 & 1) == 0)
  {
    sub_AB91E0();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v23 = qword_E73660;
    sub_AB3550();
    v24 = sub_AB9320();
    v26 = v25;
    (*(v4 + 8))(v9, v3);
    *&v43 = v24;
    *(&v43 + 1) = v26;
    sub_7ABE60();
    v16 = sub_AB6F20();
    v18 = v16;
    v19 = v17;
    *&v40 = v16;
    *(&v40 + 1) = v17;
    v21 = v27 & 1;
    v41.n128_u64[0] = v27 & 1;
    v41.n128_u64[1] = v28;
    LOBYTE(v42) = 0;
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v10 = *(v43 + 16);

  v11 = (v4 + 16);
  if (v10)
  {
    sub_AB91E0();
    (*v11)(v6, v9, v3);
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v12 = qword_E73660;
    sub_AB3550();
    v13 = sub_AB9320();
    v15 = v14;
    (*(v4 + 8))(v9, v3);
    *&v43 = v13;
    *(&v43 + 1) = v15;
    sub_7ABE60();
    v16 = sub_AB6F20();
    v18 = v16;
    v19 = v17;
    v21 = v20 & 1;
    *&v40 = v16;
    *(&v40 + 1) = v17;
    v41.n128_u64[0] = v20 & 1;
    v41.n128_u64[1] = v22;
    LOBYTE(v42) = 1;
LABEL_9:
    sub_AFF30(v16, v17, v21);

    sub_AB6610();
    v40 = v43;
    v41 = v44;
    v42 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19180);
    sub_7EE810();
    sub_AB6610();
    sub_36B74(v18, v19, v21);

    goto LABEL_10;
  }

  sub_AB91E0();
  (*v11)(v6, v9, v3);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v32 = qword_E73660;
  sub_AB3550();
  v33 = sub_AB9320();
  v35 = v34;
  (*(v4 + 8))(v9, v3);
  *&v43 = v33;
  *(&v43 + 1) = v35;
  sub_7ABE60();
  *&v40 = sub_AB6F20();
  *(&v40 + 1) = v36;
  v41.n128_u64[0] = v37 & 1;
  v41.n128_u64[1] = v38;
  v42 = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19180);
  sub_7EE810();
  sub_AB6610();
LABEL_10:
  result = v44;
  v30 = v45;
  v31 = v46;
  *a1 = v43;
  *(a1 + 16) = result;
  *(a1 + 32) = v30;
  *(a1 + 33) = v31;
  return result;
}

uint64_t sub_823A50(uint64_t a1)
{
  v2 = sub_AB6660();
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A200);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_AB6650();
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AEB8);
  sub_36A00(&qword_E1AEC0, &qword_E1AEB8);
  sub_AB5830();
  sub_36A00(&qword_E1A208, &qword_E1A200);
  sub_AB66F0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_823C3C(uint64_t a1)
{
  v2 = type metadata accessor for Collaboration.Management.View(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_AB5680();
  __chkstk_darwin(v5 - 8);
  sub_AB5660();
  sub_83290C(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_832978(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for Collaboration.Management.View);
  return sub_AB76A0();
}

uint64_t sub_823DB8(uint64_t a1)
{
  v16 = sub_AB6240();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CD0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_AB5A00();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Collaboration.Management.View(0);
  sub_15F84(a1 + *(v12 + 20), v7, &unk_E16CD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_AB9F40();
    v13 = sub_AB6A40();
    sub_AB4A90();

    sub_AB6230();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_AB59F0();
  return (*(v9 + 8))(v11, v8);
}

void sub_824040(uint64_t a1, _BYTE *a2)
{
  v3 = sub_AB5A00();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    type metadata accessor for Collaboration.Management.View(0);
    sub_7EFCC8(v6);
    sub_AB59F0();
    (*(v4 + 8))(v6, v3);
  }
}

void sub_824134()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  byte_E1A030 = v1 == &dword_4 + 2;
}

uint64_t sub_8241CC()
{
  if (qword_E16A78 != -1)
  {
    swift_once();
  }

  if (byte_E1A030 == 1)
  {
    result = sub_AB6B60();
    v1 = result;
  }

  else
  {
    sub_AB6C40();
    v1 = sub_AB6BA0();
  }

  qword_E1A040 = v1;
  return result;
}

uint64_t sub_824254()
{
  if (qword_E16A78 != -1)
  {
    result = swift_once();
  }

  v0 = 56.0;
  if (byte_E1A030)
  {
    v0 = 68.0;
  }

  qword_E1A048 = *&v0;
  return result;
}

uint64_t sub_824360(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  if (qword_E16A78 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  if (byte_E1A030 == 1)
  {
    result = a2();
  }

  else
  {
    result = a3();
  }

  *a4 = result;
  return result;
}

uint64_t sub_8243F0()
{
  if (qword_E16A78 != -1)
  {
    swift_once();
  }

  if (byte_E1A030 == 1)
  {
    result = sub_AB6C10();
  }

  else
  {
    result = sub_AB6C00();
  }

  qword_E1A068 = v1;
  return result;
}

uint64_t sub_824458()
{
  if (qword_E16A78 != -1)
  {
    result = swift_once();
  }

  v0 = 12.0;
  if (byte_E1A030)
  {
    v0 = 0.0;
  }

  qword_E1A070 = *&v0;
  return result;
}

uint64_t sub_8244C0()
{
  if (qword_E16A78 != -1)
  {
    result = swift_once();
  }

  v0 = -4.0;
  if (byte_E1A030)
  {
    v0 = 0.0;
  }

  qword_E1A078 = *&v0;
  return result;
}

uint64_t sub_824528()
{
  if (qword_E16A78 != -1)
  {
    result = swift_once();
  }

  v0 = 32.0;
  if (byte_E1A030)
  {
    v0 = 44.0;
  }

  qword_E1A080 = *&v0;
  return result;
}

uint64_t sub_824598()
{
  if (qword_E16A78 != -1)
  {
    result = swift_once();
  }

  v0 = 84.0;
  if (byte_E1A030)
  {
    v0 = 169.0;
  }

  qword_E1A088 = *&v0;
  return result;
}

uint64_t sub_82460C()
{
  if (qword_E16A78 != -1)
  {
    result = swift_once();
  }

  v0 = 38.0;
  if (byte_E1A030)
  {
    v0 = 48.0;
  }

  qword_E1A090 = *&v0;
  return result;
}

uint64_t sub_82467C()
{
  if (qword_E16A78 != -1)
  {
    swift_once();
  }

  if (byte_E1A030 == 1)
  {
    result = sub_AB7430();
  }

  else
  {
    if (qword_E16910 != -1)
    {
      swift_once();
    }

    v1 = static UIColor.MusicTint.normal;
    result = sub_AB7510();
  }

  qword_E1A098 = result;
  return result;
}

uint64_t sub_824724()
{
  v0 = sub_AB5C70();
  __swift_allocate_value_buffer(v0, qword_E1A0A0);
  v1 = __swift_project_value_buffer(v0, qword_E1A0A0);
  v2 = enum case for DynamicTypeSize.accessibility2(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_8247AC()
{
  v0 = sub_AB5C70();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ACC8);
  __swift_allocate_value_buffer(v4, qword_E1A0B8);
  v5 = __swift_project_value_buffer(v4, qword_E1A0B8);
  if (qword_E16AE8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_E1A0A0);
  (*(v1 + 16))(v3, v6, v0);
  sub_830C28(&unk_E1AD10, &type metadata accessor for DynamicTypeSize);
  result = sub_AB91C0();
  if (result)
  {
    return (*(v1 + 32))(v5, v3, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_82497C@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v42 = sub_AB63C0();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_AB6890();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AA98);
  __chkstk_darwin(v5);
  v7 = &v29 - v6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AAA0);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v29 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AAA8);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = &v29 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AAB0);
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v29 = &v29 - v12;
  *v7 = sub_AB62E0();
  *(v7 + 1) = 0x4028000000000000;
  v7[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AAB8);
  sub_824F9C(v1, &v7[*(v13 + 44)]);
  v7[*(v5 + 36)] = 0;
  v44 = v1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AAC0);
  v15 = sub_83273C();
  v16 = sub_834CD8(&unk_E1AAF0, &qword_E1AAC0, &unk_B2F798, sub_832820);
  sub_AB7020();
  sub_12E1C(v7, &qword_E1AA98);
  v17 = v1 + *(_s10ManagementO4ViewV19CollaboratorRowViewVMa(0) + 24);
  v18 = *v17;
  v19 = *(v17 + 8);
  v49 = v18;
  v50 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
  sub_AB7660();
  v43 = v1;
  v45 = v5;
  v46 = v14;
  v47 = v15;
  v48 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_AB7260();

  (*(v31 + 8))(v9, v21);
  v22 = v36;
  sub_AB6880();
  v45 = v21;
  v46 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v29;
  v25 = v32;
  sub_AB71E0();
  (*(v37 + 8))(v22, v38);
  (*(v33 + 8))(v11, v25);
  v26 = v39;
  sub_AB63B0();
  v45 = v25;
  v46 = v23;
  swift_getOpaqueTypeConformance2();
  v27 = v34;
  sub_AB7200();
  (*(v40 + 8))(v26, v42);
  return (*(v35 + 8))(v24, v27);
}

uint64_t sub_824F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v162 = a2;
  v3 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v125 = *(v3 - 8);
  __chkstk_darwin(v3);
  v126 = v4;
  v127 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB40);
  __chkstk_darwin(v129);
  v132 = &v124 - v5;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB48);
  __chkstk_darwin(v131);
  v128 = &v124 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB50);
  v159 = *(v7 - 8);
  v160 = v7;
  __chkstk_darwin(v7);
  v130 = &v124 - v8;
  v9 = sub_AB8E20();
  v155 = *(v9 - 8);
  v156 = v9;
  __chkstk_darwin(v9);
  v154 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB58);
  __chkstk_darwin(v11 - 8);
  v161 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v163 = &v124 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB60);
  __chkstk_darwin(v15 - 8);
  v143 = &v124 - v16;
  v17 = sub_AB89C0();
  v144 = *(v17 - 8);
  v145 = v17;
  __chkstk_darwin(v17);
  v142 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30);
  __chkstk_darwin(v19 - 8);
  v138 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v137 = &v124 - v22;
  v23 = sub_AB4820();
  v146 = *(v23 - 8);
  v147 = v23;
  __chkstk_darwin(v23);
  v149 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v139 = &v124 - v26;
  __chkstk_darwin(v27);
  v141 = &v124 - v28;
  __chkstk_darwin(v29);
  v151 = &v124 - v30;
  v152 = sub_AB4780();
  v150 = *(v152 - 8);
  __chkstk_darwin(v152);
  v165 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ArtworkImage.Placeholder(0);
  v133 = *(v32 - 8);
  v33 = *(v133 + 64);
  __chkstk_darwin(v32 - 8);
  v134 = &v124 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v148 = &v124 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70);
  __chkstk_darwin(v36 - 8);
  v136 = &v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v135 = &v124 - v39;
  __chkstk_darwin(v40);
  v164 = &v124 - v41;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB68);
  v153 = *(v167 - 8);
  __chkstk_darwin(v167);
  v140 = &v124 - v42;
  v43 = sub_AB5C70();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = &v124 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v49 = &v124 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB70);
  __chkstk_darwin(v50 - 8);
  v158 = &v124 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v54 = &v124 - v53;
  v157 = v3;
  v55 = a1;
  sub_7EF870(v49);
  if (qword_E16AE8 != -1)
  {
    swift_once();
  }

  v56 = __swift_project_value_buffer(v43, qword_E1A0A0);
  (*(v44 + 16))(v46, v56, v43);
  sub_830C28(&qword_E17A98, &type metadata accessor for DynamicTypeSize);
  v57 = sub_AB9160();
  v58 = *(v44 + 8);
  v58(v46, v43);
  v58(v49, v43);
  v59 = 1;
  v60 = 1;
  v61 = v55;
  v62 = v54;
  v63 = v167;
  v166 = v54;
  if ((v57 & 1) == 0)
  {
    v64 = v164;
    sub_826678(v164);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80);
    v66 = v148;
    (*(*(v65 - 8) + 56))(v148, 8, 11, v65);
    v190 = 1;
    v188 = 1;
    v186 = 1;
    (*(v150 + 104))(v165, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v152);
    v67 = v134;
    sub_83290C(v66, v134, type metadata accessor for ArtworkImage.Placeholder);
    v68 = (*(v133 + 80) + 16) & ~*(v133 + 80);
    v69 = swift_allocObject();
    sub_832978(v67, v69 + v68, type metadata accessor for ArtworkImage.Placeholder);
    v134 = v69;
    v70 = v69 + ((v33 + v68 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v70 = 0;
    *(v70 + 8) = v190;
    *(v70 + 9) = *v189;
    *(v70 + 12) = *&v189[3];
    *(v70 + 16) = 0;
    *(v70 + 24) = v188;
    *(v70 + 25) = *v187;
    *(v70 + 28) = *&v187[3];
    *(v70 + 32) = 0;
    *(v70 + 40) = v186;
    *(v70 + 41) = 2;
    v71 = v135;
    sub_15F84(v64, v135, &qword_E1BD70);
    v72 = type metadata accessor for ArtworkImage.ViewModel(0);
    v73 = *(*(v72 - 8) + 48);
    if (v73(v71, 1, v72) == 1)
    {
      sub_12E1C(v71, &qword_E1BD70);
      v74 = sub_AB8A60();
      v75 = v137;
      (*(*(v74 - 8) + 56))(v137, 1, 1, v74);
    }

    else
    {
      v76 = sub_AB8A60();
      v77 = *(v76 - 8);
      v75 = v137;
      (*(v77 + 16))(v137, v71, v76);
      sub_832E5C(v71, type metadata accessor for ArtworkImage.ViewModel);
      (*(v77 + 56))(v75, 0, 1, v76);
    }

    sub_15F84(v75, v138, &unk_E1BA30);
    sub_AB4810();
    sub_12E1C(v75, &unk_E1BA30);
    sub_AB47B0();
    v78 = v136;
    sub_15F84(v164, v136, &qword_E1BD70);
    v79 = v73(v78, 1, v72);
    v124 = v61;
    if (v79 == 1)
    {
      sub_12E1C(v78, &qword_E1BD70);
      v80 = v143;
      v81 = v144;
      v82 = v145;
      (*(v144 + 56))(v143, 1, 1, v145);
      v83 = v142;
      v59 = 1;
    }

    else
    {
      v80 = v143;
      sub_15F84(v78 + *(v72 + 20), v143, &qword_E1AB60);
      sub_832E5C(v78, type metadata accessor for ArtworkImage.ViewModel);
      v81 = v144;
      v82 = v145;
      v84 = (*(v144 + 48))(v80, 1, v145);
      v83 = v142;
      v59 = 1;
      if (v84 != 1)
      {
        (*(v81 + 32))(v142, v80, v82);
LABEL_15:
        v86 = v139;
        v87 = v149;
        sub_AB4790();
        (*(v81 + 8))(v83, v82);
        v88 = v147;
        v89 = *(v146 + 8);
        v89(v87, v147);
        v90 = v141;
        sub_AB47C0();
        v89(v86, v88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E197E8);
        sub_7FD7E8();
        v91 = v140;
        sub_AB47A0();

        v89(v90, v88);
        v89(v151, v88);
        (*(v150 + 8))(v165, v152);
        sub_832E5C(v148, type metadata accessor for ArtworkImage.Placeholder);
        sub_12E1C(v164, &qword_E1BD70);
        v92 = v91 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ABE0) + 36);
        *v92 = 0;
        *(v92 + 8) = 0;
        *(v92 + 16) = 2;
        if (qword_E16AD8 != -1)
        {
          swift_once();
        }

        sub_AB7A30();
        sub_AB5970();
        v93 = (v91 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ABE8) + 36));
        v94 = v181;
        *v93 = v180;
        v93[1] = v94;
        v93[2] = v182;
        v62 = v166;
        v63 = v167;
        v95 = v91 + *(v167 + 36);
        *v95 = 0;
        *(v95 + 8) = 257;
        sub_36B0C(v91, v62, &qword_E1AB68);
        v60 = 0;
        v61 = v124;
        goto LABEL_18;
      }
    }

    if (qword_E16A58 != -1)
    {
      swift_once();
    }

    v85 = __swift_project_value_buffer(v82, static Artwork.CropStyle.fallback);
    (*(v81 + 16))(v83, v85, v82);
    if ((*(v81 + 48))(v80, 1, v82) != 1)
    {
      sub_12E1C(v80, &qword_E1AB60);
    }

    goto LABEL_15;
  }

LABEL_18:
  (*(v153 + 56))(v62, v60, 1, v63);
  v167 = sub_AB6450();
  LOBYTE(v170[0]) = 1;
  sub_826B14(v61, v178);
  *&v177[23] = v178[1];
  *&v177[39] = v178[2];
  *&v177[55] = v178[3];
  v177[71] = v179;
  *&v177[7] = v178[0];
  LODWORD(v165) = LOBYTE(v170[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  v96 = v154;
  sub_AB5510();

  v97 = sub_AB8CC0();
  (*(v155 + 8))(v96, v156);
  if (v97 != 2 && (v97 & 1) != 0)
  {
    v98 = sub_AB8B60();
    if (v98 != 2 && (v98 & 1) != 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510();

      v99 = sub_88E600(v61, v170[0]);

      if (v99)
      {
        v100 = v128;
        sub_AB58D0();
        if (qword_E16AC8 != -1)
        {
          swift_once();
        }

        sub_AB7A30();
        sub_AB5970();
        v101 = (v100 + *(v131 + 36));
        v102 = v184;
        *v101 = v183;
        v101[1] = v102;
        v101[2] = v185;
        sub_15F84(v100, v132, &qword_E1AB48);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC00);
        sub_832DA4();
        sub_36A00(&unk_E1AC20, &qword_E1AC00);
        v103 = v130;
        sub_AB6610();
        sub_12E1C(v100, &qword_E1AB48);
      }

      else
      {
        v104 = v127;
        sub_83290C(v61, v127, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
        v105 = (*(v125 + 80) + 16) & ~*(v125 + 80);
        v106 = swift_allocObject();
        sub_832978(v104, v106 + v105, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
        sub_83290C(v61, v104, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
        v107 = swift_allocObject();
        sub_832978(v104, v107 + v105, _s10ManagementO4ViewV19CollaboratorRowViewVMa);

        v108 = v132;
        *v132 = 1;
        *(v108 + 1) = sub_832D10;
        *(v108 + 2) = v106;
        v108[24] = 0;
        *(v108 + 4) = sub_832D20;
        *(v108 + 5) = v107;

        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC00);
        sub_832DA4();
        sub_36A00(&unk_E1AC20, &qword_E1AC00);
        v103 = v130;
        sub_AB6610();
      }

      sub_36B0C(v103, v163, &qword_E1AB50);
      v59 = 0;
    }
  }

  v109 = v163;
  (*(v159 + 56))(v163, v59, 1, v160);
  v110 = v62;
  v111 = v158;
  sub_15F84(v110, v158, &unk_E1AB70);
  v112 = v161;
  sub_15F84(v109, v161, &qword_E1AB58);
  v113 = v162;
  sub_15F84(v111, v162, &unk_E1AB70);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ABF0);
  v115 = (v113 + v114[12]);
  v116 = v167;
  v168[0] = v167;
  v168[1] = 0;
  v117 = v165;
  LOBYTE(v169[0]) = v165;
  *(v169 + 1) = *v177;
  *(&v169[1] + 1) = *&v177[16];
  *(&v169[2] + 1) = *&v177[32];
  *(&v169[3] + 1) = *&v177[48];
  *(&v169[4] + 1) = *&v177[64];
  v118 = v169[0];
  *v115 = v167;
  v115[1] = v118;
  v119 = v169[1];
  v120 = v169[2];
  v121 = v169[3];
  *(v115 + 73) = *(&v169[3] + 9);
  v115[3] = v120;
  v115[4] = v121;
  v115[2] = v119;
  v122 = v113 + v114[16];
  *v122 = 0;
  *(v122 + 8) = 1;
  sub_15F84(v112, v113 + v114[20], &qword_E1AB58);
  sub_15F84(v168, v170, &qword_E1ABF8);
  sub_12E1C(v109, &qword_E1AB58);
  sub_12E1C(v166, &unk_E1AB70);
  sub_12E1C(v112, &qword_E1AB58);
  v170[0] = v116;
  v170[1] = 0;
  v171 = v117;
  v173 = *&v177[16];
  v174 = *&v177[32];
  v175 = *&v177[48];
  v176 = *&v177[64];
  v172 = *v177;
  sub_12E1C(v170, &qword_E1ABF8);
  return sub_12E1C(v111, &unk_E1AB70);
}

uint64_t sub_826678@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_AB8A60();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v31 = &v28 - v9;
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v14 = __chkstk_darwin(v13);
  v16 = &v28 - v15;
  v17 = *(v2 + 56);
  v17(&v28 - v15, 1, 1, v1, v14);
  sub_AB8B50();
  v33 = *(v2 + 48);
  if (v33(v12, 1, v1) == 1)
  {
    v29 = v17;
    sub_12E1C(v12, &unk_E1BA30);
    sub_13C80(0, &qword_E175A8);
    v18 = sub_AB8B10();
    v30 = v7;
    v20 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v18, v19, 0, 1);
    v7 = v30;

    if (v20)
    {
      v21 = v31;
      sub_AB8910();
      sub_12E1C(v16, &unk_E1BA30);
      (v29)(v21, 0, 1, v1);
      sub_36B0C(v21, v16, &unk_E1BA30);
    }
  }

  else
  {
    sub_12E1C(v16, &unk_E1BA30);
    (*(v2 + 32))(v16, v12, v1);
    (v17)(v16, 0, 1, v1);
  }

  sub_15F84(v16, v7, &unk_E1BA30);
  if (v33(v7, 1, v1) == 1)
  {
    sub_12E1C(v16, &unk_E1BA30);
    sub_12E1C(v7, &unk_E1BA30);
    v22 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v22 - 8) + 56))(v32, 1, 1, v22);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    v24 = v32;
    (*(v2 + 16))(v32, v4, v1);
    v25 = type metadata accessor for ArtworkImage.ViewModel(0);
    v26 = *(v25 + 20);
    sub_AB8940();
    (*(v2 + 8))(v4, v1);
    sub_12E1C(v16, &unk_E1BA30);
    v27 = sub_AB89C0();
    (*(*(v27 - 8) + 56))(v24 + v26, 0, 1, v27);
    return (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  }
}

uint64_t sub_826B14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v100 = a2;
  v3 = sub_AB9230();
  __chkstk_darwin(v3 - 8);
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v98 = v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB9250();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v96 = v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v97 = v93 - v10;
  v11 = sub_AB8E20();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + *(_s10ManagementO4ViewV19CollaboratorRowViewVMa(0) + 20));
  swift_getKeyPath();
  swift_getKeyPath();
  v93[1] = v15;
  sub_AB5510();

  v16 = sub_AB8CC0();
  (*(v12 + 8))(v14, v11);
  v17 = sub_8274B4(v16 & 1);
  if (v18)
  {
    v94 = v7;
    v95 = v6;
    v106 = v17;
    v107 = v18;
    sub_7ABE60();
    v19 = sub_AB6F20();
    v21 = v20;
    v23 = v22;
    LODWORD(v106) = sub_AB6730();
    v24 = sub_AB6E20();
    v26 = v25;
    v28 = v27;
    sub_36B74(v19, v21, v23 & 1);

    if (qword_E16A98 != -1)
    {
      swift_once();
    }

    v29 = sub_AB6E80();
    v31 = v30;
    v33 = v32;
    v35 = v34;

    sub_36B74(v24, v26, v28 & 1);

    v36 = v31 & 1;
    sub_AFF30(v29, v35, v31 & 1);
    v99 = v33;

    v6 = v95;
    v7 = v94;
  }

  else
  {
    v29 = 0;
    v35 = 0;
    v36 = 0;
    v99 = 0;
  }

  v37 = sub_AB8B60();
  if (v37 == 2 || (v37 & 1) == 0 || (sub_814358() & 1) != 0)
  {
    v38 = sub_AB8B40();
    if (!v39)
    {
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = -1;
      goto LABEL_17;
    }

    v40 = v38;
    v41 = v39;
    v95 = v35;
    sub_AB9220();
    v111._countAndFlagsBits = 64;
    v111._object = 0xE100000000000000;
    sub_AB9210(v111);
    v112._countAndFlagsBits = v40;
    v112._object = v41;
    sub_AB9200(v112);

    v113._countAndFlagsBits = 0;
    v113._object = 0xE000000000000000;
    sub_AB9210(v113);
    v42 = v97;
    sub_AB9240();
    (*(v7 + 16))(v96, v42, v6);
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v94 = v29;
    v43 = qword_E73660;
    sub_AB3550();
    v44 = sub_AB9320();
    v46 = v45;
    (*(v7 + 8))(v42, v6);
    v106 = v44;
    v107 = v46;
    sub_7ABE60();
    v47 = sub_AB6F20();
    v49 = v48;
    v51 = v50;
    LODWORD(v106) = sub_AB6760();
    v52 = sub_AB6E20();
    v54 = v53;
    v56 = v55;
    sub_36B74(v47, v49, v51 & 1);

    if (qword_E16AA0 != -1)
    {
      swift_once();
    }

    v57 = sub_AB6E80();
    v59 = v58;
    v61 = v60;
    v63 = v62;

    sub_36B74(v52, v54, v56 & 1);

    v101 = v57;
    v102 = v59;
    v103 = v61 & 1;
    v104 = v63;
    v105 = 1;
    sub_AB6610();
    v64 = v106;
    v65 = v107;
    v66 = v108;
    v67 = v109;
    v68 = v110;
    sub_20E8F8(v106, v107, v108);
    v29 = v94;
  }

  else
  {
    v95 = v35;
    v72 = v97;
    sub_AB91E0();
    (*(v7 + 16))(v96, v72, v6);
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v73 = qword_E73660;
    sub_AB3550();
    v74 = sub_AB9320();
    v76 = v75;
    (*(v7 + 8))(v72, v6);
    v106 = v74;
    v107 = v76;
    sub_7ABE60();
    v77 = sub_AB6F20();
    v79 = v78;
    v81 = v80;
    LODWORD(v106) = sub_AB6760();
    v82 = sub_AB6E20();
    v84 = v83;
    v86 = v85;
    sub_36B74(v77, v79, v81 & 1);

    if (qword_E16AA0 != -1)
    {
      swift_once();
    }

    v87 = sub_AB6E80();
    v89 = v88;
    v91 = v90;
    v98 = v92;

    sub_36B74(v82, v84, v86 & 1);

    v101 = v87;
    v102 = v89;
    v103 = v91 & 1;
    v104 = v98;
    v105 = 0;
    sub_AB6610();
    v64 = v106;
    v65 = v107;
    v66 = v108;
    v67 = v109;
    v68 = v110;
    sub_20E8F8(v106, v107, v108);
  }

  v35 = v95;
LABEL_17:
  v69 = v99;
  sub_AFEEC(v29, v35, v36, v99);
  sub_832EBC(v64, v65, v66, v67, v68);
  sub_AFFE0(v29, v35, v36, v69);
  sub_832ED4(v64, v65, v66, v67, v68);
  v70 = v100;
  *v100 = v29;
  v70[1] = v35;
  v70[2] = v36;
  v70[3] = v69;
  v70[4] = v64;
  v70[5] = v65;
  v70[6] = v66;
  v70[7] = v67;
  *(v70 + 64) = v68;
  sub_832ED4(v64, v65, v66, v67, v68);
  return sub_AFFE0(v29, v35, v36, v69);
}

uint64_t sub_8274B4(char a1)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  v4 = sub_AB9230();
  __chkstk_darwin(v4 - 8);
  result = sub_AB8B10();
  if (v6)
  {
    v7 = result;
    v8 = v6;
    if (Playlist.Collaborator.isHost.getter())
    {
      sub_AB9220();
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      sub_AB9210(v10);
      v11._countAndFlagsBits = v7;
      v11._object = v8;
      sub_AB9200(v11);

      v12._countAndFlagsBits = 0x2972656E774F2820;
      v12._object = 0xE800000000000000;
      sub_AB9210(v12);
      sub_AB9240();
      if (a1)
      {
        if (qword_E16870 != -1)
        {
          swift_once();
        }
      }

      else if (qword_E16870 != -1)
      {
        swift_once();
      }

      v9 = qword_E73660;
      sub_AB3550();
      return sub_AB9310();
    }

    else
    {
      return v7;
    }
  }

  return result;
}